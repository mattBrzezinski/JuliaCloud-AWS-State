include("../AWSCorePrototypeServices.jl")
using .Services: redshift

"""
Describes properties of scheduled actions. 
"""
DescribeScheduledActions() = redshift("DescribeScheduledActions")

"""
Deletes the specified snapshot copy grant.

Required Parameters:
SnapshotCopyGrantName
"""
DeleteSnapshotCopyGrant(args) = redshift("DeleteSnapshotCopyGrant", args)

"""
Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see AuthorizeClusterSecurityGroupIngress. For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide. 

Required Parameters:
ClusterSecurityGroupName
"""
RevokeClusterSecurityGroupIngress(args) = redshift("RevokeClusterSecurityGroupIngress", args)

"""
Creates an Amazon Redshift parameter group. Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using ModifyCluster.  Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ParameterGroupName, ParameterGroupFamily, Description
"""
CreateClusterParameterGroup(args) = redshift("CreateClusterParameterGroup", args)

"""
Modifies the maintenance settings of a cluster.

Required Parameters:
ClusterIdentifier
"""
ModifyClusterMaintenance(args) = redshift("ModifyClusterMaintenance", args)

"""
Returns a list of snapshot schedules. 
"""
DescribeSnapshotSchedules() = redshift("DescribeSnapshotSchedules")

"""
Modifies the settings for a cluster. You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change. You can add another security or parameter group, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterIdentifier
"""
ModifyCluster(args) = redshift("ModifyCluster", args)

"""
Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all parameter groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeClusterParameterGroups() = redshift("DescribeClusterParameterGroups")

"""
Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action. For example, you can create a schedule of when to run the ResizeCluster API operation. 

Required Parameters:
ScheduledActionName, TargetAction, Schedule, IamRole
"""
CreateScheduledAction(args) = redshift("CreateScheduledAction", args)

"""
Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the ModifyCluster API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore. If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterIdentifier, SnapshotIdentifier
"""
RestoreFromClusterSnapshot(args) = redshift("RestoreFromClusterSnapshot", args)

"""
Creates a manual snapshot of the specified cluster. The cluster must be in the available state.   For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters:
SnapshotIdentifier, ClusterIdentifier
"""
CreateClusterSnapshot(args) = redshift("CreateClusterSnapshot", args)

"""
Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to Amazon Redshift Event Notifications.
"""
DescribeEventCategories() = redshift("DescribeEventCategories")

"""
Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the DescribeReservedNodeOfferings API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve.   For more information about reserved node offerings, go to Purchasing Reserved Nodes in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ReservedNodeOfferingId
"""
PurchaseReservedNodeOffering(args) = redshift("PurchaseReservedNodeOffering", args)

"""
Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters:
SnapshotIdentifier, AccountWithRestoreAccess
"""
RevokeSnapshotAccess(args) = redshift("RevokeSnapshotAccess", args)

"""
Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.  For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all security groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeClusterSecurityGroups() = redshift("DescribeClusterSecurityGroups")

"""
Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to PurchaseReservedNodeOffering to reserve one or more nodes for your Amazon Redshift cluster.   For more information about reserved node offerings, go to Purchasing Reserved Nodes in the Amazon Redshift Cluster Management Guide.
"""
DescribeReservedNodeOfferings() = redshift("DescribeReservedNodeOfferings")

"""
Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web service indicates that the request was received correctly. Use DescribeClusters to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. If you want to shut down the cluster and retain it for future use, set SkipFinalClusterSnapshot to false and specify a name for FinalClusterSnapshotIdentifier. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster.   For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterIdentifier
"""
DeleteCluster(args) = redshift("DeleteCluster", args)

"""
Authorizes the specified AWS customer account to restore the specified snapshot.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters:
SnapshotIdentifier, AccountWithRestoreAccess
"""
AuthorizeSnapshotAccess(args) = redshift("AuthorizeSnapshotAccess", args)

