include("../AWSCorePrototypeServices.jl")
using .Services: neptune

"""
    DescribeDBEngineVersions()

Returns a list of the available DB engines.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more than the MaxRecords value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "ListSupportedTimezones": "If this parameter is specified and the requested engine supports the TimeZone parameter for CreateDBInstance, the response includes a list of supported time zones for each engine version.",
  "EngineVersion": "The database engine version to return. Example: 5.1.49 ",
  "Engine": "The database engine to return.",
  "Filters": "Not currently supported.",
  "ListSupportedCharacterSets": "If this parameter is specified and the requested engine supports the CharacterSetName parameter for CreateDBInstance, the response includes a list of supported character sets for each engine version.",
  "DefaultOnly": "Indicates that only the default version of the specified engine or engine and major version combination is returned.",
  "DBParameterGroupFamily": "The name of a specific DB parameter group family to return details for. Constraints:   If supplied, must match an existing DBParameterGroupFamily.  "
}
"""
DescribeDBEngineVersions() = neptune("DescribeDBEngineVersions")
DescribeDBEngineVersions(args) = neptune("DescribeDBEngineVersions", args)

"""
    DescribeDBInstances()

Returns information about provisioned instances, and supports pagination.  This operation can also return information for Amazon RDS instances and Amazon DocDB instances. 

Optional Parameters
{
  "DBInstanceIdentifier": "The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive. Constraints:   If supplied, must match the identifier of an existing DBInstance.  ",
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeDBInstances request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "A filter that specifies one or more DB instances to describe. Supported filters:    db-cluster-id - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.    engine - Accepts an engine name (such as neptune), and restricts the results list to DB instances created by that engine.   For example, to invoke this API from the AWS CLI and filter so that only Neptune DB instances are returned, you could use the following command:"
}
"""
DescribeDBInstances() = neptune("DescribeDBInstances")
DescribeDBInstances(args) = neptune("DescribeDBInstances", args)

"""
    DescribeValidDBInstanceModifications()

You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance. You can use this information when you call ModifyDBInstance.

Required Parameters
{
  "DBInstanceIdentifier": "The customer identifier or the ARN of your DB instance."
}
"""
DescribeValidDBInstanceModifications(args) = neptune("DescribeValidDBInstanceModifications", args)

"""
    FailoverDBCluster()

Forces a failover for a DB cluster. A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer). Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.

Optional Parameters
{
  "DBClusterIdentifier": "A DB cluster identifier to force a failover for. This parameter is not case-sensitive. Constraints:   Must match the identifier of an existing DBCluster.  ",
  "TargetDBInstanceIdentifier": "The name of the instance to promote to the primary instance. You must specify the instance identifier for an Read Replica in the DB cluster. For example, mydbcluster-replica1."
}
"""
FailoverDBCluster() = neptune("FailoverDBCluster")
FailoverDBCluster(args) = neptune("FailoverDBCluster", args)

"""
    StopDBCluster()

Stops an Amazon Neptune DB cluster. When you stop a DB cluster, Neptune retains the DB cluster's metadata, including its endpoints and DB parameter groups. Neptune also retains the transaction logs so you can do a point-in-time restore if necessary.

Required Parameters
{
  "DBClusterIdentifier": "The DB cluster identifier of the Neptune DB cluster to be stopped. This parameter is stored as a lowercase string."
}
"""
StopDBCluster(args) = neptune("StopDBCluster", args)

"""
    AddRoleToDBCluster()

Associates an Identity and Access Management (IAM) role from an Neptune DB cluster.

Required Parameters
{
  "DBClusterIdentifier": "The name of the DB cluster to associate the IAM role with.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster, for example arn:aws:iam::123456789012:role/NeptuneAccessRole."
}
"""
AddRoleToDBCluster(args) = neptune("AddRoleToDBCluster", args)

"""
    RemoveRoleFromDBCluster()

Disassociates an Identity and Access Management (IAM) role from a DB cluster.

Required Parameters
{
  "DBClusterIdentifier": "The name of the DB cluster to disassociate the IAM role from.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for example arn:aws:iam::123456789012:role/NeptuneAccessRole."
}
"""
RemoveRoleFromDBCluster(args) = neptune("RemoveRoleFromDBCluster", args)

"""
    DescribeEventCategories()

Displays a list of categories for all event source types, or, if specified, for a specified source type.

Optional Parameters
{
  "SourceType": "The type of source that is generating the events. Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeEventCategories() = neptune("DescribeEventCategories")
DescribeEventCategories(args) = neptune("DescribeEventCategories", args)

"""
    DeleteDBClusterSnapshot()

Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The DB cluster snapshot must be in the available state to be deleted. 

Required Parameters
{
  "DBClusterSnapshotIdentifier": "The identifier of the DB cluster snapshot to delete. Constraints: Must be the name of an existing DB cluster snapshot in the available state."
}
"""
DeleteDBClusterSnapshot(args) = neptune("DeleteDBClusterSnapshot", args)

"""
    RestoreDBClusterFromSnapshot()

Creates a new DB cluster from a DB snapshot or DB cluster snapshot. If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group. If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.

Required Parameters
{
  "DBClusterIdentifier": "The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens   Example: my-snapshot-id ",
  "Engine": "The database engine to use for the new DB cluster. Default: The same as source Constraint: Must be compatible with the engine of the source",
  "SnapshotIdentifier": "The identifier for the DB snapshot or DB cluster snapshot to restore from. You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot. Constraints:   Must match the identifier of an existing Snapshot.  "
}

Optional Parameters
{
  "DatabaseName": "Not supported.",
  "OptionGroupName": " (Not supported by Neptune) ",
  "AvailabilityZones": "Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.",
  "DBSubnetGroupName": "The name of the DB subnet group to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: mySubnetgroup ",
  "Tags": "The tags to be assigned to the restored DB cluster.",
  "EnableIAMDatabaseAuthentication": "True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false. Default: false ",
  "EngineVersion": "The version of the database engine to use for the new DB cluster.",
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group to associate with the new DB cluster. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  ",
  "Port": "The port number on which the new DB cluster accepts connections. Constraints: Value must be 1150-65535  Default: The same port as the original DB cluster.",
  "EnableCloudwatchLogsExports": "The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.",
  "DeletionProtection": "A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. ",
  "VpcSecurityGroupIds": "A list of VPC security groups that the new DB cluster will belong to.",
  "KmsKeyId": "The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key. If you do not specify a value for the KmsKeyId parameter, then the following will occur:   If the DB snapshot or DB cluster snapshot in SnapshotIdentifier is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB snapshot or DB cluster snapshot.   If the DB snapshot or DB cluster snapshot in SnapshotIdentifier is not encrypted, then the restored DB cluster is not encrypted.  "
}
"""
RestoreDBClusterFromSnapshot(args) = neptune("RestoreDBClusterFromSnapshot", args)

"""
    DeleteDBCluster()

