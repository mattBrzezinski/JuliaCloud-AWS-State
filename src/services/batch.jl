include("../AWSCorePrototypeServices.jl")
using .Services: batch

"""
    SubmitJob

Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition.

Required Parameters:
{
  "jobName": "The name of the job. The first character must be alphanumeric, and up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.",
  "jobDefinition": "The job definition used by this job. This value can be one of name, name:revision, or the Amazon Resource Name (ARN) for the job definition. If name is specified without a revision then the latest active revision is used.",
  "jobQueue": "The job queue into which the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue."
}


Optional Parameters:
{
  "dependsOn": "A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a SEQUENTIAL type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an N_TO_N type dependency with a job ID for array jobs. In that case, each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin.",
  "containerOverrides": "A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a command override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an environment override.",
  "parameters": "Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a SubmitJob request override any corresponding parameter defaults from the job definition.",
  "timeout": "The timeout configuration for this SubmitJob operation. You can specify a timeout duration after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job. For more information, see Job Timeouts in the Amazon Elastic Container Service Developer Guide.",
  "nodeOverrides": "A list of node overrides in JSON format that specify the node range to target and the container overrides for that node range.",
  "arrayProperties": "The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. For more information, see Array Jobs in the AWS Batch User Guide.",
  "retryStrategy": "The retry strategy to use for failed jobs from this SubmitJob operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition."
}

"""

SubmitJob(args) = batch("POST", "/v1/submitjob", args)
"""
    TerminateJob

Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.

Required Parameters:
{
  "jobId": "The AWS Batch job ID of the job to terminate.",
  "reason": "A message to attach to the job that explains the reason for canceling it. This message is returned by future DescribeJobs operations on the job. This message is also recorded in the AWS Batch activity logs."
}


Optional Parameters:
{}

"""

TerminateJob(args) = batch("POST", "/v1/terminatejob", args)
"""
    DescribeComputeEnvironments

Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.

Required Parameters:
{}


Optional Parameters:
{
  "computeEnvironments": "A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.",
  "maxResults": "The maximum number of cluster results returned by DescribeComputeEnvironments in paginated output. When this parameter is used, DescribeComputeEnvironments only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another DescribeComputeEnvironments request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then DescribeComputeEnvironments returns up to 100 results and a nextToken value if applicable.",
  "nextToken": "The nextToken value returned from a previous paginated DescribeComputeEnvironments request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. "
}

"""
DescribeComputeEnvironments() = batch("POST", "/v1/describecomputeenvironments")
DescribeComputeEnvironments(args) = batch("POST", "/v1/describecomputeenvironments", args)

"""
    DeleteComputeEnvironment

Deletes an AWS Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.

Required Parameters:
{
  "computeEnvironment": "The name or Amazon Resource Name (ARN) of the compute environment to delete."
}


Optional Parameters:
{}

"""

DeleteComputeEnvironment(args) = batch("POST", "/v1/deletecomputeenvironment", args)
"""
    DeregisterJobDefinition

Deregisters an AWS Batch job definition. Job definitions will be permanently deleted after 180 days.

Required Parameters:
{
  "jobDefinition": "The name and revision (name:revision) or full Amazon Resource Name (ARN) of the job definition to deregister."
}


Optional Parameters:
{}

"""

DeregisterJobDefinition(args) = batch("POST", "/v1/deregisterjobdefinition", args)
"""
    DescribeJobs

Describes a list of AWS Batch jobs.

Required Parameters:
{
  "jobs": "A list of up to 100 job IDs."
}


Optional Parameters:
{}

"""

DescribeJobs(args) = batch("POST", "/v1/describejobs", args)
"""
    CreateComputeEnvironment

Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGED compute environments. In a managed compute environment, AWS Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the launch template that you specify when you create the compute environment. You can choose to use Amazon EC2 On-Demand Instances or Spot Instances in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is below a specified percentage of the On-Demand price.  Multi-node parallel jobs are not supported on Spot Instances.  In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see Container Instance AMIs in the Amazon Elastic Container Service Developer Guide. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it. Then, manually launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS Container Instance in the Amazon Elastic Container Service Developer Guide.  AWS Batch does not upgrade the AMIs in a compute environment after it is created (for example, when a newer version of the Amazon ECS-optimized AMI is available). You are responsible for the management of the guest operating system (including updates and security patches) and any additional application software or utilities that you install on the compute resources. To use a new AMI for your AWS Batch jobs:   Create a new compute environment with the new AMI.   Add the compute environment to an existing job queue.   Remove the old compute environment from your job queue.   Delete the old compute environment.   

Required Parameters:
{
  "computeEnvironmentName": "The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.",
  "serviceRole": "The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. If your specified role has a path other than /, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.  Depending on how you created your AWS Batch service role, its ARN may contain the service-role path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the service-role path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments. ",
  "type": "The type of the compute environment. For more information, see Compute Environments in the AWS Batch User Guide."
}


Optional Parameters:
{
  "state": "The state of the compute environment. If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.",
  "computeResources": "Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. For more information, see Compute Environments in the AWS Batch User Guide."
}

"""

