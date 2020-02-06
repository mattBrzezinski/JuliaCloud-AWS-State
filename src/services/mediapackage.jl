include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage

"""


Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = mediapackage("GET", "/tags/{resource-arn}", args)

"""
Gets details about an existing OriginEndpoint.

Required Parameters:
Id
"""
DescribeOriginEndpoint(args) = mediapackage("GET", "/origin_endpoints/{id}", args)

"""
Returns a collection of Channels.
"""
ListChannels() = mediapackage("GET", "/channels")

"""
Returns a collection of HarvestJob records.
"""
ListHarvestJobs() = mediapackage("GET", "/harvest_jobs")

"""
Updates an existing Channel.

Required Parameters:
Id
"""
UpdateChannel(args) = mediapackage("PUT", "/channels/{id}", args)

"""
Updates an existing OriginEndpoint.

Required Parameters:
Id
"""
UpdateOriginEndpoint(args) = mediapackage("PUT", "/origin_endpoints/{id}", args)

"""
Creates a new Channel.

Required Parameters:
Id
"""
CreateChannel(args) = mediapackage("POST", "/channels", args)

"""
Creates a new HarvestJob record.

Required Parameters:
S3Destination, EndTime, OriginEndpointId, StartTime, Id
"""
CreateHarvestJob(args) = mediapackage("POST", "/harvest_jobs", args)

"""
Deletes an existing OriginEndpoint.

Required Parameters:
Id
"""
DeleteOriginEndpoint(args) = mediapackage("DELETE", "/origin_endpoints/{id}", args)

"""
Gets details about a Channel.

Required Parameters:
Id
"""
DescribeChannel(args) = mediapackage("GET", "/channels/{id}", args)

"""
Deletes an existing Channel.

Required Parameters:
Id
"""
DeleteChannel(args) = mediapackage("DELETE", "/channels/{id}", args)

"""


Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = mediapackage("POST", "/tags/{resource-arn}", args)

"""
Gets details about an existing HarvestJob.

Required Parameters:
Id
"""
DescribeHarvestJob(args) = mediapackage("GET", "/harvest_jobs/{id}", args)

"""


Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = mediapackage("DELETE", "/tags/{resource-arn}", args)

"""
Creates a new OriginEndpoint record.

Required Parameters:
Id, ChannelId
"""
CreateOriginEndpoint(args) = mediapackage("POST", "/origin_endpoints", args)

"""
Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead

Required Parameters:
Id
"""
RotateChannelCredentials(args) = mediapackage("PUT", "/channels/{id}/credentials", args)

"""
Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.

Required Parameters:
IngestEndpointId, Id
"""
RotateIngestEndpointCredentials(args) = mediapackage("PUT", "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", args)

"""
Returns a collection of OriginEndpoint records.
"""
ListOriginEndpoints() = mediapackage("GET", "/origin_endpoints")
