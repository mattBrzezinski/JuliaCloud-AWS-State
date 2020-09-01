include("../AWSCorePrototypeServices.jl")
using .Services: appstream

"""
    DescribeDirectoryConfigs()

Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.  Although the response syntax in this topic includes the account password, this password is not returned in the actual response.

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "DirectoryNames": "The directory names.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""

DescribeDirectoryConfigs() = appstream("DescribeDirectoryConfigs")
DescribeDirectoryConfigs(args) = appstream("DescribeDirectoryConfigs", args)

"""
    CopyImage()

Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.

Required Parameters
{
  "SourceImageName": "The name of the image to copy.",
  "DestinationImageName": "The name that the image will have when it is copied to the destination.",
  "DestinationRegion": "The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region."
}

Optional Parameters
{
  "DestinationImageDescription": "The description that the image will have when it is copied to the destination."
}
"""
CopyImage(args) = appstream("CopyImage", args)

"""
    UpdateFleet()

Updates the specified fleet. If the fleet is in the STOPPED state, you can update any attribute except the fleet name. If the fleet is in the RUNNING state, you can update the DisplayName, ComputeCapacity, ImageARN, ImageName, IdleDisconnectTimeoutInSeconds, and DisconnectTimeoutInSeconds attributes. If the fleet is in the STARTING or STOPPING state, you can't update it.

Optional Parameters
{
  "ImageName": "The name of the image used to create the fleet.",
  "AttributesToDelete": "The fleet attributes to delete.",
  "DisconnectTimeoutInSeconds": "The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.  Specify a value between 60 and 360000.",
  "InstanceType": "The instance type to use when launching fleet instances. The following instance types are available:   stream.standard.medium   stream.standard.large   stream.compute.large   stream.compute.xlarge   stream.compute.2xlarge   stream.compute.4xlarge   stream.compute.8xlarge   stream.memory.large   stream.memory.xlarge   stream.memory.2xlarge   stream.memory.4xlarge   stream.memory.8xlarge   stream.memory.z1d.large   stream.memory.z1d.xlarge   stream.memory.z1d.2xlarge   stream.memory.z1d.3xlarge   stream.memory.z1d.6xlarge   stream.memory.z1d.12xlarge   stream.graphics-design.large   stream.graphics-design.xlarge   stream.graphics-design.2xlarge   stream.graphics-design.4xlarge   stream.graphics-desktop.2xlarge   stream.graphics.g4dn.xlarge   stream.graphics.g4dn.2xlarge   stream.graphics.g4dn.4xlarge   stream.graphics.g4dn.8xlarge   stream.graphics.g4dn.12xlarge   stream.graphics.g4dn.16xlarge   stream.graphics-pro.4xlarge   stream.graphics-pro.8xlarge   stream.graphics-pro.16xlarge  ",
  "DeleteVpcConfig": "Deletes the VPC association for the specified fleet.",
  "VpcConfig": "The VPC configuration for the fleet.",
  "StreamView": "The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When APP is specified, only the windows of applications opened by users display. When DESKTOP is specified, the standard desktop that is provided by the operating system displays. The default value is APP.",
  "Name": "A unique name for the fleet.",
  "DomainJoinInfo": "The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. ",
  "ImageArn": "The ARN of the public, private, or shared image to use.",
  "IamRoleArn": "The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) AssumeRole API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the appstream_machine_role credential profile on the instance. For more information, see Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances in the Amazon AppStream 2.0 Administration Guide.",
  "MaxUserDurationInSeconds": "The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. Specify a value between 600 and 360000.",
  "IdleDisconnectTimeoutInSeconds": "The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the DisconnectTimeoutInSeconds time interval begins. Users are notified before they are disconnected due to inactivity. If users try to reconnect to the streaming session before the time interval specified in DisconnectTimeoutInSeconds elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in IdleDisconnectTimeoutInSeconds elapses, they are disconnected.  To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.  If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity.  ",
  "ComputeCapacity": "The desired capacity for the fleet.",
  "Description": "The description to display.",
  "EnableDefaultInternetAccess": "Enables or disables default internet access for the fleet.",
  "DisplayName": "The fleet name to display."
}
"""

UpdateFleet() = appstream("UpdateFleet")
UpdateFleet(args) = appstream("UpdateFleet", args)

"""
    CreateUser()

