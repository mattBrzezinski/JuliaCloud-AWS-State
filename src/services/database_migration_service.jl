include("../AWSCorePrototypeServices.jl")
using .Services: database_migration_service

"""
    DescribeApplicableIndividualAssessments()

Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters. If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run. To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task. If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.

Optional Parameters
{
  "MaxRecords": "Maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.",
  "Marker": "Optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "ReplicationTaskArn": "Amazon Resource Name (ARN) of a migration task on which you want to base the default list of individual assessments.",
  "ReplicationInstanceArn": "ARN of a replication instance on which you want to base the default list of individual assessments.",
  "MigrationType": "Name of the migration type that each provided individual assessment must support.",
  "TargetEngineName": "Name of a database engine that the specified replication instance supports as a target.",
  "SourceEngineName": "Name of a database engine that the specified replication instance supports as a source."
}
"""

DescribeApplicableIndividualAssessments() = database_migration_service("DescribeApplicableIndividualAssessments")
DescribeApplicableIndividualAssessments(args) = database_migration_service("DescribeApplicableIndividualAssessments", args)

"""
    CreateEndpoint()

Creates an endpoint using the provided settings.

Required Parameters
{
  "EngineName": "The type of engine for the endpoint. Valid values, depending on the EndpointType value, include \"mysql\", \"oracle\", \"postgres\", \"mariadb\", \"aurora\", \"aurora-postgresql\", \"redshift\", \"s3\", \"db2\", \"azuredb\", \"sybase\", \"dynamodb\", \"mongodb\", \"kinesis\", \"kafka\", \"elasticsearch\", \"docdb\", \"sqlserver\", and \"neptune\".",
  "EndpointType": "The type of endpoint. Valid values are source and target.",
  "EndpointIdentifier": "The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two consecutive hyphens."
}

Optional Parameters
{
  "Password": "The password to be used to log in to the endpoint database.",
  "DatabaseName": "The name of the endpoint database.",
  "MySQLSettings": "Settings in JSON format for the source and target MySQL endpoint. For information about other available settings, see Extra connection attributes when using MySQL as a source for AWS DMS and Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "ServiceAccessRoleArn": " The Amazon Resource Name (ARN) for the service access role that you want to use to create the endpoint. ",
  "DmsTransferSettings": "The settings in JSON format for the DMS transfer type of source endpoint.  Possible settings include the following:    ServiceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.    BucketName - The name of the S3 bucket to use.    CompressionType - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to NONE (the default). To keep the files uncompressed, don't use this value.   Shorthand syntax for these settings is as follows: ServiceAccessRoleArn=string,BucketName=string,CompressionType=string  JSON syntax for these settings is as follows: { \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" }  ",
  "CertificateArn": "The Amazon Resource Name (ARN) for the certificate.",
  "NeptuneSettings": "Settings in JSON format for the target Amazon Neptune endpoint. For more information about the available settings, see Specifying Endpoint Settings for Amazon Neptune as a Target in the AWS Database Migration Service User Guide. ",
  "KinesisSettings": "Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For more information about the available settings, see Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. ",
  "SslMode": "The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is none ",
  "Username": "The user name to be used to log in to the endpoint database.",
  "OracleSettings": "Settings in JSON format for the source and target Oracle endpoint. For information about other available settings, see Extra connection attributes when using Oracle as a source for AWS DMS and  Extra connection attributes when using Oracle as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "SybaseSettings": "Settings in JSON format for the source and target SAP ASE endpoint. For information about other available settings, see Extra connection attributes when using SAP ASE as a source for AWS DMS and Extra connection attributes when using SAP ASE as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "Tags": "One or more tags to be assigned to the endpoint.",
  "MongoDbSettings": "Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see Using MongoDB as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. ",
  "RedshiftSettings": "",
  "MicrosoftSQLServerSettings": "Settings in JSON format for the source and target Microsoft SQL Server endpoint. For information about other available settings, see Extra connection attributes when using SQL Server as a source for AWS DMS and  Extra connection attributes when using SQL Server as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "IBMDb2Settings": "Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other available settings, see Extra connection attributes when using Db2 LUW as a source for AWS DMS in the AWS Database Migration Service User Guide. ",
  "S3Settings": "Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "ElasticsearchSettings": "Settings in JSON format for the target Elasticsearch endpoint. For more information about the available settings, see Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS in the AWS Database Migration Service User Guide.",
  "Port": "The port used by the endpoint database.",
  "ExternalTableDefinition": "The external table definition. ",
  "PostgreSQLSettings": "Settings in JSON format for the source and target PostgreSQL endpoint. For information about other available settings, see Extra connection attributes when using PostgreSQL as a source for AWS DMS and  Extra connection attributes when using PostgreSQL as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "DynamoDbSettings": "Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other available settings, see Using Object Mapping to Migrate Data to DynamoDB in the AWS Database Migration Service User Guide. ",
  "ExtraConnectionAttributes": "Additional attributes associated with the connection. Each attribute is specified as a name-value pair associated by an equal sign (=). Multiple attributes are separated by a semicolon (;) with no additional white space. For information on the attributes available for connecting your source or target endpoint, see Working with AWS DMS Endpoints in the AWS Database Migration Service User Guide. ",
  "KmsKeyId": "An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint. If you don't specify a value for the KmsKeyId parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.",
  "ServerName": "The name of the server where the endpoint database resides.",
  "KafkaSettings": "Settings in JSON format for the target Apache Kafka endpoint. For more information about the available settings, see Using Apache Kafka as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. "
}
"""
CreateEndpoint(args) = database_migration_service("CreateEndpoint", args)

