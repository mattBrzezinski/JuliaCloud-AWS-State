include("../AWSCorePrototypeServices.jl")
using .Services: api_gateway

"""
Creates a new Stage resource that references a pre-existing Deployment for the API. 
"""
CreateStage(restApiId, stageName, deploymentId) = api_gateway("POST", "/restapis/$restapi_id/stages")
CreateStage(restApiId, stageName, deploymentId, args) = api_gateway("POST", "/restapis/$restapi_id/stages", args)
CreateStage(a...; b...) = CreateStage(a..., b)

"""
Lists the RestApi resource in the collection.
"""
GetRestApi(restApiId) = api_gateway("GET", "/restapis/$restapi_id")
GetRestApi(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id", args)
GetRestApi(a...; b...) = GetRestApi(a..., b)

"""
Add a method to an existing Resource resource.
"""
PutMethod(restApiId, resourceId, httpMethod, authorizationType) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")
PutMethod(restApiId, resourceId, httpMethod, authorizationType, args) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method", args)
PutMethod(a...; b...) = PutMethod(a..., b)

"""

"""
UpdateDocumentationPart(restApiId, documentationPartId) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/parts/$part_id")
UpdateDocumentationPart(restApiId, documentationPartId, args) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/parts/$part_id", args)
UpdateDocumentationPart(a...; b...) = UpdateDocumentationPart(a..., b)

"""
Deletes a Stage resource.
"""
DeleteStage(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name")
DeleteStage(restApiId, stageName, args) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name", args)
DeleteStage(a...; b...) = DeleteStage(a..., b)

"""
Import API keys from an external source, such as a CSV-formatted file.
"""
ImportApiKeys(body, format) = api_gateway("POST", "/apikeys?mode=import")
ImportApiKeys(body, format, args) = api_gateway("POST", "/apikeys?mode=import", args)
ImportApiKeys(a...; b...) = ImportApiKeys(a..., b)

"""
Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
"""
UpdateUsage(usagePlanId, keyId) = api_gateway("PATCH", "/usageplans/$usageplanId/keys/$keyId/usage")
UpdateUsage(usagePlanId, keyId, args) = api_gateway("PATCH", "/usageplans/$usageplanId/keys/$keyId/usage", args)
UpdateUsage(a...; b...) = UpdateUsage(a..., b)

"""
Creates a new RestApi resource.
"""
CreateRestApi(name) = api_gateway("POST", "/restapis")
CreateRestApi(name, args) = api_gateway("POST", "/restapis", args)
CreateRestApi(a...; b...) = CreateRestApi(a..., b)

"""
Updates an existing VpcLink of a specified identifier.
"""
UpdateVpcLink(vpcLinkId) = api_gateway("PATCH", "/vpclinks/$vpclink_id")
UpdateVpcLink(vpcLinkId, args) = api_gateway("PATCH", "/vpclinks/$vpclink_id", args)
UpdateVpcLink(a...; b...) = UpdateVpcLink(a..., b)

"""
Creates a new domain name.
"""
CreateDomainName(domainName) = api_gateway("POST", "/domainnames")
CreateDomainName(domainName, args) = api_gateway("POST", "/domainnames", args)
CreateDomainName(a...; b...) = CreateDomainName(a..., b)

"""
Describes an existing model defined for a RestApi resource.
"""
GetModel(restApiId, modelName) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name")
GetModel(restApiId, modelName, args) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name", args)
GetModel(a...; b...) = GetModel(a..., b)

"""
Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
"""
CreateVpcLink(name, targetArns) = api_gateway("POST", "/vpclinks")
CreateVpcLink(name, targetArns, args) = api_gateway("POST", "/vpclinks", args)
CreateVpcLink(a...; b...) = CreateVpcLink(a..., b)

"""
Gets information about a Stage resource.
"""
GetStage(restApiId, stageName) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name")
GetStage(restApiId, stageName, args) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name", args)
GetStage(a...; b...) = GetStage(a..., b)

"""
Updates an existing Method resource.
"""
UpdateMethod(restApiId, resourceId, httpMethod) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")
UpdateMethod(restApiId, resourceId, httpMethod, args) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method", args)
UpdateMethod(a...; b...) = UpdateMethod(a..., b)

"""
Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
"""
GetGatewayResponses(restApiId) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses")
GetGatewayResponses(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses", args)
GetGatewayResponses(a...; b...) = GetGatewayResponses(a..., b)

"""
Gets a usage plan of a given plan identifier.
"""
GetUsagePlan(usagePlanId) = api_gateway("GET", "/usageplans/$usageplanId")
GetUsagePlan(usagePlanId, args) = api_gateway("GET", "/usageplans/$usageplanId", args)
GetUsagePlan(a...; b...) = GetUsagePlan(a..., b)

"""
Describe an existing Authorizer resource. AWS CLI
"""
GetAuthorizer(restApiId, authorizerId) = api_gateway("GET", "/restapis/$restapi_id/authorizers/$authorizer_id")
GetAuthorizer(restApiId, authorizerId, args) = api_gateway("GET", "/restapis/$restapi_id/authorizers/$authorizer_id", args)
GetAuthorizer(a...; b...) = GetAuthorizer(a..., b)

"""

"""
GetDocumentationPart(restApiId, documentationPartId) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts/$part_id")
GetDocumentationPart(restApiId, documentationPartId, args) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts/$part_id", args)
GetDocumentationPart(a...; b...) = GetDocumentationPart(a..., b)

"""
Describes existing Models defined for a RestApi resource.
"""
GetModels(restApiId) = api_gateway("GET", "/restapis/$restapi_id/models")
GetModels(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/models", args)
GetModels(a...; b...) = GetModels(a..., b)

"""
Adds or updates a tag on a given resource.
"""
TagResource(resourceArn, tags) = api_gateway("PUT", "/tags/$resource_arn")
TagResource(resourceArn, tags, args) = api_gateway("PUT", "/tags/$resource_arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Represents a delete integration response.
"""
DeleteIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")
DeleteIntegrationResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code", args)
DeleteIntegrationResponse(a...; b...) = DeleteIntegrationResponse(a..., b)

"""
Gets information about the current Account resource.
"""
GetAccount() = api_gateway("GET", "/account")
GetAccount(, args) = api_gateway("GET", "/account", args)
GetAccount(a...; b...) = GetAccount(a..., b)

"""

"""
GetSdkTypes() = api_gateway("GET", "/sdktypes")
GetSdkTypes(, args) = api_gateway("GET", "/sdktypes", args)
GetSdkTypes(a...; b...) = GetSdkTypes(a..., b)

"""
Changes information about an ApiKey resource.
"""
UpdateApiKey(apiKey) = api_gateway("PATCH", "/apikeys/$api_Key")
UpdateApiKey(apiKey, args) = api_gateway("PATCH", "/apikeys/$api_Key", args)
UpdateApiKey(a...; b...) = UpdateApiKey(a..., b)

"""
Creates a Resource resource.
"""
CreateResource(restApiId, parentId, pathPart) = api_gateway("POST", "/restapis/$restapi_id/resources/$parent_id")
CreateResource(restApiId, parentId, pathPart, args) = api_gateway("POST", "/restapis/$restapi_id/resources/$parent_id", args)
CreateResource(a...; b...) = CreateResource(a..., b)

"""
Represents a collection of BasePathMapping resources.
"""
GetBasePathMappings(domainName) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings")
GetBasePathMappings(domainName, args) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings", args)
GetBasePathMappings(a...; b...) = GetBasePathMappings(a..., b)

"""
Adds a MethodResponse to an existing Method resource.
"""
PutMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")
PutMethodResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code", args)
PutMethodResponse(a...; b...) = PutMethodResponse(a..., b)

"""
Updates an existing Authorizer resource. AWS CLI
"""
UpdateAuthorizer(restApiId, authorizerId) = api_gateway("PATCH", "/restapis/$restapi_id/authorizers/$authorizer_id")
UpdateAuthorizer(restApiId, authorizerId, args) = api_gateway("PATCH", "/restapis/$restapi_id/authorizers/$authorizer_id", args)
UpdateAuthorizer(a...; b...) = UpdateAuthorizer(a..., b)

"""

"""
GetDocumentationVersions(restApiId) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions")
GetDocumentationVersions(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions", args)
GetDocumentationVersions(a...; b...) = GetDocumentationVersions(a..., b)

"""
Changes information about the DomainName resource.
"""
UpdateDomainName(domainName) = api_gateway("PATCH", "/domainnames/$domain_name")
UpdateDomainName(domainName, args) = api_gateway("PATCH", "/domainnames/$domain_name", args)
UpdateDomainName(a...; b...) = UpdateDomainName(a..., b)

"""

"""
GetDocumentationParts(restApiId) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts")
GetDocumentationParts(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/documentation/parts", args)
GetDocumentationParts(a...; b...) = GetDocumentationParts(a..., b)

"""

"""
CreateDocumentationPart(restApiId, location, properties) = api_gateway("POST", "/restapis/$restapi_id/documentation/parts")
CreateDocumentationPart(restApiId, location, properties, args) = api_gateway("POST", "/restapis/$restapi_id/documentation/parts", args)
CreateDocumentationPart(a...; b...) = CreateDocumentationPart(a..., b)

"""
Deletes the ApiKey resource.
"""
DeleteApiKey(apiKey) = api_gateway("DELETE", "/apikeys/$api_Key")
DeleteApiKey(apiKey, args) = api_gateway("DELETE", "/apikeys/$api_Key", args)
DeleteApiKey(a...; b...) = DeleteApiKey(a..., b)

"""
Deletes an existing MethodResponse resource.
"""
DeleteMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")
DeleteMethodResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code", args)
DeleteMethodResponse(a...; b...) = DeleteMethodResponse(a..., b)

"""
Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
"""
PutGatewayResponse(restApiId, responseType) = api_gateway("PUT", "/restapis/$restapi_id/gatewayresponses/$response_type")
PutGatewayResponse(restApiId, responseType, args) = api_gateway("PUT", "/restapis/$restapi_id/gatewayresponses/$response_type", args)
PutGatewayResponse(a...; b...) = PutGatewayResponse(a..., b)

"""
Gets information about a Deployment resource.
"""
GetDeployment(restApiId, deploymentId) = api_gateway("GET", "/restapis/$restapi_id/deployments/$deployment_id")
GetDeployment(restApiId, deploymentId, args) = api_gateway("GET", "/restapis/$restapi_id/deployments/$deployment_id", args)
GetDeployment(a...; b...) = GetDeployment(a..., b)

"""
Creates a Deployment resource, which makes a specified RestApi callable over the internet.
"""
CreateDeployment(restApiId) = api_gateway("POST", "/restapis/$restapi_id/deployments")
CreateDeployment(restApiId, args) = api_gateway("POST", "/restapis/$restapi_id/deployments", args)
CreateDeployment(a...; b...) = CreateDeployment(a..., b)

"""
Updates a usage plan of a given plan Id.
"""
UpdateUsagePlan(usagePlanId) = api_gateway("PATCH", "/usageplans/$usageplanId")
UpdateUsagePlan(usagePlanId, args) = api_gateway("PATCH", "/usageplans/$usageplanId", args)
UpdateUsagePlan(a...; b...) = UpdateUsagePlan(a..., b)

"""
Gets all the usage plans of the caller's account.
"""
GetUsagePlans() = api_gateway("GET", "/usageplans")
GetUsagePlans(, args) = api_gateway("GET", "/usageplans", args)
GetUsagePlans(a...; b...) = GetUsagePlans(a..., b)

"""
Deletes an existing Method resource.
"""
DeleteMethod(restApiId, resourceId, httpMethod) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")
DeleteMethod(restApiId, resourceId, httpMethod, args) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method", args)
DeleteMethod(a...; b...) = DeleteMethod(a..., b)

"""
Deletes a Resource resource.
"""
DeleteResource(restApiId, resourceId) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id")
DeleteResource(restApiId, resourceId, args) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id", args)
DeleteResource(a...; b...) = DeleteResource(a..., b)

"""
Describe an existing Authorizers resource. AWS CLI
"""
GetAuthorizers(restApiId) = api_gateway("GET", "/restapis/$restapi_id/authorizers")
GetAuthorizers(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/authorizers", args)
GetAuthorizers(a...; b...) = GetAuthorizers(a..., b)

"""
Deletes the DomainName resource.
"""
DeleteDomainName(domainName) = api_gateway("DELETE", "/domainnames/$domain_name")
DeleteDomainName(domainName, args) = api_gateway("DELETE", "/domainnames/$domain_name", args)
DeleteDomainName(a...; b...) = DeleteDomainName(a..., b)

"""
Represents a collection of DomainName resources.
"""
GetDomainNames() = api_gateway("GET", "/domainnames")
GetDomainNames(, args) = api_gateway("GET", "/domainnames", args)
GetDomainNames(a...; b...) = GetDomainNames(a..., b)

"""
Changes information about the current Account resource.
"""
UpdateAccount() = api_gateway("PATCH", "/account")
UpdateAccount(, args) = api_gateway("PATCH", "/account", args)
UpdateAccount(a...; b...) = UpdateAccount(a..., b)

"""
Flushes all authorizer cache entries on a stage.
"""
FlushStageAuthorizersCache(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/authorizers")
FlushStageAuthorizersCache(restApiId, stageName, args) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/authorizers", args)
FlushStageAuthorizersCache(a...; b...) = FlushStageAuthorizersCache(a..., b)

"""
Deletes an existing VpcLink of a specified identifier.
"""
DeleteVpcLink(vpcLinkId) = api_gateway("DELETE", "/vpclinks/$vpclink_id")
DeleteVpcLink(vpcLinkId, args) = api_gateway("DELETE", "/vpclinks/$vpclink_id", args)
DeleteVpcLink(a...; b...) = DeleteVpcLink(a..., b)

"""
Removes a tag from a given resource.
"""
UntagResource(resourceArn, tagKeys) = api_gateway("DELETE", "/tags/$resource_arn")
UntagResource(resourceArn, tagKeys, args) = api_gateway("DELETE", "/tags/$resource_arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Adds a new Model resource to an existing RestApi resource.
"""
CreateModel(restApiId, name, contentType) = api_gateway("POST", "/restapis/$restapi_id/models")
CreateModel(restApiId, name, contentType, args) = api_gateway("POST", "/restapis/$restapi_id/models", args)
CreateModel(a...; b...) = CreateModel(a..., b)

"""
Gets a collection of ClientCertificate resources.
"""
GetClientCertificates() = api_gateway("GET", "/clientcertificates")
GetClientCertificates(, args) = api_gateway("GET", "/clientcertificates", args)
GetClientCertificates(a...; b...) = GetClientCertificates(a..., b)

"""
Deletes a RequestValidator of a given RestApi.
"""
DeleteRequestValidator(restApiId, requestValidatorId) = api_gateway("DELETE", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")
DeleteRequestValidator(restApiId, requestValidatorId, args) = api_gateway("DELETE", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id", args)
DeleteRequestValidator(a...; b...) = DeleteRequestValidator(a..., b)

"""
Changes information about the specified API.
"""
UpdateRestApi(restApiId) = api_gateway("PATCH", "/restapis/$restapi_id")
UpdateRestApi(restApiId, args) = api_gateway("PATCH", "/restapis/$restapi_id", args)
UpdateRestApi(a...; b...) = UpdateRestApi(a..., b)

"""
Creates a usage plan key for adding an existing API key to a usage plan.
"""
CreateUsagePlanKey(usagePlanId, keyId, keyType) = api_gateway("POST", "/usageplans/$usageplanId/keys")
CreateUsagePlanKey(usagePlanId, keyId, keyType, args) = api_gateway("POST", "/usageplans/$usageplanId/keys", args)
CreateUsagePlanKey(a...; b...) = CreateUsagePlanKey(a..., b)

"""
A feature of the API Gateway control service for creating a new API from an external API definition file.
"""
ImportRestApi(body) = api_gateway("POST", "/restapis?mode=import")
ImportRestApi(body, args) = api_gateway("POST", "/restapis?mode=import", args)
ImportRestApi(a...; b...) = ImportRestApi(a..., b)

"""
Changes information about a Stage resource.
"""
UpdateStage(restApiId, stageName) = api_gateway("PATCH", "/restapis/$restapi_id/stages/$stage_name")
UpdateStage(restApiId, stageName, args) = api_gateway("PATCH", "/restapis/$restapi_id/stages/$stage_name", args)
UpdateStage(a...; b...) = UpdateStage(a..., b)

"""
Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. 
"""
CreateUsagePlan(name) = api_gateway("POST", "/usageplans")
CreateUsagePlan(name, args) = api_gateway("POST", "/usageplans", args)
CreateUsagePlan(a...; b...) = CreateUsagePlan(a..., b)

"""
Gets a specified VPC link under the caller's account in a region.
"""
GetVpcLink(vpcLinkId) = api_gateway("GET", "/vpclinks/$vpclink_id")
GetVpcLink(vpcLinkId, args) = api_gateway("GET", "/vpclinks/$vpclink_id", args)
GetVpcLink(a...; b...) = GetVpcLink(a..., b)

"""
Exports a deployed version of a RestApi in a specified format.
"""
GetExport(restApiId, stageName, exportType) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/exports/$export_type")
GetExport(restApiId, stageName, exportType, args) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/exports/$export_type", args)
GetExport(a...; b...) = GetExport(a..., b)

"""
Gets the VpcLinks collection under the caller's account in a selected region.
"""
GetVpcLinks() = api_gateway("GET", "/vpclinks")
GetVpcLinks(, args) = api_gateway("GET", "/vpclinks", args)
GetVpcLinks(a...; b...) = GetVpcLinks(a..., b)

"""
Describe an existing Method resource.
"""
GetMethod(restApiId, resourceId, httpMethod) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")
GetMethod(restApiId, resourceId, httpMethod, args) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method", args)
GetMethod(a...; b...) = GetMethod(a..., b)

"""
Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.  Use Lambda Function as Authorizer Use Cognito User Pool as Authorizer 
"""
TestInvokeAuthorizer(restApiId, authorizerId) = api_gateway("POST", "/restapis/$restapi_id/authorizers/$authorizer_id")
TestInvokeAuthorizer(restApiId, authorizerId, args) = api_gateway("POST", "/restapis/$restapi_id/authorizers/$authorizer_id", args)
TestInvokeAuthorizer(a...; b...) = TestInvokeAuthorizer(a..., b)

"""
Represents an update integration response.
"""
UpdateIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")
UpdateIntegrationResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code", args)
UpdateIntegrationResponse(a...; b...) = UpdateIntegrationResponse(a..., b)

"""
Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
"""
DeleteDeployment(restApiId, deploymentId) = api_gateway("DELETE", "/restapis/$restapi_id/deployments/$deployment_id")
DeleteDeployment(restApiId, deploymentId, args) = api_gateway("DELETE", "/restapis/$restapi_id/deployments/$deployment_id", args)
DeleteDeployment(a...; b...) = DeleteDeployment(a..., b)

"""
Lists information about a collection of Resource resources.
"""
GetResources(restApiId) = api_gateway("GET", "/restapis/$restapi_id/resources")
GetResources(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/resources", args)
GetResources(a...; b...) = GetResources(a..., b)

"""
Lists the RestApis resources for your collection.
"""
GetRestApis() = api_gateway("GET", "/restapis")
GetRestApis(, args) = api_gateway("GET", "/restapis", args)
GetRestApis(a...; b...) = GetRestApis(a..., b)

"""

"""
DeleteDocumentationVersion(restApiId, documentationVersion) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/versions/$doc_version")
DeleteDocumentationVersion(restApiId, documentationVersion, args) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/versions/$doc_version", args)
DeleteDocumentationVersion(a...; b...) = DeleteDocumentationVersion(a..., b)

"""
Gets information about a Deployments collection.
"""
GetDeployments(restApiId) = api_gateway("GET", "/restapis/$restapi_id/deployments")
GetDeployments(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/deployments", args)
GetDeployments(a...; b...) = GetDeployments(a..., b)

"""
Gets the Tags collection for a given resource.
"""
GetTags(resourceArn) = api_gateway("GET", "/tags/$resource_arn")
GetTags(resourceArn, args) = api_gateway("GET", "/tags/$resource_arn", args)
GetTags(a...; b...) = GetTags(a..., b)

"""
Represents a get integration response.
"""
GetIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")
GetIntegrationResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code", args)
GetIntegrationResponse(a...; b...) = GetIntegrationResponse(a..., b)

"""
Get the integration settings.
"""
GetIntegration(restApiId, resourceId, httpMethod) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")
GetIntegration(restApiId, resourceId, httpMethod, args) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration", args)
GetIntegration(a...; b...) = GetIntegration(a..., b)

"""
Gets the usage data of a usage plan in a specified time interval.
"""
GetUsage(usagePlanId, startDate, endDate) = api_gateway("GET", "/usageplans/$usageplanId/usage")
GetUsage(usagePlanId, startDate, endDate, args) = api_gateway("GET", "/usageplans/$usageplanId/usage", args)
GetUsage(a...; b...) = GetUsage(a..., b)

"""

"""
GetSdkType(id) = api_gateway("GET", "/sdktypes/$sdktype_id")
GetSdkType(id, args) = api_gateway("GET", "/sdktypes/$sdktype_id", args)
GetSdkType(a...; b...) = GetSdkType(a..., b)

"""
Gets information about the current ClientCertificate resource.
"""
GetClientCertificate(clientCertificateId) = api_gateway("GET", "/clientcertificates/$clientcertificate_id")
GetClientCertificate(clientCertificateId, args) = api_gateway("GET", "/clientcertificates/$clientcertificate_id", args)
GetClientCertificate(a...; b...) = GetClientCertificate(a..., b)

"""
Creates a ReqeustValidator of a given RestApi.
"""
CreateRequestValidator(restApiId) = api_gateway("POST", "/restapis/$restapi_id/requestvalidators")
CreateRequestValidator(restApiId, args) = api_gateway("POST", "/restapis/$restapi_id/requestvalidators", args)
CreateRequestValidator(a...; b...) = CreateRequestValidator(a..., b)

"""
Gets information about one or more Stage resources.
"""
GetStages(restApiId) = api_gateway("GET", "/restapis/$restapi_id/stages")
GetStages(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/stages", args)
GetStages(a...; b...) = GetStages(a..., b)

"""
Gets information about the current ApiKeys resource.
"""
GetApiKeys() = api_gateway("GET", "/apikeys")
GetApiKeys(, args) = api_gateway("GET", "/apikeys", args)
GetApiKeys(a...; b...) = GetApiKeys(a..., b)

"""
Adds a new Authorizer resource to an existing RestApi resource. AWS CLI
"""
CreateAuthorizer(restApiId, name, type) = api_gateway("POST", "/restapis/$restapi_id/authorizers")
CreateAuthorizer(restApiId, name, type, args) = api_gateway("POST", "/restapis/$restapi_id/authorizers", args)
CreateAuthorizer(a...; b...) = CreateAuthorizer(a..., b)

"""
Gets a usage plan key of a given key identifier.
"""
GetUsagePlanKey(usagePlanId, keyId) = api_gateway("GET", "/usageplans/$usageplanId/keys/$keyId")
GetUsagePlanKey(usagePlanId, keyId, args) = api_gateway("GET", "/usageplans/$usageplanId/keys/$keyId", args)
GetUsagePlanKey(a...; b...) = GetUsagePlanKey(a..., b)

"""
Lists information about a resource.
"""
GetResource(restApiId, resourceId) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id")
GetResource(restApiId, resourceId, args) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id", args)
GetResource(a...; b...) = GetResource(a..., b)

"""
Gets a GatewayResponse of a specified response type on the given RestApi.
"""
GetGatewayResponse(restApiId, responseType) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses/$response_type")
GetGatewayResponse(restApiId, responseType, args) = api_gateway("GET", "/restapis/$restapi_id/gatewayresponses/$response_type", args)
GetGatewayResponse(a...; b...) = GetGatewayResponse(a..., b)

"""

"""
DeleteDocumentationPart(restApiId, documentationPartId) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/parts/$part_id")
DeleteDocumentationPart(restApiId, documentationPartId, args) = api_gateway("DELETE", "/restapis/$restapi_id/documentation/parts/$part_id", args)
DeleteDocumentationPart(a...; b...) = DeleteDocumentationPart(a..., b)

"""
Updates an existing MethodResponse resource.
"""
UpdateMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")
UpdateMethodResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code", args)
UpdateMethodResponse(a...; b...) = UpdateMethodResponse(a..., b)

"""
Deletes a usage plan of a given plan Id.
"""
DeleteUsagePlan(usagePlanId) = api_gateway("DELETE", "/usageplans/$usageplanId")
DeleteUsagePlan(usagePlanId, args) = api_gateway("DELETE", "/usageplans/$usageplanId", args)
DeleteUsagePlan(a...; b...) = DeleteUsagePlan(a..., b)

"""
Generates a sample mapping template that can be used to transform a payload into the structure of a model.
"""
GetModelTemplate(restApiId, modelName) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name/default_template")
GetModelTemplate(restApiId, modelName, args) = api_gateway("GET", "/restapis/$restapi_id/models/$model_name/default_template", args)
GetModelTemplate(a...; b...) = GetModelTemplate(a..., b)

"""
Changes information about an ClientCertificate resource.
"""
UpdateClientCertificate(clientCertificateId) = api_gateway("PATCH", "/clientcertificates/$clientcertificate_id")
UpdateClientCertificate(clientCertificateId, args) = api_gateway("PATCH", "/clientcertificates/$clientcertificate_id", args)
UpdateClientCertificate(a...; b...) = UpdateClientCertificate(a..., b)

"""
Changes information about a Deployment resource.
"""
UpdateDeployment(restApiId, deploymentId) = api_gateway("PATCH", "/restapis/$restapi_id/deployments/$deployment_id")
UpdateDeployment(restApiId, deploymentId, args) = api_gateway("PATCH", "/restapis/$restapi_id/deployments/$deployment_id", args)
UpdateDeployment(a...; b...) = UpdateDeployment(a..., b)

"""
Generates a ClientCertificate resource.
"""
GenerateClientCertificate() = api_gateway("POST", "/clientcertificates")
GenerateClientCertificate(, args) = api_gateway("POST", "/clientcertificates", args)
GenerateClientCertificate(a...; b...) = GenerateClientCertificate(a..., b)

"""
Describe a BasePathMapping resource.
"""
GetBasePathMapping(domainName, basePath) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings/$base_path")
GetBasePathMapping(domainName, basePath, args) = api_gateway("GET", "/domainnames/$domain_name/basepathmappings/$base_path", args)
GetBasePathMapping(a...; b...) = GetBasePathMapping(a..., b)

"""
Gets information about the current ApiKey resource.
"""
GetApiKey(apiKey) = api_gateway("GET", "/apikeys/$api_Key")
GetApiKey(apiKey, args) = api_gateway("GET", "/apikeys/$api_Key", args)
GetApiKey(a...; b...) = GetApiKey(a..., b)

"""
Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
"""
DeleteGatewayResponse(restApiId, responseType) = api_gateway("DELETE", "/restapis/$restapi_id/gatewayresponses/$response_type")
DeleteGatewayResponse(restApiId, responseType, args) = api_gateway("DELETE", "/restapis/$restapi_id/gatewayresponses/$response_type", args)
DeleteGatewayResponse(a...; b...) = DeleteGatewayResponse(a..., b)

"""

"""
UpdateDocumentationVersion(restApiId, documentationVersion) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/versions/$doc_version")
UpdateDocumentationVersion(restApiId, documentationVersion, args) = api_gateway("PATCH", "/restapis/$restapi_id/documentation/versions/$doc_version", args)
UpdateDocumentationVersion(a...; b...) = UpdateDocumentationVersion(a..., b)

"""
Deletes the BasePathMapping resource.
"""
DeleteBasePathMapping(domainName, basePath) = api_gateway("DELETE", "/domainnames/$domain_name/basepathmappings/$base_path")
DeleteBasePathMapping(domainName, basePath, args) = api_gateway("DELETE", "/domainnames/$domain_name/basepathmappings/$base_path", args)
DeleteBasePathMapping(a...; b...) = DeleteBasePathMapping(a..., b)

"""
Flushes a stage's cache.
"""
FlushStageCache(restApiId, stageName) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/data")
FlushStageCache(restApiId, stageName, args) = api_gateway("DELETE", "/restapis/$restapi_id/stages/$stage_name/cache/data", args)
FlushStageCache(a...; b...) = FlushStageCache(a..., b)

"""
A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
"""
PutRestApi(restApiId, body) = api_gateway("PUT", "/restapis/$restapi_id")
PutRestApi(restApiId, body, args) = api_gateway("PUT", "/restapis/$restapi_id", args)
PutRestApi(a...; b...) = PutRestApi(a..., b)

"""
Updates a GatewayResponse of a specified response type on the given RestApi.
"""
UpdateGatewayResponse(restApiId, responseType) = api_gateway("PATCH", "/restapis/$restapi_id/gatewayresponses/$response_type")
UpdateGatewayResponse(restApiId, responseType, args) = api_gateway("PATCH", "/restapis/$restapi_id/gatewayresponses/$response_type", args)
UpdateGatewayResponse(a...; b...) = UpdateGatewayResponse(a..., b)

"""
Gets all the usage plan keys representing the API keys added to a specified usage plan.
"""
GetUsagePlanKeys(usagePlanId) = api_gateway("GET", "/usageplans/$usageplanId/keys")
GetUsagePlanKeys(usagePlanId, args) = api_gateway("GET", "/usageplans/$usageplanId/keys", args)
GetUsagePlanKeys(a...; b...) = GetUsagePlanKeys(a..., b)

"""
Create an ApiKey resource.  AWS CLI
"""
CreateApiKey() = api_gateway("POST", "/apikeys")
CreateApiKey(, args) = api_gateway("POST", "/apikeys", args)
CreateApiKey(a...; b...) = CreateApiKey(a..., b)

"""
Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
"""
GetDomainName(domainName) = api_gateway("GET", "/domainnames/$domain_name")
GetDomainName(domainName, args) = api_gateway("GET", "/domainnames/$domain_name", args)
GetDomainName(a...; b...) = GetDomainName(a..., b)

"""
Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.
"""
TestInvokeMethod(restApiId, resourceId, httpMethod) = api_gateway("POST", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method")
TestInvokeMethod(restApiId, resourceId, httpMethod, args) = api_gateway("POST", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method", args)
TestInvokeMethod(a...; b...) = TestInvokeMethod(a..., b)

"""
Deletes a usage plan key and remove the underlying API key from the associated usage plan.
"""
DeleteUsagePlanKey(usagePlanId, keyId) = api_gateway("DELETE", "/usageplans/$usageplanId/keys/$keyId")
DeleteUsagePlanKey(usagePlanId, keyId, args) = api_gateway("DELETE", "/usageplans/$usageplanId/keys/$keyId", args)
DeleteUsagePlanKey(a...; b...) = DeleteUsagePlanKey(a..., b)

"""
Gets a RequestValidator of a given RestApi.
"""
GetRequestValidator(restApiId, requestValidatorId) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")
GetRequestValidator(restApiId, requestValidatorId, args) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id", args)
GetRequestValidator(a...; b...) = GetRequestValidator(a..., b)

"""
Represents a delete integration.
"""
DeleteIntegration(restApiId, resourceId, httpMethod) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")
DeleteIntegration(restApiId, resourceId, httpMethod, args) = api_gateway("DELETE", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration", args)
DeleteIntegration(a...; b...) = DeleteIntegration(a..., b)

"""
Deletes the specified API.
"""
DeleteRestApi(restApiId) = api_gateway("DELETE", "/restapis/$restapi_id")
DeleteRestApi(restApiId, args) = api_gateway("DELETE", "/restapis/$restapi_id", args)
DeleteRestApi(a...; b...) = DeleteRestApi(a..., b)

"""
Sets up a method's integration.
"""
PutIntegration(restApiId, resourceId, httpMethod, type) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")
PutIntegration(restApiId, resourceId, httpMethod, type, args) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration", args)
PutIntegration(a...; b...) = PutIntegration(a..., b)

"""
Deletes a model.
"""
DeleteModel(restApiId, modelName) = api_gateway("DELETE", "/restapis/$restapi_id/models/$model_name")
DeleteModel(restApiId, modelName, args) = api_gateway("DELETE", "/restapis/$restapi_id/models/$model_name", args)
DeleteModel(a...; b...) = DeleteModel(a..., b)

"""
Changes information about a model.
"""
UpdateModel(restApiId, modelName) = api_gateway("PATCH", "/restapis/$restapi_id/models/$model_name")
UpdateModel(restApiId, modelName, args) = api_gateway("PATCH", "/restapis/$restapi_id/models/$model_name", args)
UpdateModel(a...; b...) = UpdateModel(a..., b)

"""
Describes a MethodResponse resource.
"""
GetMethodResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code")
GetMethodResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("GET", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/responses/$status_code", args)
GetMethodResponse(a...; b...) = GetMethodResponse(a..., b)

"""
Generates a client SDK for a RestApi and Stage.
"""
GetSdk(restApiId, stageName, sdkType) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/sdks/$sdk_type")
GetSdk(restApiId, stageName, sdkType, args) = api_gateway("GET", "/restapis/$restapi_id/stages/$stage_name/sdks/$sdk_type", args)
GetSdk(a...; b...) = GetSdk(a..., b)

"""
Changes information about the BasePathMapping resource.
"""
UpdateBasePathMapping(domainName, basePath) = api_gateway("PATCH", "/domainnames/$domain_name/basepathmappings/$base_path")
UpdateBasePathMapping(domainName, basePath, args) = api_gateway("PATCH", "/domainnames/$domain_name/basepathmappings/$base_path", args)
UpdateBasePathMapping(a...; b...) = UpdateBasePathMapping(a..., b)

"""
Changes information about a Resource resource.
"""
UpdateResource(restApiId, resourceId) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id")
UpdateResource(restApiId, resourceId, args) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id", args)
UpdateResource(a...; b...) = UpdateResource(a..., b)

"""
Updates a RequestValidator of a given RestApi.
"""
UpdateRequestValidator(restApiId, requestValidatorId) = api_gateway("PATCH", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id")
UpdateRequestValidator(restApiId, requestValidatorId, args) = api_gateway("PATCH", "/restapis/$restapi_id/requestvalidators/$requestvalidator_id", args)
UpdateRequestValidator(a...; b...) = UpdateRequestValidator(a..., b)

"""
Represents a put integration.
"""
PutIntegrationResponse(restApiId, resourceId, httpMethod, statusCode) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code")
PutIntegrationResponse(restApiId, resourceId, httpMethod, statusCode, args) = api_gateway("PUT", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration/responses/$status_code", args)
PutIntegrationResponse(a...; b...) = PutIntegrationResponse(a..., b)

"""
Gets the RequestValidators collection of a given RestApi.
"""
GetRequestValidators(restApiId) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators")
GetRequestValidators(restApiId, args) = api_gateway("GET", "/restapis/$restapi_id/requestvalidators", args)
GetRequestValidators(a...; b...) = GetRequestValidators(a..., b)

"""

"""
ImportDocumentationParts(restApiId, body) = api_gateway("PUT", "/restapis/$restapi_id/documentation/parts")
ImportDocumentationParts(restApiId, body, args) = api_gateway("PUT", "/restapis/$restapi_id/documentation/parts", args)
ImportDocumentationParts(a...; b...) = ImportDocumentationParts(a..., b)

"""
Represents an update integration.
"""
UpdateIntegration(restApiId, resourceId, httpMethod) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration")
UpdateIntegration(restApiId, resourceId, httpMethod, args) = api_gateway("PATCH", "/restapis/$restapi_id/resources/$resource_id/methods/$http_method/integration", args)
UpdateIntegration(a...; b...) = UpdateIntegration(a..., b)

"""

"""
GetDocumentationVersion(restApiId, documentationVersion) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions/$doc_version")
GetDocumentationVersion(restApiId, documentationVersion, args) = api_gateway("GET", "/restapis/$restapi_id/documentation/versions/$doc_version", args)
GetDocumentationVersion(a...; b...) = GetDocumentationVersion(a..., b)

"""

"""
CreateDocumentationVersion(restApiId, documentationVersion) = api_gateway("POST", "/restapis/$restapi_id/documentation/versions")
CreateDocumentationVersion(restApiId, documentationVersion, args) = api_gateway("POST", "/restapis/$restapi_id/documentation/versions", args)
CreateDocumentationVersion(a...; b...) = CreateDocumentationVersion(a..., b)

"""
Creates a new BasePathMapping resource.
"""
CreateBasePathMapping(domainName, restApiId) = api_gateway("POST", "/domainnames/$domain_name/basepathmappings")
CreateBasePathMapping(domainName, restApiId, args) = api_gateway("POST", "/domainnames/$domain_name/basepathmappings", args)
CreateBasePathMapping(a...; b...) = CreateBasePathMapping(a..., b)

"""
Deletes the ClientCertificate resource.
"""
DeleteClientCertificate(clientCertificateId) = api_gateway("DELETE", "/clientcertificates/$clientcertificate_id")
DeleteClientCertificate(clientCertificateId, args) = api_gateway("DELETE", "/clientcertificates/$clientcertificate_id", args)
DeleteClientCertificate(a...; b...) = DeleteClientCertificate(a..., b)

"""
Deletes an existing Authorizer resource. AWS CLI
"""
DeleteAuthorizer(restApiId, authorizerId) = api_gateway("DELETE", "/restapis/$restapi_id/authorizers/$authorizer_id")
DeleteAuthorizer(restApiId, authorizerId, args) = api_gateway("DELETE", "/restapis/$restapi_id/authorizers/$authorizer_id", args)
DeleteAuthorizer(a...; b...) = DeleteAuthorizer(a..., b)
