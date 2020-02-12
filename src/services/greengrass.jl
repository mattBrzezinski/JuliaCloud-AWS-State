include("../AWSCorePrototypeServices.jl")
using .Services: greengrass

"""
    UpdateFunctionDefinition

Updates a Lambda function definition.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateFunctionDefinition(args) = greengrass("PUT", "/greengrass/definition/functions/{FunctionDefinitionId}", args)
"""
    DeleteGroup

Deletes a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

DeleteGroup(args) = greengrass("DELETE", "/greengrass/groups/{GroupId}", args)
"""
    GetGroup

Retrieves information about a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetGroup(args) = greengrass("GET", "/greengrass/groups/{GroupId}", args)
"""
    ListSubscriptionDefinitionVersions

Lists the versions of a subscription definition.

Required Parameters:
{
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListSubscriptionDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)
"""
    DisassociateServiceRoleFromAccount

Disassociates the service role from your account. Without a service role, deployments will not work.

Required Parameters:
{}


Optional Parameters:
{}

"""
DisassociateServiceRoleFromAccount() = greengrass("DELETE", "/greengrass/servicerole")
DisassociateServiceRoleFromAccount(args) = greengrass("DELETE", "/greengrass/servicerole", args)

"""
    GetDeviceDefinitionVersion

Retrieves information about a device definition version.

Required Parameters:
{
  "DeviceDefinitionVersionId": "The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.",
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

GetDeviceDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", args)
"""
    UpdateResourceDefinition

Updates a resource definition.

Required Parameters:
{
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateResourceDefinition(args) = greengrass("PUT", "/greengrass/definition/resources/{ResourceDefinitionId}", args)
"""
    UpdateLoggerDefinition

Updates a logger definition.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateLoggerDefinition(args) = greengrass("PUT", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)
"""
    DeleteCoreDefinition

Deletes a core definition.

Required Parameters:
{
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{}

"""

DeleteCoreDefinition(args) = greengrass("DELETE", "/greengrass/definition/cores/{CoreDefinitionId}", args)
"""
    TagResource

Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource."
}


Optional Parameters:
{
  "tags": ""
}

"""

TagResource(args) = greengrass("POST", "/tags/{resource-arn}", args)
"""
    GetConnectorDefinitionVersion

Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition.",
  "ConnectorDefinitionVersionId": "The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
}


Optional Parameters:
{
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

GetConnectorDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}", args)
"""
    GetResourceDefinition

Retrieves information about a resource definition, including its creation time and latest version.

Required Parameters:
{
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{}

"""

GetResourceDefinition(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}", args)
"""
    ListFunctionDefinitionVersions

Lists the versions of a Lambda function definition.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListFunctionDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)
"""
    GetSubscriptionDefinitionVersion

Retrieves information about a subscription definition version.

Required Parameters:
{
  "SubscriptionDefinitionVersionId": "The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.",
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

GetSubscriptionDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", args)
"""
    ListDeployments

Returns a history of deployments for the group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListDeployments(args) = greengrass("GET", "/greengrass/groups/{GroupId}/deployments", args)
"""
    CreateConnectorDefinition

Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the connector definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the connector definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateConnectorDefinition() = greengrass("POST", "/greengrass/definition/connectors")
CreateConnectorDefinition(args) = greengrass("POST", "/greengrass/definition/connectors", args)

"""
    GetLoggerDefinition

Retrieves information about a logger definition.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition."
}


Optional Parameters:
{}

"""

GetLoggerDefinition(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)
"""
    CreateDeployment

Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.

Required Parameters:
{
  "DeploymentType": "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.",
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "DeploymentId": "The ID of the deployment if you wish to redeploy a previous deployment.",
  "GroupVersionId": "The ID of the group version to be deployed.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateDeployment(args) = greengrass("POST", "/greengrass/groups/{GroupId}/deployments", args)
"""
    DisassociateRoleFromGroup

Disassociates the role from a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

DisassociateRoleFromGroup(args) = greengrass("DELETE", "/greengrass/groups/{GroupId}/role", args)
"""
    ListCoreDefinitionVersions

Lists the versions of a core definition.

Required Parameters:
{
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListCoreDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)
"""
    ListResourceDefinitionVersions

Lists the versions of a resource definition.

Required Parameters:
{
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListResourceDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)
"""
    StopBulkDeployment

Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.

Required Parameters:
{
  "BulkDeploymentId": "The ID of the bulk deployment."
}


Optional Parameters:
{}

"""

StopBulkDeployment(args) = greengrass("PUT", "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop", args)
"""
    GetSubscriptionDefinition

Retrieves information about a subscription definition.

Required Parameters:
{
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{}

"""

GetSubscriptionDefinition(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)
"""
    ListSubscriptionDefinitions

Retrieves a list of subscription definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListSubscriptionDefinitions() = greengrass("GET", "/greengrass/definition/subscriptions")
ListSubscriptionDefinitions(args) = greengrass("GET", "/greengrass/definition/subscriptions", args)

"""
    CreateCoreDefinition

Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the core definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the core definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateCoreDefinition() = greengrass("POST", "/greengrass/definition/cores")
CreateCoreDefinition(args) = greengrass("POST", "/greengrass/definition/cores", args)

"""
    ListLoggerDefinitions

Retrieves a list of logger definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListLoggerDefinitions() = greengrass("GET", "/greengrass/definition/loggers")
ListLoggerDefinitions(args) = greengrass("GET", "/greengrass/definition/loggers", args)

"""
    UntagResource

Remove resource tags from a Greengrass Resource.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "TagKeys": "An array of tag keys to delete"
}


