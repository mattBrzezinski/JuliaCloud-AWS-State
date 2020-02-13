include("../AWSCorePrototypeServices.jl")
using .Services: cloudwatch_logs

"""
    TestMetricFilter()

Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.

Required Parameters
{
  "filterPattern": "",
  "logEventMessages": "The log event messages to test."
}
"""
TestMetricFilter(args) = cloudwatch_logs("TestMetricFilter", args)

"""
    DeleteSubscriptionFilter()

Deletes the specified subscription filter.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "filterName": "The name of the subscription filter."
}
"""
DeleteSubscriptionFilter(args) = cloudwatch_logs("DeleteSubscriptionFilter", args)

"""
    GetQueryResults()

Returns the results from the specified query. Only the fields requested in the query are returned, along with a @ptr field which is the identifier for the log record. You can use the value of @ptr in a operation to get the full log record.  GetQueryResults does not start a query execution. To run a query, use . If the value of the Status field in the output is Running, this operation returns only partial results. If you see a value of Scheduled or Running for the status, you can retry the operation later to see the final results. 

Required Parameters
{
  "queryId": "The ID number of the query."
}
"""
GetQueryResults(args) = cloudwatch_logs("GetQueryResults", args)

"""
    CreateLogStream()

Creates a log stream for the specified log group. There is no limit on the number of log streams that you can create for a log group. There is a limit of 50 TPS on CreateLogStream operations, after which transactions are throttled. You must use the following guidelines when naming a log stream:   Log stream names must be unique within the log group.   Log stream names can be between 1 and 512 characters long.   The ':' (colon) and '*' (asterisk) characters are not allowed.  

Required Parameters
{
  "logStreamName": "The name of the log stream.",
  "logGroupName": "The name of the log group."
}
"""
CreateLogStream(args) = cloudwatch_logs("CreateLogStream", args)

"""
    DeleteLogStream()

Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.

Required Parameters
{
  "logStreamName": "The name of the log stream.",
  "logGroupName": "The name of the log group."
}
"""
DeleteLogStream(args) = cloudwatch_logs("DeleteLogStream", args)

"""
    DeleteResourcePolicy()

Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.

Optional Parameters
{
  "policyName": "The name of the policy to be revoked. This parameter is required."
}
"""
DeleteResourcePolicy() = cloudwatch_logs("DeleteResourcePolicy")
DeleteResourcePolicy(args) = cloudwatch_logs("DeleteResourcePolicy", args)

"""
    PutDestinationPolicy()

Creates or updates an access policy associated with an existing destination. An access policy is an IAM policy document that is used to authorize claims to register a subscription filter against a given destination.

Required Parameters
{
  "destinationName": "A name for an existing destination.",
  "accessPolicy": "An IAM policy document that authorizes cross-account users to deliver their log events to the associated destination."
}
"""
PutDestinationPolicy(args) = cloudwatch_logs("PutDestinationPolicy", args)

"""
    PutLogEvents()

Uploads a batch of log events to the specified log stream. You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token in the expectedSequenceToken field from InvalidSequenceTokenException. If you call PutLogEvents twice within a narrow time period using the same value for sequenceToken, both calls may be successful, or one may be rejected. The batch of events must satisfy the following constraints:   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.   None of the log events in the batch can be more than 2 hours in the future.   None of the log events in the batch can be older than 14 days or older than the retention period of the log group.   The log events in the batch must be in chronological ordered by their timestamp. The timestamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)    A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.   The maximum number of log events in a batch is 10,000.   There is a quota of 5 requests per second per log stream. Additional requests are throttled. This quota can't be changed.   If a call to PutLogEvents returns "UnrecognizedClientException" the most likely cause is an invalid AWS access key ID or secret key. 

Required Parameters
{
  "logStreamName": "The name of the log stream.",
  "logEvents": "The log events.",
  "logGroupName": "The name of the log group."
}

Optional Parameters
{
  "sequenceToken": "The sequence token obtained from the response of the previous PutLogEvents call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using DescribeLogStreams. If you call PutLogEvents twice within a narrow time period using the same value for sequenceToken, both calls may be successful, or one may be rejected."
}
"""
PutLogEvents(args) = cloudwatch_logs("PutLogEvents", args)

