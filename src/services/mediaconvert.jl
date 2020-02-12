include("../AWSCorePrototypeServices.jl")
using .Services: mediaconvert

"""
    ListTagsForResource

Retrieve the tags for a MediaConvert resource.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = mediaconvert("GET", "/2017-08-29/tags/{arn}", args)
"""
    CreateJobTemplate

Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
{
  "Name": "The name of the job template you are creating.",
  "Settings": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
}


Optional Parameters:
{
  "AccelerationSettings": "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.",
  "Description": "Optional. A description of the job template you are creating.",
  "StatusUpdateInterval": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.",
  "Tags": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.",
  "Category": "Optional. A category for the job template you are creating",
  "Priority": "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.",
  "Queue": "Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue."
}

"""

CreateJobTemplate(args) = mediaconvert("POST", "/2017-08-29/jobTemplates", args)
"""
    GetQueue

Retrieve the JSON for a specific queue.

Required Parameters:
{
  "Name": "The name of the queue that you want information about."
}


Optional Parameters:
{}

"""

GetQueue(args) = mediaconvert("GET", "/2017-08-29/queues/{name}", args)
"""
    CreateQueue

Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html

Required Parameters:
{
  "Name": "The name of the queue that you are creating."
}


Optional Parameters:
{
  "Description": "Optional. A description of the queue that you are creating.",
  "Tags": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.",
  "PricingPlan": "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment. When you use the API to create a queue, the default is on-demand.",
  "Status": "Initial state of the queue. If you create a paused queue, then jobs in that queue won't begin.",
  "ReservationPlanSettings": "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
}

"""

CreateQueue(args) = mediaconvert("POST", "/2017-08-29/queues", args)
"""
    DeleteQueue

Permanently delete a queue you have created.

Required Parameters:
{
  "Name": "The name of the queue that you want to delete."
}


Optional Parameters:
{}

"""

DeleteQueue(args) = mediaconvert("DELETE", "/2017-08-29/queues/{name}", args)
"""
    UpdateQueue

Modify one of your existing queues.

Required Parameters:
{
  "Name": "The name of the queue that you are modifying."
}


Optional Parameters:
{
  "Description": "The new description for the queue, if you are changing it.",
  "Status": "Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error.",
  "ReservationPlanSettings": "The new details of your pricing plan for your reserved queue. When you set up a new pricing plan to replace an expired one, you enter into another 12-month commitment. When you add capacity to your queue by increasing the number of RTS, you extend the term of your commitment to 12 months from when you add capacity. After you make these commitments, you can't cancel them."
}

"""

UpdateQueue(args) = mediaconvert("PUT", "/2017-08-29/queues/{name}", args)
"""
    ListPresets

Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Optional. Number of presets, up to twenty, that will be returned at one time",
  "NextToken": "Use this string, provided with the response to a previous request, to request the next batch of presets.",
  "Order": "When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
  "Category": "Optionally, specify a preset category to limit responses to only presets from that category.",
  "ListBy": "Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
}

"""
ListPresets() = mediaconvert("GET", "/2017-08-29/presets")
ListPresets(args) = mediaconvert("GET", "/2017-08-29/presets", args)

"""
    CancelJob

Permanently cancel a job. Once you have canceled a job, you can't start it again.

Required Parameters:
{
  "Id": "The Job ID of the job to be cancelled."
}


Optional Parameters:
{}

"""

CancelJob(args) = mediaconvert("DELETE", "/2017-08-29/jobs/{id}", args)
"""
    CreateJob

Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
{
  "Role": "Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.",
  "Settings": "JobSettings contains all the transcode settings for a job."
}


Optional Parameters:
{
  "AccelerationSettings": "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.",
  "BillingTagsSource": "Optional. Choose a tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up. Any transcoding outputs that don't have an associated tag will appear in your billing report unsorted. If you don't choose a valid value for this field, your job outputs will appear on the billing report unsorted.",
  "StatusUpdateInterval": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.",
  "Tags": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.",
  "UserMetadata": "User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.",
  "SimulateReservedQueue": "Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.",
  "ClientRequestToken": "Idempotency token for CreateJob operation.",
  "Priority": "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.",
  "Queue": "Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.",
  "JobTemplate": "When you create a job, you can either specify a job template or specify the transcoding settings individually"
}

"""

CreateJob(args) = mediaconvert("POST", "/2017-08-29/jobs", args)
"""
    TagResource

Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.",
  "Tags": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
}


Optional Parameters:
{}

"""

TagResource(args) = mediaconvert("POST", "/2017-08-29/tags", args)
"""
    UntagResource

Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name."
}


Optional Parameters:
{
  "TagKeys": "The keys of the tags that you want to remove from the resource."
}

"""

UntagResource(args) = mediaconvert("PUT", "/2017-08-29/tags/{arn}", args)
"""
    GetJob

Retrieve the JSON for a specific completed transcoding job.

Required Parameters:
{
  "Id": "the job ID of the job."
}


Optional Parameters:
{}

"""

GetJob(args) = mediaconvert("GET", "/2017-08-29/jobs/{id}", args)
"""
    AssociateCertificate

Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.

