include("../AWSCorePrototypeServices.jl")
using .Services: iotsitewise

"""
    ListGateways()

Retrieves a paginated list of gateways.

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""

ListGateways() = iotsitewise("GET", "/20200301/gateways")
ListGateways(args) = iotsitewise("GET", "/20200301/gateways", args)

"""
    GetAssetPropertyAggregates()

Gets aggregated values for an asset property. For more information, see Querying aggregates in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  

Required Parameters
{
  "aggregateTypes": "The data aggregating function.",
  "resolution": "The time interval over which to aggregate data.",
  "startDate": "The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.",
  "endDate": "The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time."
}

Optional Parameters
{
  "qualities": "The quality by which to filter asset data.",
  "timeOrdering": "The chronological sorting order of the requested information. Default: ASCENDING ",
  "propertyAlias": "The property alias that identifies the property, such as an OPC-UA server data stream path (for example, /company/windfarm/3/turbine/7/temperature). For more information, see Mapping industrial data streams to asset properties in the AWS IoT SiteWise User Guide.",
  "propertyId": "The ID of the asset property.",
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 100",
  "nextToken": "The token to be used for the next set of paginated results.",
  "assetId": "The ID of the asset."
}
"""
GetAssetPropertyAggregates(args) = iotsitewise("GET", "/properties/aggregates", args)

"""
    UpdateProject()

Updates an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "projectId": "The ID of the project to update.",
  "projectName": "A new friendly name for the project."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "projectDescription": "A new description for the project."
}
"""
UpdateProject(args) = iotsitewise("PUT", "/projects/{projectId}", args)

"""
    DescribeDashboard()

Retrieves information about a dashboard.

Required Parameters
{
  "dashboardId": "The ID of the dashboard."
}
"""
DescribeDashboard(args) = iotsitewise("GET", "/dashboards/{dashboardId}", args)

"""
    DescribeProject()

Retrieves information about a project.

Required Parameters
{
  "projectId": "The ID of the project."
}
"""
DescribeProject(args) = iotsitewise("GET", "/projects/{projectId}", args)

"""
    DescribeAsset()

Retrieves information about an asset.

Required Parameters
{
  "assetId": "The ID of the asset."
}
"""
DescribeAsset(args) = iotsitewise("GET", "/assets/{assetId}", args)

"""
    TagResource()

Adds tags to an AWS IoT SiteWise resource. If a tag already exists for the resource, this operation updates the tag's value.

