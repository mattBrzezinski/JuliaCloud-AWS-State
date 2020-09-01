include("../AWSCorePrototypeServices.jl")
using .Services: emr

"""
    CreateSecurityConfiguration()

Creates a security configuration, which is stored in the service and can be specified when a cluster is created.

Required Parameters
{
  "SecurityConfiguration": "The security configuration details in JSON format. For JSON parameters and examples, see Use Security Configurations to Set Up Cluster Security in the Amazon EMR Management Guide.",
  "Name": "The name of the security configuration."
}
"""
CreateSecurityConfiguration(args) = emr("CreateSecurityConfiguration", args)

"""
    ListSecurityConfigurations()

Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.

Optional Parameters
{
  "Marker": "The pagination token that indicates the set of results to retrieve."
}
"""

ListSecurityConfigurations() = emr("ListSecurityConfigurations")
ListSecurityConfigurations(args) = emr("ListSecurityConfigurations", args)

"""
    DeleteSecurityConfiguration()

Deletes a security configuration.

Required Parameters
{
  "Name": "The name of the security configuration."
}
"""
DeleteSecurityConfiguration(args) = emr("DeleteSecurityConfiguration", args)

"""
    GetManagedScalingPolicy()

 Fetches the attached managed scaling policy for an Amazon EMR cluster. 

Required Parameters
{
  "ClusterId": " Specifies the ID of the cluster for which the managed scaling policy will be fetched. "
}
"""
GetManagedScalingPolicy(args) = emr("GetManagedScalingPolicy", args)

"""
    AddInstanceFleet()

Adds an instance fleet to a running cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x. 

Required Parameters
{
  "InstanceFleet": "Specifies the configuration of the instance fleet.",
  "ClusterId": "The unique identifier of the cluster."
}
"""
AddInstanceFleet(args) = emr("AddInstanceFleet", args)

"""
    DescribeStep()

Provides more detail about the cluster step.

Required Parameters
{
  "ClusterId": "The identifier of the cluster with steps to describe.",
  "StepId": "The identifier of the step to describe."
}
"""
DescribeStep(args) = emr("DescribeStep", args)

"""
    SetVisibleToAllUsers()

Sets the Cluster VisibleToAllUsers value, which determines whether the cluster is visible to all IAM users of the AWS account associated with the cluster. Only the IAM user who created the cluster or the AWS account root user can call this action. The default value, true, indicates that all IAM users in the AWS account can perform cluster actions if they have the proper IAM policy permissions. If set to false, only the IAM user that created the cluster can perform actions. This action works on running clusters. You can override the default true setting when you create a cluster by using the VisibleToAllUsers parameter with RunJobFlow.

Required Parameters
{
  "VisibleToAllUsers": "A value of true indicates that all IAM users in the AWS account can perform cluster actions if they have the proper IAM policy permissions. This is the default. A value of false indicates that only the IAM user who created the cluster can perform actions.",
  "JobFlowIds": "The unique identifier of the job flow (cluster)."
}
"""
SetVisibleToAllUsers(args) = emr("SetVisibleToAllUsers", args)

"""
    PutBlockPublicAccessConfiguration()

Creates or updates an Amazon EMR block public access configuration for your AWS account in the current Region. For more information see Configure Block Public Access for Amazon EMR in the Amazon EMR Management Guide.

Required Parameters
{
  "BlockPublicAccessConfiguration": "A configuration for Amazon EMR block public access. The configuration applies to all clusters created in your account for the current Region. The configuration specifies whether block public access is enabled. If block public access is enabled, security groups associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless the port is specified as an exception using PermittedPublicSecurityGroupRuleRanges in the BlockPublicAccessConfiguration. By default, Port 22 (SSH) is an exception, and public access is allowed on this port. You can change this by updating BlockPublicSecurityGroupRules to remove the exception.  For accounts that created clusters in a Region before November 25, 2019, block public access is disabled by default in that Region. To use this feature, you must manually enable and configure it. For accounts that did not create an EMR cluster in a Region before this date, block public access is enabled by default in that Region. "
}
"""
PutBlockPublicAccessConfiguration(args) = emr("PutBlockPublicAccessConfiguration", args)

