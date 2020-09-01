include("../AWSCorePrototypeServices.jl")
using .Services: redshift

"""
    DescribeScheduledActions()

Describes properties of scheduled actions. 

Optional Parameters
{
  "ScheduledActionName": "The name of the scheduled action to retrieve. ",
  "StartTime": "The start time in UTC of the scheduled actions to retrieve. Only active scheduled actions that have invocations after this time are retrieved.",
  "Active": "If true, retrieve only active scheduled actions. If false, retrieve only disabled scheduled actions. ",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeScheduledActions request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "EndTime": "The end time in UTC of the scheduled action to retrieve. Only active scheduled actions that have invocations before this time are retrieved.",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "TargetActionType": "The type of the scheduled actions to retrieve. ",
  "Filters": "List of scheduled action filters. "
}
"""

DescribeScheduledActions() = redshift("DescribeScheduledActions")
DescribeScheduledActions(args) = redshift("DescribeScheduledActions", args)

"""
    DeleteSnapshotCopyGrant()

Deletes the specified snapshot copy grant.

Required Parameters
{
  "SnapshotCopyGrantName": "The name of the snapshot copy grant to delete."
}
"""
DeleteSnapshotCopyGrant(args) = redshift("DeleteSnapshotCopyGrant", args)

"""
    RevokeClusterSecurityGroupIngress()

Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see AuthorizeClusterSecurityGroupIngress. For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide. 

Required Parameters
{
  "ClusterSecurityGroupName": "The name of the security Group from which to revoke the ingress rule."
}

Optional Parameters
{
  "CIDRIP": "The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If CIDRIP is specified, EC2SecurityGroupName and EC2SecurityGroupOwnerId cannot be provided. ",
  "EC2SecurityGroupOwnerId": "The AWS account number of the owner of the security group specified in the EC2SecurityGroupName parameter. The AWS access key ID is not an acceptable value. If EC2SecurityGroupOwnerId is specified, EC2SecurityGroupName must also be provided. and CIDRIP cannot be provided.  Example: 111122223333 ",
  "EC2SecurityGroupName": "The name of the EC2 Security Group whose access is to be revoked. If EC2SecurityGroupName is specified, EC2SecurityGroupOwnerId must also be provided and CIDRIP cannot be provided. "
}
"""
RevokeClusterSecurityGroupIngress(args) = redshift("RevokeClusterSecurityGroupIngress", args)

"""
    CreateClusterParameterGroup()

Creates an Amazon Redshift parameter group. Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using ModifyCluster.  Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "Description": "A description of the parameter group.",
  "ParameterGroupName": "The name of the cluster parameter group. Constraints:   Must be 1 to 255 alphanumeric characters or hyphens   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique withing your AWS account.    This value is stored as a lower-case string. ",
  "ParameterGroupFamily": "The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters. To get a list of valid parameter group family names, you can call DescribeClusterParameterGroups. By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is \"redshift-1.0\". "
}

Optional Parameters
{
  "Tags": "A list of tag instances."
}
"""
CreateClusterParameterGroup(args) = redshift("CreateClusterParameterGroup", args)

"""
    ModifyClusterMaintenance()

Modifies the maintenance settings of a cluster.

Required Parameters
{
  "ClusterIdentifier": "A unique identifier for the cluster."
}

Optional Parameters
{
  "DeferMaintenanceStartTime": "A timestamp indicating the start time for the deferred maintenance window.",
  "DeferMaintenance": "A boolean indicating whether to enable the deferred maintenance window. ",
  "DeferMaintenanceEndTime": "A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.",
  "DeferMaintenanceDuration": "An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.",
  "DeferMaintenanceIdentifier": "A unique identifier for the deferred maintenance window."
}
"""
ModifyClusterMaintenance(args) = redshift("ModifyClusterMaintenance", args)

"""
    DescribeSnapshotSchedules()

Returns a list of snapshot schedules. 

Optional Parameters
{
  "ClusterIdentifier": "The unique identifier for the cluster whose snapshot schedules you want to view.",
  "ScheduleIdentifier": "A unique identifier for a snapshot schedule.",
  "Marker": "A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the marker parameter and retrying the command. If the marker field is empty, all response records have been retrieved for the request.",
  "MaxRecords": "The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.",
  "TagValues": "The value corresponding to the key of the snapshot schedule tag.",
  "TagKeys": "The key value for a snapshot schedule tag."
}
"""

DescribeSnapshotSchedules() = redshift("DescribeSnapshotSchedules")
DescribeSnapshotSchedules(args) = redshift("DescribeSnapshotSchedules", args)

"""
    ModifyCluster()

Modifies the settings for a cluster. You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change. You can add another security or parameter group, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the cluster to be modified. Example: examplecluster "
}

Optional Parameters
{
  "NumberOfNodes": "The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.  For more information about resizing clusters, go to Resizing Clusters in Amazon Redshift in the Amazon Redshift Cluster Management Guide. Valid Values: Integer greater than 0.",
  "PubliclyAccessible": "If true, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.",
  "PreferredMaintenanceWindow": "The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage. This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied. Default: Uses existing setting. Format: ddd:hh24:mi-ddd:hh24:mi, for example wed:07:30-wed:08:00. Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes.",
  "EnhancedVpcRouting": "An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide. If this option is true, enhanced VPC routing is enabled.  Default: false",
  "HsmConfigurationIdentifier": "Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.",
  "AllowVersionUpgrade": "If true, major version upgrades will be applied automatically to the cluster during the maintenance window.  Default: false ",
  "NodeType": "The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.  For more information about resizing clusters, go to Resizing Clusters in Amazon Redshift in the Amazon Redshift Cluster Management Guide. Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge ",
  "ClusterType": "The new cluster type. When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use DescribeResize to track the progress of the resize request.  Valid Values:  multi-node | single-node  ",
  "ClusterSecurityGroups": "A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible. Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster. Constraints:   Must be 1 to 255 alphanumeric characters or hyphens   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens  ",
  "MaintenanceTrackName": "The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the PendingModifiedValues for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.",
  "ElasticIp": "The Elastic IP (EIP) address for the cluster. Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to Supported Platforms to Launch Your Cluster in the Amazon Redshift Cluster Management Guide.",
  "ClusterVersion": "The new version number of the Amazon Redshift engine to upgrade to. For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide. Example: 1.0 ",
  "Encrypted": "Indicates whether the cluster is encrypted. If the value is encrypted (true) and you provide a value for the KmsKeyId parameter, we encrypt the cluster with the provided KmsKeyId. If you don't provide a KmsKeyId, we encrypt with the default key.  If the value is not encrypted (false), then the cluster is decrypted. ",
  "ClusterParameterGroupName": "The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use RebootCluster.  Default: Uses existing setting. Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.",
  "MasterUserPassword": "The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the MasterUserPassword element exists in the PendingModifiedValues element of the operation response.   Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.  Default: Uses existing setting. Constraints:   Must be between 8 and 64 characters in length.   Must contain at least one uppercase letter.   Must contain at least one lowercase letter.   Must contain one number.   Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), \" (double quote),  , /, @, or space.  ",
  "ManualSnapshotRetentionPeriod": "The default for number of days that a newly created manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. This value doesn't retroactively change the retention periods of existing manual snapshots. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.",
  "AutomatedSnapshotRetentionPeriod": "The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with CreateClusterSnapshot.  If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted. Default: Uses existing setting. Constraints: Must be a value from 0 to 35.",
  "NewClusterIdentifier": "The new identifier for the cluster. Constraints:   Must contain from 1 to 63 alphanumeric characters or hyphens.   Alphabetic characters must be lowercase.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique for all clusters within an AWS account.   Example: examplecluster ",
  "HsmClientCertificateIdentifier": "Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.",
  "VpcSecurityGroupIds": "A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.",
  "KmsKeyId": "The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster."
}
"""
ModifyCluster(args) = redshift("ModifyCluster", args)

"""
    DescribeClusterParameterGroups()

Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all parameter groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterParameterGroups request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.",
  "ParameterGroupName": "The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.",
  "TagKeys": "A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them."
}
"""

DescribeClusterParameterGroups() = redshift("DescribeClusterParameterGroups")
DescribeClusterParameterGroups(args) = redshift("DescribeClusterParameterGroups", args)