"""
Cancels a resize operation for a cluster.

Required Parameters:
ClusterIdentifier
"""
CancelResize(args) = redshift("CancelResize", args)

"""
Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group. If you authorize access to an Amazon EC2 security group, specify EC2SecurityGroupName and EC2SecurityGroupOwnerId. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS Region.  If you authorize access to a CIDR/IP address range, specify CIDRIP. For an overview of CIDR blocks, see the Wikipedia article on Classless Inter-Domain Routing.  You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to Working with Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterSecurityGroupName
"""
AuthorizeClusterSecurityGroupIngress(args) = redshift("AuthorizeClusterSecurityGroupIngress", args)

"""
Deletes a scheduled action. 

Required Parameters:
ScheduledActionName
"""
DeleteScheduledAction(args) = redshift("DeleteScheduledAction", args)

"""
Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.

Required Parameters:
ReservedNodeId
"""
GetReservedNodeExchangeOfferings(args) = redshift("GetReservedNodeExchangeOfferings", args)

"""
Deletes an Amazon Redshift event notification subscription.

Required Parameters:
SubscriptionName
"""
DeleteEventSubscription(args) = redshift("DeleteEventSubscription", args)

"""
Creates a new cluster with the specified parameters. To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterIdentifier, NodeType, MasterUsername, MasterUserPassword
"""
CreateCluster(args) = redshift("CreateCluster", args)

"""
Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default". To reset the entire parameter group specify the ResetAllParameters parameter. For parameter changes to take effect you must reboot any associated clusters. 

Required Parameters:
ParameterGroupName
"""
ResetClusterParameterGroup(args) = redshift("ResetClusterParameterGroup", args)

"""
Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.  For more information about managing snapshot copy grants, go to Amazon Redshift Database Encryption in the Amazon Redshift Cluster Management Guide. 

Required Parameters:
SnapshotCopyGrantName
"""
CreateSnapshotCopyGrant(args) = redshift("CreateSnapshotCopyGrant", args)

"""
Modifies an existing Amazon Redshift event notification subscription.

Required Parameters:
SubscriptionName
"""
ModifyEventSubscription(args) = redshift("ModifyEventSubscription", args)

"""
Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases. The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to Hardware Security Modules in the Amazon Redshift Cluster Management Guide.

Required Parameters:
HsmClientCertificateIdentifier
"""
CreateHsmClientCertificate(args) = redshift("CreateHsmClientCertificate", args)

"""
Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console. You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters. If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.

Required Parameters:
SubscriptionName, SnsTopicArn
"""
CreateEventSubscription(args) = redshift("CreateEventSubscription", args)

"""
Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type.

Required Parameters:
ActionType
"""
DescribeNodeConfigurationOptions(args) = redshift("DescribeNodeConfigurationOptions", args)

"""
Deletes the specified HSM client certificate.

Required Parameters:
HsmClientCertificateIdentifier
"""
DeleteHsmClientCertificate(args) = redshift("DeleteHsmClientCertificate", args)

"""
Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state. When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters:
SourceSnapshotIdentifier, TargetSnapshotIdentifier
"""
CopyClusterSnapshot(args) = redshift("CopyClusterSnapshot", args)

"""
Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.

Required Parameters:
ClusterSubnetGroupName, SubnetIds
"""
ModifyClusterSubnetGroup(args) = redshift("ModifyClusterSubnetGroup", args)

"""
Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.

Required Parameters:
ClusterIdentifier, RevisionTarget
"""
ModifyClusterDbRevision(args) = redshift("ModifyClusterDbRevision", args)

"""
Modifies the settings for a set of cluster snapshots.

Required Parameters:
SnapshotIdentifierList
"""
BatchModifyClusterSnapshots(args) = redshift("BatchModifyClusterSnapshots", args)

