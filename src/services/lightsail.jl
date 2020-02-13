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
  "pageToken": "A token used for advancing to the next page of results from your get operations for resource request."
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
    GetInstanceSnapshots()

Returns all instance snapshots for the user's account.

Optional Parameters
{
  "pageToken": "A token used for advancing to the next page of results from your get instance snapshots request."
}
"""
GetInstanceSnapshots() = lightsail("GetInstanceSnapshots")
GetInstanceSnapshots(args) = lightsail("GetInstanceSnapshots", args)

"""
    GetRelationalDatabaseBlueprints()

Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes the major engine version of a database. You can use a blueprint ID to create a new database that runs a specific database engine.

Optional Parameters
{
  "pageToken": "A token used for advancing to a specific page of results for your get relational database blueprints request."
}
"""
GetRelationalDatabaseBlueprints() = lightsail("GetRelationalDatabaseBlueprints")
GetRelationalDatabaseBlueprints(args) = lightsail("GetRelationalDatabaseBlueprints", args)

"""
    GetExportSnapshotRecords()

Returns the export snapshot record created as a result of the export snapshot operation. An export snapshot record can be used to create a new Amazon EC2 instance and its related resources with the create cloud formation stack operation.

Optional Parameters
{
  "pageToken": "A token used for advancing to a specific page of results for your get export snapshot records request."
}
"""
GetExportSnapshotRecords() = lightsail("GetExportSnapshotRecords")
GetExportSnapshotRecords(args) = lightsail("GetExportSnapshotRecords", args)

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
  "pageToken": "A token used for advancing to a specific page of results for your get relational database log events request.",
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

Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request. The put instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The Lightsail instance name of the public port(s) you are setting.",
  "portInfos": "Specifies information about the public port(s)."
}
"""
PutInstancePublicPorts(args) = lightsail("PutInstancePublicPorts", args)

"""
    DeleteLoadBalancerTlsCertificate()

Deletes an SSL/TLS certificate associated with a Lightsail load balancer. The delete load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
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
    CreateKeyPair()

Creates an SSH key pair. The create key pair operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "keyPairName": "The name for your new key pair."
}

Optional Parameters
{
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation.",
  "restoreTime": "The date and time to restore your database from. Constraints:   Must be before the latest restorable time for the database.   Cannot be specified if the use latest restorable time parameter is true.   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the restore time.  ",
  "availabilityZone": "The Availability Zone in which to create your new database. Use the us-east-2a case-sensitive format. You can get a list of Availability Zones by using the get regions operation. Be sure to add the include relational database Availability Zones parameter to your request."
}
"""
CreateRelationalDatabaseFromSnapshot(args) = lightsail("CreateRelationalDatabaseFromSnapshot", args)

"""
    CreateLoadBalancerTlsCertificate()

Creates a Lightsail load balancer TLS certificate. TLS is just an updated, more secure version of Secure Socket Layer (SSL). The create load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "certificateDomainName": "The domain name (e.g., example.com) for your SSL/TLS certificate.",
  "loadBalancerName": "The load balancer name where you want to create the SSL/TLS certificate.",
  "certificateName": "The SSL/TLS certificate name. You can have up to 10 certificates in your account at one time. Each Lightsail load balancer can have up to 2 certificates associated with it at one time. There is also an overall limit to the number of certificates that can be issue in a 365-day period. For more information, see Limits."
}

Optional Parameters
{
  "certificateAlternativeNames": "An array of strings listing alternative domains and subdomains for your SSL/TLS certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9 alternative names (in addition to the 1 primary domain). We do not support wildcards (e.g., *.example.com).",
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
}
"""
CreateLoadBalancerTlsCertificate(args) = lightsail("CreateLoadBalancerTlsCertificate", args)

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

Returns the port states for a specific virtual private server, or instance.

Required Parameters
{
  "instanceName": "The name of the instance."
}
"""
GetInstancePortStates(args) = lightsail("GetInstancePortStates", args)

"""
    CloseInstancePublicPorts()

Closes the public ports on a specific Amazon Lightsail instance. The close instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance on which you're attempting to close the public ports.",
  "portInfo": "Information about the public port you are trying to close."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
}
"""
CreateRelationalDatabaseSnapshot(args) = lightsail("CreateRelationalDatabaseSnapshot", args)

"""
    GetLoadBalancers()

Returns information about all load balancers in an account. If you are describing a long list of load balancers, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.