"""
    StartReplicationTaskAssessment()

 Starts the replication task assessment for unsupported data types in the source database. 

Required Parameters
{
  "ReplicationTaskArn": " The Amazon Resource Name (ARN) of the replication task. "
}
"""
StartReplicationTaskAssessment(args) = database_migration_service("StartReplicationTaskAssessment", args)

"""
    DeleteReplicationTask()

Deletes the specified replication task.

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) of the replication task to be deleted."
}
"""
DeleteReplicationTask(args) = database_migration_service("DeleteReplicationTask", args)

"""
    TestConnection()

Tests the connection between the replication instance and the endpoint.

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance.",
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}
"""
TestConnection(args) = database_migration_service("TestConnection", args)

"""
    CreateReplicationTask()

Creates a replication task using the specified parameters.

Required Parameters
{
  "TableMappings": "The table mappings for the task, in JSON format. For more information, see Using Table Mapping to Specify Task Settings in the AWS Database Migration Service User Guide. ",
  "TargetEndpointArn": "An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.",
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of a replication instance.",
  "SourceEndpointArn": "An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.",
  "MigrationType": "The migration type. Valid values: full-load | cdc | full-load-and-cdc ",
  "ReplicationTaskIdentifier": "An identifier for the replication task. Constraints:   Must contain 1-255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  "
}

Optional Parameters
{
  "TaskData": "Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see Specifying Supplemental Data for Task Settings in the AWS Database Migration Service User Guide. ",
  "Tags": "One or more tags to be assigned to the replication task.",
  "CdcStopPosition": "Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “",
  "ReplicationTaskSettings": "Overall settings for the task, in JSON format. For more information, see Specifying Task Settings for AWS Database Migration Service Tasks in the AWS Database Migration User Guide. ",
  "CdcStartTime": "Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”",
  "CdcStartPosition": "Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.  The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”  When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the slotName extra connection attribute to the name of this logical replication slot. For more information, see Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS. "
}
"""
CreateReplicationTask(args) = database_migration_service("CreateReplicationTask", args)

"""
    DeleteReplicationSubnetGroup()

Deletes a subnet group.

Required Parameters
{
  "ReplicationSubnetGroupIdentifier": "The subnet group name of the replication instance."
}
"""
DeleteReplicationSubnetGroup(args) = database_migration_service("DeleteReplicationSubnetGroup", args)

"""
    DescribeEventCategories()

Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in Working with Events and Notifications in the AWS Database Migration Service User Guide. 

Optional Parameters
{
  "SourceType": " The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-task",
  "Filters": "Filters applied to the event categories."
}
"""

DescribeEventCategories() = database_migration_service("DescribeEventCategories")
DescribeEventCategories(args) = database_migration_service("DescribeEventCategories", args)

"""
    DescribeReplicationTaskAssessmentRuns()

Returns a paginated list of premigration assessment runs based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.  This operation doesn't return information about individual assessments. For this information, see the DescribeReplicationTaskIndividualAssessments operation.  

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.",
  "Marker": "An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "Filters applied to the premigration assessment runs described in the form of key-value pairs. Valid filter names: replication-task-assessment-run-arn, replication-task-arn, replication-instance-arn, status "
}
"""

DescribeReplicationTaskAssessmentRuns() = database_migration_service("DescribeReplicationTaskAssessmentRuns")
DescribeReplicationTaskAssessmentRuns(args) = database_migration_service("DescribeReplicationTaskAssessmentRuns", args)

"""
    DeleteReplicationInstance()

Deletes the specified replication instance.  You must delete any migration tasks that are associated with the replication instance before you can delete it.  

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance to be deleted."
}
"""
DeleteReplicationInstance(args) = database_migration_service("DeleteReplicationInstance", args)

"""
    RefreshSchemas()

Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance.",
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}
"""
RefreshSchemas(args) = database_migration_service("RefreshSchemas", args)

