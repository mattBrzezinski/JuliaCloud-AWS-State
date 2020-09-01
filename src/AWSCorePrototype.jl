module AWSCorePrototype

export @service, Services

using AWSCore
using Retry

#include("AWSCorePrototypeServices.jl")
include("AWSMetadata.jl")

macro service(module_name::Symbol)
    service_name = "services/" * lowercase(string(module_name)) * ".jl"

    return Expr(:toplevel,
    :(module ($(esc(module_name)))
        Base.include($(esc(module_name)), $(esc(service_name)))
     end))
end

mutable struct RestXMLService
    name::String
    api_version::String
end

mutable struct QueryService
    name::String
    api_version::String
end

mutable struct JSONService
    name::String
    api_version::String

    json_version::String
    target::String
end

mutable struct RestJSONService
    name::String
    api_version::String
end

function (service::RestXMLService)(aws::AWSConfig, request_method::String, request_uri::String, args=[])
    request = Dict{Symbol,Any}(args)
    args = stringdict(request[:args])

    request[:headers] = Dict{String,String}(get(args, "headers", []))
    delete!(args, "headers")
    request[:content] = get(args, "Body", "")
    delete!(args, "Body")

    request[:resource] = rest_resource(request, args)

    query_str  = HTTP.escapeuri(args)

    if query_str  != ""
        if occursin("?", request[:resource])
            request[:resource] *= "&$query_str"
        else
            request[:resource] *= "?$query_str"
        end
    end

    #FIXME deal with bucket prefix
    request[:url] = service_url(aws, request)

    do_request(merge(request, aws))
end
(service::RestXMLService)(request_method::String, request_uri::String, args=[]) = service(default_aws_config(), request_method, request_uri, args)
(service::RestXMLService)(a...; b...) = service(a..., b)

function (service::QueryService)(aws::AWSConfig, operation, args=[])
    request = Dict{Symbol,Any}(args)

    request[:verb] = "POST"
    request[:resource] = get(aws, :resource, "/")
    request[:url] = service_url(aws, request)
    request[:headers] = Dict("Content-Type" => "application/x-www-form-urlencoded; charset=utf-8")

    request[:query] = aws_args_dict(request[:args])
    request[:query]["Action"] = request[:operation]
    request[:query]["Version"] = request[:version]

    if request[:service] == "iam"
        aws = merge(aws, Dict(:region => "us-east-1"))
    end

    if request[:service] in ["iam", "sts", "sqs", "sns"]
        request[:query]["ContentType"] = "JSON"
    end

    request[:content] = HTTP.escapeuri(flatten_query(request[:service], request[:query]))
    do_request(merge(request, aws))
end
(service::QueryService)(operation, args=[]) = service(default_aws_config(), operation, args)
(service::QueryService)(a...; b...) = service(a..., b)

function (service::JSONService)(aws::AWSConfig, operation, args=[])
    request = Dict{Symbol,Any}(args)

    request[:verb] = "POST"
    request[:resource] = "/"
    request[:url] = service_url(aws, request)

    request[:headers] = Dict(
        "Content-Type" => "application/x-amz-json-$(request[:json_version])",
        "X-Amz-Target" => "$(request[:target]).$(request[:operation])"
    )

    request[:content] = json(aws_args_dict(request[:args]))

    do_request(merge(request, aws))
end
(service::JSONService)(operation, args=[]) = service(default_aws_config(), operation, args)
(service::JSONService)(a...; b...) = service(a..., b)

function (service::RestJSONService)(aws::AWSConfig, request_method::String, request_uri::String, args=[])
    request = Dict{Symbol,Any}(args)
    args = Dict(request[:args])

    request[:resource] = rest_resource(request, args)
    request[:url] = service_url(aws, request)

    request[:headers] = Dict{String,String}(get(args, "headers", []))
    delete!(args, "headers")
    request[:headers]["Content-Type"] = "application/json"
    request[:content] = json(aws_args_dict(args))

    do_request(merge(request, aws))
end
(service::RestJSONService)(request_method::String, request_uri::String, args=[]) = service(default_aws_config(), request_method, request_uri, args)
(service::RestJSONService)(a...; b...) = service(a..., b)

####################
# Helper Functions #
####################
function aws_args_dict(args)
    result = stringdict(args)

    dictlike(t) = (t <: AbstractDict || t <: Vector && t.parameters[1] <: Pair{String})

    for (k, v) in result
        if dictlike(typeof(v))
            result[k] = aws_args_dict(v)
        elseif isa(v, Vector)
            result[k] = [dictlike(typeof(i)) ? aws_args_dict(i) : i for i in v]
        end
    end

    return result
end

function rest_resource(request, args)
    r = request[:resource]

    for (k,v) in args
        if occursin("{$k}", r)
            r = replace(r, "{$k}" => v)
            delete!(args, k)
        elseif occursin("{$k+}", r)
            r = replace(r, "{$k+}" => HTTP.escapepath(v))
            delete!(args, k)
        end
    end

    return r
end

function service_url(aws, request)
    endpoint = get(request, :endpoint, request[:service])
    region = aws[:region]
    regionless_endpoints = ("iam", "route53")

    if endpoint in regionless_endpoints || (endpoint == "sdb" && region == "us-east-1")
        region = ""
    end

    service_host = get(aws, :service_host, "amazonaws.com")

    if !isempty(region)
        return string("https://", endpoint, ".", region, ".", service_host, request[:resource])
    else
        return string("https://", endpoint, ".", service_host, request[:resource])
    end
