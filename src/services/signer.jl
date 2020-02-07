include("../AWSCorePrototypeServices.jl")
using .Services: signer

"""
Returns a list of the tags associated with a signing profile resource.
"""
ListTagsForResource(resourceArn) = signer("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = signer("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns information on a specific signing profile.
"""
GetSigningProfile(profileName) = signer("GET", "/signing-profiles/$profileName")
GetSigningProfile(profileName, args) = signer("GET", "/signing-profiles/$profileName", args)
GetSigningProfile(a...; b...) = GetSigningProfile(a..., b)

"""
Returns information on a specific signing platform.
"""
GetSigningPlatform(platformId) = signer("GET", "/signing-platforms/$platformId")
GetSigningPlatform(platformId, args) = signer("GET", "/signing-platforms/$platformId", args)
GetSigningPlatform(a...; b...) = GetSigningPlatform(a..., b)

"""
Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
"""
ListSigningPlatforms() = signer("GET", "/signing-platforms")
ListSigningPlatforms(, args) = signer("GET", "/signing-platforms", args)
ListSigningPlatforms(a...; b...) = ListSigningPlatforms(a..., b)

"""
Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.
"""
CancelSigningProfile(profileName) = signer("DELETE", "/signing-profiles/$profileName")
CancelSigningProfile(profileName, args) = signer("DELETE", "/signing-profiles/$profileName", args)
CancelSigningProfile(a...; b...) = CancelSigningProfile(a..., b)

"""
Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. You specify the signing profile using its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.
"""
TagResource(resourceArn, tags) = signer("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = signer("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Remove one or more tags from a signing profile. Specify a list of tag keys to remove the tags.
"""
UntagResource(resourceArn, tagKeys) = signer("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = signer("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 
"""
ListSigningJobs() = signer("GET", "/signing-jobs")
ListSigningJobs(, args) = signer("GET", "/signing-jobs", args)
ListSigningJobs(a...; b...) = ListSigningJobs(a..., b)

"""
Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the StartSigningJob operation. 
"""
DescribeSigningJob(jobId) = signer("GET", "/signing-jobs/$jobId")
DescribeSigningJob(jobId, args) = signer("GET", "/signing-jobs/$jobId", args)
DescribeSigningJob(a...; b...) = DescribeSigningJob(a..., b)

"""
Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
"""
ListSigningProfiles() = signer("GET", "/signing-profiles")
ListSigningProfiles(, args) = signer("GET", "/signing-profiles", args)
ListSigningProfiles(a...; b...) = ListSigningProfiles(a..., b)

"""
Creates a signing profile. A signing profile is a code signing template that can be used to carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html 
"""
PutSigningProfile(profileName, signingMaterial, platformId) = signer("PUT", "/signing-profiles/$profileName")
PutSigningProfile(profileName, signingMaterial, platformId, args) = signer("PUT", "/signing-profiles/$profileName", args)
PutSigningProfile(a...; b...) = PutSigningProfile(a..., b)

"""
Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:     You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the Amazon S3 Getting Started Guide.    Your S3 source bucket must be version enabled.   You must create an S3 destination bucket. Code signing uses your S3 destination bucket to write your signed code.   You specify the name of the source and destination buckets when calling the StartSigningJob operation.   You must also specify a request token that identifies your request to code signing.   You can call the DescribeSigningJob and the ListSigningJobs actions after you call StartSigningJob. For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/ 
"""
StartSigningJob(source, destination, clientRequestToken) = signer("POST", "/signing-jobs")
StartSigningJob(source, destination, clientRequestToken, args) = signer("POST", "/signing-jobs", args)
StartSigningJob(a...; b...) = StartSigningJob(a..., b)
