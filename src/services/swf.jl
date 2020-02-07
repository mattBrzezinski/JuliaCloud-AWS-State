include("../AWSCorePrototypeServices.jl")
using .Services: swf

"""
List tags for a given domain.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = swf("ListTagsForResource", args)

"""
Used by workers to tell the service that the ActivityTask identified by the taskToken completed successfully with a result (if provided). The result appears in the ActivityTaskCompleted event in the workflow history.  If the requested task doesn't complete successfully, use RespondActivityTaskFailed instead. If the worker finds that the task is canceled through the canceled flag returned by RecordActivityTaskHeartbeat, it should cancel the task, clean up and then call RespondActivityTaskCanceled.  A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, RespondActivityTaskCanceled, RespondActivityTaskFailed, or the task has timed out.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
taskToken
"""
RespondActivityTaskCompleted(args) = swf("RespondActivityTaskCompleted", args)

"""
Records a WorkflowExecutionSignaled event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).  If a runId isn't specified, then the WorkflowExecutionSignaled event is recorded in the history of the current open workflow with the matching workflowId in the domain.   If the specified workflow execution isn't open, this method fails with UnknownResource.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowId, signalName
"""
SignalWorkflowExecution(args) = swf("SignalWorkflowExecution", args)

"""
Undeprecates a previously deprecated workflow type. After a workflow type has been undeprecated, you can create new executions of that type.   This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    workflowType.name: String constraint. The key is swf:workflowType.name.    workflowType.version: String constraint. The key is swf:workflowType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowType
"""
UndeprecateWorkflowType(args) = swf("UndeprecateWorkflowType", args)

"""
Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain
"""
ListClosedWorkflowExecutions(args) = swf("ListClosedWorkflowExecutions", args)

"""
Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, startTimeFilter
"""
ListOpenWorkflowExecutions(args) = swf("ListOpenWorkflowExecutions", args)

"""
Used by deciders to tell the service that the DecisionTask identified by the taskToken has successfully completed. The decisions argument specifies the list of decisions made while processing the task. A DecisionTaskCompleted event is added to the workflow history. The executionContext specified is attached to the event in the workflow execution history.  Access Control  If an IAM policy grants permission to use RespondDecisionTaskCompleted, it can express permissions for the list of decisions in the decisions parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
taskToken
"""
RespondDecisionTaskCompleted(args) = swf("RespondDecisionTaskCompleted", args)

"""
Registers a new domain.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
name, workflowExecutionRetentionPeriodInDays
"""
RegisterDomain(args) = swf("RegisterDomain", args)

"""
Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, startTimeFilter
"""
CountOpenWorkflowExecutions(args) = swf("CountOpenWorkflowExecutions", args)

"""
Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, registrationStatus
"""
ListWorkflowTypes(args) = swf("ListWorkflowTypes", args)

"""
Returns information about the specified domain, including description and status.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
name
"""
DescribeDomain(args) = swf("DescribeDomain", args)

"""
Used by workers to get an ActivityTask from the specified activity taskList. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.  Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the taskList.name parameter by using a Condition element with the swf:taskList.name key to allow the action to access only certain task lists.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, taskList
"""
PollForActivityTask(args) = swf("PollForActivityTask", args)

"""
Used by deciders to get a DecisionTask from the specified decision taskList. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task. This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.  Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).   Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to PollForDecisionTask using the nextPageToken returned by the initial call. Note that you do not call GetWorkflowExecutionHistory with this nextPageToken. Instead, call PollForDecisionTask again.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the taskList.name parameter by using a Condition element with the swf:taskList.name key to allow the action to access only certain task lists.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, taskList
"""
PollForDecisionTask(args) = swf("PollForDecisionTask", args)

"""
Used by workers to tell the service that the ActivityTask identified by the taskToken has failed with reason (if specified). The reason and details appear in the ActivityTaskFailed event added to the workflow history. A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, RespondActivityTaskCanceled, RespondActivityTaskFailed, or the task has timed out.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
taskToken
"""
RespondActivityTaskFailed(args) = swf("RespondActivityTaskFailed", args)

"""
Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated continues to run.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
name
"""
DeprecateDomain(args) = swf("DeprecateDomain", args)

"""
Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    activityType.name: String constraint. The key is swf:activityType.name.    activityType.version: String constraint. The key is swf:activityType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, activityType
"""
DescribeActivityType(args) = swf("DescribeActivityType", args)

"""
Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains. The element must be set to arn:aws:swf::AccountID:domain/*, where AccountID is the account ID, with no dashes.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
registrationStatus
"""
ListDomains(args) = swf("ListDomains", args)

"""
Registers a new workflow type and its configuration settings in the specified domain. The retention period for the workflow history is set by the RegisterDomain action.  If the type already exists, then a TypeAlreadyExists fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    defaultTaskList.name: String constraint. The key is swf:defaultTaskList.name.    name: String constraint. The key is swf:name.    version: String constraint. The key is swf:version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, name, version
"""
RegisterWorkflowType(args) = swf("RegisterWorkflowType", args)

"""
Used by workers to tell the service that the ActivityTask identified by the taskToken was successfully canceled. Additional details can be provided using the details argument. These details (if provided) appear in the ActivityTaskCanceled event added to the workflow history.  Only use this operation if the canceled flag of a RecordActivityTaskHeartbeat request returns true and if the activity can be safely undone or abandoned.  A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, RespondActivityTaskCanceled, RespondActivityTaskFailed, or the task has timed out.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
taskToken
"""
RespondActivityTaskCanceled(args) = swf("RespondActivityTaskCanceled", args)

"""
Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, execution
"""
GetWorkflowExecutionHistory(args) = swf("GetWorkflowExecutionHistory", args)

"""
Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain
"""
CountClosedWorkflowExecutions(args) = swf("CountClosedWorkflowExecutions", args)

"""
Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then 0 is returned.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the taskList.name parameter by using a Condition element with the swf:taskList.name key to allow the action to access only certain task lists.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, taskList
"""
CountPendingDecisionTasks(args) = swf("CountPendingDecisionTasks", args)

"""
Used by activity workers to report to the service that the ActivityTask represented by the specified taskToken is still making progress. The worker can also specify details of the progress, for example percent complete, using the details parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean cancelRequested flag returned by the service is set to true. This action resets the taskHeartbeatTimeout clock. The taskHeartbeatTimeout is specified in RegisterActivityType. This action doesn't in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history contains a ActivityTaskTimedOut event that contains the information from the last heartbeat generated by the activity worker.  The taskStartToCloseTimeout of an activity type is the maximum duration of an activity task, regardless of the number of RecordActivityTaskHeartbeat requests received. The taskStartToCloseTimeout is also specified in RegisterActivityType.   This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted.   If the cancelRequested flag returns true, a cancellation is being attempted. If the worker can cancel the activity, it should respond with RespondActivityTaskCanceled. Otherwise, it should ignore the cancellation request.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
taskToken
"""
RecordActivityTaskHeartbeat(args) = swf("RecordActivityTaskHeartbeat", args)

"""
Registers a new activity type along with its configuration settings in the specified domain.  A TypeAlreadyExists fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    defaultTaskList.name: String constraint. The key is swf:defaultTaskList.name.    name: String constraint. The key is swf:name.    version: String constraint. The key is swf:version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, name, version
"""
RegisterActivityType(args) = swf("RegisterActivityType", args)

"""
Add a tag to a Amazon SWF domain.  Amazon SWF supports a maximum of 50 tags per resource. 

Required Parameters:
resourceArn, tags
"""
TagResource(args) = swf("TagResource", args)

"""
Returns information about the specified workflow execution including its type and some statistics.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, execution
"""
DescribeWorkflowExecution(args) = swf("DescribeWorkflowExecution", args)

"""
Remove a tag from a Amazon SWF domain.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = swf("UntagResource", args)

"""
Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then 0 is returned.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the taskList.name parameter by using a Condition element with the swf:taskList.name key to allow the action to access only certain task lists.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, taskList
"""
CountPendingActivityTasks(args) = swf("CountPendingActivityTasks", args)

"""
Records a WorkflowExecutionTerminated event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.  If the identified workflow execution was in progress, it is terminated immediately.   If a runId isn't specified, then the WorkflowExecutionTerminated event is recorded in the history of the current open workflow with the matching workflowId in the domain.   You should consider using RequestCancelWorkflowExecution action instead because it allows the workflow to gracefully close while TerminateWorkflowExecution doesn't.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowId
"""
TerminateWorkflowExecution(args) = swf("TerminateWorkflowExecution", args)

"""
Records a WorkflowExecutionCancelRequested event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.  If the runId isn't specified, the WorkflowExecutionCancelRequested event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.   Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of TerminateWorkflowExecution when possible.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowId
"""
RequestCancelWorkflowExecution(args) = swf("RequestCancelWorkflowExecution", args)

"""
Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, registrationStatus
"""
ListActivityTypes(args) = swf("ListActivityTypes", args)

"""
Starts an execution of the workflow type in the specified domain using the provided workflowId and input data. This action returns the newly started workflow execution.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagList.member.0: The key is swf:tagList.member.0.    tagList.member.1: The key is swf:tagList.member.1.    tagList.member.2: The key is swf:tagList.member.2.    tagList.member.3: The key is swf:tagList.member.3.    tagList.member.4: The key is swf:tagList.member.4.    taskList: String constraint. The key is swf:taskList.name.    workflowType.name: String constraint. The key is swf:workflowType.name.    workflowType.version: String constraint. The key is swf:workflowType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowId, workflowType
"""
StartWorkflowExecution(args) = swf("StartWorkflowExecution", args)

"""
Undeprecates a previously deprecated activity type. After an activity type has been undeprecated, you can create new tasks of that activity type.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    activityType.name: String constraint. The key is swf:activityType.name.    activityType.version: String constraint. The key is swf:activityType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, activityType
"""
UndeprecateActivityType(args) = swf("UndeprecateActivityType", args)

"""
Deprecates the specified activity type. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated continue to run.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    activityType.name: String constraint. The key is swf:activityType.name.    activityType.version: String constraint. The key is swf:activityType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, activityType
"""
DeprecateActivityType(args) = swf("DeprecateActivityType", args)

"""
Undeprecates a previously deprecated domain. After a domain has been undeprecated it can be used to create new workflow executions or register new types.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
name
"""
UndeprecateDomain(args) = swf("UndeprecateDomain", args)

"""
Returns information about the specified workflow type. This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    workflowType.name: String constraint. The key is swf:workflowType.name.    workflowType.version: String constraint. The key is swf:workflowType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowType
"""
DescribeWorkflowType(args) = swf("DescribeWorkflowType", args)

"""
Deprecates the specified workflow type. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated continues to run. A deprecated workflow type may still be used when calling visibility actions.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    workflowType.name: String constraint. The key is swf:workflowType.name.    workflowType.version: String constraint. The key is swf:workflowType.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.

Required Parameters:
domain, workflowType
"""
DeprecateWorkflowType(args) = swf("DeprecateWorkflowType", args)
