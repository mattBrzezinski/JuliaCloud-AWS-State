include("../AWSCorePrototypeServices.jl")
using .Services: lightsail

"""
Returns information about a specific block storage disk.

Required Parameters:
diskName
"""
GetDisk(args) = lightsail("GetDisk", args)

"""
Gets operations for a specific resource (e.g., an instance or a static IP).

Required Parameters:
resourceName
"""
GetOperationsForResource(args) = lightsail("GetOperationsForResource", args)

"""
Returns information about a specific key pair.

Required Parameters:
keyPairName
"""
GetKeyPair(args) = lightsail("GetKeyPair", args)

"""
Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name. The attach disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskName, instanceName, diskPath
"""
AttachDisk(args) = lightsail("AttachDisk", args)

"""
Returns all instance snapshots for the user's account.
"""
GetInstanceSnapshots() = lightsail("GetInstanceSnapshots")

"""
Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes the major engine version of a database. You can use a blueprint ID to create a new database that runs a specific database engine.
"""
GetRelationalDatabaseBlueprints() = lightsail("GetRelationalDatabaseBlueprints")

"""
Returns the export snapshot record created as a result of the export snapshot operation. An export snapshot record can be used to create a new Amazon EC2 instance and its related resources with the create cloud formation stack operation.
"""
GetExportSnapshotRecords() = lightsail("GetExportSnapshotRecords")

"""
Imports a public SSH key from a specific key pair.

Required Parameters:
keyPairName, publicKeyBase64
"""
ImportKeyPair(args) = lightsail("ImportKeyPair", args)

"""
Downloads the default SSH key pair from the user's account.
"""
DownloadDefaultKeyPair() = lightsail("DownloadDefaultKeyPair")

"""
Returns a list of log events for a database in Amazon Lightsail.

Required Parameters:
relationalDatabaseName, logStreamName
"""
GetRelationalDatabaseLogEvents(args) = lightsail("GetRelationalDatabaseLogEvents", args)

"""
Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.  When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the Lightsail Dev Guide.  The start instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceName
"""
StartInstance(args) = lightsail("StartInstance", args)

"""
Adds one or more tags to the specified Amazon Lightsail resource. Each resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see the Lightsail Dev Guide. The tag resource operation supports tag-based access control via request tags and resource tags applied to the resource identified by resource name. For more information, see the Lightsail Dev Guide.

Required Parameters:
resourceName, tags
"""
TagResource(args) = lightsail("TagResource", args)

"""
Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request. The put instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
portInfos, instanceName
"""
PutInstancePublicPorts(args) = lightsail("PutInstancePublicPorts", args)

"""
Deletes an SSL/TLS certificate associated with a Lightsail load balancer. The delete load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, certificateName
"""
DeleteLoadBalancerTlsCertificate(args) = lightsail("DeleteLoadBalancerTlsCertificate", args)

"""
Creates one or more new instances from a manual or automatic snapshot of an instance. The create instances from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by instance snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceNames, availabilityZone, bundleId
"""
CreateInstancesFromSnapshot(args) = lightsail("CreateInstancesFromSnapshot", args)

"""
Returns information about a specific instance snapshot.

Required Parameters:
instanceSnapshotName
"""
GetInstanceSnapshot(args) = lightsail("GetInstanceSnapshot", args)

"""
Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk. The detach disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskName
"""
DetachDisk(args) = lightsail("DetachDisk", args)

"""
Enables or modifies an add-on for an Amazon Lightsail resource. For more information, see the Lightsail Dev Guide.

Required Parameters:
resourceName, addOnRequest
"""
EnableAddOn(args) = lightsail("EnableAddOn", args)

"""
Updates the specified attribute for a load balancer. You can only update one attribute at a time. The update load balancer attribute operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, attributeName, attributeValue
"""
UpdateLoadBalancerAttribute(args) = lightsail("UpdateLoadBalancerAttribute", args)

