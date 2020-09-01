include("../AWSCorePrototypeServices.jl")
using .Services: lightsail

"""
    GetDisk()

Returns information about a specific block storage disk.

Required Parameters
{
  "diskName": "The name of the disk (e.g., my-disk)."
}
"""
GetDisk(args) = lightsail("GetDisk", args)

"""
    GetOperationsForResource()

Gets operations for a specific resource (e.g., an instance or a static IP).

Required Parameters
{
  "resourceName": "The name of the resource for which you are requesting information."
}

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetOperationsForResource request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""
GetOperationsForResource(args) = lightsail("GetOperationsForResource", args)

"""
    GetKeyPair()

Returns information about a specific key pair.

Required Parameters
{
  "keyPairName": "The name of the key pair for which you are requesting information."
}
"""
GetKeyPair(args) = lightsail("GetKeyPair", args)

"""
    AttachDisk()

Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name. The attach disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskName": "The unique Lightsail disk name (e.g., my-disk).",
  "diskPath": "The disk path to expose to the instance (e.g., /dev/xvdf).",
  "instanceName": "The name of the Lightsail instance where you want to utilize the storage disk."
}
"""
AttachDisk(args) = lightsail("AttachDisk", args)

"""
    GetContactMethods()

Returns information about the configured contact methods. Specify a protocol in your request to return information about a specific contact method. A contact method is used to send you notifications about your Amazon Lightsail resources. You can add one email address and one mobile phone number contact method in each AWS Region. However, SMS text messaging is not supported in some AWS Regions, and SMS text messages cannot be sent to some countries/regions. For more information, see Notifications in Amazon Lightsail.

Optional Parameters
{
  "protocols": "The protocols used to send notifications, such as Email, or SMS (text messaging). Specify a protocol in your request to return information about a specific contact method protocol."
}
"""

GetContactMethods() = lightsail("GetContactMethods")
GetContactMethods(args) = lightsail("GetContactMethods", args)

"""
    GetInstanceSnapshots()

Returns all instance snapshots for the user's account.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetInstanceSnapshots request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetInstanceSnapshots() = lightsail("GetInstanceSnapshots")
GetInstanceSnapshots(args) = lightsail("GetInstanceSnapshots", args)

"""
    GetExportSnapshotRecords()

Returns the export snapshot record created as a result of the export snapshot operation. An export snapshot record can be used to create a new Amazon EC2 instance and its related resources with the create cloud formation stack operation.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetExportSnapshotRecords request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetExportSnapshotRecords() = lightsail("GetExportSnapshotRecords")
GetExportSnapshotRecords(args) = lightsail("GetExportSnapshotRecords", args)

"""
    GetRelationalDatabaseBlueprints()

Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes the major engine version of a database. You can use a blueprint ID to create a new database that runs a specific database engine.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabaseBlueprints request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetRelationalDatabaseBlueprints() = lightsail("GetRelationalDatabaseBlueprints")
GetRelationalDatabaseBlueprints(args) = lightsail("GetRelationalDatabaseBlueprints", args)

"""
    ImportKeyPair()

Imports a public SSH key from a specific key pair.

Required Parameters
{
  "keyPairName": "The name of the key pair for which you want to import the public key.",
  "publicKeyBase64": "A base64-encoded public key of the ssh-rsa type."
}
"""
ImportKeyPair(args) = lightsail("ImportKeyPair", args)

"""
    DownloadDefaultKeyPair()

Downloads the default SSH key pair from the user's account.
"""

DownloadDefaultKeyPair() = lightsail("DownloadDefaultKeyPair")
DownloadDefaultKeyPair(args) = lightsail("DownloadDefaultKeyPair", args)

"""
    TestAlarm()

Tests an alarm by displaying a banner on the Amazon Lightsail console. If a notification trigger is configured for the specified alarm, the test also sends a notification to the notification protocol (Email and/or SMS) configured for the alarm. An alarm is used to monitor a single metric for one of your resources. When a metric condition is met, the alarm can notify you by email, SMS text message, and a banner displayed on the Amazon Lightsail console. For more information, see Alarms in Amazon Lightsail.

Required Parameters
{
  "alarmName": "The name of the alarm to test.",
  "state": "The alarm state to test. An alarm has the following possible states that can be tested:    ALARM - The metric is outside of the defined threshold.    INSUFFICIENT_DATA - The alarm has just started, the metric is not available, or not enough data is available for the metric to determine the alarm state.    OK - The metric is within the defined threshold.  "
}
"""
TestAlarm(args) = lightsail("TestAlarm", args)

"""
    SendContactMethodVerification()

Sends a verification request to an email contact method to ensure it's owned by the requester. SMS contact methods don't need to be verified. A contact method is used to send you notifications about your Amazon Lightsail resources. You can add one email address and one mobile phone number contact method in each AWS Region. However, SMS text messaging is not supported in some AWS Regions, and SMS text messages cannot be sent to some countries/regions. For more information, see Notifications in Amazon Lightsail. A verification request is sent to the contact method when you initially create it. Use this action to send another verification request if a previous verification request was deleted, or has expired.  Notifications are not sent to an email contact method until after it is verified, and confirmed as valid. 

Required Parameters
{
  "protocol": "The protocol to verify, such as Email or SMS (text messaging)."
}
"""
SendContactMethodVerification(args) = lightsail("SendContactMethodVerification", args)

"""
    GetRelationalDatabaseLogEvents()

Returns a list of log events for a database in Amazon Lightsail.

Required Parameters
{
  "logStreamName": "The name of the log stream. Use the get relational database log streams operation to get a list of available log streams.",
  "relationalDatabaseName": "The name of your database for which to get log events."
}

Optional Parameters
{
  "startTime": "The start of the time interval from which to get log events. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the start time.  ",
  "startFromHead": "Parameter to specify if the log should start from head or tail. If true is specified, the log event starts from the head of the log. If false is specified, the log event starts from the tail of the log.  For PostgreSQL, the default value of false is the only option available. ",
  "pageToken": "The token to advance to the next or previous page of results from your request. To get a page token, perform an initial GetRelationalDatabaseLogEvents request. If your results are paginated, the response will return a next forward token and/or next backward token that you can specify as the page token in a subsequent request.",
  "endTime": "The end of the time interval from which to get log events. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the end time.  "
}
"""
GetRelationalDatabaseLogEvents(args) = lightsail("GetRelationalDatabaseLogEvents", args)

"""
    StartInstance()

Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.  When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the Lightsail Dev Guide.  The start instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance (a virtual private server) to start."
}
"""
StartInstance(args) = lightsail("StartInstance", args)

"""
    TagResource()

Adds one or more tags to the specified Amazon Lightsail resource. Each resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see the Lightsail Dev Guide. The tag resource operation supports tag-based access control via request tags and resource tags applied to the resource identified by resource name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "tags": "The tag key and optional value.",
  "resourceName": "The name of the resource to which you are adding tags."
}

Optional Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource to which you want to add a tag."
}
"""
TagResource(args) = lightsail("TagResource", args)

"""
    PutInstancePublicPorts()

Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses allowed to connect to the instance through the ports, and the protocol. This action also closes all currently open ports that are not included in the request. Include all of the ports and the protocols you want to open in your PutInstancePublicPortsrequest. Or use the OpenInstancePublicPorts action to open ports without closing currently open ports. The PutInstancePublicPorts action supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance for which to open ports.",
  "portInfos": "An array of objects to describe the ports to open for the specified instance."
}
"""
PutInstancePublicPorts(args) = lightsail("PutInstancePublicPorts", args)

"""
    DeleteLoadBalancerTlsCertificate()

Deletes an SSL/TLS certificate associated with a Lightsail load balancer. The DeleteLoadBalancerTlsCertificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "loadBalancerName": "The load balancer name.",
  "certificateName": "The SSL/TLS certificate name."
}

Optional Parameters
{
  "force": "When true, forces the deletion of an SSL/TLS certificate. There can be two certificates associated with a Lightsail load balancer: the primary and the backup. The force parameter is required when the primary SSL/TLS certificate is in use by an instance attached to the load balancer."
}
"""
DeleteLoadBalancerTlsCertificate(args) = lightsail("DeleteLoadBalancerTlsCertificate", args)

"""
    GetDistributionBundles()

Returns the list bundles that can be applied to you Amazon Lightsail content delivery network (CDN) distributions. A distribution bundle specifies the monthly network transfer quota and monthly cost of your dsitribution.
"""

GetDistributionBundles() = lightsail("GetDistributionBundles")
GetDistributionBundles(args) = lightsail("GetDistributionBundles", args)

"""
    CreateInstancesFromSnapshot()

Creates one or more new instances from a manual or automatic snapshot of an instance. The create instances from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by instance snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "bundleId": "The bundle of specification information for your virtual private server (or instance), including the pricing plan (e.g., micro_1_0).",
  "instanceNames": "The names for your new instances.",
  "availabilityZone": "The Availability Zone where you want to create your instances. Use the following formatting: us-east-2a (case sensitive). You can get a list of Availability Zones by using the get regions operation. Be sure to add the include Availability Zones parameter to your request."
}

Optional Parameters
{
  "useLatestRestorableAutoSnapshot": "A Boolean value to indicate whether to use the latest available automatic snapshot. Constraints:   This parameter cannot be defined together with the restore date parameter. The use latest restorable auto snapshot and restore date parameters are mutually exclusive.   Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "instanceSnapshotName": "The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots. Constraint:   This parameter cannot be defined together with the source instance name parameter. The instance snapshot name and source instance name parameters are mutually exclusive.  ",
  "sourceInstanceName": "The name of the source instance from which the source automatic snapshot was created. Constraints:   This parameter cannot be defined together with the instance snapshot name parameter. The source instance name and instance snapshot name parameters are mutually exclusive.   Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "keyPairName": "The name for your key pair.",
  "restoreDate": "The date of the automatic snapshot to use for the new instance. Use the get auto snapshots operation to identify the dates of the available automatic snapshots. Constraints:   Must be specified in YYYY-MM-DD format.   This parameter cannot be defined together with the use latest restorable auto snapshot parameter. The restore date and use latest restorable auto snapshot parameters are mutually exclusive.   Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "userData": "You can create a launch script that configures a server with additional user data. For example, apt-get -y update.  Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use yum, Debian and Ubuntu use apt-get, and FreeBSD uses pkg. For a complete list, see the Dev Guide. ",
  "attachedDiskMapping": "An object containing information about one or more disk mappings.",
  "addOns": "An array of objects representing the add-ons to enable for the new instance.",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateInstancesFromSnapshot(args) = lightsail("CreateInstancesFromSnapshot", args)

"""
    GetInstanceSnapshot()

