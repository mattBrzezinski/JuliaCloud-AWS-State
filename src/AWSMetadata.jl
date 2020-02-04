module AWSMetadata

using DataStructures: OrderedDict
using HTTP
using JSON

"""
    parse_aws_metadata()

Update the AWS service metadata definitions in `metadata.json` by parsing the `AWS SDK JS`.

Check to see if the AWS service exists in the metadata, if not then a new service has been
created and we should generate low and high level wrappers for it. Otherwise, check to see
if the service SHA hash matches what we keep on file, if they differ then the API has been
updated and we need to re-generate low and high level wrappers for the service.
"""
function parse_aws_metadata()
    function _process_service(file, version)
        data_changed = true
        push!(metadata, file["name"] => Dict("version" => version, "sha" => file["sha"]))
        push!(services_modified, file)
    end

    function _filter_latest_service_version(services)
        seen_services = String[]
        new_list = OrderedDict{String, Any}[]

        for service in services
            service_name, version = _get_service_info(service)

            if !(service_name in seen_services)
                push!(seen_services, service_name)
                push!(new_list, service)
            end
        end

        return new_list
    end

    function _get_service_info(service)
        filename = join(split(service["name"], '.')[1:end-2],'.')
        filename = split(filename, '-')
        service_name = join(filename[1:end-3], '-')
        version = join(filename[end-2:end], '-')

        return (service_name, version)
    end

    function _get_aws_sdk_js_files()
        headers = ["User-Agent" => "JuliaCloud/AWSCore.jl"]
        url = "https://api.github.com/repos/aws/aws-sdk-js/contents/apis"
        req = HTTP.get(url, headers)
        files = JSON.parse(String(req.body), dicttype=OrderedDict)
        filter!(f -> occursin(r".normal.json$", f["name"]), files)  # Only get ${Service}.normal.json files
        files = _filter_latest_service_version(files)

        return files
    end

    metadata_path = joinpath(@__DIR__, "metadata.json")
    metadata = JSON.parsefile(metadata_path, dicttype=OrderedDict)

    files = _get_aws_sdk_js_files()

    data_changed = false
    services_modified = OrderedDict{String, Any}[]

    for file in files
        service_name, version = _get_service_info(file)
        filename = file["name"]

        if !haskey(metadata, filename)
            println(service_name, " does not exist in metadata.")
            _process_service(file, version)
        else
            if metadata[filename]["sha"] != file["sha"]
                println(service_name, " sha hashes do not match, updating.")
                _process_service(file, version)
            end
        end
    end

    if data_changed
        _generate_low_level_wrapper(files)
        _generate_high_level_wrapper(services_modified)
        open(metadata_path, "w") do f
            print(f, json(OrderedDict(metadata), 2))
        end
    end
end

function _generate_low_level_wrapper(services::Array{OrderedDict{String, Any}})
    service_definitions = _generate_service_definitions(services)

    template = """
    module Services

    using AWSCorePrototype

    $(join(service_definitions, "\n"))

    end
    """

    services_path = joinpath(@__DIR__, "AWSCorePrototypeServices.jl")
    open(services_path, "w") do f
        print(f, template)
    end
end

function _generate_service_definitions(services::Array{OrderedDict{String, Any}})
    service_definitions = String[]

    for service in services
        service_name = service["name"]
        println("Generating low level wrapper for $service_name")
        request = HTTP.get(service["download_url"])

        service_metadata = JSON.parse(String(request.body))["metadata"]

        definition = _generate_service_definition(service_metadata)
        if definition != nothing
            push!(service_definitions, definition)
        end
    end

    return service_definitions
end

function _generate_service_definition(service::Dict{String, Any})
    println("Generating Metadata definitions for ", service["serviceId"])
    request_protocol = service["protocol"]
    service_name = service["endpointPrefix"]
    service_id = replace(lowercase(service["serviceId"]), ' ' => '_')
    api_version = service["apiVersion"]

    if request_protocol == "rest-xml"
        return "const $service_id = AWSCorePrototype.RestXMLService(\"$service_name\", \"$api_version\")"
    elseif request_protocol in ["ec2", "query"]
        return "const $service_id = AWSCorePrototype.QueryService(\"$service_name\", \"$api_version\")"
    elseif request_protocol == "rest-json"
        return "const $service_id = AWSCorePrototype.RestJSONService(\"$service_name\", \"$api_version\")"
    elseif request_protocol == "json"
        json_version = service["jsonVersion"]
        target = service["targetPrefix"]
        return "const $service_id = AWSCorePrototype.JSONService(\"$service_name\", \"$api_version\", \"$json_version\", \"$target\")"
    else
        # This should ping an alarm, we need to update this source code as its something we haven't seen before
        println(service_name, " uses a new protocol ", request_protocol)
    end
