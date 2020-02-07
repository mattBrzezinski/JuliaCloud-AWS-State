include("../AWSCorePrototypeServices.jl")
using .Services: workmail

"""
Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.

Required Parameters:
OrganizationId, ResourceId
"""
ListResourceDelegates(args) = workmail("ListResourceDelegates", args)

"""
Lists the tags applied to an Amazon WorkMail organization resource.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = workmail("ListTagsForResource", args)

"""
Adds an alias to the set of a given member (user or group) of Amazon WorkMail.

Required Parameters:
OrganizationId, EntityId, Alias
"""
CreateAlias(args) = workmail("CreateAlias", args)

"""
Lists the mailbox permissions associated with a user, group, or resource mailbox.

Required Parameters:
OrganizationId, EntityId
"""
ListMailboxPermissions(args) = workmail("ListMailboxPermissions", args)

"""
Deletes a group from Amazon WorkMail.

Required Parameters:
OrganizationId, GroupId
"""
DeleteGroup(args) = workmail("DeleteGroup", args)

"""
Returns the data available for the resource.

Required Parameters:
OrganizationId, ResourceId
"""
DescribeResource(args) = workmail("DescribeResource", args)

"""
Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

Required Parameters:
OrganizationId, Name, DisplayName, Password
"""
CreateUser(args) = workmail("CreateUser", args)

"""
Updates a user's current mailbox quota for a specified organization and user.

Required Parameters:
OrganizationId, UserId, MailboxQuota
"""
UpdateMailboxQuota(args) = workmail("UpdateMailboxQuota", args)

"""
Adds a member (user or group) to the resource's set of delegates.

Required Parameters:
OrganizationId, ResourceId, EntityId
"""
AssociateDelegateToResource(args) = workmail("AssociateDelegateToResource", args)

"""
Deletes the specified resource. 

Required Parameters:
OrganizationId, ResourceId
"""
DeleteResource(args) = workmail("DeleteResource", args)

"""
Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.

Required Parameters:
OrganizationId, UserId
"""
DeleteUser(args) = workmail("DeleteUser", args)

"""
Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.

Required Parameters:
OrganizationId, EntityId, Email
"""
UpdatePrimaryEmailAddress(args) = workmail("UpdatePrimaryEmailAddress", args)

"""
Returns summaries of the customer's non-deleted organizations.
"""
ListOrganizations() = workmail("ListOrganizations")

"""
Applies the specified tags to the specified Amazon WorkMail organization resource.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = workmail("TagResource", args)

"""
Untags the specified tags from the specified Amazon WorkMail organization resource.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = workmail("UntagResource", args)

"""
Creates a paginated call to list the aliases associated with a given entity.

Required Parameters:
OrganizationId, EntityId
"""
ListAliases(args) = workmail("ListAliases", args)

"""
Provides more information regarding a given organization based on its identifier.

Required Parameters:
OrganizationId
"""
DescribeOrganization(args) = workmail("DescribeOrganization", args)

"""
Removes a member from a group.

Required Parameters:
OrganizationId, GroupId, MemberId
"""
DisassociateMemberFromGroup(args) = workmail("DisassociateMemberFromGroup", args)

"""
Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.

Required Parameters:
OrganizationId, EntityId, Email
"""
RegisterToWorkMail(args) = workmail("RegisterToWorkMail", args)

"""
Creates a new Amazon WorkMail resource. 

Required Parameters:
OrganizationId, Name, Type
"""
CreateResource(args) = workmail("CreateResource", args)

"""
Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.

Required Parameters:
OrganizationId, EntityId
"""
DeregisterFromWorkMail(args) = workmail("DeregisterFromWorkMail", args)

"""
Removes a member from the resource's set of delegates.

Required Parameters:
OrganizationId, ResourceId, EntityId
"""
DisassociateDelegateFromResource(args) = workmail("DisassociateDelegateFromResource", args)

"""
Returns summaries of the organization's users.

Required Parameters:
OrganizationId
"""
ListUsers(args) = workmail("ListUsers", args)

"""
Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

Required Parameters:
OrganizationId, Name
"""
CreateGroup(args) = workmail("CreateGroup", args)

"""
Deletes permissions granted to a member (user or group).

Required Parameters:
OrganizationId, EntityId, GranteeId
"""
DeleteMailboxPermissions(args) = workmail("DeleteMailboxPermissions", args)

"""
Returns the data available for the group.

Required Parameters:
OrganizationId, GroupId
"""
DescribeGroup(args) = workmail("DescribeGroup", args)

"""
Remove one or more specified aliases from a set of aliases for a given user.

Required Parameters:
OrganizationId, EntityId, Alias
"""
DeleteAlias(args) = workmail("DeleteAlias", args)

"""
Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.

Required Parameters:
OrganizationId, ResourceId
"""
UpdateResource(args) = workmail("UpdateResource", args)

"""
Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.

Required Parameters:
OrganizationId, EntityId, GranteeId, PermissionValues
"""
PutMailboxPermissions(args) = workmail("PutMailboxPermissions", args)

"""
Adds a member (user or group) to the group's set.

Required Parameters:
OrganizationId, GroupId, MemberId
"""
AssociateMemberToGroup(args) = workmail("AssociateMemberToGroup", args)

"""
Returns summaries of the organization's groups.

Required Parameters:
OrganizationId
"""
ListGroups(args) = workmail("ListGroups", args)

"""
Provides information regarding the user.

Required Parameters:
OrganizationId, UserId
"""
DescribeUser(args) = workmail("DescribeUser", args)

"""
Returns summaries of the organization's resources.

Required Parameters:
OrganizationId
"""
ListResources(args) = workmail("ListResources", args)

"""
Allows the administrator to reset the password for a user.

Required Parameters:
OrganizationId, UserId, Password
"""
ResetPassword(args) = workmail("ResetPassword", args)

"""
Returns an overview of the members of a group. Users and groups can be members of a group.

Required Parameters:
OrganizationId, GroupId
"""
ListGroupMembers(args) = workmail("ListGroupMembers", args)

"""
Requests a user's mailbox details for a specified organization and user.

Required Parameters:
OrganizationId, UserId
"""
GetMailboxDetails(args) = workmail("GetMailboxDetails", args)
