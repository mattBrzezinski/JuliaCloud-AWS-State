include("../AWSCorePrototypeServices.jl")
using .Services: appstream

"""
Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.  Although the response syntax in this topic includes the account password, this password is not returned in the actual response.
"""
DescribeDirectoryConfigs() = appstream("DescribeDirectoryConfigs")

"""
Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.

Required Parameters:
SourceImageName, DestinationImageName, DestinationRegion
"""
CopyImage(args) = appstream("CopyImage", args)

"""
Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the DisplayName, ComputeCapacity, ImageARN, ImageName, IdleDisconnectTimeoutInSeconds, and DisconnectTimeoutInSeconds attributes. If the fleet is in the STARTING or STOPPING state, you can't update it.
"""
UpdateFleet() = appstream("UpdateFleet")

"""
Creates a new user in the user pool.

Required Parameters:
UserName, AuthenticationType
"""
CreateUser(args) = appstream("CreateUser", args)

"""
Creates a usage report subscription. Usage reports are generated daily.
"""
CreateUsageReportSubscription() = appstream("CreateUsageReportSubscription")

"""
Creates a URL to start an image builder streaming session.

Required Parameters:
Name
"""
CreateImageBuilderStreamingURL(args) = appstream("CreateImageBuilderStreamingURL", args)

"""
Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. 

Required Parameters:
UserName, AuthenticationType
"""
DisableUser(args) = appstream("DisableUser", args)

"""
Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use ListTagsForResource. To disassociate tags from your resources, use UntagResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = appstream("TagResource", args)

"""
Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.

Required Parameters:
StackName, FleetName
"""
DescribeSessions(args) = appstream("DescribeSessions", args)

"""
Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.
"""
DescribeStacks() = appstream("DescribeStacks")

"""
Disassociates the specified fleet from the specified stack.

Required Parameters:
FleetName, StackName
"""
DisassociateFleet(args) = appstream("DisassociateFleet", args)

"""
Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.

Required Parameters:
DirectoryName
"""
UpdateDirectoryConfig(args) = appstream("UpdateDirectoryConfig", args)

"""
Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.

Required Parameters:
DirectoryName, OrganizationalUnitDistinguishedNames, ServiceAccountCredentials
"""
CreateDirectoryConfig(args) = appstream("CreateDirectoryConfig", args)

"""
Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.

Required Parameters:
UserName, AuthenticationType
"""
EnableUser(args) = appstream("EnableUser", args)

"""
Creates a fleet. A fleet consists of streaming instances that run a specified image.

Required Parameters:
Name, InstanceType, ComputeCapacity
"""
CreateFleet(args) = appstream("CreateFleet", args)

"""
Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.

Required Parameters:
UserStackAssociations
"""
BatchAssociateUserStack(args) = appstream("BatchAssociateUserStack", args)

"""
Stops the specified fleet.

Required Parameters:
Name
"""
StopFleet(args) = appstream("StopFleet", args)

"""
Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.

Required Parameters:
Name
"""
DeleteStack(args) = appstream("DeleteStack", args)

"""
Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.

Required Parameters:
Name, InstanceType
"""
CreateImageBuilder(args) = appstream("CreateImageBuilder", args)

"""
Starts the specified image builder.

Required Parameters:
Name
"""
StartImageBuilder(args) = appstream("StartImageBuilder", args)

"""
Deletes a user from the user pool.

Required Parameters:
UserName, AuthenticationType
"""
DeleteUser(args) = appstream("DeleteUser", args)

"""
Associates the specified fleet with the specified stack.

Required Parameters:
FleetName, StackName
"""
AssociateFleet(args) = appstream("AssociateFleet", args)

"""
Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use ListTagsForResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = appstream("UntagResource", args)

"""
Retrieves the name of the fleet that is associated with the specified stack.

Required Parameters:
StackName
"""
ListAssociatedFleets(args) = appstream("ListAssociatedFleets", args)

"""
Retrieves a list that describes one or more specified users in the user pool.

Required Parameters:
AuthenticationType
"""
DescribeUsers(args) = appstream("DescribeUsers", args)

"""
Immediately stops the specified streaming session.

Required Parameters:
SessionId
"""
ExpireSession(args) = appstream("ExpireSession", args)

"""
Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = appstream("ListTagsForResource", args)

"""
Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
"""
DescribeFleets() = appstream("DescribeFleets")

"""
Starts the specified fleet.

Required Parameters:
Name
"""
StartFleet(args) = appstream("StartFleet", args)

"""
Retrieves the name of the stack with which the specified fleet is associated.

Required Parameters:
FleetName
"""
ListAssociatedStacks(args) = appstream("ListAssociatedStacks", args)

"""
Retrieves a list that describes one or more usage report subscriptions.
"""
DescribeUsageReportSubscriptions() = appstream("DescribeUsageReportSubscriptions")

"""
Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 

Required Parameters:
Name
"""
DescribeImagePermissions(args) = appstream("DescribeImagePermissions", args)

"""
Deletes the specified fleet.

Required Parameters:
Name
"""
DeleteFleet(args) = appstream("DeleteFleet", args)

"""
Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:   The stack name   The user name (email address of the user associated with the stack) and the authentication type for the user  
"""
DescribeUserStackAssociations() = appstream("DescribeUserStackAssociations")

"""
Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
"""
DescribeImageBuilders() = appstream("DescribeImageBuilders")

"""
Deletes the specified image builder and releases the capacity.

Required Parameters:
Name
"""
DeleteImageBuilder(args) = appstream("DeleteImageBuilder", args)

"""
Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
"""
DescribeImages() = appstream("DescribeImages")

"""
Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.

Required Parameters:
DirectoryName
"""
DeleteDirectoryConfig(args) = appstream("DeleteDirectoryConfig", args)

"""
Stops the specified image builder.

Required Parameters:
Name
"""
StopImageBuilder(args) = appstream("StopImageBuilder", args)

"""
Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. 

Required Parameters:
Name
"""
CreateStack(args) = appstream("CreateStack", args)

"""
Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. 

Required Parameters:
StackName, FleetName, UserId
"""
CreateStreamingURL(args) = appstream("CreateStreamingURL", args)

"""
Updates the specified fields for the specified stack.

Required Parameters:
Name
"""
UpdateStack(args) = appstream("UpdateStack", args)

"""
Disables usage report generation.
"""
DeleteUsageReportSubscription() = appstream("DeleteUsageReportSubscription")

"""
Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.

Required Parameters:
Name, SharedAccountId
"""
DeleteImagePermissions(args) = appstream("DeleteImagePermissions", args)

"""
Disassociates the specified users from the specified stacks.

Required Parameters:
UserStackAssociations
"""
BatchDisassociateUserStack(args) = appstream("BatchDisassociateUserStack", args)

"""
Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.

Required Parameters:
Name
"""
DeleteImage(args) = appstream("DeleteImage", args)

"""
Adds or updates permissions for the specified private image. 

Required Parameters:
Name, SharedAccountId, ImagePermissions
"""
UpdateImagePermissions(args) = appstream("UpdateImagePermissions", args)
