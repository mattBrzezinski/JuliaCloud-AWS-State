include("../AWSCorePrototypeServices.jl")
using .Services: cloudfront

"""
Create a new invalidation. 
"""
CreateInvalidation2016_11_25(DistributionId, InvalidationBatch) = cloudfront("POST", "/2016-11-25/distribution/$DistributionId/invalidation")
CreateInvalidation2016_11_25(DistributionId, InvalidationBatch, args) = cloudfront("POST", "/2016-11-25/distribution/$DistributionId/invalidation", args)
CreateInvalidation2016_11_25(a...; b...) = CreateInvalidation2016_11_25(a..., b)

"""
List tags for a CloudFront resource.
"""
ListTagsForResource2016_11_25(Resource) = cloudfront("GET", "/2016-11-25/tagging")
ListTagsForResource2016_11_25(Resource, args) = cloudfront("GET", "/2016-11-25/tagging", args)
ListTagsForResource2016_11_25(a...; b...) = ListTagsForResource2016_11_25(a..., b)

"""
Get the configuration information about a streaming distribution. 
"""
GetStreamingDistributionConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/streaming-distribution/$Id/config")
GetStreamingDistributionConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/streaming-distribution/$Id/config", args)
GetStreamingDistributionConfig2016_11_25(a...; b...) = GetStreamingDistributionConfig2016_11_25(a..., b)

"""
Gets information about a specified RTMP distribution, including the distribution configuration.
"""
GetStreamingDistribution2016_11_25(Id) = cloudfront("GET", "/2016-11-25/streaming-distribution/$Id")
GetStreamingDistribution2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/streaming-distribution/$Id", args)
GetStreamingDistribution2016_11_25(a...; b...) = GetStreamingDistribution2016_11_25(a..., b)

"""
Get the configuration information about an origin access identity. 
"""
GetCloudFrontOriginAccessIdentityConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/$Id/config")
GetCloudFrontOriginAccessIdentityConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/$Id/config", args)
GetCloudFrontOriginAccessIdentityConfig2016_11_25(a...; b...) = GetCloudFrontOriginAccessIdentityConfig2016_11_25(a..., b)

"""
List distributions. 
"""
ListDistributions2016_11_25() = cloudfront("GET", "/2016-11-25/distribution")
ListDistributions2016_11_25(, args) = cloudfront("GET", "/2016-11-25/distribution", args)
ListDistributions2016_11_25(a...; b...) = ListDistributions2016_11_25(a..., b)

"""
Get the information about an invalidation. 
"""
GetInvalidation2016_11_25(DistributionId, Id) = cloudfront("GET", "/2016-11-25/distribution/$DistributionId/invalidation/$Id")
GetInvalidation2016_11_25(DistributionId, Id, args) = cloudfront("GET", "/2016-11-25/distribution/$DistributionId/invalidation/$Id", args)
GetInvalidation2016_11_25(a...; b...) = GetInvalidation2016_11_25(a..., b)

"""
Lists invalidation batches. 
"""
ListInvalidations2016_11_25(DistributionId) = cloudfront("GET", "/2016-11-25/distribution/$DistributionId/invalidation")
ListInvalidations2016_11_25(DistributionId, args) = cloudfront("GET", "/2016-11-25/distribution/$DistributionId/invalidation", args)
ListInvalidations2016_11_25(a...; b...) = ListInvalidations2016_11_25(a..., b)

"""
Add tags to a CloudFront resource.
"""
TagResource2016_11_25(Resource, Tags) = cloudfront("POST", "/2016-11-25/tagging?Operation=Tag")
TagResource2016_11_25(Resource, Tags, args) = cloudfront("POST", "/2016-11-25/tagging?Operation=Tag", args)
TagResource2016_11_25(a...; b...) = TagResource2016_11_25(a..., b)

"""
Remove tags from a CloudFront resource.
"""
UntagResource2016_11_25(Resource, TagKeys) = cloudfront("POST", "/2016-11-25/tagging?Operation=Untag")
UntagResource2016_11_25(Resource, TagKeys, args) = cloudfront("POST", "/2016-11-25/tagging?Operation=Untag", args)
UntagResource2016_11_25(a...; b...) = UntagResource2016_11_25(a..., b)

