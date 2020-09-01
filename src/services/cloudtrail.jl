include("../AWSCorePrototypeServices.jl")
using .Services: cloudtrail

"""
    CreateTrail()

Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. 

Required Parameters
{
  "S3BucketName": "Specifies the name of the Amazon S3 bucket designated for publishing log files. See Amazon S3 Bucket Naming Requirements.",
  "Name": "Specifies the name of the trail. The name must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are invalid.   Not be in IP address format (for example, 192.168.5.4)  "
}

Optional Parameters
{
  "SnsTopicName": "Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.",
  "IsOrganizationTrail": "Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.",
  "IncludeGlobalServiceEvents": "Specifies whether the trail is publishing events from global services such as IAM to the log files.",
  "CloudWatchLogsLogGroupArn": "Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.",
  "TagsList": "",
  "KmsKeyId": "Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:   alias/MyAliasName   arn:aws:kms:us-east-2:123456789012:alias/MyAliasName   arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012   12345678-1234-1234-1234-123456789012  ",
  "IsMultiRegionTrail": "Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider creating trails that log events in all regions.",
  "S3KeyPrefix": "Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see Finding Your CloudTrail Log Files. The maximum length is 200 characters.",
  "CloudWatchLogsRoleArn": "Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.",
  "EnableLogFileValidation": "Specifies whether log file integrity validation is enabled. The default is false.  When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail. "
}
"""
CreateTrail(args) = cloudtrail("CreateTrail", args)

"""
    DescribeTrails()

Retrieves settings for one or more trails associated with the current region for your account.

Optional Parameters
{
  "trailNameList": "Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail  If an empty list is specified, information for the trail in the current region is returned.   If an empty list is specified and IncludeShadowTrails is false, then information for all trails in the current region is returned.   If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.    If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN. ",
  "includeShadowTrails": "Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region, or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account and region replication trails will not be returned. The default is true."
}
"""

DescribeTrails() = cloudtrail("DescribeTrails")
DescribeTrails(args) = cloudtrail("DescribeTrails", args)

"""
    GetTrail()

Returns settings information for a specified trail.

Required Parameters
{
  "Name": "The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve settings information."
}
"""
GetTrail(args) = cloudtrail("GetTrail", args)

"""
    UpdateTrail()

Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. UpdateTrail must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown.

Required Parameters
{
  "Name": "Specifies the name of the trail or trail ARN. If Name is a trail name, the string must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are invalid.   Not be in IP address format (for example, 192.168.5.4)   If Name is a trail ARN, it must be in the format:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}

Optional Parameters
{
  "SnsTopicName": "Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.",
  "IsOrganizationTrail": "Specifies whether the trail is applied to all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations. If the trail is not an organization trail and this is set to true, the trail will be created in all AWS accounts that belong to the organization. If the trail is an organization trail and this is set to false, the trail will remain in the current AWS account but be deleted from all member accounts in the organization.",
  "IncludeGlobalServiceEvents": "Specifies whether the trail is publishing events from global services such as IAM to the log files.",
  "S3BucketName": "Specifies the name of the Amazon S3 bucket designated for publishing log files. See Amazon S3 Bucket Naming Requirements.",
  "CloudWatchLogsLogGroupArn": "Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.",
  "KmsKeyId": "Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier. Examples:   alias/MyAliasName   arn:aws:kms:us-east-2:123456789012:alias/MyAliasName   arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012   12345678-1234-1234-1234-123456789012  ",
  "IsMultiRegionTrail": "Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.",
  "S3KeyPrefix": "Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see Finding Your CloudTrail Log Files. The maximum length is 200 characters.",
  "CloudWatchLogsRoleArn": "Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.",
  "EnableLogFileValidation": "Specifies whether log file validation is enabled. The default is false.  When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail. "
}
"""
UpdateTrail(args) = cloudtrail("UpdateTrail", args)

"""
    ListPublicKeys()

Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key. 

Optional Parameters
{
  "StartTime": "Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.",
  "NextToken": "Reserved for future use.",
  "EndTime": "Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used."
}
"""

ListPublicKeys() = cloudtrail("ListPublicKeys")
ListPublicKeys(args) = cloudtrail("ListPublicKeys", args)

"""
    StopLogging()

Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an InvalidHomeRegionException will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.

Required Parameters
{
  "Name": "Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
StopLogging(args) = cloudtrail("StopLogging", args)

"""
    RemoveTags()

Removes the specified tags from a trail.