end

function flatten_query(service, query, prefix="")

    result = Dict{String,String}()

    for (k, v) in query

        if typeof(v) <: AbstractDict

            merge!(result, flatten_query(service, v, "$prefix$k."))

        elseif typeof(v) <: Array

            for (i, x) in enumerate(v)

                suffix = service in ["ec2", "sqs"] ? "" : ".member"
                pk = "$prefix$k$suffix.$i"

                if typeof(x) <: AbstractDict
                    merge!(result, flatten_query(service, x, "$pk."))
                else
                    result[pk] = string(x)
                end
            end
        else
            result["$prefix$k"] = string(v)
        end
    end

    return result
end

function do_request(r::AWSRequest)

    response = nothing

    # Try request 3 times to deal with possible Redirect and ExiredToken...
    @repeat 3 try

        # Default headers...
        if !haskey(r, :headers)
            r[:headers] = Dict{String,String}()
        end
        r[:headers]["User-Agent"] = "AWSCore.jl/0.0.0"
        r[:headers]["Host"]       = HTTP.URI(r[:url]).host

        # If existing, use credentials to sign request...
        r[:creds] === nothing || sign!(r)

        if debug_level > 0
            dump_aws_request(r)
        end

        # Send the request...
        response = http_request(r)

        if response.status in [301, 302, 307] &&
           HTTP.header(response, "Location") != ""
            r[:url] = HTTP.header(response, "Location")
            continue
        end

    catch e
        if e isa HTTP.StatusError
            e = AWSException(e)
        end

        # Handle expired signature...
        @retry if :message in fieldnames(typeof(e)) &&
                  occursin(r"Signature expired", e.message)
            if debug_level > 1
                println("Caught $e during request $(dump_aws_request(r)), retrying due to expired signature...")
            end
        end

        # Handle ExpiredToken...
        # See `credsExpiredCodes` in
        # https://github.com/aws/aws-sdk-go/blob/master/aws/request/retryer.go
        @retry if ecode(e) in ("ExpiredToken",
                               "ExpiredTokenException",
                               "RequestExpired")

            # Reload local system credentials if needed...
            check_credentials(r[:creds], force_refresh=true)
            if debug_level > 1
                println("Caught $e during request $(dump_aws_request(r)), retrying due to expired credentials...")
            end
        end

        # Handle throttling
        # see botocore for list of codes:
        # https://github.com/boto/botocore/blob/master/botocore/data/_retry.json
        # Recommended for SDKs at:
        # https://docs.aws.amazon.com/general/latest/gr/api-retries.html
        @delay_retry if e isa AWSException && (
                  http_status(e.cause) == 429 ||
                  ecode(e) in ("Throttling",
                               "ThrottlingException",
                               "ThrottledException",
                               "RequestThrottledException",
                               "TooManyRequestsException",
                               "ProvisionedThroughputExceededException",
                               "LimitExceededException",
                               "RequestThrottled",
                               "PriorRequestNotComplete"))
            if debug_level > 1
                cause = "throttling"

                if ecode(e) == "PriorRequestNotComplete"
                    cause = ecode(e)
                end
                println("Caught $e during request $(dump_aws_request(r)), retrying due to $cause...")
            end
        end

        # Handle BadDigest error and CRC32 thing
        @retry if e isa AWSException && (
            header(e.cause, "crc32body") == "x-amz-crc32" ||
            ecode(e) in ("BadDigest", "RequestTimeout", "RequestTimeoutException")
        )
            if debug_level > 1
                cause = if header(e.cause, "crc32body") == "x-amz-crc32"
                    "CRC32"
                else
                    ecode(e)
                end
                println("Caught $e during request $(dump_aws_request(r)), retrying due to $cause...")
            end
        end
    end

    if debug_level > 1
        display(response)
        println()
    end

    # For HEAD request, return headers...
    if r[:verb] == "HEAD"
        return Dict(response.headers)
    end

    # Return response stream if requested...
    if get(r, :return_stream, false)
        return r[:response_stream]
    end

    # Return raw data if requested...
    if get(r, :return_raw, false)
        return response.body
    end

    # Parse response data according to mimetype...
    mime = HTTP.header(response, "Content-Type", "")
    if mime == ""
        if length(response.body) > 5 && String(response.body[1:5]) == "<?xml"
            mime = "text/xml"
        end
    end

    body = String(copy(response.body))

    if occursin(r"/xml", mime)
        return parse_xml(body)
    end

    if occursin(r"/x-amz-json-1.[01]$", mime)
        if isempty(response.body)
            return nothing
        end
        if get(r, :ordered_json_dict, true)
            return JSON.parse(body, dicttype=OrderedDict)
        else
            return JSON.parse(body)
        end
    end

    if occursin(r"json$", mime)
        if isempty(response.body)
            return nothing
        end
        if get(r, :ordered_json_dict, true)
            info = JSON.parse(body, dicttype=OrderedDict)
        else
            info = JSON.parse(body)
        end
        @protected try
            action = r[:query]["Action"]
            info = info[action * "Response"]
            info = info[action * "Result"]
        catch e
            @ignore if typeof(e) == KeyError end
        end
        return info
    end

    if occursin(r"^text/", mime)
        return body
    end

    # Return raw data by default...
    return response.body
end

end  # module AWSCorePrototype