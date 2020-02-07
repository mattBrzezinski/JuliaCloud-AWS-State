include("../AWSCorePrototypeServices.jl")
using .Services: kafka

"""

            Creates a new MSK cluster.
         
"""
CreateCluster(BrokerNodeGroupInfo, KafkaVersion, NumberOfBrokerNodes, ClusterName) = kafka("POST", "/v1/clusters")
CreateCluster(BrokerNodeGroupInfo, KafkaVersion, NumberOfBrokerNodes, ClusterName, args) = kafka("POST", "/v1/clusters", args)
CreateCluster(a...; b...) = CreateCluster(a..., b)

"""

            Returns a list of Kafka versions.
         
"""
ListKafkaVersions() = kafka("GET", "/v1/kafka-versions")
ListKafkaVersions(, args) = kafka("GET", "/v1/kafka-versions", args)
ListKafkaVersions(a...; b...) = ListKafkaVersions(a..., b)

"""

            Returns a list of the tags associated with the specified resource.
         
"""
ListTagsForResource(ResourceArn) = kafka("GET", "/v1/tags/$resourceArn")
ListTagsForResource(ResourceArn, args) = kafka("GET", "/v1/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""

            Updates the EBS storage associated with MSK brokers.
         
"""
UpdateBrokerStorage(ClusterArn, TargetBrokerEBSVolumeInfo, CurrentVersion) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/storage")
UpdateBrokerStorage(ClusterArn, TargetBrokerEBSVolumeInfo, CurrentVersion, args) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/storage", args)
UpdateBrokerStorage(a...; b...) = UpdateBrokerStorage(a..., b)

"""

            Returns a description of this revision of the configuration.
         
"""
DescribeConfigurationRevision(Revision, Arn) = kafka("GET", "/v1/configurations/$arn/revisions/$revision")
DescribeConfigurationRevision(Revision, Arn, args) = kafka("GET", "/v1/configurations/$arn/revisions/$revision", args)
DescribeConfigurationRevision(a...; b...) = DescribeConfigurationRevision(a..., b)

"""

            Returns a list of the broker nodes in the cluster.
         
"""
ListNodes(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/nodes")
ListNodes(ClusterArn, args) = kafka("GET", "/v1/clusters/$clusterArn/nodes", args)
ListNodes(a...; b...) = ListNodes(a..., b)

"""

            Updates the cluster with the configuration that is specified in the request body.
         
"""
UpdateClusterConfiguration(ClusterArn, CurrentVersion, ConfigurationInfo) = kafka("PUT", "/v1/clusters/$clusterArn/configuration")
UpdateClusterConfiguration(ClusterArn, CurrentVersion, ConfigurationInfo, args) = kafka("PUT", "/v1/clusters/$clusterArn/configuration", args)
UpdateClusterConfiguration(a...; b...) = UpdateClusterConfiguration(a..., b)

"""

            Returns a list of all the MSK configurations in this Region.
         
"""
ListConfigurations() = kafka("GET", "/v1/configurations")
ListConfigurations(, args) = kafka("GET", "/v1/configurations", args)
ListConfigurations(a...; b...) = ListConfigurations(a..., b)

"""

            Creates a new MSK configuration.
         
"""
CreateConfiguration(ServerProperties, KafkaVersions, Name) = kafka("POST", "/v1/configurations")
CreateConfiguration(ServerProperties, KafkaVersions, Name, args) = kafka("POST", "/v1/configurations", args)
CreateConfiguration(a...; b...) = CreateConfiguration(a..., b)

"""

            Returns a list of all the operations that have been performed on the specified MSK cluster.
         
"""
ListClusterOperations(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/operations")
ListClusterOperations(ClusterArn, args) = kafka("GET", "/v1/clusters/$clusterArn/operations", args)
ListClusterOperations(a...; b...) = ListClusterOperations(a..., b)

"""

            Adds tags to the specified MSK resource.
         
"""
TagResource(ResourceArn, Tags) = kafka("POST", "/v1/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = kafka("POST", "/v1/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""

            Removes the tags associated with the keys that are provided in the query.
         
"""
UntagResource(TagKeys, ResourceArn) = kafka("DELETE", "/v1/tags/$resourceArn")
UntagResource(TagKeys, ResourceArn, args) = kafka("DELETE", "/v1/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""

            Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
         
"""
UpdateMonitoring(ClusterArn, CurrentVersion) = kafka("PUT", "/v1/clusters/$clusterArn/monitoring")
UpdateMonitoring(ClusterArn, CurrentVersion, args) = kafka("PUT", "/v1/clusters/$clusterArn/monitoring", args)
UpdateMonitoring(a...; b...) = UpdateMonitoring(a..., b)

"""

            Updates the number of broker nodes in the cluster.
         
"""
UpdateBrokerCount(ClusterArn, CurrentVersion, TargetNumberOfBrokerNodes) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/count")
UpdateBrokerCount(ClusterArn, CurrentVersion, TargetNumberOfBrokerNodes, args) = kafka("PUT", "/v1/clusters/$clusterArn/nodes/count", args)
UpdateBrokerCount(a...; b...) = UpdateBrokerCount(a..., b)

"""

            Returns a description of the cluster operation specified by the ARN.
         
"""
DescribeClusterOperation(ClusterOperationArn) = kafka("GET", "/v1/operations/$clusterOperationArn")
DescribeClusterOperation(ClusterOperationArn, args) = kafka("GET", "/v1/operations/$clusterOperationArn", args)
DescribeClusterOperation(a...; b...) = DescribeClusterOperation(a..., b)

"""

            Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
         
"""
DeleteCluster(ClusterArn) = kafka("DELETE", "/v1/clusters/$clusterArn")
DeleteCluster(ClusterArn, args) = kafka("DELETE", "/v1/clusters/$clusterArn", args)
DeleteCluster(a...; b...) = DeleteCluster(a..., b)

"""

            Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
         
"""
DescribeCluster(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn")
DescribeCluster(ClusterArn, args) = kafka("GET", "/v1/clusters/$clusterArn", args)
DescribeCluster(a...; b...) = DescribeCluster(a..., b)

"""

            A list of brokers that a client application can use to bootstrap.
         
"""
GetBootstrapBrokers(ClusterArn) = kafka("GET", "/v1/clusters/$clusterArn/bootstrap-brokers")
GetBootstrapBrokers(ClusterArn, args) = kafka("GET", "/v1/clusters/$clusterArn/bootstrap-brokers", args)
GetBootstrapBrokers(a...; b...) = GetBootstrapBrokers(a..., b)

"""

            Returns a description of this MSK configuration.
         
"""
DescribeConfiguration(Arn) = kafka("GET", "/v1/configurations/$arn")
DescribeConfiguration(Arn, args) = kafka("GET", "/v1/configurations/$arn", args)
DescribeConfiguration(a...; b...) = DescribeConfiguration(a..., b)

"""

            Returns a list of all the MSK configurations in this Region.
         
"""
ListConfigurationRevisions(Arn) = kafka("GET", "/v1/configurations/$arn/revisions")
ListConfigurationRevisions(Arn, args) = kafka("GET", "/v1/configurations/$arn/revisions", args)
ListConfigurationRevisions(a...; b...) = ListConfigurationRevisions(a..., b)

"""

            Returns a list of all the MSK clusters in the current Region.
         
"""
ListClusters() = kafka("GET", "/v1/clusters")
ListClusters(, args) = kafka("GET", "/v1/clusters", args)
ListClusters(a...; b...) = ListClusters(a..., b)