"""
    CreateScheduledAction()

Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action. For example, you can create a schedule of when to run the ResizeCluster API operation. 

Required Parameters
{
  "ScheduledActionName": "The name of the scheduled action. The name must be unique within an account. For more information about this parameter, see ScheduledAction. ",
  "TargetAction": "A JSON format string of the Amazon Redshift API operation with input parameters. For more information about this parameter, see ScheduledAction. ",
  "Schedule": "The schedule in at( ) or cron( ) format. For more information about this parameter, see ScheduledAction.",
  "IamRole": "The IAM role to assume to run the target action. For more information about this parameter, see ScheduledAction. "
}

Optional Parameters
{
  "ScheduledActionDescription": "The description of the scheduled action. ",
  "StartTime": "The start time in UTC of the scheduled action. Before this time, the scheduled action does not trigger. For more information about this parameter, see ScheduledAction.",
  "EndTime": "The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger. For more information about this parameter, see ScheduledAction. ",
  "Enable": "If true, the schedule is enabled. If false, the scheduled action does not trigger. For more information about state of the scheduled action, see ScheduledAction. "
}
"""
CreateScheduledAction(args) = redshift("CreateScheduledAction", args)

"""
    PauseCluster()

Pauses a cluster.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster to be paused."
}
"""
PauseCluster(args) = redshift("PauseCluster", args)

"""
    RestoreFromClusterSnapshot()

Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the ModifyCluster API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore. If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster that will be created from restoring the snapshot. Constraints:   Must contain from 1 to 63 alphanumeric characters or hyphens.   Alphabetic characters must be lowercase.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique for all clusters within an AWS account.  ",
  "SnapshotIdentifier": "The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive. Example: my-snapshot-id "
}

Optional Parameters
{
  "NumberOfNodes": "The number of nodes specified when provisioning the restored cluster.",
  "PubliclyAccessible": "If true, the cluster can be accessed from a public network. ",
  "PreferredMaintenanceWindow": "The weekly time range (in UTC) during which automated cluster maintenance can occur.  Format: ddd:hh24:mi-ddd:hh24:mi   Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see Maintenance Windows in Amazon Redshift Cluster Management Guide.  Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Minimum 30-minute window.",
  "ClusterSubnetGroupName": "The name of the subnet group where you want to cluster restored. A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.",
  "EnhancedVpcRouting": "An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide. If this option is true, enhanced VPC routing is enabled.  Default: false",
  "HsmConfigurationIdentifier": "Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.",
  "AllowVersionUpgrade": "If true, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.  Default: true ",
  "NodeType": "The node type that the restored cluster will be provisioned with. Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a dc2.8large cluster. For more information about node types, see  About Clusters and Nodes in the Amazon Redshift Cluster Management Guide. ",
  "AdditionalInfo": "Reserved.",
  "ClusterSecurityGroups": "A list of security groups to be associated with this cluster. Default: The default cluster security group for Amazon Redshift. Cluster security groups only apply to clusters outside of VPCs.",
  "MaintenanceTrackName": "The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.",
  "ElasticIp": "The elastic IP (EIP) address for the cluster.",
  "SnapshotClusterIdentifier": "The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.",
  "ClusterParameterGroupName": "The name of the parameter group to be associated with this cluster. Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to Working with Amazon Redshift Parameter Groups. Constraints:   Must be 1 to 255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "SnapshotScheduleIdentifier": "A unique identifier for the snapshot schedule.",
  "Port": "The port number on which the cluster accepts connections. Default: The same port as the original cluster. Constraints: Must be between 1115 and 65535.",
  "ManualSnapshotRetentionPeriod": "The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. The value must be either -1 or an integer between 1 and 3,653.",
  "AutomatedSnapshotRetentionPeriod": "The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with CreateClusterSnapshot.  Default: The value selected for the cluster from which the snapshot was taken. Constraints: Must be a value from 0 to 35.",
  "IamRoles": "A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request. A cluster can have up to 10 IAM roles associated at any time.",
  "OwnerAccount": "The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.",
  "AvailabilityZone": "The Amazon EC2 Availability Zone in which to restore the cluster. Default: A random, system-chosen Availability Zone. Example: us-east-2a ",
  "HsmClientCertificateIdentifier": "Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.",
  "VpcSecurityGroupIds": "A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Default: The default VPC security group is associated with the cluster. VPC security groups only apply to clusters in VPCs.",
  "KmsKeyId": "The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot."
}
"""
RestoreFromClusterSnapshot(args) = redshift("RestoreFromClusterSnapshot", args)

"""
    CreateClusterSnapshot()

Creates a manual snapshot of the specified cluster. The cluster must be in the available state.   For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterIdentifier": "The cluster identifier for which you want a snapshot.",
  "SnapshotIdentifier": "A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account. Constraints:   Cannot be null, empty, or blank   Must contain from 1 to 255 alphanumeric characters or hyphens   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens   Example: my-snapshot-id "
}

Optional Parameters
{
  "Tags": "A list of tag instances.",
  "ManualSnapshotRetentionPeriod": "The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653. The default value is -1."
}
"""
CreateClusterSnapshot(args) = redshift("CreateClusterSnapshot", args)

"""
    DescribeEventCategories()

Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to Amazon Redshift Event Notifications.

Optional Parameters
{
  "SourceType": "The source type, such as cluster or parameter group, to which the described event categories apply. Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action."
}
"""

DescribeEventCategories() = redshift("DescribeEventCategories")
DescribeEventCategories(args) = redshift("DescribeEventCategories", args)

"""
    PurchaseReservedNodeOffering()

Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the DescribeReservedNodeOfferings API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve.   For more information about reserved node offerings, go to Purchasing Reserved Nodes in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ReservedNodeOfferingId": "The unique identifier of the reserved node offering you want to purchase."
}

Optional Parameters
{
  "NodeCount": "The number of reserved nodes that you want to purchase. Default: 1 "
}
"""
PurchaseReservedNodeOffering(args) = redshift("PurchaseReservedNodeOffering", args)

"""
    ModifyUsageLimit()

Modifies a usage limit in a cluster. You can't modify the feature type or period of a usage limit.

Required Parameters
{
  "UsageLimitId": "The identifier of the usage limit to modify."
}

Optional Parameters
{
  "BreachAction": "The new action that Amazon Redshift takes when the limit is reached. For more information about this parameter, see UsageLimit. ",
  "Amount": "The new limit amount. For more information about this parameter, see UsageLimit. "
}
"""
ModifyUsageLimit(args) = redshift("ModifyUsageLimit", args)

"""
    DescribeClusterSecurityGroups()

Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.  For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all security groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterSecurityGroups request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request.  Constraints: You can specify either the ClusterSecurityGroupName parameter or the Marker parameter, but not both. ",
  "TagValues": "A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.",
  "ClusterSecurityGroupName": "The name of a cluster security group for which you are requesting details. You can specify either the Marker parameter or a ClusterSecurityGroupName parameter, but not both.   Example: securitygroup1 ",
  "TagKeys": "A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them."
}
"""

DescribeClusterSecurityGroups() = redshift("DescribeClusterSecurityGroups")
DescribeClusterSecurityGroups(args) = redshift("DescribeClusterSecurityGroups", args)

"""
    DescribeUsageLimits()

Shows usage limits on a cluster. Results are filtered based on the combination of input usage limit identifier, cluster identifier, and feature type parameters:   If usage limit identifier, cluster identifier, and feature type are not provided, then all usage limit objects for the current account in the current region are returned.   If usage limit identifier is provided, then the corresponding usage limit object is returned.   If cluster identifier is provided, then all usage limit objects for the specified cluster are returned.   If cluster identifier and feature type are provided, then all usage limit objects for the combination of cluster and feature are returned.  

Optional Parameters
{
  "FeatureType": "The feature type for which you want to describe usage limits.",
  "ClusterIdentifier": "The identifier of the cluster for which you want to describe usage limits.",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeUsageLimits request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching usage limit objects that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the usage limit objects that have either or both of these tag values associated with them.",
  "UsageLimitId": "The identifier of the usage limit to describe.",
  "TagKeys": "A tag key or keys for which you want to return all matching usage limit objects that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the usage limit objects have either or both of these tag keys associated with them."
}
"""

DescribeUsageLimits() = redshift("DescribeUsageLimits")
DescribeUsageLimits(args) = redshift("DescribeUsageLimits", args)

