include("../AWSCorePrototypeServices.jl")
using .Services: cognito_sync

"""
Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName
"""
DescribeDataset(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

"""
Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId
"""
DescribeIdentityUsage(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}", args)

"""
Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
GetIdentityPoolConfiguration(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/configuration", args)

"""
Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName, DeviceId
"""
SubscribeToDataset(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)

"""
Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName
"""
ListRecords(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", args)

"""
Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId, Platform, Token
"""
RegisterDevice(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", args)

"""
Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.

Required Parameters:
IdentityId, IdentityPoolId
"""
ListDatasets(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", args)

"""
Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
GetBulkPublishDetails(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/getBulkPublishDetails", args)

"""
Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
"""
ListIdentityPoolUsage() = cognito_sync("GET", "/identitypools")

"""
Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
SetIdentityPoolConfiguration(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/configuration", args)

"""
Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName
"""
DeleteDataset(args) = cognito_sync("DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

"""
Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName, DeviceId
"""
UnsubscribeFromDataset(args) = cognito_sync("DELETE", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", args)

"""
Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
DescribeIdentityPoolUsage(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}", args)

"""
Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId, Events
"""
SetCognitoEvents(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/events", args)

"""
Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.

Required Parameters:
IdentityPoolId, IdentityId, DatasetName, SyncSessionToken
"""
UpdateRecords(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", args)

"""
Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
BulkPublish(args) = cognito_sync("POST", "/identitypools/{IdentityPoolId}/bulkpublish", args)

"""
Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.

Required Parameters:
IdentityPoolId
"""
GetCognitoEvents(args) = cognito_sync("GET", "/identitypools/{IdentityPoolId}/events", args)
