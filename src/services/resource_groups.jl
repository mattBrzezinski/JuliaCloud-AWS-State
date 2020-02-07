include("../AWSCorePrototypeServices.jl")
using .Services: resource_groups

"""
Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.
"""
DeleteGroup(GroupName) = resource_groups("DELETE", "/groups/$GroupName")
DeleteGroup(GroupName, args) = resource_groups("DELETE", "/groups/$GroupName", args)
DeleteGroup(a...; b...) = DeleteGroup(a..., b)

"""
Returns information about a specified resource group.
"""
GetGroup(GroupName) = resource_groups("GET", "/groups/$GroupName")
GetGroup(GroupName, args) = resource_groups("GET", "/groups/$GroupName", args)
GetGroup(a...; b...) = GetGroup(a..., b)

"""
Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.
"""
Tag(Arn, Tags) = resource_groups("PUT", "/resources/$Arn/tags")
Tag(Arn, Tags, args) = resource_groups("PUT", "/resources/$Arn/tags", args)
Tag(a...; b...) = Tag(a..., b)

"""
Returns a list of tags that are associated with a resource group, specified by an ARN.
"""
GetTags(Arn) = resource_groups("GET", "/resources/$Arn/tags")
GetTags(Arn, args) = resource_groups("GET", "/resources/$Arn/tags", args)
GetTags(a...; b...) = GetTags(a..., b)

"""
Deletes specified tags from a specified resource.
"""
Untag(Arn, Keys) = resource_groups("PATCH", "/resources/$Arn/tags")
Untag(Arn, Keys, args) = resource_groups("PATCH", "/resources/$Arn/tags", args)
Untag(a...; b...) = Untag(a..., b)

"""
Updates the resource query of a group.
"""
UpdateGroupQuery(GroupName, ResourceQuery) = resource_groups("PUT", "/groups/$GroupName/query")
UpdateGroupQuery(GroupName, ResourceQuery, args) = resource_groups("PUT", "/groups/$GroupName/query", args)
UpdateGroupQuery(a...; b...) = UpdateGroupQuery(a..., b)

"""
Returns a list of ARNs of resources that are members of a specified resource group.
"""
ListGroupResources(GroupName) = resource_groups("POST", "/groups/$GroupName/resource-identifiers-list")
ListGroupResources(GroupName, args) = resource_groups("POST", "/groups/$GroupName/resource-identifiers-list", args)
ListGroupResources(a...; b...) = ListGroupResources(a..., b)

"""
Returns the resource query associated with the specified resource group.
"""
GetGroupQuery(GroupName) = resource_groups("GET", "/groups/$GroupName/query")
GetGroupQuery(GroupName, args) = resource_groups("GET", "/groups/$GroupName/query", args)
GetGroupQuery(a...; b...) = GetGroupQuery(a..., b)

"""
Creates a group with a specified name, description, and resource query.
"""
CreateGroup(Name, ResourceQuery) = resource_groups("POST", "/groups")
CreateGroup(Name, ResourceQuery, args) = resource_groups("POST", "/groups", args)
CreateGroup(a...; b...) = CreateGroup(a..., b)

"""
Returns a list of existing resource groups in your account.
"""
ListGroups() = resource_groups("POST", "/groups-list")
ListGroups(, args) = resource_groups("POST", "/groups-list", args)
ListGroups(a...; b...) = ListGroups(a..., b)

"""
Updates an existing group with a new or changed description. You cannot update the name of a resource group.
"""
UpdateGroup(GroupName) = resource_groups("PUT", "/groups/$GroupName")
UpdateGroup(GroupName, args) = resource_groups("PUT", "/groups/$GroupName", args)
UpdateGroup(a...; b...) = UpdateGroup(a..., b)

"""
Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
"""
SearchResources(ResourceQuery) = resource_groups("POST", "/resources/search")
SearchResources(ResourceQuery, args) = resource_groups("POST", "/resources/search", args)
SearchResources(a...; b...) = SearchResources(a..., b)
