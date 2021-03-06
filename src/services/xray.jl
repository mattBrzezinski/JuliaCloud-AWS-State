include("../AWSCorePrototypeServices.jl")
using .Services: xray

"""
    ListTagsForResource()



Required Parameters
{
  "ResourceARN": ""
}

Optional Parameters
{
  "NextToken": ""
}
"""
ListTagsForResource(args) = xray("POST", "/ListTagsForResource", args)

"""
    DeleteGroup()

Deletes a group resource.

Optional Parameters
{
  "GroupARN": "The ARN of the group that was generated on creation.",
  "GroupName": "The case-sensitive name of the group."
}
"""

DeleteGroup() = xray("POST", "/DeleteGroup")
DeleteGroup(args) = xray("POST", "/DeleteGroup", args)

"""
    PutTraceSegments()

Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see AWS X-Ray Segment Documents in the AWS X-Ray Developer Guide.  Required Segment Document Fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, i.e. 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.  

Required Parameters
{
  "TraceSegmentDocuments": "A string containing a JSON document defining one or more segments or subsegments."
}
"""
PutTraceSegments(args) = xray("POST", "/TraceSegments", args)

"""
    GetGroup()

Retrieves group resource details.

Optional Parameters
{
  "GroupARN": "The ARN of the group that was generated on creation.",
  "GroupName": "The case-sensitive name of the group."
}
"""

GetGroup() = xray("POST", "/GetGroup")
GetGroup(args) = xray("POST", "/GetGroup", args)

"""
    GetEncryptionConfig()

Retrieves the current encryption configuration for X-Ray data.
"""

GetEncryptionConfig() = xray("POST", "/EncryptionConfig")
GetEncryptionConfig(args) = xray("POST", "/EncryptionConfig", args)

"""
    GetTraceGraph()

Retrieves a service graph for one or more specific trace IDs.

Required Parameters
{
  "TraceIds": "Trace IDs of requests for which to generate a service graph."
}

Optional Parameters
{
  "NextToken": "Pagination token."
}
"""
GetTraceGraph(args) = xray("POST", "/TraceGraph", args)

"""
    CreateSamplingRule()

Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.

Required Parameters
{
  "SamplingRule": "The rule definition."
}

Optional Parameters
{
  "Tags": ""
}
"""
CreateSamplingRule(args) = xray("POST", "/CreateSamplingRule", args)

"""
    PutEncryptionConfig()

Updates the encryption configuration for X-Ray data.

Required Parameters
{
  "Type": "The type of encryption. Set to KMS to use your own key for encryption. Set to NONE for default encryption."
}

Optional Parameters
{
  "KeyId": "An AWS KMS customer master key (CMK) in one of the following formats:    Alias - The name of the key. For example, alias/MyKey.    Key ID - The KMS key ID of the key. For example, ae4aa6d49-a4d8-9df9-a475-4ff6d7898456. AWS X-Ray does not support asymmetric CMKs.    ARN - The full Amazon Resource Name of the key ID or alias. For example, arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456. Use this format to specify a key in a different account.   Omit this key if you set Type to NONE."
}
"""
PutEncryptionConfig(args) = xray("POST", "/PutEncryptionConfig", args)

"""
    PutTelemetryRecords()

Used by the AWS X-Ray daemon to upload telemetry.

Required Parameters
{
  "TelemetryRecords": ""
}

Optional Parameters
{
  "Hostname": "",
  "ResourceARN": "",
  "EC2InstanceId": ""
}
"""
PutTelemetryRecords(args) = xray("POST", "/TelemetryRecords", args)

"""
    TagResource()



Required Parameters
{
  "ResourceARN": "",
  "Tags": ""
}
"""
TagResource(args) = xray("POST", "/TagResource", args)

"""
    UntagResource()



Required Parameters
{
  "ResourceARN": "",
  "TagKeys": ""
}
"""
UntagResource(args) = xray("POST", "/UntagResource", args)

"""
    GetTimeSeriesServiceStatistics()

Get an aggregation of service statistics defined by a specific time range.

Required Parameters
{
  "StartTime": "The start of the time frame for which to aggregate statistics.",
  "EndTime": "The end of the time frame for which to aggregate statistics."
}

Optional Parameters
{
  "Period": "Aggregation period in seconds.",
  "GroupARN": "The ARN of the group for which to pull statistics from.",
  "NextToken": "Pagination token.",
  "EntitySelectorExpression": "A filter expression defining entities that will be aggregated for statistics. Supports ID, service, and edge functions. If no selector expression is specified, edge statistics are returned. ",
  "GroupName": "The case-sensitive name of the group for which to pull statistics from."
}
"""
GetTimeSeriesServiceStatistics(args) = xray("POST", "/TimeSeriesServiceStatistics", args)