"""
Allows the update of one or more attributes of a database in Amazon Lightsail. Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window. The update relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
UpdateRelationalDatabase(args) = lightsail("UpdateRelationalDatabase", args)

"""
Creates an SSH key pair. The create key pair operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
keyPairName
"""
CreateKeyPair(args) = lightsail("CreateKeyPair", args)

"""
Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the load balancer is deleted, you will need to create a new load balancer, create a new certificate, and verify domain ownership again. The delete load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName
"""
DeleteLoadBalancer(args) = lightsail("DeleteLoadBalancer", args)

"""
Attempts to unpeer the Lightsail VPC from the user's default VPC.
"""
UnpeerVpc() = lightsail("UnpeerVpc")

"""
Creates a new database from an existing database snapshot in Amazon Lightsail. You can create a new database from a snapshot in if something goes wrong with your original database, or to change it to a different plan, such as a high availability or standard plan. The create relational database from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by relationalDatabaseSnapshotName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
CreateRelationalDatabaseFromSnapshot(args) = lightsail("CreateRelationalDatabaseFromSnapshot", args)

"""
Creates a Lightsail load balancer TLS certificate. TLS is just an updated, more secure version of Secure Socket Layer (SSL). The create load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, certificateName, certificateDomainName
"""
CreateLoadBalancerTlsCertificate(args) = lightsail("CreateLoadBalancerTlsCertificate", args)

"""
Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.

Required Parameters:
operationId
"""
GetOperation(args) = lightsail("GetOperation", args)

"""
Returns information about a specific static IP.

Required Parameters:
staticIpName
"""
GetStaticIp(args) = lightsail("GetStaticIp", args)

"""
Returns the port states for a specific virtual private server, or instance.

Required Parameters:
instanceName
"""
GetInstancePortStates(args) = lightsail("GetInstancePortStates", args)

"""
Closes the public ports on a specific Amazon Lightsail instance. The close instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
portInfo, instanceName
"""
CloseInstancePublicPorts(args) = lightsail("CloseInstancePublicPorts", args)

"""
Deletes a database snapshot in Amazon Lightsail. The delete relational database snapshot operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseSnapshotName
"""
DeleteRelationalDatabaseSnapshot(args) = lightsail("DeleteRelationalDatabaseSnapshot", args)

"""
Deletes a specific static IP from your account.

Required Parameters:
staticIpName
"""
ReleaseStaticIp(args) = lightsail("ReleaseStaticIp", args)

"""
Creates a snapshot of your database in Amazon Lightsail. You can use snapshots for backups, to make copies of a database, and to save data before deleting a database. The create relational database snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName, relationalDatabaseSnapshotName
"""
CreateRelationalDatabaseSnapshot(args) = lightsail("CreateRelationalDatabaseSnapshot", args)

"""
Returns information about all load balancers in an account. If you are describing a long list of load balancers, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
"""
GetLoadBalancers() = lightsail("GetLoadBalancers")

"""
Deletes the specified disk snapshot. When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk. The delete disk snapshot operation supports tag-based access control via resource tags applied to the resource identified by disk snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskSnapshotName
"""
DeleteDiskSnapshot(args) = lightsail("DeleteDiskSnapshot", args)

"""
Restarts a specific instance. The reboot instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceName
"""
RebootInstance(args) = lightsail("RebootInstance", args)

"""
Allows the update of one or more parameters of a database in Amazon Lightsail. Parameter updates don't cause outages; therefore, their application is not subject to the preferred maintenance window. However, there are two ways in which parameter updates are applied: dynamic or pending-reboot. Parameters marked with a dynamic apply type are applied immediately. Parameters marked with a pending-reboot apply type are applied only after the database is rebooted using the reboot relational database operation. The update relational database parameters operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName, parameters
"""
UpdateRelationalDatabaseParameters(args) = lightsail("UpdateRelationalDatabaseParameters", args)

"""
Deletes the specified set of tag keys and their values from the specified Amazon Lightsail resource. The untag resource operation supports tag-based access control via request tags and resource tags applied to the resource identified by resource name. For more information, see the Lightsail Dev Guide.

Required Parameters:
resourceName, tagKeys
"""
UntagResource(args) = lightsail("UntagResource", args)

"""
Returns the current, previous, or pending versions of the master user password for a Lightsail database. The GetRelationalDatabaseMasterUserPassword operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName.

Required Parameters:
relationalDatabaseName
"""
GetRelationalDatabaseMasterUserPassword(args) = lightsail("GetRelationalDatabaseMasterUserPassword", args)