Creates a new user in the user pool.

Required Parameters
{
  "UserName": "The email address of the user.  Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays. ",
  "AuthenticationType": "The authentication type for the user. You must specify USERPOOL. "
}

Optional Parameters
{
  "MessageAction": "The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent.   The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email. ",
  "LastName": "The last name, or surname, of the user.",
  "FirstName": "The first name, or given name, of the user."
}
"""
CreateUser(args) = appstream("CreateUser", args)

"""
    CreateUsageReportSubscription()

Creates a usage report subscription. Usage reports are generated daily.
"""

CreateUsageReportSubscription() = appstream("CreateUsageReportSubscription")
CreateUsageReportSubscription(args) = appstream("CreateUsageReportSubscription", args)

"""
    CreateImageBuilderStreamingURL()

Creates a URL to start an image builder streaming session.

Required Parameters
{
  "Name": "The name of the image builder."
}

Optional Parameters
{
  "Validity": "The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 3600 seconds."
}
"""
CreateImageBuilderStreamingURL(args) = appstream("CreateImageBuilderStreamingURL", args)

"""
    DisableUser()

Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. 

Required Parameters
{
  "UserName": "The email address of the user.  Users' email addresses are case-sensitive. ",
  "AuthenticationType": "The authentication type for the user. You must specify USERPOOL."
}
"""
DisableUser(args) = appstream("DisableUser", args)

"""
    TagResource()

Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value. To list the current tags for your resources, use ListTagsForResource. To disassociate tags from your resources, use UntagResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "Tags": "The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=.  If you do not specify a value, the value is set to an empty string. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters:  _ . : / = +   - @"
}
"""
TagResource(args) = appstream("TagResource", args)

"""
    DescribeSessions()

Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.

Required Parameters
{
  "FleetName": "The name of the fleet. This value is case-sensitive.",
  "StackName": "The name of the stack. This value is case-sensitive."
}

Optional Parameters
{
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.",
  "UserId": "The user identifier (ID). If you specify a user ID, you must also specify the authentication type.",
  "AuthenticationType": "The authentication method. Specify API for a user authenticated using a streaming URL or SAML for a SAML federated user. The default is to authenticate users using a streaming URL.",
  "Limit": "The size of each page of results. The default value is 20 and the maximum value is 50."
}
"""
DescribeSessions(args) = appstream("DescribeSessions", args)

"""
    DescribeStacks()

Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.

