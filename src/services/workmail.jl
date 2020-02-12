include("../AWSCorePrototypeServices.jl")
using .Services: workmail

"""
    ListResourceDelegates

Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.

Required Parameters:
{
  "ResourceId": "The identifier for the resource whose delegates are listed.",
  "OrganizationId": "The identifier for the organization that contains the resource for which delegates are listed."
}


Optional Parameters:
{
  "MaxResults": "The number of maximum results in a page.",
  "NextToken": "The token used to paginate through the delegates associated with a resource."
}

"""

ListResourceDelegates(args) = workmail("ListResourceDelegates", args)
"""
    ListTagsForResource

Lists the tags applied to an Amazon WorkMail organization resource.

Required Parameters:
{
  "ResourceARN": "The resource ARN."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = workmail("ListTagsForResource", args)
"""
    CreateAlias

Adds an alias to the set of a given member (user or group) of Amazon WorkMail.

Required Parameters:
{
  "EntityId": "The member (user or group) to which this alias is added.",
  "Alias": "The alias to add to the member set.",
  "OrganizationId": "The organization under which the member (user or group) exists."
}


Optional Parameters:
{}

"""

CreateAlias(args) = workmail("CreateAlias", args)
"""
    ListMailboxPermissions

Lists the mailbox permissions associated with a user, group, or resource mailbox.