"""
Deletes tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.

Required Parameters:
ResourceName, TagKeys
"""
DeleteTags(args) = redshift("DeleteTags", args)

"""
Returns a list of all the available maintenance tracks.
"""
DescribeClusterTracks() = redshift("DescribeClusterTracks")

"""
Adds tags to a cluster. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, you will receive an error and the attempt will fail. If you specify a key that already exists for the resource, the value for that key will be updated with the new value.

Required Parameters:
ResourceName, Tags
"""
CreateTags(args) = redshift("CreateTags", args)

"""
Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM client certificates that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeHsmClientCertificates() = redshift("DescribeHsmClientCertificates")

"""
Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database. The action returns the database user name prefixed with IAM: if AutoCreate is False or IAMA: if AutoCreate is True. You can optionally specify one or more database user groups that the user will join at log on. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see Using IAM Authentication to Generate Database User Credentials in the Amazon Redshift Cluster Management Guide. The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see Resource Policies for GetClusterCredentials in the Amazon Redshift Cluster Management Guide. If the DbGroups parameter is specified, the IAM policy must allow the redshift:JoinGroup action with access to the listed dbgroups.  In addition, if the AutoCreate parameter is set to True, then the policy must include the redshift:CreateClusterUser privilege. If the DbName parameter is specified, the IAM policy must allow access to the resource dbname for the specified database name. 

Required Parameters:
DbUser, ClusterIdentifier
"""
GetClusterCredentials(args) = redshift("GetClusterCredentials", args)

"""
Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subnet groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeClusterSubnetGroups() = redshift("DescribeClusterSubnetGroups")

"""
Deletes a snapshot schedule.

Required Parameters:
ScheduleIdentifier
"""
DeleteSnapshotSchedule(args) = redshift("DeleteSnapshotSchedule", args)

"""
Deletes a set of cluster snapshots.

Required Parameters:
Identifiers
"""
BatchDeleteClusterSnapshots(args) = redshift("BatchDeleteClusterSnapshots", args)

"""
Deletes the specified Amazon Redshift HSM configuration.

Required Parameters:
HsmConfigurationIdentifier
"""
DeleteHsmConfiguration(args) = redshift("DeleteHsmConfiguration", args)

"""
Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters. If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeClusterSnapshots() = redshift("DescribeClusterSnapshots")

"""
Modifies the settings for a snapshot. This exanmple modifies the manual retention period setting for a cluster snapshot.

Required Parameters:
SnapshotIdentifier
"""
ModifyClusterSnapshot(args) = redshift("ModifyClusterSnapshot", args)

"""
Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.  For information about subnet groups, go to Amazon Redshift Cluster Subnet Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterSubnetGroupName, Description, SubnetIds
"""
CreateClusterSubnetGroup(args) = redshift("CreateClusterSubnetGroup", args)

"""
Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs. 

Required Parameters:
ReservedNodeId, TargetReservedNodeOfferingId
"""
AcceptReservedNodeExchange(args) = redshift("AcceptReservedNodeExchange", args)

"""
Lists the status of one or more table restore requests made using the RestoreTableFromClusterSnapshot API action. If you don't specify a value for the TableRestoreRequestId parameter, then DescribeTableRestoreStatus returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise DescribeTableRestoreStatus returns the status of the table specified by TableRestoreRequestId.
"""
DescribeTableRestoreStatus() = redshift("DescribeTableRestoreStatus")

"""
Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on. The following are limitations for DescribeTags:    You cannot specify an ARN and a resource-type value together in the same request.   You cannot use the MaxRecords and Marker parameters together with the ARN parameter.   The MaxRecords parameter can be a range from 10 to 50 results to return in a request.   If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all resources that have any combination of those values are returned. If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeTags() = redshift("DescribeTags")

"""
Deletes the specified cluster subnet group.

Required Parameters:
ClusterSubnetGroupName
"""
DeleteClusterSubnetGroup(args) = redshift("DeleteClusterSubnetGroup", args)

