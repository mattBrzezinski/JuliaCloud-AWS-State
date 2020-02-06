include("../AWSCorePrototypeServices.jl")
using .Services: kafka

"""

            Creates a new MSK cluster.
         

Required Parameters:
BrokerNodeGroupInfo, KafkaVersion, NumberOfBrokerNodes, ClusterName
"""
CreateCluster(args) = kafka("POST", "/v1/clusters", args)

"""

            Returns a list of Kafka versions.
         
"""
ListKafkaVersions() = kafka("GET", "/v1/kafka-versions")

"""

            Returns a list of the tags associated with the specified resource.
         

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = kafka("GET", "/v1/tags/{resourceArn}", args)

"""

            Updates the EBS storage associated with MSK brokers.
         

Required Parameters:
ClusterArn, TargetBrokerEBSVolumeInfo, CurrentVersion
"""
UpdateBrokerStorage(args) = kafka("PUT", "/v1/clusters/{clusterArn}/nodes/storage", args)

"""

            Returns a description of this revision of the configuration.
         

Required Parameters:
Revision, Arn
"""
DescribeConfigurationRevision(args) = kafka("GET", "/v1/configurations/{arn}/revisions/{revision}", args)

"""

            Returns a list of the broker nodes in the cluster.
         

Required Parameters:
ClusterArn
"""
ListNodes(args) = kafka("GET", "/v1/clusters/{clusterArn}/nodes", args)

"""

            Updates the cluster with the configuration that is specified in the request body.
         

Required Parameters:
ClusterArn, CurrentVersion, ConfigurationInfo
"""
UpdateClusterConfiguration(args) = kafka("PUT", "/v1/clusters/{clusterArn}/configuration", args)

"""

            Returns a list of all the MSK configurations in this Region.
         
"""
ListConfigurations() = kafka("GET", "/v1/configurations")

"""

            Creates a new MSK configuration.
         

Required Parameters:
ServerProperties, KafkaVersions, Name
"""
CreateConfiguration(args) = kafka("POST", "/v1/configurations", args)

"""

            Returns a list of all the operations that have been performed on the specified MSK cluster.
         

Required Parameters:
ClusterArn
"""
ListClusterOperations(args) = kafka("GET", "/v1/clusters/{clusterArn}/operations", args)

"""

            Adds tags to the specified MSK resource.
         

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = kafka("POST", "/v1/tags/{resourceArn}", args)

"""

            Removes the tags associated with the keys that are provided in the query.
         

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = kafka("DELETE", "/v1/tags/{resourceArn}", args)

"""

            Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
         

Required Parameters:
ClusterArn, CurrentVersion
"""
UpdateMonitoring(args) = kafka("PUT", "/v1/clusters/{clusterArn}/monitoring", args)

"""

            Updates the number of broker nodes in the cluster.
         

Required Parameters:
ClusterArn, CurrentVersion, TargetNumberOfBrokerNodes
"""
UpdateBrokerCount(args) = kafka("PUT", "/v1/clusters/{clusterArn}/nodes/count", args)

"""

            Returns a description of the cluster operation specified by the ARN.
         

Required Parameters:
ClusterOperationArn
"""
DescribeClusterOperation(args) = kafka("GET", "/v1/operations/{clusterOperationArn}", args)

"""

            Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
         

Required Parameters:
ClusterArn
"""
DeleteCluster(args) = kafka("DELETE", "/v1/clusters/{clusterArn}", args)

"""

            Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
         

Required Parameters:
ClusterArn
"""
DescribeCluster(args) = kafka("GET", "/v1/clusters/{clusterArn}", args)

"""

            A list of brokers that a client application can use to bootstrap.
         

Required Parameters:
ClusterArn
"""
GetBootstrapBrokers(args) = kafka("GET", "/v1/clusters/{clusterArn}/bootstrap-brokers", args)

"""

            Returns a description of this MSK configuration.
         

Required Parameters:
Arn
"""
DescribeConfiguration(args) = kafka("GET", "/v1/configurations/{arn}", args)

"""

            Returns a list of all the MSK configurations in this Region.
         

Required Parameters:
Arn
"""
ListConfigurationRevisions(args) = kafka("GET", "/v1/configurations/{arn}/revisions", args)

"""

            Returns a list of all the MSK clusters in the current Region.
         
"""
ListClusters() = kafka("GET", "/v1/clusters")