"""
Get the information about an origin access identity. 
"""
GetCloudFrontOriginAccessIdentity2016_11_25(Id) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/$Id")
GetCloudFrontOriginAccessIdentity2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/$Id", args)
GetCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = GetCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.  To create a new web distribution, submit a POST request to the CloudFront API version/distribution resource. The request body must include a document with a StreamingDistributionConfig element. The response echoes the StreamingDistributionConfig element and returns other information about the RTMP distribution. To get the status of your request, use the GET StreamingDistribution API action. When the value of Enabled is true and the value of Status is Deployed, your distribution is ready. A distribution usually deploys in less than 15 minutes. For more information about web distributions, see Working with RTMP Distributions in the Amazon CloudFront Developer Guide.  Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the Quantity element and the number of values specified. 
"""
CreateStreamingDistribution2016_11_25(StreamingDistributionConfig) = cloudfront("POST", "/2016-11-25/streaming-distribution")
CreateStreamingDistribution2016_11_25(StreamingDistributionConfig, args) = cloudfront("POST", "/2016-11-25/streaming-distribution", args)
CreateStreamingDistribution2016_11_25(a...; b...) = CreateStreamingDistribution2016_11_25(a..., b)

"""
Get the configuration information about a distribution. 
"""
GetDistributionConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/distribution/$Id/config")
GetDistributionConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/distribution/$Id/config", args)
GetDistributionConfig2016_11_25(a...; b...) = GetDistributionConfig2016_11_25(a..., b)

"""
Get the information about a distribution. 
"""
GetDistribution2016_11_25(Id) = cloudfront("GET", "/2016-11-25/distribution/$Id")
GetDistribution2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/distribution/$Id", args)
GetDistribution2016_11_25(a...; b...) = GetDistribution2016_11_25(a..., b)

"""
Update an origin access identity. 
"""
UpdateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig, Id) = cloudfront("PUT", "/2016-11-25/origin-access-identity/cloudfront/$Id/config")
UpdateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig, Id, args) = cloudfront("PUT", "/2016-11-25/origin-access-identity/cloudfront/$Id/config", args)
UpdateCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = UpdateCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
Update a distribution. 
"""
UpdateDistribution2016_11_25(DistributionConfig, Id) = cloudfront("PUT", "/2016-11-25/distribution/$Id/config")
UpdateDistribution2016_11_25(DistributionConfig, Id, args) = cloudfront("PUT", "/2016-11-25/distribution/$Id/config", args)
UpdateDistribution2016_11_25(a...; b...) = UpdateDistribution2016_11_25(a..., b)

"""
Create a new distribution with tags.
"""
CreateDistributionWithTags2016_11_25(DistributionConfigWithTags) = cloudfront("POST", "/2016-11-25/distribution?WithTags")
CreateDistributionWithTags2016_11_25(DistributionConfigWithTags, args) = cloudfront("POST", "/2016-11-25/distribution?WithTags", args)
CreateDistributionWithTags2016_11_25(a...; b...) = CreateDistributionWithTags2016_11_25(a..., b)

"""
Delete a distribution. 
"""
DeleteDistribution2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/distribution/$Id")
DeleteDistribution2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/distribution/$Id", args)
DeleteDistribution2016_11_25(a...; b...) = DeleteDistribution2016_11_25(a..., b)

"""
List the distributions that are associated with a specified AWS WAF web ACL. 
"""
ListDistributionsByWebACLId2016_11_25(WebACLId) = cloudfront("GET", "/2016-11-25/distributionsByWebACLId/$WebACLId")
ListDistributionsByWebACLId2016_11_25(WebACLId, args) = cloudfront("GET", "/2016-11-25/distributionsByWebACLId/$WebACLId", args)
ListDistributionsByWebACLId2016_11_25(a...; b...) = ListDistributionsByWebACLId2016_11_25(a..., b)