Optional Parameters
{
  "Names": "The names of the stacks to describe.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""

DescribeStacks() = appstream("DescribeStacks")
DescribeStacks(args) = appstream("DescribeStacks", args)

"""
    DisassociateFleet()

Disassociates the specified fleet from the specified stack.

Required Parameters
{
  "FleetName": "The name of the fleet.",
  "StackName": "The name of the stack."
}
"""
DisassociateFleet(args) = appstream("DisassociateFleet", args)

"""
    UpdateDirectoryConfig()

Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.

Required Parameters
{
  "DirectoryName": "The name of the Directory Config object."
}

Optional Parameters
{
  "OrganizationalUnitDistinguishedNames": "The distinguished names of the organizational units for computer accounts.",
  "ServiceAccountCredentials": "The credentials for the service account used by the fleet or image builder to connect to the directory."
}
"""
UpdateDirectoryConfig(args) = appstream("UpdateDirectoryConfig", args)

"""
    CreateDirectoryConfig()

Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.

Required Parameters
{
  "OrganizationalUnitDistinguishedNames": "The distinguished names of the organizational units for computer accounts.",
  "DirectoryName": "The fully qualified name of the directory (for example, corp.example.com)."
}

Optional Parameters
{
  "ServiceAccountCredentials": "The credentials for the service account used by the fleet or image builder to connect to the directory."
}
"""
CreateDirectoryConfig(args) = appstream("CreateDirectoryConfig", args)

"""
    EnableUser()

Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.

Required Parameters
{
  "UserName": "The email address of the user.  Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays.  ",
  "AuthenticationType": "The authentication type for the user. You must specify USERPOOL."
}
"""
EnableUser(args) = appstream("EnableUser", args)

"""
    CreateFleet()

Creates a fleet. A fleet consists of streaming instances that run a specified image.

Required Parameters
{
  "ComputeCapacity": "The desired capacity for the fleet.",
  "InstanceType": "The instance type to use when launching fleet instances. The following instance types are available:   stream.standard.medium   stream.standard.large   stream.compute.large   stream.compute.xlarge   stream.compute.2xlarge   stream.compute.4xlarge   stream.compute.8xlarge   stream.memory.large   stream.memory.xlarge   stream.memory.2xlarge   stream.memory.4xlarge   stream.memory.8xlarge   stream.memory.z1d.large   stream.memory.z1d.xlarge   stream.memory.z1d.2xlarge   stream.memory.z1d.3xlarge   stream.memory.z1d.6xlarge   stream.memory.z1d.12xlarge   stream.graphics-design.large   stream.graphics-design.xlarge   stream.graphics-design.2xlarge   stream.graphics-design.4xlarge   stream.graphics-desktop.2xlarge   stream.graphics.g4dn.xlarge   stream.graphics.g4dn.2xlarge   stream.graphics.g4dn.4xlarge   stream.graphics.g4dn.8xlarge   stream.graphics.g4dn.12xlarge   stream.graphics.g4dn.16xlarge   stream.graphics-pro.4xlarge   stream.graphics-pro.8xlarge   stream.graphics-pro.16xlarge  ",
  "Name": "A unique name for the fleet."
}

Optional Parameters
{
  "ImageName": "The name of the image used to create the fleet.",
  "DisconnectTimeoutInSeconds": "The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.  Specify a value between 60 and 360000.",
  "Tags": "The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=.  If you do not specify a value, the value is set to an empty string. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters:  _ . : / = +   - @ For more information, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.",
  "VpcConfig": "The VPC configuration for the fleet.",
  "StreamView": "The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When APP is specified, only the windows of applications opened by users display. When DESKTOP is specified, the standard desktop that is provided by the operating system displays. The default value is APP.",
  "DomainJoinInfo": "The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. ",
  "ImageArn": "The ARN of the public, private, or shared image to use.",
  "IamRoleArn": "The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) AssumeRole API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the appstream_machine_role credential profile on the instance. For more information, see Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances in the Amazon AppStream 2.0 Administration Guide.",
  "MaxUserDurationInSeconds": "The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. Specify a value between 600 and 360000.",
  "IdleDisconnectTimeoutInSeconds": "The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the DisconnectTimeoutInSeconds time interval begins. Users are notified before they are disconnected due to inactivity. If they try to reconnect to the streaming session before the time interval specified in DisconnectTimeoutInSeconds elapses, they are connected to their previous session. Users are considered idle when they stop providing keyboard or mouse input during their streaming session. File uploads and downloads, audio in, audio out, and pixels changing do not qualify as user activity. If users continue to be idle after the time interval in IdleDisconnectTimeoutInSeconds elapses, they are disconnected. To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.  If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity.  ",
  "Description": "The description to display.",
  "EnableDefaultInternetAccess": "Enables or disables default internet access for the fleet.",
  "DisplayName": "The fleet name to display.",
  "FleetType": "The fleet type.  ALWAYS_ON  Provides users with instant-on access to their apps. You are charged for all running instances in your fleet, even if no users are streaming apps.  ON_DEMAND  Provide users with access to applications after they connect, which takes one to two minutes. You are charged for instance streaming when users are connected and a small hourly fee for instances that are not streaming apps.  "
}
"""
CreateFleet(args) = appstream("CreateFleet", args)

"""
    BatchAssociateUserStack()

Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.

Required Parameters
{
  "UserStackAssociations": "The list of UserStackAssociation objects."
}
"""
BatchAssociateUserStack(args) = appstream("BatchAssociateUserStack", args)

"""
    StopFleet()

Stops the specified fleet.

Required Parameters
{
  "Name": "The name of the fleet."
}
"""
StopFleet(args) = appstream("StopFleet", args)

"""
    DeleteStack()

Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.

Required Parameters
{
  "Name": "The name of the stack."
}
"""
DeleteStack(args) = appstream("DeleteStack", args)

"""
    CreateImageBuilder()

Creates an image builder. An image builder is a virtual machine that is used to create an image. The initial state of the builder is PENDING. When it is ready, the state is RUNNING.

Required Parameters
{
  "InstanceType": "The instance type to use when launching the image builder. The following instance types are available:   stream.standard.medium   stream.standard.large   stream.compute.large   stream.compute.xlarge   stream.compute.2xlarge   stream.compute.4xlarge   stream.compute.8xlarge   stream.memory.large   stream.memory.xlarge   stream.memory.2xlarge   stream.memory.4xlarge   stream.memory.8xlarge   stream.memory.z1d.large   stream.memory.z1d.xlarge   stream.memory.z1d.2xlarge   stream.memory.z1d.3xlarge   stream.memory.z1d.6xlarge   stream.memory.z1d.12xlarge   stream.graphics-design.large   stream.graphics-design.xlarge   stream.graphics-design.2xlarge   stream.graphics-design.4xlarge   stream.graphics-desktop.2xlarge   stream.graphics.g4dn.xlarge   stream.graphics.g4dn.2xlarge   stream.graphics.g4dn.4xlarge   stream.graphics.g4dn.8xlarge   stream.graphics.g4dn.12xlarge   stream.graphics.g4dn.16xlarge   stream.graphics-pro.4xlarge   stream.graphics-pro.8xlarge   stream.graphics-pro.16xlarge  ",
  "Name": "A unique name for the image builder."
}

Optional Parameters
{
  "ImageName": "The name of the image used to create the image builder.",
  "AccessEndpoints": "The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.",
  "Tags": "The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=.  Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters:  _ . : / = +   - @ If you do not specify a value, the value is set to an empty string. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.",
  "VpcConfig": "The VPC configuration for the image builder. You can specify only one subnet.",
  "DomainJoinInfo": "The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. ",
  "ImageArn": "The ARN of the public, private, or shared image to use.",
  "IamRoleArn": "The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) AssumeRole API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the appstream_machine_role credential profile on the instance. For more information, see Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances in the Amazon AppStream 2.0 Administration Guide.",
  "Description": "The description to display.",
  "EnableDefaultInternetAccess": "Enables or disables default internet access for the image builder.",
  "AppstreamAgentVersion": "The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. ",
  "DisplayName": "The image builder name to display."
}
"""
CreateImageBuilder(args) = appstream("CreateImageBuilder", args)

"""
    StartImageBuilder()

Starts the specified image builder.

Required Parameters
{
  "Name": "The name of the image builder."
}

Optional Parameters
{
  "AppstreamAgentVersion": "The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. "
}
"""
StartImageBuilder(args) = appstream("StartImageBuilder", args)

"""
    DeleteUser()

Deletes a user from the user pool.

Required Parameters
{
  "UserName": "The email address of the user.  Users' email addresses are case-sensitive. ",
  "AuthenticationType": "The authentication type for the user. You must specify USERPOOL."
}
"""
DeleteUser(args) = appstream("DeleteUser", args)

"""
    AssociateFleet()

Associates the specified fleet with the specified stack.

Required Parameters
{
  "FleetName": "The name of the fleet. ",
  "StackName": "The name of the stack."
}
"""
AssociateFleet(args) = appstream("AssociateFleet", args)

"""
    UntagResource()

Disassociates one or more specified tags from the specified AppStream 2.0 resource. To list the current tags for your resources, use ListTagsForResource. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "TagKeys": "The tag keys for the tags to disassociate."
}
"""
UntagResource(args) = appstream("UntagResource", args)

"""
    ListAssociatedFleets()

Retrieves the name of the fleet that is associated with the specified stack.

Required Parameters
{
  "StackName": "The name of the stack."
}

Optional Parameters
{
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""
ListAssociatedFleets(args) = appstream("ListAssociatedFleets", args)

"""
    DescribeUsers()

Retrieves a list that describes one or more specified users in the user pool.

Required Parameters
{
  "AuthenticationType": "The authentication type for the users in the user pool to describe. You must specify USERPOOL."
}

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""
DescribeUsers(args) = appstream("DescribeUsers", args)

"""
    ExpireSession()

Immediately stops the specified streaming session.

Required Parameters
{
  "SessionId": "The identifier of the streaming session."
}
"""
ExpireSession(args) = appstream("ExpireSession", args)

"""
    ListTagsForResource()

Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks. For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource."
}
"""
ListTagsForResource(args) = appstream("ListTagsForResource", args)

"""
    DescribeFleets()

Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.

Optional Parameters
{
  "Names": "The names of the fleets to describe.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""

DescribeFleets() = appstream("DescribeFleets")
DescribeFleets(args) = appstream("DescribeFleets", args)

"""
    StartFleet()

Starts the specified fleet.

Required Parameters
{
  "Name": "The name of the fleet."
}
"""
StartFleet(args) = appstream("StartFleet", args)

"""
    ListAssociatedStacks()

Retrieves the name of the stack with which the specified fleet is associated.

Required Parameters
{
  "FleetName": "The name of the fleet."
}

Optional Parameters
{
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""
ListAssociatedStacks(args) = appstream("ListAssociatedStacks", args)

"""
    DescribeUsageReportSubscriptions()

Retrieves a list that describes one or more usage report subscriptions.

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""

DescribeUsageReportSubscriptions() = appstream("DescribeUsageReportSubscriptions")
DescribeUsageReportSubscriptions(args) = appstream("DescribeUsageReportSubscriptions", args)

"""
    DescribeImagePermissions()

Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 

Required Parameters
{
  "Name": "The name of the private image for which to describe permissions. The image must be one that you own. "
}

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.",
  "SharedAwsAccountIds": "The 12-digit identifier of one or more AWS accounts with which the image is shared."
}
"""
DescribeImagePermissions(args) = appstream("DescribeImagePermissions", args)

"""
    DeleteFleet()

Deletes the specified fleet.

Required Parameters
{
  "Name": "The name of the fleet."
}
"""
DeleteFleet(args) = appstream("DeleteFleet", args)

"""
    DescribeUserStackAssociations()

Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:   The stack name   The user name (email address of the user associated with the stack) and the authentication type for the user  

Optional Parameters
{
  "UserName": "The email address of the user who is associated with the stack.  Users' email addresses are case-sensitive. ",
  "MaxResults": "The maximum size of each page of results.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.",
  "StackName": "The name of the stack that is associated with the user.",
  "AuthenticationType": "The authentication type for the user who is associated with the stack. You must specify USERPOOL."
}
"""

DescribeUserStackAssociations() = appstream("DescribeUserStackAssociations")
DescribeUserStackAssociations(args) = appstream("DescribeUserStackAssociations", args)

"""
    DescribeImageBuilders()

Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "Names": "The names of the image builders to describe.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page."
}
"""

DescribeImageBuilders() = appstream("DescribeImageBuilders")
DescribeImageBuilders(args) = appstream("DescribeImageBuilders", args)

"""
    DeleteImageBuilder()

