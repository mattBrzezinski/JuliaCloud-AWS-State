include("../AWSCorePrototypeServices.jl")
using .Services: elasticache

"""
Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group. A Redis (cluster mode disabled) replication group is a collection of clusters, where one of the clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas. A Redis (cluster mode enabled) replication group is a collection of 1 to 90 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards). When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created. However, if you need to increase or decrease the number of node groups (console: shards), you can avail yourself of ElastiCache for Redis' enhanced backup and restore. For more information, see Restoring From a Backup with Cluster Resizing in the ElastiCache User Guide.  This operation is valid for Redis only. 

Required Parameters:
ReplicationGroupId, ReplicationGroupDescription
"""
CreateReplicationGroup(args) = elasticache("CreateReplicationGroup", args)

"""
Modifies the settings for a replication group. For Redis (cluster mode enabled) clusters, this operation cannot be used to change a cluster's node type or engine version. For more information, see:    Scaling for Amazon ElastiCache for Redis (cluster mode enabled) in the ElastiCache User Guide    ModifyReplicationGroupShardConfiguration in the ElastiCache API Reference    This operation is valid for Redis only. 

Required Parameters:
ReplicationGroupId
"""
ModifyReplicationGroup(args) = elasticache("ModifyReplicationGroup", args)

"""
Apply the service update. For more information on service updates and applying them, see Applying Service Updates.

Required Parameters:
ServiceUpdateName
"""
BatchApplyUpdateAction(args) = elasticache("BatchApplyUpdateAction", args)

"""
Creates a new cache subnet group. Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).

Required Parameters:
CacheSubnetGroupName, CacheSubnetGroupDescription, SubnetIds
"""
CreateCacheSubnetGroup(args) = elasticache("CreateCacheSubnetGroup", args)

"""
Creates a new cache security group. Use a cache security group to control access to one or more clusters. Cache security groups are only used when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache subnet group instead. For more information, see CreateCacheSubnetGroup.

Required Parameters:
CacheSecurityGroupName, Description
"""
CreateCacheSecurityGroup(args) = elasticache("CreateCacheSecurityGroup", args)

"""
Deletes a cache security group.  You cannot delete a cache security group if it is associated with any clusters. 

Required Parameters:
CacheSecurityGroupName
"""
DeleteCacheSecurityGroup(args) = elasticache("DeleteCacheSecurityGroup", args)

"""
Modifies an existing cache subnet group.

Required Parameters:
CacheSubnetGroupName
"""
ModifyCacheSubnetGroup(args) = elasticache("ModifyCacheSubnetGroup", args)

"""
Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting RetainPrimaryCluster=true. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.  This operation is valid for Redis only. 

Required Parameters:
ReplicationGroupId
"""
DeleteReplicationGroup(args) = elasticache("DeleteReplicationGroup", args)

"""
Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group. This is applicable only when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by default. 
"""
DescribeCacheSubnetGroups() = elasticache("DescribeCacheSubnetGroups")

"""
Returns information about a particular replication group. If no identifier is specified, DescribeReplicationGroups returns information about all replication groups.  This operation is valid for Redis only. 
"""
DescribeReplicationGroups() = elasticache("DescribeReplicationGroups")

"""
Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.

Required Parameters:
CacheClusterId
"""
ModifyCacheCluster(args) = elasticache("ModifyCacheCluster", args)

"""
Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the ResetAllParameters and CacheParameterGroupName parameters.

Required Parameters:
CacheParameterGroupName
"""
ResetCacheParameterGroup(args) = elasticache("ResetCacheParameterGroup", args)

"""
Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.

Required Parameters:
CacheParameterGroupName, ParameterNameValues
"""
ModifyCacheParameterGroup(args) = elasticache("ModifyCacheParameterGroup", args)

"""
Deletes a cache subnet group.  You cannot delete a cache subnet group if it is associated with any clusters. 

Required Parameters:
CacheSubnetGroupName
"""
DeleteCacheSubnetGroup(args) = elasticache("DeleteCacheSubnetGroup", args)

"""
Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
"""
DescribeCacheParameterGroups() = elasticache("DescribeCacheParameterGroups")

"""
Returns information about cluster or replication group snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.  This operation is valid for Redis only. 
"""
DescribeSnapshots() = elasticache("DescribeSnapshots")

"""
Returns a list of the available cache engines and their versions.
"""
DescribeCacheEngineVersions() = elasticache("DescribeCacheEngineVersions")

"""
Returns details of the service updates
"""
DescribeServiceUpdates() = elasticache("DescribeServiceUpdates")