Optional Parameters:
{}

"""

UntagResource(args) = greengrass("DELETE", "/tags/{resource-arn}", args)
"""
    GetDeviceDefinition

Retrieves information about a device definition.

Required Parameters:
{
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{}

"""

GetDeviceDefinition(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}", args)
"""
    CreateLoggerDefinitionVersion

Creates a version of a logger definition that has already been defined.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition."
}


Optional Parameters:
{
  "Loggers": "A list of loggers.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateLoggerDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)
"""
    ListDeviceDefinitionVersions

Lists the versions of a device definition.

Required Parameters:
{
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListDeviceDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)
"""
    CreateResourceDefinitionVersion

Creates a version of a resource definition that has already been defined.

Required Parameters:
{
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{
  "Resources": "A list of resources.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateResourceDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)
"""
    GetServiceRoleForAccount

Retrieves the service role that is attached to your account.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetServiceRoleForAccount() = greengrass("GET", "/greengrass/servicerole")
GetServiceRoleForAccount(args) = greengrass("GET", "/greengrass/servicerole", args)

"""
    GetLoggerDefinitionVersion

Retrieves information about a logger definition version.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition.",
  "LoggerDefinitionVersionId": "The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
}


Optional Parameters:
{
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

GetLoggerDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", args)
"""
    CreateGroup

Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the group.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the group.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateGroup() = greengrass("POST", "/greengrass/groups")
CreateGroup(args) = greengrass("POST", "/greengrass/groups", args)

"""
    DeleteConnectorDefinition

Deletes a connector definition.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition."
}


Optional Parameters:
{}

"""

DeleteConnectorDefinition(args) = greengrass("DELETE", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)
"""
    ListLoggerDefinitionVersions

Lists the versions of a logger definition.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListLoggerDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)
"""
    ListGroupVersions

Lists the versions of a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListGroupVersions(args) = greengrass("GET", "/greengrass/groups/{GroupId}/versions", args)
"""
    CreateGroupVersion

Creates a version of a group which has already been defined.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "FunctionDefinitionVersionArn": "The ARN of the function definition version for this group.",
  "ResourceDefinitionVersionArn": "The ARN of the resource definition version for this group.",
  "DeviceDefinitionVersionArn": "The ARN of the device definition version for this group.",
  "LoggerDefinitionVersionArn": "The ARN of the logger definition version for this group.",
  "CoreDefinitionVersionArn": "The ARN of the core definition version for this group.",
  "SubscriptionDefinitionVersionArn": "The ARN of the subscription definition version for this group.",
  "AmznClientToken": "A client token used to correlate requests and responses.",
  "ConnectorDefinitionVersionArn": "The ARN of the connector definition version for this group."
}

"""

CreateGroupVersion(args) = greengrass("POST", "/greengrass/groups/{GroupId}/versions", args)
"""
    GetConnectorDefinition

Retrieves information about a connector definition.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition."
}


Optional Parameters:
{}

"""

GetConnectorDefinition(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)
"""
    AssociateServiceRoleToAccount

Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.