Returns information about a specific instance snapshot.

Required Parameters
{
  "instanceSnapshotName": "The name of the snapshot for which you are requesting information."
}
"""
GetInstanceSnapshot(args) = lightsail("GetInstanceSnapshot", args)

"""
    DetachDisk()

Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk. The detach disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskName": "The unique name of the disk you want to detach from your instance (e.g., my-disk)."
}
"""
DetachDisk(args) = lightsail("DetachDisk", args)

"""
    EnableAddOn()

Enables or modifies an add-on for an Amazon Lightsail resource. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "addOnRequest": "An array of strings representing the add-on to enable or modify.",
  "resourceName": "The name of the source resource for which to enable or modify the add-on."
}
"""
EnableAddOn(args) = lightsail("EnableAddOn", args)

"""
    UpdateLoadBalancerAttribute()

Updates the specified attribute for a load balancer. You can only update one attribute at a time. The update load balancer attribute operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "attributeValue": "The value that you want to specify for the attribute name.",
  "loadBalancerName": "The name of the load balancer that you want to modify (e.g., my-load-balancer.",
  "attributeName": "The name of the attribute you want to update. Valid values are below."
}
"""
UpdateLoadBalancerAttribute(args) = lightsail("UpdateLoadBalancerAttribute", args)

"""
    UpdateRelationalDatabase()

Allows the update of one or more attributes of a database in Amazon Lightsail. Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window. The update relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of your database to update."
}

Optional Parameters
{
  "preferredMaintenanceWindow": "The weekly time range during which system maintenance can occur on your database. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Constraints:   Must be in the ddd:hh24:mi-ddd:hh24:mi format.   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.   Must be at least 30 minutes.   Specified in Coordinated Universal Time (UTC).   Example: Tue:17:00-Tue:17:30   ",
  "enableBackupRetention": "When true, enables automated backup retention for your database. Updates are applied during the next maintenance window because this can result in an outage.",
  "disableBackupRetention": "When true, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the create relational database snapshot operation. Updates are applied during the next maintenance window because this can result in an outage.",
  "caCertificateIdentifier": "Indicates the certificate that needs to be associated with the database.",
  "preferredBackupWindow": "The daily time range during which automated backups are created for your database if automated backups are enabled. Constraints:   Must be in the hh24:mi-hh24:mi format. Example: 16:00-16:30    Specified in Coordinated Universal Time (UTC).   Must not conflict with the preferred maintenance window.   Must be at least 30 minutes.  ",
  "applyImmediately": "When true, applies changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage. Default: false ",
  "masterUserPassword": "The password for the master user of your database. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\". Constraints: Must contain 8 to 41 characters.",
  "rotateMasterUserPassword": "When true, the master user password is changed to a new strong password generated by Lightsail. Use the get relational database master user password operation to get the new password.",
  "publiclyAccessible": "Specifies the accessibility options for your database. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database."
}
"""
UpdateRelationalDatabase(args) = lightsail("UpdateRelationalDatabase", args)

"""
    CreateDistribution()

Creates an Amazon Lightsail content delivery network (CDN) distribution. A distribution is a globally distributed network of caching servers that improve the performance of your website or web application hosted on a Lightsail instance. For more information, see Content delivery networks in Amazon Lightsail.

Required Parameters
{
  "bundleId": "The bundle ID to use for the distribution. A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota. Use the GetDistributionBundles action to get a list of distribution bundle IDs that you can specify.",
  "distributionName": "The name for the distribution.",
  "defaultCacheBehavior": "An object that describes the default cache behavior for the distribution.",
  "origin": "An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin."
}

Optional Parameters
{
  "cacheBehaviors": "An array of objects that describe the per-path cache behavior for the distribution.",
  "cacheBehaviorSettings": "An object that describes the cache behavior settings for the distribution.",
  "tags": "The tag keys and optional values to add to the distribution during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateDistribution(args) = lightsail("CreateDistribution", args)

"""
    CreateKeyPair()

Creates an SSH key pair. The create key pair operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "keyPairName": "The name for your new key pair."
}

Optional Parameters
{
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateKeyPair(args) = lightsail("CreateKeyPair", args)

"""
    DeleteLoadBalancer()

Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the load balancer is deleted, you will need to create a new load balancer, create a new certificate, and verify domain ownership again. The delete load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "loadBalancerName": "The name of the load balancer you want to delete."
}
"""
DeleteLoadBalancer(args) = lightsail("DeleteLoadBalancer", args)

"""
    UnpeerVpc()

Attempts to unpeer the Lightsail VPC from the user's default VPC.
"""

UnpeerVpc() = lightsail("UnpeerVpc")
UnpeerVpc(args) = lightsail("UnpeerVpc", args)

"""
    CreateRelationalDatabaseFromSnapshot()

Creates a new database from an existing database snapshot in Amazon Lightsail. You can create a new database from a snapshot in if something goes wrong with your original database, or to change it to a different plan, such as a high availability or standard plan. The create relational database from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by relationalDatabaseSnapshotName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name to use for your new database. Constraints:   Must contain from 2 to 255 alphanumeric characters, or hyphens.   The first and last character must be a letter or number.  "
}

Optional Parameters
{
  "publiclyAccessible": "Specifies the accessibility options for your new database. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.",
  "useLatestRestorableTime": "Specifies whether your database is restored from the latest backup time. A value of true restores from the latest backup time.  Default: false  Constraints: Cannot be specified if the restore time parameter is provided.",
  "relationalDatabaseBundleId": "The bundle ID for your new database. A bundle describes the performance specifications for your database. You can get a list of database bundle IDs by using the get relational database bundles operation. When creating a new database from a snapshot, you cannot choose a bundle that is smaller than the bundle of the source database.",
  "sourceRelationalDatabaseName": "The name of the source database.",
  "relationalDatabaseSnapshotName": "The name of the database snapshot from which to create your new database.",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created.",
  "restoreTime": "The date and time to restore your database from. Constraints:   Must be before the latest restorable time for the database.   Cannot be specified if the use latest restorable time parameter is true.   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the restore time.  ",
  "availabilityZone": "The Availability Zone in which to create your new database. Use the us-east-2a case-sensitive format. You can get a list of Availability Zones by using the get regions operation. Be sure to add the include relational database Availability Zones parameter to your request."
}
"""
CreateRelationalDatabaseFromSnapshot(args) = lightsail("CreateRelationalDatabaseFromSnapshot", args)

"""
    CreateLoadBalancerTlsCertificate()

Creates a Lightsail load balancer TLS certificate. TLS is just an updated, more secure version of Secure Socket Layer (SSL). The CreateLoadBalancerTlsCertificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "certificateDomainName": "The domain name (e.g., example.com) for your SSL/TLS certificate.",
  "loadBalancerName": "The load balancer name where you want to create the SSL/TLS certificate.",
  "certificateName": "The SSL/TLS certificate name. You can have up to 10 certificates in your account at one time. Each Lightsail load balancer can have up to 2 certificates associated with it at one time. There is also an overall limit to the number of certificates that can be issue in a 365-day period. For more information, see Limits."
}