"""
    DescribeEndpoints()

Returns information about the endpoints for your account in the current region.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to the endpoints. Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name"
}
"""

DescribeEndpoints() = database_migration_service("DescribeEndpoints")
DescribeEndpoints(args) = database_migration_service("DescribeEndpoints", args)

"""
    DeleteEventSubscription()

 Deletes an AWS DMS event subscription. 

Required Parameters
{
  "SubscriptionName": "The name of the DMS event notification subscription to be deleted."
}
"""
DeleteEventSubscription(args) = database_migration_service("DeleteEventSubscription", args)

"""
    ModifyEventSubscription()

Modifies an existing AWS DMS event notification subscription. 

Required Parameters
{
  "SubscriptionName": "The name of the AWS DMS event notification subscription to be modified."
}

Optional Parameters
{
  "SourceType": " The type of AWS DMS resource that generates the events you want to subscribe to.  Valid values: replication-instance | replication-task",
  "SnsTopicArn": " The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.",
  "EventCategories": " A list of event categories for a source type that you want to subscribe to. Use the DescribeEventCategories action to see a list of event categories. ",
  "Enabled": " A Boolean value; set to true to activate the subscription. "
}
"""
ModifyEventSubscription(args) = database_migration_service("ModifyEventSubscription", args)

"""
    ModifyReplicationInstance()

Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window. 

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance."
}

Optional Parameters
{
  "AllowMajorVersionUpgrade": "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage, and the change is asynchronously applied as soon as possible. This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the replication instance's current version.",
  "ReplicationInstanceIdentifier": "The replication instance identifier. This parameter is stored as a lowercase string.",
  "EngineVersion": "The engine version number of the replication instance. When modifying a major engine version of an instance, also set AllowMajorVersionUpgrade to true.",
  "PreferredMaintenanceWindow": "The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied. Default: Uses existing setting Format: ddd:hh24:mi-ddd:hh24:mi Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes",
  "ApplyImmediately": "Indicates whether the changes should be applied immediately or during the next maintenance window.",
  "VpcSecurityGroupIds": " Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. ",
  "AutoMinorVersionUpgrade": "A value that indicates that minor version upgrades are applied automatically to the replication instance during the maintenance window. Changing this parameter doesn't result in an outage, except in the case dsecribed following. The change is asynchronously applied as soon as possible.  An outage does result if these factors apply:    This parameter is set to true during the maintenance window.   A newer minor version is available.    AWS DMS has enabled automatic patching for the given engine version.   ",
  "ReplicationInstanceClass": "The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to \"dms.c4.large\". For more information on the settings and capacities for the available replication instance classes, see  Selecting the right AWS DMS replication instance for your migration. ",
  "MultiAZ": " Specifies whether the replication instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the Multi-AZ parameter is set to true. ",
  "AllocatedStorage": "The amount of storage (in gigabytes) to be allocated for the replication instance."
}
"""
ModifyReplicationInstance(args) = database_migration_service("ModifyReplicationInstance", args)

"""
    DescribeReplicationInstanceTaskLogs()

Returns information about the task logs for the specified task.

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords."
}
"""
DescribeReplicationInstanceTaskLogs(args) = database_migration_service("DescribeReplicationInstanceTaskLogs", args)

"""
    ModifyReplicationTask()

Modifies the specified replication task. You can't modify the task endpoints. The task must be stopped before you can modify it.  For more information about AWS DMS tasks, see Working with Migration Tasks in the AWS Database Migration Service User Guide.

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) of the replication task."
}

Optional Parameters
{
  "CdcStartPosition": "Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.  The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”  When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the slotName extra connection attribute to the name of this logical replication slot. For more information, see Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS. ",
  "TableMappings": "When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with file://. When working with the DMS API, provide the JSON as the parameter value, for example: --table-mappings file://mappingfile.json ",
  "CdcStopPosition": "Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “",
  "MigrationType": "The migration type. Valid values: full-load | cdc | full-load-and-cdc ",
  "ReplicationTaskSettings": "JSON file that contains settings for the task, such as task metadata settings.",
  "CdcStartTime": "Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”",
  "ReplicationTaskIdentifier": "The replication task identifier. Constraints:   Must contain 1-255 alphanumeric characters or hyphens.   First character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.  ",
  "TaskData": "Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see Specifying Supplemental Data for Task Settings in the AWS Database Migration Service User Guide. "
}
"""
ModifyReplicationTask(args) = database_migration_service("ModifyReplicationTask", args)