"""
Deletes the specified block storage disk. The disk must be in the available state (not attached to a Lightsail instance).  The disk may remain in the deleting state for several minutes.  The delete disk operation supports tag-based access control via resource tags applied to the resource identified by disk name. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskName
"""
DeleteDisk(args) = lightsail("DeleteDisk", args)

"""
Returns the state of a specific instance. Works on one instance at a time.

Required Parameters:
instanceName
"""
GetInstanceState(args) = lightsail("GetInstanceState", args)

"""
Creates a Lightsail load balancer. To learn more about deciding whether to load balance your application, see Configure your Lightsail instances for load balancing. You can create up to 5 load balancers per AWS Region in your account. When you create a load balancer, you can specify a unique name and port settings. To change additional load balancer settings, use the UpdateLoadBalancerAttribute operation. The create load balancer operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, instancePort
"""
CreateLoadBalancer(args) = lightsail("CreateLoadBalancer", args)

"""
Returns information about a specific database snapshot in Amazon Lightsail.

Required Parameters:
relationalDatabaseSnapshotName
"""
GetRelationalDatabaseSnapshot(args) = lightsail("GetRelationalDatabaseSnapshot", args)

"""
Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported Amazon Lightsail snapshot. This operation results in a CloudFormation stack record that can be used to track the AWS CloudFormation stack created. Use the get cloud formation stack records operation to get a list of the CloudFormation stacks created.  Wait until after your new Amazon EC2 instance is created before running the create cloud formation stack operation again with the same export snapshot record. 

Required Parameters:
instances
"""
CreateCloudFormationStack(args) = lightsail("CreateCloudFormationStack", args)

"""
Creates one of the following entry records associated with the domain: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT). The create domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters:
domainName, domainEntry
"""
CreateDomainEntry(args) = lightsail("CreateDomainEntry", args)

"""
Returns information about a specific block storage disk snapshot.

Required Parameters:
diskSnapshotName
"""
GetDiskSnapshot(args) = lightsail("GetDiskSnapshot", args)

"""
Deletes a specific snapshot of a virtual private server (or instance). The delete instance snapshot operation supports tag-based access control via resource tags applied to the resource identified by instance snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceSnapshotName
"""
DeleteInstanceSnapshot(args) = lightsail("DeleteInstanceSnapshot", args)

"""
Returns information about all static IPs in the user's account.
"""
GetStaticIps() = lightsail("GetStaticIps")

"""
Returns a list of all valid regions for Amazon Lightsail. Use the include availability zones parameter to also return the Availability Zones in a region.
"""
GetRegions() = lightsail("GetRegions")

"""
Returns information about all Amazon Lightsail virtual private servers, or instances.
"""
GetInstances() = lightsail("GetInstances")

"""
Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or instance).
"""
GetBundles() = lightsail("GetBundles")

"""
Returns information about the specified Lightsail load balancer.

Required Parameters:
loadBalancerName
"""
GetLoadBalancer(args) = lightsail("GetLoadBalancer", args)

"""
Creates a domain resource for the specified domain (e.g., example.com). The create domain operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
domainName
"""
CreateDomain(args) = lightsail("CreateDomain", args)

"""
Updates a domain recordset after it is created. The update domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters:
domainName, domainEntry
"""
UpdateDomainEntry(args) = lightsail("UpdateDomainEntry", args)

"""
Returns a list of events for a specific database in Amazon Lightsail.

Required Parameters:
relationalDatabaseName
"""
GetRelationalDatabaseEvents(args) = lightsail("GetRelationalDatabaseEvents", args)

"""
Detaches a static IP from the Amazon Lightsail instance to which it is attached.

Required Parameters:
staticIpName
"""
DetachStaticIp(args) = lightsail("DetachStaticIp", args)

"""
Deletes a database in Amazon Lightsail. The delete relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
DeleteRelationalDatabase(args) = lightsail("DeleteRelationalDatabase", args)

"""
Attaches one or more Lightsail instances to a load balancer. After some time, the instances are attached to the load balancer and the health check status is available. The attach instances to load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, instanceNames
"""
AttachInstancesToLoadBalancer(args) = lightsail("AttachInstancesToLoadBalancer", args)

"""
Returns the data points of the specified metric for a database in Amazon Lightsail.