Optional Parameters
{
  "certificateAlternativeNames": "An array of strings listing alternative domains and subdomains for your SSL/TLS certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9 alternative names (in addition to the 1 primary domain). We do not support wildcards (e.g., *.example.com).",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateLoadBalancerTlsCertificate(args) = lightsail("CreateLoadBalancerTlsCertificate", args)

"""
    CreateContactMethod()

Creates an email or SMS text message contact method. A contact method is used to send you notifications about your Amazon Lightsail resources. You can add one email address and one mobile phone number contact method in each AWS Region. However, SMS text messaging is not supported in some AWS Regions, and SMS text messages cannot be sent to some countries/regions. For more information, see Notifications in Amazon Lightsail.

Required Parameters
{
  "contactEndpoint": "The destination of the contact method, such as an email address or a mobile phone number. Use the E.164 format when specifying a mobile phone number. E.164 is a standard for the phone number structure used for international telecommunication. Phone numbers that follow this format can have a maximum of 15 digits, and they are prefixed with the plus character (+) and the country code. For example, a U.S. phone number in E.164 format would be specified as +1XXX5550100. For more information, see E.164 on Wikipedia.",
  "protocol": "The protocol of the contact method, such as Email or SMS (text messaging). The SMS protocol is supported only in the following AWS Regions.   US East (N. Virginia) (us-east-1)   US West (Oregon) (us-west-2)   Europe (Ireland) (eu-west-1)   Asia Pacific (Tokyo) (ap-northeast-1)   Asia Pacific (Singapore) (ap-southeast-1)   Asia Pacific (Sydney) (ap-southeast-2)   For a list of countries/regions where SMS text messages can be sent, and the latest AWS Regions where SMS text messaging is supported, see Supported Regions and Countries in the Amazon SNS Developer Guide. For more information about notifications in Amazon Lightsail, see Notifications in Amazon Lightsail."
}
"""
CreateContactMethod(args) = lightsail("CreateContactMethod", args)

"""
    GetOperation()

Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.

Required Parameters
{
  "operationId": "A GUID used to identify the operation."
}
"""
GetOperation(args) = lightsail("GetOperation", args)

"""
    GetStaticIp()

Returns information about a specific static IP.

Required Parameters
{
  "staticIpName": "The name of the static IP in Lightsail."
}
"""
GetStaticIp(args) = lightsail("GetStaticIp", args)

"""
    GetInstancePortStates()

Returns the firewall port states for a specific Amazon Lightsail instance, the IP addresses allowed to connect to the instance through the ports, and the protocol.

Required Parameters
{
  "instanceName": "The name of the instance for which to return firewall port states."
}
"""
GetInstancePortStates(args) = lightsail("GetInstancePortStates", args)

"""
    CloseInstancePublicPorts()

Closes ports for a specific Amazon Lightsail instance. The CloseInstancePublicPorts action supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance for which to close ports.",
  "portInfo": "An object to describe the ports to close for the specified instance."
}
"""
CloseInstancePublicPorts(args) = lightsail("CloseInstancePublicPorts", args)

"""
    DeleteRelationalDatabaseSnapshot()

Deletes a database snapshot in Amazon Lightsail. The delete relational database snapshot operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseSnapshotName": "The name of the database snapshot that you are deleting."
}
"""
DeleteRelationalDatabaseSnapshot(args) = lightsail("DeleteRelationalDatabaseSnapshot", args)

"""
    ReleaseStaticIp()

Deletes a specific static IP from your account.

Required Parameters
{
  "staticIpName": "The name of the static IP to delete."
}
"""
ReleaseStaticIp(args) = lightsail("ReleaseStaticIp", args)

"""
    CreateRelationalDatabaseSnapshot()

Creates a snapshot of your database in Amazon Lightsail. You can use snapshots for backups, to make copies of a database, and to save data before deleting a database. The create relational database snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of the database on which to base your new snapshot.",
  "relationalDatabaseSnapshotName": "The name for your new database snapshot. Constraints:   Must contain from 2 to 255 alphanumeric characters, or hyphens.   The first and last character must be a letter or number.  "
}

Optional Parameters
{
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateRelationalDatabaseSnapshot(args) = lightsail("CreateRelationalDatabaseSnapshot", args)

"""
    GetDistributionLatestCacheReset()

Returns the timestamp and status of the last cache reset of a specific Amazon Lightsail content delivery network (CDN) distribution.

Optional Parameters
{
  "distributionName": "The name of the distribution for which to return the timestamp of the last cache reset. Use the GetDistributions action to get a list of distribution names that you can specify. When omitted, the response includes the latest cache reset timestamp of all your distributions."
}
"""

GetDistributionLatestCacheReset() = lightsail("GetDistributionLatestCacheReset")
GetDistributionLatestCacheReset(args) = lightsail("GetDistributionLatestCacheReset", args)

"""
    GetLoadBalancers()

Returns information about all load balancers in an account.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetLoadBalancers request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetLoadBalancers() = lightsail("GetLoadBalancers")
GetLoadBalancers(args) = lightsail("GetLoadBalancers", args)

"""
    DeleteDiskSnapshot()

Deletes the specified disk snapshot. When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk. The delete disk snapshot operation supports tag-based access control via resource tags applied to the resource identified by disk snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskSnapshotName": "The name of the disk snapshot you want to delete (e.g., my-disk-snapshot)."
}
"""
DeleteDiskSnapshot(args) = lightsail("DeleteDiskSnapshot", args)

"""
    RebootInstance()

Restarts a specific instance. The reboot instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance to reboot."
}
"""
RebootInstance(args) = lightsail("RebootInstance", args)

"""
    GetCertificates()

Returns information about one or more Amazon Lightsail SSL/TLS certificates.  To get a summary of a certificate, ommit includeCertificateDetails from your request. The response will include only the certificate Amazon Resource Name (ARN), certificate name, domain name, and tags. 

Optional Parameters
{
  "includeCertificateDetails": "Indicates whether to include detailed information about the certificates in the response. When omitted, the response includes only the certificate names, Amazon Resource Names (ARNs), domain names, and tags.",
  "certificateName": "The name for the certificate for which to return information. When omitted, the response includes all of your certificates in the AWS region where the request is made.",
  "certificateStatuses": "The status of the certificates for which to return information. For example, specify ISSUED to return only certificates with an ISSUED status. When omitted, the response includes all of your certificates in the AWS region where the request is made, regardless of their current status."
}
"""

GetCertificates() = lightsail("GetCertificates")
GetCertificates(args) = lightsail("GetCertificates", args)

"""
    UpdateRelationalDatabaseParameters()

Allows the update of one or more parameters of a database in Amazon Lightsail. Parameter updates don't cause outages; therefore, their application is not subject to the preferred maintenance window. However, there are two ways in which parameter updates are applied: dynamic or pending-reboot. Parameters marked with a dynamic apply type are applied immediately. Parameters marked with a pending-reboot apply type are applied only after the database is rebooted using the reboot relational database operation. The update relational database parameters operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "parameters": "The database parameters to update.",
  "relationalDatabaseName": "The name of your database for which to update parameters."
}
"""
UpdateRelationalDatabaseParameters(args) = lightsail("UpdateRelationalDatabaseParameters", args)

"""
    UntagResource()

Deletes the specified set of tag keys and their values from the specified Amazon Lightsail resource. The untag resource operation supports tag-based access control via request tags and resource tags applied to the resource identified by resource name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "tagKeys": "The tag keys to delete from the specified resource.",
  "resourceName": "The name of the resource from which you are removing a tag."
}

Optional Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource from which you want to remove a tag."
}
"""
UntagResource(args) = lightsail("UntagResource", args)

"""
    GetRelationalDatabaseMasterUserPassword()

Returns the current, previous, or pending versions of the master user password for a Lightsail database. The GetRelationalDatabaseMasterUserPassword operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName.

Required Parameters
{
  "relationalDatabaseName": "The name of your database for which to get the master user password."
}

Optional Parameters
{
  "passwordVersion": "The password version to return. Specifying CURRENT or PREVIOUS returns the current or previous passwords respectively. Specifying PENDING returns the newest version of the password that will rotate to CURRENT. After the PENDING password rotates to CURRENT, the PENDING password is no longer available. Default: CURRENT "
}
"""
GetRelationalDatabaseMasterUserPassword(args) = lightsail("GetRelationalDatabaseMasterUserPassword", args)

"""
    DeleteDisk()

Deletes the specified block storage disk. The disk must be in the available state (not attached to a Lightsail instance).  The disk may remain in the deleting state for several minutes.  The delete disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskName": "The unique name of the disk you want to delete (e.g., my-disk)."
}

Optional Parameters
{
  "forceDeleteAddOns": "A Boolean value to indicate whether to delete the enabled add-ons for the disk."
}
"""
DeleteDisk(args) = lightsail("DeleteDisk", args)

"""
    GetInstanceState()

Returns the state of a specific instance. Works on one instance at a time.

Required Parameters
{
  "instanceName": "The name of the instance to get state information about."
}
"""
GetInstanceState(args) = lightsail("GetInstanceState", args)

"""
    CreateLoadBalancer()

Creates a Lightsail load balancer. To learn more about deciding whether to load balance your application, see Configure your Lightsail instances for load balancing. You can create up to 5 load balancers per AWS Region in your account. When you create a load balancer, you can specify a unique name and port settings. To change additional load balancer settings, use the UpdateLoadBalancerAttribute operation. The create load balancer operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instancePort": "The instance port where you're creating your load balancer.",
  "loadBalancerName": "The name of your load balancer."
}

Optional Parameters
{
  "certificateDomainName": "The domain name with which your certificate is associated (e.g., example.com). If you specify certificateDomainName, then certificateName is required (and vice-versa).",
  "certificateName": "The name of the SSL/TLS certificate. If you specify certificateName, then certificateDomainName is required (and vice-versa).",
  "certificateAlternativeNames": "The optional alternative domains and subdomains to use with your SSL/TLS certificate (e.g., www.example.com, example.com, m.example.com, blog.example.com).",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created.",
  "healthCheckPath": "The path you provided to perform the load balancer health check. If you didn't specify a health check path, Lightsail uses the root path of your website (e.g., \"/\"). You may want to specify a custom health check path other than the root of your application if your home page loads slowly or has a lot of media or scripting on it."
}
"""
CreateLoadBalancer(args) = lightsail("CreateLoadBalancer", args)

"""
    GetRelationalDatabaseSnapshot()

Returns information about a specific database snapshot in Amazon Lightsail.

Required Parameters
{
  "relationalDatabaseSnapshotName": "The name of the database snapshot for which to get information."
}
"""
GetRelationalDatabaseSnapshot(args) = lightsail("GetRelationalDatabaseSnapshot", args)

"""
    CreateCloudFormationStack()

Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported Amazon Lightsail snapshot. This operation results in a CloudFormation stack record that can be used to track the AWS CloudFormation stack created. Use the get cloud formation stack records operation to get a list of the CloudFormation stacks created.  Wait until after your new Amazon EC2 instance is created before running the create cloud formation stack operation again with the same export snapshot record. 

Required Parameters
{
  "instances": "An array of parameters that will be used to create the new Amazon EC2 instance. You can only pass one instance entry at a time in this array. You will get an invalid parameter error if you pass more than one instance entry in this array."
}
"""
CreateCloudFormationStack(args) = lightsail("CreateCloudFormationStack", args)

"""
    CreateDomainEntry()

Creates one of the following entry records associated with the domain: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT). The create domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "domainEntry": "An array of key-value pairs containing information about the domain entry request.",
  "domainName": "The domain name (e.g., example.com) for which you want to create the domain entry."
}
"""
CreateDomainEntry(args) = lightsail("CreateDomainEntry", args)

"""
    GetDiskSnapshot()

Returns information about a specific block storage disk snapshot.

Required Parameters
{
  "diskSnapshotName": "The name of the disk snapshot (e.g., my-disk-snapshot)."
}
"""
GetDiskSnapshot(args) = lightsail("GetDiskSnapshot", args)

"""
    DeleteInstanceSnapshot()

Deletes a specific snapshot of a virtual private server (or instance). The delete instance snapshot operation supports tag-based access control via resource tags applied to the resource identified by instance snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceSnapshotName": "The name of the snapshot to delete."
}
"""
DeleteInstanceSnapshot(args) = lightsail("DeleteInstanceSnapshot", args)

"""
    CreateCertificate()

Creates an SSL/TLS certificate for a Amazon Lightsail content delivery network (CDN) distribution. After the certificate is created, use the AttachCertificateToDistribution action to attach the certificate to your distribution.  Only certificates created in the us-east-1 AWS Region can be attached to Lightsail distributions. Lightsail distributions are global resources that can reference an origin in any AWS Region, and distribute its content globally. However, all distributions are located in the us-east-1 Region. 

Required Parameters
{
  "certificateName": "The name for the certificate.",
  "domainName": "The domain name (e.g., example.com) for the certificate."
}

Optional Parameters
{
  "subjectAlternativeNames": "An array of strings that specify the alternate domains (e.g., example2.com) and subdomains (e.g., blog.example.com) for the certificate. You can specify a maximum of nine alternate domains (in addition to the primary domain name). Wildcard domain entries (e.g., *.example.com) are not supported.",
  "tags": "The tag keys and optional values to add to the certificate during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateCertificate(args) = lightsail("CreateCertificate", args)

"""
    GetStaticIps()

Returns information about all static IPs in the user's account.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetStaticIps request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetStaticIps() = lightsail("GetStaticIps")
GetStaticIps(args) = lightsail("GetStaticIps", args)

"""
    GetRegions()

Returns a list of all valid regions for Amazon Lightsail. Use the include availability zones parameter to also return the Availability Zones in a region.

Optional Parameters
{
  "includeAvailabilityZones": "A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., us-east-2a.",
  "includeRelationalDatabaseAvailabilityZones": "&gt;A Boolean value indicating whether to also include Availability Zones for databases in your get regions request. Availability Zones are indicated with a letter (e.g., us-east-2a)."
}
"""

GetRegions() = lightsail("GetRegions")
GetRegions(args) = lightsail("GetRegions", args)

"""
    GetInstances()

Returns information about all Amazon Lightsail virtual private servers, or instances.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetInstances request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetInstances() = lightsail("GetInstances")
GetInstances(args) = lightsail("GetInstances", args)

"""
    GetBundles()

Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or instance).