"""
Modifies a scheduled action. 

Required Parameters:
ScheduledActionName
"""
ModifyScheduledAction(args) = redshift("ModifyScheduledAction", args)

"""
Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.  For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterSecurityGroupName, Description
"""
CreateClusterSecurityGroup(args) = redshift("CreateClusterSecurityGroup", args)

"""
Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM. In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to Hardware Security Modules in the Amazon Redshift Cluster Management Guide.

Required Parameters:
HsmConfigurationIdentifier, Description, HsmIpAddress, HsmPartitionName, HsmPartitionPassword, HsmServerPublicCertificate
"""
CreateHsmConfiguration(args) = redshift("CreateHsmConfiguration", args)

"""
Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to rebooting. A cluster event is created when the reboot is completed. Any pending cluster modifications (see ModifyCluster) are applied at this reboot. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. 

Required Parameters:
ClusterIdentifier
"""
RebootCluster(args) = redshift("RebootCluster", args)

"""
Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM connections that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeHsmConfigurations() = redshift("DescribeHsmConfigurations")

"""
Returns account level backups storage size and provisional storage.
"""
DescribeStorage() = redshift("DescribeStorage")

"""
Returns a list of snapshot copy grants owned by the AWS account in the destination region.  For more information about managing snapshot copy grants, go to Amazon Redshift Database Encryption in the Amazon Redshift Cluster Management Guide. 
"""
DescribeSnapshotCopyGrants() = redshift("DescribeSnapshotCopyGrants")

"""
Deletes the specified manual snapshot. The snapshot must be in the available state, with no other users authorized to access the snapshot.  Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.

Required Parameters:
SnapshotIdentifier
"""
DeleteClusterSnapshot(args) = redshift("DeleteClusterSnapshot", args)

"""
Deletes an Amazon Redshift security group.  You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.   For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ClusterSecurityGroupName
"""
DeleteClusterSecurityGroup(args) = redshift("DeleteClusterSecurityGroup", args)

"""
Enables the automatic copy of snapshots from one region to another region for a specified cluster.

Required Parameters:
ClusterIdentifier, DestinationRegion
"""
EnableSnapshotCopy(args) = redshift("EnableSnapshotCopy", args)

"""
Modifies a snapshot schedule. Any schedule associated with a cluster is modified asynchronously.

Required Parameters:
ScheduleIdentifier, ScheduleDefinitions
"""
ModifySnapshotSchedule(args) = redshift("ModifySnapshotSchedule", args)

"""
Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on. You can specify source filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from ModifyClusterParameterGroup, you can specify source equal to user.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ParameterGroupName
"""
DescribeClusterParameters(args) = redshift("DescribeClusterParameters", args)

"""
Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all clusters that have any combination of those values are returned. If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeClusters() = redshift("DescribeClusters")

"""
Returns a list of parameter settings for the specified parameter group family.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ParameterGroupFamily
"""
DescribeDefaultClusterParameters(args) = redshift("DescribeDefaultClusterParameters", args)

"""
Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a HTTP 404 error is returned. If a resize operation was initiated and completed, the status of the resize remains as SUCCEEDED until the next resize.  A resize operation can be requested using ModifyCluster and specifying a different number or type of nodes for the cluster. 

Required Parameters:
ClusterIdentifier
"""
DescribeResize(args) = redshift("DescribeResize", args)

"""
Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. A cluster can have up to 10 IAM roles associated at any time.

Required Parameters:
ClusterIdentifier
"""
ModifyClusterIamRoles(args) = redshift("ModifyClusterIamRoles", args)

"""
Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS Region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.
"""
DescribeOrderableClusterOptions() = redshift("DescribeOrderableClusterOptions")

"""
Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
"""
DescribeEvents() = redshift("DescribeEvents")

