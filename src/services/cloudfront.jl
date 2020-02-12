include("../AWSCorePrototypeServices.jl")
using .Services: cloudfront

"""
    CreateInvalidation2016_11_25

Create a new invalidation. 

Required Parameters:
{
  "DistributionId": "The distribution's id.",
  "InvalidationBatch": "The batch information for the invalidation."
}


Optional Parameters:
{}

"""
CreateInvalidation2016_11_25(DistributionId, InvalidationBatch) = cloudfront("POST", "/2016-11-25/distribution/{DistributionId}/invalidation")
CreateInvalidation2016_11_25(DistributionId, InvalidationBatch, args) = cloudfront("POST", "/2016-11-25/distribution/{DistributionId}/invalidation", args)
CreateInvalidation2016_11_25(a...; b...) = CreateInvalidation2016_11_25(a..., b)

"""
    ListTagsForResource2016_11_25

List tags for a CloudFront resource.

Required Parameters:
{
  "Resource": " An ARN of a CloudFront resource."
}


Optional Parameters:
{}

"""
ListTagsForResource2016_11_25(Resource) = cloudfront("GET", "/2016-11-25/tagging")
ListTagsForResource2016_11_25(Resource, args) = cloudfront("GET", "/2016-11-25/tagging", args)
ListTagsForResource2016_11_25(a...; b...) = ListTagsForResource2016_11_25(a..., b)

"""
    GetStreamingDistributionConfig2016_11_25

Get the configuration information about a streaming distribution. 

Required Parameters:
{
  "Id": "The streaming distribution's ID."
}


Optional Parameters:
{}

"""
GetStreamingDistributionConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/streaming-distribution/{Id}/config")
GetStreamingDistributionConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/streaming-distribution/{Id}/config", args)
GetStreamingDistributionConfig2016_11_25(a...; b...) = GetStreamingDistributionConfig2016_11_25(a..., b)

"""
    GetStreamingDistribution2016_11_25

Gets information about a specified RTMP distribution, including the distribution configuration.

Required Parameters:
{
  "Id": "The streaming distribution's ID."
}


Optional Parameters:
{}

"""
GetStreamingDistribution2016_11_25(Id) = cloudfront("GET", "/2016-11-25/streaming-distribution/{Id}")
GetStreamingDistribution2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/streaming-distribution/{Id}", args)
GetStreamingDistribution2016_11_25(a...; b...) = GetStreamingDistribution2016_11_25(a..., b)

"""
    GetCloudFrontOriginAccessIdentityConfig2016_11_25

Get the configuration information about an origin access identity. 

Required Parameters:
{
  "Id": "The identity's ID. "
}


Optional Parameters:
{}

"""
GetCloudFrontOriginAccessIdentityConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/{Id}/config")
GetCloudFrontOriginAccessIdentityConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/{Id}/config", args)
GetCloudFrontOriginAccessIdentityConfig2016_11_25(a...; b...) = GetCloudFrontOriginAccessIdentityConfig2016_11_25(a..., b)

"""
    ListDistributions2016_11_25

List distributions. 

Required Parameters:
{}


Optional Parameters:
{
  "Marker": "Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the Marker to the value of the NextMarker from the current page's response (which is also the ID of the last distribution on that page).",
  "MaxItems": "The maximum number of distributions you want in the response body."
}

"""
ListDistributions2016_11_25() = cloudfront("GET", "/2016-11-25/distribution")
ListDistributions2016_11_25(args) cloudfront("GET", "/2016-11-25/distribution", args)
ListDistributions2016_11_25(a...; b...) = ListDistributions2016_11_25(a..., b)

"""
    GetInvalidation2016_11_25

Get the information about an invalidation. 

Required Parameters:
{
  "Id": "The identifier for the invalidation request, for example, IDFDVBD632BHDS5.",
  "DistributionId": "The distribution's ID."
}


Optional Parameters:
{}

"""
GetInvalidation2016_11_25(Id, DistributionId) = cloudfront("GET", "/2016-11-25/distribution/{DistributionId}/invalidation/{Id}")
GetInvalidation2016_11_25(Id, DistributionId, args) = cloudfront("GET", "/2016-11-25/distribution/{DistributionId}/invalidation/{Id}", args)
GetInvalidation2016_11_25(a...; b...) = GetInvalidation2016_11_25(a..., b)

"""
    ListInvalidations2016_11_25

Lists invalidation batches. 

Required Parameters:
{
  "DistributionId": "The distribution's ID."
}


Optional Parameters:
{
  "Marker": "Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set Marker to the value of the NextMarker from the current page's response. This value is the same as the ID of the last invalidation batch on that page. ",
  "MaxItems": "The maximum number of invalidation batches that you want in the response body."
}

"""
ListInvalidations2016_11_25(DistributionId) = cloudfront("GET", "/2016-11-25/distribution/{DistributionId}/invalidation")
ListInvalidations2016_11_25(DistributionId, args) = cloudfront("GET", "/2016-11-25/distribution/{DistributionId}/invalidation", args)
ListInvalidations2016_11_25(a...; b...) = ListInvalidations2016_11_25(a..., b)