"""
    CreateEventSubscription()

 Creates an AWS DMS event notification subscription.  You can specify the type of source (SourceType) you want to be notified of, provide a list of AWS DMS source IDs (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. If you specify both the SourceType and SourceIds, such as SourceType = replication-instance and SourceIdentifier = my-replinstance, you will be notified of all the replication instance events for the specified source. If you specify a SourceType but don't specify a SourceIdentifier, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either SourceType nor SourceIdentifier, you will be notified of events generated from all AWS DMS sources belonging to your customer account. For more information about AWS DMS events, see Working with Events and Notifications in the AWS Database Migration Service User Guide. 

Required Parameters
{
  "SubscriptionName": "The name of the AWS DMS event notification subscription. This name must be less than 255 characters.",
  "SnsTopicArn": " The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it. "
}

Optional Parameters
{
  "SourceIds": "A list of identifiers for which AWS DMS provides notification events. If you don't specify a value, notifications are provided for all sources. If you specify multiple values, they must be of the same type. For example, if you specify a database instance ID, then all of the other values must be database instance IDs.",
  "Tags": "One or more tags to be assigned to the event subscription.",
  "SourceType": " The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to replication-instance. If this value isn't specified, all events are returned.  Valid values: replication-instance | replication-task ",
  "EventCategories": "A list of event categories for a source type that you want to subscribe to. For more information, see Working with Events and Notifications in the AWS Database Migration Service User Guide. ",
  "Enabled": " A Boolean value; set to true to activate the subscription, or set to false to create the subscription but not activate it. "
}
"""
CreateEventSubscription(args) = database_migration_service("CreateEventSubscription", args)

"""
    DescribeReplicationInstances()

Returns information about replication instances for your account in the current region.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to replication instances. Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version"
}
"""

DescribeReplicationInstances() = database_migration_service("DescribeReplicationInstances")
DescribeReplicationInstances(args) = database_migration_service("DescribeReplicationInstances", args)

"""
    StartReplicationTask()

Starts the replication task. For more information about AWS DMS tasks, see Working with Migration Tasks  in the AWS Database Migration Service User Guide. 

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) of the replication task to be started.",
  "StartReplicationTaskType": "The type of replication task."
}

Optional Parameters
{
  "CdcStopPosition": "Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “",
  "CdcStartTime": "Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”",
  "CdcStartPosition": "Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.  The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”  When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the slotName extra connection attribute to the name of this logical replication slot. For more information, see Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS. "
}
"""
StartReplicationTask(args) = database_migration_service("StartReplicationTask", args)

"""
    StopReplicationTask()

Stops the replication task.

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name(ARN) of the replication task to be stopped."
}
"""
StopReplicationTask(args) = database_migration_service("StopReplicationTask", args)

"""
    CreateReplicationInstance()

Creates the replication instance using the specified parameters. AWS DMS requires that your account have certain roles with appropriate permissions before you can create a replication instance. For information on the required roles, see Creating the IAM Roles to Use With the AWS CLI and AWS DMS API. For information on the required permissions, see IAM Permissions Needed to Use AWS DMS.

Required Parameters
{
  "ReplicationInstanceIdentifier": "The replication instance identifier. This parameter is stored as a lowercase string. Constraints:   Must contain 1-63 alphanumeric characters or hyphens.   First character must be a letter.   Can't end with a hyphen or contain two consecutive hyphens.   Example: myrepinstance ",
  "ReplicationInstanceClass": "The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to \"dms.c4.large\". For more information on the settings and capacities for the available replication instance classes, see  Selecting the right AWS DMS replication instance for your migration. "
}

Optional Parameters
{
  "PubliclyAccessible": " Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address. The default value is true. ",
  "ReplicationSubnetGroupIdentifier": "A subnet group to associate with the replication instance.",
  "PreferredMaintenanceWindow": "The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi  Default: A 30-minute window selected at random from an 8-hour block of time per AWS Region, occurring on a random day of the week. Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun Constraints: Minimum 30-minute window.",
  "AutoMinorVersionUpgrade": "A value that indicates whether minor engine upgrades are applied automatically to the replication instance during the maintenance window. This parameter defaults to true. Default: true ",
  "DnsNameServers": "A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers. For example: \"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4\" ",
  "AllocatedStorage": "The amount of storage (in gigabytes) to be initially allocated for the replication instance.",
  "Tags": "One or more tags to be assigned to the replication instance.",
  "EngineVersion": "The engine version number of the replication instance. If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.",
  "AvailabilityZone": "The Availability Zone where the replication instance will be created. The default value is a random, system-chosen Availability Zone in the endpoint's AWS Region, for example: us-east-1d ",
  "VpcSecurityGroupIds": " Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. ",
  "KmsKeyId": "An AWS KMS key identifier that is used to encrypt the data on the replication instance. If you don't specify a value for the KmsKeyId parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.",
  "MultiAZ": " Specifies whether the replication instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the Multi-AZ parameter is set to true. "
}
"""
CreateReplicationInstance(args) = database_migration_service("CreateReplicationInstance", args)

