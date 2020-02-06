include("../AWSCorePrototypeServices.jl")
using .Services: s3_control

"""
Retrieves the PublicAccessBlock configuration for an Amazon Web Services account.
"""
GetPublicAccessBlock(AccountId) = s3_control("GET", "/v20180820/configuration/publicAccessBlock")
GetPublicAccessBlock(AccountId, args) = s3_control("GET", "/v20180820/configuration/publicAccessBlock", args)
GetPublicAccessBlock(a...; b...) = GetPublicAccessBlock(a..., b)

"""
Creates an access point and associates it with the specified bucket.
"""
CreateAccessPoint(AccountId, Name, Bucket) = s3_control("PUT", "/v20180820/accesspoint/$name")
CreateAccessPoint(AccountId, Name, Bucket, args) = s3_control("PUT", "/v20180820/accesspoint/$name", args)
CreateAccessPoint(a...; b...) = CreateAccessPoint(a..., b)

"""
Returns the access point policy associated with the specified access point.
"""
GetAccessPointPolicy(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name/policy")
GetAccessPointPolicy(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/$name/policy", args)
GetAccessPointPolicy(a...; b...) = GetAccessPointPolicy(a..., b)

"""
Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point.
"""
PutAccessPointPolicy(AccountId, Name, Policy) = s3_control("PUT", "/v20180820/accesspoint/$name/policy")
PutAccessPointPolicy(AccountId, Name, Policy, args) = s3_control("PUT", "/v20180820/accesspoint/$name/policy", args)
PutAccessPointPolicy(a...; b...) = PutAccessPointPolicy(a..., b)

"""
Deletes the specified access point.
"""
DeleteAccessPoint(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/$name")
DeleteAccessPoint(AccountId, Name, args) = s3_control("DELETE", "/v20180820/accesspoint/$name", args)
DeleteAccessPoint(a...; b...) = DeleteAccessPoint(a..., b)

"""
Returns configuration information about the specified access point.
"""
GetAccessPoint(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name")
GetAccessPoint(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/$name", args)
GetAccessPoint(a...; b...) = GetAccessPoint(a..., b)

"""
Updates an existing job's priority.
"""
UpdateJobPriority(AccountId, JobId, Priority) = s3_control("POST", "/v20180820/jobs/$id/priority")
UpdateJobPriority(AccountId, JobId, Priority, args) = s3_control("POST", "/v20180820/jobs/$id/priority", args)
UpdateJobPriority(a...; b...) = UpdateJobPriority(a..., b)

"""
Creates an Amazon S3 batch operations job.
"""
CreateJob(AccountId, Operation, Report, ClientRequestToken, Manifest, Priority, RoleArn) = s3_control("POST", "/v20180820/jobs")
CreateJob(AccountId, Operation, Report, ClientRequestToken, Manifest, Priority, RoleArn, args) = s3_control("POST", "/v20180820/jobs", args)
CreateJob(a...; b...) = CreateJob(a..., b)

"""
Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1000 access points (or the number specified in maxResults, whichever is less), then the response will include a continuation token that you can use to list the additional access points.
"""
ListAccessPoints(AccountId) = s3_control("GET", "/v20180820/accesspoint")
ListAccessPoints(AccountId, args) = s3_control("GET", "/v20180820/accesspoint", args)
ListAccessPoints(a...; b...) = ListAccessPoints(a..., b)

"""
Deletes the access point policy for the specified access point.
"""
DeleteAccessPointPolicy(AccountId, Name) = s3_control("DELETE", "/v20180820/accesspoint/$name/policy")
DeleteAccessPointPolicy(AccountId, Name, args) = s3_control("DELETE", "/v20180820/accesspoint/$name/policy", args)
DeleteAccessPointPolicy(a...; b...) = DeleteAccessPointPolicy(a..., b)

"""
Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see Managing Data Access with Amazon S3 Access Points in the Amazon Simple Storage Service Developer Guide.
"""
GetAccessPointPolicyStatus(AccountId, Name) = s3_control("GET", "/v20180820/accesspoint/$name/policyStatus")
GetAccessPointPolicyStatus(AccountId, Name, args) = s3_control("GET", "/v20180820/accesspoint/$name/policyStatus", args)
GetAccessPointPolicyStatus(a...; b...) = GetAccessPointPolicyStatus(a..., b)

"""
Retrieves the configuration parameters and status for a batch operations job.
"""
DescribeJob(AccountId, JobId) = s3_control("GET", "/v20180820/jobs/$id")
DescribeJob(AccountId, JobId, args) = s3_control("GET", "/v20180820/jobs/$id", args)
DescribeJob(a...; b...) = DescribeJob(a..., b)

"""
Removes the PublicAccessBlock configuration for an Amazon Web Services account.
"""
DeletePublicAccessBlock(AccountId) = s3_control("DELETE", "/v20180820/configuration/publicAccessBlock")
DeletePublicAccessBlock(AccountId, args) = s3_control("DELETE", "/v20180820/configuration/publicAccessBlock", args)
DeletePublicAccessBlock(a...; b...) = DeletePublicAccessBlock(a..., b)

"""
Lists current jobs and jobs that have ended within the last 30 days for the AWS account making the request.
"""
ListJobs(AccountId) = s3_control("GET", "/v20180820/jobs")
ListJobs(AccountId, args) = s3_control("GET", "/v20180820/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account.
"""
PutPublicAccessBlock(PublicAccessBlockConfiguration, AccountId) = s3_control("PUT", "/v20180820/configuration/publicAccessBlock")
PutPublicAccessBlock(PublicAccessBlockConfiguration, AccountId, args) = s3_control("PUT", "/v20180820/configuration/publicAccessBlock", args)
PutPublicAccessBlock(a...; b...) = PutPublicAccessBlock(a..., b)

"""
Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job.
"""
UpdateJobStatus(AccountId, JobId, RequestedJobStatus) = s3_control("POST", "/v20180820/jobs/$id/status")
UpdateJobStatus(AccountId, JobId, RequestedJobStatus, args) = s3_control("POST", "/v20180820/jobs/$id/status", args)
UpdateJobStatus(a...; b...) = UpdateJobStatus(a..., b)