Required Parameters:
relationalDatabaseName, metricName, period, startTime, endTime, unit, statistics
"""
GetRelationalDatabaseMetricData(args) = lightsail("GetRelationalDatabaseMetricData", args)

"""
Returns the list of available instance images, or blueprints. You can use a blueprint to create a new instance already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.  Use active blueprints when creating new instances. Inactive blueprints are listed to support customers with existing instances and are not necessarily available to create new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. 
"""
GetBlueprints() = lightsail("GetBlueprints")

"""
Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database. You can use a bundle ID to create a new database with explicit performance specifications.
"""
GetRelationalDatabaseBundles() = lightsail("GetRelationalDatabaseBundles")

"""
Returns a Boolean value indicating whether your Lightsail VPC is peered.
"""
IsVpcPeered() = lightsail("IsVpcPeered")

"""
Returns information about all operations. Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to GetOperations use the maximum (last) statusChangedAt value from the previous request.
"""
GetOperations() = lightsail("GetOperations")

"""
Attaches a static IP address to a specific Amazon Lightsail instance.

Required Parameters:
staticIpName, instanceName
"""
AttachStaticIp(args) = lightsail("AttachStaticIp", args)

"""
Detaches the specified instances from a Lightsail load balancer. This operation waits until the instances are no longer needed before they are detached from the load balancer. The detach instances from load balancer operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, instanceNames
"""
DetachInstancesFromLoadBalancer(args) = lightsail("DetachInstancesFromLoadBalancer", args)

"""
Returns information about a specific Amazon Lightsail instance, which is a virtual private server.

Required Parameters:
instanceName
"""
GetInstance(args) = lightsail("GetInstance", args)

"""
Returns information about the TLS certificates that are associated with the specified Lightsail load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.

Required Parameters:
loadBalancerName
"""
GetLoadBalancerTlsCertificates(args) = lightsail("GetLoadBalancerTlsCertificates", args)

"""
Deletes the specified domain recordset and all of its domain records. The delete domain operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters:
domainName
"""
DeleteDomain(args) = lightsail("DeleteDomain", args)

"""
Returns information about all key pairs in the user's account.
"""
GetKeyPairs() = lightsail("GetKeyPairs")

"""
Returns the available automatic snapshots for an instance or disk. For more information, see the Lightsail Dev Guide.

Required Parameters:
resourceName
"""
GetAutoSnapshots(args) = lightsail("GetAutoSnapshots", args)

"""
Returns information about all of your database snapshots in Amazon Lightsail.
"""
GetRelationalDatabaseSnapshots() = lightsail("GetRelationalDatabaseSnapshots")

"""
Deletes a specific SSH key pair. The delete key pair operation supports tag-based access control via resource tags applied to the resource identified by key pair name. For more information, see the Lightsail Dev Guide.

Required Parameters:
keyPairName
"""
DeleteKeyPair(args) = lightsail("DeleteKeyPair", args)

"""
Returns information about all of your databases in Amazon Lightsail.
"""
GetRelationalDatabases() = lightsail("GetRelationalDatabases")

"""
Allocates a static IP address.

Required Parameters:
staticIpName
"""
AllocateStaticIp(args) = lightsail("AllocateStaticIp", args)

"""
Creates one or more Amazon Lightsail instances. The create instances operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceNames, availabilityZone, blueprintId, bundleId
"""
CreateInstances(args) = lightsail("CreateInstances", args)

"""
Tries to peer the Lightsail VPC with the user's default VPC.
"""
PeerVpc() = lightsail("PeerVpc")

"""
Returns information about a specific database in Amazon Lightsail.

Required Parameters:
relationalDatabaseName
"""
GetRelationalDatabase(args) = lightsail("GetRelationalDatabase", args)

"""
Stops a specific Amazon Lightsail instance that is currently running.  When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the Lightsail Dev Guide.  The stop instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceName
"""
StopInstance(args) = lightsail("StopInstance", args)

"""
Deletes an Amazon Lightsail instance. The delete instance operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceName
"""
DeleteInstance(args) = lightsail("DeleteInstance", args)

"""
Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or RDP clients to authenticate an instance. This operation enables the Lightsail browser-based SSH or RDP clients to connect to the instance after a host key mismatch.  Perform this operation only if you were expecting the host key or certificate mismatch or if you are familiar with the new host key or certificate on the instance. For more information, see Troubleshooting connection issues when using the Amazon Lightsail browser-based SSH or RDP client. 

