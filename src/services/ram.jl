include("../AWSCorePrototypeServices.jl")
using .Services: ram

"""
    GetResourceShareAssociations

Gets the resources or principals for the resource shares that you own.

Required Parameters:
{
  "associationType": "The association type. Specify PRINCIPAL to list the principals that are associated with the specified resource share. Specify RESOURCE to list the resources that are associated with the specified resource share."
}


Optional Parameters:
{
  "associationStatus": "The association status.",
  "resourceShareArns": "The Amazon Resource Names (ARN) of the resource shares.",
  "resourceArn": "The Amazon Resource Name (ARN) of the resource. You cannot specify this parameter if the association type is PRINCIPAL.",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results.",
  "principal": "The principal. You cannot specify this parameter if the association type is RESOURCE."
}

"""

GetResourceShareAssociations(args) = ram("POST", "/getresourceshareassociations", args)
"""
    EnableSharingWithAwsOrganization

Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.

Required Parameters:
{}


Optional Parameters:
{}

"""
EnableSharingWithAwsOrganization() = ram("POST", "/enablesharingwithawsorganization")
EnableSharingWithAwsOrganization(args) = ram("POST", "/enablesharingwithawsorganization", args)

"""
    GetPermission

Gets the contents of an AWS RAM permission in JSON format.

Required Parameters:
{
  "permissionArn": "The ARN of the permission."
}


Optional Parameters:
{
  "permissionVersion": "The identifier for the version of the permission."
}

"""

GetPermission(args) = ram("POST", "/getpermission", args)
"""
    ListPrincipals

Lists the principals that you have shared resources with or that have shared resources with you.

Required Parameters:
{
  "resourceOwner": "The type of owner."
}


Optional Parameters:
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "resourceShareArns": "The Amazon Resource Names (ARN) of the resource shares.",
  "principals": "The principals.",
  "resourceType": "The resource type. Valid values: ec2:CapacityReservation | ec2:Subnet | ec2:TrafficMirrorTarget | ec2:TransitGateway | license-manager:LicenseConfiguration | rds:Cluster | route53resolver:ResolverRule I resource-groups:Group ",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results."
}

"""

ListPrincipals(args) = ram("POST", "/listprincipals", args)
"""
    GetResourceShareInvitations

Gets the invitations for resource sharing that you've received.

Required Parameters:
{}


Optional Parameters:
{
  "resourceShareArns": "The Amazon Resource Names (ARN) of the resource shares.",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "resourceShareInvitationArns": "The Amazon Resource Names (ARN) of the invitations.",
  "nextToken": "The token for the next page of results."
}

"""
GetResourceShareInvitations() = ram("POST", "/getresourceshareinvitations")
GetResourceShareInvitations(args) = ram("POST", "/getresourceshareinvitations", args)

"""
    UpdateResourceShare

Updates the specified resource share that you own.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "name": "The name of the resource share.",
  "allowExternalPrincipals": "Indicates whether principals outside your AWS organization can be associated with a resource share.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

UpdateResourceShare(args) = ram("POST", "/updateresourceshare", args)
"""
    ListPermissions

Lists the AWS RAM permissions.

Required Parameters:
{}


Optional Parameters:
{
  "resourceType": "Specifies the resource type for which to list permissions. For example, to list only permissions that apply to EC2 subnets, specify ec2:Subnet.",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results."
}

"""
ListPermissions() = ram("POST", "/listpermissions")
ListPermissions(args) = ram("POST", "/listpermissions", args)

"""
    PromoteResourceShareCreatedFromPolicy

Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  

Required Parameters:
{
  "resourceShareArn": "The ARN of the resource share to promote."
}


Optional Parameters:
{}

"""

PromoteResourceShareCreatedFromPolicy(args) = ram("POST", "/promoteresourcesharecreatedfrompolicy", args)
"""
    ListResourceSharePermissions

Lists the AWS RAM permissions that are associated with a resource share.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results."
}

"""

ListResourceSharePermissions(args) = ram("POST", "/listresourcesharepermissions", args)
"""
    GetResourcePolicies

Gets the policies for the specified resources that you own and have shared.

Required Parameters:
{
  "resourceArns": "The Amazon Resource Names (ARN) of the resources."
}


Optional Parameters:
{
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results.",
  "principal": "The principal."
}

"""

GetResourcePolicies(args) = ram("POST", "/getresourcepolicies", args)
"""
    ListPendingInvitationResources

Lists the resources in a resource share that is shared with you but that the invitation is still pending for.

Required Parameters:
{
  "resourceShareInvitationArn": "The Amazon Resource Name (ARN) of the invitation."
}


Optional Parameters:
{
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results."
}

"""

ListPendingInvitationResources(args) = ram("POST", "/listpendinginvitationresources", args)
"""
    DisassociateResourceSharePermission