"""
Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster or replication group using the CacheParameterGroup. A newly created CacheParameterGroup is an exact duplicate of the default parameter group for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can change the values of specific parameters. For more information, see:    ModifyCacheParameterGroup in the ElastiCache API Reference.    Parameters and Parameter Groups in the ElastiCache User Guide.  

Required Parameters:
CacheParameterGroupName, CacheParameterGroupFamily, Description
"""
CreateCacheParameterGroup(args) = elasticache("CreateCacheParameterGroup", args)

"""
Deletes a previously provisioned cluster. DeleteCacheCluster deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation. This operation is not valid for:   Redis (cluster mode enabled) clusters   A cluster that is the last read replica of a replication group   A node group (shard) that has Multi-AZ mode enabled   A cluster from a Redis (cluster mode enabled) replication group   A cluster that is not in the available state  

Required Parameters:
CacheClusterId
"""
DeleteCacheCluster(args) = elasticache("DeleteCacheCluster", args)

"""
Start the migration of data.

Required Parameters:
ReplicationGroupId, CustomerNodeEndpointList
"""
StartMigration(args) = elasticache("StartMigration", args)

"""
Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group. This applicable only when you have ElastiCache in Classic setup 
"""
DescribeCacheSecurityGroups() = elasticache("DescribeCacheSecurityGroups")

"""
Dynamically decreases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.

Required Parameters:
ReplicationGroupId, ApplyImmediately
"""
DecreaseReplicaCount(args) = elasticache("DecreaseReplicaCount", args)

"""
Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.

Required Parameters:
CacheParameterGroupName
"""
DeleteCacheParameterGroup(args) = elasticache("DeleteCacheParameterGroup", args)

"""
Returns information about reserved cache nodes for this account, or about a specified reserved cache node.
"""
DescribeReservedCacheNodes() = elasticache("DescribeReservedCacheNodes")

"""
Lists all cost allocation tags currently on the named resource. A cost allocation tag is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs. If the cluster is not in the available state, ListTagsForResource returns an error. You can have a maximum of 50 cost allocation tags on an ElastiCache resource. For more information, see Monitoring Costs with Tags.

Required Parameters:
ResourceName
"""
ListTagsForResource(args) = elasticache("ListTagsForResource", args)

"""
Creates a cluster. All nodes in the cluster run the same protocol-compliant cache engine software, either Memcached or Redis. This operation is not supported for Redis (cluster mode enabled) clusters.

Required Parameters:
CacheClusterId
"""
CreateCacheCluster(args) = elasticache("CreateCacheCluster", args)

"""
Returns the detailed parameter list for a particular cache parameter group.

Required Parameters:
CacheParameterGroupName
"""
DescribeCacheParameters(args) = elasticache("DescribeCacheParameters", args)

"""
Adds up to 50 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.  When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see Using Cost Allocation Tags in Amazon ElastiCache in the ElastiCache User Guide.

Required Parameters:
ResourceName, Tags
"""
AddTagsToResource(args) = elasticache("AddTagsToResource", args)

"""
Removes the tags identified by the TagKeys list from the named resource.

Required Parameters:
ResourceName, TagKeys
"""
RemoveTagsFromResource(args) = elasticache("RemoveTagsFromResource", args)

"""
Allows you to purchase a reserved cache node offering.

Required Parameters:
ReservedCacheNodesOfferingId
"""
PurchaseReservedCacheNodesOffering(args) = elasticache("PurchaseReservedCacheNodesOffering", args)

"""
Stop the service update. For more information on service updates and stopping them, see Stopping Service Updates.

Required Parameters:
ServiceUpdateName
"""
BatchStopUpdateAction(args) = elasticache("BatchStopUpdateAction", args)

"""
Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among exisiting shards.

Required Parameters:
ReplicationGroupId, NodeGroupCount, ApplyImmediately
"""
ModifyReplicationGroupShardConfiguration(args) = elasticache("ModifyReplicationGroupShardConfiguration", args)

"""
Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.  This operation is valid for Redis only. 

Required Parameters:
SnapshotName
"""
DeleteSnapshot(args) = elasticache("DeleteSnapshot", args)

"""
Lists available reserved cache node offerings.
"""
DescribeReservedCacheNodesOfferings() = elasticache("DescribeReservedCacheNodesOfferings")

"""
Reboots some, or all, of the cache nodes within a provisioned cluster. This operation applies any modified cache parameter groups to the cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cluster. During the reboot, the cluster status is set to REBOOTING. The reboot causes the contents of the cache (for each cache node being rebooted) to be lost. When the reboot is complete, a cluster event is created. Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters. Rebooting is not supported on Redis (cluster mode enabled) clusters. If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied, see Rebooting a Cluster for an alternate process.

Required Parameters:
CacheClusterId, CacheNodeIdsToReboot
"""
RebootCacheCluster(args) = elasticache("RebootCacheCluster", args)

