include("../AWSCorePrototypeServices.jl")
using .Services: ram

"""
Gets the resources or principals for the resource shares that you own.
"""
GetResourceShareAssociations(associationType) = ram("POST", "/getresourceshareassociations")
GetResourceShareAssociations(associationType, args) = ram("POST", "/getresourceshareassociations", args)
GetResourceShareAssociations(a...; b...) = GetResourceShareAssociations(a..., b)

"""
Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
"""
EnableSharingWithAwsOrganization() = ram("POST", "/enablesharingwithawsorganization")
EnableSharingWithAwsOrganization(, args) = ram("POST", "/enablesharingwithawsorganization", args)
EnableSharingWithAwsOrganization(a...; b...) = EnableSharingWithAwsOrganization(a..., b)

"""
Gets the contents of an AWS RAM permission in JSON format.
"""
GetPermission(permissionArn) = ram("POST", "/getpermission")
GetPermission(permissionArn, args) = ram("POST", "/getpermission", args)
GetPermission(a...; b...) = GetPermission(a..., b)

"""
Lists the principals that you have shared resources with or that have shared resources with you.
"""
ListPrincipals(resourceOwner) = ram("POST", "/listprincipals")
ListPrincipals(resourceOwner, args) = ram("POST", "/listprincipals", args)
ListPrincipals(a...; b...) = ListPrincipals(a..., b)

"""
Gets the invitations for resource sharing that you've received.
"""
GetResourceShareInvitations() = ram("POST", "/getresourceshareinvitations")
GetResourceShareInvitations(, args) = ram("POST", "/getresourceshareinvitations", args)
GetResourceShareInvitations(a...; b...) = GetResourceShareInvitations(a..., b)

"""
Updates the specified resource share that you own.
"""
UpdateResourceShare(resourceShareArn) = ram("POST", "/updateresourceshare")
UpdateResourceShare(resourceShareArn, args) = ram("POST", "/updateresourceshare", args)
UpdateResourceShare(a...; b...) = UpdateResourceShare(a..., b)

"""
Lists the AWS RAM permissions.
"""
ListPermissions() = ram("POST", "/listpermissions")
ListPermissions(, args) = ram("POST", "/listpermissions", args)
ListPermissions(a...; b...) = ListPermissions(a..., b)

"""
Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  
"""
PromoteResourceShareCreatedFromPolicy(resourceShareArn) = ram("POST", "/promoteresourcesharecreatedfrompolicy")
PromoteResourceShareCreatedFromPolicy(resourceShareArn, args) = ram("POST", "/promoteresourcesharecreatedfrompolicy", args)
PromoteResourceShareCreatedFromPolicy(a...; b...) = PromoteResourceShareCreatedFromPolicy(a..., b)

"""
Lists the AWS RAM permissions that are associated with a resource share.
"""
ListResourceSharePermissions(resourceShareArn) = ram("POST", "/listresourcesharepermissions")
ListResourceSharePermissions(resourceShareArn, args) = ram("POST", "/listresourcesharepermissions", args)
ListResourceSharePermissions(a...; b...) = ListResourceSharePermissions(a..., b)

"""
Gets the policies for the specified resources that you own and have shared.
"""
GetResourcePolicies(resourceArns) = ram("POST", "/getresourcepolicies")
GetResourcePolicies(resourceArns, args) = ram("POST", "/getresourcepolicies", args)
GetResourcePolicies(a...; b...) = GetResourcePolicies(a..., b)

"""
Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
"""
ListPendingInvitationResources(resourceShareInvitationArn) = ram("POST", "/listpendinginvitationresources")
ListPendingInvitationResources(resourceShareInvitationArn, args) = ram("POST", "/listpendinginvitationresources", args)
ListPendingInvitationResources(a...; b...) = ListPendingInvitationResources(a..., b)