The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted. Note that the DB Cluster cannot be deleted if deletion protection is enabled. To delete it, you must first set its DeletionProtection field to False.

Required Parameters
{
  "DBClusterIdentifier": "The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive. Constraints:   Must match an existing DBClusterIdentifier.  "
}

Optional Parameters
{
  "SkipFinalSnapshot": " Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If true is specified, no DB cluster snapshot is created. If false is specified, a DB cluster snapshot is created before the DB cluster is deleted.  You must specify a FinalDBSnapshotIdentifier parameter if SkipFinalSnapshot is false.  Default: false ",
  "FinalDBSnapshotIdentifier": " The DB cluster snapshot identifier of the new DB cluster snapshot created when SkipFinalSnapshot is set to false.   Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.  Constraints:   Must be 1 to 255 letters, numbers, or hyphens.   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens  "
}
"""
DeleteDBCluster(args) = neptune("DeleteDBCluster", args)

"""
    CopyDBClusterParameterGroup()

Copies the specified DB cluster parameter group.

Required Parameters
{
  "SourceDBClusterParameterGroupIdentifier": "The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN). Constraints:   Must specify a valid DB cluster parameter group.   If the source DB cluster parameter group is in the same AWS Region as the copy, specify a valid DB parameter group identifier, for example my-db-cluster-param-group, or a valid ARN.   If the source DB parameter group is in a different AWS Region than the copy, specify a valid DB cluster parameter group ARN, for example arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1.  ",
  "TargetDBClusterParameterGroupDescription": "A description for the copied DB cluster parameter group.",
  "TargetDBClusterParameterGroupIdentifier": "The identifier for the copied DB cluster parameter group. Constraints:   Cannot be null, empty, or blank   Must contain from 1 to 255 letters, numbers, or hyphens   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens   Example: my-cluster-param-group1 "
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the copied DB cluster parameter group."
}
"""
CopyDBClusterParameterGroup(args) = neptune("CopyDBClusterParameterGroup", args)

"""
    DeleteEventSubscription()

Deletes an event notification subscription.

Required Parameters
{
  "SubscriptionName": "The name of the event notification subscription you want to delete."
}
"""
DeleteEventSubscription(args) = neptune("DeleteEventSubscription", args)

"""
    ResetDBParameterGroup()

Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: ParameterName and ApplyMethod. To reset the entire DB parameter group, specify the DBParameterGroup name and ResetAllParameters parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request.

Required Parameters
{
  "DBParameterGroupName": "The name of the DB parameter group. Constraints:   Must match the name of an existing DBParameterGroup.  "
}

Optional Parameters
{
  "Parameters": "To reset the entire DB parameter group, specify the DBParameterGroup name and ResetAllParameters parameters. To reset specific parameters, provide a list of the following: ParameterName and ApplyMethod. A maximum of 20 parameters can be modified in a single request. Valid Values (for Apply method): pending-reboot ",
  "ResetAllParameters": "Specifies whether (true) or not (false) to reset all parameters in the DB parameter group to default values. Default: true "
}
"""
ResetDBParameterGroup(args) = neptune("ResetDBParameterGroup", args)

"""
    ModifyEventSubscription()

Modifies an existing event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the AddSourceIdentifierToSubscription and RemoveSourceIdentifierFromSubscription calls. You can see a list of the event categories for a given SourceType by using the DescribeEventCategories action.

Required Parameters
{
  "SubscriptionName": "The name of the event notification subscription."
}

Optional Parameters
{
  "SourceType": "The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned. Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot",
  "SnsTopicArn": "The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.",
  "EventCategories": " A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the DescribeEventCategories action.",
  "Enabled": " A Boolean value; set to true to activate the subscription."
}
"""
ModifyEventSubscription(args) = neptune("ModifyEventSubscription", args)

"""
    DeleteDBClusterParameterGroup()

Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.

Required Parameters
{
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group. Constraints:   Must be the name of an existing DB cluster parameter group.   You can't delete a default DB cluster parameter group.   Cannot be associated with any DB clusters.  "
}
"""
DeleteDBClusterParameterGroup(args) = neptune("DeleteDBClusterParameterGroup", args)

"""
    DescribeOrderableDBInstanceOptions()

Returns a list of orderable DB instance options for the specified engine.