"""
Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.  You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region. 

Required Parameters:
CacheSecurityGroupName, EC2SecurityGroupName, EC2SecurityGroupOwnerId
"""
AuthorizeCacheSecurityGroupIngress(args) = elasticache("AuthorizeCacheSecurityGroupIngress", args)

"""
Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter. By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
"""
DescribeEvents() = elasticache("DescribeEvents")

"""
Returns the default engine and system parameter information for the specified cache engine.

Required Parameters:
CacheParameterGroupFamily
"""
DescribeEngineDefaultParameters(args) = elasticache("DescribeEngineDefaultParameters", args)

"""
Complete the migration of data.

Required Parameters:
ReplicationGroupId
"""
CompleteMigration(args) = elasticache("CompleteMigration", args)

"""
Creates a copy of an entire cluster or replication group at a specific moment in time.  This operation is valid for Redis only. 

Required Parameters:
SnapshotName
"""
CreateSnapshot(args) = elasticache("CreateSnapshot", args)

"""
Makes a copy of an existing snapshot.  This operation is valid for Redis only.   Users or groups that have permissions to use the CopySnapshot operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the CopySnapshot operation. For more information about using IAM to control the use of ElastiCache operations, see Exporting Snapshots and Authentication &amp; Access Control.  You could receive the following error messages.  Error Messages     Error Message: The S3 bucket %s is outside of the region.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s does not exist.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s is not owned by the authenticated user.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The authenticated user does not have sufficient permissions to perform the desired activity.  Solution: Contact your system administrator to get the needed permissions.    Error Message: The S3 bucket %s already contains an object with key %s.  Solution: Give the TargetSnapshotName a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for TargetSnapshotName.    Error Message:  ElastiCache has not been granted READ permissions %s on the S3 Bucket.  Solution: Add List and Read permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.  Solution: Add Upload/Delete permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.  Solution: Add View Permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.  

Required Parameters:
SourceSnapshotName, TargetSnapshotName
"""
CopySnapshot(args) = elasticache("CopySnapshot", args)

"""
Returns details of the update actions 
"""
DescribeUpdateActions() = elasticache("DescribeUpdateActions")

"""
Dynamically increases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.

Required Parameters:
ReplicationGroupId, ApplyImmediately
"""
IncreaseReplicaCount(args) = elasticache("IncreaseReplicaCount", args)

"""
Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied. By default, abbreviated information about the clusters is returned. You can use the optional ShowCacheNodeInfo flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint. If the cluster is in the creating state, only cluster-level information is displayed until all of the nodes are successfully provisioned. If the cluster is in the deleting state, only cluster-level information is displayed. If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is available, the cluster is ready for use. If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.
"""
DescribeCacheClusters() = elasticache("DescribeCacheClusters")

"""
Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.

Required Parameters:
CacheSecurityGroupName, EC2SecurityGroupName, EC2SecurityGroupOwnerId
"""
RevokeCacheSecurityGroupIngress(args) = elasticache("RevokeCacheSecurityGroupIngress", args)

"""
Lists all available node types that you can scale your Redis cluster's or replication group's current node type. When you use the ModifyCacheCluster or ModifyReplicationGroup operations to scale your cluster or replication group, the value of the CacheNodeType parameter must be one of the node types returned by this operation.
"""
ListAllowedNodeTypeModifications() = elasticache("ListAllowedNodeTypeModifications")

"""
Represents the input of a TestFailover operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console).  Note the following    A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in any rolling 24-hour period.   If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.     If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group, the first node replacement must complete before a subsequent call can be made.   To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console, the AWS CLI, or the ElastiCache API. Look for the following automatic failover related events, listed here in order of occurrance:   Replication group message: Test Failover API called for node group &lt;node-group-id&gt;    Cache cluster message: Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed    Replication group message: Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed    Cache cluster message: Recovering cache nodes &lt;node-id&gt;    Cache cluster message: Finished recovery for cache nodes &lt;node-id&gt;    For more information see:    Viewing ElastiCache Events in the ElastiCache User Guide     DescribeEvents in the ElastiCache API Reference     Also see, Testing Multi-AZ with Automatic Failover in the ElastiCache User Guide.

Required Parameters:
ReplicationGroupId, NodeGroupId
"""
TestFailover(args) = elasticache("TestFailover", args)
