include("../AWSCorePrototypeServices.jl")
using .Services: lambda

"""
    RemoveEventSource()

Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source. This operation requires permission for the lambda:RemoveEventSource action.

Required Parameters
{
  "UUID": "The event source mapping ID."
}
"""
RemoveEventSource(args) = lambda("DELETE", "/2014-11-13/event-source-mappings/{UUID}", args)

"""
    GetFunction()

Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with UploadFunction so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function. This operation requires permission for the lambda:GetFunction action.

Required Parameters
{
  "FunctionName": "The Lambda function name."
}
"""
GetFunction(args) = lambda("GET", "/2014-11-13/functions/{FunctionName}", args)

"""
    GetFunctionConfiguration()

Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using UploadFunction. This operation requires permission for the lambda:GetFunctionConfiguration operation.

Required Parameters
{
  "FunctionName": "The name of the Lambda function for which you want to retrieve the configuration information."
}
"""
GetFunctionConfiguration(args) = lambda("GET", "/2014-11-13/functions/{FunctionName}/configuration", args)

"""
    UploadFunction()

Creates a new Lambda function or updates an existing function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the existing Lambda function is updated with the new code and metadata.  This operation requires permission for the lambda:UploadFunction action.

Required Parameters
{
  "Handler": "The function that Lambda calls to begin execution. For Node.js, it is the module-name.export value in your function. ",
  "Mode": "How the Lambda function will be invoked. Lambda supports only the \"event\" mode. ",
  "FunctionName": "The name you want to assign to the function you are uploading. The function names appear in the console and are returned in the ListFunctions API. Function names are used to specify functions to other AWS Lambda APIs, such as InvokeAsync. ",
  "FunctionZip": "A .zip file containing your packaged source code. For more information about creating a .zip file, go to AWS LambdaL How it Works in the AWS Lambda Developer Guide. ",
  "Runtime": "The runtime environment for the Lambda function you are uploading. Currently, Lambda supports only \"nodejs\" as the runtime.",
  "Role": "The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. "
}

Optional Parameters
{
  "Description": "A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.",
  "MemorySize": "The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, database operation might need less memory compared to image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.",
  "Timeout": "The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds. "
}
"""
UploadFunction(args) = lambda("PUT", "/2014-11-13/functions/{FunctionName}", args)

"""
    InvokeAsync()

Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch logs console. This operation requires permission for the lambda:InvokeAsync action.

Required Parameters
{
  "InvokeArgs": "JSON that you want to provide to your Lambda function as input.",
  "FunctionName": "The Lambda function name."
}
"""
InvokeAsync(args) = lambda("POST", "/2014-11-13/functions/{FunctionName}/invoke-async/", args)

"""
    AddEventSource()

Identifies a stream as an event source for an AWS Lambda function. It can be either an Amazon Kinesis stream or a Amazon DynamoDB stream. AWS Lambda invokes the specified function when records are posted to the stream. This is the pull model, where AWS Lambda invokes the function. For more information, go to AWS Lambda: How it Works in the AWS Lambda Developer Guide. This association between an Amazon Kinesis stream and an AWS Lambda function is called the event source mapping. You provide the configuration information (for example, which stream to read from and which AWS Lambda function to invoke) for the event source mapping in the request body.  Each event source, such as a Kinesis stream, can only be associated with one AWS Lambda function. If you call AddEventSource for an event source that is already mapped to another AWS Lambda function, the existing mapping is updated to call the new function instead of the old one.  This operation requires permission for the iam:PassRole action for the IAM role. It also requires permission for the lambda:AddEventSource action.

Required Parameters
{
  "EventSource": "The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the event source. Any record added to this stream causes AWS Lambda to invoke your Lambda function. AWS Lambda POSTs the Amazon Kinesis event, containing records, to your Lambda function as JSON.",
  "FunctionName": "The Lambda function to invoke when AWS Lambda detects an event on the stream.",
  "Role": "The ARN of the IAM role (invocation role) that AWS Lambda can assume to read from the stream and invoke the function."
}

Optional Parameters
{
  "BatchSize": "The largest number of records that AWS Lambda will give to your function in a single event. The default is 100 records.",
  "Parameters": "A map (key-value pairs) defining the configuration for AWS Lambda to use when reading the event source. Currently, AWS Lambda supports only the InitialPositionInStream key. The valid values are: \"TRIM_HORIZON\" and \"LATEST\". The default value is \"TRIM_HORIZON\". For more information, go to ShardIteratorType in the Amazon Kinesis Service API Reference. "
}
"""
AddEventSource(args) = lambda("POST", "/2014-11-13/event-source-mappings/", args)

"""
    UpdateFunctionConfiguration()

Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code.  This operation requires permission for the lambda:UpdateFunctionConfiguration action.

Required Parameters
{
  "FunctionName": "The name of the Lambda function."
}

Optional Parameters
{
  "Handler": "The function that Lambda calls to begin executing your function. For Node.js, it is the module-name.export value in your function. ",
  "Description": "A short user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.",
  "MemorySize": "The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.",
  "Timeout": "The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds. ",
  "Role": "The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function. "
}
"""
UpdateFunctionConfiguration(args) = lambda("PUT", "/2014-11-13/functions/{FunctionName}/configuration", args)

"""
    ListEventSources()

Returns a list of event source mappings you created using the AddEventSource (see AddEventSource), where you identify a stream as event source. This list does not include Amazon S3 event sources.  For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings. This operation requires permission for the lambda:ListEventSources action.

Optional Parameters
{
  "Marker": "Optional string. An opaque pagination token returned from a previous ListEventSources operation. If present, specifies to continue the list from where the returning call left off. ",
  "FunctionName": "The name of the AWS Lambda function.",
  "EventSourceArn": "The Amazon Resource Name (ARN) of the Amazon Kinesis stream.",
  "MaxItems": "Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0."
}
"""
ListEventSources() = lambda("GET", "/2014-11-13/event-source-mappings/")
ListEventSources(args) = lambda("GET", "/2014-11-13/event-source-mappings/", args)

"""
    ListFunctions()

Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use GetFunction to retrieve the code for your function. This operation requires permission for the lambda:ListFunctions action.

Optional Parameters
{
  "Marker": "Optional string. An opaque pagination token returned from a previous ListFunctions operation. If present, indicates where to continue the listing. ",
  "MaxItems": "Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0."
}
"""
ListFunctions() = lambda("GET", "/2014-11-13/functions/")
ListFunctions(args) = lambda("GET", "/2014-11-13/functions/", args)

"""
    DeleteFunction()

Deletes the specified Lambda function code and configuration. This operation requires permission for the lambda:DeleteFunction action.

Required Parameters
{
  "FunctionName": "The Lambda function to delete."
}
"""
DeleteFunction(args) = lambda("DELETE", "/2014-11-13/functions/{FunctionName}", args)

"""
    GetEventSource()

Returns configuration information for the specified event source mapping (see AddEventSource). This operation requires permission for the lambda:GetEventSource action.

Required Parameters
{
  "UUID": "The AWS Lambda assigned ID of the event source mapping."
}
"""
GetEventSource(args) = lambda("GET", "/2014-11-13/event-source-mappings/{UUID}", args)