"""
    RevokeSnapshotAccess()

Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "AccountWithRestoreAccess": "The identifier of the AWS customer account that can no longer restore the specified snapshot.",
  "SnapshotIdentifier": "The identifier of the snapshot that the account can no longer access."
}

Optional Parameters
{
  "SnapshotClusterIdentifier": "The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name."
}
"""
RevokeSnapshotAccess(args) = redshift("RevokeSnapshotAccess", args)

"""
    DescribeReservedNodeOfferings()

Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to PurchaseReservedNodeOffering to reserve one or more nodes for your Amazon Redshift cluster.   For more information about reserved node offerings, go to Purchasing Reserved Nodes in the Amazon Redshift Cluster Management Guide.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeReservedNodeOfferings request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "ReservedNodeOfferingId": "The unique identifier for the offering."
}
"""

DescribeReservedNodeOfferings() = redshift("DescribeReservedNodeOfferings")
DescribeReservedNodeOfferings(args) = redshift("DescribeReservedNodeOfferings", args)

"""
    DeleteCluster()

Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web service indicates that the request was received correctly. Use DescribeClusters to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. If you want to shut down the cluster and retain it for future use, set SkipFinalClusterSnapshot to false and specify a name for FinalClusterSnapshotIdentifier. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster.   For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster to be deleted. Constraints:   Must contain lowercase characters.   Must contain from 1 to 63 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  "
}

Optional Parameters
{
  "FinalClusterSnapshotRetentionPeriod": "The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.",
  "FinalClusterSnapshotIdentifier": "The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, SkipFinalClusterSnapshot must be false.  Constraints:   Must be 1 to 255 alphanumeric characters.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "SkipFinalClusterSnapshot": "Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true, a final cluster snapshot is not created. If false, a final cluster snapshot is created before the cluster is deleted.   The FinalClusterSnapshotIdentifier parameter must be specified if SkipFinalClusterSnapshot is false.  Default: false "
}
"""
DeleteCluster(args) = redshift("DeleteCluster", args)

"""
    AuthorizeSnapshotAccess()

Authorizes the specified AWS customer account to restore the specified snapshot.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "AccountWithRestoreAccess": "The identifier of the AWS customer account authorized to restore the specified snapshot. To share a snapshot with AWS support, specify amazon-redshift-support.",
  "SnapshotIdentifier": "The identifier of the snapshot the account is authorized to restore."
}

Optional Parameters
{
  "SnapshotClusterIdentifier": "The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name."
}
"""
AuthorizeSnapshotAccess(args) = redshift("AuthorizeSnapshotAccess", args)

"""
    CancelResize()

Cancels a resize operation for a cluster.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier for the cluster that you want to cancel a resize operation for."
}
"""
CancelResize(args) = redshift("CancelResize", args)

"""
    AuthorizeClusterSecurityGroupIngress()

Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group. If you authorize access to an Amazon EC2 security group, specify EC2SecurityGroupName and EC2SecurityGroupOwnerId. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS Region.  If you authorize access to a CIDR/IP address range, specify CIDRIP. For an overview of CIDR blocks, see the Wikipedia article on Classless Inter-Domain Routing.  You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to Working with Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterSecurityGroupName": "The name of the security group to which the ingress rule is added."
}

Optional Parameters
{
  "CIDRIP": "The IP range to be added the Amazon Redshift security group.",
  "EC2SecurityGroupOwnerId": "The AWS account number of the owner of the security group specified by the EC2SecurityGroupName parameter. The AWS Access Key ID is not an acceptable value.  Example: 111122223333 ",
  "EC2SecurityGroupName": "The EC2 security group to be added the Amazon Redshift security group."
}
"""
AuthorizeClusterSecurityGroupIngress(args) = redshift("AuthorizeClusterSecurityGroupIngress", args)

"""
    DeleteScheduledAction()

Deletes a scheduled action. 

Required Parameters
{
  "ScheduledActionName": "The name of the scheduled action to delete. "
}
"""
DeleteScheduledAction(args) = redshift("DeleteScheduledAction", args)

"""
    GetReservedNodeExchangeOfferings()

Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.

Required Parameters
{
  "ReservedNodeId": "A string representing the node identifier for the DC1 Reserved Node to be exchanged."
}

Optional Parameters
{
  "MaxRecords": "An integer setting the maximum number of ReservedNodeOfferings to retrieve.",
  "Marker": "A value that indicates the starting point for the next set of ReservedNodeOfferings."
}
"""
GetReservedNodeExchangeOfferings(args) = redshift("GetReservedNodeExchangeOfferings", args)

"""
    DeleteEventSubscription()

Deletes an Amazon Redshift event notification subscription.

Required Parameters
{
  "SubscriptionName": "The name of the Amazon Redshift event notification subscription to be deleted."
}
"""
DeleteEventSubscription(args) = redshift("DeleteEventSubscription", args)

"""
    CreateCluster()

Creates a new cluster with the specified parameters. To create a cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterIdentifier": "A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console. Constraints:   Must contain from 1 to 63 alphanumeric characters or hyphens.   Alphabetic characters must be lowercase.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique for all clusters within an AWS account.   Example: myexamplecluster ",
  "NodeType": "The node type to be provisioned for the cluster. For information about node types, go to  Working with Clusters in the Amazon Redshift Cluster Management Guide.  Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge ",
  "MasterUserPassword": "The password associated with the master user account for the cluster that is being created. Constraints:   Must be between 8 and 64 characters in length.   Must contain at least one uppercase letter.   Must contain at least one lowercase letter.   Must contain one number.   Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), \" (double quote),  , /, @, or space.  ",
  "MasterUsername": "The user name associated with the master user account for the cluster that is being created. Constraints:   Must be 1 - 128 alphanumeric characters. The user name can't be PUBLIC.   First character must be a letter.   Cannot be a reserved word. A list of reserved words can be found in Reserved Words in the Amazon Redshift Database Developer Guide.   "
}

Optional Parameters
{
  "NumberOfNodes": "The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node.  For information about determining how many nodes you need, go to  Working with Clusters in the Amazon Redshift Cluster Management Guide.  If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster. Default: 1  Constraints: Value must be at least 1 and no more than 100.",
  "PubliclyAccessible": "If true, the cluster can be accessed from a public network. ",
  "PreferredMaintenanceWindow": "The weekly time range (in UTC) during which automated cluster maintenance can occur.  Format: ddd:hh24:mi-ddd:hh24:mi   Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see Maintenance Windows in Amazon Redshift Cluster Management Guide. Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Minimum 30-minute window.",
  "ClusterSubnetGroupName": "The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).",
  "EnhancedVpcRouting": "An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide. If this option is true, enhanced VPC routing is enabled.  Default: false",
  "HsmConfigurationIdentifier": "Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.",
  "AllowVersionUpgrade": "If true, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster. Default: true ",
  "Tags": "A list of tag instances.",
  "ClusterType": "The type of the cluster. When cluster type is specified as    single-node, the NumberOfNodes parameter is not required.    multi-node, the NumberOfNodes parameter is required.   Valid Values: multi-node | single-node  Default: multi-node ",
  "AdditionalInfo": "Reserved.",
  "ClusterSecurityGroups": "A list of security groups to be associated with this cluster. Default: The default cluster security group for Amazon Redshift.",
  "MaintenanceTrackName": "An optional parameter for the name of the maintenance track for the cluster. If you don't provide a maintenance track name, the cluster is assigned to the current track.",
  "ElasticIp": "The Elastic IP (EIP) address for the cluster. Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to Supported Platforms to Launch Your Cluster in the Amazon Redshift Cluster Management Guide.",
  "ClusterVersion": "The version of the Amazon Redshift engine software that you want to deploy on the cluster. The version selected runs on all the nodes in the cluster. Constraints: Only version 1.0 is currently available. Example: 1.0 ",
  "Encrypted": "If true, the data in the cluster is encrypted at rest.  Default: false",
  "ClusterParameterGroupName": "The name of the parameter group to be associated with this cluster. Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to Working with Amazon Redshift Parameter Groups  Constraints:   Must be 1 to 255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "SnapshotScheduleIdentifier": "A unique identifier for the snapshot schedule.",
  "Port": "The port number on which the cluster accepts incoming connections. The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections. Default: 5439  Valid Values: 1150-65535 ",
  "ManualSnapshotRetentionPeriod": "The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. The value must be either -1 or an integer between 1 and 3,653.",
  "AutomatedSnapshotRetentionPeriod": "The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with CreateClusterSnapshot.  Default: 1  Constraints: Must be a value from 0 to 35.",
  "IamRoles": "A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request. A cluster can have up to 10 IAM roles associated with it at any time.",
  "AvailabilityZone": "The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint. Example: us-east-2d  Constraint: The specified Availability Zone must be in the same region as the current endpoint.",
  "HsmClientCertificateIdentifier": "Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.",
  "DBName": "The name of the first database to be created when the cluster is created. To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to Create a Database in the Amazon Redshift Database Developer Guide.  Default: dev  Constraints:   Must contain 1 to 64 alphanumeric characters.   Must contain only lowercase letters.   Cannot be a word that is reserved by the service. A list of reserved words can be found in Reserved Words in the Amazon Redshift Database Developer Guide.   ",
  "VpcSecurityGroupIds": "A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Default: The default VPC security group is associated with the cluster.",
  "KmsKeyId": "The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster."
}
"""
CreateCluster(args) = redshift("CreateCluster", args)

