include("../AWSCorePrototypeServices.jl")
using .Services: directory_service

"""
Removes the specified directory as a publisher to the specified SNS topic.

Required Parameters:
DirectoryId, TopicName
"""
DeregisterEventTopic(args) = directory_service("DeregisterEventTopic", args)

"""
Lists all schema extensions applied to a Microsoft AD Directory.

Required Parameters:
DirectoryId
"""
ListSchemaExtensions(args) = directory_service("ListSchemaExtensions", args)

"""
Obtains the manual snapshot limits for a directory.

Required Parameters:
DirectoryId
"""
GetSnapshotLimits(args) = directory_service("GetSnapshotLimits", args)

"""
Restores a directory using an existing directory snapshot. When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten. This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the DescribeDirectories operation with the directory identifier. When the DirectoryDescription.Stage value changes to Active, the restore operation is complete.

Required Parameters:
SnapshotId
"""
RestoreFromSnapshot(args) = directory_service("RestoreFromSnapshot", args)

"""
Lists the address blocks that you have added to a directory.

Required Parameters:
DirectoryId
"""
ListIpRoutes(args) = directory_service("ListIpRoutes", args)

"""
Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your AWS account.

Required Parameters:
DirectoryId, LogGroupName
"""
CreateLogSubscription(args) = directory_service("CreateLogSubscription", args)

"""
Shares a specified directory (DirectoryId) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region. When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account. The ShareMethod parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (ORGANIZATIONS). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (HANDSHAKE). The ShareNotes parameter is only used when HANDSHAKE is called, which sends a directory sharing request to the directory consumer. 

Required Parameters:
DirectoryId, ShareTarget, ShareMethod
"""
ShareDirectory(args) = directory_service("ShareDirectory", args)

"""
Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.

Required Parameters:
DirectoryId
"""
DisableRadius(args) = directory_service("DisableRadius", args)

"""
Accepts a directory sharing request that was sent from the directory owner account.

Required Parameters:
SharedDirectoryId
"""
AcceptSharedDirectory(args) = directory_service("AcceptSharedDirectory", args)

"""
Deletes from the system the certificate that was registered for a secured LDAP connection.

Required Parameters:
DirectoryId, CertificateId
"""
DeregisterCertificate(args) = directory_service("DeregisterCertificate", args)

"""
Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as http://&lt;alias&gt;.awsapps.com.  After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary. 

Required Parameters:
DirectoryId, Alias
"""
CreateAlias(args) = directory_service("CreateAlias", args)

"""
Updates a conditional forwarder that has been set up for your AWS directory.

Required Parameters:
DirectoryId, RemoteDomainName, DnsIpAddrs
"""
UpdateConditionalForwarder(args) = directory_service("UpdateConditionalForwarder", args)

"""
Obtains information about the directory snapshots that belong to this account. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeSnapshots.NextToken member contains a token that you pass in the next call to DescribeSnapshots to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
"""
DescribeSnapshots() = directory_service("DescribeSnapshots")

"""
Displays information about the certificate registered for a secured LDAP connection.

Required Parameters:
DirectoryId, CertificateId
"""
DescribeCertificate(args) = directory_service("DescribeCertificate", args)

"""
Obtains information about which SNS topics receive status messages from the specified directory. If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.
"""
DescribeEventTopics() = directory_service("DescribeEventTopics")

"""
Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.

Required Parameters:
DirectoryId, RemoteDomainName, DnsIpAddrs
"""
CreateConditionalForwarder(args) = directory_service("CreateConditionalForwarder", args)

"""
Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; Initializing, CreatingSnapshot, and UpdatingSchema.

Required Parameters:
DirectoryId, SchemaExtensionId
"""
CancelSchemaExtension(args) = directory_service("CancelSchemaExtension", args)

"""
Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.

Required Parameters:
DirectoryId, DesiredNumber
"""
UpdateNumberOfDomainControllers(args) = directory_service("UpdateNumberOfDomainControllers", args)