"""
    ListTagsForResource()

Lists all metadata tags attached to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see  Tag  data type description.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource."
}
"""
ListTagsForResource(args) = database_migration_service("ListTagsForResource", args)

"""
    DeleteCertificate()

Deletes the specified certificate. 

Required Parameters
{
  "CertificateArn": "The Amazon Resource Name (ARN) of the deleted certificate."
}
"""
DeleteCertificate(args) = database_migration_service("DeleteCertificate", args)

"""
    DescribeOrderableReplicationInstances()

Returns information about the replication instance types that can be created in the specified region.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. "
}
"""

DescribeOrderableReplicationInstances() = database_migration_service("DescribeOrderableReplicationInstances")
DescribeOrderableReplicationInstances(args) = database_migration_service("DescribeOrderableReplicationInstances", args)

"""
    AddTagsToResource()

Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS. For more information, see  Tag  data type description.

Required Parameters
{
  "ResourceArn": "Identifies the AWS DMS resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN). For AWS DMS, you can tag a replication instance, an endpoint, or a replication task.",
  "Tags": "One or more tags to be assigned to the resource."
}
"""
AddTagsToResource(args) = database_migration_service("AddTagsToResource", args)

"""
    CreateReplicationSubnetGroup()

Creates a replication subnet group given a list of the subnet IDs in a VPC.

Required Parameters
{
  "ReplicationSubnetGroupDescription": "The description for the subnet group.",
  "ReplicationSubnetGroupIdentifier": "The name for the replication subnet group. This value is stored as a lowercase string. Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be \"default\". Example: mySubnetgroup ",
  "SubnetIds": "One or more subnet IDs to be assigned to the subnet group."
}

Optional Parameters
{
  "Tags": "One or more tags to be assigned to the subnet group."
}
"""
CreateReplicationSubnetGroup(args) = database_migration_service("CreateReplicationSubnetGroup", args)

"""
    DescribeReplicationSubnetGroups()

Returns information about the replication subnet groups.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to replication subnet groups. Valid filter names: replication-subnet-group-id"
}
"""

DescribeReplicationSubnetGroups() = database_migration_service("DescribeReplicationSubnetGroups")
DescribeReplicationSubnetGroups(args) = database_migration_service("DescribeReplicationSubnetGroups", args)

"""
    RemoveTagsFromResource()

Removes metadata tags from an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see  Tag  data type description.

Required Parameters
{
  "ResourceArn": "An AWS DMS resource from which you want to remove tag(s). The value for this parameter is an Amazon Resource Name (ARN).",
  "TagKeys": "The tag key (name) of the tag to be removed."
}
"""
RemoveTagsFromResource(args) = database_migration_service("RemoveTagsFromResource", args)

"""
    DescribeSchemas()

Returns information about the schema for the specified endpoint. 

Required Parameters
{
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. "
}
"""
DescribeSchemas(args) = database_migration_service("DescribeSchemas", args)

