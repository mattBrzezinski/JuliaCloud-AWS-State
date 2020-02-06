include("../AWSCorePrototypeServices.jl")
using .Services: resource_groups

"""
Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.

Required Parameters:
GroupName
"""
DeleteGroup(args) = resource_groups("DELETE", "/groups/{GroupName}", args)

"""
Returns information about a specified resource group.

Required Parameters:
GroupName
"""
GetGroup(args) = resource_groups("GET", "/groups/{GroupName}", args)

"""
Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.

Required Parameters:
Arn, Tags
"""
Tag(args) = resource_groups("PUT", "/resources/{Arn}/tags", args)

"""
Returns a list of tags that are associated with a resource group, specified by an ARN.

Required Parameters:
Arn
"""
GetTags(args) = resource_groups("GET", "/resources/{Arn}/tags", args)

"""
Deletes specified tags from a specified resource.

Required Parameters:
Arn, Keys
"""
Untag(args) = resource_groups("PATCH", "/resources/{Arn}/tags", args)

"""
Updates the resource query of a group.

Required Parameters:
GroupName, ResourceQuery
"""
UpdateGroupQuery(args) = resource_groups("PUT", "/groups/{GroupName}/query", args)

"""
Returns a list of ARNs of resources that are members of a specified resource group.

Required Parameters:
GroupName
"""
ListGroupResources(args) = resource_groups("POST", "/groups/{GroupName}/resource-identifiers-list", args)

"""
Returns the resource query associated with the specified resource group.

Required Parameters:
GroupName
"""
GetGroupQuery(args) = resource_groups("GET", "/groups/{GroupName}/query", args)

"""
Creates a group with a specified name, description, and resource query.

Required Parameters:
Name, ResourceQuery
"""
CreateGroup(args) = resource_groups("POST", "/groups", args)

"""
Returns a list of existing resource groups in your account.
"""
ListGroups() = resource_groups("POST", "/groups-list")

"""
Updates an existing group with a new or changed description. You cannot update the name of a resource group.

Required Parameters:
GroupName
"""
UpdateGroup(args) = resource_groups("PUT", "/groups/{GroupName}", args)

"""
Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.

Required Parameters:
ResourceQuery
"""
SearchResources(args) = resource_groups("POST", "/resources/search", args)