"""
Returns the shared directories in your account. 

Required Parameters:
OwnerDirectoryId
"""
DescribeSharedDirectories(args) = directory_service("DescribeSharedDirectories", args)

"""
Creates a Simple AD directory. For more information, see Simple Active Directory in the AWS Directory Service Admin Guide. Before you call CreateDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.

Required Parameters:
Name, Password, Size
"""
CreateDirectory(args) = directory_service("CreateDirectory", args)

"""
Disables single-sign on for a directory.

Required Parameters:
DirectoryId
"""
DisableSso(args) = directory_service("DisableSso", args)

"""
AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials. This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.

Required Parameters:
DirectoryId, RemoteDomainName, TrustPassword, TrustDirection
"""
CreateTrust(args) = directory_service("CreateTrust", args)

"""
AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships. This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.

Required Parameters:
TrustId
"""
VerifyTrust(args) = directory_service("VerifyTrust", args)

"""
Stops the directory sharing between the directory owner and consumer accounts. 

Required Parameters:
DirectoryId, UnshareTarget
"""
UnshareDirectory(args) = directory_service("UnshareDirectory", args)

"""
Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.

Required Parameters:
DirectoryId, TopicName
"""
RegisterEventTopic(args) = directory_service("RegisterEventTopic", args)

"""
Deletes an AWS Directory Service directory. Before you call DeleteDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the DeleteDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.

Required Parameters:
DirectoryId
"""
DeleteDirectory(args) = directory_service("DeleteDirectory", args)

"""
If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. AddIpRoutes adds this address block. You can also use AddIpRoutes to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.  Before you call AddIpRoutes, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the AddIpRoutes operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.

Required Parameters:
DirectoryId, IpRoutes
"""
AddIpRoutes(args) = directory_service("AddIpRoutes", args)

"""
For the specified directory, lists all the certificates registered for a secured LDAP connection.

Required Parameters:
DirectoryId
"""
ListCertificates(args) = directory_service("ListCertificates", args)

"""
Lists all tags on a directory.

Required Parameters:
ResourceId
"""
ListTagsForResource(args) = directory_service("ListTagsForResource", args)

"""
Obtains directory limit information for the current Region.
"""
GetDirectoryLimits() = directory_service("GetDirectoryLimits")

"""
Lists the active log subscriptions for the AWS account.
"""
ListLogSubscriptions() = directory_service("ListLogSubscriptions")

"""
Applies a schema extension to a Microsoft AD directory.

Required Parameters:
DirectoryId, CreateSnapshotBeforeSchemaExtension, LdifContent, Description
"""
StartSchemaExtension(args) = directory_service("StartSchemaExtension", args)

"""
Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.

Required Parameters:
TrustId
"""
DeleteTrust(args) = directory_service("DeleteTrust", args)

"""
Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.

Required Parameters:
ResourceId, Tags
"""
AddTagsToResource(args) = directory_service("AddTagsToResource", args)

"""
Removes tags from a directory.

Required Parameters:
ResourceId, TagKeys
"""
RemoveTagsFromResource(args) = directory_service("RemoveTagsFromResource", args)

"""
Obtains information about the conditional forwarders for this account. If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.

Required Parameters:
DirectoryId
"""
DescribeConditionalForwarders(args) = directory_service("DescribeConditionalForwarders", args)

"""
Provides information about any domain controllers in your directory.

Required Parameters:
DirectoryId
"""
DescribeDomainControllers(args) = directory_service("DescribeDomainControllers", args)

"""
Describes the status of LDAP security for the specified directory.

Required Parameters:
DirectoryId
"""
DescribeLDAPSSettings(args) = directory_service("DescribeLDAPSSettings", args)

"""
Creates a computer account in the specified directory, and joins the computer to the directory.

Required Parameters:
DirectoryId, ComputerName, Password
"""
CreateComputer(args) = directory_service("CreateComputer", args)

"""
Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.

Required Parameters:
TrustId
"""
UpdateTrust(args) = directory_service("UpdateTrust", args)

