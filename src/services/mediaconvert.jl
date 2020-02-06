include("../AWSCorePrototypeServices.jl")
using .Services: mediaconvert

"""
Retrieve the tags for a MediaConvert resource.

Required Parameters:
Arn
"""
ListTagsForResource(args) = mediaconvert("GET", "/2017-08-29/tags/{arn}", args)

"""
Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
Settings, Name
"""
CreateJobTemplate(args) = mediaconvert("POST", "/2017-08-29/jobTemplates", args)

"""
Retrieve the JSON for a specific queue.

Required Parameters:
Name
"""
GetQueue(args) = mediaconvert("GET", "/2017-08-29/queues/{name}", args)

"""
Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html

Required Parameters:
Name
"""
CreateQueue(args) = mediaconvert("POST", "/2017-08-29/queues", args)

"""
Permanently delete a queue you have created.

Required Parameters:
Name
"""
DeleteQueue(args) = mediaconvert("DELETE", "/2017-08-29/queues/{name}", args)

"""
Modify one of your existing queues.

Required Parameters:
Name
"""
UpdateQueue(args) = mediaconvert("PUT", "/2017-08-29/queues/{name}", args)

"""
Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
"""
ListPresets() = mediaconvert("GET", "/2017-08-29/presets")

"""
Permanently cancel a job. Once you have canceled a job, you can't start it again.

Required Parameters:
Id
"""
CancelJob(args) = mediaconvert("DELETE", "/2017-08-29/jobs/{id}", args)

"""
Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
Role, Settings
"""
CreateJob(args) = mediaconvert("POST", "/2017-08-29/jobs", args)

"""
Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html

Required Parameters:
Arn, Tags
"""
TagResource(args) = mediaconvert("POST", "/2017-08-29/tags", args)

"""
Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html

Required Parameters:
Arn
"""
UntagResource(args) = mediaconvert("PUT", "/2017-08-29/tags/{arn}", args)

"""
Retrieve the JSON for a specific completed transcoding job.

Required Parameters:
Id
"""
GetJob(args) = mediaconvert("GET", "/2017-08-29/jobs/{id}", args)

"""
Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.

Required Parameters:
Arn
"""
AssociateCertificate(args) = mediaconvert("POST", "/2017-08-29/certificates", args)

"""
Modify one of your existing job templates.

Required Parameters:
Name
"""
UpdateJobTemplate(args) = mediaconvert("PUT", "/2017-08-29/jobTemplates/{name}", args)

"""
Permanently delete a job template you have created.

Required Parameters:
Name
"""
DeleteJobTemplate(args) = mediaconvert("DELETE", "/2017-08-29/jobTemplates/{name}", args)

"""
Permanently delete a preset you have created.

Required Parameters:
Name
"""
DeletePreset(args) = mediaconvert("DELETE", "/2017-08-29/presets/{name}", args)

"""
Send an request with an empty body to the regional API endpoint to get your account API endpoint.
"""
DescribeEndpoints() = mediaconvert("POST", "/2017-08-29/endpoints")

"""
Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
"""
ListJobTemplates() = mediaconvert("GET", "/2017-08-29/jobTemplates")

"""
Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
Settings, Name
"""
CreatePreset(args) = mediaconvert("POST", "/2017-08-29/presets", args)

"""
Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
"""
ListJobs() = mediaconvert("GET", "/2017-08-29/jobs")

"""
Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.

Required Parameters:
Arn
"""
DisassociateCertificate(args) = mediaconvert("DELETE", "/2017-08-29/certificates/{arn}", args)

"""
Modify one of your existing presets.

Required Parameters:
Name
"""
UpdatePreset(args) = mediaconvert("PUT", "/2017-08-29/presets/{name}", args)

"""
Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
"""
ListQueues() = mediaconvert("GET", "/2017-08-29/queues")

"""
Retrieve the JSON for a specific job template.

Required Parameters:
Name
"""
GetJobTemplate(args) = mediaconvert("GET", "/2017-08-29/jobTemplates/{name}", args)

"""
Retrieve the JSON for a specific preset.

Required Parameters:
Name
"""
GetPreset(args) = mediaconvert("GET", "/2017-08-29/presets/{name}", args)