"""
    PutRetentionPolicy()

Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "retentionInDays": ""
}
"""
PutRetentionPolicy(args) = cloudwatch_logs("PutRetentionPolicy", args)

"""
    PutSubscriptionFilter()

Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through PutLogEvents and have them delivered to a specific destination. Currently, the supported destinations are:   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.   A logical destination that belongs to a different account, for cross-account delivery.   An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.   There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in filterName. Otherwise, the call fails because you cannot associate a second filter with a log group.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "filterPattern": "A filter pattern for subscribing to a filtered stream of log events.",
  "destinationArn": "The ARN of the destination to deliver matching log events to. Currently, the supported destinations are:   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.   A logical destination (specified using an ARN) belonging to a different account, for cross-account delivery.   An Amazon Kinesis Firehose delivery stream belonging to the same account as the subscription filter, for same-account delivery.   An AWS Lambda function belonging to the same account as the subscription filter, for same-account delivery.  ",
  "filterName": "A name for the subscription filter. If you are updating an existing filter, you must specify the correct name in filterName. Otherwise, the call fails because you cannot associate a second filter with a log group. To find the name of the filter currently associated with a log group, use DescribeSubscriptionFilters."
}

Optional Parameters
{
  "roleArn": "The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.",
  "distribution": "The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. "
}
"""
PutSubscriptionFilter(args) = cloudwatch_logs("PutSubscriptionFilter", args)

"""
    StopQuery()

Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.

Required Parameters
{
  "queryId": "The ID number of the query to stop. If necessary, you can use DescribeQueries to find this ID number."
}
"""
StopQuery(args) = cloudwatch_logs("StopQuery", args)

"""
    UntagLogGroup()

Removes the specified tags from the specified log group. To list the tags for a log group, use ListTagsLogGroup. To add tags, use UntagLogGroup.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "tags": "The tag keys. The corresponding tags are removed from the log group."
}
"""
UntagLogGroup(args) = cloudwatch_logs("UntagLogGroup", args)

"""
    CreateLogGroup()

Creates a log group with the specified name. You can create up to 20,000 log groups per account. You must use the following guidelines when naming a log group:   Log group names must be unique within a region for an AWS account.   Log group names can be between 1 and 512 characters long.   Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#' (number sign)   If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested. If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error.    Important: CloudWatch Logs supports only symmetric CMKs. Do not associate an asymmetric CMK with your log group. For more information, see Using Symmetric and Asymmetric Keys. 

Required Parameters
{
  "logGroupName": "The name of the log group."
}

Optional Parameters
{
  "tags": "The key-value pairs to use for the tags.",
  "kmsKeyId": "The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see Amazon Resource Names - AWS Key Management Service (AWS KMS)."
}
"""
CreateLogGroup(args) = cloudwatch_logs("CreateLogGroup", args)

"""
    PutMetricFilter()

Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through PutLogEvents. The maximum number of metric filters that can be associated with a log group is 100.

Required Parameters
{
  "metricTransformations": "A collection of information that defines how metric data gets emitted.",
  "logGroupName": "The name of the log group.",
  "filterPattern": "A filter pattern for extracting metric data out of ingested log events.",
  "filterName": "A name for the metric filter."
}
"""
PutMetricFilter(args) = cloudwatch_logs("PutMetricFilter", args)

"""
    PutResourcePolicy()

Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per region.

Optional Parameters
{
  "policyName": "Name of the new policy. This parameter is required.",
  "policyDocument": "Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. This parameter is required. The following example creates a resource policy enabling the Route 53 service to put DNS query logs in to the specified log group. Replace \"logArn\" with the ARN of your CloudWatch Logs resource, such as a log group or log stream.  { \"Version\": \"2012-10-17\", \"Statement\": [ { \"Sid\": \"Route53LogsToCloudWatchLogs\", \"Effect\": \"Allow\", \"Principal\": { \"Service\": [ \"route53.amazonaws.com\" ] }, \"Action\":\"logs:PutLogEvents\", \"Resource\": \"logArn\" } ] }  "
}
"""
PutResourcePolicy() = cloudwatch_logs("PutResourcePolicy")
PutResourcePolicy(args) = cloudwatch_logs("PutResourcePolicy", args)

