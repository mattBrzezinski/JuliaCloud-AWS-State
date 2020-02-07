include("../AWSCorePrototypeServices.jl")
using .Services: datasync

"""
Returns a lists of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
"""
ListLocations() = datasync("ListLocations")

"""
Returns all the tags associated with a specified resources. 

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = datasync("ListTagsForResource", args)

"""
Creates an endpoint for an Amazon EFS file system.

Required Parameters:
EfsFilesystemArn, Ec2Config
"""
CreateLocationEfs(args) = datasync("CreateLocationEfs", args)

"""
Returns metadata about a task.

Required Parameters:
TaskArn
"""
DescribeTask(args) = datasync("DescribeTask", args)

"""
Updates the metadata associated with a task.

Required Parameters:
TaskArn
"""
UpdateTask(args) = datasync("UpdateTask", args)

"""
Updates the name of an agent.

Required Parameters:
AgentArn
"""
UpdateAgent(args) = datasync("UpdateAgent", args)

"""
Returns a list of all the tasks.
"""
ListTasks() = datasync("ListTasks")

"""
Deletes the configuration of a location used by AWS DataSync. 

Required Parameters:
LocationArn
"""
DeleteLocation(args) = datasync("DeleteLocation", args)

"""
Activates an AWS DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the AWS Region that you want to activate the agent in. You activate the agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this AWS Region. You can activate the agent in a VPC (Virtual private Cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public Internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run.  Agents are automatically updated by AWS on a regular basis, using a mechanism that ensures minimal interruption to your tasks. 

Required Parameters:
ActivationKey
"""
CreateAgent(args) = datasync("CreateAgent", args)

"""
Defines a file system on an Server Message Block (SMB) server that can be read from or written to.

Required Parameters:
Subdirectory, ServerHostname, User, Password, AgentArns
"""
CreateLocationSmb(args) = datasync("CreateLocationSmb", args)

"""
Returns metadata, such as the path information about an Amazon FSx for Windows location.

Required Parameters:
LocationArn
"""
DescribeLocationFsxWindows(args) = datasync("DescribeLocationFsxWindows", args)

"""
Returns metadata, such as the path information about an Amazon EFS location.

Required Parameters:
LocationArn
"""
DescribeLocationEfs(args) = datasync("DescribeLocationEfs", args)

"""
Returns metadata, such as the path information, about a NFS location.

Required Parameters:
LocationArn
"""
DescribeLocationNfs(args) = datasync("DescribeLocationNfs", args)

"""
Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
"""
ListAgents() = datasync("ListAgents")

"""
Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request. 

Required Parameters:
AgentArn
"""
DescribeAgent(args) = datasync("DescribeAgent", args)

"""
Applies a key-value pair to an AWS resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = datasync("TagResource", args)

"""
Removes a tag from an AWS resource.

Required Parameters:
ResourceArn, Keys
"""
UntagResource(args) = datasync("UntagResource", args)

"""
Returns detailed metadata about a task that is being executed.

Required Parameters:
TaskExecutionArn
"""
DescribeTaskExecution(args) = datasync("DescribeTaskExecution", args)

"""
Defines a file system on a Network File System (NFS) server that can be read from or written to

Required Parameters:
Subdirectory, ServerHostname, OnPremConfig
"""
CreateLocationNfs(args) = datasync("CreateLocationNfs", args)

"""
Creates a task. A task is a set of two locations (source and destination) and a set of Options that you use to control the behavior of a task. If you don't specify Options when you create a task, AWS DataSync populates them with service defaults. When you create a task, it first enters the CREATING state. During CREATING AWS DataSync attempts to mount the on-premises Network File System (NFS) location. The task transitions to the AVAILABLE state without waiting for the AWS location to become mounted. If required, AWS DataSync mounts the AWS location before each task execution. If an agent that is associated with a source (NFS) location goes offline, the task transitions to the UNAVAILABLE status. If the status of the task remains in the CREATING status for more than a few minutes, it means that your agent might be having trouble mounting the source NFS file system. Check the task's ErrorCode and ErrorDetail. Mount issues are often caused by either a misconfigured firewall or a mistyped NFS server host name.

Required Parameters:
SourceLocationArn, DestinationLocationArn
"""
CreateTask(args) = datasync("CreateTask", args)

"""
Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your AWS account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.

Required Parameters:
AgentArn
"""
DeleteAgent(args) = datasync("DeleteAgent", args)

"""
Returns metadata, such as bucket name, about an Amazon S3 bucket location.

Required Parameters:
LocationArn
"""
DescribeLocationS3(args) = datasync("DescribeLocationS3", args)

"""
Creates an endpoint for an Amazon S3 bucket. For AWS DataSync to access a destination S3 bucket, it needs an AWS Identity and Access Management (IAM) role that has the required permissions. You can set up the required permissions by creating an IAM policy that grants the required permissions and attaching the policy to the role. An example of such a policy is shown in the examples section. For more information, see https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location in the AWS DataSync User Guide. 

Required Parameters:
S3BucketArn, S3Config
"""
CreateLocationS3(args) = datasync("CreateLocationS3", args)

"""
Returns a list of executed tasks.
"""
ListTaskExecutions() = datasync("ListTaskExecutions")

"""
Cancels execution of a task.  When you cancel a task execution, the transfer of some files are abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, AWS DataSync successfully complete the transfer when you start the next task execution.

Required Parameters:
TaskExecutionArn
"""
CancelTaskExecution(args) = datasync("CancelTaskExecution", args)

"""
Deletes a task.

Required Parameters:
TaskArn
"""
DeleteTask(args) = datasync("DeleteTask", args)

"""
Returns metadata, such as the path and user information about a SMB location.

Required Parameters:
LocationArn
"""
DescribeLocationSmb(args) = datasync("DescribeLocationSmb", args)

"""
Creates an endpoint for an Amazon FSx for Windows file system.

Required Parameters:
FsxFilesystemArn, SecurityGroupArns, User, Password
"""
CreateLocationFsxWindows(args) = datasync("CreateLocationFsxWindows", args)

"""
Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time.  TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.  For detailed information, see the Task Execution section in the Components and Terminology topic in the AWS DataSync User Guide.

Required Parameters:
TaskArn
"""
StartTaskExecution(args) = datasync("StartTaskExecution", args)