"""
    GetSamplingTargets()

Requests a sampling quota for rules that the service is using to sample requests. 

Required Parameters
{
  "SamplingStatisticsDocuments": "Information about rules that the service is using to sample requests."
}
"""
GetSamplingTargets(args) = xray("POST", "/SamplingTargets", args)

"""
    UpdateSamplingRule()

Modifies a sampling rule's configuration.

Required Parameters
{
  "SamplingRuleUpdate": "The rule and fields to change."
}
"""
UpdateSamplingRule(args) = xray("POST", "/UpdateSamplingRule", args)

"""
    BatchGetTraces()

Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.

Required Parameters
{
  "TraceIds": "Specify the trace IDs of requests for which to retrieve segments."
}

Optional Parameters
{
  "NextToken": "Pagination token."
}
"""
BatchGetTraces(args) = xray("POST", "/Traces", args)

"""
    CreateGroup()

Creates a group resource with a name and a filter expression. 

Required Parameters
{
  "GroupName": "The case-sensitive name of the new group. Default is a reserved name and names must be unique."
}

Optional Parameters
{
  "Tags": "",
  "FilterExpression": "The filter expression defining criteria by which to group traces."
}
"""
CreateGroup(args) = xray("POST", "/CreateGroup", args)

"""
    GetSamplingRules()

Retrieves all sampling rules.

Optional Parameters
{
  "NextToken": "Pagination token."
}
"""

GetSamplingRules() = xray("POST", "/GetSamplingRules")
GetSamplingRules(args) = xray("POST", "/GetSamplingRules", args)

"""
    DeleteSamplingRule()

Deletes a sampling rule.

Optional Parameters
{
  "RuleARN": "The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.",
  "RuleName": "The name of the sampling rule. Specify a rule by either name or ARN, but not both."
}
"""

DeleteSamplingRule() = xray("POST", "/DeleteSamplingRule")
DeleteSamplingRule(args) = xray("POST", "/DeleteSamplingRule", args)

"""
    GetGroups()

Retrieves all active group details.

Optional Parameters
{
  "NextToken": "Pagination token."
}
"""

GetGroups() = xray("POST", "/Groups")
GetGroups(args) = xray("POST", "/Groups", args)

"""
    GetSamplingStatisticSummaries()

Retrieves information about recent sampling results for all sampling rules.

Optional Parameters
{
  "NextToken": "Pagination token."
}
"""

GetSamplingStatisticSummaries() = xray("POST", "/SamplingStatisticSummaries")
GetSamplingStatisticSummaries(args) = xray("POST", "/SamplingStatisticSummaries", args)

"""
    GetServiceGraph()

Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.

Required Parameters
{
  "StartTime": "The start of the time frame for which to generate a graph.",
  "EndTime": "The end of the timeframe for which to generate a graph."
}

Optional Parameters
{
  "GroupARN": "The ARN of a group to generate a graph based on.",
  "NextToken": "Pagination token.",
  "GroupName": "The name of a group to generate a graph based on."
}
"""
GetServiceGraph(args) = xray("POST", "/ServiceGraph", args)

"""
    GetTraceSummaries()

Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.

Required Parameters
{
  "StartTime": "The start of the time frame for which to retrieve traces.",
  "EndTime": "The end of the time frame for which to retrieve traces."
}

Optional Parameters
{
  "SamplingStrategy": "A paramater to indicate whether to enable sampling on trace summaries. Input parameters are Name and Value.",
  "NextToken": "Specify the pagination token returned by a previous request to retrieve the next page of results.",
  "TimeRangeType": "A parameter to indicate whether to query trace summaries by TraceId or Event time.",
  "FilterExpression": "Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.",
  "Sampling": "Set to true to get summaries for only a subset of available traces."
}
"""
GetTraceSummaries(args) = xray("POST", "/TraceSummaries", args)

"""
    UpdateGroup()

Updates a group resource.

Optional Parameters
{
  "GroupARN": "The ARN that was generated upon creation.",
  "FilterExpression": "The updated filter expression defining criteria by which to group traces.",
  "GroupName": "The case-sensitive name of the group."
}
"""

UpdateGroup() = xray("POST", "/UpdateGroup")
UpdateGroup(args) = xray("POST", "/UpdateGroup", args)