Required Parameters:
{
  "EntityId": "The identifier of the user, group, or resource for which to list mailbox permissions.",
  "OrganizationId": "The identifier of the organization under which the user, group, or resource exists."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListMailboxPermissions(args) = workmail("ListMailboxPermissions", args)
"""
    DeleteGroup

Deletes a group from Amazon WorkMail.

Required Parameters:
{
  "OrganizationId": "The organization that contains the group.",
  "GroupId": "The identifier of the group to be deleted."
}


Optional Parameters:
{}

"""

DeleteGroup(args) = workmail("DeleteGroup", args)
"""
    DescribeResource

Returns the data available for the resource.

Required Parameters:
{
  "ResourceId": "The identifier of the resource to be described.",
  "OrganizationId": "The identifier associated with the organization for which the resource is described."
}


Optional Parameters:
{}

"""

DescribeResource(args) = workmail("DescribeResource", args)
"""
    CreateUser

Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

Required Parameters:
{
  "Password": "The password for the new user.",
  "DisplayName": "The display name for the new user.",
  "OrganizationId": "The identifier of the organization for which the user is created.",
  "Name": "The name for the new user. Simple AD or AD Connector user names have a maximum length of 20. All others have a maximum length of 64."
}


Optional Parameters:
{}

"""

CreateUser(args) = workmail("CreateUser", args)
"""
    UpdateMailboxQuota

Updates a user's current mailbox quota for a specified organization and user.

Required Parameters:
{
  "MailboxQuota": "The updated mailbox quota, in MB, for the specified user.",
  "UserId": "The identifer for the user for whom to update the mailbox quota.",
  "OrganizationId": "The identifier for the organization that contains the user for whom to update the mailbox quota."
}


Optional Parameters:
{}

"""

UpdateMailboxQuota(args) = workmail("UpdateMailboxQuota", args)
"""
    AssociateDelegateToResource

Adds a member (user or group) to the resource's set of delegates.

Required Parameters:
{
  "EntityId": "The member (user or group) to associate to the resource.",
  "ResourceId": "The resource for which members (users or groups) are associated.",
  "OrganizationId": "The organization under which the resource exists."
}


Optional Parameters:
{}

"""

AssociateDelegateToResource(args) = workmail("AssociateDelegateToResource", args)
"""
    DeleteResource

Deletes the specified resource. 

Required Parameters:
{
  "ResourceId": "The identifier of the resource to be deleted.",
  "OrganizationId": "The identifier associated with the organization from which the resource is deleted."
}


Optional Parameters:
{}

"""

DeleteResource(args) = workmail("DeleteResource", args)
"""
    DeleteUser

Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.

Required Parameters:
{
  "UserId": "The identifier of the user to be deleted.",
  "OrganizationId": "The organization that contains the user to be deleted."
}


Optional Parameters:
{}

"""

DeleteUser(args) = workmail("DeleteUser", args)
"""
    UpdatePrimaryEmailAddress

Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.

Required Parameters:
{
  "EntityId": "The user, group, or resource to update.",
  "Email": "The value of the email to be updated as primary.",
  "OrganizationId": "The organization that contains the user, group, or resource to update."
}


Optional Parameters:
{}

"""

UpdatePrimaryEmailAddress(args) = workmail("UpdatePrimaryEmailAddress", args)
"""
    ListOrganizations

Returns summaries of the customer's non-deleted organizations.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""
ListOrganizations() = workmail("ListOrganizations")
ListOrganizations(args) = workmail("ListOrganizations", args)

"""
    TagResource

Applies the specified tags to the specified Amazon WorkMail organization resource.

Required Parameters:
{
  "ResourceARN": "The resource ARN.",
  "Tags": "The tag key-value pairs."
}


Optional Parameters:
{}

"""

TagResource(args) = workmail("TagResource", args)
"""
    UntagResource

Untags the specified tags from the specified Amazon WorkMail organization resource.

Required Parameters:
{
  "ResourceARN": "The resource ARN.",
  "TagKeys": "The tag keys."
}


Optional Parameters:
{}

"""

UntagResource(args) = workmail("UntagResource", args)
"""
    ListAliases

Creates a paginated call to list the aliases associated with a given entity.

Required Parameters:
{
  "EntityId": "The identifier for the entity for which to list the aliases.",
  "OrganizationId": "The identifier for the organization under which the entity exists."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListAliases(args) = workmail("ListAliases", args)
"""
    DescribeOrganization

Provides more information regarding a given organization based on its identifier.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization to be described."
}


Optional Parameters:
{}

"""

DescribeOrganization(args) = workmail("DescribeOrganization", args)
"""
    DisassociateMemberFromGroup

Removes a member from a group.

Required Parameters:
{
  "MemberId": "The identifier for the member to be removed to the group.",
  "OrganizationId": "The identifier for the organization under which the group exists.",
  "GroupId": "The identifier for the group from which members are removed."
}


Optional Parameters:
{}

"""

DisassociateMemberFromGroup(args) = workmail("DisassociateMemberFromGroup", args)
"""
    RegisterToWorkMail

Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.

Required Parameters:
{
  "EntityId": "The identifier for the user, group, or resource to be updated.",
  "Email": "The email for the user, group, or resource to be updated.",
  "OrganizationId": "The identifier for the organization under which the user, group, or resource exists."
}


Optional Parameters:
{}

"""

RegisterToWorkMail(args) = workmail("RegisterToWorkMail", args)
"""
    CreateResource

Creates a new Amazon WorkMail resource. 

Required Parameters:
{
  "Type": "The type of the new resource. The available types are equipment and room.",
  "OrganizationId": "The identifier associated with the organization for which the resource is created.",
  "Name": "The name of the new resource."
}


Optional Parameters:
{}

"""

CreateResource(args) = workmail("CreateResource", args)
"""
    DeregisterFromWorkMail

Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.

Required Parameters:
{
  "EntityId": "The identifier for the member (user or group) to be updated.",
  "OrganizationId": "The identifier for the organization under which the Amazon WorkMail entity exists."
}


Optional Parameters:
{}

"""

DeregisterFromWorkMail(args) = workmail("DeregisterFromWorkMail", args)
"""
    DisassociateDelegateFromResource

Removes a member from the resource's set of delegates.

Required Parameters:
{
  "EntityId": "The identifier for the member (user, group) to be removed from the resource's delegates.",
  "ResourceId": "The identifier of the resource from which delegates' set members are removed. ",
  "OrganizationId": "The identifier for the organization under which the resource exists."
}


Optional Parameters:
{}

"""

DisassociateDelegateFromResource(args) = workmail("DisassociateDelegateFromResource", args)
"""
    ListUsers

Returns summaries of the organization's users.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization under which the users exist."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListUsers(args) = workmail("ListUsers", args)
"""
    CreateGroup

Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.

Required Parameters:
{
  "OrganizationId": "The organization under which the group is to be created.",
  "Name": "The name of the group."
}


Optional Parameters:
{}

"""

CreateGroup(args) = workmail("CreateGroup", args)
"""
    DeleteMailboxPermissions

Deletes permissions granted to a member (user or group).

Required Parameters:
{
  "EntityId": "The identifier of the member (user or group)that owns the mailbox.",
  "GranteeId": "The identifier of the member (user or group) for which to delete granted permissions.",
  "OrganizationId": "The identifier of the organization under which the member (user or group) exists."
}


Optional Parameters:
{}

"""

DeleteMailboxPermissions(args) = workmail("DeleteMailboxPermissions", args)
"""
    DescribeGroup

Returns the data available for the group.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization under which the group exists.",
  "GroupId": "The identifier for the group to be described."
}


Optional Parameters:
{}

"""

DescribeGroup(args) = workmail("DescribeGroup", args)
"""
    DeleteAlias

Remove one or more specified aliases from a set of aliases for a given user.

Required Parameters:
{
  "EntityId": "The identifier for the member (user or group) from which to have the aliases removed.",
  "Alias": "The aliases to be removed from the user's set of aliases. Duplicate entries in the list are collapsed into single entries (the list is transformed into a set).",
  "OrganizationId": "The identifier for the organization under which the user exists."
}


Optional Parameters:
{}

"""

DeleteAlias(args) = workmail("DeleteAlias", args)
"""
    UpdateResource

Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.

Required Parameters:
{
  "ResourceId": "The identifier of the resource to be updated.",
  "OrganizationId": "The identifier associated with the organization for which the resource is updated."
}


Optional Parameters:
{
  "Name": "The name of the resource to be updated.",
  "BookingOptions": "The resource's booking options to be updated."
}

"""

UpdateResource(args) = workmail("UpdateResource", args)
"""
    PutMailboxPermissions

Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.

Required Parameters:
{
  "EntityId": "The identifier of the user, group, or resource for which to update mailbox permissions.",
  "GranteeId": "The identifier of the user, group, or resource to which to grant the permissions.",
  "OrganizationId": "The identifier of the organization under which the user, group, or resource exists.",
  "PermissionValues": "The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox."
}


Optional Parameters:
{}

"""

PutMailboxPermissions(args) = workmail("PutMailboxPermissions", args)
"""
    AssociateMemberToGroup

Adds a member (user or group) to the group's set.

Required Parameters:
{
  "MemberId": "The member (user or group) to associate to the group.",
  "OrganizationId": "The organization under which the group exists.",
  "GroupId": "The group to which the member (user or group) is associated."
}


Optional Parameters:
{}

"""

AssociateMemberToGroup(args) = workmail("AssociateMemberToGroup", args)
"""
    ListGroups

Returns summaries of the organization's groups.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization under which the groups exist."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListGroups(args) = workmail("ListGroups", args)
"""
    DescribeUser

Provides information regarding the user.

Required Parameters:
{
  "UserId": "The identifier for the user to be described.",
  "OrganizationId": "The identifier for the organization under which the user exists."
}


Optional Parameters:
{}

"""

DescribeUser(args) = workmail("DescribeUser", args)
"""
    ListResources

Returns summaries of the organization's resources.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization under which the resources exist."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListResources(args) = workmail("ListResources", args)
"""
    ResetPassword

Allows the administrator to reset the password for a user.

Required Parameters:
{
  "Password": "The new password for the user.",
  "UserId": "The identifier of the user for whom the password is reset.",
  "OrganizationId": "The identifier of the organization that contains the user for which the password is reset."
}


Optional Parameters:
{}

"""

ResetPassword(args) = workmail("ResetPassword", args)
"""
    ListGroupMembers

Returns an overview of the members of a group. Users and groups can be members of a group.

Required Parameters:
{
  "OrganizationId": "The identifier for the organization under which the group exists.",
  "GroupId": "The identifier for the group to which the members (users or groups) are associated."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": " The token to use to retrieve the next page of results. The first call does not contain any tokens."
}

"""

ListGroupMembers(args) = workmail("ListGroupMembers", args)
"""
    GetMailboxDetails

Requests a user's mailbox details for a specified organization and user.

Required Parameters:
{
  "UserId": "The identifier for the user whose mailbox details are being requested.",
  "OrganizationId": "The identifier for the organization that contains the user whose mailbox details are being requested."
}


Optional Parameters:
{}

"""

GetMailboxDetails(args) = workmail("GetMailboxDetails", args)