"""
Disables the automatic copying of snapshots from one region to another region for a specified cluster. If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use DeleteSnapshotCopyGrant to delete the grant that grants Amazon Redshift permission to the CMK in the destination region. 

Required Parameters:
ClusterIdentifier
"""
DisableSnapshotCopy(args) = redshift("DisableSnapshotCopy", args)

"""
Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from. You cannot use RestoreTableFromClusterSnapshot to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call RestoreTableFromClusterSnapshot. When you have renamed your original table, then you can pass the original name of the table as the NewTableName parameter value in the call to RestoreTableFromClusterSnapshot. This way, you can replace the original table with the table created from the snapshot.

Required Parameters:
ClusterIdentifier, SnapshotIdentifier, SourceDatabaseName, SourceTableName, NewTableName
"""
RestoreTableFromClusterSnapshot(args) = redshift("RestoreTableFromClusterSnapshot", args)

"""
Returns a list of attributes attached to an account
"""
DescribeAccountAttributes() = redshift("DescribeAccountAttributes")

"""
Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.
"""
DescribeClusterVersions() = redshift("DescribeClusterVersions")

"""
Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subscriptions that have any combination of those values are returned. If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.
"""
DescribeEventSubscriptions() = redshift("DescribeEventSubscriptions")

"""
Returns an array of ClusterDbRevision objects.
"""
DescribeClusterDbRevisions() = redshift("DescribeClusterDbRevisions")

"""
Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

Required Parameters:
ClusterIdentifier
"""
DisableLogging(args) = redshift("DisableLogging", args)

"""
Creates a snapshot schedule with the rate of every 12 hours.
"""
CreateSnapshotSchedule() = redshift("CreateSnapshotSchedule")

"""
Modifies the parameters of a parameter group.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters:
ParameterGroupName, Parameters
"""
ModifyClusterParameterGroup(args) = redshift("ModifyClusterParameterGroup", args)

"""
Modifies the number of days to retain snapshots in the destination AWS Region after they are copied from the source AWS Region. By default, this operation only changes the retention period of copied automated snapshots. The retention periods for both new and existing copied automated snapshots are updated with the new retention period. You can set the manual option to change only the retention periods of copied manual snapshots. If you set this option, only newly copied manual snapshots have the new retention period. 

Required Parameters:
ClusterIdentifier, RetentionPeriod
"""
ModifySnapshotCopyRetentionPeriod(args) = redshift("ModifySnapshotCopyRetentionPeriod", args)

"""
Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

Required Parameters:
ClusterIdentifier, BucketName
"""
EnableLogging(args) = redshift("EnableLogging", args)

"""
Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method.  Elastic resize operations have the following restrictions:   You can only resize clusters of the following types:   dc2.large   dc2.8xlarge   ds2.xlarge   ds2.8xlarge   ra3.16xlarge     The type of nodes that you add must match the node type for the cluster.  

Required Parameters:
ClusterIdentifier, NumberOfNodes
"""
ResizeCluster(args) = redshift("ResizeCluster", args)

"""
Returns the descriptions of the reserved nodes.
"""
DescribeReservedNodes() = redshift("DescribeReservedNodes")

"""
Deletes a specified Amazon Redshift parameter group.  You cannot delete a parameter group if it is associated with a cluster. 

Required Parameters:
ParameterGroupName
"""
DeleteClusterParameterGroup(args) = redshift("DeleteClusterParameterGroup", args)

"""
Modifies a snapshot schedule for a cluster.

Required Parameters:
ClusterIdentifier
"""
ModifyClusterSnapshotSchedule(args) = redshift("ModifyClusterSnapshotSchedule", args)

"""
Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.

Required Parameters:
ClusterIdentifier
"""
DescribeLoggingStatus(args) = redshift("DescribeLoggingStatus", args)

"""
Rotates the encryption keys for a cluster.

Required Parameters:
ClusterIdentifier
"""
RotateEncryptionKey(args) = redshift("RotateEncryptionKey", args)