Optional Parameters
{
  "includeInactive": "A Boolean value that indicates whether to include inactive bundle results in your request.",
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetBundles request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetBundles() = lightsail("GetBundles")
GetBundles(args) = lightsail("GetBundles", args)

"""
    GetLoadBalancer()

Returns information about the specified Lightsail load balancer.

Required Parameters
{
  "loadBalancerName": "The name of the load balancer."
}
"""
GetLoadBalancer(args) = lightsail("GetLoadBalancer", args)

"""
    CreateDomain()

Creates a domain resource for the specified domain (e.g., example.com). The create domain operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "domainName": "The domain name to manage (e.g., example.com).  You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain. "
}

Optional Parameters
{
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateDomain(args) = lightsail("CreateDomain", args)

"""
    GetAlarms()

Returns information about the configured alarms. Specify an alarm name in your request to return information about a specific alarm, or specify a monitored resource name to return information about all alarms for a specific resource. An alarm is used to monitor a single metric for one of your resources. When a metric condition is met, the alarm can notify you by email, SMS text message, and a banner displayed on the Amazon Lightsail console. For more information, see Alarms in Amazon Lightsail.

Optional Parameters
{
  "monitoredResourceName": "The name of the Lightsail resource being monitored by the alarm. Specify a monitored resource name to return information about all alarms for a specific resource.",
  "alarmName": "The name of the alarm. Specify an alarm name to return information about a specific alarm.",
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetAlarms request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetAlarms() = lightsail("GetAlarms")
GetAlarms(args) = lightsail("GetAlarms", args)

"""
    UpdateDomainEntry()

Updates a domain recordset after it is created. The update domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "domainEntry": "An array of key-value pairs containing information about the domain entry.",
  "domainName": "The name of the domain recordset to update."
}
"""
UpdateDomainEntry(args) = lightsail("UpdateDomainEntry", args)

"""
    DeleteCertificate()

Deletes an SSL/TLS certificate for your Amazon Lightsail content delivery network (CDN) distribution. Certificates that are currently attached to a distribution cannot be deleted. Use the DetachCertificateFromDistribution action to detach a certificate from a distribution.

Required Parameters
{
  "certificateName": "The name of the certificate to delete. Use the GetCertificates action to get a list of certificate names that you can specify."
}
"""
DeleteCertificate(args) = lightsail("DeleteCertificate", args)

"""
    GetDistributions()

Returns information about one or more of your Amazon Lightsail content delivery network (CDN) distributions.

Optional Parameters
{
  "distributionName": "The name of the distribution for which to return information. Use the GetDistributions action to get a list of distribution names that you can specify. When omitted, the response includes all of your distributions in the AWS Region where the request is made.",
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetDistributions request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetDistributions() = lightsail("GetDistributions")
GetDistributions(args) = lightsail("GetDistributions", args)

"""
    DetachCertificateFromDistribution()

Detaches an SSL/TLS certificate from your Amazon Lightsail content delivery network (CDN) distribution. After the certificate is detached, your distribution stops accepting traffic for all of the domains that are associated with the certificate.

Required Parameters
{
  "distributionName": "The name of the distribution from which to detach the certificate. Use the GetDistributions action to get a list of distribution names that you can specify."
}
"""
DetachCertificateFromDistribution(args) = lightsail("DetachCertificateFromDistribution", args)

"""
    GetRelationalDatabaseEvents()

Returns a list of events for a specific database in Amazon Lightsail.

Required Parameters
{
  "relationalDatabaseName": "The name of the database from which to get events."
}

Optional Parameters
{
  "durationInMinutes": "The number of minutes in the past from which to retrieve events. For example, to get all events from the past 2 hours, enter 120. Default: 60  The minimum is 1 and the maximum is 14 days (20160 minutes).",
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabaseEvents request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""
GetRelationalDatabaseEvents(args) = lightsail("GetRelationalDatabaseEvents", args)

"""
    DetachStaticIp()

Detaches a static IP from the Amazon Lightsail instance to which it is attached.

Required Parameters
{
  "staticIpName": "The name of the static IP to detach from the instance."
}
"""
DetachStaticIp(args) = lightsail("DetachStaticIp", args)

"""
    DeleteRelationalDatabase()

Deletes a database in Amazon Lightsail. The delete relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of the database that you are deleting."
}

Optional Parameters
{
  "skipFinalSnapshot": "Determines whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false. Default: false ",
  "finalRelationalDatabaseSnapshotName": "The name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.  Specifying this parameter and also specifying the skip final snapshot parameter to true results in an error.  Constraints:   Must contain from 2 to 255 alphanumeric characters, or hyphens.   The first and last character must be a letter or number.  "
}
"""
DeleteRelationalDatabase(args) = lightsail("DeleteRelationalDatabase", args)

"""
    AttachInstancesToLoadBalancer()

Attaches one or more Lightsail instances to a load balancer. After some time, the instances are attached to the load balancer and the health check status is available. The attach instances to load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceNames": "An array of strings representing the instance name(s) you want to attach to your load balancer. An instance must be running before you can attach it to your load balancer. There are no additional limits on the number of instances you can attach to your load balancer, aside from the limit of Lightsail instances you can create in your account (20).",
  "loadBalancerName": "The name of the load balancer."
}
"""
AttachInstancesToLoadBalancer(args) = lightsail("AttachInstancesToLoadBalancer", args)

"""
    GetRelationalDatabaseMetricData()

Returns the data points of the specified metric for a database in Amazon Lightsail. Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.

Required Parameters
{
  "startTime": "The start of the time interval from which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the start time.  ",
  "statistics": "The statistic for the metric. The following statistics are available:    Minimum - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.    Maximum - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.    Sum - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.    Average - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.    SampleCount - The count, or number, of data points used for the statistical calculation.  ",
  "metricName": "The metric for which you want to return information. Valid relational database metric names are listed below, along with the most useful statistics to include in your request, and the published unit value. All relational database metric data is available in 1-minute (60 seconds) granularity.     CPUUtilization  - The percentage of CPU utilization currently in use on the database.  Statistics: The most useful statistics are Maximum and Average.  Unit: The published unit is Percent.     DatabaseConnections  - The number of database connections in use.  Statistics: The most useful statistics are Maximum and Sum.  Unit: The published unit is Count.     DiskQueueDepth  - The number of outstanding IOs (read/write requests) that are waiting to access the disk.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.     FreeStorageSpace  - The amount of available storage space.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Bytes.     NetworkReceiveThroughput  - The incoming (Receive) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.  Statistics: The most useful statistic is Average.  Unit: The published unit is Bytes/Second.     NetworkTransmitThroughput  - The outgoing (Transmit) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.  Statistics: The most useful statistic is Average.  Unit: The published unit is Bytes/Second.  ",
  "relationalDatabaseName": "The name of your database from which to get metric data.",
  "period": "The granularity, in seconds, of the returned data points. All relational database metric data is available in 1-minute (60 seconds) granularity.",
  "unit": "The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units with each available metric, see the metricName parameter.",
  "endTime": "The end of the time interval from which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the end time.  "
}
"""
GetRelationalDatabaseMetricData(args) = lightsail("GetRelationalDatabaseMetricData", args)

"""
    ResetDistributionCache()

Deletes currently cached content from your Amazon Lightsail content delivery network (CDN) distribution. After resetting the cache, the next time a content request is made, your distribution pulls, serves, and caches it from the origin.

Optional Parameters
{
  "distributionName": "The name of the distribution for which to reset cache. Use the GetDistributions action to get a list of distribution names that you can specify."
}
"""

ResetDistributionCache() = lightsail("ResetDistributionCache")
ResetDistributionCache(args) = lightsail("ResetDistributionCache", args)

"""
    GetBlueprints()

Returns the list of available instance images, or blueprints. You can use a blueprint to create a new instance already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.  Use active blueprints when creating new instances. Inactive blueprints are listed to support customers with existing instances and are not necessarily available to create new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. 

Optional Parameters
{
  "includeInactive": "A Boolean value indicating whether to include inactive results in your request.",
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetBlueprints request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetBlueprints() = lightsail("GetBlueprints")
GetBlueprints(args) = lightsail("GetBlueprints", args)

"""
    GetRelationalDatabaseBundles()

Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database. You can use a bundle ID to create a new database with explicit performance specifications.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabaseBundles request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetRelationalDatabaseBundles() = lightsail("GetRelationalDatabaseBundles")
GetRelationalDatabaseBundles(args) = lightsail("GetRelationalDatabaseBundles", args)

"""
    IsVpcPeered()

Returns a Boolean value indicating whether your Lightsail VPC is peered.
"""

IsVpcPeered() = lightsail("IsVpcPeered")
IsVpcPeered(args) = lightsail("IsVpcPeered", args)

"""
    GetOperations()

Returns information about all operations. Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to GetOperations use the maximum (last) statusChangedAt value from the previous request.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetOperations request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetOperations() = lightsail("GetOperations")
GetOperations(args) = lightsail("GetOperations", args)

"""
    AttachStaticIp()

Attaches a static IP address to a specific Amazon Lightsail instance.

Required Parameters
{
  "staticIpName": "The name of the static IP.",
  "instanceName": "The instance name to which you want to attach the static IP address."
}
"""
AttachStaticIp(args) = lightsail("AttachStaticIp", args)

"""
    DetachInstancesFromLoadBalancer()

Detaches the specified instances from a Lightsail load balancer. This operation waits until the instances are no longer needed before they are detached from the load balancer. The detach instances from load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceNames": "An array of strings containing the names of the instances you want to detach from the load balancer.",
  "loadBalancerName": "The name of the Lightsail load balancer."
}
"""
DetachInstancesFromLoadBalancer(args) = lightsail("DetachInstancesFromLoadBalancer", args)

"""
    GetInstance()

Returns information about a specific Amazon Lightsail instance, which is a virtual private server.

Required Parameters
{
  "instanceName": "The name of the instance."
}
"""
GetInstance(args) = lightsail("GetInstance", args)

"""
    DeleteDistribution()

Deletes your Amazon Lightsail content delivery network (CDN) distribution.

Optional Parameters
{
  "distributionName": "The name of the distribution to delete. Use the GetDistributions action to get a list of distribution names that you can specify."
}
"""

DeleteDistribution() = lightsail("DeleteDistribution")
DeleteDistribution(args) = lightsail("DeleteDistribution", args)

"""
    GetLoadBalancerTlsCertificates()

Returns information about the TLS certificates that are associated with the specified Lightsail load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.

Required Parameters
{
  "loadBalancerName": "The name of the load balancer you associated with your SSL/TLS certificate."
}
"""
GetLoadBalancerTlsCertificates(args) = lightsail("GetLoadBalancerTlsCertificates", args)

"""
    DeleteAlarm()

Deletes an alarm. An alarm is used to monitor a single metric for one of your resources. When a metric condition is met, the alarm can notify you by email, SMS text message, and a banner displayed on the Amazon Lightsail console. For more information, see Alarms in Amazon Lightsail.

Required Parameters
{
  "alarmName": "The name of the alarm to delete."
}
"""
DeleteAlarm(args) = lightsail("DeleteAlarm", args)

"""
    AttachCertificateToDistribution()

Attaches an SSL/TLS certificate to your Amazon Lightsail content delivery network (CDN) distribution. After the certificate is attached, your distribution accepts HTTPS traffic for all of the domains that are associated with the certificate. Use the CreateCertificate action to create a certificate that you can attach to your distribution.  Only certificates created in the us-east-1 AWS Region can be attached to Lightsail distributions. Lightsail distributions are global resources that can reference an origin in any AWS Region, and distribute its content globally. However, all distributions are located in the us-east-1 Region. 

Required Parameters
{
  "certificateName": "The name of the certificate to attach to a distribution. Only certificates with a status of ISSUED can be attached to a distribution. Use the GetCertificates action to get a list of certificate names that you can specify.  This is the name of the certificate resource type and is used only to reference the certificate in other API actions. It can be different than the domain name of the certificate. For example, your certificate name might be WordPress-Blog-Certificate and the domain name of the certificate might be example.com. ",
  "distributionName": "The name of the distribution that the certificate will be attached to. Use the GetDistributions action to get a list of distribution names that you can specify."
}
"""
AttachCertificateToDistribution(args) = lightsail("AttachCertificateToDistribution", args)

"""
    DeleteDomain()

Deletes the specified domain recordset and all of its domain records. The delete domain operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "domainName": "The specific domain name to delete."
}
"""
DeleteDomain(args) = lightsail("DeleteDomain", args)

"""
    GetKeyPairs()

Returns information about all key pairs in the user's account.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetKeyPairs request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetKeyPairs() = lightsail("GetKeyPairs")
GetKeyPairs(args) = lightsail("GetKeyPairs", args)

"""
    GetAutoSnapshots()

Returns the available automatic snapshots for an instance or disk. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "resourceName": "The name of the source instance or disk from which to get automatic snapshot information."
}
"""
GetAutoSnapshots(args) = lightsail("GetAutoSnapshots", args)

"""
    GetRelationalDatabaseSnapshots()

Returns information about all of your database snapshots in Amazon Lightsail.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabaseSnapshots request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetRelationalDatabaseSnapshots() = lightsail("GetRelationalDatabaseSnapshots")
GetRelationalDatabaseSnapshots(args) = lightsail("GetRelationalDatabaseSnapshots", args)

"""
    DeleteKeyPair()

Deletes a specific SSH key pair. The delete key pair operation supports tag-based access control via resource tags applied to the resource identified by key pair name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "keyPairName": "The name of the key pair to delete."
}
"""
DeleteKeyPair(args) = lightsail("DeleteKeyPair", args)

"""
    GetRelationalDatabases()

