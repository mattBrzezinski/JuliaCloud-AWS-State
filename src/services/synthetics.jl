include("../AWSCorePrototypeServices.jl")
using .Services: synthetics

"""
    ListTagsForResource()

Displays the tags associated with a canary.

Required Parameters
{
  "ResourceArn": "The ARN of the canary that you want to view tags for. The ARN format of a canary is arn:aws:synthetics:Region:account-id:canary:canary-name ."
}
"""
ListTagsForResource(args) = synthetics("GET", "/tags/{resourceArn}", args)

"""
    UpdateCanary()

Use this operation to change the settings of a canary that has already been created. You can't use this operation to update the tags of an existing canary. To change the tags of an existing canary, use TagResource.

Required Parameters
{
  "Name": "The name of the canary that you want to update. To find the names of your canaries, use DescribeCanaries. You cannot change the name of a canary that has already been created."
}

Optional Parameters
{
  "SuccessRetentionPeriodInDays": "The number of days to retain data about successful runs of this canary.",
  "Schedule": "A structure that contains information about how often the canary is to run, and when these runs are to stop.",
  "RuntimeVersion": "Specifies the runtime version to use for the canary. Currently, the only valid value is syn-1.0. For more information about runtime versions, see  Canary Runtime Versions.",
  "Code": "A structure that includes the entry point from which the canary should start running your script. If the script is stored in an S3 bucket, the bucket name, key, and version are also included. ",
  "FailureRetentionPeriodInDays": "The number of days to retain data about failed runs of this canary.",
  "VpcConfig": "If this canary is to test an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint. For more information, see  Running a Canary in a VPC.",
  "RunConfig": "A structure that contains the timeout value that is used for each individual run of the canary.",
  "ExecutionRoleArn": "The ARN of the IAM role to be used to run the canary. This role must already exist, and must include lambda.amazonaws.com as a principal in the trust policy. The role must also have the following permissions:    s3:PutObject     s3:GetBucketLocation     s3:ListAllMyBuckets     cloudwatch:PutMetricData     logs:CreateLogGroup     logs:CreateLogStream     logs:CreateLogStream   "
}
"""
UpdateCanary(args) = synthetics("PATCH", "/canary/{name}", args)

"""
    StartCanary()

Use this operation to run a canary that has already been created. The frequency of the canary runs is determined by the value of the canary's Schedule. To see a canary's schedule, use GetCanary.

Required Parameters
{
  "Name": "The name of the canary that you want to run. To find canary names, use DescribeCanaries."
}
"""
StartCanary(args) = synthetics("POST", "/canary/{name}/start", args)

"""
    DescribeRuntimeVersions()

Returns a list of Synthetics canary runtime versions. For more information, see  Canary Runtime Versions.

Optional Parameters
{
  "MaxResults": "Specify this parameter to limit how many runs are returned each time you use the DescribeRuntimeVersions operation. If you omit this parameter, the default of 100 is used.",
  "NextToken": "A token that indicates that there is more data available. You can use this token in a subsequent DescribeRuntimeVersions operation to retrieve the next set of results."
}
"""

DescribeRuntimeVersions() = synthetics("POST", "/runtime-versions")
DescribeRuntimeVersions(args) = synthetics("POST", "/runtime-versions", args)

"""
    TagResource()

Assigns one or more tags (key-value pairs) to the specified canary.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a canary that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a canary.

Required Parameters
{
  "ResourceArn": "The ARN of the canary that you're adding tags to. The ARN format of a canary is arn:aws:synthetics:Region:account-id:canary:canary-name .",
  "Tags": "The list of key-value pairs to associate with the canary."
}
"""
TagResource(args) = synthetics("POST", "/tags/{resourceArn}", args)

"""
    UntagResource()

Removes one or more tags from the specified canary.

Required Parameters
{
  "ResourceArn": "The ARN of the canary that you're removing tags from. The ARN format of a canary is arn:aws:synthetics:Region:account-id:canary:canary-name .",
  "TagKeys": "The list of tag keys to remove from the resource."
}
"""
UntagResource(args) = synthetics("DELETE", "/tags/{resourceArn}", args)

"""
    GetCanary()

Retrieves complete information about one canary. You must specify the name of the canary that you want. To get a list of canaries and their names, use DescribeCanaries.

Required Parameters
{
  "Name": "The name of the canary that you want details for."
}
"""
GetCanary(args) = synthetics("GET", "/canary/{name}", args)

"""
    GetCanaryRuns()

Retrieves a list of runs for a specified canary.

Required Parameters
{
  "Name": "The name of the canary that you want to see runs for."
}

Optional Parameters
{
  "MaxResults": "Specify this parameter to limit how many runs are returned each time you use the GetCanaryRuns operation. If you omit this parameter, the default of 100 is used.",
  "NextToken": "A token that indicates that there is more data available. You can use this token in a subsequent GetCanaryRuns operation to retrieve the next set of results."
}
"""
GetCanaryRuns(args) = synthetics("POST", "/canary/{name}/runs", args)

