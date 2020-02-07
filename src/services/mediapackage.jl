include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage

"""

"""
ListTagsForResource(ResourceArn) = mediapackage("GET", "/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = mediapackage("GET", "/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Gets details about an existing OriginEndpoint.
"""
DescribeOriginEndpoint(Id) = mediapackage("GET", "/origin_endpoints/$id")
DescribeOriginEndpoint(Id, args) = mediapackage("GET", "/origin_endpoints/$id", args)
DescribeOriginEndpoint(a...; b...) = DescribeOriginEndpoint(a..., b)

"""
Returns a collection of Channels.
"""
ListChannels() = mediapackage("GET", "/channels")
ListChannels(, args) = mediapackage("GET", "/channels", args)
ListChannels(a...; b...) = ListChannels(a..., b)

"""
Returns a collection of HarvestJob records.
"""
ListHarvestJobs() = mediapackage("GET", "/harvest_jobs")
ListHarvestJobs(, args) = mediapackage("GET", "/harvest_jobs", args)
ListHarvestJobs(a...; b...) = ListHarvestJobs(a..., b)

"""
Updates an existing Channel.
"""
UpdateChannel(Id) = mediapackage("PUT", "/channels/$id")
UpdateChannel(Id, args) = mediapackage("PUT", "/channels/$id", args)
UpdateChannel(a...; b...) = UpdateChannel(a..., b)

"""
Updates an existing OriginEndpoint.
"""
UpdateOriginEndpoint(Id) = mediapackage("PUT", "/origin_endpoints/$id")
UpdateOriginEndpoint(Id, args) = mediapackage("PUT", "/origin_endpoints/$id", args)
UpdateOriginEndpoint(a...; b...) = UpdateOriginEndpoint(a..., b)

"""
Creates a new Channel.
"""
CreateChannel(Id) = mediapackage("POST", "/channels")
CreateChannel(Id, args) = mediapackage("POST", "/channels", args)
CreateChannel(a...; b...) = CreateChannel(a..., b)

"""
Creates a new HarvestJob record.
"""
CreateHarvestJob(S3Destination, EndTime, OriginEndpointId, StartTime, Id) = mediapackage("POST", "/harvest_jobs")
CreateHarvestJob(S3Destination, EndTime, OriginEndpointId, StartTime, Id, args) = mediapackage("POST", "/harvest_jobs", args)
CreateHarvestJob(a...; b...) = CreateHarvestJob(a..., b)

"""
Deletes an existing OriginEndpoint.
"""
DeleteOriginEndpoint(Id) = mediapackage("DELETE", "/origin_endpoints/$id")
DeleteOriginEndpoint(Id, args) = mediapackage("DELETE", "/origin_endpoints/$id", args)
DeleteOriginEndpoint(a...; b...) = DeleteOriginEndpoint(a..., b)

"""
Gets details about a Channel.
"""
DescribeChannel(Id) = mediapackage("GET", "/channels/$id")
DescribeChannel(Id, args) = mediapackage("GET", "/channels/$id", args)
DescribeChannel(a...; b...) = DescribeChannel(a..., b)

"""
Deletes an existing Channel.
"""
DeleteChannel(Id) = mediapackage("DELETE", "/channels/$id")
DeleteChannel(Id, args) = mediapackage("DELETE", "/channels/$id", args)
DeleteChannel(a...; b...) = DeleteChannel(a..., b)

"""

"""
TagResource(ResourceArn, Tags) = mediapackage("POST", "/tags/$resource-arn")
TagResource(ResourceArn, Tags, args) = mediapackage("POST", "/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Gets details about an existing HarvestJob.
"""
DescribeHarvestJob(Id) = mediapackage("GET", "/harvest_jobs/$id")
DescribeHarvestJob(Id, args) = mediapackage("GET", "/harvest_jobs/$id", args)
DescribeHarvestJob(a...; b...) = DescribeHarvestJob(a..., b)

"""

"""
UntagResource(TagKeys, ResourceArn) = mediapackage("DELETE", "/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = mediapackage("DELETE", "/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Creates a new OriginEndpoint record.
"""
CreateOriginEndpoint(Id, ChannelId) = mediapackage("POST", "/origin_endpoints")
CreateOriginEndpoint(Id, ChannelId, args) = mediapackage("POST", "/origin_endpoints", args)
CreateOriginEndpoint(a...; b...) = CreateOriginEndpoint(a..., b)

"""
Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
"""
RotateChannelCredentials(Id) = mediapackage("PUT", "/channels/$id/credentials")
RotateChannelCredentials(Id, args) = mediapackage("PUT", "/channels/$id/credentials", args)
RotateChannelCredentials(a...; b...) = RotateChannelCredentials(a..., b)

"""
Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
"""
RotateIngestEndpointCredentials(IngestEndpointId, Id) = mediapackage("PUT", "/channels/$id/ingest_endpoints/$ingest_endpoint_id/credentials")
RotateIngestEndpointCredentials(IngestEndpointId, Id, args) = mediapackage("PUT", "/channels/$id/ingest_endpoints/$ingest_endpoint_id/credentials", args)
RotateIngestEndpointCredentials(a...; b...) = RotateIngestEndpointCredentials(a..., b)

"""
Returns a collection of OriginEndpoint records.
"""
ListOriginEndpoints() = mediapackage("GET", "/origin_endpoints")
ListOriginEndpoints(, args) = mediapackage("GET", "/origin_endpoints", args)
ListOriginEndpoints(a...; b...) = ListOriginEndpoints(a..., b)
