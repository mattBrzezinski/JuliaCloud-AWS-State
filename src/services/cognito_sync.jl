include("../AWSCorePrototypeServices.jl")
using .Services: cognito_sync

"""
    DescribeDataset

Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "DatasetName": "A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

DescribeDataset(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)
"""
    DescribeIdentityUsage

Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

DescribeIdentityUsage(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}", args)
"""
    GetIdentityPoolConfiguration

Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration."
}


Optional Parameters:
{}

"""

GetIdentityPoolConfiguration(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/configuration", args)
"""
    SubscribeToDataset

Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.",
  "DatasetName": "The name of the dataset to subcribe to.",
  "IdentityId": "Unique ID for this identity.",
  "DeviceId": "The unique ID generated for this device by Cognito."
}


Optional Parameters:
{}

"""

SubscribeToDataset(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)
"""
    ListRecords

Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "DatasetName": "A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned.",
  "NextToken": "A pagination token for obtaining the next page of results.",
  "LastSyncCount": "The last server sync count for this record.",
  "SyncSessionToken": "A token containing a session ID, identity ID, and expiration."
}

"""

ListRecords(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", args)
"""
    RegisterDevice

Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.",
  "IdentityId": "The unique ID for this identity.",
  "Platform": "The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).",
  "Token": "The push token."
}


Optional Parameters:
{}

"""

RegisterDevice(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", args)
"""
    ListDatasets

Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned.",
  "NextToken": "A pagination token for obtaining the next page of results."
}

"""

ListDatasets(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", args)
"""
    GetBulkPublishDetails

Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

GetBulkPublishDetails(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/getBulkPublishDetails", args)
"""
    ListIdentityPoolUsage

Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned.",
  "NextToken": "A pagination token for obtaining the next page of results."
}

"""
ListIdentityPoolUsage() = cognito_sync("GET", "/identitypools")
ListIdentityPoolUsage(args) = cognito_sync("GET", "/identitypools", args)

"""
    SetIdentityPoolConfiguration

Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify."
}


Optional Parameters:
{
  "PushSync": "Options to apply to this identity pool for push synchronization.",
  "CognitoStreams": "Options to apply to this identity pool for Amazon Cognito streams."
}

"""

SetIdentityPoolConfiguration(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/configuration", args)
"""
    DeleteDataset

Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "DatasetName": "A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

DeleteDataset(args) = cognito_sync("DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)
"""
    UnsubscribeFromDataset

Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.",
  "DatasetName": "The name of the dataset from which to unsubcribe.",
  "IdentityId": "Unique ID for this identity.",
  "DeviceId": "The unique ID generated for this device by Cognito."
}


Optional Parameters:
{}

"""

UnsubscribeFromDataset(args) = cognito_sync("DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)
"""
    DescribeIdentityPoolUsage

Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

DescribeIdentityPoolUsage(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}", args)
"""
    SetCognitoEvents

Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "The Cognito Identity Pool to use when configuring Cognito Events",
  "Events": "The events to configure"
}


Optional Parameters:
{}

"""

SetCognitoEvents(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/events", args)
"""
    UpdateRecords

Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "DatasetName": "A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).",
  "IdentityId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.",
  "SyncSessionToken": "The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity."
}


Optional Parameters:
{
  "ClientContext": "Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.",
  "DeviceId": "The unique ID generated for this device by Cognito.",
  "RecordPatches": "A list of patch operations."
}

"""

UpdateRecords(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)
"""
    BulkPublish

Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region."
}


Optional Parameters:
{}

"""

BulkPublish(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/bulkpublish", args)
"""
    GetCognitoEvents

Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
{
  "IdentityPoolId": "The Cognito Identity Pool ID for the request"
}


Optional Parameters:
{}

"""

GetCognitoEvents(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/events", args)