"""
    ResetClusterParameterGroup()

Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default". To reset the entire parameter group specify the ResetAllParameters parameter. For parameter changes to take effect you must reboot any associated clusters. 

Required Parameters
{
  "ParameterGroupName": "The name of the cluster parameter group to be reset."
}

Optional Parameters
{
  "Parameters": "An array of names of parameters to be reset. If ResetAllParameters option is not used, then at least one parameter name must be supplied.  Constraints: A maximum of 20 parameters can be reset in a single request.",
  "ResetAllParameters": "If true, all parameters in the specified parameter group will be reset to their default values.  Default: true "
}
"""
ResetClusterParameterGroup(args) = redshift("ResetClusterParameterGroup", args)

"""
    CreateUsageLimit()

Creates a usage limit for a specified Amazon Redshift feature on a cluster. The usage limit is identified by the returned usage limit identifier.

Required Parameters
{
  "FeatureType": "The Amazon Redshift feature that you want to limit.",
  "ClusterIdentifier": "The identifier of the cluster that you want to limit usage.",
  "LimitType": "The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is spectrum, then LimitType must be data-scanned. If FeatureType is concurrency-scaling, then LimitType must be time. ",
  "Amount": "The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number. "
}

Optional Parameters
{
  "Period": "The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly. ",
  "BreachAction": "The action that Amazon Redshift takes when the limit is reached. The default is log. For more information about this parameter, see UsageLimit.",
  "Tags": "A list of tag instances."
}
"""
CreateUsageLimit(args) = redshift("CreateUsageLimit", args)

"""
    CreateSnapshotCopyGrant()

Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.  For more information about managing snapshot copy grants, go to Amazon Redshift Database Encryption in the Amazon Redshift Cluster Management Guide. 

Required Parameters
{
  "SnapshotCopyGrantName": "The name of the snapshot copy grant. This name must be unique in the region for the AWS account. Constraints:   Must contain from 1 to 63 alphanumeric characters or hyphens.   Alphabetic characters must be lowercase.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique for all clusters within an AWS account.  "
}

Optional Parameters
{
  "Tags": "A list of tag instances.",
  "KmsKeyId": "The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used."
}
"""
CreateSnapshotCopyGrant(args) = redshift("CreateSnapshotCopyGrant", args)

"""
    ModifyEventSubscription()

Modifies an existing Amazon Redshift event notification subscription.

Required Parameters
{
  "SubscriptionName": "The name of the modified Amazon Redshift event notification subscription."
}

Optional Parameters
{
  "SourceIds": "A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified. Example: my-cluster-1, my-cluster-2 Example: my-snapshot-20131010",
  "SourceType": "The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs. Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.",
  "Severity": "Specifies the Amazon Redshift event severity to be published by the event notification subscription. Values: ERROR, INFO",
  "SnsTopicArn": "The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.",
  "EventCategories": "Specifies the Amazon Redshift event categories to be published by the event notification subscription. Values: configuration, management, monitoring, security",
  "Enabled": "A Boolean value indicating if the subscription is enabled. true indicates the subscription is enabled "
}
"""
ModifyEventSubscription(args) = redshift("ModifyEventSubscription", args)

"""
    CreateHsmClientCertificate()

Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases. The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to Hardware Security Modules in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "HsmClientCertificateIdentifier": "The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys."
}

Optional Parameters
{
  "Tags": "A list of tag instances."
}
"""
CreateHsmClientCertificate(args) = redshift("CreateHsmClientCertificate", args)

"""
    CreateEventSubscription()

Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console. You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters. If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.

Required Parameters
{
  "SubscriptionName": "The name of the event subscription to be created. Constraints:   Cannot be null, empty, or blank.   Must contain from 1 to 255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "SnsTopicArn": "The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it."
}

Optional Parameters
{
  "SourceIds": "A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified. Example: my-cluster-1, my-cluster-2 Example: my-snapshot-20131010",
  "Tags": "A list of tag instances.",
  "SourceType": "The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs. Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.",
  "Severity": "Specifies the Amazon Redshift event severity to be published by the event notification subscription. Values: ERROR, INFO",
  "EventCategories": "Specifies the Amazon Redshift event categories to be published by the event notification subscription. Values: configuration, management, monitoring, security",
  "Enabled": "A boolean value; set to true to activate the subscription, and set to false to create the subscription but not activate it. "
}
"""
CreateEventSubscription(args) = redshift("CreateEventSubscription", args)

"""
    DescribeNodeConfigurationOptions()

Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type.

Required Parameters
{
  "ActionType": "The action type to evaluate for possible node configurations. Specify \"restore-cluster\" to get configuration combinations based on an existing snapshot. Specify \"recommend-node-config\" to get configuration recommendations based on an existing cluster or snapshot. Specify \"resize-cluster\" to get configuration combinations for elastic resize based on an existing cluster. "
}

Optional Parameters
{
  "ClusterIdentifier": "The identifier of the cluster to evaluate for possible node configurations.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeNodeConfigurationOptions request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 500  Constraints: minimum 100, maximum 500.",
  "OwnerAccount": "The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.",
  "SnapshotIdentifier": "The identifier of the snapshot to evaluate for possible node configurations.",
  "Filters": "A set of name, operator, and value items to filter the results."
}
"""
DescribeNodeConfigurationOptions(args) = redshift("DescribeNodeConfigurationOptions", args)

"""
    DeleteHsmClientCertificate()

Deletes the specified HSM client certificate.

Required Parameters
{
  "HsmClientCertificateIdentifier": "The identifier of the HSM client certificate to be deleted."
}
"""
DeleteHsmClientCertificate(args) = redshift("DeleteHsmClientCertificate", args)

"""
    DeleteUsageLimit()

Deletes a usage limit from a cluster.

Required Parameters
{
  "UsageLimitId": "The identifier of the usage limit to delete."
}
"""
DeleteUsageLimit(args) = redshift("DeleteUsageLimit", args)

"""
    CopyClusterSnapshot()

Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state. When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.  For more information about working with snapshots, go to Amazon Redshift Snapshots in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "SourceSnapshotIdentifier": "The identifier for the source snapshot. Constraints:   Must be the identifier for a valid automated snapshot whose state is available.  ",
  "TargetSnapshotIdentifier": "The identifier given to the new manual snapshot. Constraints:   Cannot be null, empty, or blank.   Must contain from 1 to 255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Must be unique for the AWS account that is making the request.  "
}

Optional Parameters
{
  "SourceSnapshotClusterIdentifier": "The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name. Constraints:   Must be the identifier for a valid cluster.  ",
  "ManualSnapshotRetentionPeriod": "The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653. The default value is -1."
}
"""
CopyClusterSnapshot(args) = redshift("CopyClusterSnapshot", args)

"""
    ModifyClusterSubnetGroup()

Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.

Required Parameters
{
  "SubnetIds": "An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.",
  "ClusterSubnetGroupName": "The name of the subnet group to be modified."
}

Optional Parameters
{
  "Description": "A text description of the subnet group to be modified."
}
"""
ModifyClusterSubnetGroup(args) = redshift("ModifyClusterSubnetGroup", args)