"""
Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.  To delete an RTMP distribution using the CloudFront API:   Disable the RTMP distribution.   Submit a GET Streaming Distribution Config request to get the current configuration and the Etag header for the distribution.    Update the XML document that was returned in the response to your GET Streaming Distribution Config request to change the value of Enabled to false.   Submit a PUT Streaming Distribution Config request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to the PUT Streaming Distribution Config request to confirm that the distribution was successfully disabled.   Submit a GET Streaming Distribution Config request to confirm that your changes have propagated. When propagation is complete, the value of Status is Deployed.   Submit a DELETE Streaming Distribution request. Set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to your DELETE Streaming Distribution request to confirm that the distribution was successfully deleted.   For information about deleting a distribution using the CloudFront console, see Deleting a Distribution in the Amazon CloudFront Developer Guide.
"""
DeleteStreamingDistribution2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/streaming-distribution/$Id")
DeleteStreamingDistribution2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/streaming-distribution/$Id", args)
DeleteStreamingDistribution2016_11_25(a...; b...) = DeleteStreamingDistribution2016_11_25(a..., b)

"""
Creates a new web distribution. Send a GET request to the /CloudFront API version/distribution/distribution ID resource.
"""
CreateDistribution2016_11_25(DistributionConfig) = cloudfront("POST", "/2016-11-25/distribution")
CreateDistribution2016_11_25(DistributionConfig, args) = cloudfront("POST", "/2016-11-25/distribution", args)
CreateDistribution2016_11_25(a...; b...) = CreateDistribution2016_11_25(a..., b)

"""
Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see Serving Private Content through CloudFront in the Amazon CloudFront Developer Guide.
"""
CreateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig) = cloudfront("POST", "/2016-11-25/origin-access-identity/cloudfront")
CreateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig, args) = cloudfront("POST", "/2016-11-25/origin-access-identity/cloudfront", args)
CreateCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = CreateCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
Update a streaming distribution. 
"""
UpdateStreamingDistribution2016_11_25(StreamingDistributionConfig, Id) = cloudfront("PUT", "/2016-11-25/streaming-distribution/$Id/config")
UpdateStreamingDistribution2016_11_25(StreamingDistributionConfig, Id, args) = cloudfront("PUT", "/2016-11-25/streaming-distribution/$Id/config", args)
UpdateStreamingDistribution2016_11_25(a...; b...) = UpdateStreamingDistribution2016_11_25(a..., b)

"""
Lists origin access identities.
"""
ListCloudFrontOriginAccessIdentities2016_11_25() = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront")
ListCloudFrontOriginAccessIdentities2016_11_25(, args) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront", args)
ListCloudFrontOriginAccessIdentities2016_11_25(a...; b...) = ListCloudFrontOriginAccessIdentities2016_11_25(a..., b)

"""
Delete an origin access identity. 
"""
DeleteCloudFrontOriginAccessIdentity2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/origin-access-identity/cloudfront/$Id")
DeleteCloudFrontOriginAccessIdentity2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/origin-access-identity/cloudfront/$Id", args)
DeleteCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = DeleteCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
Create a new streaming distribution with tags.
"""
CreateStreamingDistributionWithTags2016_11_25(StreamingDistributionConfigWithTags) = cloudfront("POST", "/2016-11-25/streaming-distribution?WithTags")
CreateStreamingDistributionWithTags2016_11_25(StreamingDistributionConfigWithTags, args) = cloudfront("POST", "/2016-11-25/streaming-distribution?WithTags", args)
CreateStreamingDistributionWithTags2016_11_25(a...; b...) = CreateStreamingDistributionWithTags2016_11_25(a..., b)

"""
List streaming distributions. 
"""
ListStreamingDistributions2016_11_25() = cloudfront("GET", "/2016-11-25/streaming-distribution")
ListStreamingDistributions2016_11_25(, args) = cloudfront("GET", "/2016-11-25/streaming-distribution", args)
ListStreamingDistributions2016_11_25(a...; b...) = ListStreamingDistributions2016_11_25(a..., b)