Returns information about all of your databases in Amazon Lightsail.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabases request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetRelationalDatabases() = lightsail("GetRelationalDatabases")
GetRelationalDatabases(args) = lightsail("GetRelationalDatabases", args)

"""
    AllocateStaticIp()

Allocates a static IP address.

Required Parameters
{
  "staticIpName": "The name of the static IP address."
}
"""
AllocateStaticIp(args) = lightsail("AllocateStaticIp", args)

"""
    CreateInstances()

Creates one or more Amazon Lightsail instances. The create instances operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "blueprintId": "The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0). Use the get blueprints operation to return a list of available images (or blueprints).  Use active blueprints when creating new instances. Inactive blueprints are listed to support customers with existing instances and are not necessarily available to create new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. ",
  "instanceNames": "The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: [\"MyFirstInstance\",\"MySecondInstance\"] ",
  "bundleId": "The bundle of specification information for your virtual private server (or instance), including the pricing plan (e.g., micro_1_0).",
  "availabilityZone": "The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). You can get a list of Availability Zones by using the get regions operation. Be sure to add the include Availability Zones parameter to your request."
}

Optional Parameters
{
  "keyPairName": "The name of your key pair.",
  "customImageName": "(Deprecated) The name for your custom image.  In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated. ",
  "userData": "A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.  Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use yum, Debian and Ubuntu use apt-get, and FreeBSD uses pkg. For a complete list, see the Dev Guide. ",
  "addOns": "An array of objects representing the add-ons to enable for the new instance.",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateInstances(args) = lightsail("CreateInstances", args)

"""
    PeerVpc()

Tries to peer the Lightsail VPC with the user's default VPC.
"""

PeerVpc() = lightsail("PeerVpc")
PeerVpc(args) = lightsail("PeerVpc", args)

"""
    GetRelationalDatabase()

Returns information about a specific database in Amazon Lightsail.

Required Parameters
{
  "relationalDatabaseName": "The name of the database that you are looking up."
}
"""
GetRelationalDatabase(args) = lightsail("GetRelationalDatabase", args)

"""
    StopInstance()

Stops a specific Amazon Lightsail instance that is currently running.  When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the Lightsail Dev Guide.  The stop instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance (a virtual private server) to stop."
}

Optional Parameters
{
  "force": "When set to True, forces a Lightsail instance that is stuck in a stopping state to stop.  Only use the force parameter if your instance is stuck in the stopping state. In any other state, your instance should stop normally without adding this parameter to your API request. "
}
"""
StopInstance(args) = lightsail("StopInstance", args)

"""
    DeleteInstance()

Deletes an Amazon Lightsail instance. The delete instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance to delete."
}

Optional Parameters
{
  "forceDeleteAddOns": "A Boolean value to indicate whether to delete the enabled add-ons for the disk."
}
"""
DeleteInstance(args) = lightsail("DeleteInstance", args)

"""
    DeleteKnownHostKeys()

Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or RDP clients to authenticate an instance. This operation enables the Lightsail browser-based SSH or RDP clients to connect to the instance after a host key mismatch.  Perform this operation only if you were expecting the host key or certificate mismatch or if you are familiar with the new host key or certificate on the instance. For more information, see Troubleshooting connection issues when using the Amazon Lightsail browser-based SSH or RDP client. 

Required Parameters
{
  "instanceName": "The name of the instance for which you want to reset the host key or certificate."
}
"""
DeleteKnownHostKeys(args) = lightsail("DeleteKnownHostKeys", args)

"""
    ExportSnapshot()

Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an export snapshot record that can be used with the create cloud formation stack operation to create new Amazon EC2 instances. Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images (AMIs), and the instance system disk appears as an Amazon Elastic Block Store (Amazon EBS) volume. Exported disk snapshots appear in Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services Region in Amazon EC2 as the source Lightsail snapshot.  The export snapshot operation supports tag-based access control via resource tags applied to the resource identified by source snapshot name. For more information, see the Lightsail Dev Guide.  Use the get instance snapshots or get disk snapshots operations to get a list of snapshots that you can export to Amazon EC2. 

Required Parameters
{
  "sourceSnapshotName": "The name of the instance or disk snapshot to be exported to Amazon EC2."
}
"""
ExportSnapshot(args) = lightsail("ExportSnapshot", args)

"""
    GetActiveNames()