"""
    TagResource2016_11_25

Add tags to a CloudFront resource.

Required Parameters:
{
  "Tags": " A complex type that contains zero or more Tag elements.",
  "Resource": " An ARN of a CloudFront resource."
}


Optional Parameters:
{}

"""
TagResource2016_11_25(Tags, Resource) = cloudfront("POST", "/2016-11-25/tagging?Operation=Tag")
TagResource2016_11_25(Tags, Resource, args) = cloudfront("POST", "/2016-11-25/tagging?Operation=Tag", args)
TagResource2016_11_25(a...; b...) = TagResource2016_11_25(a..., b)

"""
    UntagResource2016_11_25

Remove tags from a CloudFront resource.

Required Parameters:
{
  "Resource": " An ARN of a CloudFront resource.",
  "TagKeys": " A complex type that contains zero or more Tag key elements."
}


Optional Parameters:
{}

"""
UntagResource2016_11_25(Resource, TagKeys) = cloudfront("POST", "/2016-11-25/tagging?Operation=Untag")
UntagResource2016_11_25(Resource, TagKeys, args) = cloudfront("POST", "/2016-11-25/tagging?Operation=Untag", args)
UntagResource2016_11_25(a...; b...) = UntagResource2016_11_25(a..., b)

"""
    GetCloudFrontOriginAccessIdentity2016_11_25

Get the information about an origin access identity. 

Required Parameters:
{
  "Id": "The identity's ID."
}


Optional Parameters:
{}

"""
GetCloudFrontOriginAccessIdentity2016_11_25(Id) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/{Id}")
GetCloudFrontOriginAccessIdentity2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront/{Id}", args)
GetCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = GetCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
    CreateStreamingDistribution2016_11_25

Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.  To create a new web distribution, submit a POST request to the CloudFront API version/distribution resource. The request body must include a document with a StreamingDistributionConfig element. The response echoes the StreamingDistributionConfig element and returns other information about the RTMP distribution. To get the status of your request, use the GET StreamingDistribution API action. When the value of Enabled is true and the value of Status is Deployed, your distribution is ready. A distribution usually deploys in less than 15 minutes. For more information about web distributions, see Working with RTMP Distributions in the Amazon CloudFront Developer Guide.  Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the Quantity element and the number of values specified. 

Required Parameters:
{
  "StreamingDistributionConfig": "The streaming distribution's configuration information."
}


Optional Parameters:
{}

"""
CreateStreamingDistribution2016_11_25(StreamingDistributionConfig) = cloudfront("POST", "/2016-11-25/streaming-distribution")
CreateStreamingDistribution2016_11_25(StreamingDistributionConfig, args) = cloudfront("POST", "/2016-11-25/streaming-distribution", args)
CreateStreamingDistribution2016_11_25(a...; b...) = CreateStreamingDistribution2016_11_25(a..., b)

"""
    GetDistributionConfig2016_11_25

Get the configuration information about a distribution. 

Required Parameters:
{
  "Id": "The distribution's ID."
}


Optional Parameters:
{}

"""
GetDistributionConfig2016_11_25(Id) = cloudfront("GET", "/2016-11-25/distribution/{Id}/config")
GetDistributionConfig2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/distribution/{Id}/config", args)
GetDistributionConfig2016_11_25(a...; b...) = GetDistributionConfig2016_11_25(a..., b)

"""
    GetDistribution2016_11_25

Get the information about a distribution. 

Required Parameters:
{
  "Id": "The distribution's ID."
}


Optional Parameters:
{}

"""
GetDistribution2016_11_25(Id) = cloudfront("GET", "/2016-11-25/distribution/{Id}")
GetDistribution2016_11_25(Id, args) = cloudfront("GET", "/2016-11-25/distribution/{Id}", args)
GetDistribution2016_11_25(a...; b...) = GetDistribution2016_11_25(a..., b)

"""
    UpdateCloudFrontOriginAccessIdentity2016_11_25

Update an origin access identity. 

Required Parameters:
{
  "Id": "The identity's id.",
  "CloudFrontOriginAccessIdentityConfig": "The identity's configuration information."
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header that you received when retrieving the identity's configuration. For example: E2QWRUHAPOMQZL."
}

