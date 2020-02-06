include("../AWSCorePrototypeServices.jl")
using .Services: greengrass

"""
Updates a Lambda function definition.

Required Parameters:
FunctionDefinitionId
"""
UpdateFunctionDefinition(args) = greengrass("PUT", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

"""
Deletes a group.

Required Parameters:
GroupId
"""
DeleteGroup(args) = greengrass("DELETE", "/greengrass/groups/{GroupId}", args)

"""
Retrieves information about a group.

Required Parameters:
GroupId
"""
GetGroup(args) = greengrass("GET", "/greengrass/groups/{GroupId}", args)

"""
Lists the versions of a subscription definition.

Required Parameters:
SubscriptionDefinitionId
"""
ListSubscriptionDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)

"""
Disassociates the service role from your account. Without a service role, deployments will not work.
"""
DisassociateServiceRoleFromAccount() = greengrass("DELETE", "/greengrass/servicerole")

"""
Retrieves information about a device definition version.

Required Parameters:
DeviceDefinitionVersionId, DeviceDefinitionId
"""
GetDeviceDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", args)

"""
Updates a resource definition.

Required Parameters:
ResourceDefinitionId
"""
UpdateResourceDefinition(args) = greengrass("PUT", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

"""
Updates a logger definition.

Required Parameters:
LoggerDefinitionId
"""
UpdateLoggerDefinition(args) = greengrass("PUT", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

"""
Deletes a core definition.

Required Parameters:
CoreDefinitionId
"""
DeleteCoreDefinition(args) = greengrass("DELETE", "/greengrass/definition/cores/{CoreDefinitionId}", args)

"""
Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.

Required Parameters:
ResourceArn
"""
TagResource(args) = greengrass("POST", "/tags/{resource-arn}", args)

"""
Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.

Required Parameters:
ConnectorDefinitionId, ConnectorDefinitionVersionId
"""
GetConnectorDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}", args)

"""
Retrieves information about a resource definition, including its creation time and latest version.

Required Parameters:
ResourceDefinitionId
"""
GetResourceDefinition(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

"""
Lists the versions of a Lambda function definition.

Required Parameters:
FunctionDefinitionId
"""
ListFunctionDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)

"""
Retrieves information about a subscription definition version.

Required Parameters:
SubscriptionDefinitionId, SubscriptionDefinitionVersionId
"""
GetSubscriptionDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", args)

"""
Returns a history of deployments for the group.

Required Parameters:
GroupId
"""
ListDeployments(args) = greengrass("GET", "/greengrass/groups/{GroupId}/deployments", args)

"""
Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
"""
CreateConnectorDefinition() = greengrass("POST", "/greengrass/definition/connectors")

"""
Retrieves information about a logger definition.

Required Parameters:
LoggerDefinitionId
"""
GetLoggerDefinition(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

"""
Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.

Required Parameters:
GroupId, DeploymentType
"""
CreateDeployment(args) = greengrass("POST", "/greengrass/groups/{GroupId}/deployments", args)

"""
Disassociates the role from a group.

Required Parameters:
GroupId
"""
DisassociateRoleFromGroup(args) = greengrass("DELETE", "/greengrass/groups/{GroupId}/role", args)

"""
Lists the versions of a core definition.

Required Parameters:
CoreDefinitionId
"""
ListCoreDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)

"""
Lists the versions of a resource definition.

Required Parameters:
ResourceDefinitionId
"""
ListResourceDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)

"""
Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.

Required Parameters:
BulkDeploymentId
"""
StopBulkDeployment(args) = greengrass("PUT", "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop", args)