Deletes the specified image builder and releases the capacity.

Required Parameters
{
  "Name": "The name of the image builder."
}
"""
DeleteImageBuilder(args) = appstream("DeleteImageBuilder", args)

"""
    DescribeImages()

Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.

Optional Parameters
{
  "MaxResults": "The maximum size of each page of results.",
  "Names": "The names of the public or private images to describe.",
  "Arns": "The ARNs of the public, private, and shared images to describe.",
  "NextToken": "The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.",
  "Type": "The type of image (public, private, or shared) to describe. "
}
"""

DescribeImages() = appstream("DescribeImages")
DescribeImages(args) = appstream("DescribeImages", args)

"""
    DeleteDirectoryConfig()

Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.

Required Parameters
{
  "DirectoryName": "The name of the directory configuration."
}
"""
DeleteDirectoryConfig(args) = appstream("DeleteDirectoryConfig", args)

"""
    StopImageBuilder()

Stops the specified image builder.

Required Parameters
{
  "Name": "The name of the image builder."
}
"""
StopImageBuilder(args) = appstream("StopImageBuilder", args)

"""
    CreateStack()

Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. 

Required Parameters
{
  "Name": "The name of the stack."
}

Optional Parameters
{
  "FeedbackURL": "The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.",
  "RedirectURL": "The URL that users are redirected to after their streaming session ends.",
  "EmbedHostDomains": "The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. ",
  "AccessEndpoints": "The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.",
  "Tags": "The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=.  If you do not specify a value, the value is set to an empty string. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters:  _ . : / = +   - @ For more information about tags, see Tagging Your Resources in the Amazon AppStream 2.0 Administration Guide.",
  "UserSettings": "The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. ",
  "Description": "The description to display.",
  "DisplayName": "The stack name to display.",
  "ApplicationSettings": "The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.",
  "StorageConnectors": "The storage connectors to enable."
}
"""
CreateStack(args) = appstream("CreateStack", args)

"""
    CreateStreamingURL()

Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. 

