include("../AWSCorePrototypeServices.jl")
using .Services: greengrass

"""
Updates a Lambda function definition.
"""
UpdateFunctionDefinition(FunctionDefinitionId) = greengrass("PUT", "/greengrass/definition/functions/$FunctionDefinitionId")
UpdateFunctionDefinition(FunctionDefinitionId, args) = greengrass("PUT", "/greengrass/definition/functions/$FunctionDefinitionId", args)
UpdateFunctionDefinition(a...; b...) = UpdateFunctionDefinition(a..., b)

"""
Deletes a group.
"""
DeleteGroup(GroupId) = greengrass("DELETE", "/greengrass/groups/$GroupId")
DeleteGroup(GroupId, args) = greengrass("DELETE", "/greengrass/groups/$GroupId", args)
DeleteGroup(a...; b...) = DeleteGroup(a..., b)

"""
Retrieves information about a group.
"""
GetGroup(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId")
GetGroup(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId", args)
GetGroup(a...; b...) = GetGroup(a..., b)

"""
Lists the versions of a subscription definition.
"""
ListSubscriptionDefinitionVersions(SubscriptionDefinitionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions")
ListSubscriptionDefinitionVersions(SubscriptionDefinitionId, args) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions", args)
ListSubscriptionDefinitionVersions(a...; b...) = ListSubscriptionDefinitionVersions(a..., b)

"""
Disassociates the service role from your account. Without a service role, deployments will not work.
"""
DisassociateServiceRoleFromAccount() = greengrass("DELETE", "/greengrass/servicerole")
DisassociateServiceRoleFromAccount(, args) = greengrass("DELETE", "/greengrass/servicerole", args)
DisassociateServiceRoleFromAccount(a...; b...) = DisassociateServiceRoleFromAccount(a..., b)

"""
Retrieves information about a device definition version.
"""
GetDeviceDefinitionVersion(DeviceDefinitionVersionId, DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions/$DeviceDefinitionVersionId")
GetDeviceDefinitionVersion(DeviceDefinitionVersionId, DeviceDefinitionId, args) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions/$DeviceDefinitionVersionId", args)
GetDeviceDefinitionVersion(a...; b...) = GetDeviceDefinitionVersion(a..., b)

"""
Updates a resource definition.
"""
UpdateResourceDefinition(ResourceDefinitionId) = greengrass("PUT", "/greengrass/definition/resources/$ResourceDefinitionId")
UpdateResourceDefinition(ResourceDefinitionId, args) = greengrass("PUT", "/greengrass/definition/resources/$ResourceDefinitionId", args)
UpdateResourceDefinition(a...; b...) = UpdateResourceDefinition(a..., b)

"""
Updates a logger definition.
"""
UpdateLoggerDefinition(LoggerDefinitionId) = greengrass("PUT", "/greengrass/definition/loggers/$LoggerDefinitionId")
UpdateLoggerDefinition(LoggerDefinitionId, args) = greengrass("PUT", "/greengrass/definition/loggers/$LoggerDefinitionId", args)
UpdateLoggerDefinition(a...; b...) = UpdateLoggerDefinition(a..., b)

"""
Deletes a core definition.
"""
DeleteCoreDefinition(CoreDefinitionId) = greengrass("DELETE", "/greengrass/definition/cores/$CoreDefinitionId")
DeleteCoreDefinition(CoreDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/cores/$CoreDefinitionId", args)
DeleteCoreDefinition(a...; b...) = DeleteCoreDefinition(a..., b)

"""
Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
"""
TagResource(ResourceArn) = greengrass("POST", "/tags/$resource-arn")
TagResource(ResourceArn, args) = greengrass("POST", "/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
"""
GetConnectorDefinitionVersion(ConnectorDefinitionId, ConnectorDefinitionVersionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions/$ConnectorDefinitionVersionId")
GetConnectorDefinitionVersion(ConnectorDefinitionId, ConnectorDefinitionVersionId, args) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions/$ConnectorDefinitionVersionId", args)
GetConnectorDefinitionVersion(a...; b...) = GetConnectorDefinitionVersion(a..., b)

"""
Retrieves information about a resource definition, including its creation time and latest version.
"""
GetResourceDefinition(ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId")
GetResourceDefinition(ResourceDefinitionId, args) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId", args)
GetResourceDefinition(a...; b...) = GetResourceDefinition(a..., b)

"""
Lists the versions of a Lambda function definition.
"""
ListFunctionDefinitionVersions(FunctionDefinitionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions")
ListFunctionDefinitionVersions(FunctionDefinitionId, args) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions", args)
ListFunctionDefinitionVersions(a...; b...) = ListFunctionDefinitionVersions(a..., b)

"""
Retrieves information about a subscription definition version.
"""
GetSubscriptionDefinitionVersion(SubscriptionDefinitionId, SubscriptionDefinitionVersionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions/$SubscriptionDefinitionVersionId")
GetSubscriptionDefinitionVersion(SubscriptionDefinitionId, SubscriptionDefinitionVersionId, args) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions/$SubscriptionDefinitionVersionId", args)
GetSubscriptionDefinitionVersion(a...; b...) = GetSubscriptionDefinitionVersion(a..., b)

"""
Returns a history of deployments for the group.
"""
ListDeployments(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/deployments")
ListDeployments(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/deployments", args)
ListDeployments(a...; b...) = ListDeployments(a..., b)

"""
Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
"""
CreateConnectorDefinition() = greengrass("POST", "/greengrass/definition/connectors")
CreateConnectorDefinition(, args) = greengrass("POST", "/greengrass/definition/connectors", args)
CreateConnectorDefinition(a...; b...) = CreateConnectorDefinition(a..., b)

"""
Retrieves information about a logger definition.
"""
GetLoggerDefinition(LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId")
GetLoggerDefinition(LoggerDefinitionId, args) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId", args)
GetLoggerDefinition(a...; b...) = GetLoggerDefinition(a..., b)

"""
Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
"""
CreateDeployment(GroupId, DeploymentType) = greengrass("POST", "/greengrass/groups/$GroupId/deployments")
CreateDeployment(GroupId, DeploymentType, args) = greengrass("POST", "/greengrass/groups/$GroupId/deployments", args)
CreateDeployment(a...; b...) = CreateDeployment(a..., b)

"""
Disassociates the role from a group.
"""
DisassociateRoleFromGroup(GroupId) = greengrass("DELETE", "/greengrass/groups/$GroupId/role")
DisassociateRoleFromGroup(GroupId, args) = greengrass("DELETE", "/greengrass/groups/$GroupId/role", args)
DisassociateRoleFromGroup(a...; b...) = DisassociateRoleFromGroup(a..., b)

"""
Lists the versions of a core definition.
"""
ListCoreDefinitionVersions(CoreDefinitionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions")
ListCoreDefinitionVersions(CoreDefinitionId, args) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions", args)
ListCoreDefinitionVersions(a...; b...) = ListCoreDefinitionVersions(a..., b)

"""
Lists the versions of a resource definition.
"""
ListResourceDefinitionVersions(ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions")
ListResourceDefinitionVersions(ResourceDefinitionId, args) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions", args)
ListResourceDefinitionVersions(a...; b...) = ListResourceDefinitionVersions(a..., b)

"""
Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
"""
StopBulkDeployment(BulkDeploymentId) = greengrass("PUT", "/greengrass/bulk/deployments/$BulkDeploymentId/$stop")
StopBulkDeployment(BulkDeploymentId, args) = greengrass("PUT", "/greengrass/bulk/deployments/$BulkDeploymentId/$stop", args)
StopBulkDeployment(a...; b...) = StopBulkDeployment(a..., b)

"""
Retrieves information about a subscription definition.
"""
GetSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")
GetSubscriptionDefinition(SubscriptionDefinitionId, args) = greengrass("GET", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId", args)
GetSubscriptionDefinition(a...; b...) = GetSubscriptionDefinition(a..., b)

"""
Retrieves a list of subscription definitions.
"""
ListSubscriptionDefinitions() = greengrass("GET", "/greengrass/definition/subscriptions")
ListSubscriptionDefinitions(, args) = greengrass("GET", "/greengrass/definition/subscriptions", args)
ListSubscriptionDefinitions(a...; b...) = ListSubscriptionDefinitions(a..., b)

"""
Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
"""
CreateCoreDefinition() = greengrass("POST", "/greengrass/definition/cores")
CreateCoreDefinition(, args) = greengrass("POST", "/greengrass/definition/cores", args)
CreateCoreDefinition(a...; b...) = CreateCoreDefinition(a..., b)

"""
Retrieves a list of logger definitions.
"""
ListLoggerDefinitions() = greengrass("GET", "/greengrass/definition/loggers")
ListLoggerDefinitions(, args) = greengrass("GET", "/greengrass/definition/loggers", args)
ListLoggerDefinitions(a...; b...) = ListLoggerDefinitions(a..., b)

"""
Remove resource tags from a Greengrass Resource.
"""
UntagResource(TagKeys, ResourceArn) = greengrass("DELETE", "/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = greengrass("DELETE", "/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Retrieves information about a device definition.
"""
GetDeviceDefinition(DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId")
GetDeviceDefinition(DeviceDefinitionId, args) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId", args)
GetDeviceDefinition(a...; b...) = GetDeviceDefinition(a..., b)

"""
Creates a version of a logger definition that has already been defined.
"""
CreateLoggerDefinitionVersion(LoggerDefinitionId) = greengrass("POST", "/greengrass/definition/loggers/$LoggerDefinitionId/versions")
CreateLoggerDefinitionVersion(LoggerDefinitionId, args) = greengrass("POST", "/greengrass/definition/loggers/$LoggerDefinitionId/versions", args)
CreateLoggerDefinitionVersion(a...; b...) = CreateLoggerDefinitionVersion(a..., b)

"""
Lists the versions of a device definition.
"""
ListDeviceDefinitionVersions(DeviceDefinitionId) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions")
ListDeviceDefinitionVersions(DeviceDefinitionId, args) = greengrass("GET", "/greengrass/definition/devices/$DeviceDefinitionId/versions", args)
ListDeviceDefinitionVersions(a...; b...) = ListDeviceDefinitionVersions(a..., b)

"""
Creates a version of a resource definition that has already been defined.
"""
CreateResourceDefinitionVersion(ResourceDefinitionId) = greengrass("POST", "/greengrass/definition/resources/$ResourceDefinitionId/versions")
CreateResourceDefinitionVersion(ResourceDefinitionId, args) = greengrass("POST", "/greengrass/definition/resources/$ResourceDefinitionId/versions", args)
CreateResourceDefinitionVersion(a...; b...) = CreateResourceDefinitionVersion(a..., b)

"""
Retrieves the service role that is attached to your account.
"""
GetServiceRoleForAccount() = greengrass("GET", "/greengrass/servicerole")
GetServiceRoleForAccount(, args) = greengrass("GET", "/greengrass/servicerole", args)
GetServiceRoleForAccount(a...; b...) = GetServiceRoleForAccount(a..., b)

"""
Retrieves information about a logger definition version.
"""
GetLoggerDefinitionVersion(LoggerDefinitionVersionId, LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions/$LoggerDefinitionVersionId")
GetLoggerDefinitionVersion(LoggerDefinitionVersionId, LoggerDefinitionId, args) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions/$LoggerDefinitionVersionId", args)
GetLoggerDefinitionVersion(a...; b...) = GetLoggerDefinitionVersion(a..., b)

"""
Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
"""
CreateGroup() = greengrass("POST", "/greengrass/groups")
CreateGroup(, args) = greengrass("POST", "/greengrass/groups", args)
CreateGroup(a...; b...) = CreateGroup(a..., b)

"""
Deletes a connector definition.
"""
DeleteConnectorDefinition(ConnectorDefinitionId) = greengrass("DELETE", "/greengrass/definition/connectors/$ConnectorDefinitionId")
DeleteConnectorDefinition(ConnectorDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/connectors/$ConnectorDefinitionId", args)
DeleteConnectorDefinition(a...; b...) = DeleteConnectorDefinition(a..., b)

"""
Lists the versions of a logger definition.
"""
ListLoggerDefinitionVersions(LoggerDefinitionId) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions")
ListLoggerDefinitionVersions(LoggerDefinitionId, args) = greengrass("GET", "/greengrass/definition/loggers/$LoggerDefinitionId/versions", args)
ListLoggerDefinitionVersions(a...; b...) = ListLoggerDefinitionVersions(a..., b)

"""
Lists the versions of a group.
"""
ListGroupVersions(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/versions")
ListGroupVersions(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/versions", args)
ListGroupVersions(a...; b...) = ListGroupVersions(a..., b)

"""
Creates a version of a group which has already been defined.
"""
CreateGroupVersion(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/versions")
CreateGroupVersion(GroupId, args) = greengrass("POST", "/greengrass/groups/$GroupId/versions", args)
CreateGroupVersion(a...; b...) = CreateGroupVersion(a..., b)

"""
Retrieves information about a connector definition.
"""
GetConnectorDefinition(ConnectorDefinitionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId")
GetConnectorDefinition(ConnectorDefinitionId, args) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId", args)
GetConnectorDefinition(a...; b...) = GetConnectorDefinition(a..., b)

"""
Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
"""
AssociateServiceRoleToAccount(RoleArn) = greengrass("PUT", "/greengrass/servicerole")
AssociateServiceRoleToAccount(RoleArn, args) = greengrass("PUT", "/greengrass/servicerole", args)
AssociateServiceRoleToAccount(a...; b...) = AssociateServiceRoleToAccount(a..., b)

"""
Retrieves the role associated with a particular group.
"""
GetAssociatedRole(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/role")
GetAssociatedRole(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/role", args)
GetAssociatedRole(a...; b...) = GetAssociatedRole(a..., b)

"""
Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
"""
StartBulkDeployment(ExecutionRoleArn, InputFileUri) = greengrass("POST", "/greengrass/bulk/deployments")
StartBulkDeployment(ExecutionRoleArn, InputFileUri, args) = greengrass("POST", "/greengrass/bulk/deployments", args)
StartBulkDeployment(a...; b...) = StartBulkDeployment(a..., b)

"""
Updates a device definition.
"""
UpdateDeviceDefinition(DeviceDefinitionId) = greengrass("PUT", "/greengrass/definition/devices/$DeviceDefinitionId")
UpdateDeviceDefinition(DeviceDefinitionId, args) = greengrass("PUT", "/greengrass/definition/devices/$DeviceDefinitionId", args)
UpdateDeviceDefinition(a...; b...) = UpdateDeviceDefinition(a..., b)

"""
Retrieves a list of resource tags for a resource arn.
"""
ListTagsForResource(ResourceArn) = greengrass("GET", "/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = greengrass("GET", "/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Retrieves information about a group version.
"""
GetGroupVersion(GroupVersionId, GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/versions/$GroupVersionId")
GetGroupVersion(GroupVersionId, GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/versions/$GroupVersionId", args)
GetGroupVersion(a...; b...) = GetGroupVersion(a..., b)

"""
Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
"""
ListBulkDeploymentDetailedReports(BulkDeploymentId) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/detailed-reports")
ListBulkDeploymentDetailedReports(BulkDeploymentId, args) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/detailed-reports", args)
ListBulkDeploymentDetailedReports(a...; b...) = ListBulkDeploymentDetailedReports(a..., b)

"""
Retrieves information about a core definition version.
"""
GetCoreDefinition(CoreDefinitionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId")
GetCoreDefinition(CoreDefinitionId, args) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId", args)
GetCoreDefinition(a...; b...) = GetCoreDefinition(a..., b)

"""
Retrieves the current CAs for a group.
"""
ListGroupCertificateAuthorities(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities")
ListGroupCertificateAuthorities(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities", args)
ListGroupCertificateAuthorities(a...; b...) = ListGroupCertificateAuthorities(a..., b)

"""
Retrieves the current configuration for the CA used by the group.
"""
GetGroupCertificateConfiguration(GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry")
GetGroupCertificateConfiguration(GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry", args)
GetGroupCertificateConfiguration(a...; b...) = GetGroupCertificateConfiguration(a..., b)

"""
Returns the status of a bulk deployment.
"""
GetBulkDeploymentStatus(BulkDeploymentId) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/status")
GetBulkDeploymentStatus(BulkDeploymentId, args) = greengrass("GET", "/greengrass/bulk/deployments/$BulkDeploymentId/status", args)
GetBulkDeploymentStatus(a...; b...) = GetBulkDeploymentStatus(a..., b)

"""
Deletes a device definition.
"""
DeleteDeviceDefinition(DeviceDefinitionId) = greengrass("DELETE", "/greengrass/definition/devices/$DeviceDefinitionId")
DeleteDeviceDefinition(DeviceDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/devices/$DeviceDefinitionId", args)
DeleteDeviceDefinition(a...; b...) = DeleteDeviceDefinition(a..., b)

"""
Retrieves information about a resource definition version, including which resources are included in the version.
"""
GetResourceDefinitionVersion(ResourceDefinitionVersionId, ResourceDefinitionId) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions/$ResourceDefinitionVersionId")
GetResourceDefinitionVersion(ResourceDefinitionVersionId, ResourceDefinitionId, args) = greengrass("GET", "/greengrass/definition/resources/$ResourceDefinitionId/versions/$ResourceDefinitionVersionId", args)
GetResourceDefinitionVersion(a...; b...) = GetResourceDefinitionVersion(a..., b)

"""
Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
"""
AssociateRoleToGroup(GroupId, RoleArn) = greengrass("PUT", "/greengrass/groups/$GroupId/role")
AssociateRoleToGroup(GroupId, RoleArn, args) = greengrass("PUT", "/greengrass/groups/$GroupId/role", args)
AssociateRoleToGroup(a...; b...) = AssociateRoleToGroup(a..., b)

"""
Updates a subscription definition.
"""
UpdateSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("PUT", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")
UpdateSubscriptionDefinition(SubscriptionDefinitionId, args) = greengrass("PUT", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId", args)
UpdateSubscriptionDefinition(a...; b...) = UpdateSubscriptionDefinition(a..., b)

"""
Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
"""
ListConnectorDefinitionVersions(ConnectorDefinitionId) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions")
ListConnectorDefinitionVersions(ConnectorDefinitionId, args) = greengrass("GET", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions", args)
ListConnectorDefinitionVersions(a...; b...) = ListConnectorDefinitionVersions(a..., b)

"""
Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
"""
CreateResourceDefinition() = greengrass("POST", "/greengrass/definition/resources")
CreateResourceDefinition(, args) = greengrass("POST", "/greengrass/definition/resources", args)
CreateResourceDefinition(a...; b...) = CreateResourceDefinition(a..., b)

"""
Deletes a logger definition.
"""
DeleteLoggerDefinition(LoggerDefinitionId) = greengrass("DELETE", "/greengrass/definition/loggers/$LoggerDefinitionId")
DeleteLoggerDefinition(LoggerDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/loggers/$LoggerDefinitionId", args)
DeleteLoggerDefinition(a...; b...) = DeleteLoggerDefinition(a..., b)

"""
Creates a version of a subscription definition which has already been defined.
"""
CreateSubscriptionDefinitionVersion(SubscriptionDefinitionId) = greengrass("POST", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions")
CreateSubscriptionDefinitionVersion(SubscriptionDefinitionId, args) = greengrass("POST", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId/versions", args)
CreateSubscriptionDefinitionVersion(a...; b...) = CreateSubscriptionDefinitionVersion(a..., b)

"""
Deletes a subscription definition.
"""
DeleteSubscriptionDefinition(SubscriptionDefinitionId) = greengrass("DELETE", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId")
DeleteSubscriptionDefinition(SubscriptionDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/subscriptions/$SubscriptionDefinitionId", args)
DeleteSubscriptionDefinition(a...; b...) = DeleteSubscriptionDefinition(a..., b)

"""
Retrieves information about a Lambda function definition, including its creation time and latest version.
"""
GetFunctionDefinition(FunctionDefinitionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId")
GetFunctionDefinition(FunctionDefinitionId, args) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId", args)
GetFunctionDefinition(a...; b...) = GetFunctionDefinition(a..., b)

"""
Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
"""
CreateLoggerDefinition() = greengrass("POST", "/greengrass/definition/loggers")
CreateLoggerDefinition(, args) = greengrass("POST", "/greengrass/definition/loggers", args)
CreateLoggerDefinition(a...; b...) = CreateLoggerDefinition(a..., b)

"""
Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
"""
CreateDeviceDefinition() = greengrass("POST", "/greengrass/definition/devices")
CreateDeviceDefinition(, args) = greengrass("POST", "/greengrass/definition/devices", args)
CreateDeviceDefinition(a...; b...) = CreateDeviceDefinition(a..., b)

"""
Retrieves a list of core definitions.
"""
ListCoreDefinitions() = greengrass("GET", "/greengrass/definition/cores")
ListCoreDefinitions(, args) = greengrass("GET", "/greengrass/definition/cores", args)
ListCoreDefinitions(a...; b...) = ListCoreDefinitions(a..., b)

"""
Updates a core definition.
"""
UpdateCoreDefinition(CoreDefinitionId) = greengrass("PUT", "/greengrass/definition/cores/$CoreDefinitionId")
UpdateCoreDefinition(CoreDefinitionId, args) = greengrass("PUT", "/greengrass/definition/cores/$CoreDefinitionId", args)
UpdateCoreDefinition(a...; b...) = UpdateCoreDefinition(a..., b)

"""
Retrieves a list of groups.
"""
ListGroups() = greengrass("GET", "/greengrass/groups")
ListGroups(, args) = greengrass("GET", "/greengrass/groups", args)
ListGroups(a...; b...) = ListGroups(a..., b)

"""
Returns the status of a deployment.
"""
GetDeploymentStatus(GroupId, DeploymentId) = greengrass("GET", "/greengrass/groups/$GroupId/deployments/$DeploymentId/status")
GetDeploymentStatus(GroupId, DeploymentId, args) = greengrass("GET", "/greengrass/groups/$GroupId/deployments/$DeploymentId/status", args)
GetDeploymentStatus(a...; b...) = GetDeploymentStatus(a..., b)

"""
Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
"""
UpdateConnectivityInfo(ThingName) = greengrass("PUT", "/greengrass/things/$ThingName/connectivityInfo")
UpdateConnectivityInfo(ThingName, args) = greengrass("PUT", "/greengrass/things/$ThingName/connectivityInfo", args)
UpdateConnectivityInfo(a...; b...) = UpdateConnectivityInfo(a..., b)

"""
Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
"""
CreateGroupCertificateAuthority(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/certificateauthorities")
CreateGroupCertificateAuthority(GroupId, args) = greengrass("POST", "/greengrass/groups/$GroupId/certificateauthorities", args)
CreateGroupCertificateAuthority(a...; b...) = CreateGroupCertificateAuthority(a..., b)

"""
Retrieves information about a core definition version.
"""
GetCoreDefinitionVersion(CoreDefinitionId, CoreDefinitionVersionId) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions/$CoreDefinitionVersionId")
GetCoreDefinitionVersion(CoreDefinitionId, CoreDefinitionVersionId, args) = greengrass("GET", "/greengrass/definition/cores/$CoreDefinitionId/versions/$CoreDefinitionVersionId", args)
GetCoreDefinitionVersion(a...; b...) = GetCoreDefinitionVersion(a..., b)

"""
Updates a connector definition.
"""
UpdateConnectorDefinition(ConnectorDefinitionId) = greengrass("PUT", "/greengrass/definition/connectors/$ConnectorDefinitionId")
UpdateConnectorDefinition(ConnectorDefinitionId, args) = greengrass("PUT", "/greengrass/definition/connectors/$ConnectorDefinitionId", args)
UpdateConnectorDefinition(a...; b...) = UpdateConnectorDefinition(a..., b)

"""
Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
"""
CreateSubscriptionDefinition() = greengrass("POST", "/greengrass/definition/subscriptions")
CreateSubscriptionDefinition(, args) = greengrass("POST", "/greengrass/definition/subscriptions", args)
CreateSubscriptionDefinition(a...; b...) = CreateSubscriptionDefinition(a..., b)

"""
Deletes a Lambda function definition.
"""
DeleteFunctionDefinition(FunctionDefinitionId) = greengrass("DELETE", "/greengrass/definition/functions/$FunctionDefinitionId")
DeleteFunctionDefinition(FunctionDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/functions/$FunctionDefinitionId", args)
DeleteFunctionDefinition(a...; b...) = DeleteFunctionDefinition(a..., b)

"""
Resets a group's deployments.
"""
ResetDeployments(GroupId) = greengrass("POST", "/greengrass/groups/$GroupId/deployments/$reset")
ResetDeployments(GroupId, args) = greengrass("POST", "/greengrass/groups/$GroupId/deployments/$reset", args)
ResetDeployments(a...; b...) = ResetDeployments(a..., b)

"""
Retreives the CA associated with a group. Returns the public key of the CA.
"""
GetGroupCertificateAuthority(CertificateAuthorityId, GroupId) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/$CertificateAuthorityId")
GetGroupCertificateAuthority(CertificateAuthorityId, GroupId, args) = greengrass("GET", "/greengrass/groups/$GroupId/certificateauthorities/$CertificateAuthorityId", args)
GetGroupCertificateAuthority(a...; b...) = GetGroupCertificateAuthority(a..., b)

"""
Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
"""
GetFunctionDefinitionVersion(FunctionDefinitionId, FunctionDefinitionVersionId) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions/$FunctionDefinitionVersionId")
GetFunctionDefinitionVersion(FunctionDefinitionId, FunctionDefinitionVersionId, args) = greengrass("GET", "/greengrass/definition/functions/$FunctionDefinitionId/versions/$FunctionDefinitionVersionId", args)
GetFunctionDefinitionVersion(a...; b...) = GetFunctionDefinitionVersion(a..., b)

"""
Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
"""
CreateCoreDefinitionVersion(CoreDefinitionId) = greengrass("POST", "/greengrass/definition/cores/$CoreDefinitionId/versions")
CreateCoreDefinitionVersion(CoreDefinitionId, args) = greengrass("POST", "/greengrass/definition/cores/$CoreDefinitionId/versions", args)
CreateCoreDefinitionVersion(a...; b...) = CreateCoreDefinitionVersion(a..., b)

"""
Creates a version of a Lambda function definition that has already been defined.
"""
CreateFunctionDefinitionVersion(FunctionDefinitionId) = greengrass("POST", "/greengrass/definition/functions/$FunctionDefinitionId/versions")
CreateFunctionDefinitionVersion(FunctionDefinitionId, args) = greengrass("POST", "/greengrass/definition/functions/$FunctionDefinitionId/versions", args)
CreateFunctionDefinitionVersion(a...; b...) = CreateFunctionDefinitionVersion(a..., b)

"""
Retrieves a list of device definitions.
"""
ListDeviceDefinitions() = greengrass("GET", "/greengrass/definition/devices")
ListDeviceDefinitions(, args) = greengrass("GET", "/greengrass/definition/devices", args)
ListDeviceDefinitions(a...; b...) = ListDeviceDefinitions(a..., b)

"""
Creates a version of a device definition that has already been defined.
"""
CreateDeviceDefinitionVersion(DeviceDefinitionId) = greengrass("POST", "/greengrass/definition/devices/$DeviceDefinitionId/versions")
CreateDeviceDefinitionVersion(DeviceDefinitionId, args) = greengrass("POST", "/greengrass/definition/devices/$DeviceDefinitionId/versions", args)
CreateDeviceDefinitionVersion(a...; b...) = CreateDeviceDefinitionVersion(a..., b)

"""
Retrieves a list of Lambda function definitions.
"""
ListFunctionDefinitions() = greengrass("GET", "/greengrass/definition/functions")
ListFunctionDefinitions(, args) = greengrass("GET", "/greengrass/definition/functions", args)
ListFunctionDefinitions(a...; b...) = ListFunctionDefinitions(a..., b)

"""
Retrieves a list of connector definitions.
"""
ListConnectorDefinitions() = greengrass("GET", "/greengrass/definition/connectors")
ListConnectorDefinitions(, args) = greengrass("GET", "/greengrass/definition/connectors", args)
ListConnectorDefinitions(a...; b...) = ListConnectorDefinitions(a..., b)

"""
Updates the Certificate expiry time for a group.
"""
UpdateGroupCertificateConfiguration(GroupId) = greengrass("PUT", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry")
UpdateGroupCertificateConfiguration(GroupId, args) = greengrass("PUT", "/greengrass/groups/$GroupId/certificateauthorities/configuration/expiry", args)
UpdateGroupCertificateConfiguration(a...; b...) = UpdateGroupCertificateConfiguration(a..., b)

"""
Deletes a resource definition.
"""
DeleteResourceDefinition(ResourceDefinitionId) = greengrass("DELETE", "/greengrass/definition/resources/$ResourceDefinitionId")
DeleteResourceDefinition(ResourceDefinitionId, args) = greengrass("DELETE", "/greengrass/definition/resources/$ResourceDefinitionId", args)
DeleteResourceDefinition(a...; b...) = DeleteResourceDefinition(a..., b)

"""
Retrieves the connectivity information for a core.
"""
GetConnectivityInfo(ThingName) = greengrass("GET", "/greengrass/things/$ThingName/connectivityInfo")
GetConnectivityInfo(ThingName, args) = greengrass("GET", "/greengrass/things/$ThingName/connectivityInfo", args)
GetConnectivityInfo(a...; b...) = GetConnectivityInfo(a..., b)

"""
Returns a list of bulk deployments.
"""
ListBulkDeployments() = greengrass("GET", "/greengrass/bulk/deployments")
ListBulkDeployments(, args) = greengrass("GET", "/greengrass/bulk/deployments", args)
ListBulkDeployments(a...; b...) = ListBulkDeployments(a..., b)

"""
Retrieves a list of resource definitions.
"""
ListResourceDefinitions() = greengrass("GET", "/greengrass/definition/resources")
ListResourceDefinitions(, args) = greengrass("GET", "/greengrass/definition/resources", args)
ListResourceDefinitions(a...; b...) = ListResourceDefinitions(a..., b)

"""
Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
"""
CreateSoftwareUpdateJob(S3UrlSignerRole, UpdateTargetsArchitecture, SoftwareToUpdate, UpdateTargets, UpdateTargetsOperatingSystem) = greengrass("POST", "/greengrass/updates")
CreateSoftwareUpdateJob(S3UrlSignerRole, UpdateTargetsArchitecture, SoftwareToUpdate, UpdateTargets, UpdateTargetsOperatingSystem, args) = greengrass("POST", "/greengrass/updates", args)
CreateSoftwareUpdateJob(a...; b...) = CreateSoftwareUpdateJob(a..., b)

"""
Updates a group.
"""
UpdateGroup(GroupId) = greengrass("PUT", "/greengrass/groups/$GroupId")
UpdateGroup(GroupId, args) = greengrass("PUT", "/greengrass/groups/$GroupId", args)
UpdateGroup(a...; b...) = UpdateGroup(a..., b)

"""
Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
"""
CreateFunctionDefinition() = greengrass("POST", "/greengrass/definition/functions")
CreateFunctionDefinition(, args) = greengrass("POST", "/greengrass/definition/functions", args)
CreateFunctionDefinition(a...; b...) = CreateFunctionDefinition(a..., b)

"""
Creates a version of a connector definition which has already been defined.
"""
CreateConnectorDefinitionVersion(ConnectorDefinitionId) = greengrass("POST", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions")
CreateConnectorDefinitionVersion(ConnectorDefinitionId, args) = greengrass("POST", "/greengrass/definition/connectors/$ConnectorDefinitionId/versions", args)
CreateConnectorDefinitionVersion(a...; b...) = CreateConnectorDefinitionVersion(a..., b)