Required Parameters
{
  "Engine": "The name of the engine to retrieve DB instance options for."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords .",
  "EngineVersion": "The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.",
  "LicenseModel": "The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.",
  "Vpc": "The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.",
  "DBInstanceClass": "The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeOrderableDBInstanceOptions(args) = neptune("DescribeOrderableDBInstanceOptions", args)

"""
    DescribeDBClusterParameters()

Returns the detailed parameter list for a particular DB cluster parameter group.

Required Parameters
{
  "DBClusterParameterGroupName": "The name of a specific DB cluster parameter group to return parameter details for. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  "
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Source": " A value that indicates to return only parameters for a specific source. Parameter sources can be engine, service, or customer.",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeDBClusterParameters(args) = neptune("DescribeDBClusterParameters", args)

"""
    DescribeDBParameterGroups()

Returns a list of DBParameterGroup descriptions. If a DBParameterGroupName is specified, the list will contain only the description of the specified DB parameter group.

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": "An optional pagination token provided by a previous DescribeDBParameterGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "DBParameterGroupName": "The name of a specific DB parameter group to return details for. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  ",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeDBParameterGroups() = neptune("DescribeDBParameterGroups")
DescribeDBParameterGroups(args) = neptune("DescribeDBParameterGroups", args)

"""
    ModifyDBParameterGroup()

Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.   After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 

Required Parameters
{
  "Parameters": "An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request. Valid Values (for the application method): immediate | pending-reboot   You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover. ",
  "DBParameterGroupName": "The name of the DB parameter group. Constraints:   If supplied, must match the name of an existing DBParameterGroup.  "
}
"""
ModifyDBParameterGroup(args) = neptune("ModifyDBParameterGroup", args)

"""
    CreateEventSubscription()

Creates an event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console. You can specify the type of source (SourceType) you want to be notified of, provide a list of Neptune sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup. If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Neptune sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all Neptune sources belonging to your customer account.

Required Parameters
{
  "SubscriptionName": "The name of the subscription. Constraints: The name must be less than 255 characters.",
  "SnsTopicArn": "The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it."
}

Optional Parameters
{
  "SourceIds": "The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens. Constraints:   If SourceIds are supplied, SourceType must also be provided.   If the source type is a DB instance, then a DBInstanceIdentifier must be supplied.   If the source type is a DB security group, a DBSecurityGroupName must be supplied.   If the source type is a DB parameter group, a DBParameterGroupName must be supplied.   If the source type is a DB snapshot, a DBSnapshotIdentifier must be supplied.  ",
  "Tags": "The tags to be applied to the new event subscription.",
  "SourceType": "The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned. Valid values: db-instance | db-cluster | db-parameter-group | db-security-group | db-snapshot | db-cluster-snapshot ",
  "EventCategories": " A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the DescribeEventCategories action.",
  "Enabled": " A Boolean value; set to true to activate the subscription, set to false to create the subscription but not active it."
}
"""
CreateEventSubscription(args) = neptune("CreateEventSubscription", args)

"""
    CreateDBCluster()

Creates a new Amazon Neptune DB cluster. You can use the ReplicationSourceIdentifier parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance. Note that when you create a new cluster using CreateDBCluster directly, deletion protection is disabled by default (when you create a new production cluster in the console, deletion protection is enabled by default). You can only delete a DB cluster if its DeletionProtection field is set to false.

Required Parameters
{
  "DBClusterIdentifier": "The DB cluster identifier. This parameter is stored as a lowercase string. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: my-cluster1 ",
  "Engine": "The name of the database engine to be used for this DB cluster. Valid Values: neptune "
}

Optional Parameters
{
  "DatabaseName": "The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Neptune will not create a database in the DB cluster you are creating.",
  "ReplicationSourceIdentifier": "The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.",
  "OptionGroupName": " (Not supported by Neptune) ",
  "CharacterSetName": " (Not supported by Neptune) ",
  "PreferredMaintenanceWindow": "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). Format: ddd:hh24:mi-ddd:hh24:mi  The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see  Adjusting the Preferred Maintenance Window in the Amazon Neptune User Guide.  Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun. Constraints: Minimum 30-minute window.",
  "AvailabilityZones": "A list of EC2 Availability Zones that instances in the DB cluster can be created in.",
  "BackupRetentionPeriod": "The number of days for which automated backups are retained. You must specify a minimum value of 1. Default: 1 Constraints:   Must be a value from 1 to 35  ",
  "DBSubnetGroupName": "A DB subnet group to associate with this DB cluster. Constraints: Must match the name of an existing DBSubnetGroup. Must not be default. Example: mySubnetgroup ",
  "Tags": "The tags to assign to the new DB cluster.",
  "StorageEncrypted": "Specifies whether the DB cluster is encrypted.",
  "EnableIAMDatabaseAuthentication": "True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false. Default: false ",
  "MasterUsername": "The name of the master user for the DB cluster. Constraints:   Must be 1 to 16 letters or numbers.   First character must be a letter.   Cannot be a reserved word for the chosen database engine.  ",
  "PreferredBackupWindow": "The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see  Adjusting the Preferred Maintenance Window in the Amazon Neptune User Guide.  Constraints:   Must be in the format hh24:mi-hh24:mi.   Must be in Universal Coordinated Time (UTC).   Must not conflict with the preferred maintenance window.   Must be at least 30 minutes.  ",
  "PreSignedUrl": "This parameter is not currently supported.",
  "EngineVersion": "The version number of the database engine to use. Currently, setting this parameter has no effect. Example: 1.0.1 ",
  "DBClusterParameterGroupName": " The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default is used. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  ",
  "MasterUserPassword": "The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\". Constraints: Must contain from 8 to 41 characters.",
  "Port": "The port number on which the instances in the DB cluster accept connections.  Default: 8182 ",
  "EnableCloudwatchLogsExports": "The list of log types that need to be enabled for exporting to CloudWatch Logs.",
  "DeletionProtection": "A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is enabled.",
  "VpcSecurityGroupIds": "A list of EC2 VPC security groups to associate with this DB cluster.",
  "KmsKeyId": "The AWS KMS key identifier for an encrypted DB cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key. If an encryption key is not specified in KmsKeyId:   If ReplicationSourceIdentifier identifies an encrypted source, then Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon Neptune will use your default encryption key.   If the StorageEncrypted parameter is true and ReplicationSourceIdentifier is not specified, then Amazon Neptune will use your default encryption key.   AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region. If you create a Read Replica of an encrypted DB cluster in another AWS Region, you must set KmsKeyId to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the Read Replica in that AWS Region."
}
"""
CreateDBCluster(args) = neptune("CreateDBCluster", args)

"""
    CreateDBSubnetGroup()

Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.

Required Parameters
{
  "DBSubnetGroupName": "The name for the DB subnet group. This value is stored as a lowercase string. Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default. Example: mySubnetgroup ",
  "SubnetIds": "The EC2 Subnet IDs for the DB subnet group.",
  "DBSubnetGroupDescription": "The description for the DB subnet group."
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the new DB subnet group."
}
"""
CreateDBSubnetGroup(args) = neptune("CreateDBSubnetGroup", args)

"""
    RemoveSourceIdentifierFromSubscription()

Removes a source identifier from an existing event notification subscription.

Required Parameters
{
  "SubscriptionName": "The name of the event notification subscription you want to remove a source identifier from.",
  "SourceIdentifier": " The source identifier to be removed from the subscription, such as the DB instance identifier for a DB instance or the name of a security group."
}
"""
RemoveSourceIdentifierFromSubscription(args) = neptune("RemoveSourceIdentifierFromSubscription", args)

"""
    CopyDBParameterGroup()

Copies the specified DB parameter group.

Required Parameters
{
  "TargetDBParameterGroupDescription": "A description for the copied DB parameter group.",
  "SourceDBParameterGroupIdentifier": "The identifier or ARN for the source DB parameter group. For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN). Constraints:   Must specify a valid DB parameter group.   Must specify a valid DB parameter group identifier, for example my-db-param-group, or a valid ARN.  ",
  "TargetDBParameterGroupIdentifier": "The identifier for the copied DB parameter group. Constraints:   Cannot be null, empty, or blank.   Must contain from 1 to 255 letters, numbers, or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: my-db-parameter-group "
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the copied DB parameter group."
}
"""
CopyDBParameterGroup(args) = neptune("CopyDBParameterGroup", args)

"""
    DeleteDBInstance()

The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by DeleteDBInstance are not deleted.  If you request a final DB snapshot the status of the Amazon Neptune DB instance is deleting until the DB snapshot is created. The API action DescribeDBInstance is used to monitor the status of this operation. The action can't be canceled or reverted once submitted. Note that when a DB instance is in a failure state and has a status of failed, incompatible-restore, or incompatible-network, you can only delete it when the SkipFinalSnapshot parameter is set to true. You can't delete a DB instance if it is the only instance in the DB cluster, or if it has deletion protection enabled.

Required Parameters
{
  "DBInstanceIdentifier": "The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive. Constraints:   Must match the name of an existing DB instance.  "
}

Optional Parameters
{
  "SkipFinalSnapshot": " Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted. Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to \"true\". Specify true when deleting a Read Replica.  The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is false.  Default: false ",
  "FinalDBSnapshotIdentifier": " The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to false.  Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.  Constraints:   Must be 1 to 255 letters or numbers.   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens   Cannot be specified when deleting a Read Replica.  "
}
"""
DeleteDBInstance(args) = neptune("DeleteDBInstance", args)

"""
    ModifyDBCluster()

Modify a setting for a DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.

Required Parameters
{
  "DBClusterIdentifier": "The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive. Constraints:   Must match the identifier of an existing DBCluster.  "
}

Optional Parameters
{
  "OptionGroupName": " (Not supported by Neptune) ",
  "PreferredMaintenanceWindow": "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). Format: ddd:hh24:mi-ddd:hh24:mi  The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun. Constraints: Minimum 30-minute window.",
  "BackupRetentionPeriod": "The number of days for which automated backups are retained. You must specify a minimum value of 1. Default: 1 Constraints:   Must be a value from 1 to 35  ",
  "EnableIAMDatabaseAuthentication": "True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false. Default: false ",
  "PreferredBackupWindow": "The daily time range during which automated backups are created if automated backups are enabled, using the BackupRetentionPeriod parameter. The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. Constraints:   Must be in the format hh24:mi-hh24:mi.   Must be in Universal Coordinated Time (UTC).   Must not conflict with the preferred maintenance window.   Must be at least 30 minutes.  ",
  "EngineVersion": "The version number of the database engine. Currently, setting this parameter has no effect. To upgrade your database engine to the most recent release, use the ApplyPendingMaintenanceAction API. For a list of valid engine versions, see CreateDBInstance, or call DescribeDBEngineVersions.",
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group to use for the DB cluster.",
  "MasterUserPassword": "The new password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\". Constraints: Must contain from 8 to 41 characters.",
  "Port": "The port number on which the DB cluster accepts connections. Constraints: Value must be 1150-65535  Default: The same port as the original DB cluster.",
  "NewDBClusterIdentifier": "The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens   The first character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens   Example: my-cluster2 ",
  "CloudwatchLogsExportConfiguration": "The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB cluster.",
  "ApplyImmediately": "A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the PreferredMaintenanceWindow setting for the DB cluster. If this parameter is set to false, changes to the DB cluster are applied during the next maintenance window. The ApplyImmediately parameter only affects the NewDBClusterIdentifier and MasterUserPassword values. If you set the ApplyImmediately parameter value to false, then changes to the NewDBClusterIdentifier and MasterUserPassword values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the ApplyImmediately parameter. Default: false ",
  "VpcSecurityGroupIds": "A list of VPC security groups that the DB cluster will belong to.",
  "DeletionProtection": "A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled."
}
"""
ModifyDBCluster(args) = neptune("ModifyDBCluster", args)

"""
    ModifyDBClusterParameterGroup()

 Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.   After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 

Required Parameters
{
  "Parameters": "A list of parameters in the DB cluster parameter group to modify.",
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group to modify."
}
"""
ModifyDBClusterParameterGroup(args) = neptune("ModifyDBClusterParameterGroup", args)

"""
    RestoreDBClusterToPointInTime()

Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.  This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the CreateDBInstance action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in DBClusterIdentifier. You can create DB instances only after the RestoreDBClusterToPointInTime action has completed and the DB cluster is available. 

Required Parameters
{
  "DBClusterIdentifier": "The name of the new DB cluster to be created. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens  ",
  "SourceDBClusterIdentifier": "The identifier of the source DB cluster from which to restore. Constraints:   Must match the identifier of an existing DBCluster.  "
}

Optional Parameters
{
  "UseLatestRestorableTime": "A value that is set to true to restore the DB cluster to the latest restorable backup time, and false otherwise. Default: false  Constraints: Cannot be specified if RestoreToTime parameter is provided.",
  "OptionGroupName": " (Not supported by Neptune) ",
  "DBSubnetGroupName": "The DB subnet group name to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: mySubnetgroup ",
  "Tags": "The tags to be applied to the restored DB cluster.",
  "EnableIAMDatabaseAuthentication": "True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false. Default: false ",
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group to associate with the new DB cluster. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  ",
  "Port": "The port number on which the new DB cluster accepts connections. Constraints: Value must be 1150-65535  Default: The same port as the original DB cluster.",
  "EnableCloudwatchLogsExports": "The list of logs that the restored DB cluster is to export to CloudWatch Logs.",
  "DeletionProtection": "A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. ",
  "VpcSecurityGroupIds": "A list of VPC security groups that the new DB cluster belongs to.",
  "KmsKeyId": "The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key. You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key identified by the KmsKeyId parameter. If you do not specify a value for the KmsKeyId parameter, then the following will occur:   If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.   If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.   If DBClusterIdentifier refers to a DB cluster that is not encrypted, then the restore request is rejected.",
  "RestoreType": "The type of restore to be performed. You can specify one of the following values:    full-copy - The new DB cluster is restored as a full copy of the source DB cluster.    copy-on-write - The new DB cluster is restored as a clone of the source DB cluster.   If you don't specify a RestoreType value, then the new DB cluster is restored as a full copy of the source DB cluster.",
  "RestoreToTime": "The date and time to restore the DB cluster to. Valid Values: Value must be a time in Universal Coordinated Time (UTC) format Constraints:   Must be before the latest restorable time for the DB instance   Must be specified if UseLatestRestorableTime parameter is not provided   Cannot be specified if UseLatestRestorableTime parameter is true   Cannot be specified if RestoreType parameter is copy-on-write    Example: 2015-03-07T23:45:00Z "
}
"""
RestoreDBClusterToPointInTime(args) = neptune("RestoreDBClusterToPointInTime", args)

"""
    ListTagsForResource()

Lists all tags on an Amazon Neptune resource.

Required Parameters
{
  "ResourceName": "The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN)."
}

Optional Parameters
{
  "Filters": "This parameter is not currently supported."
}
"""
ListTagsForResource(args) = neptune("ListTagsForResource", args)

"""
    PromoteReadReplicaDBCluster()

Not supported.

Required Parameters
{
  "DBClusterIdentifier": "Not supported."
}
"""
PromoteReadReplicaDBCluster(args) = neptune("PromoteReadReplicaDBCluster", args)

"""
    DescribeDBParameters()

Returns the detailed parameter list for a particular DB parameter group.

Required Parameters
{
  "DBParameterGroupName": "The name of a specific DB parameter group to return details for. Constraints:   If supplied, must match the name of an existing DBParameterGroup.  "
}

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": "An optional pagination token provided by a previous DescribeDBParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Source": "The parameter types to return. Default: All parameter types returned Valid Values: user | system | engine-default ",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeDBParameters(args) = neptune("DescribeDBParameters", args)

"""
    DescribeDBClusterSnapshotAttributes()

Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot. When sharing snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If all is included in the list of values for the restore attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts. To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the ModifyDBClusterSnapshotAttribute API action.

Required Parameters
{
  "DBClusterSnapshotIdentifier": "The identifier for the DB cluster snapshot to describe the attributes for."
}
"""
DescribeDBClusterSnapshotAttributes(args) = neptune("DescribeDBClusterSnapshotAttributes", args)

"""
    ModifyDBClusterSnapshotAttribute()

Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual DB cluster snapshot with other AWS accounts, specify restore as the AttributeName and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value all to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case. To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the DescribeDBClusterSnapshotAttributes API action.

Required Parameters
{
  "AttributeName": "The name of the DB cluster snapshot attribute to modify. To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to restore.",
  "DBClusterSnapshotIdentifier": "The identifier for the DB cluster snapshot to modify the attributes for."
}

Optional Parameters
{
  "ValuesToAdd": "A list of DB cluster snapshot attributes to add to the attribute specified by AttributeName. To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or all to make the manual DB cluster snapshot restorable by any AWS account. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.",
  "ValuesToRemove": "A list of DB cluster snapshot attributes to remove from the attribute specified by AttributeName. To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or all to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify all, an AWS account whose account ID is explicitly added to the restore attribute can still copy or restore a manual DB cluster snapshot."
}
"""
ModifyDBClusterSnapshotAttribute(args) = neptune("ModifyDBClusterSnapshotAttribute", args)

"""
    AddTagsToResource()

Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon Neptune resources, or used in a Condition statement in an IAM policy for Amazon Neptune.

Required Parameters
{
  "Tags": "The tags to be assigned to the Amazon Neptune resource.",
  "ResourceName": "The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN)."
}
"""
AddTagsToResource(args) = neptune("AddTagsToResource", args)

"""
    RemoveTagsFromResource()

Removes metadata tags from an Amazon Neptune resource.

Required Parameters
{
  "ResourceName": "The Amazon Neptune resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN).",
  "TagKeys": "The tag key (name) of the tag to be removed."
}
"""
RemoveTagsFromResource(args) = neptune("RemoveTagsFromResource", args)

"""
    CreateDBClusterSnapshot()

Creates a snapshot of a DB cluster.

Required Parameters
{
  "DBClusterSnapshotIdentifier": "The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: my-cluster1-snapshot1 ",
  "DBClusterIdentifier": "The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive. Constraints:   Must match the identifier of an existing DBCluster.   Example: my-cluster1 "
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the DB cluster snapshot."
}
"""
CreateDBClusterSnapshot(args) = neptune("CreateDBClusterSnapshot", args)

"""
    RebootDBInstance()

You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect. Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.

Required Parameters
{
  "DBInstanceIdentifier": "The DB instance identifier. This parameter is stored as a lowercase string. Constraints:   Must match the identifier of an existing DBInstance.  "
}

Optional Parameters
{
  "ForceFailover": " When true, the reboot is conducted through a MultiAZ failover. Constraint: You can't specify true if the instance is not configured for MultiAZ."
}
"""
RebootDBInstance(args) = neptune("RebootDBInstance", args)

"""
    CopyDBClusterSnapshot()

Copies a snapshot of a DB cluster. To copy a DB cluster snapshot from a shared manual DB cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.

Required Parameters
{
  "TargetDBClusterSnapshotIdentifier": "The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: my-cluster-snapshot2 ",
  "SourceDBClusterSnapshotIdentifier": "The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive. You can't copy from one AWS Region to another. Constraints:   Must specify a valid system snapshot in the \"available\" state.   Specify a valid DB snapshot identifier.   Example: my-cluster-snapshot1 "
}

Optional Parameters
{
  "Tags": "The tags to assign to the new DB cluster snapshot copy.",
  "PreSignedUrl": "Not currently supported.",
  "CopyTags": "True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot, and otherwise false. The default is false.",
  "KmsKeyId": "The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for KmsKeyId to encrypt the copy with a new KMS encryption key. If you don't specify a value for KmsKeyId, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for KmsKeyId.  KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region. You cannot encrypt an unencrypted DB cluster snapshot when you copy it. If you try to copy an unencrypted DB cluster snapshot and specify a value for the KmsKeyId parameter, an error is returned."
}
"""
CopyDBClusterSnapshot(args) = neptune("CopyDBClusterSnapshot", args)

"""
    DescribeDBSubnetGroups()

Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup. For an overview of CIDR ranges, go to the Wikipedia Tutorial.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "DBSubnetGroupName": "The name of the DB subnet group to return details for.",
  "Marker": " An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeDBSubnetGroups() = neptune("DescribeDBSubnetGroups")
DescribeDBSubnetGroups(args) = neptune("DescribeDBSubnetGroups", args)

"""
    CreateDBInstance()

Creates a new DB instance.

Required Parameters
{
  "DBInstanceIdentifier": "The DB instance identifier. This parameter is stored as a lowercase string. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: mydbinstance ",
  "Engine": "The name of the database engine to be used for this instance. Valid Values: neptune ",
  "DBInstanceClass": "The compute and memory capacity of the DB instance, for example, db.m4.large. Not all DB instance classes are available in all AWS Regions."
}

Optional Parameters
{
  "Timezone": "The time zone of the DB instance.",
  "PubliclyAccessible": "This flag should no longer be used.",
  "PerformanceInsightsKMSKeyId": " (Not supported by Neptune) ",
  "OptionGroupName": " (Not supported by Neptune) ",
  "PreferredMaintenanceWindow": "The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi  The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun. Constraints: Minimum 30-minute window.",
  "CharacterSetName": " (Not supported by Neptune) ",
  "AutoMinorVersionUpgrade": "Indicates that minor engine upgrades are applied automatically to the DB instance during the maintenance window. Default: true ",
  "BackupRetentionPeriod": "The number of days for which automated backups are retained. Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see CreateDBCluster. Default: 1 Constraints:   Must be a value from 0 to 35   Cannot be set to 0 if the DB instance is a source to Read Replicas  ",
  "MonitoringInterval": "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. If MonitoringRoleArn is specified, then you must also set MonitoringInterval to a value other than 0. Valid Values: 0, 1, 5, 10, 15, 30, 60 ",
  "AllocatedStorage": "The amount of storage (in gibibytes) to allocate for the DB instance. Type: Integer Not applicable. Neptune cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in a Neptune cluster volume.",
  "PromotionTier": "A value that specifies the order in which an Read Replica is promoted to the primary instance after a failure of the existing primary instance.  Default: 1 Valid Values: 0 - 15",
  "DBSubnetGroupName": "A DB subnet group to associate with this DB instance. If there is no DB subnet group, then it is a non-VPC DB instance.",
  "StorageEncrypted": "Specifies whether the DB instance is encrypted. Not applicable. The encryption for DB instances is managed by the DB cluster. For more information, see CreateDBCluster. Default: false",
  "TdeCredentialArn": "The ARN from the key store with which to associate the instance for TDE encryption.",
  "DBSecurityGroups": "A list of DB security groups to associate with this DB instance. Default: The default DB security group for the database engine.",
  "CopyTagsToSnapshot": "True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.",
  "Tags": "The tags to assign to the new instance.",
  "Domain": "Specify the Active Directory Domain to create the instance in.",
  "EnableIAMDatabaseAuthentication": "True to enable AWS Identity and Access Management (IAM) authentication for Neptune. Default: false ",
  "DBParameterGroupName": "The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine is used. Constraints:   Must be 1 to 255 letters, numbers, or hyphens.   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens  ",
  "DomainIAMRoleName": "Specify the name of the IAM role to be used when making API calls to the Directory Service.",
  "MasterUsername": "The name for the master user. Not used.",
  "PreferredBackupWindow": " The daily time range during which automated backups are created. Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see CreateDBCluster.",
  "TdeCredentialPassword": "The password for the given ARN from the key store in order to access the device.",
  "EngineVersion": "The version number of the database engine to use. Currently, setting this parameter has no effect.",
  "LicenseModel": "License model information for this DB instance.  Valid values: license-included | bring-your-own-license | general-public-license ",
  "Iops": "The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.",
  "MasterUserPassword": "The password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".  Not used.",
  "Port": "The port number on which the database accepts connections. Not applicable. The port is managed by the DB cluster. For more information, see CreateDBCluster.  Default: 8182  Type: Integer",
  "MonitoringRoleArn": "The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, arn:aws:iam:123456789012:role/emaccess. If MonitoringInterval is set to a value other than 0, then you must supply a MonitoringRoleArn value.",
  "EnableCloudwatchLogsExports": "The list of log types that need to be enabled for exporting to CloudWatch Logs.",
  "AvailabilityZone": " The EC2 Availability Zone that the DB instance is created in Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.  Example: us-east-1d   Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is set to true. The specified Availability Zone must be in the same AWS Region as the current endpoint.",
  "DeletionProtection": "A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. See Deleting a DB Instance. DB instances in a DB cluster can be deleted even when deletion protection is enabled in their parent DB cluster.",
  "VpcSecurityGroupIds": "A list of EC2 VPC security groups to associate with this DB instance. Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see CreateDBCluster. Default: The default EC2 VPC security group for the DB subnet group's VPC.",
  "StorageType": "Specifies the storage type to be associated with the DB instance. Not applicable. Storage is managed by the DB Cluster.",
  "EnablePerformanceInsights": " (Not supported by Neptune) ",
  "DBClusterIdentifier": "The identifier of the DB cluster that the instance will belong to. For information on creating a DB cluster, see CreateDBCluster. Type: String",
  "KmsKeyId": "The AWS KMS key identifier for an encrypted DB instance. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key. Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see CreateDBCluster. If the StorageEncrypted parameter is true, and you do not specify a value for the KmsKeyId parameter, then Amazon Neptune will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.",
  "DBName": "Not supported.",
  "MultiAZ": "Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the MultiAZ parameter is set to true."
}
"""
CreateDBInstance(args) = neptune("CreateDBInstance", args)

"""
    ApplyPendingMaintenanceAction()

Applies a pending maintenance action to a resource (for example, to a DB instance).

Required Parameters
{
  "ApplyAction": "The pending maintenance action to apply to this resource. Valid values: system-update, db-upgrade ",
  "OptInType": "A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type immediate can't be undone. Valid values:    immediate - Apply the maintenance action immediately.    next-maintenance - Apply the maintenance action during the next maintenance window for the resource.    undo-opt-in - Cancel any existing next-maintenance opt-in requests.  ",
  "ResourceIdentifier": "The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see  Constructing an Amazon Resource Name (ARN)."
}
"""
ApplyPendingMaintenanceAction(args) = neptune("ApplyPendingMaintenanceAction", args)

"""
    ModifyDBSubnetGroup()

Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.

Required Parameters
{
  "DBSubnetGroupName": "The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. Constraints: Must match the name of an existing DBSubnetGroup. Must not be default. Example: mySubnetgroup ",
  "SubnetIds": "The EC2 subnet IDs for the DB subnet group."
}

Optional Parameters
{
  "DBSubnetGroupDescription": "The description for the DB subnet group."
}
"""
ModifyDBSubnetGroup(args) = neptune("ModifyDBSubnetGroup", args)

"""
    DeleteDBSubnetGroup()

Deletes a DB subnet group.  The specified database subnet group must not be associated with any DB instances. 

Required Parameters
{
  "DBSubnetGroupName": "The name of the database subnet group to delete.  You can't delete the default subnet group.  Constraints: Constraints: Must match the name of an existing DBSubnetGroup. Must not be default. Example: mySubnetgroup "
}
"""
DeleteDBSubnetGroup(args) = neptune("DeleteDBSubnetGroup", args)

"""
    DescribeEvents()

Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.

Optional Parameters
{
  "StartTime": " The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2009-07-08T18:00Z",
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "SourceIdentifier": "The identifier of the event source for which events are returned. If not specified, then all sources are included in the response. Constraints:   If SourceIdentifier is supplied, SourceType must also be provided.   If the source type is DBInstance, then a DBInstanceIdentifier must be supplied.   If the source type is DBSecurityGroup, a DBSecurityGroupName must be supplied.   If the source type is DBParameterGroup, a DBParameterGroupName must be supplied.   If the source type is DBSnapshot, a DBSnapshotIdentifier must be supplied.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "EndTime": " The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the ISO8601 Wikipedia page.  Example: 2009-07-08T18:00Z",
  "SourceType": "The event source to retrieve events for. If no value is specified, all events are returned.",
  "Duration": "The number of minutes to retrieve events for. Default: 60",
  "Filters": "This parameter is not currently supported.",
  "EventCategories": "A list of event categories that trigger notifications for a event notification subscription."
}
"""
DescribeEvents() = neptune("DescribeEvents")
DescribeEvents(args) = neptune("DescribeEvents", args)

"""
    DescribeEngineDefaultParameters()

Returns the default engine and system parameter information for the specified database engine.

Required Parameters
{
  "DBParameterGroupFamily": "The name of the DB parameter group family."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeEngineDefaultParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "Not currently supported."
}
"""
DescribeEngineDefaultParameters(args) = neptune("DescribeEngineDefaultParameters", args)

"""
    CreateDBParameterGroup()

Creates a new DB parameter group. A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBParameterGroup. Once you've created a DB parameter group, you need to associate it with your DB instance using ModifyDBInstance. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.  After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 

Required Parameters
{
  "Description": "The description for the DB parameter group.",
  "DBParameterGroupName": "The name of the DB parameter group. Constraints:   Must be 1 to 255 letters, numbers, or hyphens.   First character must be a letter   Cannot end with a hyphen or contain two consecutive hyphens    This value is stored as a lowercase string. ",
  "DBParameterGroupFamily": "The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family."
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the new DB parameter group."
}
"""
CreateDBParameterGroup(args) = neptune("CreateDBParameterGroup", args)

"""
    DescribeEventSubscriptions()

Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords .",
  "SubscriptionName": "The name of the event notification subscription you want to describe.",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeEventSubscriptions() = neptune("DescribeEventSubscriptions")
DescribeEventSubscriptions(args) = neptune("DescribeEventSubscriptions", args)

"""
    ModifyDBInstance()

Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call DescribeValidDBInstanceModifications before you call ModifyDBInstance.

Required Parameters
{
  "DBInstanceIdentifier": "The DB instance identifier. This value is stored as a lowercase string. Constraints:   Must match the identifier of an existing DBInstance.  "
}

Optional Parameters
{
  "AllowMajorVersionUpgrade": "Indicates that major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.",
  "PubliclyAccessible": "This flag should no longer be used.",
  "DBPortNumber": "The port number on which the database accepts connections. The value of the DBPortNumber parameter must not match any of the port values specified for options in the option group for the DB instance. Your database will restart when you change the DBPortNumber value regardless of the value of the ApplyImmediately parameter.  Default: 8182 ",
  "PerformanceInsightsKMSKeyId": " (Not supported by Neptune) ",
  "OptionGroupName": " (Not supported by Neptune) ",
  "PreferredMaintenanceWindow": "The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn't result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied. Default: Uses existing setting Format: ddd:hh24:mi-ddd:hh24:mi Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes",
  "AutoMinorVersionUpgrade": " Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to true during the maintenance window, and a newer minor version is available, and Neptune has enabled auto patching for that engine version.",
  "BackupRetentionPeriod": "Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see ModifyDBCluster. Default: Uses existing setting",
  "MonitoringInterval": "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. If MonitoringRoleArn is specified, then you must also set MonitoringInterval to a value other than 0. Valid Values: 0, 1, 5, 10, 15, 30, 60 ",
  "AllocatedStorage": "The new amount of storage (in gibibytes) to allocate for the DB instance. Not applicable. Storage is managed by the DB Cluster.",
  "PromotionTier": "A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance. Default: 1 Valid Values: 0 - 15",
  "DBSubnetGroupName": "The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify true for the ApplyImmediately parameter. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: mySubnetGroup ",
  "TdeCredentialArn": "The ARN from the key store with which to associate the instance for TDE encryption.",
  "DBSecurityGroups": "A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible. Constraints:   If supplied, must match existing DBSecurityGroups.  ",
  "CACertificateIdentifier": "Indicates the certificate that needs to be associated with the instance.",
  "CopyTagsToSnapshot": "True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.",
  "EnableIAMDatabaseAuthentication": "True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false. You can enable IAM database authentication for the following database engines Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see ModifyDBCluster. Default: false ",
  "Domain": "Not supported.",
  "DBParameterGroupName": "The name of the DB parameter group to apply to the DB instance. Changing this setting doesn't result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window. Default: Uses existing setting Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.",
  "DomainIAMRoleName": "Not supported",
  "PreferredBackupWindow": " The daily time range during which automated backups are created if automated backups are enabled. Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see ModifyDBCluster. Constraints:   Must be in the format hh24:mi-hh24:mi   Must be in Universal Time Coordinated (UTC)   Must not conflict with the preferred maintenance window   Must be at least 30 minutes  ",
  "NewDBInstanceIdentifier": " The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set Apply Immediately to true, or will occur during the next maintenance window if Apply Immediately to false. This value is stored as a lowercase string. Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   The first character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.   Example: mydbinstance ",
  "TdeCredentialPassword": "The password for the given ARN from the key store in order to access the device.",
  "EngineVersion": "The version number of the database engine to upgrade to. Currently, setting this parameter has no effect. To upgrade your database engine to the most recent release, use the ApplyPendingMaintenanceAction API.",
  "LicenseModel": "Not supported.",
  "MasterUserPassword": "Not applicable.",
  "DBInstanceClass": "The new compute and memory capacity of the DB instance, for example, db.m4.large. Not all DB instance classes are available in all AWS Regions. If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless ApplyImmediately is specified as true for this request. Default: Uses existing setting",
  "Iops": "The new Provisioned IOPS (I/O operations per second) value for the instance. Changing this setting doesn't result in an outage and the change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true for this request. Default: Uses existing setting",
  "MonitoringRoleArn": "The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, arn:aws:iam:123456789012:role/emaccess. If MonitoringInterval is set to a value other than 0, then you must supply a MonitoringRoleArn value.",
  "DeletionProtection": "A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. See Deleting a DB Instance.",
  "CloudwatchLogsExportConfiguration": "The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.",
  "ApplyImmediately": "Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the PreferredMaintenanceWindow setting for the DB instance.  If this parameter is set to false, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to RebootDBInstance, or the next failure reboot. Default: false ",
  "VpcSecurityGroupIds": "A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible. Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see ModifyDBCluster. Constraints:   If supplied, must match existing VpcSecurityGroupIds.  ",
  "StorageType": "Not supported.",
  "EnablePerformanceInsights": " (Not supported by Neptune) ",
  "MultiAZ": "Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't result in an outage and the change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true for this request."
}
"""
ModifyDBInstance(args) = neptune("ModifyDBInstance", args)

"""
    StartDBCluster()

Starts an Amazon Neptune DB cluster that was stopped using the AWS console, the AWS CLI stop-db-cluster command, or the StopDBCluster API.

Required Parameters
{
  "DBClusterIdentifier": "The DB cluster identifier of the Neptune DB cluster to be started. This parameter is stored as a lowercase string."
}
"""
StartDBCluster(args) = neptune("StartDBCluster", args)

"""
    DescribeEngineDefaultClusterParameters()

Returns the default engine and system parameter information for the cluster database engine.

Required Parameters
{
  "DBParameterGroupFamily": "The name of the DB cluster parameter group family to return engine parameter information for."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeEngineDefaultClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeEngineDefaultClusterParameters(args) = neptune("DescribeEngineDefaultClusterParameters", args)

"""
    ResetDBClusterParameterGroup()

 Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: ParameterName and ApplyMethod. To reset the entire DB cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.  When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request. You must call RebootDBInstance for every DB instance in your DB cluster that you want the updated static parameter to apply to.

Required Parameters
{
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group to reset."
}

Optional Parameters
{
  "Parameters": "A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this parameter if the ResetAllParameters parameter is set to true.",
  "ResetAllParameters": "A value that is set to true to reset all parameters in the DB cluster parameter group to their default values, and false otherwise. You can't use this parameter if there is a list of parameter names specified for the Parameters parameter."
}
"""
ResetDBClusterParameterGroup(args) = neptune("ResetDBClusterParameterGroup", args)

"""
    CreateDBClusterParameterGroup()

Creates a new DB cluster parameter group. Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.  A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBClusterParameterGroup. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using ModifyDBCluster. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.  After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 

Required Parameters
{
  "Description": "The description for the DB cluster parameter group.",
  "DBClusterParameterGroupName": "The name of the DB cluster parameter group. Constraints:   Must match the name of an existing DBClusterParameterGroup.    This value is stored as a lowercase string. ",
  "DBParameterGroupFamily": "The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family."
}

Optional Parameters
{
  "Tags": "The tags to be assigned to the new DB cluster parameter group."
}
"""
CreateDBClusterParameterGroup(args) = neptune("CreateDBClusterParameterGroup", args)

"""
    AddSourceIdentifierToSubscription()

Adds a source identifier to an existing event notification subscription.

Required Parameters
{
  "SubscriptionName": "The name of the event notification subscription you want to add a source identifier to.",
  "SourceIdentifier": "The identifier of the event source to be added. Constraints:   If the source type is a DB instance, then a DBInstanceIdentifier must be supplied.   If the source type is a DB security group, a DBSecurityGroupName must be supplied.   If the source type is a DB parameter group, a DBParameterGroupName must be supplied.   If the source type is a DB snapshot, a DBSnapshotIdentifier must be supplied.  "
}
"""
AddSourceIdentifierToSubscription(args) = neptune("AddSourceIdentifierToSubscription", args)

"""
    DeleteDBParameterGroup()

Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be associated with any DB instances.

Required Parameters
{
  "DBParameterGroupName": "The name of the DB parameter group. Constraints:   Must be the name of an existing DB parameter group   You can't delete a default DB parameter group   Cannot be associated with any DB instances  "
}
"""
DeleteDBParameterGroup(args) = neptune("DeleteDBParameterGroup", args)

"""
    DescribeDBClusters()

Returns information about provisioned DB clusters, and supports pagination.  This operation can also return information for Amazon RDS clusters and Amazon DocDB clusters. 

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": "An optional pagination token provided by a previous DescribeDBClusters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "DBClusterIdentifier": "The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive. Constraints:   If supplied, must match an existing DBClusterIdentifier.  ",
  "Filters": "A filter that specifies one or more DB clusters to describe. Supported filters:    db-cluster-id - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.    engine - Accepts an engine name (such as neptune), and restricts the results list to DB clusters created by that engine.   For example, to invoke this API from the AWS CLI and filter so that only Neptune DB clusters are returned, you could use the following command:"
}
"""
DescribeDBClusters() = neptune("DescribeDBClusters")
DescribeDBClusters(args) = neptune("DescribeDBClusters", args)

"""
    DescribeDBClusterSnapshots()

Returns information about DB cluster snapshots. This API action supports pagination.

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": "An optional pagination token provided by a previous DescribeDBClusterSnapshots request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "IncludeShared": "True to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise false. The default is false. You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the ModifyDBClusterSnapshotAttribute API action.",
  "DBClusterSnapshotIdentifier": "A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the DBClusterIdentifier parameter. This value is stored as a lowercase string. Constraints:   If supplied, must match the identifier of an existing DBClusterSnapshot.   If this identifier is for an automated snapshot, the SnapshotType parameter must also be specified.  ",
  "DBClusterIdentifier": "The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the DBClusterSnapshotIdentifier parameter. This parameter is not case-sensitive. Constraints:   If supplied, must match the identifier of an existing DBCluster.  ",
  "SnapshotType": "The type of DB cluster snapshots to be returned. You can specify one of the following values:    automated - Return all DB cluster snapshots that have been automatically taken by Amazon Neptune for my AWS account.    manual - Return all DB cluster snapshots that have been taken by my AWS account.    shared - Return all manual DB cluster snapshots that have been shared to my AWS account.    public - Return all DB cluster snapshots that have been marked as public.   If you don't specify a SnapshotType value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the IncludeShared parameter to true. You can include public DB cluster snapshots with these results by setting the IncludePublic parameter to true. The IncludeShared and IncludePublic parameters don't apply for SnapshotType values of manual or automated. The IncludePublic parameter doesn't apply when SnapshotType is set to shared. The IncludeShared parameter doesn't apply when SnapshotType is set to public.",
  "Filters": "This parameter is not currently supported.",
  "IncludePublic": "True to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise false. The default is false. The default is false. You can share a manual DB cluster snapshot as public by using the ModifyDBClusterSnapshotAttribute API action."
}
"""
DescribeDBClusterSnapshots() = neptune("DescribeDBClusterSnapshots")
DescribeDBClusterSnapshots(args) = neptune("DescribeDBClusterSnapshots", args)

"""
    DescribeDBClusterParameterGroups()

 Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list will contain only the description of the specified DB cluster parameter group.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous DescribeDBClusterParameterGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "DBClusterParameterGroupName": "The name of a specific DB cluster parameter group to return details for. Constraints:   If supplied, must match the name of an existing DBClusterParameterGroup.  ",
  "Filters": "This parameter is not currently supported."
}
"""
DescribeDBClusterParameterGroups() = neptune("DescribeDBClusterParameterGroups")
DescribeDBClusterParameterGroups(args) = neptune("DescribeDBClusterParameterGroups", args)

"""
    DescribePendingMaintenanceActions()

Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.

Optional Parameters
{
  "Marker": " An optional pagination token provided by a previous DescribePendingMaintenanceActions request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by MaxRecords.",
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. Default: 100 Constraints: Minimum 20, maximum 100.",
  "Filters": "A filter that specifies one or more resources to return pending maintenance actions for. Supported filters:    db-cluster-id - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.    db-instance-id - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.  ",
  "ResourceIdentifier": "The ARN of a resource to return pending maintenance actions for."
}
"""
DescribePendingMaintenanceActions() = neptune("DescribePendingMaintenanceActions")
DescribePendingMaintenanceActions(args) = neptune("DescribePendingMaintenanceActions", args)
