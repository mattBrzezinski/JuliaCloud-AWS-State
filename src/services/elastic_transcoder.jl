include("../AWSCorePrototypeServices.jl")
using .Services: elastic_transcoder

"""
The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.

Required Parameters:
PipelineId
"""
ListJobsByPipeline(args) = elastic_transcoder("GET", "/2012-09-25/jobsByPipeline/{PipelineId}", args)

"""
With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline. When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.

Required Parameters:
Id, Notifications
"""
UpdatePipelineNotifications(args) = elastic_transcoder("POST", "/2012-09-25/pipelines/{Id}/notifications", args)

"""
The CreatePipeline operation creates a pipeline with settings that you specify.

Required Parameters:
Name, InputBucket, Role
"""
CreatePipeline(args) = elastic_transcoder("POST", "/2012-09-25/pipelines", args)

"""
The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
"""
ListPresets() = elastic_transcoder("GET", "/2012-09-25/presets")

"""
The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline stops or restarts the processing of jobs. Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a CancelJob request. 

Required Parameters:
Id, Status
"""
UpdatePipelineStatus(args) = elastic_transcoder("POST", "/2012-09-25/pipelines/{Id}/status", args)

"""
The ReadPipeline operation gets detailed information about a pipeline.

Required Parameters:
Id
"""
ReadPipeline(args) = elastic_transcoder("GET", "/2012-09-25/pipelines/{Id}", args)

"""
The CancelJob operation cancels an unfinished job.  You can only cancel a job that has a status of Submitted. To prevent a pipeline from starting to process a job while you're getting the job identifier, use UpdatePipelineStatus to temporarily pause the pipeline. 

Required Parameters:
Id
"""
CancelJob(args) = elastic_transcoder("DELETE", "/2012-09-25/jobs/{Id}", args)

"""
 Use the UpdatePipeline operation to update settings for a pipeline.  When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings.  

Required Parameters:
Id
"""
UpdatePipeline(args) = elastic_transcoder("PUT", "/2012-09-25/pipelines/{Id}", args)

"""
When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created. If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).

Required Parameters:
PipelineId
"""
CreateJob(args) = elastic_transcoder("POST", "/2012-09-25/jobs", args)

"""
The TestRole operation tests the IAM role used to create the pipeline. The TestRole action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.

Required Parameters:
Role, InputBucket, OutputBucket, Topics
"""
TestRole(args) = elastic_transcoder("POST", "/2012-09-25/roleTests", args)

"""
The ReadJob operation returns detailed information about a job.

Required Parameters:
Id
"""
ReadJob(args) = elastic_transcoder("GET", "/2012-09-25/jobs/{Id}", args)

"""
The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.

Required Parameters:
Status
"""
ListJobsByStatus(args) = elastic_transcoder("GET", "/2012-09-25/jobsByStatus/{Status}", args)

"""
The ReadPreset operation gets detailed information about a preset.

Required Parameters:
Id
"""
ReadPreset(args) = elastic_transcoder("GET", "/2012-09-25/presets/{Id}", args)

"""
The DeletePreset operation removes a preset that you've added in an AWS region.  You can't delete the default presets that are included with Elastic Transcoder. 

Required Parameters:
Id
"""
DeletePreset(args) = elastic_transcoder("DELETE", "/2012-09-25/presets/{Id}", args)

"""
The CreatePreset operation creates a preset with settings that you specify.  Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (ValidationException) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces.  Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services.

Required Parameters:
Name, Container
"""
CreatePreset(args) = elastic_transcoder("POST", "/2012-09-25/presets", args)

"""
The DeletePipeline operation removes a pipeline.  You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, DeletePipeline returns an error. 

Required Parameters:
Id
"""
DeletePipeline(args) = elastic_transcoder("DELETE", "/2012-09-25/pipelines/{Id}", args)

"""
The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
"""
ListPipelines() = elastic_transcoder("GET", "/2012-09-25/pipelines")
