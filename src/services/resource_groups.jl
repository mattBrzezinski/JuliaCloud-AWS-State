include("../AWSCorePrototypeServices.jl")
using .Services: resource_groups

"""
    DeleteGroup()

Deletes the specified resource group. Deleting a resource group does not delete any resources that are members of the group; it only deletes the group structure.

Optional Parameters
{
  "Group": "The name or the ARN of the resource group to delete.",
  "GroupName": "Don't use this parameter. Use Group instead."
}
"""

DeleteGroup() = resource_groups("POST", "/delete-group")
DeleteGroup(args) = resource_groups("POST", "/delete-group", args)

"""
    GetGroup()

Returns information about a specified resource group.

Optional Parameters
{
  "Group": "The name or the ARN of the resource group to retrieve.",
  "GroupName": "Don't use this parameter. Use Group instead."
}
"""

GetGroup() = resource_groups("POST", "/get-group")
GetGroup(args) = resource_groups("POST", "/get-group", args)

"""
    Tag()

Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.  Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data. 

Required Parameters
{
  "Arn": "The ARN of the resource group to which to add tags.",
  "Tags": "The tags to add to the specified resource group. A tag is a string-to-string map of key-value pairs."
}
"""
Tag(args) = resource_groups("PUT", "/resources/{Arn}/tags", args)

"""
    GetTags()

Returns a list of tags that are associated with a resource group, specified by an ARN.

Required Parameters
{
  "Arn": "The ARN of the resource group whose tags you want to retrieve."
}
"""
GetTags(args) = resource_groups("GET", "/resources/{Arn}/tags", args)

"""
    Untag()

Deletes tags from a specified resource group.

Required Parameters
{
  "Arn": "The ARN of the resource group from which to remove tags. The command removed both the specified keys and any values associated with those keys.",
  "Keys": "The keys of the tags to be removed."
}
"""
Untag(args) = resource_groups("PATCH", "/resources/{Arn}/tags", args)

"""
    UpdateGroupQuery()

Updates the resource query of a group.

Required Parameters
{
  "ResourceQuery": "The resource query to determine which AWS resources are members of this resource group."
}

Optional Parameters
{
  "Group": "The name or the ARN of the resource group to query.",
  "GroupName": "Don't use this parameter. Use Group instead."
}
"""
UpdateGroupQuery(args) = resource_groups("POST", "/update-group-query", args)

"""
    GetGroupConfiguration()

Returns the service configuration associated with the specified resource group. AWS Resource Groups supports configurations for the following resource group types:    AWS::EC2::CapacityReservationPool - Amazon EC2 capacity reservation pools. For more information, see Working with capacity reservation groups in the EC2 Users Guide.  

Optional Parameters
{
  "Group": "The name or the ARN of the resource group."
}
"""

GetGroupConfiguration() = resource_groups("POST", "/get-group-configuration")
GetGroupConfiguration(args) = resource_groups("POST", "/get-group-configuration", args)

"""
    ListGroupResources()

Returns a list of ARNs of the resources that are members of a specified resource group.

Optional Parameters
{
  "MaxResults": "The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the NextToken response element is present and has a value (is not null). Include that value as the NextToken request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check NextToken after every operation to ensure that you receive all of the results.",
  "Group": "The name or the ARN of the resource group",
  "NextToken": "The parameter for receiving additional results if you receive a NextToken response in a previous request. A NextToken response indicates that more output is available. Set this parameter to the value provided by a previous call's NextToken response to indicate where the output should continue from.",
  "GroupName": "Don't use this parameter. Use Group instead.",
  "Filters": "Filters, formatted as ResourceFilter objects, that you want to apply to a ListGroupResources operation. Filters the results to include only those of the specified resource types.    resource-type - Filter resources by their type. Specify up to five resource types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.    When you specify a resource-type filter for ListGroupResources, AWS Resource Groups validates your filter resource types against the types that are defined in the query associated with the group. For example, if a group contains only S3 buckets because its query specifies only that resource type, but your resource-type filter includes EC2 instances, AWS Resource Groups does not filter for EC2 instances. In this case, a ListGroupResources request returns a BadRequestException error with a message similar to the following:  The resource types specified as filters in the request are not valid.  The error includes a list of resource types that failed the validation because they are not part of the query associated with the group. This validation doesn't occur when the group query specifies AWS::AllSupported, because a group based on such a query can contain any of the allowed resource types for the query type (tag-based or AWS CloudFormation stack-based queries)."
}
"""