CreateComputeEnvironment(args) = batch("POST", "/v1/createcomputeenvironment", args)
"""
    RegisterJobDefinition

Registers an AWS Batch job definition.

Required Parameters:
{
  "jobDefinitionName": "The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.",
  "type": "The type of job definition."
}


Optional Parameters:
{
  "timeout": "The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that is specified during a SubmitJob operation overrides the timeout configuration defined here. For more information, see Job Timeouts in the Amazon Elastic Container Service Developer Guide.",
  "parameters": "Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a SubmitJob request override any corresponding parameter defaults from the job definition.",
  "nodeProperties": "An object with various properties specific to multi-node parallel jobs. If you specify node properties for a job, it becomes a multi-node parallel job. For more information, see Multi-node Parallel Jobs in the AWS Batch User Guide. If the job definition's type parameter is container, then you must specify either containerProperties or nodeProperties.",
  "containerProperties": "An object with various properties specific to single-node container-based jobs. If the job definition's type parameter is container, then you must specify either containerProperties or nodeProperties.",
  "retryStrategy": "The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a SubmitJob operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it is not retried."
}

"""

RegisterJobDefinition(args) = batch("POST", "/v1/registerjobdefinition", args)
"""
    DeleteJobQueue

Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are terminated when you delete a job queue. It is not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request.

Required Parameters:
{
  "jobQueue": "The short name or full Amazon Resource Name (ARN) of the queue to delete."
}


Optional Parameters:
{}

"""

DeleteJobQueue(args) = batch("POST", "/v1/deletejobqueue", args)
"""
    CancelJob

Cancels a job in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are cancelled. Jobs that have progressed to STARTING or RUNNING are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the TerminateJob operation.

Required Parameters:
{
  "jobId": "The AWS Batch job ID of the job to cancel.",
  "reason": "A message to attach to the job that explains the reason for canceling it. This message is returned by future DescribeJobs operations on the job. This message is also recorded in the AWS Batch activity logs."
}


Optional Parameters:
{}

"""

CancelJob(args) = batch("POST", "/v1/canceljob", args)
"""
    CreateJobQueue

Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.

Required Parameters:
{
  "priority": "The priority of the job queue. Job queues with a higher priority (or a higher integer value for the priority parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of 10 is given scheduling preference over a job queue with a priority value of 1.",
  "computeEnvironmentOrder": "The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the VALID state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.",
  "jobQueueName": "The name of the job queue."
}


Optional Parameters:
{
  "state": "The state of the job queue. If the job queue state is ENABLED, it is able to accept jobs."
}

"""

CreateJobQueue(args) = batch("POST", "/v1/createjobqueue", args)
"""
    UpdateComputeEnvironment

Updates an AWS Batch compute environment.

Required Parameters:
{
  "computeEnvironment": "The name or full Amazon Resource Name (ARN) of the compute environment to update."
}


Optional Parameters:
{
  "state": "The state of the compute environment. Compute environments in the ENABLED state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.",
  "serviceRole": "The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. If your specified role has a path other than /, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.  Depending on how you created your AWS Batch service role, its ARN may contain the service-role path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the service-role path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments. ",
  "computeResources": "Details of the compute resources managed by the compute environment. Required for a managed compute environment."
}

"""

UpdateComputeEnvironment(args) = batch("POST", "/v1/updatecomputeenvironment", args)
"""
    ListJobs

Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.

Required Parameters:
{}


Optional Parameters:
{
  "multiNodeJobId": "The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all nodes that are associated with the specified job.",
  "arrayJobId": "The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.",
  "maxResults": "The maximum number of results returned by ListJobs in paginated output. When this parameter is used, ListJobs only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListJobs request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListJobs returns up to 100 results and a nextToken value if applicable.",
  "nextToken": "The nextToken value returned from a previous paginated ListJobs request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. ",
  "jobQueue": "The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.",
  "jobStatus": "The job status with which to filter jobs in the specified queue. If you do not specify a status, only RUNNING jobs are returned."
}

"""
ListJobs() = batch("POST", "/v1/listjobs")
ListJobs(args) = batch("POST", "/v1/listjobs", args)

"""
    UpdateJobQueue

Updates a job queue.

Required Parameters:
{
  "jobQueue": "The name or the Amazon Resource Name (ARN) of the job queue."
}


Optional Parameters:
{
  "priority": "The priority of the job queue. Job queues with a higher priority (or a higher integer value for the priority parameter) are evaluated first when associated with the same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of 10 is given scheduling preference over a job queue with a priority value of 1.",
  "computeEnvironmentOrder": "Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job.",
  "state": "Describes the queue's ability to accept new jobs."
}

"""

UpdateJobQueue(args) = batch("POST", "/v1/updatejobqueue", args)
"""
    DescribeJobQueues

Describes one or more of your job queues.

Required Parameters:
{}


Optional Parameters:
{
  "jobQueues": "A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.",
  "maxResults": "The maximum number of results returned by DescribeJobQueues in paginated output. When this parameter is used, DescribeJobQueues only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another DescribeJobQueues request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then DescribeJobQueues returns up to 100 results and a nextToken value if applicable.",
  "nextToken": "The nextToken value returned from a previous paginated DescribeJobQueues request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. "
}

"""
DescribeJobQueues() = batch("POST", "/v1/describejobqueues")
DescribeJobQueues(args) = batch("POST", "/v1/describejobqueues", args)

"""
    DescribeJobDefinitions

Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.

Required Parameters:
{}


Optional Parameters:
{
  "status": "The status with which to filter job definitions.",
  "jobDefinitions": "A list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.",
  "jobDefinitionName": "The name of the job definition to describe.",
  "maxResults": "The maximum number of results returned by DescribeJobDefinitions in paginated output. When this parameter is used, DescribeJobDefinitions only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another DescribeJobDefinitions request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then DescribeJobDefinitions returns up to 100 results and a nextToken value if applicable.",
  "nextToken": "The nextToken value returned from a previous paginated DescribeJobDefinitions request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. "
}

"""
DescribeJobDefinitions() = batch("POST", "/v1/describejobdefinitions")
DescribeJobDefinitions(args) = batch("POST", "/v1/describejobdefinitions", args)