"""
    DescribeSubscriptionFilters()

Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.

Required Parameters
{
  "logGroupName": "The name of the log group."
}

Optional Parameters
{
  "filterNamePrefix": "The prefix to match. If you don't specify a value, no prefix filter is applied.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeSubscriptionFilters(args) = cloudwatch_logs("DescribeSubscriptionFilters", args)

"""
    CancelExportTask()

Cancels the specified export task. The task must be in the PENDING or RUNNING state.

Required Parameters
{
  "taskId": "The ID of the export task."
}
"""
CancelExportTask(args) = cloudwatch_logs("CancelExportTask", args)

"""
    CreateExportTask()

Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket. This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use DescribeExportTasks to get the status of the export task. Each account can only have one active (RUNNING or PENDING) export task at a time. To cancel an export task, use CancelExportTask. You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects. Exporting to S3 buckets that are encrypted with AES-256 is supported. Exporting to S3 buckets encrypted with SSE-KMS is not supported. 

Required Parameters
{
  "destination": "The name of S3 bucket for the exported log data. The bucket must be in the same AWS region.",
  "logGroupName": "The name of the log group.",
  "to": "The end time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not exported.",
  "from": "The start time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not exported."
}

Optional Parameters
{
  "destinationPrefix": "The prefix used as the start of the key for every object exported. If you don't specify a value, the default is exportedlogs.",
  "taskName": "The name of the export task.",
  "logStreamNamePrefix": "Export only log streams that match the provided prefix. If you don't specify a value, no prefix filter is applied."
}
"""
CreateExportTask(args) = cloudwatch_logs("CreateExportTask", args)

"""
    DescribeDestinations()

Lists all your destinations. The results are ASCII-sorted by destination name.