end

function _generate_rest_xml_high_level_wrapper(service_name::String, operations::Dict{String, Any}, shapes::Dict{String, Any})
    # TODO:
    # - Pull down documentation for each input variable and write to the docstr
    function_definitions = String[]

    for operation in operations
        operation = operation[2]
        name = operation["name"]
        method = operation["http"]["method"]
        request_uri = operation["http"]["requestUri"]

        # Replace curly braces around parameters in the request_uri with a $, so Julia can pass the parameters along
        request_uri = replace(request_uri, '{' => "\$")
        request_uri = replace(request_uri, '}' => "")

        # Removes everything inbetween <> characters
        documentation = ""
        if haskey(operation, "documentation")
            documentation = operation["documentation"]
            documentation = replace(documentation, r"\<.*?\>" => "")
            documentation = replace(documentation, '$' => ' ')
        end

        required_parameters = ""

        if haskey(operation, "input")
            input_shape = shapes[operation["input"]["shape"]]

            if haskey(input_shape, "required")
                required_parameters = input_shape["required"]
            end
        end

        definition = """
        \"\"\"
        $documentation
        \"\"\"
        $name($(join(required_parameters, ", "))) = $service_name(\"$method\", \"$request_uri\")
        """

        push!(function_definitions, definition)
    end

    service_path = joinpath(@__DIR__, "services/$service_name.jl")
    open(service_path, "w") do f
        println(f, "include(\"../AWSCorePrototypeServices.jl\")")
        println(f, "using .Services: $service_name\n")
        print(f, join(function_definitions, "\n"))
    end
end

function _generate_query_high_level_wrapper(service_name::String, operations::Dict{String, Any}, shapes::Dict{String, Any})
    function_definitions = String[]

    for operation in operations
        operation = operation[2]
        name = operation["name"]
        method = operation["http"]["method"]  # Always "POST"
        request_uri = operation["http"]["requestUri"]  # Always "/"

        documentation = ""
        if haskey(operation, "documentation")
            documentation = operation["documentation"]
            documentation = replace(documentation, r"\<.*?\>" => "")
            documentation = replace(documentation, '$' => ' ')
            documentation = replace(documentation, "\\" => ' ')
        end

        required_parameters = ""
        if haskey(operation, "input")  # This should always be true
            input_shape = shapes[operation["input"]["shape"]]

            if haskey(input_shape, "required")
                required_parameters = input_shape["required"]
            end
        end

        if !isempty(required_parameters)
            definition = """
            \"\"\"
            $documentation

            Required Parameters:
            $(join(required_parameters, ", "))
            \"\"\"
            $name(args) = $service_name(\"$name\", args)
            """
        else
            definition = """
            \"\"\"
            $documentation
            \"\"\"
            $name() = $service_name(\"$name\")
            """
        end

        push!(function_definitions, definition)
    end

    service_path = joinpath(@__DIR__, "services/$service_name.jl")
    open(service_path, "w") do f
        println(f, "include(\"../AWSCorePrototypeServices.jl\")")
        println(f, "using .Services: $service_name\n")
        print(f, join(function_definitions, "\n"))
    end
end

function _generate_high_level_wrapper(services::Array{OrderedDict{String, Any}})
    # TODO:
    # - Create functions for query, rest-json, and json protocols
    #   These only seem to differ from rest-xml with how their shapes are defined
    #   We only need to pull the required uri params down for function definitions
    for service in services
        service_name = service["name"]
        println("Generating high level wrapper for $service_name")
        service = JSON.parse(String(HTTP.get(service["download_url"]).body))
        service_name = lowercase(service["metadata"]["serviceId"])
        service_name = replace(service_name, ' ' => '_')
        operations = service["operations"]
        shapes = service["shapes"]

        protocol = service["metadata"]["protocol"]

        if protocol in ["rest-xml"]
            _generate_rest_xml_high_level_wrapper(service_name, operations, shapes)
        elseif protocol in ["query", "ec2"]
            _generate_query_high_level_wrapper(service_name, operations, shapes)
        end
    end
end

parse_aws_metadata()
end