Optional Parameters
{
  "pageToken": "A token used for paginating the results from your GetLoadBalancers request."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation.",
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
    GetStaticIps()

Returns information about all static IPs in the user's account.

Optional Parameters
{
  "pageToken": "A token used for advancing to the next page of results from your get static IPs request."
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
  "pageToken": "A token used for advancing to the next page of results from your get instances request."
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
  "pageToken": "A token used for advancing to the next page of results from your get bundles request."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
}
"""
CreateDomain(args) = lightsail("CreateDomain", args)

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
    GetRelationalDatabaseEvents()

Returns a list of events for a specific database in Amazon Lightsail.

Required Parameters
{
  "relationalDatabaseName": "The name of the database from which to get events."
}

Optional Parameters
{
  "durationInMinutes": "The number of minutes in the past from which to retrieve events. For example, to get all events from the past 2 hours, enter 120. Default: 60  The minimum is 1 and the maximum is 14 days (20160 minutes).",
  "pageToken": "A token used for advancing to a specific page of results from for get relational database events request."
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

Returns the data points of the specified metric for a database in Amazon Lightsail.

Required Parameters
{
  "startTime": "The start of the time interval from which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the start time.  ",
  "statistics": "The array of statistics for your metric data request.",
  "metricName": "The name of the metric data to return.",
  "relationalDatabaseName": "The name of your database from which to get metric data.",
  "period": "The granularity, in seconds, of the returned data points.",
  "unit": "The unit for the metric data request.",
  "endTime": "The end of the time interval from which to get metric data. Constraints:   Specified in Coordinated Universal Time (UTC).   Specified in the Unix time format. For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input 1538424000 as the end time.  "
}
"""
GetRelationalDatabaseMetricData(args) = lightsail("GetRelationalDatabaseMetricData", args)

"""
    GetBlueprints()

Returns the list of available instance images, or blueprints. You can use a blueprint to create a new instance already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.  Use active blueprints when creating new instances. Inactive blueprints are listed to support customers with existing instances and are not necessarily available to create new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. 

Optional Parameters
{
  "includeInactive": "A Boolean value indicating whether to include inactive results in your request.",
  "pageToken": "A token used for advancing to the next page of results from your get blueprints request."
}
"""
GetBlueprints() = lightsail("GetBlueprints")
GetBlueprints(args) = lightsail("GetBlueprints", args)

"""
    GetRelationalDatabaseBundles()

Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database. You can use a bundle ID to create a new database with explicit performance specifications.

Optional Parameters
{
  "pageToken": "A token used for advancing to a specific page of results for your get relational database bundles request."
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
  "pageToken": "A token used for advancing to the next page of results from your get operations request."
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
    GetLoadBalancerTlsCertificates()

Returns information about the TLS certificates that are associated with the specified Lightsail load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.

Required Parameters
{
  "loadBalancerName": "The name of the load balancer you associated with your SSL/TLS certificate."
}
"""
GetLoadBalancerTlsCertificates(args) = lightsail("GetLoadBalancerTlsCertificates", args)

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
  "pageToken": "A token used for advancing to the next page of results from your get key pairs request."
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
  "pageToken": "A token used for advancing to a specific page of results for your get relational database snapshots request."
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
  "pageToken": "A token used for advancing to a specific page of results for your get relational database request."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
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
  "pageToken": "A token used for paginating results from your get active names request."
}
"""
GetActiveNames() = lightsail("GetActiveNames")
GetActiveNames(args) = lightsail("GetActiveNames", args)

"""
    GetDiskSnapshots()

Returns information about all block storage disk snapshots in your AWS account and region. If you are describing a long list of disk snapshots, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.

Optional Parameters
{
  "pageToken": "A token used for advancing to the next page of results from your GetDiskSnapshots request."
}
"""
GetDiskSnapshots() = lightsail("GetDiskSnapshots")
GetDiskSnapshots(args) = lightsail("GetDiskSnapshots", args)

"""
    GetRelationalDatabaseParameters()

Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail. In addition to the parameter names and values, this operation returns other information about each parameter. This information includes whether changes require a reboot, whether the parameter is modifiable, the allowed values, and the data types.

Required Parameters
{
  "relationalDatabaseName": "The name of your database for which to get parameters."
}