"""
    ModifyClusterDbRevision()

Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of a cluster whose database revision you want to modify.  Example: examplecluster ",
  "RevisionTarget": "The identifier of the database revision. You can retrieve this value from the response to the DescribeClusterDbRevisions request."
}
"""
ModifyClusterDbRevision(args) = redshift("ModifyClusterDbRevision", args)

"""
    BatchModifyClusterSnapshots()

Modifies the settings for a set of cluster snapshots.

Required Parameters
{
  "SnapshotIdentifierList": "A list of snapshot identifiers you want to modify."
}

Optional Parameters
{
  "Force": "A boolean value indicating whether to override an exception if the retention period has passed. ",
  "ManualSnapshotRetentionPeriod": "The number of days that a manual snapshot is retained. If you specify the value -1, the manual snapshot is retained indefinitely. The number must be either -1 or an integer between 1 and 3,653. If you decrease the manual snapshot retention period from its current value, existing manual snapshots that fall outside of the new retention period will return an error. If you want to suppress the errors and delete the snapshots, use the force option. "
}
"""
BatchModifyClusterSnapshots(args) = redshift("BatchModifyClusterSnapshots", args)

"""
    DeleteTags()

Deletes tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.

Required Parameters
{
  "ResourceName": "The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, arn:aws:redshift:us-east-2:123456789:cluster:t1. ",
  "TagKeys": "The tag key that you want to delete."
}
"""
DeleteTags(args) = redshift("DeleteTags", args)

"""
    DescribeClusterTracks()

Returns a list of all the available maintenance tracks.

Optional Parameters
{
  "MaxRecords": "An integer value for the maximum number of maintenance tracks to return.",
  "MaintenanceTrackName": "The name of the maintenance track. ",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterTracks request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. "
}
"""

DescribeClusterTracks() = redshift("DescribeClusterTracks")
DescribeClusterTracks(args) = redshift("DescribeClusterTracks", args)

"""
    CreateTags()

Adds tags to a cluster. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, you will receive an error and the attempt will fail. If you specify a key that already exists for the resource, the value for that key will be updated with the new value.

Required Parameters
{
  "Tags": "One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter Key and the corresponding value is passed in with the parameter Value. The Key and Value parameters are separated by a comma (,). Separate multiple tags with a space. For example, --tags \"Key\"=\"owner\",\"Value\"=\"admin\" \"Key\"=\"environment\",\"Value\"=\"test\" \"Key\"=\"version\",\"Value\"=\"1.0\". ",
  "ResourceName": "The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, arn:aws:redshift:us-east-2:123456789:cluster:t1. "
}
"""
CreateTags(args) = redshift("CreateTags", args)

"""
    DescribeHsmClientCertificates()

Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM client certificates that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeHsmClientCertificates request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.",
  "HsmClientCertificateIdentifier": "The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.",
  "TagKeys": "A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them."
}
"""

DescribeHsmClientCertificates() = redshift("DescribeHsmClientCertificates")
DescribeHsmClientCertificates(args) = redshift("DescribeHsmClientCertificates", args)

"""
    GetClusterCredentials()

Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database. The action returns the database user name prefixed with IAM: if AutoCreate is False or IAMA: if AutoCreate is True. You can optionally specify one or more database user groups that the user will join at log on. By default, the temporary credentials expire in 900 seconds. You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes). For more information, see Using IAM Authentication to Generate Database User Credentials in the Amazon Redshift Cluster Management Guide. The AWS Identity and Access Management (IAM)user or role that executes GetClusterCredentials must have an IAM policy attached that allows access to all necessary actions and resources. For more information about permissions, see Resource Policies for GetClusterCredentials in the Amazon Redshift Cluster Management Guide. If the DbGroups parameter is specified, the IAM policy must allow the redshift:JoinGroup action with access to the listed dbgroups.  In addition, if the AutoCreate parameter is set to True, then the policy must include the redshift:CreateClusterUser privilege. If the DbName parameter is specified, the IAM policy must allow access to the resource dbname for the specified database name. 

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.",
  "DbUser": "The name of a database user. If a user name matching DbUser exists in the database, the temporary user credentials have the same permissions as the existing user. If DbUser doesn't exist in the database and Autocreate is True, a new user is created using the value for DbUser with PUBLIC permissions. If a database user matching the value for DbUser doesn't exist and Autocreate is False, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database. For more information, see CREATE USER in the Amazon Redshift Database Developer Guide.  Constraints:   Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be PUBLIC.   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.   First character must be a letter.   Must not contain a colon ( : ) or slash ( / ).    Cannot be a reserved word. A list of reserved words can be found in Reserved Words in the Amazon Redshift Database Developer Guide.  "
}

Optional Parameters
{
  "DbName": "The name of a database that DbUser is authorized to log on to. If DbName is not specified, DbUser can log on to any existing database. Constraints:   Must be 1 to 64 alphanumeric characters or hyphens   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.   First character must be a letter.   Must not contain a colon ( : ) or slash ( / ).    Cannot be a reserved word. A list of reserved words can be found in Reserved Words in the Amazon Redshift Database Developer Guide.  ",
  "DbGroups": "A list of the names of existing database groups that the user named in DbUser will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC. Database group name constraints   Must be 1 to 64 alphanumeric characters or hyphens   Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.   First character must be a letter.   Must not contain a colon ( : ) or slash ( / ).    Cannot be a reserved word. A list of reserved words can be found in Reserved Words in the Amazon Redshift Database Developer Guide.  ",
  "AutoCreate": "Create a database user with the name specified for the user named in DbUser if one does not exist.",
  "DurationSeconds": "The number of seconds until the returned temporary password expires. Constraint: minimum 900, maximum 3600. Default: 900"
}
"""
GetClusterCredentials(args) = redshift("GetClusterCredentials", args)

"""
    DescribeClusterSubnetGroups()

Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subnet groups that have any combination of those values are returned. If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterSubnetGroups request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.",
  "ClusterSubnetGroupName": "The name of the cluster subnet group for which information is requested.",
  "TagKeys": "A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them."
}
"""

DescribeClusterSubnetGroups() = redshift("DescribeClusterSubnetGroups")
DescribeClusterSubnetGroups(args) = redshift("DescribeClusterSubnetGroups", args)

"""
    DeleteSnapshotSchedule()

Deletes a snapshot schedule.

Required Parameters
{
  "ScheduleIdentifier": "A unique identifier of the snapshot schedule to delete."
}
"""
DeleteSnapshotSchedule(args) = redshift("DeleteSnapshotSchedule", args)

"""
    BatchDeleteClusterSnapshots()

Deletes a set of cluster snapshots.

Required Parameters
{
  "Identifiers": "A list of identifiers for the snapshots that you want to delete."
}
"""
BatchDeleteClusterSnapshots(args) = redshift("BatchDeleteClusterSnapshots", args)

"""
    DeleteHsmConfiguration()

Deletes the specified Amazon Redshift HSM configuration.

Required Parameters
{
  "HsmConfigurationIdentifier": "The identifier of the Amazon Redshift HSM configuration to be deleted."
}
"""
DeleteHsmConfiguration(args) = redshift("DeleteHsmConfiguration", args)

"""
    DescribeClusterSnapshots()

Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters. If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "EndTime": "A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2012-07-16T18:00:00Z ",
  "SnapshotType": "The type of snapshots for which you are requesting information. By default, snapshots of all types are returned. Valid Values: automated | manual ",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "SnapshotIdentifier": "The snapshot identifier of the snapshot about which to return information.",
  "StartTime": "A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2012-07-16T18:00:00Z ",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterSnapshots request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.",
  "TagKeys": "A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.",
  "SortingEntities": "",
  "ClusterExists": "A value that indicates whether to return snapshots only for an existing cluster. You can perform table-level restore only by using a snapshot of an existing cluster, that is, a cluster that has not been deleted. Values for this parameter work as follows:    If ClusterExists is set to true, ClusterIdentifier is required.   If ClusterExists is set to false and ClusterIdentifier isn't specified, all snapshots associated with deleted clusters (orphaned snapshots) are returned.    If ClusterExists is set to false and ClusterIdentifier is specified for a deleted cluster, snapshots associated with that cluster are returned.   If ClusterExists is set to false and ClusterIdentifier is specified for an existing cluster, no snapshots are returned.   ",
  "ClusterIdentifier": "The identifier of the cluster which generated the requested snapshots.",
  "OwnerAccount": "The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter."
}
"""