Required Parameters:
instanceName
"""
DeleteKnownHostKeys(args) = lightsail("DeleteKnownHostKeys", args)

"""
Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an export snapshot record that can be used with the create cloud formation stack operation to create new Amazon EC2 instances. Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images (AMIs), and the instance system disk appears as an Amazon Elastic Block Store (Amazon EBS) volume. Exported disk snapshots appear in Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services Region in Amazon EC2 as the source Lightsail snapshot.  The export snapshot operation supports tag-based access control via resource tags applied to the resource identified by source snapshot name. For more information, see the Lightsail Dev Guide.  Use the get instance snapshots or get disk snapshots operations to get a list of snapshots that you can export to Amazon EC2. 

Required Parameters:
sourceSnapshotName
"""
ExportSnapshot(args) = lightsail("ExportSnapshot", args)

"""
Returns the names of all active (not deleted) resources.
"""
GetActiveNames() = lightsail("GetActiveNames")

"""
Returns information about all block storage disk snapshots in your AWS account and region. If you are describing a long list of disk snapshots, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
"""
GetDiskSnapshots() = lightsail("GetDiskSnapshots")

"""
Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail. In addition to the parameter names and values, this operation returns other information about each parameter. This information includes whether changes require a reboot, whether the parameter is modifiable, the allowed values, and the data types.

Required Parameters:
relationalDatabaseName
"""
GetRelationalDatabaseParameters(args) = lightsail("GetRelationalDatabaseParameters", args)

"""
Starts a specific database from a stopped state in Amazon Lightsail. To restart a database, use the reboot relational database operation. The start relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
StartRelationalDatabase(args) = lightsail("StartRelationalDatabase", args)

"""
Returns the CloudFormation stack record created as a result of the create cloud formation stack operation. An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail snapshot.
"""
GetCloudFormationStackRecords() = lightsail("GetCloudFormationStackRecords")

"""
Deletes a specific domain entry. The delete domain entry operation supports tag-based access control via resource tags applied to the resource identified by domain name. For more information, see the Lightsail Dev Guide.

Required Parameters:
domainName, domainEntry
"""
DeleteDomainEntry(args) = lightsail("DeleteDomainEntry", args)

"""
Deletes an automatic snapshot of an instance or disk. For more information, see the Lightsail Dev Guide.

Required Parameters:
resourceName, date
"""
DeleteAutoSnapshot(args) = lightsail("DeleteAutoSnapshot", args)

"""
Creates a new database in Amazon Lightsail. The create relational database operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName, relationalDatabaseBlueprintId, relationalDatabaseBundleId, masterDatabaseName, masterUsername
"""
CreateRelationalDatabase(args) = lightsail("CreateRelationalDatabase", args)

"""
Returns a list of available log streams for a specific database in Amazon Lightsail.

Required Parameters:
relationalDatabaseName
"""
GetRelationalDatabaseLogStreams(args) = lightsail("GetRelationalDatabaseLogStreams", args)

"""
Copies a manual snapshot of an instance or disk as another manual snapshot, or copies an automatic snapshot of an instance or disk as a manual snapshot. This operation can also be used to copy a manual or automatic snapshot of an instance or a disk from one AWS Region to another in Amazon Lightsail. When copying a manual snapshot, be sure to define the source region, source snapshot name, and target snapshot name parameters. When copying an automatic snapshot, be sure to define the source region, source resource name, target snapshot name, and either the restore date or the use latest restorable auto snapshot parameters.

Required Parameters:
targetSnapshotName, sourceRegion
"""
CopySnapshot(args) = lightsail("CopySnapshot", args)

"""
Returns information about health metrics for your Lightsail load balancer.

Required Parameters:
loadBalancerName, metricName, period, startTime, endTime, unit, statistics
"""
GetLoadBalancerMetricData(args) = lightsail("GetLoadBalancerMetricData", args)