"""
UpdateCloudFrontOriginAccessIdentity2016_11_25(Id, CloudFrontOriginAccessIdentityConfig) = cloudfront("PUT", "/2016-11-25/origin-access-identity/cloudfront/{Id}/config")
UpdateCloudFrontOriginAccessIdentity2016_11_25(Id, CloudFrontOriginAccessIdentityConfig, args) = cloudfront("PUT", "/2016-11-25/origin-access-identity/cloudfront/{Id}/config", args)
UpdateCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = UpdateCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
    UpdateDistribution2016_11_25

Update a distribution. 

Required Parameters:
{
  "DistributionConfig": "The distribution's configuration information.",
  "Id": "The distribution's id."
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header that you received when retrieving the distribution's configuration. For example: E2QWRUHAPOMQZL."
}

"""
UpdateDistribution2016_11_25(DistributionConfig, Id) = cloudfront("PUT", "/2016-11-25/distribution/{Id}/config")
UpdateDistribution2016_11_25(DistributionConfig, Id, args) = cloudfront("PUT", "/2016-11-25/distribution/{Id}/config", args)
UpdateDistribution2016_11_25(a...; b...) = UpdateDistribution2016_11_25(a..., b)

"""
    CreateDistributionWithTags2016_11_25

Create a new distribution with tags.

Required Parameters:
{
  "DistributionConfigWithTags": "The distribution's configuration information. "
}


Optional Parameters:
{}

"""
CreateDistributionWithTags2016_11_25(DistributionConfigWithTags) = cloudfront("POST", "/2016-11-25/distribution?WithTags")
CreateDistributionWithTags2016_11_25(DistributionConfigWithTags, args) = cloudfront("POST", "/2016-11-25/distribution?WithTags", args)
CreateDistributionWithTags2016_11_25(a...; b...) = CreateDistributionWithTags2016_11_25(a..., b)

"""
    DeleteDistribution2016_11_25

Delete a distribution. 

Required Parameters:
{
  "Id": "The distribution ID. "
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header that you received when you disabled the distribution. For example: E2QWRUHAPOMQZL. "
}

"""
DeleteDistribution2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/distribution/{Id}")
DeleteDistribution2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/distribution/{Id}", args)
DeleteDistribution2016_11_25(a...; b...) = DeleteDistribution2016_11_25(a..., b)

"""
    ListDistributionsByWebACLId2016_11_25

List the distributions that are associated with a specified AWS WAF web ACL. 

Required Parameters:
{
  "WebACLId": "The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify \"null\" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. "
}


Optional Parameters:
{
  "Marker": "Use Marker and MaxItems to control pagination of results. If you have more than MaxItems distributions that satisfy the request, the response includes a NextMarker element. To get the next page of results, submit another request. For the value of Marker, specify the value of NextMarker from the last response. (For the first request, omit Marker.) ",
  "MaxItems": "The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100."
}

"""
ListDistributionsByWebACLId2016_11_25(WebACLId) = cloudfront("GET", "/2016-11-25/distributionsByWebACLId/{WebACLId}")
ListDistributionsByWebACLId2016_11_25(WebACLId, args) = cloudfront("GET", "/2016-11-25/distributionsByWebACLId/{WebACLId}", args)
ListDistributionsByWebACLId2016_11_25(a...; b...) = ListDistributionsByWebACLId2016_11_25(a..., b)

"""
    DeleteStreamingDistribution2016_11_25

Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.  To delete an RTMP distribution using the CloudFront API:   Disable the RTMP distribution.   Submit a GET Streaming Distribution Config request to get the current configuration and the Etag header for the distribution.    Update the XML document that was returned in the response to your GET Streaming Distribution Config request to change the value of Enabled to false.   Submit a PUT Streaming Distribution Config request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to the PUT Streaming Distribution Config request to confirm that the distribution was successfully disabled.   Submit a GET Streaming Distribution Config request to confirm that your changes have propagated. When propagation is complete, the value of Status is Deployed.   Submit a DELETE Streaming Distribution request. Set the value of the HTTP If-Match header to the value of the ETag header that CloudFront returned when you submitted the GET Streaming Distribution Config request in Step 2.   Review the response to your DELETE Streaming Distribution request to confirm that the distribution was successfully deleted.   For information about deleting a distribution using the CloudFront console, see Deleting a Distribution in the Amazon CloudFront Developer Guide.

Required Parameters:
{
  "Id": "The distribution ID. "
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header that you received when you disabled the streaming distribution. For example: E2QWRUHAPOMQZL."
}

"""
DeleteStreamingDistribution2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/streaming-distribution/{Id}")
DeleteStreamingDistribution2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/streaming-distribution/{Id}", args)
DeleteStreamingDistribution2016_11_25(a...; b...) = DeleteStreamingDistribution2016_11_25(a..., b)

"""
    CreateDistribution2016_11_25

Creates a new web distribution. Send a GET request to the /CloudFront API version/distribution/distribution ID resource.

Required Parameters:
{
  "DistributionConfig": "The distribution's configuration information."
}


Optional Parameters:
{}

"""
CreateDistribution2016_11_25(DistributionConfig) = cloudfront("POST", "/2016-11-25/distribution")
CreateDistribution2016_11_25(DistributionConfig, args) = cloudfront("POST", "/2016-11-25/distribution", args)
CreateDistribution2016_11_25(a...; b...) = CreateDistribution2016_11_25(a..., b)