Required Parameters
{
  "ResourceId": "Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}

Optional Parameters
{
  "TagsList": "Specifies a list of tags to be removed."
}
"""
RemoveTags(args) = cloudtrail("RemoveTags", args)

"""
    DeleteTrail()

Deletes a trail. This operation must be called from the region in which the trail was created. DeleteTrail cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.

Required Parameters
{
  "Name": "Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
DeleteTrail(args) = cloudtrail("DeleteTrail", args)

"""
    LookupEvents()

Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   AWS access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second per account. If this limit is exceeded, a throttling error occurs. 

Optional Parameters
{
  "StartTime": "Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.",
  "MaxResults": "The number of events to return. Possible values are 1 through 50. The default is 50.",
  "EventCategory": "Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example, if you do not specify insight as the value of EventCategory, no Insights events are returned.",
  "EndTime": "Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.",
  "NextToken": "The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.",
  "LookupAttributes": "Contains a list of lookup attributes. Currently the list can contain only one item."
}
"""

LookupEvents() = cloudtrail("LookupEvents")
LookupEvents(args) = cloudtrail("LookupEvents", args)

"""
    ListTrails()

Lists trails that are in the current account.

Optional Parameters
{
  "NextToken": "The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters."
}
"""

ListTrails() = cloudtrail("ListTrails")
ListTrails(args) = cloudtrail("ListTrails", args)

"""
    PutInsightSelectors()

Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail. You also use PutInsightSelectors to turn off Insights event logging, by passing an empty list of insight types. In this release, only ApiCallRateInsight is supported as an Insights selector.

Required Parameters
{
  "TrailName": "The name of the CloudTrail trail for which you want to change or add Insights selectors.",
  "InsightSelectors": "A JSON string that contains the insight types you want to log on a trail. In this release, only ApiCallRateInsight is supported as an insight type."
}
"""
PutInsightSelectors(args) = cloudtrail("PutInsightSelectors", args)

"""
    StartLogging()

Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.

Required Parameters
{
  "Name": "Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
StartLogging(args) = cloudtrail("StartLogging", args)

"""
    GetInsightSelectors()

Describes the settings for the Insights event selectors that you configured for your trail. GetInsightSelectors shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException  For more information, see Logging CloudTrail Insights Events for Trails  in the AWS CloudTrail User Guide.

Required Parameters
{
  "TrailName": "Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are not valid.   Not be in IP address format (for example, 192.168.5.4)   If you specify a trail ARN, it must be in the format:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
GetInsightSelectors(args) = cloudtrail("GetInsightSelectors", args)

"""
    ListTags()

Lists the tags for the trail in the current region.

Required Parameters
{
  "ResourceIdList": "Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}

Optional Parameters
{
  "NextToken": "Reserved for future use."
}
"""
ListTags(args) = cloudtrail("ListTags", args)

"""
    AddTags()

Adds one or more tags to a trail, up to a limit of 50. Overwrites an existing tag's value when a new value is specified for an existing tag key. Tag key names must be unique for a trail; you cannot have two keys with the same name but different values. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all AWS Regions only from the Region in which the trail was created (also known as its home region).

Required Parameters
{
  "ResourceId": "Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}

Optional Parameters
{
  "TagsList": "Contains a list of CloudTrail tags, up to a limit of 50"
}
"""
AddTags(args) = cloudtrail("AddTags", args)

"""
    GetTrailStatus()

Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.

Required Parameters
{
  "Name": "Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
GetTrailStatus(args) = cloudtrail("GetTrailStatus", args)

"""
    PutEventSelectors()

Configures an event selector for your trail. Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events.  When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.  Example   You create an event selector for a trail and specify that you want write-only events.   The EC2 GetConsoleOutput and RunInstances API operations occur in your account.   CloudTrail evaluates whether the events match your event selectors.   The RunInstances is a write-only event and it matches your event selector. The trail logs the event.   The GetConsoleOutput is a read-only event but it doesn't match your event selector. The trail doesn't log the event.    The PutEventSelectors operation must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown. You can configure up to five event selectors for each trail. For more information, see Logging Data and Management Events for Trails  and Limits in AWS CloudTrail in the AWS CloudTrail User Guide.

Required Parameters
{
  "TrailName": "Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are invalid.   Not be in IP address format (for example, 192.168.5.4)   If you specify a trail ARN, it must be in the format:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail ",
  "EventSelectors": "Specifies the settings for your event selectors. You can configure up to five event selectors for a trail."
}
"""
PutEventSelectors(args) = cloudtrail("PutEventSelectors", args)

"""
    GetEventSelectors()

Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:   If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.   If your event selector includes management events.   If your event selector includes data events, the Amazon S3 objects or AWS Lambda functions that you are logging for data events.   For more information, see Logging Data and Management Events for Trails  in the AWS CloudTrail User Guide.

Required Parameters
{
  "TrailName": "Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are not valid.   Not be in IP address format (for example, 192.168.5.4)   If you specify a trail ARN, it must be in the format:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail "
}
"""
GetEventSelectors(args) = cloudtrail("GetEventSelectors", args)
