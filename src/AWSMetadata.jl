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
    """

    """
    function _process_service(file, version)
        data_changed = true
        push!(metadata, file["name"] => Dict("version" => version, "sha" => file["sha"]))
        push!(services_modified, file)
    end

    """
    Only get the latest version of a Service, we don't care for supporting older ones
    """
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

    """
    Get the service name and its version
    """
    function _get_service_info(service)
        filename = join(split(service["name"], '.')[1:end-2],'.')
        filename = split(filename, '-')
        service_name = join(filename[1:end-3], '-')
        version = join(filename[end-2:end], '-')

        return (service_name, version)
    end

    """
    Get a list of all full Service files from the AWS SDK JS GitHub repository
    """
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

    # Loop through all Service files, if its a new service or the SHA hashes do not match add them to a Dictionary to have their definitions (re)generated
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

    # Regenerate all low level definitions, and only modified/new high level definitions
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

function _generate_high_level_wrapper(services::Array{OrderedDict{String, Any}})
    for service in services
        service_name = service["name"]
        println("Generating high level wrapper for $service_name")
        service = JSON.parse(String(HTTP.get(service["download_url"]).body))
        service_name = lowercase(service["metadata"]["serviceId"])
        service_name = replace(service_name, ' ' => '_')
        operations = service["operations"]
        shapes = service["shapes"]

        protocol = service["metadata"]["protocol"]

        operations = _generate_wrapper(service_name, protocol, operations, shapes)

        service_path = joinpath(@__DIR__, "services/$service_name.jl")
        open(service_path, "w") do f
            println(f, "include(\"../AWSCorePrototypeServices.jl\")")
            println(f, "using .Services: $service_name\n")
            print(f, join(operations, "\n"))
        end
    end
end

function _generate_wrapper(service_name::String, protocol::String, operations::Dict{String, Any}, shapes::Dict{String, Any})
    """
    Clean up the documentation by removing any HTML tags, and Julia escaping characters
    """
    function _documentation_cleaning(documentation)
        documentation = replace(documentation, r"\<.*?\>" => "")
        documentation = replace(documentation, '$' => ' ')
        documentation = replace(documentation, "\\" => ' ')

        return documentation
    end

    """
    Get the required and optional parameters for a given operation
    """
    function _get_parameters(input, shapes)
        required_parameters = Dict()
        optional_parameters = Dict()

        input_shape = shapes[input["shape"]]

        if haskey(input_shape, "required")
            for parameter in input_shape["required"]
                required_parameters[parameter] = _documentation_cleaning(get(input_shape["members"][parameter], "documentation", ""))
            end
        end

        if haskey(input_shape, "members")
            for parameter in input_shape["members"]
                parameter_name = parameter[1]

                if !haskey(required_parameters, parameter_name)
                    optional_parameters[parameter_name] = _documentation_cleaning(get(parameter[2], "documentation", ""))
                end
            end
        end

        return (required_parameters, optional_parameters)
    end

    """
    Generate the high level definition for a given operation
    """
    function _generate_operation_definition(name, protocol, method, request_uri, required_parameters, optional_parameters, documentation)
        required_param_keys = collect(keys(required_parameters))

        operation_definition = """
        \"\"\"
            $name()

        $documentation
        """

        # Add in the required parameters if applicable
        if !isempty(required_parameters)
            operation_definition = operation_definition * """

            Required Parameters
            $(json(required_parameters, 2))"""
        end

        # Add in the optional parameters if applicable
        if !isempty(optional_parameters)
            operation_definition = operation_definition * """

            Optional Parameters
            $(json(optional_parameters, 2))"""
        end

        operation_definition = operation_definition * "\"\"\""

        # Depending on the protocol type of the operation we need to generate a different definition
        if protocol in ["json", "query", "ec2"]
            if !isempty(required_parameters)
                operation_definition = operation_definition * "\n$name(args) = $service_name(\"$name\", args)\n"
            else
                operation_definition = operation_definition * """\n
                    $name() = $service_name(\"$name\")
                    $name(args) = $service_name(\"$name\", args)
                    """
            end
        elseif protocol == "rest-json"
            if !isempty(required_parameters)
                operation_definition = operation_definition * "\n$name(args) = $service_name(\"$method\", \"$request_uri\", args)\n"
            else
                operation_definition = operation_definition * """\n
                $name() = $service_name(\"$method\", \"$request_uri\")
                $name(args) = $service_name(\"$method\", \"$request_uri\", args)
                """
            end
        elseif protocol == "rest-xml"
            if !isempty(required_parameters)
                operation_definition = operation_definition * """
                $name($(join(required_param_keys, ", "))) = $service_name(\"$method\", \"$request_uri\")
                $name($(join(required_param_keys, ", ")), args) = $service_name(\"$method\", \"$request_uri\", args)
                $name(a...; b...) = $name(a..., b)
                """
            else
                operation_definition = operation_definition * """
                $name() = $service_name(\"$method\", \"$request_uri\")
                $name(args) $service_name(\"$method\", \"$request_uri\", args)
                $name(a...; b...) = $name(a..., b)
                """
            end
        end

        return operation_definition
    end

    operation_definitions = []

    for operation in operations
        operation = operation[2]
        name = operation["name"]
        method = operation["http"]["method"]
        request_uri = operation["http"]["requestUri"]

        documentation = ""

        if haskey(operation, "documentation")
            documentation = _documentation_cleaning(operation["documentation"])
        end

        required_parameters = Dict()
        optional_parameters = Dict()

        if haskey(operation, "input")
            required_parameters, optional_parameters = _get_parameters(operation["input"], shapes)
        end

        operation_definition = _generate_operation_definition(name, protocol, method, request_uri, required_parameters, optional_parameters, documentation)

        push!(operation_definitions, operation_definition)
    end

    return operation_definitions
end

parse_aws_metadata()
end