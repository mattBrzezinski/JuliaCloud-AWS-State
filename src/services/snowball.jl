include("../AWSCorePrototypeServices.jl")
using .Services: snowball

"""
    CreateCluster()

Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.

Required Parameters
{
  "AddressId": "The ID for the address that you want the cluster shipped to.",
  "ShippingOption": "The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge device, rather it represents how quickly each device moves to its destination while in transit. Regional shipping speeds are as follows:    In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snowballs are delivered in one to seven days.   In the United States of America (US), you have access to one-day shipping and two-day shipping.     In Australia, you have access to express shipping. Typically, devices shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snowball Edges are delivered in one to seven days.   In the US, you have access to one-day shipping and two-day shipping.  ",
  "Resources": "The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language. ",
  "RoleARN": "The RoleARN that you want to associate with this cluster. RoleArn values are created by using the CreateRole API action in AWS Identity and Access Management (IAM).",
  "JobType": "The type of job for this cluster. Currently, the only job type supported for clusters is LOCAL_USE."
}

Optional Parameters
{
  "Description": "An optional description of this specific cluster, for example Environmental Data Cluster-01.",
  "SnowballType": "The type of AWS Snowball device to use for this cluster.   For cluster jobs, AWS Snowball currently supports only the EDGE device type. ",
  "TaxDocuments": "The tax documents required in your AWS Region.",
  "Notification": "The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.",
  "ForwardingAddressId": "The forwarding address ID for a cluster. This field is not supported in most regions.",
  "KmsKeyARN": "The KmsKeyARN value that you want to associate with this cluster. KmsKeyARN values are created by using the CreateKey API action in AWS Key Management Service (AWS KMS). "
}
"""
CreateCluster(args) = snowball("CreateCluster", args)

"""
    ListCompatibleImages()

This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snowball Edge device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.

Optional Parameters
{
  "MaxResults": "The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.",
  "NextToken": "HTTP requests are stateless. To identify what object comes \"next\" in the list of compatible images, you can specify a value for NextToken as the starting point for your list of returned images."
}
"""

ListCompatibleImages() = snowball("ListCompatibleImages")
ListCompatibleImages(args) = snowball("ListCompatibleImages", args)

"""
    CreateAddress()

Creates an address for a Snowball to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.

Required Parameters
{
  "Address": "The address that you want the Snowball shipped to."
}
"""
CreateAddress(args) = snowball("CreateAddress", args)

"""
    ListClusterJobs()

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.

Required Parameters
{
  "ClusterId": "The 39-character ID for the cluster that you want to list, for example CID123e4567-e89b-12d3-a456-426655440000."
}

Optional Parameters
{
  "MaxResults": "The number of JobListEntry objects to return.",
  "NextToken": "HTTP requests are stateless. To identify what object comes \"next\" in the list of JobListEntry objects, you have the option of specifying NextToken as the starting point for your returned list."
}
"""
ListClusterJobs(args) = snowball("ListClusterJobs", args)

"""
    DescribeAddress()

Takes an AddressId and returns specific details about that address in the form of an Address object.

Required Parameters
{
  "AddressId": "The automatically generated ID for a specific address."
}
"""
DescribeAddress(args) = snowball("DescribeAddress", args)

"""
    CancelJob()

Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.

Required Parameters
{
  "JobId": "The 39-character job ID for the job that you want to cancel, for example JID123e4567-e89b-12d3-a456-426655440000."
}
"""
CancelJob(args) = snowball("CancelJob", args)

"""
    GetSnowballUsage()

Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use. The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
"""

GetSnowballUsage() = snowball("GetSnowballUsage")
GetSnowballUsage(args) = snowball("GetSnowballUsage", args)

"""
    CreateJob()

Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster. 

Optional Parameters
{
  "DeviceConfiguration": "Defines the device configuration for an AWS Snowcone job.",
  "TaxDocuments": "The tax documents required in your AWS Region.",
  "SnowballCapacityPreference": "If your job is being created in one of the US regions, you have the option of specifying what size Snowball you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.",
  "KmsKeyARN": "The KmsKeyARN that you want to associate with this job. KmsKeyARNs are created using the CreateKey AWS Key Management Service (KMS) API action.",
  "ShippingOption": "The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snowball, rather it represents how quickly the Snowball moves to its destination while in transit. Regional shipping speeds are as follows:   In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.   In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.   In India, Snowballs are delivered in one to seven days.   In the US, you have access to one-day shipping and two-day shipping.  ",
  "Notification": "Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.",
  "SnowballType": "The type of AWS Snowball device to use for this job.   For cluster jobs, AWS Snowball currently supports only the EDGE device type.  The type of AWS Snowball device to use for this job. Currently, the only supported device type for cluster jobs is EDGE. For more information, see Snowball Edge Device Options in the Snowball Edge Developer Guide.",
  "ClusterId": "The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this clusterId value. The other job attributes are inherited from the cluster.",
  "Description": "Defines an optional description of this specific job, for example Important Photos 2016-08-11.",
  "AddressId": "The ID for the address that you want the Snowball shipped to.",
  "Resources": "Defines the Amazon S3 buckets associated with this job. With IMPORT jobs, you specify the bucket or buckets that your transferred data will be imported into. With EXPORT jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a KeyRange value. If you choose to export a range, you define the length of the range by providing either an inclusive BeginMarker value, an inclusive EndMarker value, or both. Ranges are UTF-8 binary sorted.",
  "RoleARN": "The RoleARN that you want to associate with this job. RoleArns are created using the CreateRole AWS Identity and Access Management (IAM) API action.",
  "ForwardingAddressId": "The forwarding address ID for a job. This field is not supported in most regions.",
  "JobType": "Defines the type of job that you're creating. "
}
"""