"""
    ModifyEndpoint()

Modifies the specified endpoint.

Required Parameters
{
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}

Optional Parameters
{
  "Password": "The password to be used to login to the endpoint database.",
  "DatabaseName": "The name of the endpoint database.",
  "MySQLSettings": "Settings in JSON format for the source and target MySQL endpoint. For information about other available settings, see Extra connection attributes when using MySQL as a source for AWS DMS and Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "ServiceAccessRoleArn": " The Amazon Resource Name (ARN) for the service access role you want to use to modify the endpoint. ",
  "DmsTransferSettings": "The settings in JSON format for the DMS transfer type of source endpoint.  Attributes include the following:   serviceAccessRoleArn - The AWS Identity and Access Management (IAM) role that has permission to access the Amazon S3 bucket.   BucketName - The name of the S3 bucket to use.   compressionType - An optional parameter to use GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed.   Shorthand syntax for these settings is as follows: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string  JSON syntax for these settings is as follows: { \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" }  ",
  "CertificateArn": "The Amazon Resource Name (ARN) of the certificate used for SSL connection.",
  "NeptuneSettings": "Settings in JSON format for the target Amazon Neptune endpoint. For more information about the available settings, see Specifying Endpoint Settings for Amazon Neptune as a Target in the AWS Database Migration Service User Guide. ",
  "KinesisSettings": "Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For more information about the available settings, see Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. ",
  "SslMode": "The SSL mode used to connect to the endpoint. The default value is none.",
  "Username": "The user name to be used to login to the endpoint database.",
  "OracleSettings": "Settings in JSON format for the source and target Oracle endpoint. For information about other available settings, see Extra connection attributes when using Oracle as a source for AWS DMS and  Extra connection attributes when using Oracle as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "EngineName": "The type of engine for the endpoint. Valid values, depending on the EndpointType, include \"mysql\", \"oracle\", \"postgres\", \"mariadb\", \"aurora\", \"aurora-postgresql\", \"redshift\", \"s3\", \"db2\", \"azuredb\", \"sybase\", \"dynamodb\", \"mongodb\", \"kinesis\", \"kafka\", \"elasticsearch\", \"documentdb\", \"sqlserver\", and \"neptune\".",
  "SybaseSettings": "Settings in JSON format for the source and target SAP ASE endpoint. For information about other available settings, see Extra connection attributes when using SAP ASE as a source for AWS DMS and Extra connection attributes when using SAP ASE as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "MongoDbSettings": "Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the configuration properties section in  Using MongoDB as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. ",
  "RedshiftSettings": "",
  "EndpointType": "The type of endpoint. Valid values are source and target.",
  "MicrosoftSQLServerSettings": "Settings in JSON format for the source and target Microsoft SQL Server endpoint. For information about other available settings, see Extra connection attributes when using SQL Server as a source for AWS DMS and  Extra connection attributes when using SQL Server as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "EndpointIdentifier": "The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.",
  "IBMDb2Settings": "Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other available settings, see Extra connection attributes when using Db2 LUW as a source for AWS DMS in the AWS Database Migration Service User Guide. ",
  "S3Settings": "Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "ElasticsearchSettings": "Settings in JSON format for the target Elasticsearch endpoint. For more information about the available settings, see Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "Port": "The port used by the endpoint database.",
  "ExternalTableDefinition": "The external table definition.",
  "PostgreSQLSettings": "Settings in JSON format for the source and target PostgreSQL endpoint. For information about other available settings, see Extra connection attributes when using PostgreSQL as a source for AWS DMS and  Extra connection attributes when using PostgreSQL as a target for AWS DMS in the AWS Database Migration Service User Guide. ",
  "DynamoDbSettings": "Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other available settings, see Using Object Mapping to Migrate Data to DynamoDB in the AWS Database Migration Service User Guide. ",
  "ExtraConnectionAttributes": "Additional attributes associated with the connection. To reset this parameter, pass the empty string (\"\") as an argument.",
  "KafkaSettings": "Settings in JSON format for the target Apache Kafka endpoint. For more information about the available settings, see Using Apache Kafka as a Target for AWS Database Migration Service in the AWS Database Migration Service User Guide. ",
  "ServerName": "The name of the server where the endpoint database resides."
}
"""
ModifyEndpoint(args) = database_migration_service("ModifyEndpoint", args)

"""
    ReloadTables()

Reloads the target database table with the source data. 

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) of the replication task. ",
  "TablesToReload": "The name and schema of the table to be reloaded. "
}

Optional Parameters
{
  "ReloadOption": "Options for reload. Specify data-reload to reload the data and re-validate it if validation is enabled. Specify validate-only to re-validate the table. This option applies only when validation is enabled for the task.  Valid values: data-reload, validate-only Default value is data-reload."
}
"""
ReloadTables(args) = database_migration_service("ReloadTables", args)

"""
    DeleteConnection()

Deletes the connection between a replication instance and an endpoint.

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance.",
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}
"""
DeleteConnection(args) = database_migration_service("DeleteConnection", args)

"""
    ImportCertificate()

Uploads the specified certificate.

Required Parameters
{
  "CertificateIdentifier": "A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens."
}

Optional Parameters
{
  "CertificateWallet": "The location of an imported Oracle Wallet certificate for use with SSL.",
  "Tags": "The tags associated with the certificate.",
  "CertificatePem": "The contents of a .pem file, which contains an X.509 certificate."
}
"""
ImportCertificate(args) = database_migration_service("ImportCertificate", args)

"""
    RebootReplicationInstance()

Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.

Required Parameters
{
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance."
}

Optional Parameters
{
  "ForceFailover": "If this parameter is true, the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify true.)"
}
"""
RebootReplicationInstance(args) = database_migration_service("RebootReplicationInstance", args)

"""
    DeleteEndpoint()

Deletes the specified endpoint.  All tasks associated with the endpoint must be deleted before you can delete the endpoint.  

Required Parameters
{
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}
"""
DeleteEndpoint(args) = database_migration_service("DeleteEndpoint", args)

"""
    DescribeReplicationTaskAssessmentResults()

Returns the task assessment results from Amazon S3. This action always returns the latest results.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified, the API returns only one result and ignore the values of the MaxRecords and Marker parameters. "
}
"""

DescribeReplicationTaskAssessmentResults() = database_migration_service("DescribeReplicationTaskAssessmentResults")
DescribeReplicationTaskAssessmentResults(args) = database_migration_service("DescribeReplicationTaskAssessmentResults", args)