Required Parameters
{
  "resourceArn": "The ARN of the resource to tag.",
  "tags": "A list of key-value pairs that contain metadata for the resource. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
TagResource(args) = iotsitewise("POST", "/tags", args)

"""
    DeleteProject()

Deletes a project from AWS IoT SiteWise Monitor.

Required Parameters
{
  "projectId": "The ID of the project."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeleteProject(args) = iotsitewise("DELETE", "/projects/{projectId}", args)

"""
    DescribeGateway()

Retrieves information about a gateway.

Required Parameters
{
  "gatewayId": "The ID of the gateway device."
}
"""
DescribeGateway(args) = iotsitewise("GET", "/20200301/gateways/{gatewayId}", args)

"""
    CreateDashboard()

Creates a dashboard in an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "dashboardName": "A friendly name for the dashboard.",
  "projectId": "The ID of the project in which to create the dashboard.",
  "dashboardDefinition": "The dashboard definition specified in a JSON literal. For detailed information, see Creating dashboards (CLI) in the AWS IoT SiteWise User Guide."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "dashboardDescription": "A description for the dashboard.",
  "tags": "A list of key-value pairs that contain metadata for the dashboard. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreateDashboard(args) = iotsitewise("POST", "/dashboards", args)

"""
    BatchPutAssetPropertyValue()

Sends a list of asset property values to AWS IoT SiteWise. Each value is a timestamp-quality-value (TQV) data point. For more information, see Ingesting data using the API in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.    With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs that have a timestamp of no more than 15 minutes in the past and no more than 5 minutes in the future. AWS IoT SiteWise rejects timestamps outside of the inclusive range of [-15, +5] minutes and returns a TimestampOutOfRangeException error. For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer TQV has a different quality. For example, if you store a TQV {T1, GOOD, V1}, then storing {T1, GOOD, V2} replaces the existing TQV.  AWS IoT SiteWise authorizes access to each BatchPutAssetPropertyValue entry individually. For more information, see BatchPutAssetPropertyValue authorization in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "entries": "The list of asset property value entries for the batch put request. You can specify up to 10 entries per request."
}
"""
BatchPutAssetPropertyValue(args) = iotsitewise("POST", "/properties", args)

"""
    UpdateAssetProperty()

Updates an asset property's alias and notification state.  This operation overwrites the property's existing alias and notification state. To keep your existing property's alias or notification state, you must include the existing values in the UpdateAssetProperty request. For more information, see DescribeAssetProperty. 

Required Parameters
{
  "propertyId": "The ID of the asset property to be updated.",
  "assetId": "The ID of the asset to be updated."
}

Optional Parameters
{
  "propertyNotificationState": "The MQTT notification state (enabled or disabled) for this asset property. When the notification state is enabled, AWS IoT SiteWise publishes property value updates to a unique MQTT topic. For more information, see Interacting with other services in the AWS IoT SiteWise User Guide. If you omit this parameter, the notification state is set to DISABLED.",
  "propertyAlias": "The property alias that identifies the property, such as an OPC-UA server data stream path (for example, /company/windfarm/3/turbine/7/temperature). For more information, see Mapping industrial data streams to asset properties in the AWS IoT SiteWise User Guide. If you omit this parameter, the alias is removed from the property.",
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
UpdateAssetProperty(args) = iotsitewise("PUT", "/assets/{assetId}/properties/{propertyId}", args)

"""
    AssociateAssets()

Associates a child asset with the given parent asset through a hierarchy defined in the parent asset's model. For more information, see Associating assets in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "childAssetId": "The ID of the child asset to be associated.",
  "hierarchyId": "The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings of assets to be formed that all come from the same asset model. For more information, see Asset hierarchies in the AWS IoT SiteWise User Guide.",
  "assetId": "The ID of the parent asset."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
AssociateAssets(args) = iotsitewise("POST", "/assets/{assetId}/associate", args)

"""
    DeletePortal()

Deletes a portal from AWS IoT SiteWise Monitor.

Required Parameters
{
  "portalId": "The ID of the portal to delete."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeletePortal(args) = iotsitewise("DELETE", "/portals/{portalId}", args)

"""
    DescribeAssetModel()

Retrieves information about an asset model.

Required Parameters
{
  "assetModelId": "The ID of the asset model."
}
"""
DescribeAssetModel(args) = iotsitewise("GET", "/asset-models/{assetModelId}", args)

"""
    DeleteAsset()

Deletes an asset. This action can't be undone. For more information, see Deleting assets and models in the AWS IoT SiteWise User Guide.   You can't delete an asset that's associated to another asset. For more information, see DisassociateAssets. 

Required Parameters
{
  "assetId": "The ID of the asset to delete."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeleteAsset(args) = iotsitewise("DELETE", "/assets/{assetId}", args)

"""
    CreateAssetModel()

Creates an asset model from specified property and hierarchy definitions. You create assets from asset models. With asset models, you can easily create assets of the same type that have standardized definitions. Each asset created from a model inherits the asset model's property and hierarchy definitions. For more information, see Defining asset models in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "assetModelName": "A unique, friendly name for the asset model."
}

Optional Parameters
{
  "assetModelHierarchies": "The hierarchy definitions of the asset model. Each hierarchy specifies an asset model whose assets can be children of any other assets created from this asset model. For more information, see Asset hierarchies in the AWS IoT SiteWise User Guide. You can specify up to 10 hierarchies per asset model. For more information, see Quotas in the AWS IoT SiteWise User Guide.",
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "assetModelDescription": "A description for the asset model.",
  "tags": "A list of key-value pairs that contain metadata for the asset model. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide.",
  "assetModelProperties": "The property definitions of the asset model. For more information, see Asset properties in the AWS IoT SiteWise User Guide. You can specify up to 200 properties per asset model. For more information, see Quotas in the AWS IoT SiteWise User Guide."
}
"""
CreateAssetModel(args) = iotsitewise("POST", "/asset-models", args)

"""
    UntagResource()

Removes a tag from an AWS IoT SiteWise resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource to untag.",
  "tagKeys": "A list of keys for tags to remove from the resource."
}
"""
UntagResource(args) = iotsitewise("DELETE", "/tags", args)

"""
    GetAssetPropertyValueHistory()

Gets the history of an asset property's values. For more information, see Querying historical values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  

Optional Parameters
{
  "qualities": "The quality by which to filter asset data.",
  "timeOrdering": "The chronological sorting order of the requested information. Default: ASCENDING ",
  "propertyId": "The ID of the asset property.",
  "propertyAlias": "The property alias that identifies the property, such as an OPC-UA server data stream path (for example, /company/windfarm/3/turbine/7/temperature). For more information, see Mapping industrial data streams to asset properties in the AWS IoT SiteWise User Guide.",
  "startDate": "The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.",
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 100",
  "endDate": "The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.",
  "nextToken": "The token to be used for the next set of paginated results.",
  "assetId": "The ID of the asset."
}
"""

GetAssetPropertyValueHistory() = iotsitewise("GET", "/properties/history")
GetAssetPropertyValueHistory(args) = iotsitewise("GET", "/properties/history", args)

"""
    UpdateDashboard()

Updates an AWS IoT SiteWise Monitor dashboard.

Required Parameters
{
  "dashboardId": "The ID of the dashboard to update.",
  "dashboardName": "A new friendly name for the dashboard.",
  "dashboardDefinition": "The new dashboard definition, as specified in a JSON literal. For detailed information, see Creating dashboards (CLI) in the AWS IoT SiteWise User Guide."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "dashboardDescription": "A new description for the dashboard."
}
"""
UpdateDashboard(args) = iotsitewise("PUT", "/dashboards/{dashboardId}", args)

"""
    ListAccessPolicies()

Retrieves a paginated list of access policies for an AWS SSO identity (a user or group) or an AWS IoT SiteWise Monitor resource (a portal or project).

Optional Parameters
{
  "identityType": "The type of identity (user or group). This parameter is required if you specify identityId.",
  "resourceId": "The ID of the resource. This parameter is required if you specify resourceType.",
  "identityId": "The ID of the identity. This parameter is required if you specify identityType.",
  "resourceType": "The type of resource (portal or project). This parameter is required if you specify resourceId.",
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""

ListAccessPolicies() = iotsitewise("GET", "/access-policies")
ListAccessPolicies(args) = iotsitewise("GET", "/access-policies", args)

"""
    DescribeAssetProperty()

Retrieves information about an asset property.  When you call this operation for an attribute property, this response includes the default attribute value that you define in the asset model. If you update the default value in the model, this operation's response includes the new default value.  This operation doesn't return the value of the asset property. To get the value of an asset property, use GetAssetPropertyValue.

Required Parameters
{
  "propertyId": "The ID of the asset property.",
  "assetId": "The ID of the asset."
}
"""
DescribeAssetProperty(args) = iotsitewise("GET", "/assets/{assetId}/properties/{propertyId}", args)

"""
    UpdateAsset()

Updates an asset's name. For more information, see Updating assets and models in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "assetName": "A unique, friendly name for the asset.",
  "assetId": "The ID of the asset to update."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
UpdateAsset(args) = iotsitewise("PUT", "/assets/{assetId}", args)

"""
    DeleteDashboard()

Deletes a dashboard from AWS IoT SiteWise Monitor.

Required Parameters
{
  "dashboardId": "The ID of the dashboard to delete."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeleteDashboard(args) = iotsitewise("DELETE", "/dashboards/{dashboardId}", args)

"""
    BatchAssociateProjectAssets()

Associates a group (batch) of assets with an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "projectId": "The ID of the project to which to associate the assets.",
  "assetIds": "The IDs of the assets to be associated to the project."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
BatchAssociateProjectAssets(args) = iotsitewise("POST", "/projects/{projectId}/assets/associate", args)

"""
    ListPortals()

Retrieves a paginated list of AWS IoT SiteWise Monitor portals.

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""

ListPortals() = iotsitewise("GET", "/portals")
ListPortals(args) = iotsitewise("GET", "/portals", args)

"""
    ListTagsForResource()

Retrieves the list of tags for an AWS IoT SiteWise resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource."
}
"""
ListTagsForResource(args) = iotsitewise("GET", "/tags", args)

"""
    CreateAsset()

Creates an asset from an existing asset model. For more information, see Creating assets in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "assetModelId": "The ID of the asset model from which to create the asset.",
  "assetName": "A unique, friendly name for the asset."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "tags": "A list of key-value pairs that contain metadata for the asset. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreateAsset(args) = iotsitewise("POST", "/assets", args)

"""
    DescribePortal()

Retrieves information about a portal.

Required Parameters
{
  "portalId": "The ID of the portal."
}
"""
DescribePortal(args) = iotsitewise("GET", "/portals/{portalId}", args)

"""
    CreateAccessPolicy()

Creates an access policy that grants the specified AWS Single Sign-On user or group access to the specified AWS IoT SiteWise Monitor portal or project resource.

Required Parameters
{
  "accessPolicyResource": "The AWS IoT SiteWise Monitor resource for this access policy. Choose either portal or project but not both.",
  "accessPolicyIdentity": "The identity for this access policy. Choose either a user or a group but not both.",
  "accessPolicyPermission": "The permission level for this access policy. Note that a project ADMINISTRATOR is also known as a project owner."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "tags": "A list of key-value pairs that contain metadata for the access policy. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreateAccessPolicy(args) = iotsitewise("POST", "/access-policies", args)

"""
    PutLoggingOptions()

Sets logging options for AWS IoT SiteWise.

Required Parameters
{
  "loggingOptions": "The logging options to set."
}
"""
PutLoggingOptions(args) = iotsitewise("PUT", "/logging", args)

"""
    ListAssets()

Retrieves a paginated list of asset summaries. You can use this operation to do the following:   List assets based on a specific asset model.   List top-level assets.   You can't use this operation to list all assets. To retrieve summaries for all of your assets, use ListAssetModels to get all of your asset model IDs. Then, use ListAssets to get all assets for each asset model.

Optional Parameters
{
  "filter": "The filter for the requested list of assets. Choose one of the following options:    ALL – The list includes all assets for a given asset model ID. The assetModelId parameter is required if you filter by ALL.    TOP_LEVEL – The list includes only top-level assets in the asset hierarchy tree.   Default: ALL ",
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "assetModelId": "The ID of the asset model by which to filter the list of assets. This parameter is required if you choose ALL for filter.",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""

ListAssets() = iotsitewise("GET", "/assets")
ListAssets(args) = iotsitewise("GET", "/assets", args)

"""
    CreatePortal()

Creates a portal, which can contain projects and dashboards. Before you can create a portal, you must enable AWS Single Sign-On. AWS IoT SiteWise Monitor uses AWS SSO to manage user permissions. For more information, see Enabling AWS SSO in the AWS IoT SiteWise User Guide.  Before you can sign in to a new portal, you must add at least one AWS SSO user or group to that portal. For more information, see Adding or removing portal administrators in the AWS IoT SiteWise User Guide. 

Required Parameters
{
  "roleArn": "The ARN of a service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see Using service roles for AWS IoT SiteWise Monitor in the AWS IoT SiteWise User Guide.",
  "portalName": "A friendly name for the portal.",
  "portalContactEmail": "The AWS administrator's contact email address."
}

Optional Parameters
{
  "portalLogoImageFile": "A logo image to display in the portal. Upload a square, high-resolution image. The image is displayed on a dark background.",
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "portalDescription": "A description for the portal.",
  "tags": "A list of key-value pairs that contain metadata for the portal. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreatePortal(args) = iotsitewise("POST", "/portals", args)

"""
    DeleteAccessPolicy()

Deletes an access policy that grants the specified AWS Single Sign-On identity access to the specified AWS IoT SiteWise Monitor resource. You can use this operation to revoke access to an AWS IoT SiteWise Monitor resource.

Required Parameters
{
  "accessPolicyId": "The ID of the access policy to be deleted."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeleteAccessPolicy(args) = iotsitewise("DELETE", "/access-policies/{accessPolicyId}", args)

"""
    UpdateAccessPolicy()

Updates an existing access policy that specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project resource.

Required Parameters
{
  "accessPolicyResource": "The AWS IoT SiteWise Monitor resource for this access policy. Choose either portal or project but not both.",
  "accessPolicyIdentity": "The identity for this access policy. Choose either a user or a group but not both.",
  "accessPolicyPermission": "The permission level for this access policy. Note that a project ADMINISTRATOR is also known as a project owner.",
  "accessPolicyId": "The ID of the access policy."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
UpdateAccessPolicy(args) = iotsitewise("PUT", "/access-policies/{accessPolicyId}", args)

"""
    ListAssociatedAssets()

Retrieves a paginated list of associated assets. You can use this operation to do the following:   List child assets associated to a parent asset by a hierarchy that you specify.   List an asset's parent asset.  

Required Parameters
{
  "assetId": "The ID of the asset to query."
}

Optional Parameters
{
  "hierarchyId": "The ID of the hierarchy by which child assets are associated to the asset. To find a hierarchy ID, use the DescribeAsset or DescribeAssetModel operations. This parameter is required if you choose CHILD for traversalDirection. For more information, see Asset hierarchies in the AWS IoT SiteWise User Guide.",
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results.",
  "traversalDirection": "The direction to list associated assets. Choose one of the following options:    CHILD – The list includes all child assets associated to the asset. The hierarchyId parameter is required if you choose CHILD.    PARENT – The list includes the asset's parent asset.   Default: CHILD "
}
"""
ListAssociatedAssets(args) = iotsitewise("GET", "/assets/{assetId}/hierarchies", args)

"""
    DeleteAssetModel()

Deletes an asset model. This action can't be undone. You must delete all assets created from an asset model before you can delete the model. Also, you can't delete an asset model if a parent asset model exists that contains a property formula expression that depends on the asset model that you want to delete. For more information, see Deleting assets and models in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "assetModelId": "The ID of the asset model to delete."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DeleteAssetModel(args) = iotsitewise("DELETE", "/asset-models/{assetModelId}", args)

"""
    UpdatePortal()

Updates an AWS IoT SiteWise Monitor portal.

Required Parameters
{
  "roleArn": "The ARN of a service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see Using service roles for AWS IoT SiteWise Monitor in the AWS IoT SiteWise User Guide.",
  "portalName": "A new friendly name for the portal.",
  "portalContactEmail": "The AWS administrator's contact email address.",
  "portalId": "The ID of the portal to update."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "portalLogoImage": "",
  "portalDescription": "A new description for the portal."
}
"""
UpdatePortal(args) = iotsitewise("PUT", "/portals/{portalId}", args)

"""
    UpdateGateway()

Updates a gateway's name.

Required Parameters
{
  "gatewayId": "The ID of the gateway to update.",
  "gatewayName": "A unique, friendly name for the gateway."
}
"""
UpdateGateway(args) = iotsitewise("PUT", "/20200301/gateways/{gatewayId}", args)

"""
    CreateGateway()

Creates a gateway, which is a virtual or edge device that delivers industrial data streams from local servers to AWS IoT SiteWise. For more information, see Ingesting data using a gateway in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "gatewayPlatform": "The gateway's platform. You can only specify one platform in a gateway.",
  "gatewayName": "A unique, friendly name for the gateway."
}

Optional Parameters
{
  "tags": "A list of key-value pairs that contain metadata for the gateway. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreateGateway(args) = iotsitewise("POST", "/20200301/gateways", args)

"""
    DescribeAccessPolicy()

Describes an access policy, which specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project.

Required Parameters
{
  "accessPolicyId": "The ID of the access policy."
}
"""
DescribeAccessPolicy(args) = iotsitewise("GET", "/access-policies/{accessPolicyId}", args)

"""
    CreateProject()

Creates a project in the specified portal.

Required Parameters
{
  "projectName": "A friendly name for the project.",
  "portalId": "The ID of the portal in which to create the project."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "projectDescription": "A description for the project.",
  "tags": "A list of key-value pairs that contain metadata for the project. For more information, see Tagging your AWS IoT SiteWise resources in the AWS IoT SiteWise User Guide."
}
"""
CreateProject(args) = iotsitewise("POST", "/projects", args)

"""
    ListProjectAssets()

Retrieves a paginated list of assets associated with an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "projectId": "The ID of the project."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""
ListProjectAssets(args) = iotsitewise("GET", "/projects/{projectId}/assets", args)

"""
    ListAssetModels()

Retrieves a paginated list of summaries of all asset models.

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""

ListAssetModels() = iotsitewise("GET", "/asset-models")
ListAssetModels(args) = iotsitewise("GET", "/asset-models", args)

"""
    ListProjects()

Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor portal.

Required Parameters
{
  "portalId": "The ID of the portal."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""
ListProjects(args) = iotsitewise("GET", "/projects", args)

"""
    UpdateGatewayCapabilityConfiguration()

Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.

Required Parameters
{
  "capabilityNamespace": "The namespace of the gateway capability configuration to be updated. For example, if you configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace iotsitewise:opcuacollector:version, where version is a number such as 1.",
  "gatewayId": "The ID of the gateway to be updated.",
  "capabilityConfiguration": "The JSON document that defines the configuration for the gateway capability. For more information, see Configuring data sources (CLI) in the AWS IoT SiteWise User Guide."
}
"""
UpdateGatewayCapabilityConfiguration(args) = iotsitewise("POST", "/20200301/gateways/{gatewayId}/capability", args)

"""
    UpdateAssetModel()

Updates an asset model and all of the assets that were created from the model. Each asset created from the model inherits the updated asset model's property and hierarchy definitions. For more information, see Updating assets and models in the AWS IoT SiteWise User Guide.  This operation overwrites the existing model with the provided model. To avoid deleting your asset model's properties or hierarchies, you must include their IDs and definitions in the updated asset model payload. For more information, see DescribeAssetModel. If you remove a property from an asset model or update a property's formula expression, AWS IoT SiteWise deletes all previous data for that property. If you remove a hierarchy definition from an asset model, AWS IoT SiteWise disassociates every asset associated with that hierarchy. You can't change the type or data type of an existing property. 

Required Parameters
{
  "assetModelName": "A unique, friendly name for the asset model.",
  "assetModelId": "The ID of the asset model to update."
}

Optional Parameters
{
  "assetModelHierarchies": "The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset model whose assets can be children of any other assets created from this asset model. For more information, see Asset hierarchies in the AWS IoT SiteWise User Guide. You can specify up to 10 hierarchies per asset model. For more information, see Quotas in the AWS IoT SiteWise User Guide.",
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.",
  "assetModelDescription": "A description for the asset model.",
  "assetModelProperties": "The updated property definitions of the asset model. For more information, see Asset properties in the AWS IoT SiteWise User Guide. You can specify up to 200 properties per asset model. For more information, see Quotas in the AWS IoT SiteWise User Guide."
}
"""
UpdateAssetModel(args) = iotsitewise("PUT", "/asset-models/{assetModelId}", args)

"""
    BatchDisassociateProjectAssets()

Disassociates a group (batch) of assets from an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "projectId": "The ID of the project from which to disassociate the assets.",
  "assetIds": "The IDs of the assets to be disassociated from the project."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
BatchDisassociateProjectAssets(args) = iotsitewise("POST", "/projects/{projectId}/assets/disassociate", args)

"""
    DeleteGateway()

Deletes a gateway from AWS IoT SiteWise. When you delete a gateway, some of the gateway's files remain in your gateway's file system. For more information, see Data retention in the AWS IoT SiteWise User Guide.

Required Parameters
{
  "gatewayId": "The ID of the gateway to delete."
}
"""
DeleteGateway(args) = iotsitewise("DELETE", "/20200301/gateways/{gatewayId}", args)

"""
    ListDashboards()

Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor project.

Required Parameters
{
  "projectId": "The ID of the project."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to be returned per paginated request. Default: 50",
  "nextToken": "The token to be used for the next set of paginated results."
}
"""
ListDashboards(args) = iotsitewise("GET", "/dashboards", args)

"""
    DescribeLoggingOptions()

Retrieves the current AWS IoT SiteWise logging options.
"""

DescribeLoggingOptions() = iotsitewise("GET", "/logging")
DescribeLoggingOptions(args) = iotsitewise("GET", "/logging", args)

"""
    DescribeGatewayCapabilityConfiguration()

Retrieves information about a gateway capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.

Required Parameters
{
  "capabilityNamespace": "The namespace of the capability configuration. For example, if you configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace iotsitewise:opcuacollector:version, where version is a number such as 1.",
  "gatewayId": "The ID of the gateway that defines the capability configuration."
}
"""
DescribeGatewayCapabilityConfiguration(args) = iotsitewise("GET", "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", args)

"""
    DisassociateAssets()

Disassociates a child asset from the given parent asset through a hierarchy defined in the parent asset's model.

Required Parameters
{
  "childAssetId": "The ID of the child asset to disassociate.",
  "hierarchyId": "The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings of assets to be formed that all come from the same asset model. You can use the hierarchy ID to identify the correct asset to disassociate. For more information, see Asset hierarchies in the AWS IoT SiteWise User Guide.",
  "assetId": "The ID of the parent asset from which to disassociate the child asset."
}

Optional Parameters
{
  "clientToken": "A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required."
}
"""
DisassociateAssets(args) = iotsitewise("POST", "/assets/{assetId}/disassociate", args)

"""
    GetAssetPropertyValue()

Gets an asset property's current value. For more information, see Querying current values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  

Optional Parameters
{
  "propertyId": "The ID of the asset property.",
  "propertyAlias": "The property alias that identifies the property, such as an OPC-UA server data stream path (for example, /company/windfarm/3/turbine/7/temperature). For more information, see Mapping industrial data streams to asset properties in the AWS IoT SiteWise User Guide.",
  "assetId": "The ID of the asset."
}
"""

GetAssetPropertyValue() = iotsitewise("GET", "/properties/latest")
GetAssetPropertyValue(args) = iotsitewise("GET", "/properties/latest", args)
