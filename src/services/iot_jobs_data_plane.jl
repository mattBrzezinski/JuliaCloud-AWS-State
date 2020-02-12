include("../AWSCorePrototypeServices.jl")
using .Services: iot_jobs_data_plane

"""
    UpdateJobExecution

Updates the status of a job execution.

Required Parameters:
{
  "jobId": "The unique identifier assigned to this job when it was created.",
  "status": "The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.",
  "thingName": "The name of the thing associated with the device."
}


Optional Parameters:
{
  "stepTimeoutInMinutes": "Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by again calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in this field) the job execution status will be automatically set to TIMED_OUT. Note that setting or resetting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).",
  "expectedVersion": "Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)",
  "statusDetails": " Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.",
  "executionNumber": "Optional. A number that identifies a particular job execution on a particular device.",
  "includeJobDocument": "Optional. When set to true, the response contains the job document. The default is false.",
  "includeJobExecutionState": "Optional. When included and set to true, the response contains the JobExecutionState data. The default is false."
}

"""

UpdateJobExecution(args) = iot_jobs_data_plane("POST", "/things/{thingName}/jobs/{jobId}", args)
"""
    DescribeJobExecution

Gets details of a job execution.

Required Parameters:
{
  "jobId": "The unique identifier assigned to this job when it was created.",
  "thingName": "The thing name associated with the device the job execution is running on."
}


Optional Parameters:
{
  "executionNumber": "Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.",
  "includeJobDocument": "Optional. When set to true, the response contains the job document. The default is false."
}

"""

DescribeJobExecution(args) = iot_jobs_data_plane("GET", "/things/{thingName}/jobs/{jobId}", args)
"""
    GetPendingJobExecutions

Gets the list of all jobs for a thing that are not in a terminal status.

Required Parameters:
{
  "thingName": "The name of the thing that is executing the job."
}


Optional Parameters:
{}

"""

GetPendingJobExecutions(args) = iot_jobs_data_plane("GET", "/things/{thingName}/jobs", args)
"""
    StartNextPendingJobExecution

Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.

Required Parameters:
{
  "thingName": "The name of the thing associated with the device."
}


Optional Parameters:
{
  "stepTimeoutInMinutes": "Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in field stepTimeoutInMinutes) the job execution status will be automatically set to TIMED_OUT. Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).",
  "statusDetails": "A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged."
}

"""

StartNextPendingJobExecution(args) = iot_jobs_data_plane("PUT", "/things/{thingName}/jobs/$next", args)