Returns the names of all active (not deleted) resources.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetActiveNames request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetActiveNames() = lightsail("GetActiveNames")
GetActiveNames(args) = lightsail("GetActiveNames", args)

"""
    GetDiskSnapshots()

Returns information about all block storage disk snapshots in your AWS account and region.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetDiskSnapshots request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetDiskSnapshots() = lightsail("GetDiskSnapshots")
GetDiskSnapshots(args) = lightsail("GetDiskSnapshots", args)

"""
    GetDistributionMetricData()

Returns the data points of a specific metric for an Amazon Lightsail content delivery network (CDN) distribution. Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.

Required Parameters
{
  "startTime": "The start of the time interval for which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify 1538424000 as the start time.   You can convert a human-friendly time to Unix time format using a converter like Epoch converter.",
  "statistics": "The statistic for the metric. The following statistics are available:    Minimum - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.    Maximum - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.    Sum - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.    Average - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.    SampleCount - The count, or number, of data points used for the statistical calculation.  ",
  "metricName": "The metric for which you want to return information. Valid distribution metric names are listed below, along with the most useful statistics to include in your request, and the published unit value.     Requests  - The total number of viewer requests received by your Lightsail distribution, for all HTTP methods, and for both HTTP and HTTPS requests.  Statistics: The most useful statistic is Sum.  Unit: The published unit is None.     BytesDownloaded  - The number of bytes downloaded by viewers for GET, HEAD, and OPTIONS requests.  Statistics: The most useful statistic is Sum.  Unit: The published unit is None.     BytesUploaded   - The number of bytes uploaded to your origin by your Lightsail distribution, using POST and PUT requests.  Statistics: The most useful statistic is Sum.  Unit: The published unit is None.     TotalErrorRate  - The percentage of all viewer requests for which the response's HTTP status code was 4xx or 5xx.  Statistics: The most useful statistic is Average.  Unit: The published unit is Percent.     4xxErrorRate  - The percentage of all viewer requests for which the response's HTTP status cod was 4xx. In these cases, the client or client viewer may have made an error. For example, a status code of 404 (Not Found) means that the client requested an object that could not be found.  Statistics: The most useful statistic is Average.  Unit: The published unit is Percent.     5xxErrorRate  - The percentage of all viewer requests for which the response's HTTP status code was 5xx. In these cases, the origin server did not satisfy the requests. For example, a status code of 503 (Service Unavailable) means that the origin server is currently unavailable.  Statistics: The most useful statistic is Average.  Unit: The published unit is Percent.  ",
  "period": "The granularity, in seconds, for the metric data points that will be returned.",
  "distributionName": "The name of the distribution for which to get metric data. Use the GetDistributions action to get a list of distribution names that you can specify.",
  "unit": "The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units with each available metric, see the metricName parameter.",
  "endTime": "The end of the time interval for which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify 1538427600 as the end time.   You can convert a human-friendly time to Unix time format using a converter like Epoch converter."
}
"""
GetDistributionMetricData(args) = lightsail("GetDistributionMetricData", args)

"""
    GetRelationalDatabaseParameters()

Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail. In addition to the parameter names and values, this operation returns other information about each parameter. This information includes whether changes require a reboot, whether the parameter is modifiable, the allowed values, and the data types.

Required Parameters
{
  "relationalDatabaseName": "The name of your database for which to get parameters."
}

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetRelationalDatabaseParameters request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""
GetRelationalDatabaseParameters(args) = lightsail("GetRelationalDatabaseParameters", args)

"""
    StartRelationalDatabase()

Starts a specific database from a stopped state in Amazon Lightsail. To restart a database, use the reboot relational database operation. The start relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of your database to start."
}
"""
StartRelationalDatabase(args) = lightsail("StartRelationalDatabase", args)

"""
    UpdateDistributionBundle()

Updates the bundle of your Amazon Lightsail content delivery network (CDN) distribution. A distribution bundle specifies the monthly network transfer quota and monthly cost of your dsitribution. Update your distribution's bundle if your distribution is going over its monthly network transfer quota and is incurring an overage fee. You can update your distribution's bundle only one time within your monthly AWS billing cycle. To determine if you can update your distribution's bundle, use the GetDistributions action. The ableToUpdateBundle parameter in the result will indicate whether you can currently update your distribution's bundle.

Optional Parameters
{
  "bundleId": "The bundle ID of the new bundle to apply to your distribution. Use the GetDistributionBundles action to get a list of distribution bundle IDs that you can specify.",
  "distributionName": "The name of the distribution for which to update the bundle. Use the GetDistributions action to get a list of distribution names that you can specify."
}
"""

UpdateDistributionBundle() = lightsail("UpdateDistributionBundle")
UpdateDistributionBundle(args) = lightsail("UpdateDistributionBundle", args)

"""
    GetCloudFormationStackRecords()

Returns the CloudFormation stack record created as a result of the create cloud formation stack operation. An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail snapshot.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetClouFormationStackRecords request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetCloudFormationStackRecords() = lightsail("GetCloudFormationStackRecords")
GetCloudFormationStackRecords(args) = lightsail("GetCloudFormationStackRecords", args)

"""
    DeleteDomainEntry()

Deletes a specific domain entry. The delete domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "domainEntry": "An array of key-value pairs containing information about your domain entries.",
  "domainName": "The name of the domain entry to delete."
}
"""
DeleteDomainEntry(args) = lightsail("DeleteDomainEntry", args)

"""
    DeleteAutoSnapshot()

Deletes an automatic snapshot of an instance or disk. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "date": "The date of the automatic snapshot to delete in YYYY-MM-DD format. Use the get auto snapshots operation to get the available automatic snapshots for a resource.",
  "resourceName": "The name of the source instance or disk from which to delete the automatic snapshot."
}
"""
DeleteAutoSnapshot(args) = lightsail("DeleteAutoSnapshot", args)

"""
    CreateRelationalDatabase()

Creates a new database in Amazon Lightsail. The create relational database operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "masterDatabaseName": "The name of the master database created when the Lightsail database resource is created. Constraints:   Must contain from 1 to 64 alphanumeric characters.   Cannot be a word reserved by the specified database engine  ",
  "relationalDatabaseBundleId": "The bundle ID for your new database. A bundle describes the performance specifications for your database. You can get a list of database bundle IDs by using the get relational database bundles operation.",
  "relationalDatabaseName": "The name to use for your new database. Constraints:   Must contain from 2 to 255 alphanumeric characters, or hyphens.   The first and last character must be a letter or number.  ",
  "relationalDatabaseBlueprintId": "The blueprint ID for your new database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the get relational database blueprints operation.",
  "masterUsername": "The master user name for your new database. Constraints:   Master user name is required.   Must contain from 1 to 16 alphanumeric characters.   The first character must be a letter.   Cannot be a reserved word for the database engine you choose. For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and Reserved Words articles for MySQL 5.6 or MySQL 5.7 respectively.  "
}

Optional Parameters
{
  "preferredMaintenanceWindow": "The weekly time range during which system maintenance can occur on your new database. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Constraints:   Must be in the ddd:hh24:mi-ddd:hh24:mi format.   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.   Must be at least 30 minutes.   Specified in Coordinated Universal Time (UTC).   Example: Tue:17:00-Tue:17:30   ",
  "preferredBackupWindow": "The daily time range during which automated backups are created for your new database if automated backups are enabled. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. For more information about the preferred backup window time blocks for each region, see the Working With Backups guide in the Amazon Relational Database Service (Amazon RDS) documentation. Constraints:   Must be in the hh24:mi-hh24:mi format. Example: 16:00-16:30    Specified in Coordinated Universal Time (UTC).   Must not conflict with the preferred maintenance window.   Must be at least 30 minutes.  ",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created.",
  "masterUserPassword": "The password for the master user of your new database. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\". Constraints: Must contain 8 to 41 characters.",
  "availabilityZone": "The Availability Zone in which to create your new database. Use the us-east-2a case-sensitive format. You can get a list of Availability Zones by using the get regions operation. Be sure to add the include relational database Availability Zones parameter to your request.",
  "publiclyAccessible": "Specifies the accessibility options for your new database. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database."
}
"""
CreateRelationalDatabase(args) = lightsail("CreateRelationalDatabase", args)

"""
    GetRelationalDatabaseLogStreams()

Returns a list of available log streams for a specific database in Amazon Lightsail.

Required Parameters
{
  "relationalDatabaseName": "The name of your database for which to get log streams."
}
"""
GetRelationalDatabaseLogStreams(args) = lightsail("GetRelationalDatabaseLogStreams", args)

"""
    CopySnapshot()

Copies a manual snapshot of an instance or disk as another manual snapshot, or copies an automatic snapshot of an instance or disk as a manual snapshot. This operation can also be used to copy a manual or automatic snapshot of an instance or a disk from one AWS Region to another in Amazon Lightsail. When copying a manual snapshot, be sure to define the source region, source snapshot name, and target snapshot name parameters. When copying an automatic snapshot, be sure to define the source region, source resource name, target snapshot name, and either the restore date or the use latest restorable auto snapshot parameters.

Required Parameters
{
  "targetSnapshotName": "The name of the new manual snapshot to be created as a copy.",
  "sourceRegion": "The AWS Region where the source manual or automatic snapshot is located."
}