"""
    CreateCloudFrontOriginAccessIdentity2016_11_25

Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see Serving Private Content through CloudFront in the Amazon CloudFront Developer Guide.

Required Parameters:
{
  "CloudFrontOriginAccessIdentityConfig": "The current configuration information for the identity."
}


Optional Parameters:
{}

"""
CreateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig) = cloudfront("POST", "/2016-11-25/origin-access-identity/cloudfront")
CreateCloudFrontOriginAccessIdentity2016_11_25(CloudFrontOriginAccessIdentityConfig, args) = cloudfront("POST", "/2016-11-25/origin-access-identity/cloudfront", args)
CreateCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = CreateCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
    UpdateStreamingDistribution2016_11_25

Update a streaming distribution. 

Required Parameters:
{
  "Id": "The streaming distribution's id.",
  "StreamingDistributionConfig": "The streaming distribution's configuration information."
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header that you received when retrieving the streaming distribution's configuration. For example: E2QWRUHAPOMQZL."
}

"""
UpdateStreamingDistribution2016_11_25(Id, StreamingDistributionConfig) = cloudfront("PUT", "/2016-11-25/streaming-distribution/{Id}/config")
UpdateStreamingDistribution2016_11_25(Id, StreamingDistributionConfig, args) = cloudfront("PUT", "/2016-11-25/streaming-distribution/{Id}/config", args)
UpdateStreamingDistribution2016_11_25(a...; b...) = UpdateStreamingDistribution2016_11_25(a..., b)

"""
    ListCloudFrontOriginAccessIdentities2016_11_25

Lists origin access identities.

Required Parameters:
{}


Optional Parameters:
{
  "Marker": "Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the Marker to the value of the NextMarker from the current page's response (which is also the ID of the last identity on that page).",
  "MaxItems": "The maximum number of origin access identities you want in the response body. "
}

"""
ListCloudFrontOriginAccessIdentities2016_11_25() = cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront")
ListCloudFrontOriginAccessIdentities2016_11_25(args) cloudfront("GET", "/2016-11-25/origin-access-identity/cloudfront", args)
ListCloudFrontOriginAccessIdentities2016_11_25(a...; b...) = ListCloudFrontOriginAccessIdentities2016_11_25(a..., b)

"""
    DeleteCloudFrontOriginAccessIdentity2016_11_25

Delete an origin access identity. 

Required Parameters:
{
  "Id": "The origin access identity's ID."
}


Optional Parameters:
{
  "IfMatch": "The value of the ETag header you received from a previous GET or PUT request. For example: E2QWRUHAPOMQZL."
}

"""
DeleteCloudFrontOriginAccessIdentity2016_11_25(Id) = cloudfront("DELETE", "/2016-11-25/origin-access-identity/cloudfront/{Id}")
DeleteCloudFrontOriginAccessIdentity2016_11_25(Id, args) = cloudfront("DELETE", "/2016-11-25/origin-access-identity/cloudfront/{Id}", args)
DeleteCloudFrontOriginAccessIdentity2016_11_25(a...; b...) = DeleteCloudFrontOriginAccessIdentity2016_11_25(a..., b)

"""
    CreateStreamingDistributionWithTags2016_11_25

Create a new streaming distribution with tags.

Required Parameters:
{
  "StreamingDistributionConfigWithTags": " The streaming distribution's configuration information. "
}


Optional Parameters:
{}

"""
CreateStreamingDistributionWithTags2016_11_25(StreamingDistributionConfigWithTags) = cloudfront("POST", "/2016-11-25/streaming-distribution?WithTags")
CreateStreamingDistributionWithTags2016_11_25(StreamingDistributionConfigWithTags, args) = cloudfront("POST", "/2016-11-25/streaming-distribution?WithTags", args)
CreateStreamingDistributionWithTags2016_11_25(a...; b...) = CreateStreamingDistributionWithTags2016_11_25(a..., b)

"""
    ListStreamingDistributions2016_11_25

List streaming distributions. 

Required Parameters:
{}


Optional Parameters:
{
  "Marker": "The value that you provided for the Marker request parameter.",
  "MaxItems": "The value that you provided for the MaxItems request parameter."
}

"""
ListStreamingDistributions2016_11_25() = cloudfront("GET", "/2016-11-25/streaming-distribution")
ListStreamingDistributions2016_11_25(args) cloudfront("GET", "/2016-11-25/streaming-distribution", args)
ListStreamingDistributions2016_11_25(a...; b...) = ListStreamingDistributions2016_11_25(a..., b)