"""
    DescribeCanariesLastRun()

Use this operation to see information from the most recent run of each canary that you have created.

Optional Parameters
{
  "MaxResults": "Specify this parameter to limit how many runs are returned each time you use the DescribeLastRun operation. If you omit this parameter, the default of 100 is used.",
  "NextToken": "A token that indicates that there is more data available. You can use this token in a subsequent DescribeCanaries operation to retrieve the next set of results."
}
"""

DescribeCanariesLastRun() = synthetics("POST", "/canaries/last-run")
DescribeCanariesLastRun(args) = synthetics("POST", "/canaries/last-run", args)

"""
    CreateCanary()

Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the outside-in. Canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. You can set up a canary to run continuously or just once.  Do not use CreateCanary to modify an existing canary. Use UpdateCanary instead. To create canaries, you must have the CloudWatchSyntheticsFullAccess policy. If you are creating a new IAM role for the canary, you also need the the iam:CreateRole, iam:CreatePolicy and iam:AttachRolePolicy permissions. For more information, see Necessary Roles and Permissions. Do not include secrets or proprietary information in your canary names. The canary name makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in outbound calls over the internet. For more information, see Security Considerations for Synthetics Canaries.

Required Parameters
{
  "Schedule": "A structure that contains information about how often the canary is to run and when these test runs are to stop.",
  "RuntimeVersion": "Specifies the runtime version to use for the canary. Currently, the only valid value is syn-1.0. For more information about runtime versions, see  Canary Runtime Versions.",
  "Code": "A structure that includes the entry point from which the canary should start running your script. If the script is stored in an S3 bucket, the bucket name, key, and version are also included. ",
  "ArtifactS3Location": "The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary. Artifacts include the log file, screenshots, and HAR files.",
  "Name": "The name for this canary. Be sure to give it a descriptive name that distinguishes it from other canaries in your account. Do not include secrets or proprietary information in your canary names. The canary name makes up part of the canary ARN, and the ARN is included in outbound calls over the internet. For more information, see Security Considerations for Synthetics Canaries.",
  "ExecutionRoleArn": "The ARN of the IAM role to be used to run the canary. This role must already exist, and must include lambda.amazonaws.com as a principal in the trust policy. The role must also have the following permissions:    s3:PutObject     s3:GetBucketLocation     s3:ListAllMyBuckets     cloudwatch:PutMetricData     logs:CreateLogGroup     logs:CreateLogStream     logs:CreateLogStream   "
}

Optional Parameters
{
  "SuccessRetentionPeriodInDays": "The number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.",
  "Tags": "A list of key-value pairs to associate with the canary. You can associate as many as 50 tags with a canary. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only the resources that have certain tag values.",
  "FailureRetentionPeriodInDays": "The number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days.",
  "VpcConfig": "If this canary is to test an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint. For more information, see  Running a Canary in a VPC.",
  "RunConfig": "A structure that contains the configuration for individual canary runs, such as timeout value."
}
"""
CreateCanary(args) = synthetics("POST", "/canary", args)

"""
    DeleteCanary()

Permanently deletes the specified canary. When you delete a canary, resources used and created by the canary are not automatically deleted. After you delete a canary that you do not intend to use again, you should also delete the following:   The Lambda functions and layers used by this canary. These have the prefix cwsyn-MyCanaryName .   The CloudWatch alarms created for this canary. These alarms have a name of Synthetics-SharpDrop-Alarm-MyCanaryName .   Amazon S3 objects and buckets, such as the canary's artifact location.   IAM roles created for the canary. If they were created in the console, these roles have the name  role/service-role/CloudWatchSyntheticsRole-MyCanaryName .   CloudWatch Logs log groups created for the canary. These logs groups have the name /aws/lambda/cwsyn-MyCanaryName .    Before you delete a canary, you might want to use GetCanary to display the information about this canary. Make note of the information returned by this operation so that you can delete these resources after you delete the canary.

Required Parameters
{
  "Name": "The name of the canary that you want to delete. To find the names of your canaries, use DescribeCanaries."
}
"""
DeleteCanary(args) = synthetics("DELETE", "/canary/{name}", args)

"""
    StopCanary()

Stops the canary to prevent all future runs. If the canary is currently running, Synthetics stops waiting for the current run of the specified canary to complete. The run that is in progress completes on its own, publishes metrics, and uploads artifacts, but it is not recorded in Synthetics as a completed run. You can use StartCanary to start it running again with the canary’s current schedule at any point in the future. 

Required Parameters
{
  "Name": "The name of the canary that you want to stop. To find the names of your canaries, use DescribeCanaries."
}
"""
StopCanary(args) = synthetics("POST", "/canary/{name}/stop", args)

"""
    DescribeCanaries()

This operation returns a list of the canaries in your account, along with full details about each canary. This operation does not have resource-level authorization, so if a user is able to use DescribeCanaries, the user can see all of the canaries in the account. A deny policy can only be used to restrict access to all canaries. It cannot be used on specific resources. 

Optional Parameters
{
  "MaxResults": "Specify this parameter to limit how many canaries are returned each time you use the DescribeCanaries operation. If you omit this parameter, the default of 100 is used.",
  "NextToken": "A token that indicates that there is more data available. You can use this token in a subsequent operation to retrieve the next set of results."
}
"""

DescribeCanaries() = synthetics("POST", "/canaries")
DescribeCanaries(args) = synthetics("POST", "/canaries", args)