Optional Parameters
{
  "DestinationNamePrefix": "The prefix to match. If you don't specify a value, no prefix filter is applied.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeDestinations() = cloudwatch_logs("DescribeDestinations")
DescribeDestinations(args) = cloudwatch_logs("DescribeDestinations", args)

"""
    DescribeQueries()

Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries, or limit it to queries of a specific log group or queries with a certain status.

Optional Parameters
{
  "status": "Limits the returned queries to only those that have the specified status. Valid values are Cancelled, Complete, Failed, Running, and Scheduled.",
  "maxResults": "Limits the number of returned queries to the specified number.",
  "logGroupName": "Limits the returned queries to only those for the specified log group.",
  "nextToken": ""
}
"""
DescribeQueries() = cloudwatch_logs("DescribeQueries")
DescribeQueries(args) = cloudwatch_logs("DescribeQueries", args)

"""
    DisassociateKmsKey()

Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group. After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. Note that it can take up to 5 minutes for this operation to take effect.

Required Parameters
{
  "logGroupName": "The name of the log group."
}
"""
DisassociateKmsKey(args) = cloudwatch_logs("DisassociateKmsKey", args)

"""
    DeleteMetricFilter()

Deletes the specified metric filter.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "filterName": "The name of the metric filter."
}
"""
DeleteMetricFilter(args) = cloudwatch_logs("DeleteMetricFilter", args)

"""
    ListTagsLogGroup()

Lists the tags for the specified log group.

Required Parameters
{
  "logGroupName": "The name of the log group."
}
"""
ListTagsLogGroup(args) = cloudwatch_logs("ListTagsLogGroup", args)

"""
    DeleteLogGroup()

Deletes the specified log group and permanently deletes all the archived log events associated with the log group.

Required Parameters
{
  "logGroupName": "The name of the log group."
}
"""
DeleteLogGroup(args) = cloudwatch_logs("DeleteLogGroup", args)

"""
    FilterLogEvents()

Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.

Required Parameters
{
  "logGroupName": "The name of the log group to search."
}

Optional Parameters
{
  "logStreamNames": "Filters the results to only logs from the log streams in this list. If you specify a value for both logStreamNamePrefix and logStreamNames, the action returns an InvalidParameterException error.",
  "startTime": "The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not returned.",
  "interleaved": "If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.  IMPORTANT: Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group.",
  "logStreamNamePrefix": "Filters the results to include only events from log streams that have names starting with this prefix. If you specify a value for both logStreamNamePrefix and logStreamNames, but the value for logStreamNamePrefix does not match any log stream names specified in logStreamNames, the action returns an InvalidParameterException error.",
  "filterPattern": "The filter pattern to use. For more information, see Filter and Pattern Syntax. If not provided, all the events are matched.",
  "nextToken": "The token for the next set of events to return. (You received this token from a previous call.)",
  "endTime": "The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.",
  "limit": "The maximum number of events to return. The default is 10,000 events."
}
"""
FilterLogEvents(args) = cloudwatch_logs("FilterLogEvents", args)

"""
    PutDestination()

Creates or updates a destination. This operation is used only to create destinations for cross-account subscriptions. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using PutLogEvents. Through an access policy, a destination controls what is written to it. By default, PutDestination does not set any access policy with the destination, which means a cross-account user cannot call PutSubscriptionFilter against this destination. To enable this, the destination owner must call PutDestinationPolicy after PutDestination.

Required Parameters
{
  "roleArn": "The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon Kinesis PutRecord operation on the destination stream.",
  "targetArn": "The ARN of an Amazon Kinesis stream to which to deliver matching log events.",
  "destinationName": "A name for the destination."
}
"""
PutDestination(args) = cloudwatch_logs("PutDestination", args)

"""
    GetLogRecord()

Retrieves all the fields and values of a single log event. All fields are retrieved, even if the original query that produced the logRecordPointer retrieved only a subset of fields. Fields are returned as field name/field value pairs. Additionally, the entire unparsed log event is returned within @message.

Required Parameters
{
  "logRecordPointer": "The pointer corresponding to the log event record you want to retrieve. You get this from the response of a GetQueryResults operation. In that response, the value of the @ptr field for a log event is the value to use as logRecordPointer to retrieve that complete log event record."
}
"""
GetLogRecord(args) = cloudwatch_logs("GetLogRecord", args)

"""
    TagLogGroup()

Adds or updates the specified tags for the specified log group. To list the tags for a log group, use ListTagsLogGroup. To remove tags, use UntagLogGroup. For more information about tags, see Tag Log Groups in Amazon CloudWatch Logs in the Amazon CloudWatch Logs User Guide.

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "tags": "The key-value pairs to use for the tags."
}
"""
TagLogGroup(args) = cloudwatch_logs("TagLogGroup", args)

"""
    DescribeLogStreams()

Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.

Required Parameters
{
  "logGroupName": "The name of the log group."
}

Optional Parameters
{
  "orderBy": "If the value is LogStreamName, the results are ordered by log stream name. If the value is LastEventTime, the results are ordered by the event time. The default value is LogStreamName. If you order the results by event time, you cannot specify the logStreamNamePrefix parameter. lastEventTimestamp represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTimeStamp updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.",
  "descending": "If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.",
  "logStreamNamePrefix": "The prefix to match. If orderBy is LastEventTime,you cannot specify this parameter.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeLogStreams(args) = cloudwatch_logs("DescribeLogStreams", args)

"""
    DescribeMetricFilters()

Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.

Optional Parameters
{
  "metricName": "Filters results to include only those with the specified metric name. If you include this parameter in your request, you must also include the metricNamespace parameter.",
  "filterNamePrefix": "The prefix to match.",
  "logGroupName": "The name of the log group.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "metricNamespace": "Filters results to include only those in the specified namespace. If you include this parameter in your request, you must also include the metricName parameter.",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeMetricFilters() = cloudwatch_logs("DescribeMetricFilters")
DescribeMetricFilters(args) = cloudwatch_logs("DescribeMetricFilters", args)

"""
    DescribeExportTasks()

Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.

Optional Parameters
{
  "taskId": "The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.",
  "statusCode": "The status code of the export task. Specifying a status code filters the results to zero or more export tasks.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeExportTasks() = cloudwatch_logs("DescribeExportTasks")
DescribeExportTasks(args) = cloudwatch_logs("DescribeExportTasks", args)

"""
    AssociateKmsKey()

Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group. Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.   Important: CloudWatch Logs supports only symmetric CMKs. Do not use an associate an asymmetric CMK with your log group. For more information, see Using Symmetric and Asymmetric Keys.  Note that it can take up to 5 minutes for this operation to take effect. If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error. 

Required Parameters
{
  "logGroupName": "The name of the log group.",
  "kmsKeyId": "The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. This must be a symmetric CMK. For more information, see Amazon Resource Names - AWS Key Management Service (AWS KMS) and Using Symmetric and Asymmetric Keys."
}
"""
AssociateKmsKey(args) = cloudwatch_logs("AssociateKmsKey", args)

"""
    StartQuery()

Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query, and the query string to use. For more information, see CloudWatch Logs Insights Query Syntax. Queries time out after 15 minutes of execution. If your queries are timing out, reduce the time range being searched, or partition your query into a number of queries.

Required Parameters
{
  "startTime": "The beginning of the time range to query. The range is inclusive, so the specified start time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.",
  "queryString": "The query string to use. For more information, see CloudWatch Logs Insights Query Syntax.",
  "endTime": "The end of the time range to query. The range is inclusive, so the specified end time is included in the query. Specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC."
}

Optional Parameters
{
  "logGroupNames": "The list of log groups to be queried. You can include up to 20 log groups. A StartQuery operation must include a logGroupNames or a logGroupName parameter, but not both.",
  "logGroupName": "The log group on which to perform the query. A StartQuery operation must include a logGroupNames or a logGroupName parameter, but not both.",
  "limit": "The maximum number of log events to return in the query. If the query string uses the fields command, only the specified fields and their values are returned. The default is 1000."
}
"""
StartQuery(args) = cloudwatch_logs("StartQuery", args)

"""
    DeleteRetentionPolicy()

Deletes the specified retention policy. Log events do not expire if they belong to log groups without a retention policy.

Required Parameters
{
  "logGroupName": "The name of the log group."
}
"""
DeleteRetentionPolicy(args) = cloudwatch_logs("DeleteRetentionPolicy", args)

"""
    DeleteDestination()

Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.

Required Parameters
{
  "destinationName": "The name of the destination."
}
"""
DeleteDestination(args) = cloudwatch_logs("DeleteDestination", args)

"""
    DescribeResourcePolicies()

Lists the resource policies in this account.

Optional Parameters
{
  "nextToken": "",
  "limit": "The maximum number of resource policies to be displayed with one call of this API."
}
"""
DescribeResourcePolicies() = cloudwatch_logs("DescribeResourcePolicies")
DescribeResourcePolicies(args) = cloudwatch_logs("DescribeResourcePolicies", args)

"""
    GetLogGroupFields()

Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field. The search is limited to a time period that you specify. In the results, fields that start with @ are fields generated by CloudWatch Logs. For example, @timestamp is the timestamp of each log event. The response results are sorted by the frequency percentage, starting with the highest percentage.

Required Parameters
{
  "logGroupName": "The name of the log group to search."
}

Optional Parameters
{
  "time": "The time to set as the center of the query. If you specify time, the 8 minutes before and 8 minutes after this time are searched. If you omit time, the past 15 minutes are queried. The time value is specified as epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC."
}
"""
GetLogGroupFields(args) = cloudwatch_logs("GetLogGroupFields", args)

"""
    GetLogEvents()

Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.

Required Parameters
{
  "logStreamName": "The name of the log stream.",
  "logGroupName": "The name of the log group."
}

Optional Parameters
{
  "startTime": "The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included. Events with a timestamp earlier than this time are not included.",
  "startFromHead": "If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false. If you are using nextToken in this operation, you must specify true for startFromHead.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.) Using this token works only when you specify true for startFromHead.",
  "endTime": "The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to or later than this time are not included.",
  "limit": "The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events."
}
"""
GetLogEvents(args) = cloudwatch_logs("GetLogEvents", args)

"""
    DescribeLogGroups()

Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.

Optional Parameters
{
  "logGroupNamePrefix": "The prefix to match.",
  "nextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "limit": "The maximum number of items returned. If you don't specify a value, the default is up to 50 items."
}
"""
DescribeLogGroups() = cloudwatch_logs("DescribeLogGroups")
DescribeLogGroups(args) = cloudwatch_logs("DescribeLogGroups", args)