"""
Adds public ports to an Amazon Lightsail instance. The open instance public ports operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
portInfo, instanceName
"""
OpenInstancePublicPorts(args) = lightsail("OpenInstancePublicPorts", args)

"""
Creates a snapshot of a specific virtual private server, or instance. You can use a snapshot to create a new instance that is based on that snapshot. The create instance snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceSnapshotName, instanceName
"""
CreateInstanceSnapshot(args) = lightsail("CreateInstanceSnapshot", args)

"""
Creates a block storage disk that can be attached to an Amazon Lightsail instance in the same Availability Zone (e.g., us-east-2a). The create disk operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskName, availabilityZone, sizeInGb
"""
CreateDisk(args) = lightsail("CreateDisk", args)

"""
Returns a list of all domains in the user's account.
"""
GetDomains() = lightsail("GetDomains")

"""
Creates a block storage disk from a manual or automatic snapshot of a disk. The resulting disk can be attached to an Amazon Lightsail instance in the same Availability Zone (e.g., us-east-2a). The create disk from snapshot operation supports tag-based access control via request tags and resource tags applied to the resource identified by disk snapshot name. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskName, availabilityZone, sizeInGb
"""
CreateDiskFromSnapshot(args) = lightsail("CreateDiskFromSnapshot", args)

"""
Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.

Required Parameters:
instanceName, metricName, period, startTime, endTime, unit, statistics
"""
GetInstanceMetricData(args) = lightsail("GetInstanceMetricData", args)

"""
Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance. The get instance access details operation supports tag-based access control via resource tags applied to the resource identified by instance name. For more information, see the Lightsail Dev Guide.

Required Parameters:
instanceName
"""
GetInstanceAccessDetails(args) = lightsail("GetInstanceAccessDetails", args)

"""
Returns information about a specific domain recordset.

Required Parameters:
domainName
"""
GetDomain(args) = lightsail("GetDomain", args)

"""
Stops a specific database that is currently running in Amazon Lightsail. The stop relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
StopRelationalDatabase(args) = lightsail("StopRelationalDatabase", args)

"""
Returns information about all block storage disks in your AWS account and region. If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
"""
GetDisks() = lightsail("GetDisks")

"""
Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the attach load balancer tls certificate operation with the non-attached certificate, and it will replace the existing one and become the attached certificate. The attach load balancer tls certificate operation supports tag-based access control via resource tags applied to the resource identified by load balancer name. For more information, see the Lightsail Dev Guide.

Required Parameters:
loadBalancerName, certificateName
"""
AttachLoadBalancerTlsCertificate(args) = lightsail("AttachLoadBalancerTlsCertificate", args)

"""
Restarts a specific database in Amazon Lightsail. The reboot relational database operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the Lightsail Dev Guide.

Required Parameters:
relationalDatabaseName
"""
RebootRelationalDatabase(args) = lightsail("RebootRelationalDatabase", args)

"""
Creates a snapshot of a block storage disk. You can use snapshots for backups, to make copies of disks, and to save data before shutting down a Lightsail instance. You can take a snapshot of an attached disk that is in use; however, snapshots only capture data that has been written to your disk at the time the snapshot command is issued. This may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the disk long enough to take a snapshot, your snapshot should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should unmount the disk from within the Lightsail instance, issue the create disk snapshot command, and then remount the disk to ensure a consistent and complete snapshot. You may remount and use your disk while the snapshot status is pending. You can also use this operation to create a snapshot of an instance's system volume. You might want to do this, for example, to recover data from the system volume of a botched instance or to create a backup of the system volume like you would for a block storage disk. To create a snapshot of a system volume, just define the instance name parameter when issuing the snapshot command, and a snapshot of the defined instance's system volume will be created. After the snapshot is available, you can create a block storage disk from the snapshot and attach it to a running instance to access the data on the disk. The create disk snapshot operation supports tag-based access control via request tags. For more information, see the Lightsail Dev Guide.

Required Parameters:
diskSnapshotName
"""
CreateDiskSnapshot(args) = lightsail("CreateDiskSnapshot", args)

"""
Disables an add-on for an Amazon Lightsail resource. For more information, see the Lightsail Dev Guide.

Required Parameters:
addOnType, resourceName
"""
DisableAddOn(args) = lightsail("DisableAddOn", args)