"""
    DescribeJobFlows()

This API is deprecated and will eventually be removed. We recommend you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups and ListBootstrapActions instead. DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time. Regardless of supplied parameters, only job flows created within the last two months are returned. If no parameters are supplied, then job flows matching either of the following criteria are returned:   Job flows created and completed in the last two weeks    Job flows created within the last two months that are in one of the following states: RUNNING, WAITING, SHUTTING_DOWN, STARTING    Amazon EMR can return a maximum of 512 job flow descriptions.

Optional Parameters
{
  "JobFlowStates": "Return only job flows whose state is contained in this list.",
  "CreatedAfter": "Return only job flows created after this date and time.",
  "JobFlowIds": "Return only job flows whose job flow ID is contained in this list.",
  "CreatedBefore": "Return only job flows created before this date and time."
}
"""

DescribeJobFlows() = emr("DescribeJobFlows")
DescribeJobFlows(args) = emr("DescribeJobFlows", args)

"""
    ModifyCluster()

Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID.

Required Parameters
{
  "ClusterId": "The unique identifier of the cluster."
}

Optional Parameters
{
  "StepConcurrencyLevel": "The number of steps that can be executed concurrently. You can specify a maximum of 256 steps. "
}
"""
ModifyCluster(args) = emr("ModifyCluster", args)

"""
    ModifyInstanceGroups()

ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.

Optional Parameters
{
  "InstanceGroups": "Instance groups to change.",
  "ClusterId": "The ID of the cluster to which the instance group belongs."
}
"""

ModifyInstanceGroups() = emr("ModifyInstanceGroups")
ModifyInstanceGroups(args) = emr("ModifyInstanceGroups", args)

"""
    RemoveAutoScalingPolicy()

Removes an automatic scaling policy from a specified instance group within an EMR cluster.

Required Parameters
{
  "ClusterId": "Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.",
  "InstanceGroupId": "Specifies the ID of the instance group to which the scaling policy is applied."
}
"""
RemoveAutoScalingPolicy(args) = emr("RemoveAutoScalingPolicy", args)

"""
    ListInstanceGroups()

Provides all available details about the instance groups in a cluster.

Required Parameters
{
  "ClusterId": "The identifier of the cluster for which to list the instance groups."
}

Optional Parameters
{
  "Marker": "The pagination token that indicates the next set of results to retrieve."
}
"""
ListInstanceGroups(args) = emr("ListInstanceGroups", args)

"""
    AddInstanceGroups()

Adds one or more instance groups to a running cluster.

Required Parameters
{
  "InstanceGroups": "Instance groups to add.",
  "JobFlowId": "Job flow in which to add the instance groups."
}
"""
AddInstanceGroups(args) = emr("AddInstanceGroups", args)

"""
    RemoveTags()

Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters.  The following example removes the stack tag with value Prod from a cluster:

Required Parameters
{
  "ResourceId": "The Amazon EMR resource identifier from which tags will be removed. This value must be a cluster identifier.",
  "TagKeys": "A list of tag keys to remove from a resource."
}
"""
RemoveTags(args) = emr("RemoveTags", args)

"""
    StopNotebookExecution()

Stops a notebook execution.

Required Parameters
{
  "NotebookExecutionId": "The unique identifier of the notebook execution."
}
"""
StopNotebookExecution(args) = emr("StopNotebookExecution", args)

"""
    ListSteps()

Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request of filter by StepStates. You can specify a maximum of ten stepIDs.

Required Parameters
{
  "ClusterId": "The identifier of the cluster for which to list the steps."
}

Optional Parameters
{
  "Marker": "The pagination token that indicates the next set of results to retrieve.",
  "StepStates": "The filter to limit the step list based on certain states.",
  "StepIds": "The filter to limit the step list based on the identifier of the steps. You can specify a maximum of ten Step IDs. The character constraint applies to the overall length of the array."
}
"""
ListSteps(args) = emr("ListSteps", args)