"""
Disassociates an AWS RAM permission from a resource share.
"""
DisassociateResourceSharePermission(resourceShareArn, permissionArn) = ram("POST", "/disassociateresourcesharepermission")
DisassociateResourceSharePermission(resourceShareArn, permissionArn, args) = ram("POST", "/disassociateresourcesharepermission", args)
DisassociateResourceSharePermission(a...; b...) = DisassociateResourceSharePermission(a..., b)

"""
Creates a resource share.
"""
CreateResourceShare(name) = ram("POST", "/createresourceshare")
CreateResourceShare(name, args) = ram("POST", "/createresourceshare", args)
CreateResourceShare(a...; b...) = CreateResourceShare(a..., b)

"""
Disassociates the specified principals or resources from the specified resource share.
"""
DisassociateResourceShare(resourceShareArn) = ram("POST", "/disassociateresourceshare")
DisassociateResourceShare(resourceShareArn, args) = ram("POST", "/disassociateresourceshare", args)
DisassociateResourceShare(a...; b...) = DisassociateResourceShare(a..., b)

"""
Deletes the specified resource share.
"""
DeleteResourceShare(resourceShareArn) = ram("DELETE", "/deleteresourceshare")
DeleteResourceShare(resourceShareArn, args) = ram("DELETE", "/deleteresourceshare", args)
DeleteResourceShare(a...; b...) = DeleteResourceShare(a..., b)

"""
Adds the specified tags to the specified resource share that you own.
"""
TagResource(resourceShareArn, tags) = ram("POST", "/tagresource")
TagResource(resourceShareArn, tags, args) = ram("POST", "/tagresource", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the specified tags from the specified resource share that you own.
"""
UntagResource(resourceShareArn, tagKeys) = ram("POST", "/untagresource")
UntagResource(resourceShareArn, tagKeys, args) = ram("POST", "/untagresource", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Associates the specified resource share with the specified principals and resources.
"""
AssociateResourceShare(resourceShareArn) = ram("POST", "/associateresourceshare")
AssociateResourceShare(resourceShareArn, args) = ram("POST", "/associateresourceshare", args)
AssociateResourceShare(a...; b...) = AssociateResourceShare(a..., b)

"""
Gets the resource shares that you own or the resource shares that are shared with you.
"""
GetResourceShares(resourceOwner) = ram("POST", "/getresourceshares")
GetResourceShares(resourceOwner, args) = ram("POST", "/getresourceshares", args)
GetResourceShares(a...; b...) = GetResourceShares(a..., b)

"""
Associates a permission with a resource share.
"""
AssociateResourceSharePermission(resourceShareArn, permissionArn) = ram("POST", "/associateresourcesharepermission")
AssociateResourceSharePermission(resourceShareArn, permissionArn, args) = ram("POST", "/associateresourcesharepermission", args)
AssociateResourceSharePermission(a...; b...) = AssociateResourceSharePermission(a..., b)

"""
Accepts an invitation to a resource share from another AWS account.
"""
AcceptResourceShareInvitation(resourceShareInvitationArn) = ram("POST", "/acceptresourceshareinvitation")
AcceptResourceShareInvitation(resourceShareInvitationArn, args) = ram("POST", "/acceptresourceshareinvitation", args)
AcceptResourceShareInvitation(a...; b...) = AcceptResourceShareInvitation(a..., b)

"""
Rejects an invitation to a resource share from another AWS account.
"""
RejectResourceShareInvitation(resourceShareInvitationArn) = ram("POST", "/rejectresourceshareinvitation")
RejectResourceShareInvitation(resourceShareInvitationArn, args) = ram("POST", "/rejectresourceshareinvitation", args)
RejectResourceShareInvitation(a...; b...) = RejectResourceShareInvitation(a..., b)

"""
Lists the resources that you added to a resource shares or the resources that are shared with you.
"""
ListResources(resourceOwner) = ram("POST", "/listresources")
ListResources(resourceOwner, args) = ram("POST", "/listresources", args)
ListResources(a...; b...) = ListResources(a..., b)