CreateJob() = snowball("CreateJob")
CreateJob(args) = snowball("CreateJob", args)

"""
    UpdateCluster()

While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.

Required Parameters
{
  "ClusterId": "The cluster ID of the cluster that you want to update, for example CID123e4567-e89b-12d3-a456-426655440000."
}

Optional Parameters
{
  "Description": "The updated description of this cluster.",
  "AddressId": "The ID of the updated Address object.",
  "ShippingOption": "The updated shipping option value of this cluster's ShippingDetails object.",
  "RoleARN": "The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the CreateRole API action in AWS Identity and Access Management (IAM).",
  "Resources": "The updated arrays of JobResource objects that can include updated S3Resource objects or LambdaResource objects.",
  "Notification": "The new or updated Notification object.",
  "ForwardingAddressId": "The updated ID for the forwarding address for a cluster. This field is not supported in most regions."
}
"""
UpdateCluster(args) = snowball("UpdateCluster", args)

"""
    GetJobUnlockCode()

Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.

Required Parameters
{
  "JobId": "The ID for the job that you want to get the UnlockCode value for, for example JID123e4567-e89b-12d3-a456-426655440000."
}
"""
GetJobUnlockCode(args) = snowball("GetJobUnlockCode", args)

"""
    UpdateJob()

While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.

Required Parameters
{
  "JobId": "The job ID of the job that you want to update, for example JID123e4567-e89b-12d3-a456-426655440000."
}

Optional Parameters
{
  "Description": "The updated description of this job's JobMetadata object.",
  "AddressId": "The ID of the updated Address object.",
  "ShippingOption": "The updated shipping option value of this job's ShippingDetails object.",
  "RoleARN": "The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the CreateRoleAWS Identity and Access Management (IAM) API action.",
  "Notification": "The new or updated Notification object.",
  "Resources": "The updated JobResource object, or the updated JobResource object. ",
  "ForwardingAddressId": "The updated ID for the forwarding address for a job. This field is not supported in most regions.",
  "SnowballCapacityPreference": "The updated SnowballCapacityPreference of this job's JobMetadata object. The 50 TB Snowballs are only available in the US regions."
}
"""
UpdateJob(args) = snowball("UpdateJob", args)

"""
    DescribeJob()

Returns information about a specific job including shipping information, job status, and other important metadata. 

Required Parameters
{
  "JobId": "The automatically generated ID for a job, for example JID123e4567-e89b-12d3-a456-426655440000."
}
"""
DescribeJob(args) = snowball("DescribeJob", args)

"""
    DescribeAddresses()

Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.

Optional Parameters
{
  "MaxResults": "The number of ADDRESS objects to return.",
  "NextToken": "HTTP requests are stateless. To identify what object comes \"next\" in the list of ADDRESS objects, you have the option of specifying a value for NextToken as the starting point for your list of returned addresses."
}
"""

DescribeAddresses() = snowball("DescribeAddresses")
DescribeAddresses(args) = snowball("DescribeAddresses", args)

"""
    DescribeCluster()

Returns information about a specific cluster including shipping information, cluster status, and other important metadata.

Required Parameters
{
  "ClusterId": "The automatically generated ID for a cluster."
}
"""
DescribeCluster(args) = snowball("DescribeCluster", args)

"""
    GetJobManifest()

Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.

Required Parameters
{
  "JobId": "The ID for a job that you want to get the manifest file for, for example JID123e4567-e89b-12d3-a456-426655440000."
}
"""
GetJobManifest(args) = snowball("GetJobManifest", args)

"""
    ListJobs()

Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.

Optional Parameters
{
  "MaxResults": "The number of JobListEntry objects to return.",
  "NextToken": "HTTP requests are stateless. To identify what object comes \"next\" in the list of JobListEntry objects, you have the option of specifying NextToken as the starting point for your returned list."
}
"""

ListJobs() = snowball("ListJobs")
ListJobs(args) = snowball("ListJobs", args)

"""
    GetSoftwareUpdates()

Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.

Required Parameters
{
  "JobId": "The ID for a job that you want to get the software update file for, for example JID123e4567-e89b-12d3-a456-426655440000."
}
"""
GetSoftwareUpdates(args) = snowball("GetSoftwareUpdates", args)

"""
    CancelCluster()

Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.

Required Parameters
{
  "ClusterId": "The 39-character ID for the cluster that you want to cancel, for example CID123e4567-e89b-12d3-a456-426655440000."
}
"""
CancelCluster(args) = snowball("CancelCluster", args)

"""
    ListClusters()

Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.

Optional Parameters
{
  "MaxResults": "The number of ClusterListEntry objects to return.",
  "NextToken": "HTTP requests are stateless. To identify what object comes \"next\" in the list of ClusterListEntry objects, you have the option of specifying NextToken as the starting point for your returned list."
}
"""

ListClusters() = snowball("ListClusters")
ListClusters(args) = snowball("ListClusters", args)