"""
Deletes a directory snapshot.

Required Parameters:
SnapshotId
"""
DeleteSnapshot(args) = directory_service("DeleteSnapshot", args)

"""
Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.

Required Parameters:
DirectoryId, RadiusSettings
"""
EnableRadius(args) = directory_service("EnableRadius", args)

"""
Registers a certificate for secured LDAP connection.

Required Parameters:
DirectoryId, CertificateData
"""
RegisterCertificate(args) = directory_service("RegisterCertificate", args)

"""
Rejects a directory sharing request that was sent from the directory owner account.

Required Parameters:
SharedDirectoryId
"""
RejectSharedDirectory(args) = directory_service("RejectSharedDirectory", args)

"""
Activates the switch for the specific directory to always use LDAP secure calls.

Required Parameters:
DirectoryId, Type
"""
EnableLDAPS(args) = directory_service("EnableLDAPS", args)

"""
Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory. You can reset the password for any user in your directory with the following exceptions:   For Simple AD, you cannot reset the password for any user that is a member of either the Domain Admins or Enterprise Admins group except for the administrator user.   For AWS Managed Microsoft AD, you can only reset the password for a user that is in an OU based off of the NetBIOS name that you typed when you created your directory. For example, you cannot reset the password for a user in the AWS Reserved OU. For more information about the OU structure for an AWS Managed Microsoft AD directory, see What Gets Created in the AWS Directory Service Administration Guide.  

Required Parameters:
DirectoryId, UserName, NewPassword
"""
ResetUserPassword(args) = directory_service("ResetUserPassword", args)

"""
Deletes a conditional forwarder that has been set up for your AWS directory.

Required Parameters:
DirectoryId, RemoteDomainName
"""
DeleteConditionalForwarder(args) = directory_service("DeleteConditionalForwarder", args)

"""
Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.  You cannot take snapshots of AD Connector directories. 

Required Parameters:
DirectoryId
"""
CreateSnapshot(args) = directory_service("CreateSnapshot", args)

"""
Enables single sign-on for a directory. Single sign-on allows users in your directory to access certain AWS services from a computer joined to the directory without having to enter their credentials separately.

Required Parameters:
DirectoryId
"""
EnableSso(args) = directory_service("EnableSso", args)

"""
Obtains information about the directories that belong to this account. You can retrieve information about specific directories by passing the directory identifiers in the DirectoryIds parameter. Otherwise, all directories that belong to the current account are returned. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeDirectoriesResult.NextToken member contains a token that you pass in the next call to DescribeDirectories to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
"""
DescribeDirectories() = directory_service("DescribeDirectories")

"""
Deactivates LDAP secure calls for the specified directory.

Required Parameters:
DirectoryId, Type
"""
DisableLDAPS(args) = directory_service("DisableLDAPS", args)

"""
Deletes the specified log subscription.

Required Parameters:
DirectoryId
"""
DeleteLogSubscription(args) = directory_service("DeleteLogSubscription", args)

"""
Creates an AD Connector to connect to an on-premises directory. Before you call ConnectDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the ConnectDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.

Required Parameters:
Name, Password, Size, ConnectSettings
"""
ConnectDirectory(args) = directory_service("ConnectDirectory", args)

"""
Removes IP address blocks from a directory.

Required Parameters:
DirectoryId, CidrIps
"""
RemoveIpRoutes(args) = directory_service("RemoveIpRoutes", args)

"""
Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.

Required Parameters:
DirectoryId, RadiusSettings
"""
UpdateRadius(args) = directory_service("UpdateRadius", args)

"""
Obtains information about the trust relationships for this account. If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
"""
DescribeTrusts() = directory_service("DescribeTrusts")

"""
Creates a Microsoft AD directory in the AWS Cloud. For more information, see AWS Managed Microsoft AD in the AWS Directory Service Admin Guide. Before you call CreateMicrosoftAD, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateMicrosoftAD operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.

Required Parameters:
Name, Password, VpcSettings
"""
CreateMicrosoftAD(args) = directory_service("CreateMicrosoftAD", args)
