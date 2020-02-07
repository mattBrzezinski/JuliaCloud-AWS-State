include("../AWSCorePrototypeServices.jl")
using .Services: database_migration_service

"""
Creates an endpoint using the provided settings.

Required Parameters:
EndpointIdentifier, EndpointType, EngineName
"""
CreateEndpoint(args) = database_migration_service("CreateEndpoint", args)

"""
 Starts the replication task assessment for unsupported data types in the source database. 

Required Parameters:
ReplicationTaskArn
"""
StartReplicationTaskAssessment(args) = database_migration_service("StartReplicationTaskAssessment", args)

"""
Deletes the specified replication task.

Required Parameters:
ReplicationTaskArn
"""
DeleteReplicationTask(args) = database_migration_service("DeleteReplicationTask", args)

"""
Tests the connection between the replication instance and the endpoint.

Required Parameters:
ReplicationInstanceArn, EndpointArn
"""
TestConnection(args) = database_migration_service("TestConnection", args)

"""
Creates a replication task using the specified parameters.

Required Parameters:
ReplicationTaskIdentifier, SourceEndpointArn, TargetEndpointArn, ReplicationInstanceArn, MigrationType, TableMappings
"""
CreateReplicationTask(args) = database_migration_service("CreateReplicationTask", args)

"""
Deletes a subnet group.

Required Parameters:
ReplicationSubnetGroupIdentifier
"""
DeleteReplicationSubnetGroup(args) = database_migration_service("DeleteReplicationSubnetGroup", args)

"""
Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in Working with Events and Notifications in the AWS Database Migration Service User Guide. 
"""
DescribeEventCategories() = database_migration_service("DescribeEventCategories")

"""
Deletes the specified replication instance.  You must delete any migration tasks that are associated with the replication instance before you can delete it.  

Required Parameters:
ReplicationInstanceArn
"""
DeleteReplicationInstance(args) = database_migration_service("DeleteReplicationInstance", args)

"""
Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.

Required Parameters:
EndpointArn, ReplicationInstanceArn
"""
RefreshSchemas(args) = database_migration_service("RefreshSchemas", args)

"""
Returns information about the endpoints for your account in the current region.
"""
DescribeEndpoints() = database_migration_service("DescribeEndpoints")

"""
 Deletes an AWS DMS event subscription. 

Required Parameters:
SubscriptionName
"""
DeleteEventSubscription(args) = database_migration_service("DeleteEventSubscription", args)

"""
Modifies an existing AWS DMS event notification subscription. 

Required Parameters:
SubscriptionName
"""
ModifyEventSubscription(args) = database_migration_service("ModifyEventSubscription", args)

"""
Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request. Some settings are applied during the maintenance window. 

Required Parameters:
ReplicationInstanceArn
"""
ModifyReplicationInstance(args) = database_migration_service("ModifyReplicationInstance", args)

"""
Returns information about the task logs for the specified task.

Required Parameters:
ReplicationInstanceArn
"""
DescribeReplicationInstanceTaskLogs(args) = database_migration_service("DescribeReplicationInstanceTaskLogs", args)

"""
Modifies the specified replication task. You can't modify the task endpoints. The task must be stopped before you can modify it.  For more information about AWS DMS tasks, see Working with Migration Tasks in the AWS Database Migration Service User Guide.

Required Parameters:
ReplicationTaskArn
"""
ModifyReplicationTask(args) = database_migration_service("ModifyReplicationTask", args)

"""
 Creates an AWS DMS event notification subscription.  You can specify the type of source (SourceType) you want to be notified of, provide a list of AWS DMS source IDs (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. If you specify both the SourceType and SourceIds, such as SourceType = replication-instance and SourceIdentifier = my-replinstance, you will be notified of all the replication instance events for the specified source. If you specify a SourceType but don't specify a SourceIdentifier, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either SourceType nor SourceIdentifier, you will be notified of events generated from all AWS DMS sources belonging to your customer account. For more information about AWS DMS events, see Working with Events and Notifications in the AWS Database Migration Service User Guide. 

Required Parameters:
SubscriptionName, SnsTopicArn
"""
CreateEventSubscription(args) = database_migration_service("CreateEventSubscription", args)

"""
Returns information about replication instances for your account in the current region.
"""
DescribeReplicationInstances() = database_migration_service("DescribeReplicationInstances")

"""
Starts the replication task. For more information about AWS DMS tasks, see Working with Migration Tasks  in the AWS Database Migration Service User Guide. 

Required Parameters:
ReplicationTaskArn, StartReplicationTaskType
"""
StartReplicationTask(args) = database_migration_service("StartReplicationTask", args)

"""
Stops the replication task. 

Required Parameters:
ReplicationTaskArn
"""
StopReplicationTask(args) = database_migration_service("StopReplicationTask", args)