Optional Parameters
{
  "useLatestRestorableAutoSnapshot": "A Boolean value to indicate whether to use the latest available automatic snapshot of the specified source instance or disk. Constraints:   This parameter cannot be defined together with the restore date parameter. The use latest restorable auto snapshot and restore date parameters are mutually exclusive.   Define this parameter only when copying an automatic snapshot as a manual snapshot. For more information, see the Lightsail Dev Guide.  ",
  "sourceSnapshotName": "The name of the source manual snapshot to copy. Constraint:   Define this parameter only when copying a manual snapshot as another manual snapshot.  ",
  "sourceResourceName": "The name of the source instance or disk from which the source automatic snapshot was created. Constraint:   Define this parameter only when copying an automatic snapshot as a manual snapshot. For more information, see the Lightsail Dev Guide.  ",
  "restoreDate": "The date of the source automatic snapshot to copy. Use the get auto snapshots operation to identify the dates of the available automatic snapshots. Constraints:   Must be specified in YYYY-MM-DD format.   This parameter cannot be defined together with the use latest restorable auto snapshot parameter. The restore date and use latest restorable auto snapshot parameters are mutually exclusive.   Define this parameter only when copying an automatic snapshot as a manual snapshot. For more information, see the Lightsail Dev Guide.  "
}
"""
CopySnapshot(args) = lightsail("CopySnapshot", args)

"""
    GetLoadBalancerMetricData()

Returns information about health metrics for your Lightsail load balancer. Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.

Required Parameters
{
  "startTime": "The start time of the period.",
  "statistics": "The statistic for the metric. The following statistics are available:    Minimum - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.    Maximum - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.    Sum - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.    Average - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.    SampleCount - The count, or number, of data points used for the statistical calculation.  ",
  "metricName": "The metric for which you want to return information. Valid load balancer metric names are listed below, along with the most useful statistics to include in your request, and the published unit value.     ClientTLSNegotiationErrorCount  - The number of TLS connections initiated by the client that did not establish a session with the load balancer due to a TLS error generated by the load balancer. Possible causes include a mismatch of ciphers or protocols.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.     HealthyHostCount  - The number of target instances that are considered healthy.  Statistics: The most useful statistic are Average, Minimum, and Maximum.  Unit: The published unit is Count.     HTTPCode_Instance_2XX_Count  - The number of HTTP 2XX response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     HTTPCode_Instance_3XX_Count  - The number of HTTP 3XX response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     HTTPCode_Instance_4XX_Count  - The number of HTTP 4XX response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     HTTPCode_Instance_5XX_Count  - The number of HTTP 5XX response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     HTTPCode_LB_4XX_Count  - The number of HTTP 4XX client error codes that originated from the load balancer. Client errors are generated when requests are malformed or incomplete. These requests were not received by the target instance. This count does not include response codes generated by the target instances.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     HTTPCode_LB_5XX_Count  - The number of HTTP 5XX server error codes that originated from the load balancer. This does not include any response codes generated by the target instance. This metric is reported if there are no healthy instances attached to the load balancer, or if the request rate exceeds the capacity of the instances (spillover) or the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     InstanceResponseTime  - The time elapsed, in seconds, after the request leaves the load balancer until a response from the target instance is received.  Statistics: The most useful statistic is Average.  Unit: The published unit is Seconds.     RejectedConnectionCount  - The number of connections that were rejected because the load balancer had reached its maximum number of connections.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.     RequestCount  - The number of requests processed over IPv4. This count includes only the requests with a response generated by a target instance of the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  Unit: The published unit is Count.     UnhealthyHostCount  - The number of target instances that are considered unhealthy.  Statistics: The most useful statistic are Average, Minimum, and Maximum.  Unit: The published unit is Count.  ",
  "period": "The granularity, in seconds, of the returned data points.",
  "loadBalancerName": "The name of the load balancer.",
  "unit": "The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units with each available metric, see the metricName parameter.",
  "endTime": "The end time of the period."
}
"""
GetLoadBalancerMetricData(args) = lightsail("GetLoadBalancerMetricData", args)

"""
    OpenInstancePublicPorts()

Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses allowed to connect to the instance through the ports, and the protocol. The OpenInstancePublicPorts action supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance for which to open ports.",
  "portInfo": "An object to describe the ports to open for the specified instance."
}
"""
OpenInstancePublicPorts(args) = lightsail("OpenInstancePublicPorts", args)

"""
    CreateInstanceSnapshot()

Creates a snapshot of a specific virtual private server, or instance. You can use a snapshot to create a new instance that is based on that snapshot. The create instance snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceSnapshotName": "The name for your new snapshot.",
  "instanceName": "The Lightsail instance on which to base your snapshot."
}

Optional Parameters
{
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateInstanceSnapshot(args) = lightsail("CreateInstanceSnapshot", args)

"""
    CreateDisk()

Creates a block storage disk that can be attached to an Amazon Lightsail instance in the same Availability Zone (e.g., us-east-2a). The create disk operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskName": "The unique Lightsail disk name (e.g., my-disk).",
  "sizeInGb": "The size of the disk in GB (e.g., 32).",
  "availabilityZone": "The Availability Zone where you want to create the disk (e.g., us-east-2a). Use the same Availability Zone as the Lightsail instance to which you want to attach the disk. Use the get regions operation to list the Availability Zones where Lightsail is currently available."
}

Optional Parameters
{
  "addOns": "An array of objects that represent the add-ons to enable for the new disk.",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateDisk(args) = lightsail("CreateDisk", args)

"""
    GetDomains()

Returns a list of all domains in the user's account.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetDomains request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetDomains() = lightsail("GetDomains")
GetDomains(args) = lightsail("GetDomains", args)

"""
    CreateDiskFromSnapshot()

Creates a block storage disk from a manual or automatic snapshot of a disk. The resulting disk can be attached to an Amazon Lightsail instance in the same Availability Zone (e.g., us-east-2a). The create disk from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by disk snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskName": "The unique Lightsail disk name (e.g., my-disk).",
  "sizeInGb": "The size of the disk in GB (e.g., 32).",
  "availabilityZone": "The Availability Zone where you want to create the disk (e.g., us-east-2a). Choose the same Availability Zone as the Lightsail instance where you want to create the disk. Use the GetRegions operation to list the Availability Zones where Lightsail is currently available."
}

Optional Parameters
{
  "useLatestRestorableAutoSnapshot": "A Boolean value to indicate whether to use the latest available automatic snapshot. Constraints:   This parameter cannot be defined together with the restore date parameter. The use latest restorable auto snapshot and restore date parameters are mutually exclusive.   Define this parameter only when creating a new disk from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "diskSnapshotName": "The name of the disk snapshot (e.g., my-snapshot) from which to create the new storage disk. Constraint:   This parameter cannot be defined together with the source disk name parameter. The disk snapshot name and source disk name parameters are mutually exclusive.  ",
  "restoreDate": "The date of the automatic snapshot to use for the new disk. Use the get auto snapshots operation to identify the dates of the available automatic snapshots. Constraints:   Must be specified in YYYY-MM-DD format.   This parameter cannot be defined together with the use latest restorable auto snapshot parameter. The restore date and use latest restorable auto snapshot parameters are mutually exclusive.   Define this parameter only when creating a new disk from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "sourceDiskName": "The name of the source disk from which the source automatic snapshot was created. Constraints:   This parameter cannot be defined together with the disk snapshot name parameter. The source disk name and disk snapshot name parameters are mutually exclusive.   Define this parameter only when creating a new disk from an automatic snapshot. For more information, see the Lightsail Dev Guide.  ",
  "addOns": "An array of objects that represent the add-ons to enable for the new disk.",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateDiskFromSnapshot(args) = lightsail("CreateDiskFromSnapshot", args)

"""
    GetInstanceMetricData()

Returns the data points for the specified Amazon Lightsail instance metric, given an instance name. Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.

Required Parameters
{
  "startTime": "The start time of the time period.",
  "statistics": "The statistic for the metric. The following statistics are available:    Minimum - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.    Maximum - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.    Sum - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.    Average - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.    SampleCount - The count, or number, of data points used for the statistical calculation.  ",
  "metricName": "The metric for which you want to return information. Valid instance metric names are listed below, along with the most useful statistics to include in your request, and the published unit value.     BurstCapacityPercentage  - The percentage of CPU performance available for your instance to burst above its baseline. Your instance continuously accrues and consumes burst capacity. Burst capacity stops accruing when your instance's BurstCapacityPercentage reaches 100%. For more information, see Viewing instance burst capacity in Amazon Lightsail.  Statistics: The most useful statistics are Maximum and Average.  Unit: The published unit is Percent.     BurstCapacityTime  - The available amount of time for your instance to burst at 100% CPU utilization. Your instance continuously accrues and consumes burst capacity. Burst capacity time stops accruing when your instance's BurstCapacityPercentage metric reaches 100%. Burst capacity time is consumed at the full rate only when your instance operates at 100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50% rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity minutes in the 5-minute period. For more information, see Viewing instance burst capacity in Amazon Lightsail.  Statistics: The most useful statistics are Maximum and Average.  Unit: The published unit is Seconds.     CPUUtilization  - The percentage of allocated compute units that are currently in use on the instance. This metric identifies the processing power to run the applications on the instance. Tools in your operating system can show a lower percentage than Lightsail when the instance is not allocated a full processor core.  Statistics: The most useful statistics are Maximum and Average.  Unit: The published unit is Percent.     NetworkIn  - The number of bytes received on all network interfaces by the instance. This metric identifies the volume of incoming network traffic to the instance. The number reported is the number of bytes received during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Bytes.     NetworkOut  - The number of bytes sent out on all network interfaces by the instance. This metric identifies the volume of outgoing network traffic from the instance. The number reported is the number of bytes sent during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Bytes.     StatusCheckFailed  - Reports whether the instance passed or failed both the instance status check and the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.     StatusCheckFailed_Instance  - Reports whether the instance passed or failed the instance status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.     StatusCheckFailed_System  - Reports whether the instance passed or failed the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.  Statistics: The most useful statistic is Sum.  Unit: The published unit is Count.  ",
  "period": "The granularity, in seconds, of the returned data points. The StatusCheckFailed, StatusCheckFailed_Instance, and StatusCheckFailed_System instance metric data is available in 1-minute (60 seconds) granularity. All other instance metric data is available in 5-minute (300 seconds) granularity.",
  "instanceName": "The name of the instance for which you want to get metrics data.",
  "unit": "The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units to specify with each available metric, see the metricName parameter.",
  "endTime": "The end time of the time period."
}
"""
GetInstanceMetricData(args) = lightsail("GetInstanceMetricData", args)

"""
    DeleteContactMethod()

Deletes a contact method. A contact method is used to send you notifications about your Amazon Lightsail resources. You can add one email address and one mobile phone number contact method in each AWS Region. However, SMS text messaging is not supported in some AWS Regions, and SMS text messages cannot be sent to some countries/regions. For more information, see Notifications in Amazon Lightsail.

Required Parameters
{
  "protocol": "The protocol that will be deleted, such as Email or SMS (text messaging).  To delete an Email and an SMS contact method if you added both, you must run separate DeleteContactMethod actions to delete each protocol. "
}
"""
DeleteContactMethod(args) = lightsail("DeleteContactMethod", args)

"""
    GetInstanceAccessDetails()

Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance. The get instance access details operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance to access."
}