"""
    ApplyPendingMaintenanceAction()

Applies a pending maintenance action to a resource (for example, to a replication instance).

Required Parameters
{
  "ApplyAction": "The pending maintenance action to apply to this resource.",
  "OptInType": "A value that specifies the type of opt-in request, or undoes an opt-in request. You can't undo an opt-in request of type immediate. Valid values:    immediate - Apply the maintenance action immediately.    next-maintenance - Apply the maintenance action during the next maintenance window for the resource.    undo-opt-in - Cancel any existing next-maintenance opt-in requests.  ",
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the AWS DMS resource that the pending maintenance action applies to."
}
"""
ApplyPendingMaintenanceAction(args) = database_migration_service("ApplyPendingMaintenanceAction", args)

"""
    DescribeReplicationTaskIndividualAssessments()

Returns a paginated list of individual assessments based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, and assessment status values.

Optional Parameters
{
  "MaxRecords": "The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.",
  "Marker": "An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.",
  "Filters": "Filters applied to the individual assessments described in the form of key-value pairs. Valid filter names: replication-task-assessment-run-arn, replication-task-arn, status "
}
"""

DescribeReplicationTaskIndividualAssessments() = database_migration_service("DescribeReplicationTaskIndividualAssessments")
DescribeReplicationTaskIndividualAssessments(args) = database_migration_service("DescribeReplicationTaskIndividualAssessments", args)

"""
    DescribeTableStatistics()

Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.

Required Parameters
{
  "ReplicationTaskArn": "The Amazon Resource Name (ARN) of the replication task."
}

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 500.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to table statistics. Valid filter names: schema-name | table-name | table-state A combination of filters creates an AND condition where each record matches all specified filters."
}
"""
DescribeTableStatistics(args) = database_migration_service("DescribeTableStatistics", args)

"""
    DescribeEvents()

 Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 

Optional Parameters
{
  "StartTime": "The start time for the events to be listed.",
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "SourceIdentifier": " The identifier of an event source.",
  "EndTime": "The end time for the events to be listed.",
  "SourceType": "The type of AWS DMS resource that generates events. Valid values: replication-instance | replication-task",
  "Duration": "The duration of the events to be listed.",
  "Filters": "Filters applied to events.",
  "EventCategories": "A list of event categories for the source type that you've chosen."
}
"""

DescribeEvents() = database_migration_service("DescribeEvents")
DescribeEvents(args) = database_migration_service("DescribeEvents", args)

"""
    DescribeAccountAttributes()

Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region. This command does not take any parameters.
"""

DescribeAccountAttributes() = database_migration_service("DescribeAccountAttributes")
DescribeAccountAttributes(args) = database_migration_service("DescribeAccountAttributes", args)

"""
    DescribeRefreshSchemasStatus()

Returns the status of the RefreshSchemas operation.

Required Parameters
{
  "EndpointArn": "The Amazon Resource Name (ARN) string that uniquely identifies the endpoint."
}
"""
DescribeRefreshSchemasStatus(args) = database_migration_service("DescribeRefreshSchemasStatus", args)

"""
    DescribeEventSubscriptions()

Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "SubscriptionName": "The name of the AWS DMS event subscription to be described.",
  "Filters": "Filters applied to event subscriptions."
}
"""

DescribeEventSubscriptions() = database_migration_service("DescribeEventSubscriptions")
DescribeEventSubscriptions(args) = database_migration_service("DescribeEventSubscriptions", args)

"""
    ModifyReplicationSubnetGroup()

Modifies the settings for the specified replication subnet group.

Required Parameters
{
  "SubnetIds": "A list of subnet IDs.",
  "ReplicationSubnetGroupIdentifier": "The name of the replication instance subnet group."
}

Optional Parameters
{
  "ReplicationSubnetGroupDescription": "A description for the replication instance subnet group."
}
"""
ModifyReplicationSubnetGroup(args) = database_migration_service("ModifyReplicationSubnetGroup", args)

"""
    DescribeConnections()

Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "The filters applied to the connection. Valid filter names: endpoint-arn | replication-instance-arn"
}
"""

DescribeConnections() = database_migration_service("DescribeConnections")
DescribeConnections(args) = database_migration_service("DescribeConnections", args)

"""
    DescribeReplicationTasks()

Returns information about replication tasks for your account in the current region.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "WithoutSettings": "An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose true; otherwise, choose false (the default).",
  "Filters": "Filters applied to replication tasks. Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn"
}
"""

DescribeReplicationTasks() = database_migration_service("DescribeReplicationTasks")
DescribeReplicationTasks(args) = database_migration_service("DescribeReplicationTasks", args)

"""
    DescribeCertificates()

Provides a description of the certificate.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 10",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to the certificates described in the form of key-value pairs."
}
"""