"""
    GetBlockPublicAccessConfiguration()

Returns the Amazon EMR block public access configuration for your AWS account in the current Region. For more information see Configure Block Public Access for Amazon EMR in the Amazon EMR Management Guide.
"""

GetBlockPublicAccessConfiguration() = emr("GetBlockPublicAccessConfiguration")
GetBlockPublicAccessConfiguration(args) = emr("GetBlockPublicAccessConfiguration", args)

"""
    RemoveManagedScalingPolicy()

 Removes a managed scaling policy from a specified EMR cluster. 

Required Parameters
{
  "ClusterId": " Specifies the ID of the cluster from which the managed scaling policy will be removed. "
}
"""
RemoveManagedScalingPolicy(args) = emr("RemoveManagedScalingPolicy", args)

"""
    StartNotebookExecution()

Starts a notebook execution.

Required Parameters
{
  "ExecutionEngine": "Specifies the execution engine (cluster) that runs the notebook execution.",
  "ServiceRole": "The name or ARN of the IAM role that is used as the service role for Amazon EMR (the EMR role) for the notebook execution.",
  "EditorId": "The unique identifier of the EMR Notebook to use for notebook execution.",
  "RelativePath": "The path and file name of the notebook file for this execution, relative to the path specified for the EMR Notebook. For example, if you specify a path of s3://MyBucket/MyNotebooks when you create an EMR Notebook for a notebook with an ID of e-ABCDEFGHIJK1234567890ABCD (the EditorID of this request), and you specify a RelativePath of my_notebook_executions/notebook_execution.ipynb, the location of the file for the notebook execution is s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb."
}

Optional Parameters
{
  "NotebookInstanceSecurityGroupId": "The unique identifier of the Amazon EC2 security group to associate with the EMR Notebook for this notebook execution.",
  "NotebookParams": "Input parameters in JSON format passed to the EMR Notebook at runtime for execution.",
  "Tags": "A list of tags associated with a notebook execution. Tags are user-defined key value pairs that consist of a required key string with a maximum of 128 characters and an optional value string with a maximum of 256 characters.",
  "NotebookExecutionName": "An optional name for the notebook execution."
}
"""
StartNotebookExecution(args) = emr("StartNotebookExecution", args)