"""
Creates the replication instance using the specified parameters. AWS DMS requires that your account have certain roles with appropriate permissions before you can create a replication instance. For information on the required roles, see Creating the IAM Roles to Use With the AWS CLI and AWS DMS API. For information on the required permissions, see IAM Permissions Needed to Use AWS DMS.

Required Parameters:
ReplicationInstanceIdentifier, ReplicationInstanceClass
"""
CreateReplicationInstance(args) = database_migration_service("CreateReplicationInstance", args)

"""
Lists all tags for an AWS DMS resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = database_migration_service("ListTagsForResource", args)

"""
Deletes the specified certificate. 

Required Parameters:
CertificateArn
"""
DeleteCertificate(args) = database_migration_service("DeleteCertificate", args)

"""
Returns information about the replication instance types that can be created in the specified region.
"""
DescribeOrderableReplicationInstances() = database_migration_service("DescribeOrderableReplicationInstances")

"""
Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.

Required Parameters:
ResourceArn, Tags
"""
AddTagsToResource(args) = database_migration_service("AddTagsToResource", args)

"""
Creates a replication subnet group given a list of the subnet IDs in a VPC.

Required Parameters:
ReplicationSubnetGroupIdentifier, ReplicationSubnetGroupDescription, SubnetIds
"""
CreateReplicationSubnetGroup(args) = database_migration_service("CreateReplicationSubnetGroup", args)

"""
Returns information about the replication subnet groups.
"""
DescribeReplicationSubnetGroups() = database_migration_service("DescribeReplicationSubnetGroups")

"""
Removes metadata tags from a DMS resource.

Required Parameters:
ResourceArn, TagKeys
"""
RemoveTagsFromResource(args) = database_migration_service("RemoveTagsFromResource", args)

"""
Returns information about the schema for the specified endpoint. 

Required Parameters:
EndpointArn
"""
DescribeSchemas(args) = database_migration_service("DescribeSchemas", args)

"""
Modifies the specified endpoint.

Required Parameters:
EndpointArn
"""
ModifyEndpoint(args) = database_migration_service("ModifyEndpoint", args)

"""
Reloads the target database table with the source data. 

Required Parameters:
ReplicationTaskArn, TablesToReload
"""
ReloadTables(args) = database_migration_service("ReloadTables", args)

"""
Deletes the connection between a replication instance and an endpoint.

Required Parameters:
EndpointArn, ReplicationInstanceArn
"""
DeleteConnection(args) = database_migration_service("DeleteConnection", args)

"""
Uploads the specified certificate.

Required Parameters:
CertificateIdentifier
"""
ImportCertificate(args) = database_migration_service("ImportCertificate", args)

"""
Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.

Required Parameters:
ReplicationInstanceArn
"""
RebootReplicationInstance(args) = database_migration_service("RebootReplicationInstance", args)

"""
Deletes the specified endpoint.  All tasks associated with the endpoint must be deleted before you can delete the endpoint.  

Required Parameters:
EndpointArn
"""
DeleteEndpoint(args) = database_migration_service("DeleteEndpoint", args)

"""
Returns the task assessment results from Amazon S3. This action always returns the latest results.
"""
DescribeReplicationTaskAssessmentResults() = database_migration_service("DescribeReplicationTaskAssessmentResults")

"""
Applies a pending maintenance action to a resource (for example, to a replication instance).

Required Parameters:
ReplicationInstanceArn, ApplyAction, OptInType
"""
ApplyPendingMaintenanceAction(args) = database_migration_service("ApplyPendingMaintenanceAction", args)

"""
Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.

Required Parameters:
ReplicationTaskArn
"""
DescribeTableStatistics(args) = database_migration_service("DescribeTableStatistics", args)

"""
 Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 
"""
DescribeEvents() = database_migration_service("DescribeEvents")

"""
Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region. This command does not take any parameters.
"""
DescribeAccountAttributes() = database_migration_service("DescribeAccountAttributes")

"""
Returns the status of the RefreshSchemas operation.

Required Parameters:
EndpointArn
"""
DescribeRefreshSchemasStatus(args) = database_migration_service("DescribeRefreshSchemasStatus", args)

"""
Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
"""
DescribeEventSubscriptions() = database_migration_service("DescribeEventSubscriptions")

"""
Modifies the settings for the specified replication subnet group.

Required Parameters:
ReplicationSubnetGroupIdentifier, SubnetIds
"""
ModifyReplicationSubnetGroup(args) = database_migration_service("ModifyReplicationSubnetGroup", args)

"""
Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
"""
DescribeConnections() = database_migration_service("DescribeConnections")

"""
Returns information about replication tasks for your account in the current region.
"""
DescribeReplicationTasks() = database_migration_service("DescribeReplicationTasks")

"""
Provides a description of the certificate.
"""
DescribeCertificates() = database_migration_service("DescribeCertificates")

"""
Returns information about the type of endpoints available.
"""
DescribeEndpointTypes() = database_migration_service("DescribeEndpointTypes")

"""
For internal use only
"""
DescribePendingMaintenanceActions() = database_migration_service("DescribePendingMaintenanceActions")