DescribeClusterSnapshots() = redshift("DescribeClusterSnapshots")
DescribeClusterSnapshots(args) = redshift("DescribeClusterSnapshots", args)

"""
    ModifyClusterSnapshot()

Modifies the settings for a snapshot. This exanmple modifies the manual retention period setting for a cluster snapshot.

Required Parameters
{
  "SnapshotIdentifier": "The identifier of the snapshot whose setting you want to modify."
}

Optional Parameters
{
  "Force": "A Boolean option to override an exception if the retention period has already passed.",
  "ManualSnapshotRetentionPeriod": "The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. If the manual snapshot falls outside of the new retention period, you can specify the force option to immediately delete the snapshot. The value must be either -1 or an integer between 1 and 3,653."
}
"""
ModifyClusterSnapshot(args) = redshift("ModifyClusterSnapshot", args)

"""
    CreateClusterSubnetGroup()

Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.  For information about subnet groups, go to Amazon Redshift Cluster Subnet Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "Description": "A description for the subnet group.",
  "SubnetIds": "An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.",
  "ClusterSubnetGroupName": "The name for the subnet group. Amazon Redshift stores the value as a lowercase string. Constraints:   Must contain no more than 255 alphanumeric characters or hyphens.   Must not be \"Default\".   Must be unique for all subnet groups that are created by your AWS account.   Example: examplesubnetgroup "
}

Optional Parameters
{
  "Tags": "A list of tag instances."
}
"""
CreateClusterSubnetGroup(args) = redshift("CreateClusterSubnetGroup", args)

"""
    AcceptReservedNodeExchange()

Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs. 

Required Parameters
{
  "TargetReservedNodeOfferingId": "The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling GetReservedNodeExchangeOfferings ",
  "ReservedNodeId": "A string representing the node identifier of the DC1 Reserved Node to be exchanged."
}
"""
AcceptReservedNodeExchange(args) = redshift("AcceptReservedNodeExchange", args)

"""
    DescribeTableRestoreStatus()

Lists the status of one or more table restore requests made using the RestoreTableFromClusterSnapshot API action. If you don't specify a value for the TableRestoreRequestId parameter, then DescribeTableRestoreStatus returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise DescribeTableRestoreStatus returns the status of the table specified by TableRestoreRequestId.

Optional Parameters
{
  "ClusterIdentifier": "The Amazon Redshift cluster that the table is being restored to.",
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.",
  "Marker": "An optional pagination token provided by a previous DescribeTableRestoreStatus request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the MaxRecords parameter.",
  "TableRestoreRequestId": "The identifier of the table restore request to return status for. If you don't specify a TableRestoreRequestId value, then DescribeTableRestoreStatus returns the status of all in-progress table restore requests."
}
"""

DescribeTableRestoreStatus() = redshift("DescribeTableRestoreStatus")
DescribeTableRestoreStatus(args) = redshift("DescribeTableRestoreStatus", args)

"""
    DescribeTags()

Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on. The following are limitations for DescribeTags:    You cannot specify an ARN and a resource-type value together in the same request.   You cannot use the MaxRecords and Marker parameters together with the ARN parameter.   The MaxRecords parameter can be a range from 10 to 50 results to return in a request.   If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all resources that have any combination of those values are returned. If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. ",
  "Marker": "A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the marker parameter and retrying the command. If the marker field is empty, all response records have been retrieved for the request. ",
  "TagValues": "A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.",
  "ResourceName": "The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, arn:aws:redshift:us-east-2:123456789:cluster:t1. ",
  "ResourceType": "The type of resource with which you want to view tags. Valid resource types are:    Cluster   CIDR/IP   EC2 security group   Snapshot   Cluster security group   Subnet group   HSM connection   HSM certificate   Parameter group   Snapshot copy grant   For more information about Amazon Redshift resource types and constructing ARNs, go to Specifying Policy Elements: Actions, Effects, Resources, and Principals in the Amazon Redshift Cluster Management Guide. ",
  "TagKeys": "A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them."
}
"""

DescribeTags() = redshift("DescribeTags")
DescribeTags(args) = redshift("DescribeTags", args)

"""
    DeleteClusterSubnetGroup()

Deletes the specified cluster subnet group.

Required Parameters
{
  "ClusterSubnetGroupName": "The name of the cluster subnet group name to be deleted."
}
"""
DeleteClusterSubnetGroup(args) = redshift("DeleteClusterSubnetGroup", args)

"""
    ModifyScheduledAction()

Modifies a scheduled action. 

Required Parameters
{
  "ScheduledActionName": "The name of the scheduled action to modify. "
}

Optional Parameters
{
  "ScheduledActionDescription": "A modified description of the scheduled action. ",
  "TargetAction": "A modified JSON format of the scheduled action. For more information about this parameter, see ScheduledAction. ",
  "Schedule": "A modified schedule in either at( ) or cron( ) format. For more information about this parameter, see ScheduledAction.",
  "StartTime": "A modified start time of the scheduled action. For more information about this parameter, see ScheduledAction. ",
  "EndTime": "A modified end time of the scheduled action. For more information about this parameter, see ScheduledAction. ",
  "Enable": "A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. ",
  "IamRole": "A different IAM role to assume to run the target action. For more information about this parameter, see ScheduledAction."
}
"""
ModifyScheduledAction(args) = redshift("ModifyScheduledAction", args)

"""
    CreateClusterSecurityGroup()

Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.  For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "Description": "A description for the security group.",
  "ClusterSecurityGroupName": "The name for the security group. Amazon Redshift stores the value as a lowercase string. Constraints:   Must contain no more than 255 alphanumeric characters or hyphens.   Must not be \"Default\".   Must be unique for all security groups that are created by your AWS account.   Example: examplesecuritygroup "
}

Optional Parameters
{
  "Tags": "A list of tag instances."
}
"""
CreateClusterSecurityGroup(args) = redshift("CreateClusterSecurityGroup", args)

"""
    CreateHsmConfiguration()

Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM. In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to Hardware Security Modules in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "Description": "A text description of the HSM configuration to be created.",
  "HsmPartitionName": "The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.",
  "HsmPartitionPassword": "The password required to access the HSM partition.",
  "HsmIpAddress": "The IP address that the Amazon Redshift cluster must use to access the HSM.",
  "HsmConfigurationIdentifier": "The identifier to be assigned to the new Amazon Redshift HSM configuration.",
  "HsmServerPublicCertificate": "The HSMs public certificate file. When using Cloud HSM, the file name is server.pem."
}

Optional Parameters
{
  "Tags": "A list of tag instances."
}
"""
CreateHsmConfiguration(args) = redshift("CreateHsmConfiguration", args)

"""
    RebootCluster()

Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to rebooting. A cluster event is created when the reboot is completed. Any pending cluster modifications (see ModifyCluster) are applied at this reboot. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. 

Required Parameters
{
  "ClusterIdentifier": "The cluster identifier."
}
"""
RebootCluster(args) = redshift("RebootCluster", args)

"""
    DescribeHsmConfigurations()

Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all HSM connections that have any combination of those values are returned. If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeHsmConfigurations request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "TagValues": "A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.",
  "HsmConfigurationIdentifier": "The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.",
  "TagKeys": "A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them."
}
"""

DescribeHsmConfigurations() = redshift("DescribeHsmConfigurations")
DescribeHsmConfigurations(args) = redshift("DescribeHsmConfigurations", args)

"""
    DescribeStorage()

Returns account level backups storage size and provisional storage.
"""

DescribeStorage() = redshift("DescribeStorage")
DescribeStorage(args) = redshift("DescribeStorage", args)

"""
    DescribeSnapshotCopyGrants()

Returns a list of snapshot copy grants owned by the AWS account in the destination region.  For more information about managing snapshot copy grants, go to Amazon Redshift Database Encryption in the Amazon Redshift Cluster Management Guide. 

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeSnapshotCopyGrant request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request.  Constraints: You can specify either the SnapshotCopyGrantName parameter or the Marker parameter, but not both. ",
  "TagValues": "A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.",
  "SnapshotCopyGrantName": "The name of the snapshot copy grant.",
  "TagKeys": "A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them."
}
"""

