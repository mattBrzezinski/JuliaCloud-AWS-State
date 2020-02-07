include("../AWSCorePrototypeServices.jl")
using .Services: cognito_sync

"""
Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
"""
DescribeDataset(IdentityPoolId, IdentityId, DatasetName) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName")
DescribeDataset(IdentityPoolId, IdentityId, DatasetName, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName", args)
DescribeDataset(a...; b...) = DescribeDataset(a..., b)

"""
Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
"""
DescribeIdentityUsage(IdentityPoolId, IdentityId) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId")
DescribeIdentityUsage(IdentityPoolId, IdentityId, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId", args)
DescribeIdentityUsage(a...; b...) = DescribeIdentityUsage(a..., b)

"""
Gets the configuration settings of an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
GetIdentityPoolConfiguration(IdentityPoolId) = cognito_sync("GET", "/identitypools/$IdentityPoolId/configuration")
GetIdentityPoolConfiguration(IdentityPoolId, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/configuration", args)
GetIdentityPoolConfiguration(a...; b...) = GetIdentityPoolConfiguration(a..., b)

"""
Subscribes to receive notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
"""
SubscribeToDataset(IdentityPoolId, IdentityId, DatasetName, DeviceId) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/subscriptions/$DeviceId")
SubscribeToDataset(IdentityPoolId, IdentityId, DatasetName, DeviceId, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/subscriptions/$DeviceId", args)
SubscribeToDataset(a...; b...) = SubscribeToDataset(a..., b)

"""
Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
"""
ListRecords(IdentityPoolId, IdentityId, DatasetName) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/records")
ListRecords(IdentityPoolId, IdentityId, DatasetName, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/records", args)
ListRecords(a...; b...) = ListRecords(a..., b)

"""
Registers a device to receive push sync notifications. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
"""
RegisterDevice(IdentityPoolId, IdentityId, Platform, Token) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identity/$IdentityId/device")
RegisterDevice(IdentityPoolId, IdentityId, Platform, Token, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identity/$IdentityId/device", args)
RegisterDevice(a...; b...) = RegisterDevice(a..., b)

"""
Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.
"""
ListDatasets(IdentityId, IdentityPoolId) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets")
ListDatasets(IdentityId, IdentityPoolId, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets", args)
ListDatasets(a...; b...) = ListDatasets(a..., b)

"""
Get the status of the last BulkPublish operation for an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
GetBulkPublishDetails(IdentityPoolId) = cognito_sync("POST", "/identitypools/$IdentityPoolId/getBulkPublishDetails")
GetBulkPublishDetails(IdentityPoolId, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/getBulkPublishDetails", args)
GetBulkPublishDetails(a...; b...) = GetBulkPublishDetails(a..., b)

"""
Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
"""
ListIdentityPoolUsage() = cognito_sync("GET", "/identitypools")
ListIdentityPoolUsage(, args) = cognito_sync("GET", "/identitypools", args)
ListIdentityPoolUsage(a...; b...) = ListIdentityPoolUsage(a..., b)

"""
Sets the necessary configuration for push sync. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
SetIdentityPoolConfiguration(IdentityPoolId) = cognito_sync("POST", "/identitypools/$IdentityPoolId/configuration")
SetIdentityPoolConfiguration(IdentityPoolId, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/configuration", args)
SetIdentityPoolConfiguration(a...; b...) = SetIdentityPoolConfiguration(a..., b)

"""
Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
"""
DeleteDataset(IdentityPoolId, IdentityId, DatasetName) = cognito_sync("DELETE", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName")
DeleteDataset(IdentityPoolId, IdentityId, DatasetName, args) = cognito_sync("DELETE", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName", args)
DeleteDataset(a...; b...) = DeleteDataset(a..., b)

"""
Unsubscribes from receiving notifications when a dataset is modified by another device. This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
"""
UnsubscribeFromDataset(IdentityPoolId, IdentityId, DatasetName, DeviceId) = cognito_sync("DELETE", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/subscriptions/$DeviceId")
UnsubscribeFromDataset(IdentityPoolId, IdentityId, DatasetName, DeviceId, args) = cognito_sync("DELETE", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName/subscriptions/$DeviceId", args)
UnsubscribeFromDataset(a...; b...) = UnsubscribeFromDataset(a..., b)

"""
Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
DescribeIdentityPoolUsage(IdentityPoolId) = cognito_sync("GET", "/identitypools/$IdentityPoolId")
DescribeIdentityPoolUsage(IdentityPoolId, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId", args)
DescribeIdentityPoolUsage(a...; b...) = DescribeIdentityPoolUsage(a..., b)

"""
Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
SetCognitoEvents(IdentityPoolId, Events) = cognito_sync("POST", "/identitypools/$IdentityPoolId/events")
SetCognitoEvents(IdentityPoolId, Events, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/events", args)
SetCognitoEvents(a...; b...) = SetCognitoEvents(a..., b)

"""
Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count. For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
"""
UpdateRecords(IdentityPoolId, IdentityId, DatasetName, SyncSessionToken) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName")
UpdateRecords(IdentityPoolId, IdentityId, DatasetName, SyncSessionToken, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/identities/$IdentityId/datasets/$DatasetName", args)
UpdateRecords(a...; b...) = UpdateRecords(a..., b)

"""
Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
BulkPublish(IdentityPoolId) = cognito_sync("POST", "/identitypools/$IdentityPoolId/bulkpublish")
BulkPublish(IdentityPoolId, args) = cognito_sync("POST", "/identitypools/$IdentityPoolId/bulkpublish", args)
BulkPublish(a...; b...) = BulkPublish(a..., b)

"""
Gets the events and the corresponding Lambda functions associated with an identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
"""
GetCognitoEvents(IdentityPoolId) = cognito_sync("GET", "/identitypools/$IdentityPoolId/events")
GetCognitoEvents(IdentityPoolId, args) = cognito_sync("GET", "/identitypools/$IdentityPoolId/events", args)
GetCognitoEvents(a...; b...) = GetCognitoEvents(a..., b)
