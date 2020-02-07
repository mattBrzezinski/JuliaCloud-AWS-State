include("../AWSCorePrototypeServices.jl")
using .Services: iot_jobs_data_plane

"""
Updates the status of a job execution.
"""
UpdateJobExecution(jobId, thingName, status) = iot_jobs_data_plane("POST", "/things/$thingName/jobs/$jobId")
UpdateJobExecution(jobId, thingName, status, args) = iot_jobs_data_plane("POST", "/things/$thingName/jobs/$jobId", args)
UpdateJobExecution(a...; b...) = UpdateJobExecution(a..., b)

"""
Gets details of a job execution.
"""
DescribeJobExecution(jobId, thingName) = iot_jobs_data_plane("GET", "/things/$thingName/jobs/$jobId")
DescribeJobExecution(jobId, thingName, args) = iot_jobs_data_plane("GET", "/things/$thingName/jobs/$jobId", args)
DescribeJobExecution(a...; b...) = DescribeJobExecution(a..., b)

"""
Gets the list of all jobs for a thing that are not in a terminal status.
"""
GetPendingJobExecutions(thingName) = iot_jobs_data_plane("GET", "/things/$thingName/jobs")
GetPendingJobExecutions(thingName, args) = iot_jobs_data_plane("GET", "/things/$thingName/jobs", args)
GetPendingJobExecutions(a...; b...) = GetPendingJobExecutions(a..., b)

"""
Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
"""
StartNextPendingJobExecution(thingName) = iot_jobs_data_plane("PUT", "/things/$thingName/jobs/$next")
StartNextPendingJobExecution(thingName, args) = iot_jobs_data_plane("PUT", "/things/$thingName/jobs/$next", args)
StartNextPendingJobExecution(a...; b...) = StartNextPendingJobExecution(a..., b)
