include("../AWSCorePrototypeServices.jl")
using .Services: codepipeline

"""
Confirms a job worker has received the specified job. Used for partner actions only.

Required Parameters:
jobId, nonce, clientToken
"""
AcknowledgeThirdPartyJob(args) = codepipeline("AcknowledgeThirdPartyJob", args)

"""
Gets the set of key-value pairs (metadata) that are used to manage the resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = codepipeline("ListTagsForResource", args)

"""
Configures a connection between the webhook that was created and the external tool with events to be detected.
"""
RegisterWebhookWithThirdParty() = codepipeline("RegisterWebhookWithThirdParty")

"""
Returns information about a specified job and whether that job has been received by the job worker. Used for custom actions only.

Required Parameters:
jobId, nonce
"""
AcknowledgeJob(args) = codepipeline("AcknowledgeJob", args)

"""
Enables artifacts in a pipeline to transition to a stage in a pipeline.

Required Parameters:
pipelineName, stageName, transitionType
"""
EnableStageTransition(args) = codepipeline("EnableStageTransition", args)

"""
Returns information about the state of a pipeline, including the stages and actions.  Values returned in the revisionId and revisionUrl fields indicate the source revision information, such as the commit ID, for the current state. 

Required Parameters:
name
"""
GetPipelineState(args) = codepipeline("GetPipelineState", args)

"""
Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.

Required Parameters:
category, provider, version, inputArtifactDetails, outputArtifactDetails
"""
CreateCustomActionType(args) = codepipeline("CreateCustomActionType", args)

"""
Gets a summary of all AWS CodePipeline action types associated with your account.
"""
ListActionTypes() = codepipeline("ListActionTypes")

"""
Gets a summary of the most recent executions for a pipeline.

Required Parameters:
pipelineName
"""
ListPipelineExecutions(args) = codepipeline("ListPipelineExecutions", args)

"""
Represents the failure of a third party job as returned to the pipeline by a job worker. Used for partner actions only.

Required Parameters:
jobId, clientToken, failureDetails
"""
PutThirdPartyJobFailureResult(args) = codepipeline("PutThirdPartyJobFailureResult", args)

"""
Creates a pipeline.  In the pipeline structure, you must include either artifactStore or artifactStores in your pipeline, but you cannot use both. If you create a cross-region action in your pipeline, you must use artifactStores. 

Required Parameters:
pipeline
"""
CreatePipeline(args) = codepipeline("CreatePipeline", args)

"""
Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with UpdatePipeline.

Required Parameters:
name
"""
GetPipeline(args) = codepipeline("GetPipeline", args)

"""
Resumes the pipeline execution by retrying the last failed actions in a stage. You can retry a stage immediately if any of the actions in the stage fail. When you retry, all actions that are still in progress continue working, and failed actions are triggered again.

Required Parameters:
pipelineName, stageName, pipelineExecutionId, retryMode
"""
RetryStageExecution(args) = codepipeline("RetryStageExecution", args)

"""
Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.

Required Parameters:
pipelineName, stageName, transitionType, reason
"""
DisableStageTransition(args) = codepipeline("DisableStageTransition", args)

"""
Represents the failure of a job as returned to the pipeline by a job worker. Used for custom actions only.

Required Parameters:
jobId, failureDetails
"""
PutJobFailureResult(args) = codepipeline("PutJobFailureResult", args)

"""
Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.

Required Parameters:
pipelineName, stageName, actionName, result, token
"""
PutApprovalResult(args) = codepipeline("PutApprovalResult", args)

"""
Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.

Required Parameters:
name
"""
StartPipelineExecution(args) = codepipeline("StartPipelineExecution", args)

"""
Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
"""
ListWebhooks() = codepipeline("ListWebhooks")

"""
Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure and UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.

Required Parameters:
pipeline
"""
UpdatePipeline(args) = codepipeline("UpdatePipeline", args)

"""
Marks a custom action as deleted. PollForJobs for the custom action fails after the action is marked for deletion. Used for custom actions only.  To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field. 

Required Parameters:
category, provider, version
"""
DeleteCustomActionType(args) = codepipeline("DeleteCustomActionType", args)

"""
Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource. 

Required Parameters:
resourceArn, tags
"""
TagResource(args) = codepipeline("TagResource", args)

"""
Removes tags from an AWS resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = codepipeline("UntagResource", args)

"""
Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API returns successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.

Required Parameters:
name
"""
DeleteWebhook(args) = codepipeline("DeleteWebhook", args)

"""
Represents the success of a job as returned to the pipeline by a job worker. Used for custom actions only.

Required Parameters:
jobId
"""
PutJobSuccessResult(args) = codepipeline("PutJobSuccessResult", args)

"""
Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently supported only for webhooks that target an action type of GitHub.
"""
DeregisterWebhookWithThirdParty() = codepipeline("DeregisterWebhookWithThirdParty")

"""
Stops the specified pipeline execution. You choose to either stop the pipeline execution by completing in-progress actions without starting subsequent actions, or by abandoning in-progress actions. While completing or abandoning in-progress actions, the pipeline execution is in a Stopping state. After all in-progress actions are completed or abandoned, the pipeline execution is in a Stopped state.

Required Parameters:
pipelineName, pipelineExecutionId
"""
StopPipelineExecution(args) = codepipeline("StopPipelineExecution", args)

"""
Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.

Required Parameters:
webhook
"""
PutWebhook(args) = codepipeline("PutWebhook", args)

"""
Determines whether there are any third party jobs for a job worker to act on. Used for partner actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. 

Required Parameters:
actionTypeId
"""
PollForThirdPartyJobs(args) = codepipeline("PollForThirdPartyJobs", args)

"""
Returns information about any jobs for AWS CodePipeline to act on. PollForJobs is valid only for action types with "Custom" in the owner field. If the action type contains "AWS" or "ThirdParty" in the owner field, the PollForJobs action returns an error.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 

Required Parameters:
actionTypeId
"""
PollForJobs(args) = codepipeline("PollForJobs", args)

"""
Requests the details of a job for a third party action. Used for partner actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 

Required Parameters:
jobId, clientToken
"""
GetThirdPartyJobDetails(args) = codepipeline("GetThirdPartyJobDetails", args)

"""
Provides information to AWS CodePipeline about new revisions to a source.

Required Parameters:
pipelineName, stageName, actionName, actionRevision
"""
PutActionRevision(args) = codepipeline("PutActionRevision", args)

"""
Returns information about a job. Used for custom actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 

Required Parameters:
jobId
"""
GetJobDetails(args) = codepipeline("GetJobDetails", args)

"""
Lists the action executions that have occurred in a pipeline.

Required Parameters:
pipelineName
"""
ListActionExecutions(args) = codepipeline("ListActionExecutions", args)

"""
Deletes the specified pipeline.

Required Parameters:
name
"""
DeletePipeline(args) = codepipeline("DeletePipeline", args)

"""
Gets a summary of all of the pipelines associated with your account.
"""
ListPipelines() = codepipeline("ListPipelines")

"""
Represents the success of a third party job as returned to the pipeline by a job worker. Used for partner actions only.

Required Parameters:
jobId, clientToken
"""
PutThirdPartyJobSuccessResult(args) = codepipeline("PutThirdPartyJobSuccessResult", args)

"""
Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.

Required Parameters:
pipelineName, pipelineExecutionId
"""
GetPipelineExecution(args) = codepipeline("GetPipelineExecution", args)