"""
    RunJobFlow()

RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the JobFlowInstancesConfig KeepJobFlowAliveWhenNoSteps parameter is set to TRUE, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.  For additional protection, you can set the JobFlowInstancesConfig TerminationProtected parameter to TRUE to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. For long running clusters, we recommend that you periodically store your results.  The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both. 

Required Parameters
{
  "Instances": "A specification of the number and type of Amazon EC2 instances.",
  "Name": "The name of the job flow."
}

Optional Parameters
{
  "LogEncryptionKmsKeyId": "The AWS KMS customer master key (CMK) used for encrypting log files. If a value is not provided, the logs will remain encrypted by AES-256. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.",
  "SecurityConfiguration": "The name of a security configuration to apply to the cluster.",
  "NewSupportedProducts": " For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.  A list of strings that indicates third-party software to use with the job flow that accepts a user argument list. EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action arguments. For more information, see \"Launch a Job Flow on the MapR Distribution for Hadoop\" in the Amazon EMR Developer Guide. Supported values are:   \"mapr-m3\" - launch the cluster using MapR M3 Edition.   \"mapr-m5\" - launch the cluster using MapR M5 Edition.   \"mapr\" with the user arguments specifying \"--edition,m3\" or \"--edition,m5\" - launch the job flow using MapR M3 or M5 Edition respectively.   \"mapr-m7\" - launch the cluster using MapR M7 Edition.   \"hunk\" - launch the cluster with the Hunk Big Data Analtics Platform.   \"hue\"- launch the cluster with Hue installed.   \"spark\" - launch the cluster with Apache Spark installed.   \"ganglia\" - launch the cluster with the Ganglia Monitoring System installed.  ",
  "RepoUpgradeOnBoot": "Applies only when CustomAmiID is used. Specifies which updates from the Amazon Linux AMI package repositories to apply automatically when the instance boots using the AMI. If omitted, the default is SECURITY, which indicates that only security updates are applied. If NONE is specified, no updates are applied, and all updates must be applied manually.",
  "ManagedScalingPolicy": " The specified managed scaling policy for an Amazon EMR cluster. ",
  "VisibleToAllUsers": "A value of true indicates that all IAM users in the AWS account can perform cluster actions if they have the proper IAM policy permissions. This is the default. A value of false indicates that only the IAM user who created the cluster can perform actions.",
  "SupportedProducts": " For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use Applications.  A list of strings that indicates third-party software to use. For more information, see the Amazon EMR Developer Guide. Currently supported values are:   \"mapr-m3\" - launch the job flow using MapR M3 Edition.   \"mapr-m5\" - launch the job flow using MapR M5 Edition.  ",
  "Tags": "A list of tags to associate with a cluster and propagate to Amazon EC2 instances.",
  "StepConcurrencyLevel": "Specifies the number of steps that can be executed concurrently. The default value is 1. The maximum value is 256.",
  "Configurations": "For Amazon EMR releases 4.0 and later. The list of configurations supplied for the EMR cluster you are creating.",
  "AutoScalingRole": "An IAM role for automatic scaling policies. The default role is EMR_AutoScaling_DefaultRole. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.",
  "ServiceRole": "The IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf.",
  "AdditionalInfo": "A JSON string for selecting additional features.",
  "BootstrapActions": "A list of bootstrap actions to run before Hadoop starts on the cluster nodes.",
  "JobFlowRole": "Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2 instances of the cluster assume this role. The default role is EMR_EC2_DefaultRole. In order to use the default role, you must have already created it using the CLI or console.",
  "ScaleDownBehavior": "Specifies the way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. TERMINATE_AT_INSTANCE_HOUR indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. TERMINATE_AT_TASK_COMPLETION indicates that Amazon EMR blacklists and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. TERMINATE_AT_TASK_COMPLETION available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.",
  "Applications": "Applies to Amazon EMR releases 4.0 and later. A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the Amazon EMR Release Guide.",
  "KerberosAttributes": "Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see Use Kerberos Authentication in the EMR Management Guide.",
  "CustomAmiId": "Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see Using a Custom AMI in the Amazon EMR Management Guide. If omitted, the cluster uses the base Linux AMI for the ReleaseLabel specified. For Amazon EMR versions 2.x and 3.x, use AmiVersion instead. For information about creating a custom AMI, see Creating an Amazon EBS-Backed Linux AMI in the Amazon Elastic Compute Cloud User Guide for Linux Instances. For information about finding an AMI ID, see Finding a Linux AMI. ",
  "Steps": "A list of steps to run.",
  "ReleaseLabel": "The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form emr-x.x.x, where x.x.x is an Amazon EMR release version such as emr-5.14.0. For more information about Amazon EMR release versions and included application versions and features, see https://docs.aws.amazon.com/emr/latest/ReleaseGuide/. The release label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use AmiVersion.",
  "LogUri": "The location in Amazon S3 to write the log files of the job flow. If a value is not provided, logs are not created.",
  "EbsRootVolumeSize": "The size, in GiB, of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.",
  "AmiVersion": "Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and later, ReleaseLabel is used. To specify a custom AMI, use CustomAmiID."
}
"""
RunJobFlow(args) = emr("RunJobFlow", args)

