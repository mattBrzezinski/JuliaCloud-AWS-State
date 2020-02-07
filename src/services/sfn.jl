include("../AWSCorePrototypeServices.jl")
using .Services: sfn

"""
List tags for a given resource. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = sfn("ListTagsForResource", args)

"""
Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a taskToken with a null string.  Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). Polling with GetActivityTask can cause latency in some implementations. See Avoid Latency When Polling for Activity Tasks in the Step Functions Developer Guide. 

Required Parameters:
activityArn
"""
GetActivityTask(args) = sfn("GetActivityTask", args)

"""
Stops an execution.

Required Parameters:
executionArn
"""
StopExecution(args) = sfn("StopExecution", args)

"""
Deletes an activity.

Required Parameters:
activityArn
"""
DeleteActivity(args) = sfn("DeleteActivity", args)

"""
Used by activity workers and task states using the callback pattern to report to Step Functions that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an ActivityTimedOut entry for activities, or a TaskTimedOut entry for for tasks using the job run or callback pattern.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval for heartbeats. 

Required Parameters:
taskToken
"""
SendTaskHeartbeat(args) = sfn("SendTaskHeartbeat", args)

"""
Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.

Required Parameters:
executionArn
"""
GetExecutionHistory(args) = sfn("GetExecutionHistory", args)

"""
Lists the existing state machines. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
"""
ListStateMachines() = sfn("ListStateMachines")

"""
Describes a state machine.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

Required Parameters:
stateMachineArn
"""
DescribeStateMachine(args) = sfn("DescribeStateMachine", args)

"""
Starts a state machine execution.   StartExecution is idempotent. If StartExecution is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90 days.  

Required Parameters:
stateMachineArn
"""
StartExecution(args) = sfn("StartExecution", args)

"""
Lists the existing activities. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
"""
ListActivities() = sfn("ListActivities")

"""
Add a tag to a Step Functions resource. An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = sfn("TagResource", args)

"""
Remove a tag from a Step Functions resource

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = sfn("UntagResource", args)

"""
Describes an execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

Required Parameters:
executionArn
"""
DescribeExecution(args) = sfn("DescribeExecution", args)

"""
Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

Required Parameters:
stateMachineArn
"""
ListExecutions(args) = sfn("ListExecutions", args)

"""
Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the GetActivityTask API action and respond using SendTask* API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateActivity is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateActivity's idempotency check is based on the activity name. If a following request has different tags values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different. 

Required Parameters:
name
"""
CreateActivity(args) = sfn("CreateActivity", args)

"""
Describes the state machine associated with a specific execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

Required Parameters:
executionArn
"""
DescribeStateMachineForExecution(args) = sfn("DescribeStateMachineForExecution", args)

"""
Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken completed successfully.

Required Parameters:
taskToken, output
"""
SendTaskSuccess(args) = sfn("SendTaskSuccess", args)

"""
Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken failed.

Required Parameters:
taskToken
"""
SendTaskFailure(args) = sfn("SendTaskFailure", args)

"""
Updates an existing state machine by modifying its definition and/or roleArn. Running executions will continue to use the previous definition and roleArn. You must include at least one of definition or roleArn or you will receive a MissingRequiredParameter error.  All StartExecution calls within a few seconds will use the updated definition and roleArn. Executions started immediately after calling UpdateStateMachine may use the previous state machine definition and roleArn.  

Required Parameters:
stateMachineArn
"""
UpdateStateMachine(args) = sfn("UpdateStateMachine", args)

"""
Creates a state machine. A state machine consists of a collection of states that can do work (Task states), determine to which states to transition next (Choice states), stop an execution with an error (Fail states), and so on. State machines are specified using a JSON-based, structured language.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateStateMachine is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateStateMachine's idempotency check is based on the state machine name and definition. If a following request has a different roleArn or tags, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, roleArn and tags will not be updated, even if they are different. 

Required Parameters:
name, definition, roleArn
"""
CreateStateMachine(args) = sfn("CreateStateMachine", args)

"""
Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to DELETING and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.  The state machine itself is deleted after all executions are completed or deleted. 

Required Parameters:
stateMachineArn
"""
DeleteStateMachine(args) = sfn("DeleteStateMachine", args)

"""
Describes an activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

Required Parameters:
activityArn
"""
DescribeActivity(args) = sfn("DescribeActivity", args)