Required Parameters
{
  "FleetName": "The name of the fleet.",
  "UserId": "The identifier of the user.",
  "StackName": "The name of the stack."
}

Optional Parameters
{
  "ApplicationId": "The name of the application to launch after the session starts. This is the name that you specified as Name in the Image Assistant.",
  "SessionContext": "The session context. For more information, see Session Context in the Amazon AppStream 2.0 Administration Guide.",
  "Validity": "The time that the streaming URL will be valid, in seconds. Specify a value between 1 and 604800 seconds. The default is 60 seconds."
}
"""
CreateStreamingURL(args) = appstream("CreateStreamingURL", args)

"""
    UpdateStack()

Updates the specified fields for the specified stack.

Required Parameters
{
  "Name": "The name of the stack."
}

Optional Parameters
{
  "EmbedHostDomains": "The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. ",
  "UserSettings": "The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.",
  "AttributesToDelete": "The stack attributes to delete.",
  "RedirectURL": "The URL that users are redirected to after their streaming session ends.",
  "AccessEndpoints": "The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.",
  "DeleteStorageConnectors": "Deletes the storage connectors currently enabled for the stack.",
  "FeedbackURL": "The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.",
  "Description": "The description to display.",
  "DisplayName": "The stack name to display.",
  "ApplicationSettings": "The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.",
  "StorageConnectors": "The storage connectors to enable."
}
"""
UpdateStack(args) = appstream("UpdateStack", args)

"""
    DeleteUsageReportSubscription()