"""
    PutAutoScalingPolicy()

Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.

Required Parameters
{
  "ClusterId": "Specifies the ID of a cluster. The instance group to which the automatic scaling policy is applied is within this cluster.",
  "InstanceGroupId": "Specifies the ID of the instance group to which the automatic scaling policy is applied.",
  "AutoScalingPolicy": "Specifies the definition of the automatic scaling policy."
}
"""
PutAutoScalingPolicy(args) = emr("PutAutoScalingPolicy", args)

"""
    ListInstances()

Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.

Required Parameters
{
  "ClusterId": "The identifier of the cluster for which to list the instances."
}

Optional Parameters
{
  "InstanceFleetType": "The node type of the instance fleet. For example MASTER, CORE, or TASK.",
  "InstanceStates": "A list of instance states that will filter the instances returned with this request.",
  "Marker": "The pagination token that indicates the next set of results to retrieve.",
  "InstanceGroupTypes": "The type of instance group for which to list the instances.",
  "InstanceGroupId": "The identifier of the instance group for which to list the instances.",
  "InstanceFleetId": "The unique identifier of the instance fleet."
}
"""
ListInstances(args) = emr("ListInstances", args)

"""
    CancelSteps()

Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a PENDING state.

Required Parameters
{
  "StepIds": "The list of StepIDs to cancel. Use ListSteps to get steps and their states for the specified cluster.",
  "ClusterId": "The ClusterID for which specified steps will be canceled. Use RunJobFlow and ListClusters to get ClusterIDs. "
}

Optional Parameters
{
  "StepCancellationOption": "The option to choose for cancelling RUNNING steps. By default, the value is SEND_INTERRUPT."
}
"""
CancelSteps(args) = emr("CancelSteps", args)

"""
    SetTerminationProtection()

SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling SetTerminationProtection on a cluster is similar to calling the Amazon EC2 DisableAPITermination API on all EC2 instances in a cluster.  SetTerminationProtection is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.  To terminate a cluster that has been locked by setting SetTerminationProtection to true, you must first unlock the job flow by a subsequent call to SetTerminationProtection in which you set the value to false.   For more information, seeManaging Cluster Termination in the Amazon EMR Management Guide. 

Required Parameters
{
  "TerminationProtected": "A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or job-flow error.",
  "JobFlowIds": " A list of strings that uniquely identify the clusters to protect. This identifier is returned by RunJobFlow and can also be obtained from DescribeJobFlows . "
}
"""
SetTerminationProtection(args) = emr("SetTerminationProtection", args)

"""
    ListBootstrapActions()

Provides information about the bootstrap actions associated with a cluster.

Required Parameters
{
  "ClusterId": "The cluster identifier for the bootstrap actions to list."
}

Optional Parameters
{
  "Marker": "The pagination token that indicates the next set of results to retrieve."
}
"""
ListBootstrapActions(args) = emr("ListBootstrapActions", args)

"""
    ListInstanceFleets()

Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 

Required Parameters
{
  "ClusterId": "The unique identifier of the cluster."
}

Optional Parameters
{
  "Marker": "The pagination token that indicates the next set of results to retrieve."
}
"""
ListInstanceFleets(args) = emr("ListInstanceFleets", args)

"""
    TerminateJobFlows()

TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created. The maximum number of clusters allowed is 10. The call to TerminateJobFlows is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.

Required Parameters
{
  "JobFlowIds": "A list of job flows to be shutdown."
}
"""
TerminateJobFlows(args) = emr("TerminateJobFlows", args)

"""
    AddJobFlowSteps()

AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step. Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully. You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

Required Parameters
{
  "Steps": " A list of StepConfig to be executed by the job flow. ",
  "JobFlowId": "A string that uniquely identifies the job flow. This identifier is returned by RunJobFlow and can also be obtained from ListClusters. "
}
"""
AddJobFlowSteps(args) = emr("AddJobFlowSteps", args)

"""
    DescribeSecurityConfiguration()

Provides the details of a security configuration by returning the configuration JSON.

Required Parameters
{
  "Name": "The name of the security configuration."
}
"""
DescribeSecurityConfiguration(args) = emr("DescribeSecurityConfiguration", args)