DescribeSnapshotCopyGrants() = redshift("DescribeSnapshotCopyGrants")
DescribeSnapshotCopyGrants(args) = redshift("DescribeSnapshotCopyGrants", args)

"""
    DeleteClusterSnapshot()

Deletes the specified manual snapshot. The snapshot must be in the available state, with no other users authorized to access the snapshot.  Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.

Required Parameters
{
  "SnapshotIdentifier": "The unique identifier of the manual snapshot to be deleted. Constraints: Must be the name of an existing snapshot that is in the available, failed, or cancelled state."
}

Optional Parameters
{
  "SnapshotClusterIdentifier": "The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name. Constraints: Must be the name of valid cluster."
}
"""
DeleteClusterSnapshot(args) = redshift("DeleteClusterSnapshot", args)

"""
    DeleteClusterSecurityGroup()

Deletes an Amazon Redshift security group.  You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.   For information about managing security groups, go to Amazon Redshift Cluster Security Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ClusterSecurityGroupName": "The name of the cluster security group to be deleted."
}
"""
DeleteClusterSecurityGroup(args) = redshift("DeleteClusterSecurityGroup", args)

"""
    EnableSnapshotCopy()

Enables the automatic copy of snapshots from one region to another region for a specified cluster.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the source cluster to copy snapshots from. Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.",
  "DestinationRegion": "The destination AWS Region that you want to copy snapshots to. Constraints: Must be the name of a valid AWS Region. For more information, see Regions and Endpoints in the Amazon Web Services General Reference. "
}

Optional Parameters
{
  "SnapshotCopyGrantName": "The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.",
  "RetentionPeriod": "The number of days to retain automated snapshots in the destination region after they are copied from the source region. Default: 7. Constraints: Must be at least 1 and no more than 35.",
  "ManualSnapshotRetentionPeriod": "The number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653."
}
"""
EnableSnapshotCopy(args) = redshift("EnableSnapshotCopy", args)

"""
    ModifySnapshotSchedule()

Modifies a snapshot schedule. Any schedule associated with a cluster is modified asynchronously.

Required Parameters
{
  "ScheduleIdentifier": "A unique alphanumeric identifier of the schedule to modify.",
  "ScheduleDefinitions": "An updated list of schedule definitions. A schedule definition is made up of schedule expressions, for example, \"cron(30 12 *)\" or \"rate(12 hours)\"."
}
"""
ModifySnapshotSchedule(args) = redshift("ModifySnapshotSchedule", args)

"""
    ResumeCluster()

Resumes a paused cluster.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster to be resumed."
}
"""
ResumeCluster(args) = redshift("ResumeCluster", args)

"""
    DescribeClusterParameters()

Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on. You can specify source filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from ModifyClusterParameterGroup, you can specify source equal to user.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ParameterGroupName": "The name of a cluster parameter group for which to return details."
}

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterParameters request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "Source": "The parameter types to return. Specify user to show parameters that are different form the default. Similarly, specify engine-default to show parameters that are the same as the default parameter group.  Default: All parameter types returned. Valid Values: user | engine-default "
}
"""
DescribeClusterParameters(args) = redshift("DescribeClusterParameters", args)

"""
    DescribeClusters()

Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all clusters that have any combination of those values are returned. If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "ClusterIdentifier": "The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive. The default is that all clusters defined for an account are returned.",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusters request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request.  Constraints: You can specify either the ClusterIdentifier parameter or the Marker parameter, but not both. ",
  "TagValues": "A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.",
  "TagKeys": "A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them."
}
"""

DescribeClusters() = redshift("DescribeClusters")
DescribeClusters(args) = redshift("DescribeClusters", args)

"""
    DescribeDefaultClusterParameters()

Returns a list of parameter settings for the specified parameter group family.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "ParameterGroupFamily": "The name of the cluster parameter group family."
}

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeDefaultClusterParameters request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. "
}
"""
DescribeDefaultClusterParameters(args) = redshift("DescribeDefaultClusterParameters", args)

"""
    DescribeResize()

Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a HTTP 404 error is returned. If a resize operation was initiated and completed, the status of the resize remains as SUCCEEDED until the next resize.  A resize operation can be requested using ModifyCluster and specifying a different number or type of nodes for the cluster. 

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive. By default, resize operations for all clusters defined for an AWS account are returned."
}
"""
DescribeResize(args) = redshift("DescribeResize", args)

"""
    ModifyClusterIamRoles()

Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. A cluster can have up to 10 IAM roles associated at any time.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the cluster for which you want to associate or disassociate IAM roles."
}

Optional Parameters
{
  "AddIamRoles": "Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.",
  "RemoveIamRoles": "Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request."
}
"""
ModifyClusterIamRoles(args) = redshift("ModifyClusterIamRoles", args)

"""
    DescribeOrderableClusterOptions()

Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS Region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeOrderableClusterOptions request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "NodeType": "The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.",
  "ClusterVersion": "The version filter value. Specify this parameter to show only the available offerings matching the specified version. Default: All versions. Constraints: Must be one of the version returned from DescribeClusterVersions."
}
"""

DescribeOrderableClusterOptions() = redshift("DescribeOrderableClusterOptions")
DescribeOrderableClusterOptions(args) = redshift("DescribeOrderableClusterOptions", args)

"""
    DescribeEvents()

Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.

Optional Parameters
{
  "StartTime": "The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2009-07-08T18:00Z ",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEvents request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "SourceIdentifier": "The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response. Constraints: If SourceIdentifier is supplied, SourceType must also be provided.   Specify a cluster identifier when SourceType is cluster.   Specify a cluster security group name when SourceType is cluster-security-group.   Specify a cluster parameter group name when SourceType is cluster-parameter-group.   Specify a cluster snapshot identifier when SourceType is cluster-snapshot.  ",
  "EndTime": "The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2009-07-08T18:00Z ",
  "SourceType": "The event source to retrieve events for. If no value is specified, all events are returned. Constraints: If SourceType is supplied, SourceIdentifier must also be provided.   Specify cluster when SourceIdentifier is a cluster identifier.   Specify cluster-security-group when SourceIdentifier is a cluster security group name.   Specify cluster-parameter-group when SourceIdentifier is a cluster parameter group name.   Specify cluster-snapshot when SourceIdentifier is a cluster snapshot identifier.  ",
  "Duration": "The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned. Default: 60 "
}
"""

DescribeEvents() = redshift("DescribeEvents")
DescribeEvents(args) = redshift("DescribeEvents", args)

"""
    DisableSnapshotCopy()

Disables the automatic copying of snapshots from one region to another region for a specified cluster. If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use DeleteSnapshotCopyGrant to delete the grant that grants Amazon Redshift permission to the CMK in the destination region. 

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region. Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled."
}
"""
DisableSnapshotCopy(args) = redshift("DisableSnapshotCopy", args)

"""
    RestoreTableFromClusterSnapshot()

Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from. You cannot use RestoreTableFromClusterSnapshot to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call RestoreTableFromClusterSnapshot. When you have renamed your original table, then you can pass the original name of the table as the NewTableName parameter value in the call to RestoreTableFromClusterSnapshot. This way, you can replace the original table with the table created from the snapshot.

Required Parameters
{
  "NewTableName": "The name of the table to create as a result of the current request.",
  "ClusterIdentifier": "The identifier of the Amazon Redshift cluster to restore the table to.",
  "SourceDatabaseName": "The name of the source database that contains the table to restore from.",
  "SourceTableName": "The name of the source table to restore from.",
  "SnapshotIdentifier": "The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the ClusterIdentifier parameter."
}

Optional Parameters
{
  "TargetSchemaName": "The name of the schema to restore the table to.",
  "SourceSchemaName": "The name of the source schema that contains the table to restore from. If you do not specify a SourceSchemaName value, the default is public.",
  "TargetDatabaseName": "The name of the database to restore the table to."
}
"""
RestoreTableFromClusterSnapshot(args) = redshift("RestoreTableFromClusterSnapshot", args)

"""
    DescribeAccountAttributes()

Returns a list of attributes attached to an account

Optional Parameters
{
  "AttributeNames": "A list of attribute names."
}
"""

DescribeAccountAttributes() = redshift("DescribeAccountAttributes")
DescribeAccountAttributes(args) = redshift("DescribeAccountAttributes", args)

