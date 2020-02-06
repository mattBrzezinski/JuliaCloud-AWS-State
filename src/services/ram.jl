include("../AWSCorePrototypeServices.jl")
using .Services: ram

"""
Gets the resources or principals for the resource shares that you own.

Required Parameters:
associationType
"""
GetResourceShareAssociations(args) = ram("POST", "/getresourceshareassociations", args)

"""
Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
"""
EnableSharingWithAwsOrganization() = ram("POST", "/enablesharingwithawsorganization")

"""
Gets the contents of an AWS RAM permission in JSON format.

Required Parameters:
permissionArn
"""
GetPermission(args) = ram("POST", "/getpermission", args)

"""
Lists the principals that you have shared resources with or that have shared resources with you.

Required Parameters:
resourceOwner
"""
ListPrincipals(args) = ram("POST", "/listprincipals", args)

"""
Gets the invitations for resource sharing that you've received.
"""
GetResourceShareInvitations() = ram("POST", "/getresourceshareinvitations")

"""
Updates the specified resource share that you own.

Required Parameters:
resourceShareArn
"""
UpdateResourceShare(args) = ram("POST", "/updateresourceshare", args)

"""
Lists the AWS RAM permissions.
"""
ListPermissions() = ram("POST", "/listpermissions")

"""
Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  

Required Parameters:
resourceShareArn
"""
PromoteResourceShareCreatedFromPolicy(args) = ram("POST", "/promoteresourcesharecreatedfrompolicy", args)

"""
Lists the AWS RAM permissions that are associated with a resource share.

Required Parameters:
resourceShareArn
"""
ListResourceSharePermissions(args) = ram("POST", "/listresourcesharepermissions", args)

"""
Gets the policies for the specified resources that you own and have shared.

Required Parameters:
resourceArns
"""
GetResourcePolicies(args) = ram("POST", "/getresourcepolicies", args)

"""
Lists the resources in a resource share that is shared with you but that the invitation is still pending for.

Required Parameters:
resourceShareInvitationArn
"""
ListPendingInvitationResources(args) = ram("POST", "/listpendinginvitationresources", args)

"""
Disassociates an AWS RAM permission from a resource share.

Required Parameters:
resourceShareArn, permissionArn
"""
DisassociateResourceSharePermission(args) = ram("POST", "/disassociateresourcesharepermission", args)

"""
Creates a resource share.

Required Parameters:
name
"""
CreateResourceShare(args) = ram("POST", "/createresourceshare", args)

"""
Disassociates the specified principals or resources from the specified resource share.

Required Parameters:
resourceShareArn
"""
DisassociateResourceShare(args) = ram("POST", "/disassociateresourceshare", args)

"""
Deletes the specified resource share.

Required Parameters:
resourceShareArn
"""
DeleteResourceShare(args) = ram("DELETE", "/deleteresourceshare", args)

"""
Adds the specified tags to the specified resource share that you own.

Required Parameters:
resourceShareArn, tags
"""
TagResource(args) = ram("POST", "/tagresource", args)

"""
Removes the specified tags from the specified resource share that you own.

Required Parameters:
resourceShareArn, tagKeys
"""
UntagResource(args) = ram("POST", "/untagresource", args)

"""
Associates the specified resource share with the specified principals and resources.

Required Parameters:
resourceShareArn
"""
AssociateResourceShare(args) = ram("POST", "/associateresourceshare", args)

"""
Gets the resource shares that you own or the resource shares that are shared with you.

Required Parameters:
resourceOwner
"""
GetResourceShares(args) = ram("POST", "/getresourceshares", args)

"""
Associates a permission with a resource share.

Required Parameters:
resourceShareArn, permissionArn
"""
AssociateResourceSharePermission(args) = ram("POST", "/associateresourcesharepermission", args)

"""
Accepts an invitation to a resource share from another AWS account.

Required Parameters:
resourceShareInvitationArn
"""
AcceptResourceShareInvitation(args) = ram("POST", "/acceptresourceshareinvitation", args)

"""
Rejects an invitation to a resource share from another AWS account.

Required Parameters:
resourceShareInvitationArn
"""
RejectResourceShareInvitation(args) = ram("POST", "/rejectresourceshareinvitation", args)

"""
Lists the resources that you added to a resource shares or the resources that are shared with you.

Required Parameters:
resourceOwner
"""
ListResources(args) = ram("POST", "/listresources", args)
