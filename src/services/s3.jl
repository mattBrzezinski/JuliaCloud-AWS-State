include("../AWSCorePrototypeServices.jl")
using .Services: s3

"""
    PutBucketCors()

Sets the cors configuration for your bucket. If the configuration exists, Amazon S3 replaces it. To use this operation, you must be allowed to perform the s3:PutBucketCORS action. By default, the bucket owner has this permission and can grant it to others. You set this configuration on a bucket so that the bucket can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your Amazon S3 bucket at my.example.bucket.com by using the browser's XMLHttpRequest capability. To enable cross-origin resource sharing (CORS) on a bucket, you add the cors subresource to the bucket. The cors subresource is an XML document in which you configure rules that identify origins and the HTTP methods that can be executed on your bucket. The document is limited to 64 KB in size.  When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS request) against a bucket, it evaluates the cors configuration on the bucket and uses the first CORSRule rule that matches the incoming browser request to enable a cross-origin request. For a rule to match, the following conditions must be met:   The request's Origin header must match AllowedOrigin elements.   The request method (for example, GET, PUT, HEAD, and so on) or the Access-Control-Request-Method header in case of a pre-flight OPTIONS request must be one of the AllowedMethod elements.    Every header specified in the Access-Control-Request-Headers request header of a pre-flight request must match an AllowedHeader element.     For more information about CORS, go to Enabling Cross-Origin Resource Sharing in the Amazon Simple Storage Service Developer Guide.  Related Resources     GetBucketCors     DeleteBucketCors     RESTOPTIONSobject   

Required Parameters
{
  "CORSConfiguration": "Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information, see Enabling Cross-Origin Resource Sharing in the Amazon Simple Storage Service Developer Guide.",
  "Bucket": "Specifies the bucket impacted by the corsconfiguration."
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to RFC 1864. "
}
"""PutBucketCors(CORSConfiguration, Bucket) = s3("PUT", "/{Bucket}?cors")
PutBucketCors(CORSConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?cors", args)
PutBucketCors(a...; b...) = PutBucketCors(a..., b)

"""
    PutObjectTagging()

Sets the supplied tag-set to an object that already exists in a bucket A tag is a key-value pair. You can associate tags with an object by sending a PUT request against the tagging subresource that is associated with the object. You can retrieve tags by sending a GET request. For more information, see GetObjectTagging. For tagging-related restrictions related to characters and encodings, see Tag Restrictions. Note that Amazon S3 limits the maximum number of tags to 10 tags per object. To use this operation, you must have permission to perform the s3:PutObjectTagging action. By default, the bucket owner has this permission and can grant this permission to others. To put tags of any other version, use the versionId query parameter. You also need permission for the s3:PutObjectVersionTagging action. For information about the Amazon S3 object tagging feature, see Object Tagging.  Special Errors          Code: InvalidTagError      Cause: The tag provided was not a valid tag. This error can occur if the tag did not pass input validation. For more information, see Object Tagging.            Code: MalformedXMLError      Cause: The XML provided does not match the schema.         Code: OperationAbortedError      Cause: A conflicting conditional operation is currently in progress against this resource. Please try again.         Code: InternalError     Cause: The service was unable to apply the provided tag to the object.       Related Resources     GetObjectTagging   

Required Parameters
{
  "Tagging": "Container for the TagSet and Tag elements",
  "Bucket": "The bucket name containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Name of the tag."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash for the request body.",
  "VersionId": "The versionId of the object that the tag-set will be added to."
}
"""PutObjectTagging(Tagging, Bucket, Key) = s3("PUT", "/{Bucket}/{Key+}?tagging")
PutObjectTagging(Tagging, Bucket, Key, args) = s3("PUT", "/{Bucket}/{Key+}?tagging", args)
PutObjectTagging(a...; b...) = PutObjectTagging(a..., b)

"""
    GetPublicAccessBlock()

Retrieves the PublicAccessBlock configuration for an Amazon S3 bucket. To use this operation, you must have the s3:GetBucketPublicAccessBlock permission. For more information about Amazon S3 permissions, see Specifying Permissions in a Policy.  When Amazon S3 evaluates the PublicAccessBlock configuration for a bucket or an object, it checks the PublicAccessBlock configuration for both the bucket (or the bucket that contains the object) and the bucket owner's account. If the PublicAccessBlock settings are different between the bucket and the account, Amazon S3 uses the most restrictive combination of the bucket-level and account-level settings.  For more information about when Amazon S3 considers a bucket or an object public, see The Meaning of "Public". The following operations are related to GetPublicAccessBlock:    Using Amazon S3 Block Public Access     PutPublicAccessBlock     GetPublicAccessBlock     DeletePublicAccessBlock   

Required Parameters
{
  "Bucket": "The name of the Amazon S3 bucket whose PublicAccessBlock configuration you want to retrieve. "
}
"""GetPublicAccessBlock(Bucket) = s3("GET", "/{Bucket}?publicAccessBlock")
GetPublicAccessBlock(Bucket, args) = s3("GET", "/{Bucket}?publicAccessBlock", args)
GetPublicAccessBlock(a...; b...) = GetPublicAccessBlock(a..., b)

"""
    CompleteMultipartUpload()

Completes a multipart upload by assembling previously uploaded parts. You first initiate the multipart upload and then upload all parts using the UploadPart operation. After successfully uploading all relevant parts of an upload, you call this operation to complete the upload. Upon receiving this request, Amazon S3 concatenates all the parts in ascending order by part number to create a new object. In the Complete Multipart Upload request, you must provide the parts list. You must ensure that the parts list is complete. This operation concatenates the parts that you provide in the list. For each part in the list, you must provide the part number and the ETag value, returned after that part was uploaded. Processing of a Complete Multipart Upload request could take several minutes to complete. After Amazon S3 begins processing the request, it sends an HTTP response header that specifies a 200 OK response. While processing is in progress, Amazon S3 periodically sends white space characters to keep the connection from timing out. Because a request could fail after the initial 200 OK response has been sent, it is important that you check the response body to determine whether the request succeeded. Note that if CompleteMultipartUpload fails, applications should be prepared to retry the failed requests. For more information, see Amazon S3 Error Best Practices. For more information about multipart uploads, see Uploading Objects Using Multipart Upload. For information about permissions required to use the multipart upload API, see Multipart Upload API and Permissions.  GetBucketLifecycle has the following special errors:   Error code: EntityTooSmall    Description: Your proposed upload is smaller than the minimum allowed object size. Each part must be at least 5 MB in size, except the last part.   400 Bad Request     Error code: InvalidPart    Description: One or more of the specified parts could not be found. The part might not have been uploaded, or the specified entity tag might not have matched the part's entity tag.   400 Bad Request     Error code: InvalidPartOrder    Description: The list of parts was not in ascending order. The parts list must be specified in order by part number.   400 Bad Request     Error code: NoSuchUpload    Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.   404 Not Found     The following operations are related to DeleteBucketMetricsConfiguration:    CreateMultipartUpload     UploadPart     AbortMultipartUpload     ListParts     ListMultipartUploads   

Required Parameters
{
  "UploadId": "ID for the initiated multipart upload.",
  "Bucket": "Name of the bucket to which the multipart upload was initiated.",
  "Key": "Object key for which the multipart upload was initiated."
}

Optional Parameters
{
  "MultipartUpload": "The container for the multipart upload request information.",
  "RequestPayer": ""
}
"""CompleteMultipartUpload(UploadId, Bucket, Key) = s3("POST", "/{Bucket}/{Key+}")
CompleteMultipartUpload(UploadId, Bucket, Key, args) = s3("POST", "/{Bucket}/{Key+}", args)
CompleteMultipartUpload(a...; b...) = CompleteMultipartUpload(a..., b)

"""
    PutBucketWebsite()

Sets the configuration of the website that is specified in the website subresource. To configure a bucket as a website, you can add this subresource on the bucket with website configuration information such as the file name of the index document and any redirect rules. For more information, see Hosting Websites on Amazon S3. This PUT operation requires the S3:PutBucketWebsite permission. By default, only the bucket owner can configure the website attached to a bucket; however, bucket owners can allow other users to set the website configuration by writing a bucket policy that grants them the S3:PutBucketWebsite permission. To redirect all website requests sent to the bucket's website endpoint, you add a website configuration with the following elements. Because all requests are sent to another website, you don't need to provide index document name for the bucket.    WebsiteConfiguration     RedirectAllRequestsTo     HostName     Protocol    If you want granular control over redirects, you can use the following elements to add routing rules that describe conditions for redirecting requests and information about the redirect destination. In this case, the website configuration must provide an index document for the bucket, because some requests might not be redirected.     WebsiteConfiguration     IndexDocument     Suffix     ErrorDocument     Key     RoutingRules     RoutingRule     Condition     HttpErrorCodeReturnedEquals     KeyPrefixEquals     Redirect     Protocol     HostName     ReplaceKeyPrefixWith     ReplaceKeyWith     HttpRedirectCode   

Required Parameters
{
  "WebsiteConfiguration": "Container for the request.",
  "Bucket": "The bucket name."
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see RFC 1864."
}
"""PutBucketWebsite(WebsiteConfiguration, Bucket) = s3("PUT", "/{Bucket}?website")
PutBucketWebsite(WebsiteConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?website", args)
PutBucketWebsite(a...; b...) = PutBucketWebsite(a..., b)

"""
    GetObjectLockConfiguration()

Gets the Object Lock configuration for a bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket. For more information, see Locking Objects.

Required Parameters
{
  "Bucket": "The bucket whose Object Lock configuration you want to retrieve."
}
"""GetObjectLockConfiguration(Bucket) = s3("GET", "/{Bucket}?object-lock")
GetObjectLockConfiguration(Bucket, args) = s3("GET", "/{Bucket}?object-lock", args)
GetObjectLockConfiguration(a...; b...) = GetObjectLockConfiguration(a..., b)

"""
    PutBucketAnalyticsConfiguration()

Sets an analytics configuration for the bucket (specified by the analytics configuration ID). You can have up to 1,000 analytics configurations per bucket. You can choose to have storage class analysis export analysis reports sent to a comma-separated values (CSV) flat file. See the DataExport request element. Reports are updated daily and are based on the object filters that you configure. When selecting data export, you specify a destination bucket and an optional destination prefix where the file is written. You can export the data to a destination bucket in a different account. However, the destination bucket must be in the same Region as the bucket that you are making the PUT analytics configuration to. For more information, see Amazon S3 Analytics – Storage Class Analysis.   You must create a bucket policy on the destination bucket where the exported file is written to grant permissions to Amazon S3 to write objects to the bucket. For an example policy, see Granting Permissions for Amazon S3 Inventory and Storage Class Analysis.  To use this operation, you must have permissions to perform the s3:PutAnalyticsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  Special Errors       HTTP Error: HTTP 400 Bad Request     Code: InvalidArgument     Cause: Invalid argument.         HTTP Error: HTTP 400 Bad Request     Code: TooManyConfigurations     Cause: You are attempting to create a new configuration but have already reached the 1,000-configuration limit.         HTTP Error: HTTP 403 Forbidden     Code: AccessDenied     Cause: You are not the owner of the specified bucket, or you do not have the s3:PutAnalyticsConfiguration bucket permission to set the configuration on the bucket.       Related Resources               

Required Parameters
{
  "Id": "The ID that identifies the analytics configuration.",
  "AnalyticsConfiguration": "The configuration and any analyses for the analytics filter.",
  "Bucket": "The name of the bucket to which an analytics configuration is stored."
}
"""PutBucketAnalyticsConfiguration(Id, AnalyticsConfiguration, Bucket) = s3("PUT", "/{Bucket}?analytics")
PutBucketAnalyticsConfiguration(Id, AnalyticsConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?analytics", args)
PutBucketAnalyticsConfiguration(a...; b...) = PutBucketAnalyticsConfiguration(a..., b)

"""
    GetBucketAccelerateConfiguration()

This implementation of the GET operation uses the accelerate subresource to return the Transfer Acceleration state of a bucket, which is either Enabled or Suspended. Amazon S3 Transfer Acceleration is a bucket-level feature that enables you to perform faster data transfers to and from Amazon S3. To use this operation, you must have permission to perform the s3:GetAccelerateConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide. You set the Transfer Acceleration state of an existing bucket to Enabled or Suspended by using the PutBucketAccelerateConfiguration operation.  A GET accelerate request does not return a state value for a bucket that has no transfer acceleration state. A bucket has no Transfer Acceleration state if a state has never been set on the bucket.  For more information about transfer acceleration, see Transfer Acceleration in the Amazon Simple Storage Service Developer Guide.  Related Resources     PutBucketAccelerateConfiguration   

Required Parameters
{
  "Bucket": "Name of the bucket for which the accelerate configuration is retrieved."
}
"""GetBucketAccelerateConfiguration(Bucket) = s3("GET", "/{Bucket}?accelerate")
GetBucketAccelerateConfiguration(Bucket, args) = s3("GET", "/{Bucket}?accelerate", args)
GetBucketAccelerateConfiguration(a...; b...) = GetBucketAccelerateConfiguration(a..., b)

"""
    ListBucketInventoryConfigurations()

Returns a list of inventory configurations for the bucket. You can have up to 1,000 analytics configurations per bucket. This operation supports list pagination and does not return more than 100 configurations at a time. Always check the IsTruncated element in the response. If there are no more configurations to list, IsTruncated is set to false. If there are more configurations to list, IsTruncated is set to true, and there is a value in NextContinuationToken. You use the NextContinuationToken value to continue the pagination of the list by passing the value in continuation-token in the request to GET the next page.  To use this operation, you must have permissions to perform the s3:GetInventoryConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about the Amazon S3 inventory feature, see Amazon S3 Inventory  The following operations are related to ListBucketInventoryConfigurations:    GetBucketInventoryConfiguration     DeleteBucketInventoryConfiguration     PutBucketInventoryConfiguration   

Required Parameters
{
  "Bucket": "The name of the bucket containing the inventory configurations to retrieve."
}

Optional Parameters
{
  "ContinuationToken": "The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands."
}
"""ListBucketInventoryConfigurations(Bucket) = s3("GET", "/{Bucket}?inventory")
ListBucketInventoryConfigurations(Bucket, args) = s3("GET", "/{Bucket}?inventory", args)
ListBucketInventoryConfigurations(a...; b...) = ListBucketInventoryConfigurations(a..., b)

"""
    AbortMultipartUpload()

This operation aborts a multipart upload. After a multipart upload is aborted, no additional parts can be uploaded using that upload ID. The storage consumed by any previously uploaded parts will be freed. However, if any part uploads are currently in progress, those part uploads might or might not succeed. As a result, it might be necessary to abort a given multipart upload multiple times in order to completely free all storage consumed by all parts.  To verify that all parts have been removed, so you don't get charged for the part storage, you should call the ListParts operation and ensure that the parts list is empty. For information about permissions required to use the multipart upload API, see Multipart Upload API and Permissions. The following operations are related to AbortMultipartUpload:    CreateMultipartUpload     UploadPart     CompleteMultipartUpload     ListParts     ListMultipartUploads   

Required Parameters
{
  "UploadId": "Upload ID that identifies the multipart upload.",
  "Bucket": "The bucket name to which the upload was taking place.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Key of the object for which the multipart upload was initiated."
}

Optional Parameters
{
  "RequestPayer": ""
}
"""AbortMultipartUpload(UploadId, Bucket, Key) = s3("DELETE", "/{Bucket}/{Key+}")
AbortMultipartUpload(UploadId, Bucket, Key, args) = s3("DELETE", "/{Bucket}/{Key+}", args)
AbortMultipartUpload(a...; b...) = AbortMultipartUpload(a..., b)

"""
    DeleteObject()

Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects. To remove a specific version, you must be the bucket owner and you must use the version Id subresource. Using this subresource permanently deletes the version. If the object deleted is a delete marker, Amazon S3 sets the response header, x-amz-delete-marker, to true.  If the object you want to delete is in a bucket where the bucket versioning configuration is MFA Delete enabled, you must include the x-amz-mfa request header in the DELETE versionId request. Requests that include x-amz-mfa must use HTTPS.   For more information about MFA Delete, see Using MFA Delete. To see sample requests that use versioning, see Sample Request.  You can delete objects by explicitly calling the DELETE Object API or configure its lifecycle (PutBucketLifecycle) to enable Amazon S3 to remove them for you. If you want to block users or accounts from removing or deleting objects from your bucket, you must deny them the s3:DeleteObject, s3:DeleteObjectVersion, and s3:PutLifeCycleConfiguration actions.  The following operation is related to DeleteObject:    PutObject   

Required Parameters
{
  "Bucket": "The bucket name of the bucket containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Key name of the object to delete."
}

Optional Parameters
{
  "MFA": "The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.",
  "RequestPayer": "",
  "VersionId": "VersionId used to reference a specific version of the object.",
  "BypassGovernanceRetention": "Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process this operation."
}
"""DeleteObject(Bucket, Key) = s3("DELETE", "/{Bucket}/{Key+}")
DeleteObject(Bucket, Key, args) = s3("DELETE", "/{Bucket}/{Key+}", args)
DeleteObject(a...; b...) = DeleteObject(a..., b)

"""
    DeleteObjectTagging()

Removes the entire tag set from the specified object. For more information about managing object tags, see  Object Tagging. To use this operation, you must have permission to perform the s3:DeleteObjectTagging action. To delete tags of a specific object version, add the versionId query parameter in the request. You will need permission for the s3:DeleteObjectVersionTagging action. The following operations are related to DeleteBucketMetricsConfiguration:    PutObjectTagging     GetObjectTagging   

Required Parameters
{
  "Bucket": "The bucket name containing the objects from which to remove the tags.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Name of the tag."
}

Optional Parameters
{
  "VersionId": "The versionId of the object that the tag-set will be removed from."
}
"""DeleteObjectTagging(Bucket, Key) = s3("DELETE", "/{Bucket}/{Key+}?tagging")
DeleteObjectTagging(Bucket, Key, args) = s3("DELETE", "/{Bucket}/{Key+}?tagging", args)
DeleteObjectTagging(a...; b...) = DeleteObjectTagging(a..., b)

"""
    ListBucketAnalyticsConfigurations()

Lists the analytics configurations for the bucket. You can have up to 1,000 analytics configurations per bucket. This operation supports list pagination and does not return more than 100 configurations at a time. You should always check the IsTruncated element in the response. If there are no more configurations to list, IsTruncated is set to false. If there are more configurations to list, IsTruncated is set to true, and there will be a value in NextContinuationToken. You use the NextContinuationToken value to continue the pagination of the list by passing the value in continuation-token in the request to GET the next page. To use this operation, you must have permissions to perform the s3:GetAnalyticsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about Amazon S3 analytics feature, see Amazon S3 Analytics – Storage Class Analysis.  The following operations are related to ListBucketAnalyticsConfigurations:    GetBucketAnalyticsConfiguration     DeleteBucketAnalyticsConfiguration     PutBucketAnalyticsConfiguration   

Required Parameters
{
  "Bucket": "The name of the bucket from which analytics configurations are retrieved."
}

Optional Parameters
{
  "ContinuationToken": "The ContinuationToken that represents a placeholder from where this request should begin."
}
"""ListBucketAnalyticsConfigurations(Bucket) = s3("GET", "/{Bucket}?analytics")
ListBucketAnalyticsConfigurations(Bucket, args) = s3("GET", "/{Bucket}?analytics", args)
ListBucketAnalyticsConfigurations(a...; b...) = ListBucketAnalyticsConfigurations(a..., b)

"""
    PutBucketPolicy()

Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are using an identity other than the root user of the AWS account that owns the bucket, the calling identity must have the PutBucketPolicy permissions on the specified bucket and belong to the bucket owner's account in order to use this operation. If you don't have PutBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 405 Method Not Allowed error.   As a security precaution, the root user of the AWS account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action.   For more information about bucket policies, see Using Bucket Policies and User Policies. The following operations are related to PutBucketPolicy:    CreateBucket     DeleteBucket   

Required Parameters
{
  "Bucket": "The name of the bucket.",
  "Policy": "The bucket policy as a JSON document."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash of the request body.",
  "ConfirmRemoveSelfBucketAccess": "Set this parameter to true to confirm that you want to remove your permissions to change this bucket policy in the future."
}
"""PutBucketPolicy(Bucket, Policy) = s3("PUT", "/{Bucket}?policy")
PutBucketPolicy(Bucket, Policy, args) = s3("PUT", "/{Bucket}?policy", args)
PutBucketPolicy(a...; b...) = PutBucketPolicy(a..., b)

"""
    PutBucketTagging()

Sets the tags for a bucket. Use tags to organize your AWS bill to reflect your own cost structure. To do this, sign up to get your AWS account bill with tag key values included. Then, to see the cost of combined resources, organize your billing information according to resources with the same tag key values. For example, you can tag several resources with a specific application name, and then organize your billing information to see the total cost of that application across several services. For more information, see Cost Allocation and Tagging.  Within a bucket, if you add a tag that has the same key as an existing tag, the new value overwrites the old value. For more information, see Using Cost Allocation in Amazon S3 Bucket Tags.  To use this operation, you must have permissions to perform the s3:PutBucketTagging action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  PutBucketTagging has the following special errors:   Error code: InvalidTagError    Description: The tag provided was not a valid tag. This error can occur if the tag did not pass input validation. For information about tag restrictions, see User-Defined Tag Restrictions and AWS-Generated Cost Allocation Tag Restrictions.     Error code: MalformedXMLError    Description: The XML provided does not match the schema.     Error code: OperationAbortedError     Description: A conflicting conditional operation is currently in progress against this resource. Please try again.     Error code: InternalError    Description: The service was unable to apply the provided tag to the bucket.     The following operations are related to PutBucketTagging:    GetBucketTagging     DeleteBucketTagging   

Required Parameters
{
  "Tagging": "Container for the TagSet and Tag elements.",
  "Bucket": "The bucket name."
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see RFC 1864."
}
"""PutBucketTagging(Tagging, Bucket) = s3("PUT", "/{Bucket}?tagging")
PutBucketTagging(Tagging, Bucket, args) = s3("PUT", "/{Bucket}?tagging", args)
PutBucketTagging(a...; b...) = PutBucketTagging(a..., b)

"""
    DeletePublicAccessBlock()

Removes the PublicAccessBlock configuration for an Amazon S3 bucket. To use this operation, you must have the s3:PutBucketPublicAccessBlock permission. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. The following operations are related to DeleteBucketMetricsConfiguration:    Using Amazon S3 Block Public Access     GetPublicAccessBlock     PutPublicAccessBlock     GetBucketPolicyStatus   

Required Parameters
{
  "Bucket": "The Amazon S3 bucket whose PublicAccessBlock configuration you want to delete. "
}
"""DeletePublicAccessBlock(Bucket) = s3("DELETE", "/{Bucket}?publicAccessBlock")
DeletePublicAccessBlock(Bucket, args) = s3("DELETE", "/{Bucket}?publicAccessBlock", args)
DeletePublicAccessBlock(a...; b...) = DeletePublicAccessBlock(a..., b)

"""
    ListBucketMetricsConfigurations()

Lists the metrics configurations for the bucket. The metrics configurations are only for the request metrics of the bucket and do not provide information on daily storage metrics. You can have up to 1,000 configurations per bucket. This operation supports list pagination and does not return more than 100 configurations at a time. Always check the IsTruncated element in the response. If there are no more configurations to list, IsTruncated is set to false. If there are more configurations to list, IsTruncated is set to true, and there is a value in NextContinuationToken. You use the NextContinuationToken value to continue the pagination of the list by passing the value in continuation-token in the request to GET the next page. To use this operation, you must have permissions to perform the s3:GetMetricsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For more information about metrics configurations and CloudWatch request metrics, see Monitoring Metrics with Amazon CloudWatch. The following operations are related to ListBucketMetricsConfigurations:    PutBucketMetricsConfiguration     GetBucketMetricsConfiguration     DeleteBucketMetricsConfiguration   

Required Parameters
{
  "Bucket": "The name of the bucket containing the metrics configurations to retrieve."
}

Optional Parameters
{
  "ContinuationToken": "The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands."
}
"""ListBucketMetricsConfigurations(Bucket) = s3("GET", "/{Bucket}?metrics")
ListBucketMetricsConfigurations(Bucket, args) = s3("GET", "/{Bucket}?metrics", args)
ListBucketMetricsConfigurations(a...; b...) = ListBucketMetricsConfigurations(a..., b)

"""
    PutObjectLegalHold()

Applies a Legal Hold configuration to the specified object.  Related Resources     Locking Objects   

Required Parameters
{
  "Bucket": "The bucket name containing the object that you want to place a Legal Hold on.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "The key name for the object that you want to place a Legal Hold on."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash for the request body.",
  "RequestPayer": "",
  "VersionId": "The version ID of the object that you want to place a Legal Hold on.",
  "LegalHold": "Container element for the Legal Hold configuration you want to apply to the specified object."
}
"""PutObjectLegalHold(Bucket, Key) = s3("PUT", "/{Bucket}/{Key+}?legal-hold")
PutObjectLegalHold(Bucket, Key, args) = s3("PUT", "/{Bucket}/{Key+}?legal-hold", args)
PutObjectLegalHold(a...; b...) = PutObjectLegalHold(a..., b)

"""
    PutPublicAccessBlock()

Creates or modifies the PublicAccessBlock configuration for an Amazon S3 bucket. To use this operation, you must have the s3:PutBucketPublicAccessBlock permission. For more information about Amazon S3 permissions, see Specifying Permissions in a Policy.  When Amazon S3 evaluates the PublicAccessBlock configuration for a bucket or an object, it checks the PublicAccessBlock configuration for both the bucket (or the bucket that contains the object) and the bucket owner's account. If the PublicAccessBlock configurations are different between the bucket and the account, Amazon S3 uses the most restrictive combination of the bucket-level and account-level settings.  For more information about when Amazon S3 considers a bucket or an object public, see The Meaning of "Public".  Related Resources     GetPublicAccessBlock     DeletePublicAccessBlock     GetBucketPolicyStatus     Using Amazon S3 Block Public Access   

Required Parameters
{
  "PublicAccessBlockConfiguration": "The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see The Meaning of \"Public\" in the Amazon Simple Storage Service Developer Guide.",
  "Bucket": "The name of the Amazon S3 bucket whose PublicAccessBlock configuration you want to set."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash of the PutPublicAccessBlock request body. "
}
"""PutPublicAccessBlock(PublicAccessBlockConfiguration, Bucket) = s3("PUT", "/{Bucket}?publicAccessBlock")
PutPublicAccessBlock(PublicAccessBlockConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?publicAccessBlock", args)
PutPublicAccessBlock(a...; b...) = PutPublicAccessBlock(a..., b)

"""
    GetBucketWebsite()

Returns the website configuration for a bucket. To host website on Amazon S3, you can configure a bucket as website by adding a website configuration. For more information about hosting websites, see Hosting Websites on Amazon S3.  This GET operation requires the S3:GetBucketWebsite permission. By default, only the bucket owner can read the bucket website configuration. However, bucket owners can allow other users to read the website configuration by writing a bucket policy granting them the S3:GetBucketWebsite permission. The following operations are related to DeleteBucketWebsite:    DeleteBucketWebsite     PutBucketWebsite   

Required Parameters
{
  "Bucket": "The bucket name for which to get the website configuration."
}
"""GetBucketWebsite(Bucket) = s3("GET", "/{Bucket}?website")
GetBucketWebsite(Bucket, args) = s3("GET", "/{Bucket}?website", args)
GetBucketWebsite(a...; b...) = GetBucketWebsite(a..., b)

"""
    GetObjectTorrent()

Return torrent files from a bucket. BitTorrent can save you bandwidth when you're distributing large files. For more information about BitTorrent, see Amazon S3 Torrent.  You can get torrent only for objects that are less than 5 GB in size and that are not encrypted using server-side encryption with customer-provided encryption key.  To use GET, you must have READ access to the object. The following operation is related to GetObjectTorrent:    GetObject   

Required Parameters
{
  "Bucket": "The name of the bucket containing the object for which to get the torrent files.",
  "Key": "The object key for which to get the information."
}

Optional Parameters
{
  "RequestPayer": ""
}
"""GetObjectTorrent(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}?torrent")
GetObjectTorrent(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}?torrent", args)
GetObjectTorrent(a...; b...) = GetObjectTorrent(a..., b)

"""
    PutBucketMetricsConfiguration()

Sets a metrics configuration (specified by the metrics configuration ID) for the bucket. You can have up to 1,000 metrics configurations per bucket. If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration. If you don't include the elements you want to keep, they are erased. To use this operation, you must have permissions to perform the s3:PutMetricsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about CloudWatch request metrics for Amazon S3, see Monitoring Metrics with Amazon CloudWatch. The following operations are related to PutBucketMetricsConfiguration:    DeleteBucketMetricsConfiguration     PutBucketMetricsConfiguration     ListBucketMetricsConfigurations     GetBucketLifecycle has the following special error:   Error code: TooManyConfigurations    Description: You are attempting to create a new configuration but have already reached the 1,000-configuration limit.   HTTP Status Code: HTTP 400 Bad Request    

Required Parameters
{
  "Id": "The ID used to identify the metrics configuration.",
  "MetricsConfiguration": "Specifies the metrics configuration.",
  "Bucket": "The name of the bucket for which the metrics configuration is set."
}
"""PutBucketMetricsConfiguration(Id, MetricsConfiguration, Bucket) = s3("PUT", "/{Bucket}?metrics")
PutBucketMetricsConfiguration(Id, MetricsConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?metrics", args)
PutBucketMetricsConfiguration(a...; b...) = PutBucketMetricsConfiguration(a..., b)

"""
    DeleteBucketEncryption()

This implementation of the DELETE operation removes default encryption from the bucket. For information about the Amazon S3 default encryption feature, see Amazon S3 Default Bucket Encryption in the Amazon Simple Storage Service Developer Guide. To use this operation, you must have permissions to perform the s3:PutEncryptionConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide.  Related Resources     PutBucketEncryption     GetBucketEncryption   

Required Parameters
{
  "Bucket": "The name of the bucket containing the server-side encryption configuration to delete."
}
"""DeleteBucketEncryption(Bucket) = s3("DELETE", "/{Bucket}?encryption")
DeleteBucketEncryption(Bucket, args) = s3("DELETE", "/{Bucket}?encryption", args)
DeleteBucketEncryption(a...; b...) = DeleteBucketEncryption(a..., b)

"""
    RestoreObject()

Restores an archived copy of an object back into Amazon S3 This operation performs the following types of requests:     select - Perform a select query on an archived object    restore an archive - Restore an archived object   To use this operation, you must have permissions to perform the s3:RestoreObject and s3:GetObject actions. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide.  Querying Archives with Select Requests  You use a select type of request to perform SQL queries on archived objects. The archived objects that are being queried by the select request must be formatted as uncompressed comma-separated values (CSV) files. You can run queries and custom analytics on your archived data without having to restore your data to a hotter Amazon S3 tier. For an overview about select requests, see Querying Archived Objects in the Amazon Simple Storage Service Developer Guide. When making a select request, do the following:   Define an output location for the select query's output. This must be an Amazon S3 bucket in the same AWS Region as the bucket that contains the archive object that is being queried. The AWS account that initiates the job must have permissions to write to the S3 bucket. You can specify the storage class and encryption for the output objects stored in the bucket. For more information about output, see Querying Archived Objects in the Amazon Simple Storage Service Developer Guide. For more information about the S3 structure in the request body, see the following:    PutObject     Managing Access with ACLs in the Amazon Simple Storage Service Developer Guide     Protecting Data Using Server-Side Encryption in the Amazon Simple Storage Service Developer Guide      Define the SQL expression for the SELECT type of restoration for your query in the request body's SelectParameters structure. You can use expressions like the following examples.   The following expression returns all records from the specified object.  SELECT * FROM Object    Assuming that you are not using any headers for data stored in the object, you can specify columns with positional headers.  SELECT s._1, s._2 FROM Object s WHERE s._3 &gt; 100    If you have headers and you set the fileHeaderInfo in the CSV structure in the request body to USE, you can specify headers in the query. (If you set the fileHeaderInfo field to IGNORE, the first row is skipped for the query.) You cannot mix ordinal positions with header column names.   SELECT s.Id, s.FirstName, s.SSN FROM S3Object s      For more information about using SQL with Glacier Select restore, see SQL Reference for Amazon S3 Select and Glacier Select in the Amazon Simple Storage Service Developer Guide.  When making a select request, you can also do the following:   To expedite your queries, specify the Expedited tier. For more information about tiers, see "Restoring Archives," later in this topic.   Specify details about the data serialization format of both the input object that is being queried and the serialization of the CSV-encoded query results.   The following are additional important facts about the select feature:   The output results are new Amazon S3 objects. Unlike archive retrievals, they are stored until explicitly deleted-manually or through a lifecycle policy.   You can issue more than one select request on the same Amazon S3 object. Amazon S3 doesn't deduplicate requests, so avoid issuing duplicate requests.    Amazon S3 accepts a select request even if the object has already been restored. A select request doesn’t return error response 409.    Restoring Archives  Objects in the GLACIER and DEEP_ARCHIVE storage classes are archived. To access an archived object, you must first initiate a restore request. This restores a temporary copy of the archived object. In a restore request, you specify the number of days that you want the restored copy to exist. After the specified period, Amazon S3 deletes the temporary copy but the object remains archived in the GLACIER or DEEP_ARCHIVE storage class that object was restored from.  To restore a specific object version, you can provide a version ID. If you don't provide a version ID, Amazon S3 restores the current version. The time it takes restore jobs to finish depends on which storage class the object is being restored from and which data access tier you specify.  When restoring an archived object (or using a select request), you can specify one of the following data access tier options in the Tier element of the request body:      Expedited  - Expedited retrievals allow you to quickly access your data stored in the GLACIER storage class when occasional urgent requests for a subset of archives are required. For all but the largest archived objects (250 MB+), data accessed using Expedited retrievals are typically made available within 1–5 minutes. Provisioned capacity ensures that retrieval capacity for Expedited retrievals is available when you need it. Expedited retrievals and provisioned capacity are not available for the DEEP_ARCHIVE storage class.     Standard  - Standard retrievals allow you to access any of your archived objects within several hours. This is the default option for the GLACIER and DEEP_ARCHIVE retrieval requests that do not specify the retrieval option. Standard retrievals typically complete within 3-5 hours from the GLACIER storage class and typically complete within 12 hours from the DEEP_ARCHIVE storage class.      Bulk  - Bulk retrievals are Amazon S3 Glacier’s lowest-cost retrieval option, enabling you to retrieve large amounts, even petabytes, of data inexpensively in a day. Bulk retrievals typically complete within 5-12 hours from the GLACIER storage class and typically complete within 48 hours from the DEEP_ARCHIVE storage class.   For more information about archive retrieval options and provisioned capacity for Expedited data access, see Restoring Archived Objects in the Amazon Simple Storage Service Developer Guide.  You can use Amazon S3 restore speed upgrade to change the restore speed to a faster speed while it is in progress. You upgrade the speed of an in-progress restoration by issuing another restore request to the same object, setting a new Tier request element. When issuing a request to upgrade the restore tier, you must choose a tier that is faster than the tier that the in-progress restore is using. You must not change any other parameters, such as the Days request element. For more information, see  Upgrading the Speed of an In-Progress Restore in the Amazon Simple Storage Service Developer Guide.  To get the status of object restoration, you can send a HEAD request. Operations return the x-amz-restore header, which provides information about the restoration status, in the response. You can use Amazon S3 event notifications to notify you when a restore is initiated or completed. For more information, see Configuring Amazon S3 Event Notifications in the Amazon Simple Storage Service Developer Guide. After restoring an archived object, you can update the restoration period by reissuing the request with a new period. Amazon S3 updates the restoration period relative to the current time and charges only for the request-there are no data transfer charges. You cannot update the restoration period when Amazon S3 is actively processing your current restore request for the object. If your bucket has a lifecycle configuration with a rule that includes an expiration action, the object expiration overrides the life span that you specify in a restore request. For example, if you restore an object copy for 10 days, but the object is scheduled to expire in 3 days, Amazon S3 deletes the object in 3 days. For more information about lifecycle configuration, see PutBucketLifecycleConfiguration and Object Lifecycle Management in Amazon Simple Storage Service Developer Guide.  Responses  A successful operation returns either the 200 OK or 202 Accepted status code.    If the object copy is not previously restored, then Amazon S3 returns 202 Accepted in the response.    If the object copy is previously restored, Amazon S3 returns 200 OK in the response.     Special Errors          Code: RestoreAlreadyInProgress     Cause: Object restore is already in progress. (This error does not apply to SELECT type requests.)     HTTP Status Code: 409 Conflict     SOAP Fault Code Prefix: Client            Code: GlacierExpeditedRetrievalNotAvailable     Cause: Glacier expedited retrievals are currently not available. Try again later. (Returned if there is insufficient capacity to process the Expedited request. This error applies only to Expedited retrievals and not to Standard or Bulk retrievals.)     HTTP Status Code: 503     SOAP Fault Code Prefix: N/A       Related Resources     PutBucketLifecycleConfiguration     GetBucketNotificationConfiguration     SQL Reference for Amazon S3 Select and Glacier Select  in the Amazon Simple Storage Service Developer Guide   

Required Parameters
{
  "Bucket": "The bucket name or containing the object to restore.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Object key for which the operation was initiated."
}

Optional Parameters
{
  "RestoreRequest": "",
  "RequestPayer": "",
  "VersionId": "VersionId used to reference a specific version of the object."
}
"""RestoreObject(Bucket, Key) = s3("POST", "/{Bucket}/{Key+}?restore")
RestoreObject(Bucket, Key, args) = s3("POST", "/{Bucket}/{Key+}?restore", args)
RestoreObject(a...; b...) = RestoreObject(a..., b)

"""
    GetBucketInventoryConfiguration()

Returns an inventory configuration (identified by the inventory configuration ID) from the bucket. To use this operation, you must have permissions to perform the s3:GetInventoryConfiguration action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about the Amazon S3 inventory feature, see Amazon S3 Inventory. The following operations are related to GetBucketInventoryConfiguration:    DeleteBucketInventoryConfiguration     ListBucketInventoryConfigurations     PutBucketInventoryConfiguration   

Required Parameters
{
  "Id": "The ID used to identify the inventory configuration.",
  "Bucket": "The name of the bucket containing the inventory configuration to retrieve."
}
"""GetBucketInventoryConfiguration(Id, Bucket) = s3("GET", "/{Bucket}?inventory")
GetBucketInventoryConfiguration(Id, Bucket, args) = s3("GET", "/{Bucket}?inventory", args)
GetBucketInventoryConfiguration(a...; b...) = GetBucketInventoryConfiguration(a..., b)

"""
    GetObjectLegalHold()

Gets an object's current Legal Hold status. For more information, see Locking Objects.

Required Parameters
{
  "Bucket": "The bucket name containing the object whose Legal Hold status you want to retrieve.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "The key name for the object whose Legal Hold status you want to retrieve."
}

Optional Parameters
{
  "RequestPayer": "",
  "VersionId": "The version ID of the object whose Legal Hold status you want to retrieve."
}
"""GetObjectLegalHold(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}?legal-hold")
GetObjectLegalHold(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}?legal-hold", args)
GetObjectLegalHold(a...; b...) = GetObjectLegalHold(a..., b)

"""
    PutBucketNotification()

 No longer used, see the PutBucketNotificationConfiguration operation.

Required Parameters
{
  "Bucket": "The name of the bucket.",
  "NotificationConfiguration": "The container for the configuration."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash of the PutPublicAccessBlock request body."
}
"""PutBucketNotification(Bucket, NotificationConfiguration) = s3("PUT", "/{Bucket}?notification")
PutBucketNotification(Bucket, NotificationConfiguration, args) = s3("PUT", "/{Bucket}?notification", args)
PutBucketNotification(a...; b...) = PutBucketNotification(a..., b)

"""
    PutObject()

Adds an object to a bucket. You must have WRITE permissions on a bucket to add an object to it. Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the entire object to the bucket. Amazon S3 is a distributed system. If it receives multiple write requests for the same object simultaneously, it overwrites all but the last object written. Amazon S3 does not provide object locking; if you need this, make sure to build it into your application layer or use versioning instead. To ensure that data is not corrupted traversing the network, use the Content-MD5 header. When you use this header, Amazon S3 checks the object against the provided MD5 value and, if they do not match, returns an error. Additionally, you can calculate the MD5 while putting an object to Amazon S3 and compare the returned ETag to the calculated MD5 value.  To configure your application to send the request headers before sending the request body, use the 100-continue HTTP status code. For PUT operations, this helps you avoid sending the message body if the message is rejected based on the headers (for example, because authentication fails or a redirect occurs). For more information on the 100-continue HTTP status code, see Section 8.2.3 of http://www.ietf.org/rfc/rfc2616.txt.  You can optionally request server-side encryption. With server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts the data when you access it. You have the option to provide your own encryption key or use AWS managed encryption keys. For more information, see Using Server-Side Encryption.  Access Permissions  You can optionally specify the accounts or groups that should be granted specific permissions on the new object. There are two ways to grant the permissions using the request headers:   Specify a canned ACL with the x-amz-acl request header. For more information, see Canned ACL.   Specify access permissions explicitly with the x-amz-grant-read, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview.   You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  Server-Side- Encryption-Specific Request Headers  You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption. Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. The option you use depends on whether you want to use AWS managed encryption keys or provide your own encryption key.    Use encryption keys managed by Amazon S3 or customer master keys (CMKs) stored in AWS Key Management Service (AWS KMS) – If you want AWS to manage the keys used to encrypt data, specify the following headers in the request.   x-amz-server-side​-encryption   x-amz-server-side-encryption-aws-kms-key-id   x-amz-server-side-encryption-context    If you specify x-amz-server-side-encryption:aws:kms, but don't provide x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS managed CMK in AWS KMS to protect the data. If you want to use a customer managed AWS KMS CMK, you must provide the x-amz-server-side-encryption-aws-kms-key-id of the symmetric customer managed CMK. Amazon S3 only supports symmetric CMKs and not asymmetric CMKs. For more information, see Using Symmetric and Asymmetric Keys in the AWS Key Management Service Developer Guide.   All GET and PUT requests for an object protected by AWS KMS fail if you don't make them with SSL or by using SigV4.  For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS.   Use customer-provided encryption keys – If you want to manage your own encryption keys, provide all the following headers in the request.   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5   For more information about server-side encryption with CMKs stored in KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS.    Access-Control-List (ACL)-Specific Request Headers  You also can use the following access control–related headers with this operation. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual AWS accounts or to predefined groups defined by Amazon S3. These permissions are then added to the Access Control List (ACL) on the object. For more information, see Using ACLs. With this operation, you can grant access permissions using one of the following two methods:   Specify a canned ACL (x-amz-acl) — Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. For more information, see Canned ACL.   Specify access permissions explicitly — To explicitly grant access permissions to specific AWS accounts or groups, use the following headers. Each header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. In the header, you specify a list of grantees who get the specific permission. To grant permissions explicitly use:   x-amz-grant-read   x-amz-grant-write   x-amz-grant-read-acp   x-amz-grant-write-acp   x-amz-grant-full-control   You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account  Using email addresses to specify a grantee is only supported in the following AWS Regions:    US East (N. Virginia)   US West (N. California)    US West (Oregon)    Asia Pacific (Singapore)   Asia Pacific (Sydney)   Asia Pacific (Tokyo)   EU (Ireland)   South America (São Paulo)   For a list of all the Amazon S3 supported Regions and endpoints, see Regions and Endpoints in the AWS General Reference     id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-read header grants the AWS accounts identified by email addresses permissions to read object data and its metadata:  x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"      Server-Side- Encryption-Specific Request Headers  You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption. Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. The option you use depends on whether you want to use AWS-managed encryption keys or provide your own encryption key.    Use encryption keys managed by Amazon S3 or customer master keys (CMKs) stored in AWS Key Management Service (AWS KMS) – If you want AWS to manage the keys used to encrypt data, specify the following headers in the request.   x-amz-server-side​-encryption   x-amz-server-side-encryption-aws-kms-key-id   x-amz-server-side-encryption-context    If you specify x-amz-server-side-encryption:aws:kms, but don't provide x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS managed CMK in AWS KMS to protect the data. If you want to use a customer managed AWS KMS CMK, you must provide the x-amz-server-side-encryption-aws-kms-key-id of the symmetric customer managed CMK. Amazon S3 only supports symmetric CMKs and not asymmetric CMKs. For more information, see Using Symmetric and Asymmetric Keys in the AWS Key Management Service Developer Guide.   All GET and PUT requests for an object protected by AWS KMS fail if you don't make them with SSL or by using SigV4.  For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS.   Use customer-provided encryption keys – If you want to manage your own encryption keys, provide all the following headers in the request.  If you use this feature, the ETag value that Amazon S3 returns in the response is not the MD5 of the object.    x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5   For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS.      Storage Class Options  By default, Amazon S3 uses the Standard storage class to store newly created objects. The Standard storage class provides high durability and high availability. You can specify other storage classes depending on the performance needs. For more information, see Storage Classes in the Amazon Simple Storage Service Developer Guide.  Versioning  If you enable versioning for a bucket, Amazon S3 automatically generates a unique version ID for the object being stored. Amazon S3 returns this ID in the response using the x-amz-version-id response header. If versioning is suspended, Amazon S3 always uses null as the version ID for the object stored. For more information about returning the versioning state of a bucket, see GetBucketVersioning. If you enable versioning for a bucket, when Amazon S3 receives multiple write requests for the same object simultaneously, it stores all of the objects.  Related Resources     CopyObject     DeleteObject   

Required Parameters
{
  "Bucket": "Bucket name to which the PUT operation was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Object key for which the PUT operation was initiated."
}

Optional Parameters
{
  "GrantReadACP": "Allows grantee to read the object ACL.",
  "ObjectLockRetainUntilDate": "The date and time when you want this object's Object Lock to expire.",
  "RequestPayer": "",
  "Body": "Object data.",
  "ContentLanguage": "The language the content is in.",
  "ContentEncoding": "Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11.",
  "ContentLength": "Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.",
  "SSEKMSEncryptionContext": "Specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.",
  "ObjectLockLegalHoldStatus": "Specifies whether a legal hold will be applied to this object. For more information about S3 Object Lock, see Object Lock.",
  "GrantRead": "Allows grantee to read the object data and its metadata.",
  "Expires": "The date and time at which the object is no longer cacheable. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21.",
  "Tagging": "The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example, \"Key1=Value1\")",
  "ACL": "The canned ACL to apply to the object. For more information, see Canned ACL.",
  "ObjectLockMode": "The Object Lock mode that you want to apply to this object.",
  "ContentDisposition": "Specifies presentational information for the object. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1.",
  "CacheControl": " Can be used to specify caching behavior along the request/reply chain. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9.",
  "ContentType": "A standard MIME type describing the format of the contents. For more information, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17.",
  "ServerSideEncryption": "The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).",
  "StorageClass": "If you don't specify, Standard is the default storage class. Amazon S3 supports other storage classes.",
  "GrantFullControl": "Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.",
  "SSEKMSKeyId": "If x-amz-server-side-encryption is present and has the value of aws:kms, this header specifies the ID of the AWS Key Management Service (AWS KMS) symmetrical customer managed customer master key (CMK) that was used for the object.  If the value of x-amz-server-side-encryption is aws:kms, this header specifies the ID of the symmetric customer managed AWS KMS CMK that will be used for the object. If you specify x-amz-server-side-encryption:aws:kms, but do not provide x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS managed CMK in AWS to protect the data.",
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the message (without the headers) according to RFC 1864. This header can be used as a message integrity check to verify that the data is the same data that was originally sent. Although it is optional, we recommend using the Content-MD5 mechanism as an end-to-end integrity check. For more information about REST request authentication, see REST Authentication.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256).",
  "Metadata": "A map of metadata to store with the object in S3.",
  "WebsiteRedirectLocation": "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. For information about object metadata, see Object Key and Metadata. In the following example, the request header sets the redirect to an object (anotherPage.html) in the same bucket:  x-amz-website-redirect-location: /anotherPage.html  In the following example, the request header sets the object redirect to another website:  x-amz-website-redirect-location: http://www.example.com/  For more information about website hosting in Amazon S3, see Hosting Websites on Amazon S3 and How to Configure Website Page Redirects. ",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable object."
}
"""PutObject(Bucket, Key) = s3("PUT", "/{Bucket}/{Key+}")
PutObject(Bucket, Key, args) = s3("PUT", "/{Bucket}/{Key+}", args)
PutObject(a...; b...) = PutObject(a..., b)

"""
    UploadPartCopy()

Uploads a part by copying data from an existing object as data source. You specify the data source by adding the request header x-amz-copy-source in your request and a byte range by adding the request header x-amz-copy-source-range in your request.  The minimum allowable part size for a multipart upload is 5 MB. For more information about multipart upload limits, go to Quick Facts in the Amazon Simple Storage Service Developer Guide.   Instead of using an existing object as part data, you might use the UploadPart operation and provide data in your request.  You must initiate a multipart upload before you can upload any part. In response to your initiate request. Amazon S3 returns a unique identifier, the upload ID, that you must include in your upload part request. For more information about using the UploadPartCopy operation, see the following:   For conceptual information about multipart uploads, see Uploading Objects Using Multipart Upload in the Amazon Simple Storage Service Developer Guide.   For information about permissions required to use the multipart upload API, see Multipart Upload API and Permissions in the Amazon Simple Storage Service Developer Guide.   For information about copying objects using a single atomic operation vs. the multipart upload, see Operations on Objects in the Amazon Simple Storage Service Developer Guide.   For information about using server-side encryption with customer-provided encryption keys with the UploadPartCopy operation, see CopyObject and UploadPart.   Note the following additional considerations about the request headers x-amz-copy-source-if-match, x-amz-copy-source-if-none-match, x-amz-copy-source-if-unmodified-since, and x-amz-copy-source-if-modified-since:      Consideration 1 - If both of the x-amz-copy-source-if-match and x-amz-copy-source-if-unmodified-since headers are present in the request as follows:  x-amz-copy-source-if-match condition evaluates to true, and;  x-amz-copy-source-if-unmodified-since condition evaluates to false; Amazon S3 returns 200 OK and copies the data.     Consideration 2 - If both of the x-amz-copy-source-if-none-match and x-amz-copy-source-if-modified-since headers are present in the request as follows:  x-amz-copy-source-if-none-match condition evaluates to false, and;  x-amz-copy-source-if-modified-since condition evaluates to true; Amazon S3 returns 412 Precondition Failed response code.     Versioning  If your bucket has versioning enabled, you could have multiple versions of the same object. By default, x-amz-copy-source identifies the current version of the object to copy. If the current version is a delete marker and you don't specify a versionId in the x-amz-copy-source, Amazon S3 returns a 404 error, because the object does not exist. If you specify versionId in the x-amz-copy-source and the versionId is a delete marker, Amazon S3 returns an HTTP 400 error, because you are not allowed to specify a delete marker as a version for the x-amz-copy-source.  You can optionally specify a specific version of the source object to copy by adding the versionId subresource as shown in the following example:  x-amz-copy-source: /bucket/object?versionId=version id   Special Errors          Code: NoSuchUpload     Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.     HTTP Status Code: 404 Not Found            Code: InvalidRequest     Cause: The specified copy source is not supported as a byte-range copy source.     HTTP Status Code: 400 Bad Request       Related Resources     CreateMultipartUpload     UploadPart     CompleteMultipartUpload     AbortMultipartUpload     ListParts     ListMultipartUploads   

Required Parameters
{
  "UploadId": "Upload ID identifying the multipart upload whose part is being copied.",
  "Bucket": "The bucket name.",
  "Key": "Object key for which the multipart upload was initiated.",
  "CopySource": "The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.",
  "PartNumber": "Part number of part being copied. This is a positive integer between 1 and 10,000."
}

Optional Parameters
{
  "RequestPayer": "",
  "CopySourceSSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.",
  "CopySourceSSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "CopySourceRange": "The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You can copy a range only if the source object is greater than 5 MB.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.",
  "CopySourceIfMatch": "Copies the object if its entity tag (ETag) matches the specified tag.",
  "CopySourceIfUnmodifiedSince": "Copies the object if it hasn't been modified since the specified time.",
  "CopySourceIfModifiedSince": "Copies the object if it has been modified since the specified time.",
  "CopySourceSSECustomerAlgorithm": "Specifies the algorithm to use when decrypting the source object (for example, AES256).",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256).",
  "CopySourceIfNoneMatch": "Copies the object if its entity tag (ETag) is different than the specified ETag."
}
"""UploadPartCopy(UploadId, Bucket, Key, CopySource, PartNumber) = s3("PUT", "/{Bucket}/{Key+}")
UploadPartCopy(UploadId, Bucket, Key, CopySource, PartNumber, args) = s3("PUT", "/{Bucket}/{Key+}", args)
UploadPartCopy(a...; b...) = UploadPartCopy(a..., b)

"""
    PutBucketLogging()

Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters. All logs are saved to buckets in the same AWS Region as the source bucket. To set the logging status of a bucket, you must be the bucket owner. The bucket owner is automatically granted FULL_CONTROL to all logs. You use the Grantee request element to grant access to other people. The Permissions request element specifies the kind of access the grantee has to the logs.  Grantee Values  You can specify the person (grantee) to whom you're assigning access rights (using request elements) in the following ways:   By the person's ID:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt; &lt;/Grantee&gt;  DisplayName is optional and ignored in the request.   By Email address:   &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;&lt;/Grantee&gt;  The grantee is resolved to the CanonicalUser and, in a response to a GET Object acl request, appears as the CanonicalUser.   By URI:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;    To enable logging, you use LoggingEnabled and its children request elements. To disable logging, you use an empty BucketLoggingStatus request element:  &lt;BucketLoggingStatus xmlns="http://doc.s3.amazonaws.com/2006-03-01" /&gt;  For more information about server access logging, see Server Access Logging.  For more information about creating a bucket, see CreateBucket. For more information about returning the logging status of a bucket, see GetBucketLogging. The following operations are related to PutBucketLogging:    PutObject     DeleteBucket     CreateBucket     GetBucketLogging   

Required Parameters
{
  "BucketLoggingStatus": "Container for logging status information.",
  "Bucket": "The name of the bucket for which to set the logging parameters."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash of the PutBucketLogging request body."
}
"""PutBucketLogging(BucketLoggingStatus, Bucket) = s3("PUT", "/{Bucket}?logging")
PutBucketLogging(BucketLoggingStatus, Bucket, args) = s3("PUT", "/{Bucket}?logging", args)
PutBucketLogging(a...; b...) = PutBucketLogging(a..., b)

"""
    PutBucketInventoryConfiguration()

This implementation of the PUT operation adds an inventory configuration (identified by the inventory ID) to the bucket. You can have up to 1,000 inventory configurations per bucket.  Amazon S3 inventory generates inventories of the objects in the bucket on a daily or weekly basis, and the results are published to a flat file. The bucket that is inventoried is called the source bucket, and the bucket where the inventory flat file is stored is called the destination bucket. The destination bucket must be in the same AWS Region as the source bucket.  When you configure an inventory for a source bucket, you specify the destination bucket where you want the inventory to be stored, and whether to generate the inventory daily or weekly. You can also configure what object metadata to include and whether to inventory all object versions or only current versions. For more information, see Amazon S3 Inventory in the Amazon Simple Storage Service Developer Guide.  You must create a bucket policy on the destination bucket to grant permissions to Amazon S3 to write objects to the bucket in the defined location. For an example policy, see  Granting Permissions for Amazon S3 Inventory and Storage Class Analysis.   To use this operation, you must have permissions to perform the s3:PutInventoryConfiguration action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide.  Special Errors     HTTP 400 Bad Request Error     Code: InvalidArgument    Cause: Invalid Argument      HTTP 400 Bad Request Error     Code: TooManyConfigurations    Cause: You are attempting to create a new configuration but have already reached the 1,000-configuration limit.       HTTP 403 Forbidden Error     Code: AccessDenied    Cause: You are not the owner of the specified bucket, or you do not have the s3:PutInventoryConfiguration bucket permission to set the configuration on the bucket       Related Resources     GetBucketInventoryConfiguration     DeleteBucketInventoryConfiguration     ListBucketInventoryConfigurations   

Required Parameters
{
  "Id": "The ID used to identify the inventory configuration.",
  "InventoryConfiguration": "Specifies the inventory configuration.",
  "Bucket": "The name of the bucket where the inventory configuration will be stored."
}
"""PutBucketInventoryConfiguration(Id, InventoryConfiguration, Bucket) = s3("PUT", "/{Bucket}?inventory")
PutBucketInventoryConfiguration(Id, InventoryConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?inventory", args)
PutBucketInventoryConfiguration(a...; b...) = PutBucketInventoryConfiguration(a..., b)

"""
    PutBucketReplication()

 Creates a replication configuration or replaces an existing one. For more information, see Replication in the Amazon S3 Developer Guide.   To perform this operation, the user or role performing the operation must have the iam:PassRole permission.  Specify the replication configuration in the request body. In the replication configuration, you provide the name of the destination bucket where you want Amazon S3 to replicate objects, the IAM role that Amazon S3 can assume to replicate objects on your behalf, and other relevant information. A replication configuration must include at least one rule, and can contain a maximum of 1,000. Each rule identifies a subset of objects to replicate by filtering the objects in the source bucket. To choose additional subsets of objects to replicate, add a rule for each subset. All rules must specify the same destination bucket. To specify a subset of the objects in the source bucket to apply a replication rule to, add the Filter element as a child of the Rule element. You can filter objects based on an object key prefix, one or more object tags, or both. When you add the Filter element in the configuration, you must also add the following elements: DeleteMarkerReplication, Status, and Priority. For information about enabling versioning on a bucket, see Using Versioning. By default, a resource owner, in this case the AWS account that created the bucket, can perform this operation. The resource owner can also grant others permissions to perform the operation. For more information about permissions, see Specifying Permissions in a Policy and Managing Access Permissions to Your Amazon S3 Resources.  Handling Replication of Encrypted Objects  By default, Amazon S3 doesn't replicate objects that are stored at rest using server-side encryption with CMKs stored in AWS KMS. To replicate AWS KMS-encrypted objects, add the following: SourceSelectionCriteria, SseKmsEncryptedObjects, Status, EncryptionConfiguration, and ReplicaKmsKeyID. For information about replication configuration, see Replicating Objects Created with SSE Using CMKs stored in AWS KMS. For information on PutBucketReplication errors, see ReplicationErrorCodeList  The following operations are related to PutBucketReplication:    GetBucketReplication     DeleteBucketReplication   

Required Parameters
{
  "ReplicationConfiguration": "",
  "Bucket": "The name of the bucket"
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see RFC 1864.",
  "Token": ""
}
"""PutBucketReplication(ReplicationConfiguration, Bucket) = s3("PUT", "/{Bucket}?replication")
PutBucketReplication(ReplicationConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?replication", args)
PutBucketReplication(a...; b...) = PutBucketReplication(a..., b)

"""
    DeleteBucketPolicy()

This implementation of the DELETE operation uses the policy subresource to delete the policy of a specified bucket. If you are using an identity other than the root user of the AWS account that owns the bucket, the calling identity must have the DeleteBucketPolicy permissions on the specified bucket and belong to the bucket owner's account to use this operation.  If you don't have DeleteBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 405 Method Not Allowed error.   As a security precaution, the root user of the AWS account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action.  For more information about bucket policies, see Using Bucket Policies and UserPolicies.  The following operations are related to DeleteBucketPolicy     CreateBucket     DeleteObject   

Required Parameters
{
  "Bucket": "The bucket name."
}
"""DeleteBucketPolicy(Bucket) = s3("DELETE", "/{Bucket}?policy")
DeleteBucketPolicy(Bucket, args) = s3("DELETE", "/{Bucket}?policy", args)
DeleteBucketPolicy(a...; b...) = DeleteBucketPolicy(a..., b)

"""
    GetBucketLifecycle()

 For an updated version of this API, see GetBucketLifecycleConfiguration. If you configured a bucket lifecycle using the filter element, you should see the updated version of this topic. This topic is provided for backward compatibility.  Returns the lifecycle configuration information set on the bucket. For information about lifecycle configuration, see Object Lifecycle Management.  To use this operation, you must have permission to perform the s3:GetLifecycleConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  GetBucketLifecycle has the following special error:   Error code: NoSuchLifecycleConfiguration    Description: The lifecycle configuration does not exist.   HTTP Status Code: 404 Not Found   SOAP Fault Code Prefix: Client     The following operations are related to GetBucketLifecycle:    GetBucketLifecycleConfiguration     PutBucketLifecycle     DeleteBucketLifecycle   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the lifecycle information."
}
"""GetBucketLifecycle(Bucket) = s3("GET", "/{Bucket}?lifecycle")
GetBucketLifecycle(Bucket, args) = s3("GET", "/{Bucket}?lifecycle", args)
GetBucketLifecycle(a...; b...) = GetBucketLifecycle(a..., b)

"""
    GetBucketLogging()

Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner. The following operations are related to GetBucketLogging:    CreateBucket     PutBucketLogging   

Required Parameters
{
  "Bucket": "The bucket name for which to get the logging information."
}
"""GetBucketLogging(Bucket) = s3("GET", "/{Bucket}?logging")
GetBucketLogging(Bucket, args) = s3("GET", "/{Bucket}?logging", args)
GetBucketLogging(a...; b...) = GetBucketLogging(a..., b)

"""
    GetBucketAnalyticsConfiguration()

This implementation of the GET operation returns an analytics configuration (identified by the analytics configuration ID) from the bucket. To use this operation, you must have permissions to perform the s3:GetAnalyticsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see  Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide.  For information about Amazon S3 analytics feature, see Amazon S3 Analytics – Storage Class Analysis in the Amazon Simple Storage Service Developer Guide.  Related Resources               

Required Parameters
{
  "Id": "The ID that identifies the analytics configuration.",
  "Bucket": "The name of the bucket from which an analytics configuration is retrieved."
}
"""GetBucketAnalyticsConfiguration(Id, Bucket) = s3("GET", "/{Bucket}?analytics")
GetBucketAnalyticsConfiguration(Id, Bucket, args) = s3("GET", "/{Bucket}?analytics", args)
GetBucketAnalyticsConfiguration(a...; b...) = GetBucketAnalyticsConfiguration(a..., b)

"""
    GetBucketRequestPayment()

Returns the request payment configuration of a bucket. To use this version of the operation, you must be the bucket owner. For more information, see Requester Pays Buckets. The following operations are related to GetBucketRequestPayment:    ListObjects   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the payment request configuration"
}
"""GetBucketRequestPayment(Bucket) = s3("GET", "/{Bucket}?requestPayment")
GetBucketRequestPayment(Bucket, args) = s3("GET", "/{Bucket}?requestPayment", args)
GetBucketRequestPayment(a...; b...) = GetBucketRequestPayment(a..., b)

"""
    DeleteBucketLifecycle()

Deletes the lifecycle configuration from the specified bucket. Amazon S3 removes all the lifecycle configuration rules in the lifecycle subresource associated with the bucket. Your objects never expire, and Amazon S3 no longer automatically deletes any objects on the basis of rules contained in the deleted lifecycle configuration. To use this operation, you must have permission to perform the s3:PutLifecycleConfiguration action. By default, the bucket owner has this permission and the bucket owner can grant this permission to others. There is usually some time lag before lifecycle configuration deletion is fully propagated to all the Amazon S3 systems. For more information about the object expiration, see Elements to Describe Lifecycle Actions. Related actions include:    PutBucketLifecycleConfiguration     GetBucketLifecycleConfiguration   

Required Parameters
{
  "Bucket": "The bucket name of the lifecycle to delete."
}
"""DeleteBucketLifecycle(Bucket) = s3("DELETE", "/{Bucket}?lifecycle")
DeleteBucketLifecycle(Bucket, args) = s3("DELETE", "/{Bucket}?lifecycle", args)
DeleteBucketLifecycle(a...; b...) = DeleteBucketLifecycle(a..., b)

"""
    DeleteBucketWebsite()

This operation removes the website configuration for a bucket. Amazon S3 returns a 200 OK response upon successfully deleting a website configuration on the specified bucket. You will get a 200 OK response if the website configuration you are trying to delete does not exist on the bucket. Amazon S3 returns a 404 response if the bucket specified in the request does not exist. This DELETE operation requires the S3:DeleteBucketWebsite permission. By default, only the bucket owner can delete the website configuration attached to a bucket. However, bucket owners can grant other users permission to delete the website configuration by writing a bucket policy granting them the S3:DeleteBucketWebsite permission.  For more information about hosting websites, see Hosting Websites on Amazon S3.  The following operations are related to DeleteBucketWebsite:    GetBucketWebsite     PutBucketWebsite   

Required Parameters
{
  "Bucket": "The bucket name for which you want to remove the website configuration. "
}
"""DeleteBucketWebsite(Bucket) = s3("DELETE", "/{Bucket}?website")
DeleteBucketWebsite(Bucket, args) = s3("DELETE", "/{Bucket}?website", args)
DeleteBucketWebsite(a...; b...) = DeleteBucketWebsite(a..., b)

"""
    GetBucketAcl()

This implementation of the GET operation uses the acl subresource to return the access control list (ACL) of a bucket. To use GET to return the ACL of the bucket, you must have READ_ACP access to the bucket. If READ_ACP permission is granted to the anonymous user, you can return the ACL of the bucket without using an authorization header.  Related Resources       

Required Parameters
{
  "Bucket": "Specifies the S3 bucket whose ACL is being requested."
}
"""GetBucketAcl(Bucket) = s3("GET", "/{Bucket}?acl")
GetBucketAcl(Bucket, args) = s3("GET", "/{Bucket}?acl", args)
GetBucketAcl(a...; b...) = GetBucketAcl(a..., b)

"""
    GetObject()

Retrieves objects from Amazon S3. To use GET, you must have READ access to the object. If you grant READ access to the anonymous user, you can return the object without using an authorization header. An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer file system. You can, however, create a logical hierarchy by using object key names that imply a folder structure. For example, instead of naming an object sample.jpg, you can name it photos/2006/February/sample.jpg. To get an object from such a logical hierarchy, specify the full key name for the object in the GET operation. For a virtual hosted-style request example, if you have the object photos/2006/February/sample.jpg, specify the resource as /photos/2006/February/sample.jpg. For a path-style request example, if you have the object photos/2006/February/sample.jpg in the bucket named examplebucket, specify the resource as /examplebucket/photos/2006/February/sample.jpg. For more information about request types, see HTTP Host Header Bucket Specification. To distribute large files to many people, you can save bandwidth costs by using BitTorrent. For more information, see Amazon S3 Torrent. For more information about returning the ACL of an object, see GetObjectAcl. If the object you are retrieving is stored in the GLACIER or DEEP_ARCHIVE storage classes, before you can retrieve the object you must first restore a copy using . Otherwise, this operation returns an InvalidObjectStateError error. For information about restoring archived objects, see Restoring Archived Objects. Encryption request headers, like x-amz-server-side-encryption, should not be sent for GET requests if your object uses server-side encryption with CMKs stored in AWS KMS (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error. If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following headers:   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5   For more information about SSE-C, see Server-Side Encryption (Using Customer-Provided Encryption Keys). Assuming you have permission to read object tags (permission for the s3:GetObjectVersionTagging action), the response also returns the x-amz-tagging-count header that provides the count of number of tags associated with the object. You can use GetObjectTagging to retrieve the tag set associated with an object.  Permissions  You need the s3:GetObject permission for this operation. For more information, see Specifying Permissions in a Policy. If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the s3:ListBucket permission.   If you have the s3:ListBucket permission on the bucket, Amazon S3 will return an HTTP status code 404 ("no such key") error.   If you don’t have the s3:ListBucket permission, Amazon S3 will return an HTTP status code 403 ("access denied") error.    Versioning  By default, the GET operation returns the current version of an object. To return a different version, use the versionId subresource.  If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes x-amz-delete-marker: true in the response.  For more information about versioning, see PutBucketVersioning.   Overriding Response Header Values  There are times when you want to override certain response header values in a GET response. For example, you might override the Content-Disposition response header value in your GET request. You can override values for a set of response headers using the following query parameters. These response header values are sent only on a successful request, that is, when status code 200 OK is returned. The set of headers you can override using these parameters is a subset of the headers that Amazon S3 accepts when you create an object. The response headers that you can override for the GET response are Content-Type, Content-Language, Expires, Cache-Control, Content-Disposition, and Content-Encoding. To override these header values in the GET response, you use the following request parameters.  You must sign the request, either using an Authorization header or a presigned URL, when using these parameters. They cannot be used with an unsigned (anonymous) request.     response-content-type     response-content-language     response-expires     response-cache-control     response-content-disposition     response-content-encoding     Additional Considerations about Request Headers  If both of the If-Match and If-Unmodified-Since headers are present in the request as follows: If-Match condition evaluates to true, and; If-Unmodified-Since condition evaluates to false; then, S3 returns 200 OK and the data requested.  If both of the If-None-Match and If-Modified-Since headers are present in the request as follows: If-None-Match condition evaluates to false, and; If-Modified-Since condition evaluates to true; then, S3 returns 304 Not Modified response code. For more information about conditional requests, see RFC 7232. The following operations are related to GetObject:    ListBuckets     GetObjectAcl   

Required Parameters
{
  "Bucket": "The bucket name containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Key of the object to get."
}

Optional Parameters
{
  "ResponseContentEncoding": "Sets the Content-Encoding header of the response.",
  "IfModifiedSince": "Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).",
  "RequestPayer": "",
  "IfMatch": "Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).",
  "VersionId": "VersionId used to reference a specific version of the object.",
  "IfNoneMatch": "Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "ResponseContentLanguage": "Sets the Content-Language header of the response.",
  "ResponseContentDisposition": "Sets the Content-Disposition header of the response",
  "Range": "Downloads the specified range bytes of an object. For more information about the HTTP Range header, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.",
  "IfUnmodifiedSince": "Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).",
  "ResponseCacheControl": "Sets the Cache-Control header of the response.",
  "ResponseContentType": "Sets the Content-Type header of the response.",
  "PartNumber": "Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.",
  "ResponseExpires": "Sets the Expires header of the response.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256)."
}
"""GetObject(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}")
GetObject(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}", args)
GetObject(a...; b...) = GetObject(a..., b)

"""
    DeleteBucketReplication()

 Deletes the replication configuration from the bucket. To use this operation, you must have permissions to perform the s3:PutReplicationConfiguration action. The bucket owner has these permissions by default and can grant it to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.   It can take a while for the deletion of a replication configuration to fully propagate.   For information about replication configuration, see Replication in the Amazon S3 Developer Guide.  The following operations are related to DeleteBucketReplication:    PutBucketReplication     GetBucketReplication   

Required Parameters
{
  "Bucket": " The bucket name. "
}
"""DeleteBucketReplication(Bucket) = s3("DELETE", "/{Bucket}?replication")
DeleteBucketReplication(Bucket, args) = s3("DELETE", "/{Bucket}?replication", args)
DeleteBucketReplication(a...; b...) = DeleteBucketReplication(a..., b)

"""
    PutObjectLockConfiguration()

Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.   DefaultRetention requires either Days or Years. You can't specify both at the same time.   Related Resources     Locking Objects   

Required Parameters
{
  "Bucket": "The bucket whose Object Lock configuration you want to create or replace."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash for the request body.",
  "ObjectLockConfiguration": "The Object Lock configuration that you want to apply to the specified bucket.",
  "RequestPayer": "",
  "Token": "A token to allow Object Lock to be enabled for an existing bucket."
}
"""PutObjectLockConfiguration(Bucket) = s3("PUT", "/{Bucket}?object-lock")
PutObjectLockConfiguration(Bucket, args) = s3("PUT", "/{Bucket}?object-lock", args)
PutObjectLockConfiguration(a...; b...) = PutObjectLockConfiguration(a..., b)

"""
    ListParts()

Lists the parts that have been uploaded for a specific multipart upload. This operation must include the upload ID, which you obtain by sending the initiate multipart upload request (see CreateMultipartUpload). This request returns a maximum of 1,000 uploaded parts. The default number of parts returned is 1,000 parts. You can restrict the number of parts returned by specifying the max-parts request parameter. If your multipart upload consists of more than 1,000 parts, the response returns an IsTruncated field with the value of true, and a NextPartNumberMarker element. In subsequent ListParts requests you can include the part-number-marker query string parameter and set its value to the NextPartNumberMarker field value from the previous response. For more information on multipart uploads, see Uploading Objects Using Multipart Upload. For information on permissions required to use the multipart upload API, see Multipart Upload API and Permissions. The following operations are related to ListParts:    CreateMultipartUpload     UploadPart     CompleteMultipartUpload     AbortMultipartUpload     ListMultipartUploads   

Required Parameters
{
  "UploadId": "Upload ID identifying the multipart upload whose parts are being listed.",
  "Bucket": "Name of the bucket to which the parts are being uploaded.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Object key for which the multipart upload was initiated."
}

Optional Parameters
{
  "MaxParts": "Sets the maximum number of parts to return.",
  "RequestPayer": "",
  "PartNumberMarker": "Specifies the part after which listing should begin. Only parts with higher part numbers will be listed."
}
"""ListParts(UploadId, Bucket, Key) = s3("GET", "/{Bucket}/{Key+}")
ListParts(UploadId, Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}", args)
ListParts(a...; b...) = ListParts(a..., b)

"""
    SelectObjectContent()

This operation filters the contents of an Amazon S3 object based on a simple structured query language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses this format to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information about Amazon S3 Select, see Selecting Content from Objects in the Amazon Simple Storage Service Developer Guide. For more information about using SQL with Amazon S3 Select, see  SQL Reference for Amazon S3 Select and Glacier Select in the Amazon Simple Storage Service Developer Guide.   Permissions  You must have s3:GetObject permission for this operation. Amazon S3 Select does not support anonymous access. For more information about permissions, see Specifying Permissions in a Policy in the Amazon Simple Storage Service Developer Guide.   Object Data Formats  You can use Amazon S3 Select to query objects that have the following format properties:    CSV, JSON, and Parquet - Objects must be in CSV, JSON, or Parquet format.    UTF-8 - UTF-8 is the only encoding type Amazon S3 Select supports.    GZIP or BZIP2 - CSV and JSON files can be compressed using GZIP or BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3 Select supports for CSV and JSON files. Amazon S3 Select supports columnar compression for Parquet using GZIP or Snappy. Amazon S3 Select does not support whole-object compression for Parquet objects.    Server-side encryption - Amazon S3 Select supports querying objects that are protected with server-side encryption. For objects that are encrypted with customer-provided encryption keys (SSE-C), you must use HTTPS, and you must use the headers that are documented in the GetObject. For more information about SSE-C, see Server-Side Encryption (Using Customer-Provided Encryption Keys) in the Amazon Simple Storage Service Developer Guide. For objects that are encrypted with Amazon S3 managed encryption keys (SSE-S3) and customer master keys (CMKs) stored in AWS Key Management Service (SSE-KMS), server-side encryption is handled transparently, so you don't need to specify anything. For more information about server-side encryption, including SSE-S3 and SSE-KMS, see Protecting Data Using Server-Side Encryption in the Amazon Simple Storage Service Developer Guide.    Working with the Response Body  Given the response size is unknown, Amazon S3 Select streams the response as a series of messages and includes a Transfer-Encoding header with chunked as its value in the response. For more information, see RESTSelectObjectAppendix .   GetObject Support  The SelectObjectContent operation does not support the following GetObject functionality. For more information, see GetObject.    Range: While you can specify a scan range for a Amazon S3 Select request, see SelectObjectContentRequest ScanRange in the request parameters below, you cannot specify the range of bytes of an object to return.    GLACIER, DEEP_ARCHIVE and REDUCED_REDUNDANCY storage classes: You cannot specify the GLACIER, DEEP_ARCHIVE, or REDUCED_REDUNDANCY storage classes. For more information, about storage classes see Storage Classes in the Amazon Simple Storage Service Developer Guide.     Special Errors  For a list of special errors for this operation and for general information about Amazon S3 errors and a list of error codes, see ErrorResponses   Related Resources     GetObject     GetBucketLifecycleConfiguration     PutBucketLifecycleConfiguration   

Required Parameters
{
  "OutputSerialization": "Describes the format of the data that you want Amazon S3 to return in response.",
  "ExpressionType": "The type of the provided expression (for example, SQL).",
  "Bucket": "The S3 bucket.",
  "Key": "The object key.",
  "Expression": "The expression that is used to query the object.",
  "InputSerialization": "Describes the format of the data in the object that is being queried."
}

Optional Parameters
{
  "ScanRange": "Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.  ScanRangemay be used in the following ways:    &lt;scanrange&gt;&lt;start&gt;50&lt;/start&gt;&lt;end&gt;100&lt;/end&gt;&lt;/scanrange&gt; - process only the records starting between the bytes 50 and 100 (inclusive, counting from zero)    &lt;scanrange&gt;&lt;start&gt;50&lt;/start&gt;&lt;/scanrange&gt; - process only the records starting after the byte 50    &lt;scanrange&gt;&lt;end&gt;50&lt;/end&gt;&lt;/scanrange&gt; - process only the records within the last 50 bytes of the file.  ",
  "SSECustomerAlgorithm": "The SSE Algorithm used to encrypt the object. For more information, see Server-Side Encryption (Using Customer-Provided Encryption Keys. ",
  "RequestProgress": "Specifies if periodic request progress information should be enabled.",
  "SSECustomerKeyMD5": "The SSE Customer Key MD5. For more information, see Server-Side Encryption (Using Customer-Provided Encryption Keys. ",
  "SSECustomerKey": "The SSE Customer Key. For more information, see Server-Side Encryption (Using Customer-Provided Encryption Keys. "
}
"""SelectObjectContent(OutputSerialization, ExpressionType, Bucket, Key, Expression, InputSerialization) = s3("POST", "/{Bucket}/{Key+}?select&select-type=2")
SelectObjectContent(OutputSerialization, ExpressionType, Bucket, Key, Expression, InputSerialization, args) = s3("POST", "/{Bucket}/{Key+}?select&select-type=2", args)
SelectObjectContent(a...; b...) = SelectObjectContent(a..., b)

"""
    GetBucketNotificationConfiguration()

Returns the notification configuration of a bucket. If notifications are not enabled on the bucket, the operation returns an empty NotificationConfiguration element. By default, you must be the bucket owner to read the notification configuration of a bucket. However, the bucket owner can use a bucket policy to grant permission to other users to read this configuration with the s3:GetBucketNotification permission. For more information about setting and reading the notification configuration on a bucket, see Setting Up Notification of Bucket Events. For more information about bucket policies, see Using Bucket Policies. The following operation is related to GetBucketNotification:    PutBucketNotification   

Required Parameters
{
  "Bucket": "Name of the bucket for which to get the notification configuration"
}
"""GetBucketNotificationConfiguration(Bucket) = s3("GET", "/{Bucket}?notification")
GetBucketNotificationConfiguration(Bucket, args) = s3("GET", "/{Bucket}?notification", args)
GetBucketNotificationConfiguration(a...; b...) = GetBucketNotificationConfiguration(a..., b)

"""
    GetBucketEncryption()

Returns the default encryption configuration for an Amazon S3 bucket. For information about the Amazon S3 default encryption feature, see Amazon S3 Default Bucket Encryption.  To use this operation, you must have permission to perform the s3:GetEncryptionConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. The following operations are related to GetBucketEncryption:    PutBucketEncryption     DeleteBucketEncryption   

Required Parameters
{
  "Bucket": "The name of the bucket from which the server-side encryption configuration is retrieved."
}
"""GetBucketEncryption(Bucket) = s3("GET", "/{Bucket}?encryption")
GetBucketEncryption(Bucket, args) = s3("GET", "/{Bucket}?encryption", args)
GetBucketEncryption(a...; b...) = GetBucketEncryption(a..., b)

"""
    GetBucketPolicy()

Returns the policy of a specified bucket. If you are using an identity other than the root user of the AWS account that owns the bucket, the calling identity must have the GetBucketPolicy permissions on the specified bucket and belong to the bucket owner's account in order to use this operation. If you don't have GetBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a 405 Method Not Allowed error.  As a security precaution, the root user of the AWS account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action.  For more information about bucket policies, see Using Bucket Policies and User Policies. The following operation is related to GetBucketPolicy:    GetObject   

Required Parameters
{
  "Bucket": "The bucket name for which to get the bucket policy."
}
"""GetBucketPolicy(Bucket) = s3("GET", "/{Bucket}?policy")
GetBucketPolicy(Bucket, args) = s3("GET", "/{Bucket}?policy", args)
GetBucketPolicy(a...; b...) = GetBucketPolicy(a..., b)

"""
    HeadBucket()

This operation is useful to determine if a bucket exists and you have permission to access it. The operation returns a 200 OK if the bucket exists and you have permission to access it. Otherwise, the operation might return responses such as 404 Not Found and 403 Forbidden.  To use this operation, you must have permissions to perform the s3:ListBucket action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.

Required Parameters
{
  "Bucket": "The bucket name."
}
"""HeadBucket(Bucket) = s3("HEAD", "/{Bucket}")
HeadBucket(Bucket, args) = s3("HEAD", "/{Bucket}", args)
HeadBucket(a...; b...) = HeadBucket(a..., b)

"""
    CreateMultipartUpload()

This operation initiates a multipart upload and returns an upload ID. This upload ID is used to associate all of the parts in the specific multipart upload. You specify this upload ID in each of your subsequent upload part requests (see UploadPart). You also include this upload ID in the final request to either complete or abort the multipart upload request. For more information about multipart uploads, see Multipart Upload Overview. If you have configured a lifecycle rule to abort incomplete multipart uploads, the upload must complete within the number of days specified in the bucket lifecycle configuration. Otherwise, the incomplete multipart upload becomes eligible for an abort operation and Amazon S3 aborts the multipart upload. For more information, see Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy. For information about the permissions required to use the multipart upload API, see Multipart Upload API and Permissions. For request signing, multipart upload is just a series of regular requests. You initiate a multipart upload, send one or more requests to upload parts, and then complete the multipart upload process. You sign each request individually. There is nothing special about signing multipart upload requests. For more information about signing, see Authenticating Requests (AWS Signature Version 4).   After you initiate a multipart upload and upload one or more parts, to stop being charged for storing the uploaded parts, you must either complete or abort the multipart upload. Amazon S3 frees up the space used to store the parts and stop charging you for storing them only after you either complete or abort a multipart upload.   You can optionally request server-side encryption. For server-side encryption, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. You can provide your own encryption key, or use AWS Key Management Service (AWS KMS) customer master keys (CMKs) or Amazon S3-managed encryption keys. If you choose to provide your own encryption key, the request headers you provide in UploadPart) and UploadPartCopy) requests must match the headers you used in the request to initiate the upload by using CreateMultipartUpload.  To perform a multipart upload with encryption using an AWS KMS CMK, the requester must have permission to the kms:Encrypt, kms:Decrypt, kms:ReEncrypt*, kms:GenerateDataKey*, and kms:DescribeKey actions on the key. These permissions are required because Amazon S3 must decrypt and read data from the encrypted file parts before it completes the multipart upload. If your AWS Identity and Access Management (IAM) user or role is in the same AWS account as the AWS KMS CMK, then you must have these permissions on the key policy. If your IAM user or role belongs to a different account than the key, then you must have the permissions on both the key policy and your IAM user or role.  For more information, see Protecting Data Using Server-Side Encryption.  Access Permissions  When copying an object, you can optionally specify the accounts or groups that should be granted specific permissions on the new object. There are two ways to grant the permissions using the request headers:   Specify a canned ACL with the x-amz-acl request header. For more information, see Canned ACL.   Specify access permissions explicitly with the x-amz-grant-read, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview.   You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  Server-Side- Encryption-Specific Request Headers  You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption. Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it when you access it. The option you use depends on whether you want to use AWS managed encryption keys or provide your own encryption key.    Use encryption keys managed by Amazon S3 or customer master keys (CMKs) stored in AWS Key Management Service (AWS KMS) – If you want AWS to manage the keys used to encrypt data, specify the following headers in the request.   x-amz-server-side​-encryption   x-amz-server-side-encryption-aws-kms-key-id   x-amz-server-side-encryption-context    If you specify x-amz-server-side-encryption:aws:kms, but don't provide x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS managed CMK in AWS KMS to protect the data.   All GET and PUT requests for an object protected by AWS KMS fail if you don't make them with SSL or by using SigV4.  For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS.   Use customer-provided encryption keys – If you want to manage your own encryption keys, provide all the following headers in the request.   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5   For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in AWS KMS.    Access-Control-List (ACL)-Specific Request Headers  You also can use the following access control–related headers with this operation. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual AWS accounts or to predefined groups defined by Amazon S3. These permissions are then added to the access control list (ACL) on the object. For more information, see Using ACLs. With this operation, you can grant access permissions using one of the following two methods:   Specify a canned ACL (x-amz-acl) — Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. For more information, see Canned ACL.   Specify access permissions explicitly — To explicitly grant access permissions to specific AWS accounts or groups, use the following headers. Each header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. In the header, you specify a list of grantees who get the specific permission. To grant permissions explicitly, use:   x-amz-grant-read   x-amz-grant-write   x-amz-grant-read-acp   x-amz-grant-write-acp   x-amz-grant-full-control   You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account    id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-read header grants the AWS accounts identified by email addresses permissions to read object data and its metadata:  x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"       The following operations are related to CreateMultipartUpload:    UploadPart     CompleteMultipartUpload     AbortMultipartUpload     ListParts     ListMultipartUploads   

Required Parameters
{
  "Bucket": "The name of the bucket to which to initiate the upload",
  "Key": "Object key for which the multipart upload is to be initiated."
}

Optional Parameters
{
  "GrantReadACP": "Allows grantee to read the object ACL.",
  "ObjectLockRetainUntilDate": "Specifies the date and time when you want the Object Lock to expire.",
  "RequestPayer": "",
  "ContentLanguage": "The language the content is in.",
  "ContentEncoding": "Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.",
  "SSEKMSEncryptionContext": "Specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.",
  "ObjectLockLegalHoldStatus": "Specifies whether you want to apply a Legal Hold to the uploaded object.",
  "GrantRead": "Allows grantee to read the object data and its metadata.",
  "Expires": "The date and time at which the object is no longer cacheable.",
  "Tagging": "The tag-set for the object. The tag-set must be encoded as URL Query parameters.",
  "ACL": "The canned ACL to apply to the object.",
  "ObjectLockMode": "Specifies the Object Lock mode that you want to apply to the uploaded object.",
  "ContentDisposition": "Specifies presentational information for the object.",
  "CacheControl": "Specifies caching behavior along the request/reply chain.",
  "ContentType": "A standard MIME type describing the format of the object data.",
  "ServerSideEncryption": "The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).",
  "StorageClass": "The type of storage to use for the object. Defaults to 'STANDARD'.",
  "GrantFullControl": "Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.",
  "SSEKMSKeyId": "Specifies the ID of the symmetric customer managed AWS KMS CMK to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. For information about configuring using any of the officially supported AWS SDKs and AWS CLI, see Specifying the Signature Version in Request Authentication in the Amazon S3 Developer Guide.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256).",
  "Metadata": "A map of metadata to store with the object in S3.",
  "WebsiteRedirectLocation": "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable object."
}
"""CreateMultipartUpload(Bucket, Key) = s3("POST", "/{Bucket}/{Key+}?uploads")
CreateMultipartUpload(Bucket, Key, args) = s3("POST", "/{Bucket}/{Key+}?uploads", args)
CreateMultipartUpload(a...; b...) = CreateMultipartUpload(a..., b)

"""
    PutObjectAcl()

Uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket. You must have WRITE_ACP permission to set the ACL of an object. Depending on your application needs, you can choose to set the ACL on an object using either the request body or the headers. For example, if you have an existing application that updates a bucket ACL using the request body, you can continue to use that approach.  Access Permissions  You can set access permissions using one of the following methods:   Specify a canned ACL with the x-amz-acl request header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. Specify the canned ACL name as the value of x-amz-acl. If you use this header, you cannot use other access control-specific headers in your request. For more information, see Canned ACL.   Specify access permissions explicitly with the x-amz-grant-read, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. When using these headers, you specify explicit access permissions and grantees (AWS accounts or Amazon S3 groups) who will receive the permission. If you use these ACL-specific headers, you cannot use x-amz-acl header to set a canned ACL. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account    id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-read header grants list objects permission to the two AWS accounts identified by their email addresses.  x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"     You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  Grantee Values  You can specify the person (grantee) to whom you're assigning access rights (using request elements) in the following ways:   By Email address:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;  The grantee is resolved to the CanonicalUser and, in a response to a GET Object acl request, appears as the CanonicalUser.   By the person's ID:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt; &lt;/Grantee&gt;  DisplayName is optional and ignored in the request.   By URI:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;     Versioning  The ACL of an object is set at the object version level. By default, PUT sets the ACL of the current version of an object. To set the ACL of a different version, use the versionId subresource.  Related Resources     CopyObject     GetObject   

Required Parameters
{
  "Bucket": "The bucket name that contains the object to which you want to attach the ACL.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Key for which the PUT operation was initiated."
}

Optional Parameters
{
  "AccessControlPolicy": "Contains the elements that set the ACL permissions for an object per grantee.",
  "GrantRead": "Allows grantee to list the objects in the bucket.",
  "GrantFullControl": "Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.",
  "GrantReadACP": "Allows grantee to read the bucket ACL.",
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to RFC 1864.&gt; ",
  "RequestPayer": "",
  "ACL": "The canned ACL to apply to the object. For more information, see Canned ACL.",
  "VersionId": "VersionId used to reference a specific version of the object.",
  "GrantWrite": "Allows grantee to create, overwrite, and delete any object in the bucket.",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable bucket."
}
"""PutObjectAcl(Bucket, Key) = s3("PUT", "/{Bucket}/{Key+}?acl")
PutObjectAcl(Bucket, Key, args) = s3("PUT", "/{Bucket}/{Key+}?acl", args)
PutObjectAcl(a...; b...) = PutObjectAcl(a..., b)

"""
    DeleteBucketTagging()

Deletes the tags from the bucket. To use this operation, you must have permission to perform the s3:PutBucketTagging action. By default, the bucket owner has this permission and can grant this permission to others.  The following operations are related to DeleteBucketTagging:    GetBucketTagging     PutBucketTagging   

Required Parameters
{
  "Bucket": "The bucket that has the tag set to be removed."
}
"""DeleteBucketTagging(Bucket) = s3("DELETE", "/{Bucket}?tagging")
DeleteBucketTagging(Bucket, args) = s3("DELETE", "/{Bucket}?tagging", args)
DeleteBucketTagging(a...; b...) = DeleteBucketTagging(a..., b)

"""
    CreateBucket()

Creates a new bucket. To create a bucket, you must register with Amazon S3 and have a valid AWS Access Key ID to authenticate requests. Anonymous requests are never allowed to create buckets. By creating the bucket, you become the bucket owner. Not every string is an acceptable bucket name. For information on bucket naming restrictions, see Working with Amazon S3 Buckets. By default, the bucket is created in the US East (N. Virginia) Region. You can optionally specify a Region in the request body. You might choose a Region to optimize latency, minimize costs, or address regulatory requirements. For example, if you reside in Europe, you will probably find it advantageous to create buckets in the EU (Ireland) Region. For more information, see How to Select a Region for Your Buckets.  If you send your create bucket request to the s3.amazonaws.com endpoint, the request goes to the us-east-1 Region. Accordingly, the signature calculations in Signature Version 4 must use us-east-1 as the Region, even if the location constraint in the request specifies another Region where the bucket is to be created. If you create a bucket in a Region other than US East (N. Virginia), your application must be able to handle 307 redirect. For more information, see Virtual Hosting of Buckets.  When creating a bucket using this operation, you can optionally specify the accounts or groups that should be granted specific permissions on the bucket. There are two ways to grant the appropriate permissions using the request headers.   Specify a canned ACL using the x-amz-acl request header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. For more information, see Canned ACL.   Specify access permissions explicitly using the x-amz-grant-read, x-amz-grant-write, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. These headers map to the set of permissions Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account    id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-read header grants the AWS accounts identified by email addresses permissions to read object data and its metadata:  x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"      You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  The following operations are related to CreateBucket:    PutObject     DeleteBucket   

Required Parameters
{
  "Bucket": "The name of the bucket to create."
}

Optional Parameters
{
  "GrantRead": "Allows grantee to list the objects in the bucket.",
  "GrantFullControl": "Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.",
  "GrantReadACP": "Allows grantee to read the bucket ACL.",
  "ACL": "The canned ACL to apply to the bucket.",
  "ObjectLockEnabledForBucket": "Specifies whether you want S3 Object Lock to be enabled for the new bucket.",
  "CreateBucketConfiguration": "The configuration information for the bucket.",
  "GrantWrite": "Allows grantee to create, overwrite, and delete any object in the bucket.",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable bucket."
}
"""CreateBucket(Bucket) = s3("PUT", "/{Bucket}")
CreateBucket(Bucket, args) = s3("PUT", "/{Bucket}", args)
CreateBucket(a...; b...) = CreateBucket(a..., b)

"""
    GetObjectRetention()

Retrieves an object's retention settings. For more information, see Locking Objects.

Required Parameters
{
  "Bucket": "The bucket name containing the object whose retention settings you want to retrieve.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "The key name for the object whose retention settings you want to retrieve."
}

Optional Parameters
{
  "RequestPayer": "",
  "VersionId": "The version ID for the object whose retention settings you want to retrieve."
}
"""GetObjectRetention(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}?retention")
GetObjectRetention(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}?retention", args)
GetObjectRetention(a...; b...) = GetObjectRetention(a..., b)

"""
    GetBucketLocation()

Returns the Region the bucket resides in. You set the bucket's Region using the LocationConstraint request parameter in a CreateBucket request. For more information, see CreateBucket.  To use this implementation of the operation, you must be the bucket owner. The following operations are related to GetBucketLocation:    GetObject     CreateBucket   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the location."
}
"""GetBucketLocation(Bucket) = s3("GET", "/{Bucket}?location")
GetBucketLocation(Bucket, args) = s3("GET", "/{Bucket}?location", args)
GetBucketLocation(a...; b...) = GetBucketLocation(a..., b)

"""
    GetBucketVersioning()

Returns the versioning state of a bucket. To retrieve the versioning state of a bucket, you must be the bucket owner. This implementation also returns the MFA Delete status of the versioning state. If the MFA Delete status is enabled, the bucket owner must use an authentication device to change the versioning state of the bucket. The following operations are related to GetBucketVersioning:    GetObject     PutObject     DeleteObject   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the versioning information."
}
"""GetBucketVersioning(Bucket) = s3("GET", "/{Bucket}?versioning")
GetBucketVersioning(Bucket, args) = s3("GET", "/{Bucket}?versioning", args)
GetBucketVersioning(a...; b...) = GetBucketVersioning(a..., b)

"""
    DeleteBucketCors()

Deletes the cors configuration information set for the bucket. To use this operation, you must have permission to perform the s3:PutBucketCORS action. The bucket owner has this permission by default and can grant this permission to others.  For information about cors, see Enabling Cross-Origin Resource Sharing in the Amazon Simple Storage Service Developer Guide.  Related Resources:         RESTOPTIONSobject   

Required Parameters
{
  "Bucket": "Specifies the bucket whose cors configuration is being deleted."
}
"""DeleteBucketCors(Bucket) = s3("DELETE", "/{Bucket}?cors")
DeleteBucketCors(Bucket, args) = s3("DELETE", "/{Bucket}?cors", args)
DeleteBucketCors(a...; b...) = DeleteBucketCors(a..., b)

"""
    ListMultipartUploads()

This operation lists in-progress multipart uploads. An in-progress multipart upload is a multipart upload that has been initiated using the Initiate Multipart Upload request, but has not yet been completed or aborted. This operation returns at most 1,000 multipart uploads in the response. 1,000 multipart uploads is the maximum number of uploads a response can include, which is also the default value. You can further limit the number of uploads in a response by specifying the max-uploads parameter in the response. If additional multipart uploads satisfy the list criteria, the response will contain an IsTruncated element with the value true. To list the additional multipart uploads, use the key-marker and upload-id-marker request parameters. In the response, the uploads are sorted by key. If your application has initiated more than one multipart upload using the same object key, then uploads in the response are first sorted by key. Additionally, uploads are sorted in ascending order within each key by the upload initiation time. For more information on multipart uploads, see Uploading Objects Using Multipart Upload. For information on permissions required to use the multipart upload API, see Multipart Upload API and Permissions. The following operations are related to ListMultipartUploads:    CreateMultipartUpload     UploadPart     CompleteMultipartUpload     ListParts     AbortMultipartUpload   

Required Parameters
{
  "Bucket": "Name of the bucket to which the multipart upload was initiated.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide."
}

Optional Parameters
{
  "KeyMarker": "Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin. If upload-id-marker is not specified, only the keys lexicographically greater than the specified key-marker will be included in the list. If upload-id-marker is specified, any multipart uploads for a key equal to the key-marker might also be included, provided those multipart uploads have upload IDs lexicographically greater than the specified upload-id-marker.",
  "Delimiter": "Character you use to group keys. All keys that contain the same string between the prefix, if specified, and the first occurrence of the delimiter after the prefix are grouped under a single result element, CommonPrefixes. If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The keys that are grouped under CommonPrefixes result element are not returned elsewhere in the response.",
  "MaxUploads": "Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.",
  "UploadIdMarker": "Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads for a key equal to the key-marker might be included in the list only if they have an upload ID lexicographically greater than the specified upload-id-marker.",
  "EncodingType": "",
  "Prefix": "Lists in-progress uploads only for those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different grouping of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.)"
}
"""ListMultipartUploads(Bucket) = s3("GET", "/{Bucket}?uploads")
ListMultipartUploads(Bucket, args) = s3("GET", "/{Bucket}?uploads", args)
ListMultipartUploads(a...; b...) = ListMultipartUploads(a..., b)

"""
    GetBucketCors()

Returns the cors configuration information set for the bucket.  To use this operation, you must have permission to perform the s3:GetBucketCORS action. By default, the bucket owner has this permission and can grant it to others.  For more information about cors, see  Enabling Cross-Origin Resource Sharing. The following operations are related to GetBucketCors:    PutBucketCors     DeleteBucketCors   

Required Parameters
{
  "Bucket": "The bucket name for which to get the cors configuration."
}
"""GetBucketCors(Bucket) = s3("GET", "/{Bucket}?cors")
GetBucketCors(Bucket, args) = s3("GET", "/{Bucket}?cors", args)
GetBucketCors(a...; b...) = GetBucketCors(a..., b)

"""
    PutBucketRequestPayment()

Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. For more information, see Requester Pays Buckets. The following operations are related to PutBucketRequestPayment:    CreateBucket     GetBucketRequestPayment   

Required Parameters
{
  "Bucket": "The bucket name.",
  "RequestPaymentConfiguration": "Container for Payer."
}

Optional Parameters
{
  "ContentMD5": "&gt;The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see RFC 1864."
}
"""PutBucketRequestPayment(Bucket, RequestPaymentConfiguration) = s3("PUT", "/{Bucket}?requestPayment")
PutBucketRequestPayment(Bucket, RequestPaymentConfiguration, args) = s3("PUT", "/{Bucket}?requestPayment", args)
PutBucketRequestPayment(a...; b...) = PutBucketRequestPayment(a..., b)

"""
    DeleteObjects()

This operation enables you to delete multiple objects from a bucket using a single HTTP request. If you know the object keys that you want to delete, then this operation provides a suitable alternative to sending individual delete requests, reducing per-request overhead. The request contains a list of up to 1000 keys that you want to delete. In the XML, you provide the object key names, and optionally, version IDs if you want to delete a specific version of the object from a versioning-enabled bucket. For each key, Amazon S3 performs a delete operation and returns the result of that delete, success, or failure, in the response. Note that if the object specified in the request is not found, Amazon S3 returns the result as deleted.  The operation supports two modes for the response: verbose and quiet. By default, the operation uses verbose mode in which the response includes the result of deletion of each key in your request. In quiet mode the response includes only keys where the delete operation encountered an error. For a successful deletion, the operation does not return any information about the delete in the response body. When performing this operation on an MFA Delete enabled bucket, that attempts to delete any versioned objects, you must include an MFA token. If you do not provide one, the entire request will fail, even if there are non-versioned objects you are trying to delete. If you provide an invalid token, whether there are versioned keys in the request or not, the entire Multi-Object Delete request will fail. For information about MFA Delete, see  MFA Delete. Finally, the Content-MD5 header is required for all Multi-Object Delete requests. Amazon S3 uses the header value to ensure that your request body has not been altered in transit. The following operations are related to DeleteObjects:    CreateMultipartUpload     UploadPart     CompleteMultipartUpload     ListParts     AbortMultipartUpload   

Required Parameters
{
  "Delete": "Container for the request.",
  "Bucket": "The bucket name containing the objects to delete.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide."
}

Optional Parameters
{
  "MFA": "The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.",
  "RequestPayer": "",
  "BypassGovernanceRetention": "Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. You must have sufficient permissions to perform this operation."
}
"""DeleteObjects(Delete, Bucket) = s3("POST", "/{Bucket}?delete")
DeleteObjects(Delete, Bucket, args) = s3("POST", "/{Bucket}?delete", args)
DeleteObjects(a...; b...) = DeleteObjects(a..., b)

"""
    GetBucketLifecycleConfiguration()

 Bucket lifecycle configuration now supports specifying a lifecycle rule using an object key name prefix, one or more object tags, or a combination of both. Accordingly, this section describes the latest API. The response describes the new filter element that you can use to specify a filter to select a subset of objects to which the rule applies. If you are still using previous version of the lifecycle configuration, it works. For the earlier API description, see GetBucketLifecycle.  Returns the lifecycle configuration information set on the bucket. For information about lifecycle configuration, see Object Lifecycle Management. To use this operation, you must have permission to perform the s3:GetLifecycleConfiguration action. The bucket owner has this permission, by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  GetBucketLifecycleConfiguration has the following special error:   Error code: NoSuchLifecycleConfiguration    Description: The lifecycle configuration does not exist.   HTTP Status Code: 404 Not Found   SOAP Fault Code Prefix: Client     The following operations are related to DeleteBucketMetricsConfiguration:    GetBucketLifecycle     PutBucketLifecycle     DeleteBucketLifecycle   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the lifecycle information."
}
"""GetBucketLifecycleConfiguration(Bucket) = s3("GET", "/{Bucket}?lifecycle")
GetBucketLifecycleConfiguration(Bucket, args) = s3("GET", "/{Bucket}?lifecycle", args)
GetBucketLifecycleConfiguration(a...; b...) = GetBucketLifecycleConfiguration(a..., b)

"""
    PutBucketEncryption()

This implementation of the PUT operation uses the encryption subresource to set the default encryption state of an existing bucket. This implementation of the PUT operation sets default encryption for a bucket using server-side encryption with Amazon S3-managed keys SSE-S3 or AWS KMS customer master keys (CMKs) (SSE-KMS).  This operation requires AWS Signature Version 4. For more information, see  Authenticating Requests (AWS Signature Version 4).   To use this operation, you must have permissions to perform the s3:PutEncryptionConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide.   Related Resources     GetBucketEncryption     DeleteBucketEncryption   

Required Parameters
{
  "ServerSideEncryptionConfiguration": "",
  "Bucket": "Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3) or customer master keys stored in AWS KMS (SSE-KMS). For information about the Amazon S3 default encryption feature, see Amazon S3 Default Bucket Encryption in the Amazon Simple Storage Service Developer Guide."
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the server-side encryption configuration. This parameter is auto-populated when using the command from the CLI."
}
"""PutBucketEncryption(ServerSideEncryptionConfiguration, Bucket) = s3("PUT", "/{Bucket}?encryption")
PutBucketEncryption(ServerSideEncryptionConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?encryption", args)
PutBucketEncryption(a...; b...) = PutBucketEncryption(a..., b)

"""
    GetObjectAcl()

Returns the access control list (ACL) of an object. To use this operation, you must have READ_ACP access to the object.  Versioning  By default, GET returns ACL information about the current version of an object. To return ACL information about a different version, use the versionId subresource. The following operations are related to GetObjectAcl:    GetObject     DeleteObject     PutObject   

Required Parameters
{
  "Bucket": "The bucket name that contains the object for which to get the ACL information.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "The key of the object for which to get the ACL information."
}

Optional Parameters
{
  "RequestPayer": "",
  "VersionId": "VersionId used to reference a specific version of the object."
}
"""GetObjectAcl(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}?acl")
GetObjectAcl(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}?acl", args)
GetObjectAcl(a...; b...) = GetObjectAcl(a..., b)

"""
    ListObjects()

Returns some or all (up to 1,000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A 200 OK response can contain valid or invalid XML. Be sure to design your application to parse the contents of the response and handle it appropriately.  This API has been revised. We recommend that you use the newer version, ListObjectsV2, when developing applications. For backward compatibility, Amazon S3 continues to support ListObjects.  The following operations are related to ListObjects:    ListObjectsV2     GetObject     PutObject     CreateBucket     ListBuckets   

Required Parameters
{
  "Bucket": "The name of the bucket containing the objects."
}

Optional Parameters
{
  "MaxKeys": "Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.",
  "Marker": "Specifies the key to start with when listing objects in a bucket.",
  "Delimiter": "A delimiter is a character you use to group keys.",
  "RequestPayer": "Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.",
  "EncodingType": "",
  "Prefix": "Limits the response to keys that begin with the specified prefix."
}
"""ListObjects(Bucket) = s3("GET", "/{Bucket}")
ListObjects(Bucket, args) = s3("GET", "/{Bucket}", args)
ListObjects(a...; b...) = ListObjects(a..., b)

"""
    ListObjectVersions()

Returns metadata about all of the versions of objects in a bucket. You can also use request parameters as selection criteria to return metadata about a subset of all the object versions.    A 200 OK response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately.  To use this operation, you must have READ access to the bucket. The following operations are related to ListObjectVersions:    ListObjectsV2     GetObject     PutObject     DeleteObject   

Required Parameters
{
  "Bucket": "The bucket name that contains the objects.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide."
}

Optional Parameters
{
  "MaxKeys": "Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more. If additional keys satisfy the search criteria, but were not returned because max-keys was exceeded, the response contains &lt;isTruncated&gt;true&lt;/isTruncated&gt;. To return the additional keys, see key-marker and version-id-marker.",
  "KeyMarker": "Specifies the key to start with when listing objects in a bucket.",
  "Delimiter": "A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in CommonPrefixes. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.",
  "EncodingType": "",
  "Prefix": "Use this parameter to select only those keys that begin with the specified prefix. You can use prefixes to separate a bucket into different groupings of keys. (You can think of using prefix to make groups in the same way you'd use a folder in a file system.) You can use prefix with delimiter to roll up numerous objects into a single result under CommonPrefixes. ",
  "VersionIdMarker": "Specifies the object version you want to start listing from."
}
"""ListObjectVersions(Bucket) = s3("GET", "/{Bucket}?versions")
ListObjectVersions(Bucket, args) = s3("GET", "/{Bucket}?versions", args)
ListObjectVersions(a...; b...) = ListObjectVersions(a..., b)

"""
    HeadObject()

The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object. A HEAD request has the same options as a GET operation on an object. The response is identical to the GET response except that there is no response body. If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5   For more information about SSE-C, see Server-Side Encryption (Using Customer-Provided Encryption Keys).  Encryption request headers, like x-amz-server-side-encryption, should not be sent for GET requests if your object uses server-side encryption with CMKs stored in AWS KMS (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400 BadRequest error.  Request headers are limited to 8 KB in size. For more information, see Common Request Headers. Consider the following when using request headers:    Consideration 1 – If both of the If-Match and If-Unmodified-Since headers are present in the request as follows:    If-Match condition evaluates to true, and;    If-Unmodified-Since condition evaluates to false;   Then Amazon S3 returns 200 OK and the data requested.    Consideration 2 – If both of the If-None-Match and If-Modified-Since headers are present in the request as follows:    If-None-Match condition evaluates to false, and;    If-Modified-Since condition evaluates to true;   Then Amazon S3 returns the 304 Not Modified response code.   For more information about conditional requests, see RFC 7232.  Permissions  You need the s3:GetObject permission for this operation. For more information, see Specifying Permissions in a Policy. If the object you request does not exist, the error Amazon S3 returns depends on whether you also have the s3:ListBucket permission.   If you have the s3:ListBucket permission on the bucket, Amazon S3 returns an HTTP status code 404 ("no such key") error.   If you don’t have the s3:ListBucket permission, Amazon S3 returns an HTTP status code 403 ("access denied") error.   The following operation is related to HeadObject:    GetObject   

Required Parameters
{
  "Bucket": "The name of the bucket containing the object.",
  "Key": "The object key."
}

Optional Parameters
{
  "IfModifiedSince": "Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).",
  "RequestPayer": "",
  "IfMatch": "Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).",
  "VersionId": "VersionId used to reference a specific version of the object.",
  "IfNoneMatch": "Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "Range": "Downloads the specified range bytes of an object. For more information about the HTTP Range header, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.",
  "IfUnmodifiedSince": "Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).",
  "PartNumber": "Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256)."
}
"""HeadObject(Bucket, Key) = s3("HEAD", "/{Bucket}/{Key+}")
HeadObject(Bucket, Key, args) = s3("HEAD", "/{Bucket}/{Key+}", args)
HeadObject(a...; b...) = HeadObject(a..., b)

"""
    PutBucketAcl()

Sets the permissions on an existing bucket using access control lists (ACL). For more information, see Using ACLs. To set the ACL of a bucket, you must have WRITE_ACP permission. You can use one of the following two ways to set a bucket's permissions:   Specify the ACL in the request body   Specify permissions using request headers    You cannot specify access permission using both the body and the request headers.  Depending on your application needs, you may choose to set the ACL on a bucket using either the request body or the headers. For example, if you have an existing application that updates a bucket ACL using the request body, then you can continue to use that approach.  Access Permissions  You can set access permissions using one of the following methods:   Specify a canned ACL with the x-amz-acl request header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. Specify the canned ACL name as the value of x-amz-acl. If you use this header, you cannot use other access control-specific headers in your request. For more information, see Canned ACL.   Specify access permissions explicitly with the x-amz-grant-read, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. When using these headers, you specify explicit access permissions and grantees (AWS accounts or Amazon S3 groups) who will receive the permission. If you use these ACL-specific headers, you cannot use the x-amz-acl header to set a canned ACL. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account    id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-write header grants create, overwrite, and delete objects permission to LogDelivery group predefined by Amazon S3 and two AWS accounts identified by their email addresses.  x-amz-grant-write: uri="http://acs.amazonaws.com/groups/s3/LogDelivery", emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"     You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  Grantee Values  You can specify the person (grantee) to whom you're assigning access rights (using request elements) in the following ways:   By Email address:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;  The grantee is resolved to the CanonicalUser and, in a response to a GET Object acl request, appears as the CanonicalUser.   By the person's ID:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt; &lt;/Grantee&gt;  DisplayName is optional and ignored in the request   By URI:  &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;     Related Resources     CreateBucket     DeleteBucket     GetObjectAcl   

Required Parameters
{
  "Bucket": "The bucket to which to apply the ACL."
}

Optional Parameters
{
  "AccessControlPolicy": "Contains the elements that set the ACL permissions for an object per grantee.",
  "GrantRead": "Allows grantee to list the objects in the bucket.",
  "GrantFullControl": "Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.",
  "GrantReadACP": "Allows grantee to read the bucket ACL.",
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message integrity check to verify that the request body was not corrupted in transit. For more information, go to RFC 1864. ",
  "ACL": "The canned ACL to apply to the bucket.",
  "GrantWrite": "Allows grantee to create, overwrite, and delete any object in the bucket.",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable bucket."
}
"""PutBucketAcl(Bucket) = s3("PUT", "/{Bucket}?acl")
PutBucketAcl(Bucket, args) = s3("PUT", "/{Bucket}?acl", args)
PutBucketAcl(a...; b...) = PutBucketAcl(a..., b)

"""
    UploadPart()

Uploads a part in a multipart upload.  In this operation, you provide part data in your request. However, you have an option to specify your existing Amazon S3 object as a data source for the part you are uploading. To upload a part from an existing object, you use the UploadPartCopy operation.   You must initiate a multipart upload (see CreateMultipartUpload) before you can upload any part. In response to your initiate request, Amazon S3 returns an upload ID, a unique identifier, that you must include in your upload part request. Part numbers can be any number from 1 to 10,000, inclusive. A part number uniquely identifies a part and also defines its position within the object being created. If you upload a new part using the same part number that was used with a previous part, the previously uploaded part is overwritten. Each part must be at least 5 MB in size, except the last part. There is no size limit on the last part of your multipart upload. To ensure that data is not corrupted when traversing the network, specify the Content-MD5 header in the upload part request. Amazon S3 checks the part data against the provided MD5 value. If they do not match, Amazon S3 returns an error.   Note: After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage. For more information on multipart uploads, go to Multipart Upload Overview in the Amazon Simple Storage Service Developer Guide . For information on the permissions required to use the multipart upload API, go to Multipart Upload API and Permissions in the Amazon Simple Storage Service Developer Guide. You can optionally request server-side encryption where Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it for you when you access it. You have the option of providing your own encryption key, or you can use the AWS managed encryption keys. If you choose to provide your own encryption key, the request headers you provide in the request must match the headers you used in the request to initiate the upload by using CreateMultipartUpload. For more information, go to Using Server-Side Encryption in the Amazon Simple Storage Service Developer Guide. Server-side encryption is supported by the S3 Multipart Upload actions. Unless you are using a customer-provided encryption key, you don't need to specify the encryption parameters in each UploadPart request. Instead, you only need to specify the server-side encryption parameters in the initial Initiate Multipart request. For more information, see CreateMultipartUpload. If you requested server-side encryption using a customer-provided encryption key in your initiate multipart upload request, you must provide identical encryption information in each part upload using the following headers.   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5    Special Errors          Code: NoSuchUpload     Cause: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.      HTTP Status Code: 404 Not Found      SOAP Fault Code Prefix: Client       Related Resources     CreateMultipartUpload     CompleteMultipartUpload     AbortMultipartUpload     ListParts     ListMultipartUploads   

Required Parameters
{
  "UploadId": "Upload ID identifying the multipart upload whose part is being uploaded.",
  "Bucket": "Name of the bucket to which the multipart upload was initiated.",
  "Key": "Object key for which the multipart upload was initiated.",
  "PartNumber": "Part number of part being uploaded. This is a positive integer between 1 and 10,000."
}

Optional Parameters
{
  "ContentMD5": "The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated when using the command from the CLI. This parameter is required if object lock parameters are specified.",
  "ContentLength": "Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.",
  "RequestPayer": "",
  "Body": "Object data.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256).",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request."
}
"""UploadPart(UploadId, Bucket, Key, PartNumber) = s3("PUT", "/{Bucket}/{Key+}")
UploadPart(UploadId, Bucket, Key, PartNumber, args) = s3("PUT", "/{Bucket}/{Key+}", args)
UploadPart(a...; b...) = UploadPart(a..., b)

"""
    PutBucketLifecycleConfiguration()

Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle configuration. For information about lifecycle configuration, see Managing Access Permissions to Your Amazon S3 Resources.  Bucket lifecycle configuration now supports specifying a lifecycle rule using an object key name prefix, one or more object tags, or a combination of both. Accordingly, this section describes the latest API. The previous version of the API supported filtering based only on an object key name prefix, which is supported for backward compatibility. For the related API description, see PutBucketLifecycle.   Rules  You specify the lifecycle configuration in your request body. The lifecycle configuration is specified as XML consisting of one or more rules. Each rule consists of the following:   Filter identifying a subset of objects to which the rule applies. The filter can be based on a key name prefix, object tags, or a combination of both.   Status whether the rule is in effect.   One or more lifecycle transition and expiration actions that you want Amazon S3 to perform on the objects identified by the filter. If the state of your bucket is versioning-enabled or versioning-suspended, you can have many versions of the same object (one current version and zero or more noncurrent versions). Amazon S3 provides predefined actions that you can specify for current and noncurrent object versions.   For more information, see Object Lifecycle Management and Lifecycle Configuration Elements.  Permissions  By default, all Amazon S3 resources are private, including buckets, objects, and related subresources (for example, lifecycle configuration and website configuration). Only the resource owner (that is, the AWS account that created it) can access the resource. The resource owner can optionally grant access permissions to others by writing an access policy. For this operation, a user must get the s3:PutLifecycleConfiguration permission. You can also explicitly deny permissions. Explicit deny also supersedes any other permissions. If you want to block users or accounts from removing or deleting objects from your bucket, you must deny them permissions for the following actions:   s3:DeleteObject   s3:DeleteObjectVersion   s3:PutLifecycleConfiguration   For more information about permissions, see Managing Access Permissions to Your Amazon S3 Resources. The following are related to PutBucketLifecycleConfiguration:    Examples of Lifecycle Configuration     GetBucketLifecycleConfiguration     DeleteBucketLifecycle   

Required Parameters
{
  "Bucket": "The name of the bucket for which to set the configuration."
}

Optional Parameters
{
  "LifecycleConfiguration": "Container for lifecycle rules. You can add as many as 1,000 rules."
}
"""PutBucketLifecycleConfiguration(Bucket) = s3("PUT", "/{Bucket}?lifecycle")
PutBucketLifecycleConfiguration(Bucket, args) = s3("PUT", "/{Bucket}?lifecycle", args)
PutBucketLifecycleConfiguration(a...; b...) = PutBucketLifecycleConfiguration(a..., b)

"""
    GetBucketMetricsConfiguration()

Gets a metrics configuration (specified by the metrics configuration ID) from the bucket. Note that this doesn't include the daily storage metrics.  To use this operation, you must have permissions to perform the s3:GetMetricsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  For information about CloudWatch request metrics for Amazon S3, see Monitoring Metrics with Amazon CloudWatch. The following operations are related to GetBucketMetricsConfiguration:    PutBucketMetricsConfiguration     DeleteBucketMetricsConfiguration     ListBucketMetricsConfigurations     Monitoring Metrics with Amazon CloudWatch   

Required Parameters
{
  "Id": "The ID used to identify the metrics configuration.",
  "Bucket": "The name of the bucket containing the metrics configuration to retrieve."
}
"""GetBucketMetricsConfiguration(Id, Bucket) = s3("GET", "/{Bucket}?metrics")
GetBucketMetricsConfiguration(Id, Bucket, args) = s3("GET", "/{Bucket}?metrics", args)
GetBucketMetricsConfiguration(a...; b...) = GetBucketMetricsConfiguration(a..., b)

"""
    PutBucketVersioning()

Sets the versioning state of an existing bucket. To set the versioning state, you must be the bucket owner. You can set the versioning state with one of the following values:  Enabled—Enables versioning for the objects in the bucket. All objects added to the bucket receive a unique version ID.  Suspended—Disables versioning for the objects in the bucket. All objects added to the bucket receive the version ID null. If the versioning state has never been set on a bucket, it has no versioning state; a GetBucketVersioning request does not return a versioning state value. If the bucket owner enables MFA Delete in the bucket versioning configuration, the bucket owner must include the x-amz-mfa request header and the Status and the MfaDelete request elements in a request to set the versioning state of the bucket.  If you have an object expiration lifecycle policy in your non-versioned bucket and you want to maintain the same permanent delete behavior when you enable versioning, you must add a noncurrent expiration policy. The noncurrent expiration lifecycle policy will manage the deletes of the noncurrent object versions in the version-enabled bucket. (A version-enabled bucket maintains one current and zero or more noncurrent object versions.) For more information, see Lifecycle and Versioning.   Related Resources     CreateBucket     DeleteBucket     GetBucketVersioning   

Required Parameters
{
  "Bucket": "The bucket name.",
  "VersioningConfiguration": "Container for setting the versioning state."
}

Optional Parameters
{
  "ContentMD5": "&gt;The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see RFC 1864.",
  "MFA": "The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device."
}
"""PutBucketVersioning(Bucket, VersioningConfiguration) = s3("PUT", "/{Bucket}?versioning")
PutBucketVersioning(Bucket, VersioningConfiguration, args) = s3("PUT", "/{Bucket}?versioning", args)
PutBucketVersioning(a...; b...) = PutBucketVersioning(a..., b)

"""
    DeleteBucketAnalyticsConfiguration()

Deletes an analytics configuration for the bucket (specified by the analytics configuration ID). To use this operation, you must have permissions to perform the s3:PutAnalyticsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about the Amazon S3 analytics feature, see Amazon S3 Analytics – Storage Class Analysis.  The following operations are related to DeleteBucketAnalyticsConfiguration:              

Required Parameters
{
  "Id": "The ID that identifies the analytics configuration.",
  "Bucket": "The name of the bucket from which an analytics configuration is deleted."
}
"""DeleteBucketAnalyticsConfiguration(Id, Bucket) = s3("DELETE", "/{Bucket}?analytics")
DeleteBucketAnalyticsConfiguration(Id, Bucket, args) = s3("DELETE", "/{Bucket}?analytics", args)
DeleteBucketAnalyticsConfiguration(a...; b...) = DeleteBucketAnalyticsConfiguration(a..., b)

"""
    GetBucketReplication()

Returns the replication configuration of a bucket.   It can take a while to propagate the put or delete a replication configuration to all Amazon S3 systems. Therefore, a get request soon after put or delete can return a wrong result.    For information about replication configuration, see Replication in the Amazon Simple Storage Service Developer Guide. This operation requires permissions for the s3:GetReplicationConfiguration action. For more information about permissions, see Using Bucket Policies and User Policies. If you include the Filter element in a replication configuration, you must also include the DeleteMarkerReplication and Priority elements. The response also returns those elements. For information about GetBucketReplication errors, see ReplicationErrorCodeList  The following operations are related to GetBucketReplication:    PutBucketReplication     DeleteBucketReplication   

Required Parameters
{
  "Bucket": "The bucket name for which to get the replication information."
}
"""GetBucketReplication(Bucket) = s3("GET", "/{Bucket}?replication")
GetBucketReplication(Bucket, args) = s3("GET", "/{Bucket}?replication", args)
GetBucketReplication(a...; b...) = GetBucketReplication(a..., b)

"""
    DeleteBucket()

Deletes the bucket. All objects (including all object versions and delete markers) in the bucket must be deleted before the bucket itself can be deleted.  Related Resources           

Required Parameters
{
  "Bucket": "Specifies the bucket being deleted."
}
"""DeleteBucket(Bucket) = s3("DELETE", "/{Bucket}")
DeleteBucket(Bucket, args) = s3("DELETE", "/{Bucket}", args)
DeleteBucket(a...; b...) = DeleteBucket(a..., b)

"""
    PutBucketNotificationConfiguration()

Enables notifications of specified events for a bucket. For more information about event notifications, see Configuring Event Notifications. Using this API, you can replace an existing notification configuration. The configuration is an XML file that defines the event types that you want Amazon S3 to publish and the destination where you want Amazon S3 to publish an event notification when it detects an event of the specified type. By default, your bucket has no event notifications configured. That is, the notification configuration will be an empty NotificationConfiguration.  &lt;NotificationConfiguration&gt;   &lt;/NotificationConfiguration&gt;  This operation replaces the existing notification configuration with the configuration you include in the request body. After Amazon S3 receives this request, it first verifies that any Amazon Simple Notification Service (Amazon SNS) or Amazon Simple Queue Service (Amazon SQS) destination exists, and that the bucket owner has permission to publish to it by sending a test notification. In the case of AWS Lambda destinations, Amazon S3 verifies that the Lambda function permissions grant Amazon S3 permission to invoke the function from the Amazon S3 bucket. For more information, see Configuring Notifications for Amazon S3 Events. You can disable notifications by adding the empty NotificationConfiguration element. By default, only the bucket owner can configure notifications on a bucket. However, bucket owners can use a bucket policy to grant permission to other users to set this configuration with s3:PutBucketNotification permission.  The PUT notification is an atomic operation. For example, suppose your notification configuration includes SNS topic, SQS queue, and Lambda function configurations. When you send a PUT request with this configuration, Amazon S3 sends test messages to your SNS topic. If the message fails, the entire PUT operation will fail, and Amazon S3 will not add the configuration to your bucket.   Responses  If the configuration in the request body includes only one TopicConfiguration specifying only the s3:ReducedRedundancyLostObject event type, the response will also include the x-amz-sns-test-message-id header containing the message ID of the test notification sent to the topic. The following operation is related to PutBucketNotificationConfiguration:    GetBucketNotificationConfiguration   

Required Parameters
{
  "Bucket": "The name of the bucket.",
  "NotificationConfiguration": ""
}
"""PutBucketNotificationConfiguration(Bucket, NotificationConfiguration) = s3("PUT", "/{Bucket}?notification")
PutBucketNotificationConfiguration(Bucket, NotificationConfiguration, args) = s3("PUT", "/{Bucket}?notification", args)
PutBucketNotificationConfiguration(a...; b...) = PutBucketNotificationConfiguration(a..., b)

"""
    PutBucketLifecycle()

 For an updated version of this API, see PutBucketLifecycleConfiguration. This version has been deprecated. Existing lifecycle configurations will work. For new lifecycle configurations, use the updated API.   Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle configuration. For information about lifecycle configuration, see Object Lifecycle Management in the Amazon Simple Storage Service Developer Guide.  By default, all Amazon S3 resources, including buckets, objects, and related subresources (for example, lifecycle configuration and website configuration) are private. Only the resource owner, the AWS account that created the resource, can access it. The resource owner can optionally grant access permissions to others by writing an access policy. For this operation, users must get the s3:PutLifecycleConfiguration permission. You can also explicitly deny permissions. Explicit denial also supersedes any other permissions. If you want to prevent users or accounts from removing or deleting objects from your bucket, you must deny them permissions for the following actions:     s3:DeleteObject     s3:DeleteObjectVersion     s3:PutLifecycleConfiguration    For more information about permissions, see Managing Access Permissions to your Amazon S3 Resources in the Amazon Simple Storage Service Developer Guide. For more examples of transitioning objects to storage classes such as STANDARD_IA or ONEZONE_IA, see Examples of Lifecycle Configuration.  Related Resources     GetBucketLifecycle(Deprecated)    GetBucketLifecycleConfiguration        By default, a resource owner—in this case, a bucket owner, which is the AWS account that created the bucket—can perform any of the operations. A resource owner can also grant others permission to perform the operation. For more information, see the following topics in the Amazon Simple Storage Service Developer Guide:     Specifying Permissions in a Policy     Managing Access Permissions to your Amazon S3 Resources     

Required Parameters
{
  "Bucket": ""
}

Optional Parameters
{
  "LifecycleConfiguration": "",
  "ContentMD5": ""
}
"""PutBucketLifecycle(Bucket) = s3("PUT", "/{Bucket}?lifecycle")
PutBucketLifecycle(Bucket, args) = s3("PUT", "/{Bucket}?lifecycle", args)
PutBucketLifecycle(a...; b...) = PutBucketLifecycle(a..., b)

"""
    CopyObject()

Creates a copy of an object that is already stored in Amazon S3.  You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your object up to 5 GB in size in a single atomic operation using this API. However, for copying an object greater than 5 GB, you must use the multipart upload Upload Part - Copy API. For more information, see Copy Object Using the REST Multipart Upload API.  When copying an object, you can preserve all metadata (default) or specify new metadata. However, the ACL is not preserved and is set to private for the user making the request. To override the default ACL setting, specify a new ACL when generating a copy request. For more information, see Using ACLs.  Amazon S3 transfer acceleration does not support cross-region copies. If you request a cross-region copy using a transfer acceleration endpoint, you get a 400 Bad Request error. For more information about transfer acceleration, see Transfer Acceleration.  All copy requests must be authenticated. Additionally, you must have read access to the source object and write access to the destination bucket. For more information, see REST Authentication. Both the Region that you want to copy the object from and the Region that you want to copy the object to must be enabled for your account. To only copy an object under certain conditions, such as whether the Etag matches or whether the object was modified before or after a specified date, use the request parameters x-amz-copy-source-if-match, x-amz-copy-source-if-none-match, x-amz-copy-source-if-unmodified-since, or  x-amz-copy-source-if-modified-since.  All headers with the x-amz- prefix, including x-amz-copy-source, must be signed.  You can use this operation to change the storage class of an object that is already stored in Amazon S3 using the StorageClass parameter. For more information, see Storage Classes. The source object that you are copying can be encrypted or unencrypted. If the source object is encrypted, it can be encrypted by server-side encryption using AWS managed encryption keys or by using a customer-provided encryption key. When copying an object, you can request that Amazon S3 encrypt the target object by using either the AWS managed encryption keys or by using your own encryption key. You can do this regardless of the form of server-side encryption that was used to encrypt the source, or even if the source object was not encrypted. For more information about server-side encryption, see Using Server-Side Encryption. A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3 is copying the files. If the error occurs before the copy operation starts, you receive a standard Amazon S3 error. If the error occurs during the copy operation, the error response is embedded in the 200 OK response. This means that a 200 OK response can contain either a success or an error. Design your application to parse the contents of the response and handle it appropriately. If the copy is successful, you receive a response with information about the copied object.  If the request is an HTTP 1.1 request, the response is chunk encoded. If it were not, it would not contain the content-length, and you would need to read the entire body.  Consider the following when using request headers:    Consideration 1 – If both the x-amz-copy-source-if-match and x-amz-copy-source-if-unmodified-since headers are present in the request and evaluate as follows, Amazon S3 returns 200 OK and copies the data:    x-amz-copy-source-if-match condition evaluates to true    x-amz-copy-source-if-unmodified-since condition evaluates to false      Consideration 2 – If both of the x-amz-copy-source-if-none-match and x-amz-copy-source-if-modified-since headers are present in the request and evaluate as follows, Amazon S3 returns the 412 Precondition Failed response code:    x-amz-copy-source-if-none-match condition evaluates to false    x-amz-copy-source-if-modified-since condition evaluates to true     The copy request charge is based on the storage class and Region you specify for the destination object. For pricing information, see Amazon S3 Pricing. Following are other considerations when using CopyObject:  Versioning  By default, x-amz-copy-source identifies the current version of an object to copy. (If the current version is a delete marker, Amazon S3 behaves as if the object was deleted.) To copy a different version, use the versionId subresource. If you enable versioning on the target bucket, Amazon S3 generates a unique version ID for the object being copied. This version ID is different from the version ID of the source object. Amazon S3 returns the version ID of the copied object in the x-amz-version-id response header in the response. If you do not enable versioning or suspend it on the target bucket, the version ID that Amazon S3 generates is always null. If the source object's storage class is GLACIER, you must restore a copy of this object before you can use it as a source object for the copy operation. For more information, see .  Access Permissions  When copying an object, you can optionally specify the accounts or groups that should be granted specific permissions on the new object. There are two ways to grant the permissions using the request headers:   Specify a canned ACL with the x-amz-acl request header. For more information, see Canned ACL.   Specify access permissions explicitly with the x-amz-grant-read, x-amz-grant-read-acp, x-amz-grant-write-acp, and x-amz-grant-full-control headers. These parameters map to the set of permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview.   You can use either a canned ACL or specify access permissions explicitly. You cannot do both.  Server-Side- Encryption-Specific Request Headers  To encrypt the target object, you must provide the appropriate encryption-related request headers. The one you use depends on whether you want to use AWS managed encryption keys or provide your own encryption key.    To encrypt the target object using server-side encryption with an AWS managed encryption key, provide the following request headers, as appropriate.    x-amz-server-side​-encryption     x-amz-server-side-encryption-aws-kms-key-id     x-amz-server-side-encryption-context     If you specify x-amz-server-side-encryption:aws:kms, but don't provide x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS managed CMK in AWS KMS to protect the data. If you want to use a customer managed AWS KMS CMK, you must provide the x-amz-server-side-encryption-aws-kms-key-id of the symmetric customer managed CMK. Amazon S3 only supports symmetric CMKs and not asymmetric CMKs. For more information, see Using Symmetric and Asymmetric Keys in the AWS Key Management Service Developer Guide.   All GET and PUT requests for an object protected by AWS KMS fail if you don't make them with SSL or by using SigV4.  For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in KMS.   To encrypt the target object using server-side encryption with an encryption key that you provide, use the following headers.   x-amz-server-side​-encryption​-customer-algorithm   x-amz-server-side​-encryption​-customer-key   x-amz-server-side​-encryption​-customer-key-MD5     If the source object is encrypted using server-side encryption with customer-provided encryption keys, you must use the following headers.   x-amz-copy-source​-server-side​-encryption​-customer-algorithm   x-amz-copy-source​-server-side​-encryption​-customer-key   x-amz-copy-source-​server-side​-encryption​-customer-key-MD5   For more information about server-side encryption with CMKs stored in AWS KMS (SSE-KMS), see Protecting Data Using Server-Side Encryption with CMKs stored in Amazon KMS.    Access-Control-List (ACL)-Specific Request Headers  You also can use the following access control–related headers with this operation. By default, all objects are private. Only the owner has full access control. When adding a new object, you can grant permissions to individual AWS accounts or to predefined groups defined by Amazon S3. These permissions are then added to the access control list (ACL) on the object. For more information, see Using ACLs. With this operation, you can grant access permissions using one of the following two methods:   Specify a canned ACL (x-amz-acl) — Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set of grantees and permissions. For more information, see Canned ACL.   Specify access permissions explicitly — To explicitly grant access permissions to specific AWS accounts or groups, use the following headers. Each header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see Access Control List (ACL) Overview. In the header, you specify a list of grantees who get the specific permission. To grant permissions explicitly, use:   x-amz-grant-read   x-amz-grant-write   x-amz-grant-read-acp   x-amz-grant-write-acp   x-amz-grant-full-control   You specify each grantee as a type=value pair, where the type is one of the following:    emailAddress – if the value specified is the email address of an AWS account    id – if the value specified is the canonical user ID of an AWS account    uri – if you are granting permissions to a predefined group   For example, the following x-amz-grant-read header grants the AWS accounts identified by email addresses permissions to read object data and its metadata:  x-amz-grant-read: emailAddress="xyz@amazon.com", emailAddress="abc@amazon.com"       The following operations are related to CopyObject:    PutObject     GetObject    For more information, see Copying Objects.

Required Parameters
{
  "Bucket": "The name of the destination bucket.",
  "Key": "The key of the destination object.",
  "CopySource": "The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded."
}

Optional Parameters
{
  "GrantReadACP": "Allows grantee to read the object ACL.",
  "ObjectLockRetainUntilDate": "The date and time when you want the copied object's Object Lock to expire.",
  "RequestPayer": "",
  "ContentLanguage": "The language the content is in.",
  "CopySourceSSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.",
  "ContentEncoding": "Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.",
  "CopySourceSSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKeyMD5": "Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.",
  "SSECustomerKey": "Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.",
  "SSEKMSEncryptionContext": "Specifies the AWS KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.",
  "ObjectLockLegalHoldStatus": "Specifies whether you want to apply a Legal Hold to the copied object.",
  "CopySourceIfMatch": "Copies the object if its entity tag (ETag) matches the specified tag.",
  "CopySourceIfUnmodifiedSince": "Copies the object if it hasn't been modified since the specified time.",
  "Expires": "The date and time at which the object is no longer cacheable.",
  "GrantRead": "Allows grantee to read the object data and its metadata.",
  "CopySourceIfModifiedSince": "Copies the object if it has been modified since the specified time.",
  "Tagging": "The tag-set for the object destination object this value must be used in conjunction with the TaggingDirective. The tag-set must be encoded as URL Query parameters.",
  "MetadataDirective": "Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.",
  "ACL": "The canned ACL to apply to the object.",
  "ObjectLockMode": "The Object Lock mode that you want to apply to the copied object.",
  "ContentDisposition": "Specifies presentational information for the object.",
  "CacheControl": "Specifies caching behavior along the request/reply chain.",
  "ContentType": "A standard MIME type describing the format of the object data.",
  "ServerSideEncryption": "The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).",
  "StorageClass": "The type of storage to use for the object. Defaults to 'STANDARD'.",
  "CopySourceSSECustomerAlgorithm": "Specifies the algorithm to use when decrypting the source object (for example, AES256).",
  "GrantFullControl": "Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.",
  "TaggingDirective": "Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.",
  "SSEKMSKeyId": "Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. For information about configuring using any of the officially supported AWS SDKs and AWS CLI, see Specifying the Signature Version in Request Authentication in the Amazon S3 Developer Guide.",
  "SSECustomerAlgorithm": "Specifies the algorithm to use to when encrypting the object (for example, AES256).",
  "Metadata": "A map of metadata to store with the object in S3.",
  "CopySourceIfNoneMatch": "Copies the object if its entity tag (ETag) is different than the specified ETag.",
  "WebsiteRedirectLocation": "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.",
  "GrantWriteACP": "Allows grantee to write the ACL for the applicable object."
}
"""CopyObject(Bucket, Key, CopySource) = s3("PUT", "/{Bucket}/{Key+}")
CopyObject(Bucket, Key, CopySource, args) = s3("PUT", "/{Bucket}/{Key+}", args)
CopyObject(a...; b...) = CopyObject(a..., b)

"""
    GetBucketNotification()

 No longer used, see GetBucketNotificationConfiguration.

Required Parameters
{
  "Bucket": "Name of the bucket for which to get the notification configuration"
}
"""GetBucketNotification(Bucket) = s3("GET", "/{Bucket}?notification")
GetBucketNotification(Bucket, args) = s3("GET", "/{Bucket}?notification", args)
GetBucketNotification(a...; b...) = GetBucketNotification(a..., b)

"""
    ListObjectsV2()

Returns some or all (up to 1,000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. A 200 OK response can contain valid or invalid XML. Make sure to design your application to parse the contents of the response and handle it appropriately. To use this operation, you must have READ access to the bucket. To use this operation in an AWS Identity and Access Management (IAM) policy, you must have permissions to perform the s3:ListBucket action. The bucket owner has this permission by default and can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  This section describes the latest revision of the API. We recommend that you use this revised API for application development. For backward compatibility, Amazon S3 continues to support the prior version of this API, ListObjects.  To get a list of your buckets, see ListBuckets. The following operations are related to ListObjectsV2:    GetObject     PutObject     CreateBucket   

Required Parameters
{
  "Bucket": "Bucket name to list.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide."
}

Optional Parameters
{
  "MaxKeys": "Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.",
  "FetchOwner": "The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true.",
  "Delimiter": "A delimiter is a character you use to group keys.",
  "ContinuationToken": "ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key.",
  "StartAfter": "StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket.",
  "RequestPayer": "Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.",
  "EncodingType": "Encoding type used by Amazon S3 to encode object keys in the response.",
  "Prefix": "Limits the response to keys that begin with the specified prefix."
}
"""ListObjectsV2(Bucket) = s3("GET", "/{Bucket}?list-type=2")
ListObjectsV2(Bucket, args) = s3("GET", "/{Bucket}?list-type=2", args)
ListObjectsV2(a...; b...) = ListObjectsV2(a..., b)

"""
    DeleteBucketInventoryConfiguration()

Deletes an inventory configuration (identified by the inventory ID) from the bucket. To use this operation, you must have permissions to perform the s3:PutInventoryConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about the Amazon S3 inventory feature, see Amazon S3 Inventory. Operations related to DeleteBucketInventoryConfiguration include:     GetBucketInventoryConfiguration     PutBucketInventoryConfiguration     ListBucketInventoryConfigurations   

Required Parameters
{
  "Id": "The ID used to identify the inventory configuration.",
  "Bucket": "The name of the bucket containing the inventory configuration to delete."
}
"""DeleteBucketInventoryConfiguration(Id, Bucket) = s3("DELETE", "/{Bucket}?inventory")
DeleteBucketInventoryConfiguration(Id, Bucket, args) = s3("DELETE", "/{Bucket}?inventory", args)
DeleteBucketInventoryConfiguration(a...; b...) = DeleteBucketInventoryConfiguration(a..., b)

"""
    PutObjectRetention()

Places an Object Retention configuration on an object.  Related Resources     Locking Objects   

Required Parameters
{
  "Bucket": "The bucket name that contains the object you want to apply this Object Retention configuration to.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "The key name for the object that you want to apply this Object Retention configuration to."
}

Optional Parameters
{
  "ContentMD5": "The MD5 hash for the request body.",
  "RequestPayer": "",
  "Retention": "The container element for the Object Retention configuration.",
  "VersionId": "The version ID for the object that you want to apply this Object Retention configuration to.",
  "BypassGovernanceRetention": "Indicates whether this operation should bypass Governance-mode restrictions."
}
"""PutObjectRetention(Bucket, Key) = s3("PUT", "/{Bucket}/{Key+}?retention")
PutObjectRetention(Bucket, Key, args) = s3("PUT", "/{Bucket}/{Key+}?retention", args)
PutObjectRetention(a...; b...) = PutObjectRetention(a..., b)

"""
    ListBuckets()

Returns a list of all buckets owned by the authenticated sender of the request.
"""ListBuckets() = s3("GET", "/")
ListBuckets(args) s3("GET", "/", args)
ListBuckets(a...; b...) = ListBuckets(a..., b)

"""
    DeleteBucketMetricsConfiguration()

Deletes a metrics configuration for the Amazon CloudWatch request metrics (specified by the metrics configuration ID) from the bucket. Note that this doesn't include the daily storage metrics.  To use this operation, you must have permissions to perform the s3:PutMetricsConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources. For information about CloudWatch request metrics for Amazon S3, see Monitoring Metrics with Amazon CloudWatch.  The following operations are related to DeleteBucketMetricsConfiguration:    GetBucketMetricsConfiguration     PutBucketMetricsConfiguration     ListBucketMetricsConfigurations     Monitoring Metrics with Amazon CloudWatch   

Required Parameters
{
  "Id": "The ID used to identify the metrics configuration.",
  "Bucket": "The name of the bucket containing the metrics configuration to delete."
}
"""DeleteBucketMetricsConfiguration(Id, Bucket) = s3("DELETE", "/{Bucket}?metrics")
DeleteBucketMetricsConfiguration(Id, Bucket, args) = s3("DELETE", "/{Bucket}?metrics", args)
DeleteBucketMetricsConfiguration(a...; b...) = DeleteBucketMetricsConfiguration(a..., b)

"""
    GetObjectTagging()

Returns the tag-set of an object. You send the GET request against the tagging subresource associated with the object. To use this operation, you must have permission to perform the s3:GetObjectTagging action. By default, the GET operation returns information about current version of an object. For a versioned bucket, you can have multiple versions of an object in your bucket. To retrieve tags of any other version, use the versionId query parameter. You also need permission for the s3:GetObjectVersionTagging action.  By default, the bucket owner has this permission and can grant this permission to others.  For information about the Amazon S3 object tagging feature, see Object Tagging. The following operation is related to GetObjectTagging:    PutObjectTagging   

Required Parameters
{
  "Bucket": "The bucket name containing the object for which to get the tagging information.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this operation using an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see Using Access Points in the Amazon Simple Storage Service Developer Guide.",
  "Key": "Object key for which to get the tagging information."
}

Optional Parameters
{
  "VersionId": "The versionId of the object for which to get the tagging information."
}
"""GetObjectTagging(Bucket, Key) = s3("GET", "/{Bucket}/{Key+}?tagging")
GetObjectTagging(Bucket, Key, args) = s3("GET", "/{Bucket}/{Key+}?tagging", args)
GetObjectTagging(a...; b...) = GetObjectTagging(a..., b)

"""
    PutBucketAccelerateConfiguration()

Sets the accelerate configuration of an existing bucket. Amazon S3 Transfer Acceleration is a bucket-level feature that enables you to perform faster data transfers to Amazon S3.  To use this operation, you must have permission to perform the s3:PutAccelerateConfiguration action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see Permissions Related to Bucket Subresource Operations and Managing Access Permissions to Your Amazon S3 Resources.  The Transfer Acceleration state of a bucket can be set to one of the following two values:    Enabled – Enables accelerated data transfers to the bucket.    Suspended – Disables accelerated data transfers to the bucket.   The GetBucketAccelerateConfiguration operation returns the transfer acceleration state of a bucket. After setting the Transfer Acceleration state of a bucket to Enabled, it might take up to thirty minutes before the data transfer rates to the bucket increase.  The name of the bucket used for Transfer Acceleration must be DNS-compliant and must not contain periods (".").  For more information about transfer acceleration, see Transfer Acceleration. The following operations are related to PutBucketAccelerateConfiguration:    GetBucketAccelerateConfiguration     CreateBucket   

Required Parameters
{
  "AccelerateConfiguration": "Container for setting the transfer acceleration state.",
  "Bucket": "Name of the bucket for which the accelerate configuration is set."
}
"""PutBucketAccelerateConfiguration(AccelerateConfiguration, Bucket) = s3("PUT", "/{Bucket}?accelerate")
PutBucketAccelerateConfiguration(AccelerateConfiguration, Bucket, args) = s3("PUT", "/{Bucket}?accelerate", args)
PutBucketAccelerateConfiguration(a...; b...) = PutBucketAccelerateConfiguration(a..., b)

"""
    GetBucketTagging()

Returns the tag set associated with the bucket. To use this operation, you must have permission to perform the s3:GetBucketTagging action. By default, the bucket owner has this permission and can grant this permission to others.  GetBucketTagging has the following special error:   Error code: NoSuchTagSetError    Description: There is no tag set associated with the bucket.     The following operations are related to GetBucketTagging:    PutBucketTagging     DeleteBucketTagging   

Required Parameters
{
  "Bucket": "The name of the bucket for which to get the tagging information."
}
"""GetBucketTagging(Bucket) = s3("GET", "/{Bucket}?tagging")
GetBucketTagging(Bucket, args) = s3("GET", "/{Bucket}?tagging", args)
GetBucketTagging(a...; b...) = GetBucketTagging(a..., b)

"""
    GetBucketPolicyStatus()

Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public. In order to use this operation, you must have the s3:GetBucketPolicyStatus permission. For more information about Amazon S3 permissions, see Specifying Permissions in a Policy.  For more information about when Amazon S3 considers a bucket public, see The Meaning of "Public".  The following operations are related to GetBucketPolicyStatus:    Using Amazon S3 Block Public Access     GetPublicAccessBlock     PutPublicAccessBlock     DeletePublicAccessBlock   

Required Parameters
{
  "Bucket": "The name of the Amazon S3 bucket whose policy status you want to retrieve."
}
"""GetBucketPolicyStatus(Bucket) = s3("GET", "/{Bucket}?policyStatus")
GetBucketPolicyStatus(Bucket, args) = s3("GET", "/{Bucket}?policyStatus", args)
GetBucketPolicyStatus(a...; b...) = GetBucketPolicyStatus(a..., b)
