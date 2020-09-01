include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage

"""
    ListTagsForResource()



Required Parameters
{
  "ResourceArn": ""
}
"""
ListTagsForResource(args) = mediapackage("GET", "/tags/{resource-arn}", args)

"""
    DescribeOriginEndpoint()

Gets details about an existing OriginEndpoint.

Required Parameters
{
  "Id": "The ID of the OriginEndpoint."
}
"""
DescribeOriginEndpoint(args) = mediapackage("GET", "/origin_endpoints/{id}", args)

"""
    ListChannels()

Returns a collection of Channels.

Optional Parameters
{
  "MaxResults": "Upper bound on number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request."
}
"""

ListChannels() = mediapackage("GET", "/channels")
ListChannels(args) = mediapackage("GET", "/channels", args)

"""
    ListHarvestJobs()

Returns a collection of HarvestJob records.

Optional Parameters
{
  "MaxResults": "The upper bound on the number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request.",
  "IncludeChannelId": "When specified, the request will return only HarvestJobs associated with the given Channel ID.",
  "IncludeStatus": "When specified, the request will return only HarvestJobs in the given status."
}
"""

ListHarvestJobs() = mediapackage("GET", "/harvest_jobs")
ListHarvestJobs(args) = mediapackage("GET", "/harvest_jobs", args)

"""
    UpdateChannel()

Updates an existing Channel.

Required Parameters
{
  "Id": "The ID of the Channel to update."
}

Optional Parameters
{
  "Description": "A short text description of the Channel."
}
"""
UpdateChannel(args) = mediapackage("PUT", "/channels/{id}", args)

"""
    UpdateOriginEndpoint()

Updates an existing OriginEndpoint.

Required Parameters
{
  "Id": "The ID of the OriginEndpoint to update."
}

Optional Parameters
{
  "ManifestName": "A short string that will be appended to the end of the Endpoint URL.",
  "Authorization": "",
  "MssPackage": "",
  "DashPackage": "",
  "Whitelist": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
  "CmafPackage": "",
  "StartoverWindowSeconds": "Maximum duration (in seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
  "TimeDelaySeconds": "Amount of delay (in seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
  "Description": "A short text description of the OriginEndpoint.",
  "HlsPackage": "",
  "Origination": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n"
}
"""
UpdateOriginEndpoint(args) = mediapackage("PUT", "/origin_endpoints/{id}", args)

"""
    CreateChannel()

Creates a new Channel.

Required Parameters
{
  "Id": "The ID of the Channel. The ID must be unique within the region and it\ncannot be changed after a Channel is created.\n"
}

Optional Parameters
{
  "Description": "A short text description of the Channel.",
  "Tags": ""
}
"""
CreateChannel(args) = mediapackage("POST", "/channels", args)

"""
    CreateHarvestJob()

Creates a new HarvestJob record.

Required Parameters
{
  "StartTime": "The start of the time-window which will be harvested\n",
  "Id": "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted\n",
  "EndTime": "The end of the time-window which will be harvested\n",
  "OriginEndpointId": "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.\n",
  "S3Destination": ""
}
"""
CreateHarvestJob(args) = mediapackage("POST", "/harvest_jobs", args)

"""
    DeleteOriginEndpoint()

Deletes an existing OriginEndpoint.

Required Parameters
{
  "Id": "The ID of the OriginEndpoint to delete."
}
"""
DeleteOriginEndpoint(args) = mediapackage("DELETE", "/origin_endpoints/{id}", args)

"""
    DescribeChannel()

Gets details about a Channel.

Required Parameters
{
  "Id": "The ID of a Channel."
}
"""
DescribeChannel(args) = mediapackage("GET", "/channels/{id}", args)

"""
    DeleteChannel()

Deletes an existing Channel.

Required Parameters
{
  "Id": "The ID of the Channel to delete."
}
"""
DeleteChannel(args) = mediapackage("DELETE", "/channels/{id}", args)

"""
    TagResource()



Required Parameters
{
  "ResourceArn": "",
  "Tags": ""
}
"""
TagResource(args) = mediapackage("POST", "/tags/{resource-arn}", args)

"""
    DescribeHarvestJob()

Gets details about an existing HarvestJob.

Required Parameters
{
  "Id": "The ID of the HarvestJob."
}
"""
DescribeHarvestJob(args) = mediapackage("GET", "/harvest_jobs/{id}", args)

"""
    UntagResource()



Required Parameters
{
  "ResourceArn": "",
  "TagKeys": "The key(s) of tag to be deleted"
}
"""
UntagResource(args) = mediapackage("DELETE", "/tags/{resource-arn}", args)

"""
    CreateOriginEndpoint()

Creates a new OriginEndpoint record.

Required Parameters
{
  "Id": "The ID of the OriginEndpoint.  The ID must be unique within the region\nand it cannot be changed after the OriginEndpoint is created.\n",
  "ChannelId": "The ID of the Channel that the OriginEndpoint will be associated with.\nThis cannot be changed after the OriginEndpoint is created.\n"
}

Optional Parameters
{
  "ManifestName": "A short string that will be used as the filename of the OriginEndpoint URL (defaults to \"index\").",
  "Authorization": "",
  "MssPackage": "",
  "DashPackage": "",
  "Whitelist": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
  "Tags": "",
  "CmafPackage": "",
  "StartoverWindowSeconds": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
  "TimeDelaySeconds": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
  "Description": "A short text description of the OriginEndpoint.",
  "HlsPackage": "",
  "Origination": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n"
}
"""
CreateOriginEndpoint(args) = mediapackage("POST", "/origin_endpoints", args)

"""
    RotateChannelCredentials()

Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead

Required Parameters
{
  "Id": "The ID of the channel to update."
}
"""
RotateChannelCredentials(args) = mediapackage("PUT", "/channels/{id}/credentials", args)

"""
    RotateIngestEndpointCredentials()

Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.

Required Parameters
{
  "Id": "The ID of the channel the IngestEndpoint is on.",
  "IngestEndpointId": "The id of the IngestEndpoint whose credentials should be rotated"
}
"""
RotateIngestEndpointCredentials(args) = mediapackage("PUT", "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", args)

"""
    ListOriginEndpoints()

Returns a collection of OriginEndpoint records.

Optional Parameters
{
  "MaxResults": "The upper bound on the number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request.",
  "ChannelId": "When specified, the request will return only OriginEndpoints associated with the given Channel ID."
}
"""

ListOriginEndpoints() = mediapackage("GET", "/origin_endpoints")
ListOriginEndpoints(args) = mediapackage("GET", "/origin_endpoints", args)