Optional Parameters
{
  "pageToken": "A token used for advancing to a specific page of results for your get relational database parameters request."
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
    GetCloudFormationStackRecords()

Returns the CloudFormation stack record created as a result of the create cloud formation stack operation. An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail snapshot.

Optional Parameters
{
  "pageToken": "A token used for advancing to a specific page of results for your get cloud formation stack records request."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation.",
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

Returns information about health metrics for your Lightsail load balancer.

Required Parameters
{
  "startTime": "The start time of the period.",
  "statistics": "An array of statistics that you want to request metrics for. Valid values are listed below.     SampleCount  - The count (number) of data points used for the statistical calculation.     Average  - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum. This comparison helps you to know when to increase or decrease your resources as needed.     Sum  - All values submitted for the matching metric added together. This statistic can be useful for determining the total volume of a metric.     Minimum  - The lowest value observed during the specified period. You can use this value to determine low volumes of activity for your application.     Maximum  - The highest value observed during the specified period. You can use this value to determine high volumes of activity for your application.  ",
  "metricName": "The metric about which you want to return information. Valid values are listed below, along with the most useful statistics to include in your request.     ClientTLSNegotiationErrorCount  - The number of TLS connections initiated by the client that did not establish a session with the load balancer. Possible causes include a mismatch of ciphers or protocols.  Statistics: The most useful statistic is Sum.     HealthyHostCount  - The number of target instances that are considered healthy.  Statistics: The most useful statistic are Average, Minimum, and Maximum.     UnhealthyHostCount  - The number of target instances that are considered unhealthy.  Statistics: The most useful statistic are Average, Minimum, and Maximum.     HTTPCode_LB_4XX_Count  - The number of HTTP 4XX client error codes that originate from the load balancer. Client errors are generated when requests are malformed or incomplete. These requests have not been received by the target instance. This count does not include any response codes generated by the target instances.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.     HTTPCode_LB_5XX_Count  - The number of HTTP 5XX server error codes that originate from the load balancer. This count does not include any response codes generated by the target instances.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1. Note that Minimum, Maximum, and Average all return 1.     HTTPCode_Instance_2XX_Count  - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.     HTTPCode_Instance_3XX_Count  - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.   Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.     HTTPCode_Instance_4XX_Count  - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.     HTTPCode_Instance_5XX_Count  - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.     InstanceResponseTime  - The time elapsed, in seconds, after the request leaves the load balancer until a response from the target instance is received.  Statistics: The most useful statistic is Average.     RejectedConnectionCount  - The number of connections that were rejected because the load balancer had reached its maximum number of connections.  Statistics: The most useful statistic is Sum.     RequestCount  - The number of requests processed over IPv4. This count includes only the requests with a response generated by a target instance of the load balancer.  Statistics: The most useful statistic is Sum. Note that Minimum, Maximum, and Average all return 1.  ",
  "period": "The granularity, in seconds, of the returned data points.",
  "loadBalancerName": "The name of the load balancer.",
  "unit": "The unit for the time period request. Valid values are listed below.",
  "endTime": "The end time of the period."
}
"""
GetLoadBalancerMetricData(args) = lightsail("GetLoadBalancerMetricData", args)

"""
    OpenInstancePublicPorts()

Adds public ports to an Amazon Lightsail instance. The open instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters
{
  "instanceName": "The name of the instance for which you want to open the public ports.",
  "portInfo": "An array of key-value pairs containing information about the port mappings."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
}
"""
CreateDisk(args) = lightsail("CreateDisk", args)

"""
    GetDomains()

Returns a list of all domains in the user's account.

Optional Parameters
{
  "pageToken": "A token used for advancing to the next page of results from your get domains request."
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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
}
"""
CreateDiskFromSnapshot(args) = lightsail("CreateDiskFromSnapshot", args)

"""
    GetInstanceMetricData()

Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.

Required Parameters
{
  "startTime": "The start time of the time period.",
  "statistics": "The instance statistics. ",
  "metricName": "The metric name to get data about. ",
  "period": "The granularity, in seconds, of the returned data points.",
  "instanceName": "The name of the instance for which you want to get metrics data.",
  "unit": "The unit. The list of valid values is below.",
  "endTime": "The end time of the time period."
}
"""
GetInstanceMetricData(args) = lightsail("GetInstanceMetricData", args)

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

Returns information about all block storage disks in your AWS account and region. If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.

Optional Parameters
{
  "pageToken": "A token used for advancing to the next page of results from your GetDisks request."
}
"""
GetDisks() = lightsail("GetDisks")
GetDisks(args) = lightsail("GetDisks", args)

"""
    AttachLoadBalancerTlsCertificate()

Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the attach load balancer tls certificate operation with the non-attached certificate, and it will replace the existing one and become the attached certificate. The attach load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

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
  "tags": "The tag keys and optional values to add to the resource during create. To tag a resource after it has been created, see the tag resource operation."
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