"""
    DescribeCluster()

Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. 

Required Parameters
{
  "ClusterId": "The identifier of the cluster to describe."
}
"""
DescribeCluster(args) = emr("DescribeCluster", args)

"""
    AddTags()

Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters. 

Required Parameters
{
  "Tags": "A list of tags to associate with a cluster and propagate to EC2 instances. Tags are user-defined key/value pairs that consist of a required key string with a maximum of 128 characters, and an optional value string with a maximum of 256 characters.",
  "ResourceId": "The Amazon EMR resource identifier to which tags will be added. This value must be a cluster identifier."
}
"""
AddTags(args) = emr("AddTags", args)

"""
    ListNotebookExecutions()

Provides summaries of all notebook executions. You can filter the list based on multiple criteria such as status, time range, and editor id. Returns a maximum of 50 notebook executions and a marker to track the paging of a longer notebook execution list across multiple ListNotebookExecution calls.

Optional Parameters
{
  "Marker": "The pagination token, returned by a previous ListNotebookExecutions call, that indicates the start of the list for this ListNotebookExecutions call.",
  "Status": "The status filter for listing notebook executions.    START_PENDING indicates that the cluster has received the execution request but execution has not begun.    STARTING indicates that the execution is starting on the cluster.    RUNNING indicates that the execution is being processed by the cluster.    FINISHING indicates that execution processing is in the final stages.    FINISHED indicates that the execution has completed without error.    FAILING indicates that the execution is failing and will not finish successfully.    FAILED indicates that the execution failed.    STOP_PENDING indicates that the cluster has received a StopNotebookExecution request and the stop is pending.    STOPPING indicates that the cluster is in the process of stopping the execution as a result of a StopNotebookExecution request.    STOPPED indicates that the execution stopped because of a StopNotebookExecution request.  ",
  "From": "The beginning of time range filter for listing notebook executions. The default is the timestamp of 30 days ago.",
  "To": "The end of time range filter for listing notebook executions. The default is the current timestamp.",
  "EditorId": "The unique ID of the editor associated with the notebook execution."
}
"""

ListNotebookExecutions() = emr("ListNotebookExecutions")
ListNotebookExecutions(args) = emr("ListNotebookExecutions", args)

"""
    DescribeNotebookExecution()

Provides details of a notebook execution.

Required Parameters
{
  "NotebookExecutionId": "The unique identifier of the notebook execution."
}
"""
DescribeNotebookExecution(args) = emr("DescribeNotebookExecution", args)

"""
    ModifyInstanceFleet()

Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 

Required Parameters
{
  "InstanceFleet": "The unique identifier of the instance fleet.",
  "ClusterId": "The unique identifier of the cluster."
}
"""
ModifyInstanceFleet(args) = emr("ModifyInstanceFleet", args)

"""
    PutManagedScalingPolicy()

 Creates or updates a managed scaling policy for an Amazon EMR cluster. The managed scaling policy defines the limits for resources, such as EC2 instances that can be added or terminated from a cluster. The policy only applies to the core and task nodes. The master node cannot be scaled after initial configuration. 

Required Parameters
{
  "ManagedScalingPolicy": " Specifies the constraints for the managed scaling policy. ",
  "ClusterId": " Specifies the ID of an EMR cluster where the managed scaling policy is attached. "
}
"""
PutManagedScalingPolicy(args) = emr("PutManagedScalingPolicy", args)

"""
    ListClusters()

Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.

Optional Parameters
{
  "Marker": "The pagination token that indicates the next set of results to retrieve.",
  "ClusterStates": "The cluster state filters to apply when listing clusters.",
  "CreatedAfter": "The creation date and time beginning value filter for listing clusters.",
  "CreatedBefore": "The creation date and time end value filter for listing clusters."
}
"""

ListClusters() = emr("ListClusters")
ListClusters(args) = emr("ListClusters", args)