Optional Parameters
{
  "protocol": "The protocol to use to connect to your instance. Defaults to ssh."
}
"""
GetInstanceAccessDetails(args) = lightsail("GetInstanceAccessDetails", args)

"""
    GetDomain()

Returns information about a specific domain recordset.

Required Parameters
{
  "domainName": "The domain name for which your want to return information about."
}
"""
GetDomain(args) = lightsail("GetDomain", args)

"""
    UpdateDistribution()

Updates an existing Amazon Lightsail content delivery network (CDN) distribution. Use this action to update the configuration of your existing distribution

Required Parameters
{
  "distributionName": "The name of the distribution to update. Use the GetDistributions action to get a list of distribution names that you can specify."
}

Optional Parameters
{
  "cacheBehaviors": "An array of objects that describe the per-path cache behavior for the distribution.",
  "cacheBehaviorSettings": "An object that describes the cache behavior settings for the distribution.  The cacheBehaviorSettings specified in your UpdateDistributionRequest will replace your distribution's existing settings. ",
  "isEnabled": "Indicates whether to enable the distribution.",
  "defaultCacheBehavior": "An object that describes the default cache behavior for the distribution.",
  "origin": "An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer. The distribution pulls, caches, and serves content from the origin."
}
"""
UpdateDistribution(args) = lightsail("UpdateDistribution", args)

"""
    StopRelationalDatabase()

Stops a specific database that is currently running in Amazon Lightsail. The stop relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of your database to stop."
}

Optional Parameters
{
  "relationalDatabaseSnapshotName": "The name of your new database snapshot to be created before stopping your database."
}
"""
StopRelationalDatabase(args) = lightsail("StopRelationalDatabase", args)

"""
    GetDisks()

Returns information about all block storage disks in your AWS account and region.

Optional Parameters
{
  "pageToken": "The token to advance to the next page of results from your request. To get a page token, perform an initial GetDisks request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request."
}
"""

GetDisks() = lightsail("GetDisks")
GetDisks(args) = lightsail("GetDisks", args)

"""
    PutAlarm()

Creates or updates an alarm, and associates it with the specified metric. An alarm is used to monitor a single metric for one of your resources. When a metric condition is met, the alarm can notify you by email, SMS text message, and a banner displayed on the Amazon Lightsail console. For more information, see Alarms in Amazon Lightsail. When this action creates an alarm, the alarm state is immediately set to INSUFFICIENT_DATA. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed. When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm. The alarm is then evaluated with the updated configuration.

Required Parameters
{
  "metricName": "The name of the metric to associate with the alarm. You can configure up to two alarms per metric. The following metrics are available for each resource type:    Instances: BurstCapacityPercentage, BurstCapacityTime, CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, and StatusCheckFailed_System.    Load balancers: ClientTLSNegotiationErrorCount, HealthyHostCount, UnhealthyHostCount, HTTPCode_LB_4XX_Count, HTTPCode_LB_5XX_Count, HTTPCode_Instance_2XX_Count, HTTPCode_Instance_3XX_Count, HTTPCode_Instance_4XX_Count, HTTPCode_Instance_5XX_Count, InstanceResponseTime, RejectedConnectionCount, and RequestCount.    Relational databases: CPUUtilization, DatabaseConnections, DiskQueueDepth, FreeStorageSpace, NetworkReceiveThroughput, and NetworkTransmitThroughput.   For more information about these metrics, see Metrics available in Lightsail.",
  "monitoredResourceName": "The name of the Lightsail resource that will be monitored. Instances, load balancers, and relational databases are the only Lightsail resources that can currently be monitored by alarms.",
  "threshold": "The value against which the specified statistic is compared.",
  "alarmName": "The name for the alarm. Specify the name of an existing alarm to update, and overwrite the previous configuration of the alarm.",
  "evaluationPeriods": "The number of most recent periods over which data is compared to the specified threshold. If you are setting an \"M out of N\" alarm, this value (evaluationPeriods) is the N. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies the rolling period of time in which data points are evaluated. Each evaluation period is five minutes long. For example, specify an evaluation period of 24 to evaluate a metric over a rolling period of two hours. You can specify a minimum valuation period of 1 (5 minutes), and a maximum evaluation period of 288 (24 hours).",
  "comparisonOperator": "The arithmetic operation to use when comparing the specified statistic to the threshold. The specified statistic value is used as the first operand."
}

Optional Parameters
{
  "notificationTriggers": "The alarm states that trigger a notification. An alarm has the following possible states:    ALARM - The metric is outside of the defined threshold.    INSUFFICIENT_DATA - The alarm has just started, the metric is not available, or not enough data is available for the metric to determine the alarm state.    OK - The metric is within the defined threshold.   When you specify a notification trigger, the ALARM state must be specified. The INSUFFICIENT_DATA and OK states can be specified in addition to the ALARM state.   If you specify OK as an alarm trigger, a notification is sent when the alarm switches from an ALARM or INSUFFICIENT_DATA alarm state to an OK state. This can be thought of as an all clear alarm notification.   If you specify INSUFFICIENT_DATA as the alarm trigger, a notification is sent when the alarm switches from an OK or ALARM alarm state to an INSUFFICIENT_DATA state.   The notification trigger defaults to ALARM if you don't specify this parameter.",
  "datapointsToAlarm": "The number of data points that must be not within the specified threshold to trigger the alarm. If you are setting an \"M out of N\" alarm, this value (datapointsToAlarm) is the M.",
  "contactProtocols": "The contact protocols to use for the alarm, such as Email, SMS (text messaging), or both. A notification is sent via the specified contact protocol if notifications are enabled for the alarm, and when the alarm is triggered. A notification is not sent if a contact protocol is not specified, if the specified contact protocol is not configured in the AWS Region, or if notifications are not enabled for the alarm using the notificationEnabled paramater. Use the CreateContactMethod action to configure a contact protocol in an AWS Region.",
  "notificationEnabled": "Indicates whether the alarm is enabled. Notifications are enabled by default if you don't specify this parameter.",
  "treatMissingData": "Sets how this alarm will handle missing data points. An alarm can treat missing data in the following ways:    breaching - Assume the missing data is not within the threshold. Missing data counts towards the number of times the metric is not within the threshold.    notBreaching - Assume the missing data is within the threshold. Missing data does not count towards the number of times the metric is not within the threshold.    ignore - Ignore the missing data. Maintains the current alarm state.    missing - Missing data is treated as missing.   If treatMissingData is not specified, the default behavior of missing is used."
}
"""
PutAlarm(args) = lightsail("PutAlarm", args)

"""
    AttachLoadBalancerTlsCertificate()

Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the AttachLoadBalancerTlsCertificate action with the non-attached certificate, and it will replace the existing one and become the attached certificate. The AttachLoadBalancerTlsCertificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "loadBalancerName": "The name of the load balancer to which you want to associate the SSL/TLS certificate.",
  "certificateName": "The name of your SSL/TLS certificate."
}
"""
AttachLoadBalancerTlsCertificate(args) = lightsail("AttachLoadBalancerTlsCertificate", args)

"""
    RebootRelationalDatabase()

Restarts a specific database in Amazon Lightsail. The reboot relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "relationalDatabaseName": "The name of your database to reboot."
}
"""
RebootRelationalDatabase(args) = lightsail("RebootRelationalDatabase", args)

"""
    CreateDiskSnapshot()

Creates a snapshot of a block storage disk. You can use snapshots for backups, to make copies of disks, and to save data before shutting down a Lightsail instance. You can take a snapshot of an attached disk that is in use; however, snapshots only capture data that has been written to your disk at the time the snapshot command is issued. This may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the disk long enough to take a snapshot, your snapshot should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should unmount the disk from within the Lightsail instance, issue the create disk snapshot command, and then remount the disk to ensure a consistent and complete snapshot. You may remount and use your disk while the snapshot status is pending. You can also use this operation to create a snapshot of an instance's system volume. You might want to do this, for example, to recover data from the system volume of a botched instance or to create a backup of the system volume like you would for a block storage disk. To create a snapshot of a system volume, just define the instance name parameter when issuing the snapshot command, and a snapshot of the defined instance's system volume will be created. After the snapshot is available, you can create a block storage disk from the snapshot and attach it to a running instance to access the data on the disk. The create disk snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "diskSnapshotName": "The name of the destination disk snapshot (e.g., my-disk-snapshot) based on the source disk."
}

Optional Parameters
{
  "diskName": "The unique name of the source disk (e.g., Disk-Virginia-1).  This parameter cannot be defined together with the instance name parameter. The disk name and instance name parameters are mutually exclusive. ",
  "instanceName": "The unique name of the source instance (e.g., Amazon_Linux-512MB-Virginia-1). When this is defined, a snapshot of the instance's system volume is created.  This parameter cannot be defined together with the disk name parameter. The instance name and disk name parameters are mutually exclusive. ",
  "tags": "The tag keys and optional values to add to the resource during create. Use the TagResource action to tag a resource after it's created."
}
"""
CreateDiskSnapshot(args) = lightsail("CreateDiskSnapshot", args)

"""
    DisableAddOn()

Disables an add-on for an Amazon Lightsail resource. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "addOnType": "The add-on type to disable.",
  "resourceName": "The name of the source resource for which to disable the add-on."
}
"""
DisableAddOn(args) = lightsail("DisableAddOn", args)