DescribeCertificates() = database_migration_service("DescribeCertificates")
DescribeCertificates(args) = database_migration_service("DescribeCertificates", args)

"""
    DescribeEndpointTypes()

Returns information about the type of endpoints available.

Optional Parameters
{
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "Filters": "Filters applied to the endpoint types. Valid filter names: engine-name | endpoint-type"
}
"""

DescribeEndpointTypes() = database_migration_service("DescribeEndpointTypes")
DescribeEndpointTypes(args) = database_migration_service("DescribeEndpointTypes", args)

"""
    DeleteReplicationTaskAssessmentRun()

Deletes the record of a single premigration assessment run. This operation removes all metadata that AWS DMS maintains about this assessment run. However, the operation leaves untouched all information about this assessment run that is stored in your Amazon S3 bucket.

Required Parameters
{
  "ReplicationTaskAssessmentRunArn": "Amazon Resource Name (ARN) of the premigration assessment run to be deleted."
}
"""
DeleteReplicationTaskAssessmentRun(args) = database_migration_service("DeleteReplicationTaskAssessmentRun", args)

"""
    StartReplicationTaskAssessmentRun()

Starts a new premigration assessment run for one or more individual assessments of a migration task. The assessments that you can specify depend on the source and target database engine and the migration type defined for the given task. To run this operation, your migration task must already be created. After you run this operation, you can review the status of each individual assessment. You can also run the migration task manually after the assessment run and its individual assessments complete.

Required Parameters
{
  "ResultLocationBucket": "Amazon S3 bucket where you want AWS DMS to store the results of this assessment run.",
  "AssessmentRunName": "Unique name to identify the assessment run.",
  "ReplicationTaskArn": "Amazon Resource Name (ARN) of the migration task associated with the premigration assessment run that you want to start.",
  "ServiceAccessRoleArn": "ARN of a service role needed to start the assessment run."
}

Optional Parameters
{
  "ResultLocationFolder": "Folder within an Amazon S3 bucket where you want AWS DMS to store the results of this assessment run.",
  "IncludeOnly": "Space-separated list of names for specific individual assessments that you want to include. These names come from the default list of individual assessments that AWS DMS supports for the associated migration task. This task is specified by ReplicationTaskArn.  You can't set a value for IncludeOnly if you also set a value for Exclude in the API operation.  To identify the names of the default individual assessments that AWS DMS supports for the associated migration task, run the DescribeApplicableIndividualAssessments operation using its own ReplicationTaskArn request parameter. ",
  "ResultEncryptionMode": "Encryption mode that you can specify to encrypt the results of this assessment run. If you don't specify this request parameter, AWS DMS stores the assessment run results without encryption. You can specify one of the options following:    \"SSE_S3\" – The server-side encryption provided as a default by Amazon S3.    \"SSE_KMS\" – AWS Key Management Service (AWS KMS) encryption. This encryption can use either a custom KMS encryption key that you specify or the default KMS encryption key that DMS provides.  ",
  "ResultKmsKeyArn": "ARN of a custom KMS encryption key that you specify when you set ResultEncryptionMode to \"SSE_KMS\".",
  "Exclude": "Space-separated list of names for specific individual assessments that you want to exclude. These names come from the default list of individual assessments that AWS DMS supports for the associated migration task. This task is specified by ReplicationTaskArn.  You can't set a value for Exclude if you also set a value for IncludeOnly in the API operation. To identify the names of the default individual assessments that AWS DMS supports for the associated migration task, run the DescribeApplicableIndividualAssessments operation using its own ReplicationTaskArn request parameter. "
}
"""
StartReplicationTaskAssessmentRun(args) = database_migration_service("StartReplicationTaskAssessmentRun", args)

"""
    CancelReplicationTaskAssessmentRun()

Cancels a single premigration assessment run. This operation prevents any individual assessments from running if they haven't started running. It also attempts to cancel any individual assessments that are currently running.

Required Parameters
{
  "ReplicationTaskAssessmentRunArn": "Amazon Resource Name (ARN) of the premigration assessment run to be canceled."
}
"""
CancelReplicationTaskAssessmentRun(args) = database_migration_service("CancelReplicationTaskAssessmentRun", args)

"""
    DescribePendingMaintenanceActions()

For internal use only

Optional Parameters
{
  "Marker": " An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords. ",
  "MaxRecords": " The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.",
  "ReplicationInstanceArn": "The Amazon Resource Name (ARN) of the replication instance.",
  "Filters": ""
}
"""

DescribePendingMaintenanceActions() = database_migration_service("DescribePendingMaintenanceActions")
DescribePendingMaintenanceActions(args) = database_migration_service("DescribePendingMaintenanceActions", args)
