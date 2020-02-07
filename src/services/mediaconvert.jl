include("../AWSCorePrototypeServices.jl")
using .Services: mediaconvert

"""
Retrieve the tags for a MediaConvert resource.
"""
ListTagsForResource(Arn) = mediaconvert("GET", "/2017-08-29/tags/$arn")
ListTagsForResource(Arn, args) = mediaconvert("GET", "/2017-08-29/tags/$arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreateJobTemplate(Settings, Name) = mediaconvert("POST", "/2017-08-29/jobTemplates")
CreateJobTemplate(Settings, Name, args) = mediaconvert("POST", "/2017-08-29/jobTemplates", args)
CreateJobTemplate(a...; b...) = CreateJobTemplate(a..., b)

"""
Retrieve the JSON for a specific queue.
"""
GetQueue(Name) = mediaconvert("GET", "/2017-08-29/queues/$name")
GetQueue(Name, args) = mediaconvert("GET", "/2017-08-29/queues/$name", args)
GetQueue(a...; b...) = GetQueue(a..., b)

"""
Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
"""
CreateQueue(Name) = mediaconvert("POST", "/2017-08-29/queues")
CreateQueue(Name, args) = mediaconvert("POST", "/2017-08-29/queues", args)
CreateQueue(a...; b...) = CreateQueue(a..., b)

"""
Permanently delete a queue you have created.
"""
DeleteQueue(Name) = mediaconvert("DELETE", "/2017-08-29/queues/$name")
DeleteQueue(Name, args) = mediaconvert("DELETE", "/2017-08-29/queues/$name", args)
DeleteQueue(a...; b...) = DeleteQueue(a..., b)

"""
Modify one of your existing queues.
"""
UpdateQueue(Name) = mediaconvert("PUT", "/2017-08-29/queues/$name")
UpdateQueue(Name, args) = mediaconvert("PUT", "/2017-08-29/queues/$name", args)
UpdateQueue(a...; b...) = UpdateQueue(a..., b)

"""
Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
"""
ListPresets() = mediaconvert("GET", "/2017-08-29/presets")
ListPresets(, args) = mediaconvert("GET", "/2017-08-29/presets", args)
ListPresets(a...; b...) = ListPresets(a..., b)

"""
Permanently cancel a job. Once you have canceled a job, you can't start it again.
"""
CancelJob(Id) = mediaconvert("DELETE", "/2017-08-29/jobs/$id")
CancelJob(Id, args) = mediaconvert("DELETE", "/2017-08-29/jobs/$id", args)
CancelJob(a...; b...) = CancelJob(a..., b)

"""
Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreateJob(Role, Settings) = mediaconvert("POST", "/2017-08-29/jobs")
CreateJob(Role, Settings, args) = mediaconvert("POST", "/2017-08-29/jobs", args)
CreateJob(a...; b...) = CreateJob(a..., b)

"""
Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
"""
TagResource(Arn, Tags) = mediaconvert("POST", "/2017-08-29/tags")
TagResource(Arn, Tags, args) = mediaconvert("POST", "/2017-08-29/tags", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
"""
UntagResource(Arn) = mediaconvert("PUT", "/2017-08-29/tags/$arn")
UntagResource(Arn, args) = mediaconvert("PUT", "/2017-08-29/tags/$arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Retrieve the JSON for a specific completed transcoding job.
"""
GetJob(Id) = mediaconvert("GET", "/2017-08-29/jobs/$id")
GetJob(Id, args) = mediaconvert("GET", "/2017-08-29/jobs/$id", args)
GetJob(a...; b...) = GetJob(a..., b)

"""
Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
"""
AssociateCertificate(Arn) = mediaconvert("POST", "/2017-08-29/certificates")
AssociateCertificate(Arn, args) = mediaconvert("POST", "/2017-08-29/certificates", args)
AssociateCertificate(a...; b...) = AssociateCertificate(a..., b)

"""
Modify one of your existing job templates.
"""
UpdateJobTemplate(Name) = mediaconvert("PUT", "/2017-08-29/jobTemplates/$name")
UpdateJobTemplate(Name, args) = mediaconvert("PUT", "/2017-08-29/jobTemplates/$name", args)
UpdateJobTemplate(a...; b...) = UpdateJobTemplate(a..., b)

"""
Permanently delete a job template you have created.
"""
DeleteJobTemplate(Name) = mediaconvert("DELETE", "/2017-08-29/jobTemplates/$name")
DeleteJobTemplate(Name, args) = mediaconvert("DELETE", "/2017-08-29/jobTemplates/$name", args)
DeleteJobTemplate(a...; b...) = DeleteJobTemplate(a..., b)

"""
Permanently delete a preset you have created.
"""
DeletePreset(Name) = mediaconvert("DELETE", "/2017-08-29/presets/$name")
DeletePreset(Name, args) = mediaconvert("DELETE", "/2017-08-29/presets/$name", args)
DeletePreset(a...; b...) = DeletePreset(a..., b)

"""
Send an request with an empty body to the regional API endpoint to get your account API endpoint.
"""
DescribeEndpoints() = mediaconvert("POST", "/2017-08-29/endpoints")
DescribeEndpoints(, args) = mediaconvert("POST", "/2017-08-29/endpoints", args)
DescribeEndpoints(a...; b...) = DescribeEndpoints(a..., b)

"""
Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
"""
ListJobTemplates() = mediaconvert("GET", "/2017-08-29/jobTemplates")
ListJobTemplates(, args) = mediaconvert("GET", "/2017-08-29/jobTemplates", args)
ListJobTemplates(a...; b...) = ListJobTemplates(a..., b)

"""
Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
"""
CreatePreset(Settings, Name) = mediaconvert("POST", "/2017-08-29/presets")
CreatePreset(Settings, Name, args) = mediaconvert("POST", "/2017-08-29/presets", args)
CreatePreset(a...; b...) = CreatePreset(a..., b)

"""
Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
"""
ListJobs() = mediaconvert("GET", "/2017-08-29/jobs")
ListJobs(, args) = mediaconvert("GET", "/2017-08-29/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
"""
DisassociateCertificate(Arn) = mediaconvert("DELETE", "/2017-08-29/certificates/$arn")
DisassociateCertificate(Arn, args) = mediaconvert("DELETE", "/2017-08-29/certificates/$arn", args)
DisassociateCertificate(a...; b...) = DisassociateCertificate(a..., b)

"""
Modify one of your existing presets.
"""
UpdatePreset(Name) = mediaconvert("PUT", "/2017-08-29/presets/$name")
UpdatePreset(Name, args) = mediaconvert("PUT", "/2017-08-29/presets/$name", args)
UpdatePreset(a...; b...) = UpdatePreset(a..., b)

"""
Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
"""
ListQueues() = mediaconvert("GET", "/2017-08-29/queues")
ListQueues(, args) = mediaconvert("GET", "/2017-08-29/queues", args)
ListQueues(a...; b...) = ListQueues(a..., b)

"""
Retrieve the JSON for a specific job template.
"""
GetJobTemplate(Name) = mediaconvert("GET", "/2017-08-29/jobTemplates/$name")
GetJobTemplate(Name, args) = mediaconvert("GET", "/2017-08-29/jobTemplates/$name", args)
GetJobTemplate(a...; b...) = GetJobTemplate(a..., b)

"""
Retrieve the JSON for a specific preset.
"""
GetPreset(Name) = mediaconvert("GET", "/2017-08-29/presets/$name")
GetPreset(Name, args) = mediaconvert("GET", "/2017-08-29/presets/$name", args)
GetPreset(a...; b...) = GetPreset(a..., b)
