include("../AWSCorePrototypeServices.jl")
using .Services: emr

"""
Creates a security configuration, which is stored in the service and can be specified when a cluster is created.

Required Parameters:
Name, SecurityConfiguration
"""
CreateSecurityConfiguration(args) = emr("CreateSecurityConfiguration", args)

"""
Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
"""
ListSecurityConfigurations() = emr("ListSecurityConfigurations")

"""
Deletes a security configuration.

Required Parameters:
Name
"""
DeleteSecurityConfiguration(args) = emr("DeleteSecurityConfiguration", args)

"""
Adds an instance fleet to a running cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x. 

Required Parameters:
ClusterId, InstanceFleet
"""
AddInstanceFleet(args) = emr("AddInstanceFleet", args)

"""
Provides more detail about the cluster step.

Required Parameters:
ClusterId, StepId
"""
DescribeStep(args) = emr("DescribeStep", args)

"""
Sets the Cluster VisibleToAllUsers value, which determines whether the cluster is visible to all IAM users of the AWS account associated with the cluster. Only the IAM user who created the cluster or the AWS account root user can call this action. The default value, true, indicates that all IAM users in the AWS account can perform cluster actions if they have the proper IAM policy permissions. If set to false, only the IAM user that created the cluster can perform actions. This action works on running clusters. You can override the default true setting when you create a cluster by using the VisibleToAllUsers parameter with RunJobFlow.

Required Parameters:
JobFlowIds, VisibleToAllUsers
"""
SetVisibleToAllUsers(args) = emr("SetVisibleToAllUsers", args)

"""
Creates or updates an Amazon EMR block public access configuration for your AWS account in the current Region. For more information see Configure Block Public Access for Amazon EMR in the Amazon EMR Management Guide.

Required Parameters:
BlockPublicAccessConfiguration
"""
PutBlockPublicAccessConfiguration(args) = emr("PutBlockPublicAccessConfiguration", args)

"""
This API is deprecated and will eventually be removed. We recommend you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups and ListBootstrapActions instead. DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time. Regardless of supplied parameters, only job flows created within the last two months are returned. If no parameters are supplied, then job flows matching either of the following criteria are returned:   Job flows created and completed in the last two weeks    Job flows created within the last two months that are in one of the following states: RUNNING, WAITING, SHUTTING_DOWN, STARTING    Amazon EMR can return a maximum of 512 job flow descriptions.
"""
DescribeJobFlows() = emr("DescribeJobFlows")

"""
Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID.

Required Parameters:
ClusterId
"""
ModifyCluster(args) = emr("ModifyCluster", args)

"""
ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.
"""
ModifyInstanceGroups() = emr("ModifyInstanceGroups")

"""
Removes an automatic scaling policy from a specified instance group within an EMR cluster.

Required Parameters:
ClusterId, InstanceGroupId
"""
RemoveAutoScalingPolicy(args) = emr("RemoveAutoScalingPolicy", args)

"""
Provides all available details about the instance groups in a cluster.

Required Parameters:
ClusterId
"""
ListInstanceGroups(args) = emr("ListInstanceGroups", args)

"""
Adds one or more instance groups to a running cluster.

Required Parameters:
InstanceGroups, JobFlowId
"""
AddInstanceGroups(args) = emr("AddInstanceGroups", args)

"""
Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters.  The following example removes the stack tag with value Prod from a cluster:

Required Parameters:
ResourceId, TagKeys
"""
RemoveTags(args) = emr("RemoveTags", args)

"""
Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request of filter by StepStates. You can specify a maximum of ten stepIDs.

Required Parameters:
ClusterId
"""
ListSteps(args) = emr("ListSteps", args)

"""
Returns the Amazon EMR block public access configuration for your AWS account in the current Region. For more information see Configure Block Public Access for Amazon EMR in the Amazon EMR Management Guide.
"""
GetBlockPublicAccessConfiguration() = emr("GetBlockPublicAccessConfiguration")

"""
RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the JobFlowInstancesConfig KeepJobFlowAliveWhenNoSteps parameter is set to TRUE, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.  For additional protection, you can set the JobFlowInstancesConfig TerminationProtected parameter to TRUE to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. For long running clusters, we recommend that you periodically store your results.  The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both. 

Required Parameters:
Name, Instances
"""
RunJobFlow(args) = emr("RunJobFlow", args)

"""
Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.

Required Parameters:
ClusterId, InstanceGroupId, AutoScalingPolicy
"""
PutAutoScalingPolicy(args) = emr("PutAutoScalingPolicy", args)

"""
Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.

Required Parameters:
ClusterId
"""
ListInstances(args) = emr("ListInstances", args)

"""
Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a PENDING state.

Required Parameters:
ClusterId, StepIds
"""
CancelSteps(args) = emr("CancelSteps", args)

"""
SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling SetTerminationProtection on a cluster is similar to calling the Amazon EC2 DisableAPITermination API on all EC2 instances in a cluster.  SetTerminationProtection is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.  To terminate a cluster that has been locked by setting SetTerminationProtection to true, you must first unlock the job flow by a subsequent call to SetTerminationProtection in which you set the value to false.   For more information, seeManaging Cluster Termination in the Amazon EMR Management Guide. 

Required Parameters:
JobFlowIds, TerminationProtected
"""
SetTerminationProtection(args) = emr("SetTerminationProtection", args)

"""
Provides information about the bootstrap actions associated with a cluster.

Required Parameters:
ClusterId
"""
ListBootstrapActions(args) = emr("ListBootstrapActions", args)

"""
Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 

Required Parameters:
ClusterId
"""
ListInstanceFleets(args) = emr("ListInstanceFleets", args)

"""
TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created. The maximum number of clusters allowed is 10. The call to TerminateJobFlows is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.

Required Parameters:
JobFlowIds
"""
TerminateJobFlows(args) = emr("TerminateJobFlows", args)

"""
AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step. Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully. You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

Required Parameters:
JobFlowId, Steps
"""
AddJobFlowSteps(args) = emr("AddJobFlowSteps", args)

"""
Provides the details of a security configuration by returning the configuration JSON.

Required Parameters:
Name
"""
DescribeSecurityConfiguration(args) = emr("DescribeSecurityConfiguration", args)

"""
Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. 

Required Parameters:
ClusterId
"""
DescribeCluster(args) = emr("DescribeCluster", args)

"""
Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters. 

Required Parameters:
ResourceId, Tags
"""
AddTags(args) = emr("AddTags", args)

"""
Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 

Required Parameters:
ClusterId, InstanceFleet
"""
ModifyInstanceFleet(args) = emr("ModifyInstanceFleet", args)

"""
Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
"""
ListClusters() = emr("ListClusters")