Disassociates an AWS RAM permission from a resource share.

Required Parameters:
{
  "permissionArn": "The ARN of the permission to disassociate from the resource share.",
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

DisassociateResourceSharePermission(args) = ram("POST", "/disassociateresourcesharepermission", args)
"""
    CreateResourceShare

Creates a resource share.

Required Parameters:
{
  "name": "The name of the resource share."
}


Optional Parameters:
{
  "allowExternalPrincipals": "Indicates whether principals outside your AWS organization can be associated with a resource share.",
  "principals": "The principals to associate with the resource share. The possible values are IDs of AWS accounts, the ARN of an OU or organization from AWS Organizations.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "resourceArns": "The Amazon Resource Names (ARN) of the resources to associate with the resource share.",
  "tags": "One or more tags.",
  "permissionArns": "The ARNs of the permissions to associate with the resource share. If you do not specify an ARN for the permission, AWS RAM automatically attaches the default version of the permission for each resource type."
}

"""

CreateResourceShare(args) = ram("POST", "/createresourceshare", args)
"""
    DisassociateResourceShare

Disassociates the specified principals or resources from the specified resource share.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "principals": "The principals.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "resourceArns": "The Amazon Resource Names (ARNs) of the resources."
}

"""

DisassociateResourceShare(args) = ram("POST", "/disassociateresourceshare", args)
"""
    DeleteResourceShare

Deletes the specified resource share.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

DeleteResourceShare(args) = ram("DELETE", "/deleteresourceshare", args)
"""
    TagResource

Adds the specified tags to the specified resource share that you own.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share.",
  "tags": "One or more tags."
}


Optional Parameters:
{}

"""

TagResource(args) = ram("POST", "/tagresource", args)
"""
    UntagResource

Removes the specified tags from the specified resource share that you own.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share.",
  "tagKeys": "The tag keys of the tags to remove."
}


Optional Parameters:
{}

"""

UntagResource(args) = ram("POST", "/untagresource", args)
"""
    AssociateResourceShare

Associates the specified resource share with the specified principals and resources.

Required Parameters:
{
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "principals": "The principals.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "resourceArns": "The Amazon Resource Names (ARN) of the resources."
}

"""

AssociateResourceShare(args) = ram("POST", "/associateresourceshare", args)
"""
    GetResourceShares

Gets the resource shares that you own or the resource shares that are shared with you.

Required Parameters:
{
  "resourceOwner": "The type of owner."
}


Optional Parameters:
{
  "resourceShareStatus": "The status of the resource share.",
  "name": "The name of the resource share.",
  "tagFilters": "One or more tag filters.",
  "resourceShareArns": "The Amazon Resource Names (ARN) of the resource shares.",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results."
}

"""

GetResourceShares(args) = ram("POST", "/getresourceshares", args)
"""
    AssociateResourceSharePermission

Associates a permission with a resource share.

Required Parameters:
{
  "permissionArn": "The ARN of the AWS RAM permission to associate with the resource share.",
  "resourceShareArn": "The Amazon Resource Name (ARN) of the resource share."
}


Optional Parameters:
{
  "replace": "Indicates whether the permission should replace the permissions that are currently associated with the resource share. Use true to replace the current permissions. Use false to add the permission to the current permission.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

AssociateResourceSharePermission(args) = ram("POST", "/associateresourcesharepermission", args)
"""
    AcceptResourceShareInvitation

Accepts an invitation to a resource share from another AWS account.

Required Parameters:
{
  "resourceShareInvitationArn": "The Amazon Resource Name (ARN) of the invitation."
}


Optional Parameters:
{
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

AcceptResourceShareInvitation(args) = ram("POST", "/acceptresourceshareinvitation", args)
"""
    RejectResourceShareInvitation

Rejects an invitation to a resource share from another AWS account.

Required Parameters:
{
  "resourceShareInvitationArn": "The Amazon Resource Name (ARN) of the invitation."
}


Optional Parameters:
{
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}

"""

RejectResourceShareInvitation(args) = ram("POST", "/rejectresourceshareinvitation", args)
"""
    ListResources

Lists the resources that you added to a resource shares or the resources that are shared with you.

Required Parameters:
{
  "resourceOwner": "The type of owner."
}


Optional Parameters:
{
  "resourceShareArns": "The Amazon Resource Names (ARN) of the resource shares.",
  "resourceType": "The resource type. Valid values: ec2:CapacityReservation | ec2:Subnet | ec2:TrafficMirrorTarget | ec2:TransitGateway | license-manager:LicenseConfiguration | rds:Cluster | route53resolver:ResolverRule | resource-groups:Group ",
  "resourceArns": "The Amazon Resource Names (ARN) of the resources.",
  "maxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "nextToken": "The token for the next page of results.",
  "principal": "The principal."
}

"""

ListResources(args) = ram("POST", "/listresources", args)