Disables usage report generation.
"""

DeleteUsageReportSubscription() = appstream("DeleteUsageReportSubscription")
DeleteUsageReportSubscription(args) = appstream("DeleteUsageReportSubscription", args)

"""
    DeleteImagePermissions()

Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.

Required Parameters
{
  "SharedAccountId": "The 12-digit identifier of the AWS account for which to delete image permissions.",
  "Name": "The name of the private image."
}
"""
DeleteImagePermissions(args) = appstream("DeleteImagePermissions", args)

"""
    BatchDisassociateUserStack()

Disassociates the specified users from the specified stacks.

Required Parameters
{
  "UserStackAssociations": "The list of UserStackAssociation objects."
}
"""
BatchDisassociateUserStack(args) = appstream("BatchDisassociateUserStack", args)

"""
    DeleteImage()

Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.

Required Parameters
{
  "Name": "The name of the image."
}
"""
DeleteImage(args) = appstream("DeleteImage", args)

"""
    UpdateImagePermissions()

Adds or updates permissions for the specified private image. 

Required Parameters
{
  "SharedAccountId": "The 12-digit identifier of the AWS account for which you want add or update image permissions.",
  "ImagePermissions": "The permissions for the image.",
  "Name": "The name of the private image."
}
"""
UpdateImagePermissions(args) = appstream("UpdateImagePermissions", args)