Required Parameters:
{
  "RoleArn": "The ARN of the service role you wish to associate with your account."
}


Optional Parameters:
{}

"""

AssociateServiceRoleToAccount(args) = greengrass("PUT", "/greengrass/servicerole", args)
"""
    GetAssociatedRole

Retrieves the role associated with a particular group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetAssociatedRole(args) = greengrass("GET", "/greengrass/groups/{GroupId}/role", args)
"""
    StartBulkDeployment

Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.

Required Parameters:
{
  "InputFileUri": "The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.",
  "ExecutionRoleArn": "The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file."
}


Optional Parameters:
{
  "tags": "Tag(s) to add to the new resource.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

StartBulkDeployment(args) = greengrass("POST", "/greengrass/bulk/deployments", args)
"""
    UpdateDeviceDefinition

Updates a device definition.

Required Parameters:
{
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateDeviceDefinition(args) = greengrass("PUT", "/greengrass/definition/devices/{DeviceDefinitionId}", args)
"""
    ListTagsForResource

Retrieves a list of resource tags for a resource arn.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = greengrass("GET", "/tags/{resource-arn}", args)
"""
    GetGroupVersion

Retrieves information about a group version.

Required Parameters:
{
  "GroupVersionId": "The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.",
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetGroupVersion(args) = greengrass("GET", "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", args)
"""
    ListBulkDeploymentDetailedReports

Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.

Required Parameters:
{
  "BulkDeploymentId": "The ID of the bulk deployment."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListBulkDeploymentDetailedReports(args) = greengrass("GET", "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports", args)
"""
    GetCoreDefinition

Retrieves information about a core definition version.

Required Parameters:
{
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{}

"""

GetCoreDefinition(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}", args)
"""
    ListGroupCertificateAuthorities

Retrieves the current CAs for a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

ListGroupCertificateAuthorities(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities", args)
"""
    GetGroupCertificateConfiguration

Retrieves the current configuration for the CA used by the group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetGroupCertificateConfiguration(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)
"""
    GetBulkDeploymentStatus

Returns the status of a bulk deployment.

Required Parameters:
{
  "BulkDeploymentId": "The ID of the bulk deployment."
}


Optional Parameters:
{}

"""

GetBulkDeploymentStatus(args) = greengrass("GET", "/greengrass/bulk/deployments/{BulkDeploymentId}/status", args)
"""
    DeleteDeviceDefinition

Deletes a device definition.

Required Parameters:
{
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{}

"""

DeleteDeviceDefinition(args) = greengrass("DELETE", "/greengrass/definition/devices/{DeviceDefinitionId}", args)
"""
    GetResourceDefinitionVersion

Retrieves information about a resource definition version, including which resources are included in the version.

Required Parameters:
{
  "ResourceDefinitionVersionId": "The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.",
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{}

"""

GetResourceDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", args)
"""
    AssociateRoleToGroup

Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.

Required Parameters:
{
  "RoleArn": "The ARN of the role you wish to associate with this group. The existence of the role is not validated.",
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

AssociateRoleToGroup(args) = greengrass("PUT", "/greengrass/groups/{GroupId}/role", args)
"""
    UpdateSubscriptionDefinition

Updates a subscription definition.

Required Parameters:
{
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateSubscriptionDefinition(args) = greengrass("PUT", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)
"""
    ListConnectorDefinitionVersions

Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

ListConnectorDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", args)
"""
    CreateResourceDefinition

Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the resource definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the resource definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateResourceDefinition() = greengrass("POST", "/greengrass/definition/resources")
CreateResourceDefinition(args) = greengrass("POST", "/greengrass/definition/resources", args)

"""
    DeleteLoggerDefinition

Deletes a logger definition.

Required Parameters:
{
  "LoggerDefinitionId": "The ID of the logger definition."
}


Optional Parameters:
{}

"""

DeleteLoggerDefinition(args) = greengrass("DELETE", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)
"""
    CreateSubscriptionDefinitionVersion

Creates a version of a subscription definition which has already been defined.

Required Parameters:
{
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{
  "Subscriptions": "A list of subscriptions.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateSubscriptionDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)
"""
    DeleteSubscriptionDefinition

Deletes a subscription definition.

Required Parameters:
{
  "SubscriptionDefinitionId": "The ID of the subscription definition."
}


Optional Parameters:
{}

"""

DeleteSubscriptionDefinition(args) = greengrass("DELETE", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)
"""
    GetFunctionDefinition

Retrieves information about a Lambda function definition, including its creation time and latest version.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition."
}


Optional Parameters:
{}

"""

GetFunctionDefinition(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}", args)
"""
    CreateLoggerDefinition

Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the logger definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the logger definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateLoggerDefinition() = greengrass("POST", "/greengrass/definition/loggers")
CreateLoggerDefinition(args) = greengrass("POST", "/greengrass/definition/loggers", args)

"""
    CreateDeviceDefinition

Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the device definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the device definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateDeviceDefinition() = greengrass("POST", "/greengrass/definition/devices")
CreateDeviceDefinition(args) = greengrass("POST", "/greengrass/definition/devices", args)

"""
    ListCoreDefinitions

Retrieves a list of core definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListCoreDefinitions() = greengrass("GET", "/greengrass/definition/cores")
ListCoreDefinitions(args) = greengrass("GET", "/greengrass/definition/cores", args)

"""
    UpdateCoreDefinition

Updates a core definition.

Required Parameters:
{
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateCoreDefinition(args) = greengrass("PUT", "/greengrass/definition/cores/{CoreDefinitionId}", args)
"""
    ListGroups

Retrieves a list of groups.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListGroups() = greengrass("GET", "/greengrass/groups")
ListGroups(args) = greengrass("GET", "/greengrass/groups", args)

"""
    GetDeploymentStatus

Returns the status of a deployment.

Required Parameters:
{
  "DeploymentId": "The ID of the deployment.",
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetDeploymentStatus(args) = greengrass("GET", "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", args)
"""
    UpdateConnectivityInfo

Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.

Required Parameters:
{
  "ThingName": "The thing name."
}


Optional Parameters:
{
  "ConnectivityInfo": "A list of connectivity info."
}

"""

UpdateConnectivityInfo(args) = greengrass("PUT", "/greengrass/things/{ThingName}/connectivityInfo", args)
"""
    CreateGroupCertificateAuthority

Creates a CA for the group. If a CA already exists, it will rotate the existing CA.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateGroupCertificateAuthority(args) = greengrass("POST", "/greengrass/groups/{GroupId}/certificateauthorities", args)
"""
    GetCoreDefinitionVersion

Retrieves information about a core definition version.

Required Parameters:
{
  "CoreDefinitionVersionId": "The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.",
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{}

"""

GetCoreDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", args)
"""
    UpdateConnectorDefinition

Updates a connector definition.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateConnectorDefinition(args) = greengrass("PUT", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)
"""
    CreateSubscriptionDefinition

Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the subscription definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the subscription definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateSubscriptionDefinition() = greengrass("POST", "/greengrass/definition/subscriptions")
CreateSubscriptionDefinition(args) = greengrass("POST", "/greengrass/definition/subscriptions", args)

"""
    DeleteFunctionDefinition

Deletes a Lambda function definition.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition."
}


Optional Parameters:
{}

"""

DeleteFunctionDefinition(args) = greengrass("DELETE", "/greengrass/definition/functions/{FunctionDefinitionId}", args)
"""
    ResetDeployments

Resets a group's deployments.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "Force": "If true, performs a best-effort only core reset.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

ResetDeployments(args) = greengrass("POST", "/greengrass/groups/{GroupId}/deployments/$reset", args)
"""
    GetGroupCertificateAuthority

Retreives the CA associated with a group. Returns the public key of the CA.

Required Parameters:
{
  "CertificateAuthorityId": "The ID of the certificate authority.",
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{}

"""

GetGroupCertificateAuthority(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", args)
"""
    GetFunctionDefinitionVersion

Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition.",
  "FunctionDefinitionVersionId": "The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
}


Optional Parameters:
{
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""

GetFunctionDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", args)
"""
    CreateCoreDefinitionVersion

Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.

Required Parameters:
{
  "CoreDefinitionId": "The ID of the core definition."
}


Optional Parameters:
{
  "Cores": "A list of cores in the core definition version.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateCoreDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)
"""
    CreateFunctionDefinitionVersion

Creates a version of a Lambda function definition that has already been defined.

Required Parameters:
{
  "FunctionDefinitionId": "The ID of the Lambda function definition."
}


Optional Parameters:
{
  "DefaultConfig": "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.",
  "Functions": "A list of Lambda functions in this function definition version.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateFunctionDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)
"""
    ListDeviceDefinitions

Retrieves a list of device definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListDeviceDefinitions() = greengrass("GET", "/greengrass/definition/devices")
ListDeviceDefinitions(args) = greengrass("GET", "/greengrass/definition/devices", args)

"""
    CreateDeviceDefinitionVersion

Creates a version of a device definition that has already been defined.

Required Parameters:
{
  "DeviceDefinitionId": "The ID of the device definition."
}


Optional Parameters:
{
  "Devices": "A list of devices in the definition version.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateDeviceDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)
"""
    ListFunctionDefinitions

Retrieves a list of Lambda function definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListFunctionDefinitions() = greengrass("GET", "/greengrass/definition/functions")
ListFunctionDefinitions(args) = greengrass("GET", "/greengrass/definition/functions", args)

"""
    ListConnectorDefinitions

Retrieves a list of connector definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListConnectorDefinitions() = greengrass("GET", "/greengrass/definition/connectors")
ListConnectorDefinitions(args) = greengrass("GET", "/greengrass/definition/connectors", args)

"""
    UpdateGroupCertificateConfiguration

Updates the Certificate expiry time for a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "CertificateExpiryInMilliseconds": "The amount of time remaining before the certificate expires, in milliseconds."
}

"""

UpdateGroupCertificateConfiguration(args) = greengrass("PUT", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)
"""
    DeleteResourceDefinition

Deletes a resource definition.

Required Parameters:
{
  "ResourceDefinitionId": "The ID of the resource definition."
}


Optional Parameters:
{}

"""

DeleteResourceDefinition(args) = greengrass("DELETE", "/greengrass/definition/resources/{ResourceDefinitionId}", args)
"""
    GetConnectivityInfo

Retrieves the connectivity information for a core.

Required Parameters:
{
  "ThingName": "The thing name."
}


Optional Parameters:
{}

"""

GetConnectivityInfo(args) = greengrass("GET", "/greengrass/things/{ThingName}/connectivityInfo", args)
"""
    ListBulkDeployments

Returns a list of bulk deployments.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListBulkDeployments() = greengrass("GET", "/greengrass/bulk/deployments")
ListBulkDeployments(args) = greengrass("GET", "/greengrass/bulk/deployments", args)

"""
    ListResourceDefinitions

Retrieves a list of resource definitions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or ''null'' if there are no additional results."
}

"""
ListResourceDefinitions() = greengrass("GET", "/greengrass/definition/resources")
ListResourceDefinitions(args) = greengrass("GET", "/greengrass/definition/resources", args)

"""
    CreateSoftwareUpdateJob

Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.

Required Parameters:
{
  "SoftwareToUpdate": "",
  "UpdateTargetsArchitecture": "",
  "UpdateTargets": "",
  "S3UrlSignerRole": "",
  "UpdateTargetsOperatingSystem": ""
}


Optional Parameters:
{
  "UpdateAgentLogLevel": "",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateSoftwareUpdateJob(args) = greengrass("POST", "/greengrass/updates", args)
"""
    UpdateGroup

Updates a group.

Required Parameters:
{
  "GroupId": "The ID of the Greengrass group."
}


Optional Parameters:
{
  "Name": "The name of the definition."
}

"""

UpdateGroup(args) = greengrass("PUT", "/greengrass/groups/{GroupId}", args)
"""
    CreateFunctionDefinition

Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.

Required Parameters:
{}


Optional Parameters:
{
  "InitialVersion": "Information about the initial version of the function definition.",
  "tags": "Tag(s) to add to the new resource.",
  "Name": "The name of the function definition.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""
CreateFunctionDefinition() = greengrass("POST", "/greengrass/definition/functions")
CreateFunctionDefinition(args) = greengrass("POST", "/greengrass/definition/functions", args)

"""
    CreateConnectorDefinitionVersion

Creates a version of a connector definition which has already been defined.

Required Parameters:
{
  "ConnectorDefinitionId": "The ID of the connector definition."
}


Optional Parameters:
{
  "Connectors": "A list of references to connectors in this version, with their corresponding configuration settings.",
  "AmznClientToken": "A client token used to correlate requests and responses."
}

"""

CreateConnectorDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", args)