Required Parameters:
{
  "Arn": "The ARN of the ACM certificate that you want to associate with your MediaConvert resource."
}


Optional Parameters:
{}

"""

AssociateCertificate(args) = mediaconvert("POST", "/2017-08-29/certificates", args)
"""
    UpdateJobTemplate

Modify one of your existing job templates.

Required Parameters:
{
  "Name": "The name of the job template you are modifying"
}


Optional Parameters:
{
  "AccelerationSettings": "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.",
  "Description": "The new description for the job template, if you are changing it.",
  "StatusUpdateInterval": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.",
  "Category": "The new category for the job template, if you are changing it.",
  "Priority": "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.",
  "Queue": "The new queue for the job template, if you are changing it.",
  "Settings": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
}

"""

UpdateJobTemplate(args) = mediaconvert("PUT", "/2017-08-29/jobTemplates/{name}", args)
"""
    DeleteJobTemplate

Permanently delete a job template you have created.

Required Parameters:
{
  "Name": "The name of the job template to be deleted."
}


Optional Parameters:
{}

"""

DeleteJobTemplate(args) = mediaconvert("DELETE", "/2017-08-29/jobTemplates/{name}", args)
"""
    DeletePreset

Permanently delete a preset you have created.

Required Parameters:
{
  "Name": "The name of the preset to be deleted."
}


Optional Parameters:
{}

"""

DeletePreset(args) = mediaconvert("DELETE", "/2017-08-29/presets/{name}", args)
"""
    DescribeEndpoints

Send an request with an empty body to the regional API endpoint to get your account API endpoint.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Optional. Max number of endpoints, up to twenty, that will be returned at one time.",
  "Mode": "Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.",
  "NextToken": "Use this string, provided with the response to a previous request, to request the next batch of endpoints."
}

"""
DescribeEndpoints() = mediaconvert("POST", "/2017-08-29/endpoints")
DescribeEndpoints(args) = mediaconvert("POST", "/2017-08-29/endpoints", args)

"""
    ListJobTemplates

Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Optional. Number of job templates, up to twenty, that will be returned at one time.",
  "NextToken": "Use this string, provided with the response to a previous request, to request the next batch of job templates.",
  "Order": "When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
  "Category": "Optionally, specify a job template category to limit responses to only job templates from that category.",
  "ListBy": "Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name."
}

"""
ListJobTemplates() = mediaconvert("GET", "/2017-08-29/jobTemplates")
ListJobTemplates(args) = mediaconvert("GET", "/2017-08-29/jobTemplates", args)

"""
    CreatePreset

Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html

Required Parameters:
{
  "Name": "The name of the preset you are creating.",
  "Settings": "Settings for preset"
}


Optional Parameters:
{
  "Description": "Optional. A description of the preset you are creating.",
  "Tags": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.",
  "Category": "Optional. A category for the preset you are creating."
}

"""

CreatePreset(args) = mediaconvert("POST", "/2017-08-29/presets", args)
"""
    ListJobs

Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Optional. Number of jobs, up to twenty, that will be returned at one time.",
  "NextToken": "Use this string, provided with the response to a previous request, to request the next batch of jobs.",
  "Order": "When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
  "Status": "A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.",
  "Queue": "Provide a queue name to get back only jobs from that queue."
}

"""
ListJobs() = mediaconvert("GET", "/2017-08-29/jobs")
ListJobs(args) = mediaconvert("GET", "/2017-08-29/jobs", args)

"""
    DisassociateCertificate

Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.

Required Parameters:
{
  "Arn": "The ARN of the ACM certificate that you want to disassociate from your MediaConvert resource."
}


Optional Parameters:
{}

"""

DisassociateCertificate(args) = mediaconvert("DELETE", "/2017-08-29/certificates/{arn}", args)
"""
    UpdatePreset

Modify one of your existing presets.

Required Parameters:
{
  "Name": "The name of the preset you are modifying."
}


Optional Parameters:
{
  "Description": "The new description for the preset, if you are changing it.",
  "Category": "The new category for the preset, if you are changing it.",
  "Settings": "Settings for preset"
}

"""

UpdatePreset(args) = mediaconvert("PUT", "/2017-08-29/presets/{name}", args)
"""
    ListQueues

Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Optional. Number of queues, up to twenty, that will be returned at one time.",
  "NextToken": "Use this string, provided with the response to a previous request, to request the next batch of queues.",
  "Order": "When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
  "ListBy": "Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date."
}

"""
ListQueues() = mediaconvert("GET", "/2017-08-29/queues")
ListQueues(args) = mediaconvert("GET", "/2017-08-29/queues", args)

"""
    GetJobTemplate

Retrieve the JSON for a specific job template.

Required Parameters:
{
  "Name": "The name of the job template."
}


Optional Parameters:
{}

"""

GetJobTemplate(args) = mediaconvert("GET", "/2017-08-29/jobTemplates/{name}", args)
"""
    GetPreset

Retrieve the JSON for a specific preset.

Required Parameters:
{
  "Name": "The name of the preset."
}


Optional Parameters:
{}

"""

GetPreset(args) = mediaconvert("GET", "/2017-08-29/presets/{name}", args)