include("../AWSCorePrototypeServices.jl")
using .Services: iot_jobs_data_plane

"""
Updates the status of a job execution.

Required Parameters:
jobId, thingName, status
"""
UpdateJobExecution(args) = iot_jobs_data_plane("POST", "/things/{thingName}/jobs/{jobId}", args)

"""
Gets details of a job execution.

Required Parameters:
jobId, thingName
"""
DescribeJobExecution(args) = iot_jobs_data_plane("GET", "/things/{thingName}/jobs/{jobId}", args)

"""
Gets the list of all jobs for a thing that are not in a terminal status.

Required Parameters:
thingName
"""
GetPendingJobExecutions(args) = iot_jobs_data_plane("GET", "/things/{thingName}/jobs", args)

"""
Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.

Required Parameters:
thingName
"""
StartNextPendingJobExecution(args) = iot_jobs_data_plane("PUT", "/things/{thingName}/jobs/$next", args)