ListGroupResources() = resource_groups("POST", "/list-group-resources")
ListGroupResources(args) = resource_groups("POST", "/list-group-resources", args)

"""
    GetGroupQuery()

Retrieves the resource query associated with the specified resource group.

Optional Parameters
{
  "Group": "The name or the ARN of the resource group to query.",
  "GroupName": "Don't use this parameter. Use Group instead."
}
"""

GetGroupQuery() = resource_groups("POST", "/get-group-query")
GetGroupQuery(args) = resource_groups("POST", "/get-group-query", args)

"""
    GroupResources()

Adds the specified resources to the specified group.

Required Parameters
{
  "Group": "The name or the ARN of the resource group to add resources to.",
  "ResourceArns": "The list of ARNs for resources to be added to the group. "
}
"""
GroupResources(args) = resource_groups("POST", "/group-resources", args)

"""
    CreateGroup()

Creates a resource group with the specified name and description. You can optionally include a resource query, or a service configuration.

Required Parameters
{
  "Name": "The name of the group, which is the identifier of the group in other operations. You can't change the name of a resource group after you create it. A resource group name can consist of letters, numbers, hyphens, periods, and underscores. The name cannot start with AWS or aws; these are reserved. A resource group name must be unique within each AWS Region in your AWS account."
}

Optional Parameters
{
  "Description": "The description of the resource group. Descriptions can consist of letters, numbers, hyphens, underscores, periods, and spaces.",
  "Configuration": "A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of GroupConfigurationItem elements.  You can specify either a Configuration or a ResourceQuery in a group, but not both. ",
  "Tags": "The tags to add to the group. A tag is key-value pair string.",
  "ResourceQuery": "The resource query that determines which AWS resources are members of this group.  You can specify either a ResourceQuery or a Configuration, but not both. "
}
"""
CreateGroup(args) = resource_groups("POST", "/groups", args)

"""
    UngroupResources()

Removes the specified resources from the specified group.

Required Parameters
{
  "Group": "The name or the ARN of the resource group from which to remove the resources.",
  "ResourceArns": "The ARNs of the resources to be removed from the group."
}
"""
UngroupResources(args) = resource_groups("POST", "/ungroup-resources", args)

"""
    ListGroups()

Returns a list of existing resource groups in your account.

Optional Parameters
{
  "MaxResults": "The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the NextToken response element is present and has a value (is not null). Include that value as the NextToken request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "The parameter for receiving additional results if you receive a NextToken response in a previous request. A NextToken response indicates that more output is available. Set this parameter to the value provided by a previous call's NextToken response to indicate where the output should continue from.",
  "Filters": "Filters, formatted as GroupFilter objects, that you want to apply to a ListGroups operation.    resource-type - Filter the results to include only those of the specified resource types. Specify up to five resource types in the format AWS::ServiceCode::ResourceType . For example, AWS::EC2::Instance, or AWS::S3::Bucket.    configuration-type - Filter the results to include only those groups that have the specified configuration types attached. The current supported values are:   AWS:EC2::CapacityReservationPool    "
}
"""

ListGroups() = resource_groups("POST", "/groups-list")
ListGroups(args) = resource_groups("POST", "/groups-list", args)

"""
    UpdateGroup()

Updates the description for an existing group. You cannot update the name of a resource group.

Optional Parameters
{
  "Description": "The new description that you want to update the resource group with. Descriptions can contain letters, numbers, hyphens, underscores, periods, and spaces.",
  "Group": "The name or the ARN of the resource group to modify.",
  "GroupName": "Don't use this parameter. Use Group instead."
}
"""

UpdateGroup() = resource_groups("POST", "/update-group")
UpdateGroup(args) = resource_groups("POST", "/update-group", args)

"""
    SearchResources()

Returns a list of AWS resource identifiers that matches tne specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.

Required Parameters
{
  "ResourceQuery": "The search query, using the same formats that are supported for resource group definition. For more information, see CreateGroup."
}

Optional Parameters
{
  "MaxResults": "The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the NextToken response element is present and has a value (is not null). Include that value as the NextToken request parameter in the next call to the operation to get the next part of the results. Note that the service might return fewer results than the maximum even when there are more results available. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "The parameter for receiving additional results if you receive a NextToken response in a previous request. A NextToken response indicates that more output is available. Set this parameter to the value provided by a previous call's NextToken response to indicate where the output should continue from."
}
"""
SearchResources(args) = resource_groups("POST", "/resources/search", args)