"""
Retrieves information about a subscription definition.

Required Parameters:
SubscriptionDefinitionId
"""
GetSubscriptionDefinition(args) = greengrass("GET", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

"""
Retrieves a list of subscription definitions.
"""
ListSubscriptionDefinitions() = greengrass("GET", "/greengrass/definition/subscriptions")

"""
Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
"""
CreateCoreDefinition() = greengrass("POST", "/greengrass/definition/cores")

"""
Retrieves a list of logger definitions.
"""
ListLoggerDefinitions() = greengrass("GET", "/greengrass/definition/loggers")

"""
Remove resource tags from a Greengrass Resource.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = greengrass("DELETE", "/tags/{resource-arn}", args)

"""
Retrieves information about a device definition.

Required Parameters:
DeviceDefinitionId
"""
GetDeviceDefinition(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

"""
Creates a version of a logger definition that has already been defined.

Required Parameters:
LoggerDefinitionId
"""
CreateLoggerDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)

"""
Lists the versions of a device definition.

Required Parameters:
DeviceDefinitionId
"""
ListDeviceDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)

"""
Creates a version of a resource definition that has already been defined.

Required Parameters:
ResourceDefinitionId
"""
CreateResourceDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/resources/{ResourceDefinitionId}/versions", args)

"""
Retrieves the service role that is attached to your account.
"""
GetServiceRoleForAccount() = greengrass("GET", "/greengrass/servicerole")

"""
Retrieves information about a logger definition version.

Required Parameters:
LoggerDefinitionVersionId, LoggerDefinitionId
"""
GetLoggerDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", args)

"""
Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
"""
CreateGroup() = greengrass("POST", "/greengrass/groups")

"""
Deletes a connector definition.

Required Parameters:
ConnectorDefinitionId
"""
DeleteConnectorDefinition(args) = greengrass("DELETE", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)

"""
Lists the versions of a logger definition.

Required Parameters:
LoggerDefinitionId
"""
ListLoggerDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", args)

"""
Lists the versions of a group.

Required Parameters:
GroupId
"""
ListGroupVersions(args) = greengrass("GET", "/greengrass/groups/{GroupId}/versions", args)

"""
Creates a version of a group which has already been defined.

Required Parameters:
GroupId
"""
CreateGroupVersion(args) = greengrass("POST", "/greengrass/groups/{GroupId}/versions", args)

"""
Retrieves information about a connector definition.

Required Parameters:
ConnectorDefinitionId
"""
GetConnectorDefinition(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)

"""
Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.

Required Parameters:
RoleArn
"""
AssociateServiceRoleToAccount(args) = greengrass("PUT", "/greengrass/servicerole", args)

"""
Retrieves the role associated with a particular group.

Required Parameters:
GroupId
"""
GetAssociatedRole(args) = greengrass("GET", "/greengrass/groups/{GroupId}/role", args)

"""
Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.

Required Parameters:
ExecutionRoleArn, InputFileUri
"""
StartBulkDeployment(args) = greengrass("POST", "/greengrass/bulk/deployments", args)

"""
Updates a device definition.

Required Parameters:
DeviceDefinitionId
"""
UpdateDeviceDefinition(args) = greengrass("PUT", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

"""
Retrieves a list of resource tags for a resource arn.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = greengrass("GET", "/tags/{resource-arn}", args)

"""
Retrieves information about a group version.

Required Parameters:
GroupVersionId, GroupId
"""
GetGroupVersion(args) = greengrass("GET", "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", args)

"""
Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.

Required Parameters:
BulkDeploymentId
"""
ListBulkDeploymentDetailedReports(args) = greengrass("GET", "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports", args)

"""
Retrieves information about a core definition version.

Required Parameters:
CoreDefinitionId
"""
GetCoreDefinition(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}", args)

"""
Retrieves the current CAs for a group.

Required Parameters:
GroupId
"""
ListGroupCertificateAuthorities(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities", args)

"""
Retrieves the current configuration for the CA used by the group.

Required Parameters:
GroupId
"""
GetGroupCertificateConfiguration(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)

"""
Returns the status of a bulk deployment.

Required Parameters:
BulkDeploymentId
"""
GetBulkDeploymentStatus(args) = greengrass("GET", "/greengrass/bulk/deployments/{BulkDeploymentId}/status", args)

"""
Deletes a device definition.

Required Parameters:
DeviceDefinitionId
"""
DeleteDeviceDefinition(args) = greengrass("DELETE", "/greengrass/definition/devices/{DeviceDefinitionId}", args)

"""
Retrieves information about a resource definition version, including which resources are included in the version.

Required Parameters:
ResourceDefinitionVersionId, ResourceDefinitionId
"""
GetResourceDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", args)

"""
Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.

Required Parameters:
GroupId, RoleArn
"""
AssociateRoleToGroup(args) = greengrass("PUT", "/greengrass/groups/{GroupId}/role", args)

"""
Updates a subscription definition.

Required Parameters:
SubscriptionDefinitionId
"""
UpdateSubscriptionDefinition(args) = greengrass("PUT", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

"""
Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.

Required Parameters:
ConnectorDefinitionId
"""
ListConnectorDefinitionVersions(args) = greengrass("GET", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", args)

"""
Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
"""
CreateResourceDefinition() = greengrass("POST", "/greengrass/definition/resources")

"""
Deletes a logger definition.

Required Parameters:
LoggerDefinitionId
"""
DeleteLoggerDefinition(args) = greengrass("DELETE", "/greengrass/definition/loggers/{LoggerDefinitionId}", args)

"""
Creates a version of a subscription definition which has already been defined.

Required Parameters:
SubscriptionDefinitionId
"""
CreateSubscriptionDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", args)

"""
Deletes a subscription definition.

Required Parameters:
SubscriptionDefinitionId
"""
DeleteSubscriptionDefinition(args) = greengrass("DELETE", "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", args)

"""
Retrieves information about a Lambda function definition, including its creation time and latest version.

Required Parameters:
FunctionDefinitionId
"""
GetFunctionDefinition(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

"""
Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
"""
CreateLoggerDefinition() = greengrass("POST", "/greengrass/definition/loggers")

"""
Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
"""
CreateDeviceDefinition() = greengrass("POST", "/greengrass/definition/devices")

"""
Retrieves a list of core definitions.
"""
ListCoreDefinitions() = greengrass("GET", "/greengrass/definition/cores")

"""
Updates a core definition.

Required Parameters:
CoreDefinitionId
"""
UpdateCoreDefinition(args) = greengrass("PUT", "/greengrass/definition/cores/{CoreDefinitionId}", args)

"""
Retrieves a list of groups.
"""
ListGroups() = greengrass("GET", "/greengrass/groups")

"""
Returns the status of a deployment.

Required Parameters:
GroupId, DeploymentId
"""
GetDeploymentStatus(args) = greengrass("GET", "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", args)

"""
Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.

Required Parameters:
ThingName
"""
UpdateConnectivityInfo(args) = greengrass("PUT", "/greengrass/things/{ThingName}/connectivityInfo", args)

"""
Creates a CA for the group. If a CA already exists, it will rotate the existing CA.

Required Parameters:
GroupId
"""
CreateGroupCertificateAuthority(args) = greengrass("POST", "/greengrass/groups/{GroupId}/certificateauthorities", args)

"""
Retrieves information about a core definition version.

Required Parameters:
CoreDefinitionId, CoreDefinitionVersionId
"""
GetCoreDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", args)

"""
Updates a connector definition.

Required Parameters:
ConnectorDefinitionId
"""
UpdateConnectorDefinition(args) = greengrass("PUT", "/greengrass/definition/connectors/{ConnectorDefinitionId}", args)

"""
Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
"""
CreateSubscriptionDefinition() = greengrass("POST", "/greengrass/definition/subscriptions")

"""
Deletes a Lambda function definition.

Required Parameters:
FunctionDefinitionId
"""
DeleteFunctionDefinition(args) = greengrass("DELETE", "/greengrass/definition/functions/{FunctionDefinitionId}", args)

"""
Resets a group's deployments.

Required Parameters:
GroupId
"""
ResetDeployments(args) = greengrass("POST", "/greengrass/groups/{GroupId}/deployments/$reset", args)

"""
Retreives the CA associated with a group. Returns the public key of the CA.

Required Parameters:
CertificateAuthorityId, GroupId
"""
GetGroupCertificateAuthority(args) = greengrass("GET", "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", args)

"""
Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.

Required Parameters:
FunctionDefinitionId, FunctionDefinitionVersionId
"""
GetFunctionDefinitionVersion(args) = greengrass("GET", "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", args)

"""
Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.

Required Parameters:
CoreDefinitionId
"""
CreateCoreDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/cores/{CoreDefinitionId}/versions", args)

"""
Creates a version of a Lambda function definition that has already been defined.

Required Parameters:
FunctionDefinitionId
"""
CreateFunctionDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/functions/{FunctionDefinitionId}/versions", args)

"""
Retrieves a list of device definitions.
"""
ListDeviceDefinitions() = greengrass("GET", "/greengrass/definition/devices")

"""
Creates a version of a device definition that has already been defined.

Required Parameters:
DeviceDefinitionId
"""
CreateDeviceDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/devices/{DeviceDefinitionId}/versions", args)

"""
Retrieves a list of Lambda function definitions.
"""
ListFunctionDefinitions() = greengrass("GET", "/greengrass/definition/functions")

"""
Retrieves a list of connector definitions.
"""
ListConnectorDefinitions() = greengrass("GET", "/greengrass/definition/connectors")

"""
Updates the Certificate expiry time for a group.

Required Parameters:
GroupId
"""
UpdateGroupCertificateConfiguration(args) = greengrass("PUT", "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", args)

"""
Deletes a resource definition.

Required Parameters:
ResourceDefinitionId
"""
DeleteResourceDefinition(args) = greengrass("DELETE", "/greengrass/definition/resources/{ResourceDefinitionId}", args)

"""
Retrieves the connectivity information for a core.

Required Parameters:
ThingName
"""
GetConnectivityInfo(args) = greengrass("GET", "/greengrass/things/{ThingName}/connectivityInfo", args)

"""
Returns a list of bulk deployments.
"""
ListBulkDeployments() = greengrass("GET", "/greengrass/bulk/deployments")

"""
Retrieves a list of resource definitions.
"""
ListResourceDefinitions() = greengrass("GET", "/greengrass/definition/resources")

"""
Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.

Required Parameters:
S3UrlSignerRole, UpdateTargetsArchitecture, SoftwareToUpdate, UpdateTargets, UpdateTargetsOperatingSystem
"""
CreateSoftwareUpdateJob(args) = greengrass("POST", "/greengrass/updates", args)

"""
Updates a group.

Required Parameters:
GroupId
"""
UpdateGroup(args) = greengrass("PUT", "/greengrass/groups/{GroupId}", args)

"""
Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
"""
CreateFunctionDefinition() = greengrass("POST", "/greengrass/definition/functions")

"""
Creates a version of a connector definition which has already been defined.

Required Parameters:
ConnectorDefinitionId
"""
CreateConnectorDefinitionVersion(args) = greengrass("POST", "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions", args)