"""
    DescribeClusterVersions()

Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to Amazon Redshift Clusters in the Amazon Redshift Cluster Management Guide.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeClusterVersions request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "ClusterVersion": "The specific cluster version to return. Example: 1.0 ",
  "ClusterParameterGroupFamily": "The name of a specific cluster parameter group family to return details for. Constraints:   Must be 1 to 255 alphanumeric characters   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens  "
}
"""

DescribeClusterVersions() = redshift("DescribeClusterVersions")
DescribeClusterVersions(args) = redshift("DescribeClusterVersions", args)

"""
    DescribeEventSubscriptions()

Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription. If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have owner and environment for tag keys, and admin and test for tag values, all subscriptions that have any combination of those values are returned. If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "SubscriptionName": "The name of the Amazon Redshift event notification subscription to be described.",
  "TagValues": "A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called admin and test. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.",
  "TagKeys": "A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called owner and environment. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them."
}
"""

DescribeEventSubscriptions() = redshift("DescribeEventSubscriptions")
DescribeEventSubscriptions(args) = redshift("DescribeEventSubscriptions", args)

"""
    DescribeClusterDbRevisions()

Returns an array of ClusterDbRevision objects.

Optional Parameters
{
  "ClusterIdentifier": "A unique identifier for a cluster whose ClusterDbRevisions you are requesting. This parameter is case sensitive. All clusters defined for an account are returned by default.",
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request.  Default: 100 Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point for returning a set of response records. When the results of a DescribeClusterDbRevisions request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request.  Constraints: You can specify either the ClusterIdentifier parameter, or the marker parameter, but not both."
}
"""

DescribeClusterDbRevisions() = redshift("DescribeClusterDbRevisions")
DescribeClusterDbRevisions(args) = redshift("DescribeClusterDbRevisions", args)

"""
    DisableLogging()

Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster on which logging is to be stopped. Example: examplecluster "
}
"""
DisableLogging(args) = redshift("DisableLogging", args)

"""
    CreateSnapshotSchedule()

Create a snapshot schedule that can be associated to a cluster and which overrides the default system backup schedule. 

Optional Parameters
{
  "NextInvocations": "",
  "ScheduleIdentifier": "A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed for the identifier.",
  "ScheduleDefinitions": "The definition of the snapshot schedule. The definition is made up of schedule expressions, for example \"cron(30 12 *)\" or \"rate(12 hours)\". ",
  "ScheduleDescription": "The description of the snapshot schedule.",
  "Tags": "An optional set of tags you can use to search for the schedule.",
  "DryRun": ""
}
"""

CreateSnapshotSchedule() = redshift("CreateSnapshotSchedule")
CreateSnapshotSchedule(args) = redshift("CreateSnapshotSchedule", args)

"""
    ModifyClusterParameterGroup()

Modifies the parameters of a parameter group.  For more information about parameters and parameter groups, go to Amazon Redshift Parameter Groups in the Amazon Redshift Cluster Management Guide.

Required Parameters
{
  "Parameters": "An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request. For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional. For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.",
  "ParameterGroupName": "The name of the parameter group to be modified."
}
"""
ModifyClusterParameterGroup(args) = redshift("ModifyClusterParameterGroup", args)

"""
    ModifySnapshotCopyRetentionPeriod()

Modifies the number of days to retain snapshots in the destination AWS Region after they are copied from the source AWS Region. By default, this operation only changes the retention period of copied automated snapshots. The retention periods for both new and existing copied automated snapshots are updated with the new retention period. You can set the manual option to change only the retention periods of copied manual snapshots. If you set this option, only newly copied manual snapshots have the new retention period. 

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the cluster for which you want to change the retention period for either automated or manual snapshots that are copied to a destination AWS Region. Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.",
  "RetentionPeriod": "The number of days to retain automated snapshots in the destination AWS Region after they are copied from the source AWS Region. By default, this only changes the retention period of copied automated snapshots.  If you decrease the retention period for automated snapshots that are copied to a destination AWS Region, Amazon Redshift deletes any existing automated snapshots that were copied to the destination AWS Region and that fall outside of the new retention period. Constraints: Must be at least 1 and no more than 35 for automated snapshots.  If you specify the manual option, only newly copied manual snapshots will have the new retention period.  If you specify the value of -1 newly copied manual snapshots are retained indefinitely. Constraints: The number of days must be either -1 or an integer between 1 and 3,653 for manual snapshots."
}

Optional Parameters
{
  "Manual": "Indicates whether to apply the snapshot retention period to newly copied manual snapshots instead of automated snapshots."
}
"""
ModifySnapshotCopyRetentionPeriod(args) = redshift("ModifySnapshotCopyRetentionPeriod", args)

"""
    EnableLogging()

Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster on which logging is to be started. Example: examplecluster ",
  "BucketName": "The name of an existing S3 bucket where the log files are to be stored. Constraints:   Must be in the same region as the cluster   The cluster must have read bucket and put object permissions  "
}

Optional Parameters
{
  "S3KeyPrefix": "The prefix applied to the log file names. Constraints:   Cannot exceed 512 characters   Cannot contain spaces( ), double quotes (\"), single quotes ('), a backslash ( ), or control characters. The hexadecimal codes for invalid characters are:    x00 to x20   x22   x27   x5c   x7f or larger    "
}
"""
EnableLogging(args) = redshift("EnableLogging", args)

"""
    ResizeCluster()

Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method.  Elastic resize operations have the following restrictions:   You can only resize clusters of the following types:   dc1.large (if your cluster is in a VPC)   dc1.8xlarge (if your cluster is in a VPC)   dc2.large   dc2.8xlarge   ds2.xlarge   ds2.8xlarge   ra3.4xlarge   ra3.16xlarge     The type of nodes that you add must match the node type for the cluster.  

Required Parameters
{
  "ClusterIdentifier": "The unique identifier for the cluster to resize."
}

Optional Parameters
{
  "NumberOfNodes": "The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.",
  "Classic": "A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to false, the resize type is elastic. ",
  "NodeType": "The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.",
  "ClusterType": "The new cluster type for the specified cluster."
}
"""
ResizeCluster(args) = redshift("ResizeCluster", args)

"""
    DescribeReservedNodes()

Returns the descriptions of the reserved nodes.

Optional Parameters
{
  "MaxRecords": "The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: 100  Constraints: minimum 20, maximum 100.",
  "Marker": "An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeReservedNodes request exceed the value specified in MaxRecords, AWS returns a value in the Marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the Marker parameter and retrying the request. ",
  "ReservedNodeId": "Identifier for the node reservation."
}
"""

DescribeReservedNodes() = redshift("DescribeReservedNodes")
DescribeReservedNodes(args) = redshift("DescribeReservedNodes", args)

"""
    DeleteClusterParameterGroup()

Deletes a specified Amazon Redshift parameter group.  You cannot delete a parameter group if it is associated with a cluster. 

Required Parameters
{
  "ParameterGroupName": "The name of the parameter group to be deleted. Constraints:   Must be the name of an existing cluster parameter group.   Cannot delete a default cluster parameter group.  "
}
"""
DeleteClusterParameterGroup(args) = redshift("DeleteClusterParameterGroup", args)

"""
    ModifyClusterSnapshotSchedule()

Modifies a snapshot schedule for a cluster.

Required Parameters
{
  "ClusterIdentifier": "A unique identifier for the cluster whose snapshot schedule you want to modify. "
}

Optional Parameters
{
  "ScheduleIdentifier": "A unique alphanumeric identifier for the schedule that you want to associate with the cluster.",
  "DisassociateSchedule": "A boolean to indicate whether to remove the assoiciation between the cluster and the schedule."
}
"""
ModifyClusterSnapshotSchedule(args) = redshift("ModifyClusterSnapshotSchedule", args)

"""
    DescribeLoggingStatus()

Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.

Required Parameters
{
  "ClusterIdentifier": "The identifier of the cluster from which to get the logging status. Example: examplecluster "
}
"""
DescribeLoggingStatus(args) = redshift("DescribeLoggingStatus", args)

"""
    RotateEncryptionKey()

Rotates the encryption keys for a cluster.

Required Parameters
{
  "ClusterIdentifier": "The unique identifier of the cluster that you want to rotate the encryption keys for. Constraints: Must be the name of valid cluster that has encryption enabled."
}
"""
RotateEncryptionKey(args) = redshift("RotateEncryptionKey", args)
