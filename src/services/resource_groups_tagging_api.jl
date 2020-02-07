include("../AWSCorePrototypeServices.jl")
using .Services: resource_groups_tagging_api

"""
Returns all tag values for the specified key in the specified Region for the AWS account.

Required Parameters:
Key
"""
GetTagValues(args) = resource_groups_tagging_api("GetTagValues", args)

"""
Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.  You can call this operation only from the organization's master account and from the us-east-1 Region.
"""
GetComplianceSummary() = resource_groups_tagging_api("GetComplianceSummary")

"""
Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.     You can check the PaginationToken response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The PaginationToken response parameter value is null only when there are no more results to display.  
"""
GetResources() = resource_groups_tagging_api("GetResources")

"""
Generates a report that lists all tagged resources in accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily.  The generated report is saved to the following location:  s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv  You can call this operation only from the organization's master account and from the us-east-1 Region.

Required Parameters:
S3Bucket
"""
StartReportCreation(args) = resource_groups_tagging_api("StartReportCreation", args)

"""
Returns all tag keys in the specified Region for the AWS account.
"""
GetTagKeys() = resource_groups_tagging_api("GetTagKeys")

"""
Describes the status of the StartReportCreation operation.  You can call this operation only from the organization's master account and from the us-east-1 Region.
"""
DescribeReportCreation() = resource_groups_tagging_api("DescribeReportCreation")

"""
Applies one or more tags to the specified resources. Note the following:   Not all resources can have tags. For a list of services that support tagging, see this list.   Each resource can have up to 50 tags. For other limits, see Tag Naming and Usage Conventions in the AWS General Reference.    You can only tag resources that are located in the specified Region for the AWS account.   To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see this list.  

Required Parameters:
ResourceARNList, Tags
"""
TagResources(args) = resource_groups_tagging_api("TagResources", args)

"""
Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see this list.   You can only tag resources that are located in the specified Region for the AWS account.  

Required Parameters:
ResourceARNList, TagKeys
"""
UntagResources(args) = resource_groups_tagging_api("UntagResources", args)
