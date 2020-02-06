include("../AWSCorePrototypeServices.jl")
using .Services: api_gateway

"""
Creates a new Stage resource that references a pre-existing Deployment for the API. 

Required Parameters:
restApiId, stageName, deploymentId
"""
CreateStage(args) = api_gateway("POST", "/restapis/{restapi_id}/stages", args)

"""
Lists the RestApi resource in the collection.

Required Parameters:
restApiId
"""
GetRestApi(args) = api_gateway("GET", "/restapis/{restapi_id}", args)

"""
Add a method to an existing Resource resource.

Required Parameters:
restApiId, resourceId, httpMethod, authorizationType
"""
PutMethod(args) = api_gateway("PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

"""


Required Parameters:
restApiId, documentationPartId
"""
UpdateDocumentationPart(args) = api_gateway("PATCH", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

"""
Deletes a Stage resource.

Required Parameters:
restApiId, stageName
"""
DeleteStage(args) = api_gateway("DELETE", "/restapis/{restapi_id}/stages/{stage_name}", args)

"""
Import API keys from an external source, such as a CSV-formatted file.

Required Parameters:
body, format
"""
ImportApiKeys(args) = api_gateway("POST", "/apikeys?mode=import", args)

"""
Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.

Required Parameters:
usagePlanId, keyId
"""
UpdateUsage(args) = api_gateway("PATCH", "/usageplans/{usageplanId}/keys/{keyId}/usage", args)

"""
Creates a new RestApi resource.

Required Parameters:
name
"""
CreateRestApi(args) = api_gateway("POST", "/restapis", args)

"""
Updates an existing VpcLink of a specified identifier.

Required Parameters:
vpcLinkId
"""
UpdateVpcLink(args) = api_gateway("PATCH", "/vpclinks/{vpclink_id}", args)

"""
Creates a new domain name.

Required Parameters:
domainName
"""
CreateDomainName(args) = api_gateway("POST", "/domainnames", args)

"""
Describes an existing model defined for a RestApi resource.

Required Parameters:
restApiId, modelName
"""
GetModel(args) = api_gateway("GET", "/restapis/{restapi_id}/models/{model_name}", args)

"""
Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.

Required Parameters:
name, targetArns
"""
CreateVpcLink(args) = api_gateway("POST", "/vpclinks", args)

"""
Gets information about a Stage resource.

Required Parameters:
restApiId, stageName
"""
GetStage(args) = api_gateway("GET", "/restapis/{restapi_id}/stages/{stage_name}", args)

"""
Updates an existing Method resource.

Required Parameters:
restApiId, resourceId, httpMethod
"""
UpdateMethod(args) = api_gateway("PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

"""
Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.

Required Parameters:
restApiId
"""
GetGatewayResponses(args) = api_gateway("GET", "/restapis/{restapi_id}/gatewayresponses", args)

"""
Gets a usage plan of a given plan identifier.

Required Parameters:
usagePlanId
"""
GetUsagePlan(args) = api_gateway("GET", "/usageplans/{usageplanId}", args)

"""
Describe an existing Authorizer resource. AWS CLI

Required Parameters:
restApiId, authorizerId
"""
GetAuthorizer(args) = api_gateway("GET", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

"""


Required Parameters:
restApiId, documentationPartId
"""
GetDocumentationPart(args) = api_gateway("GET", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

"""
Describes existing Models defined for a RestApi resource.

Required Parameters:
restApiId
"""
GetModels(args) = api_gateway("GET", "/restapis/{restapi_id}/models", args)

"""
Adds or updates a tag on a given resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = api_gateway("PUT", "/tags/{resource_arn}", args)

"""
Represents a delete integration response.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
DeleteIntegrationResponse(args) = api_gateway("DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

"""
Gets information about the current Account resource.
"""
GetAccount() = api_gateway("GET", "/account")

"""

"""
GetSdkTypes() = api_gateway("GET", "/sdktypes")

"""
Changes information about an ApiKey resource.

Required Parameters:
apiKey
"""
UpdateApiKey(args) = api_gateway("PATCH", "/apikeys/{api_Key}", args)

"""
Creates a Resource resource.

Required Parameters:
restApiId, parentId, pathPart
"""
CreateResource(args) = api_gateway("POST", "/restapis/{restapi_id}/resources/{parent_id}", args)

"""
Represents a collection of BasePathMapping resources.

Required Parameters:
domainName
"""
GetBasePathMappings(args) = api_gateway("GET", "/domainnames/{domain_name}/basepathmappings", args)

"""
Adds a MethodResponse to an existing Method resource.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
PutMethodResponse(args) = api_gateway("PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

"""
Updates an existing Authorizer resource. AWS CLI

Required Parameters:
restApiId, authorizerId
"""
UpdateAuthorizer(args) = api_gateway("PATCH", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

"""


Required Parameters:
restApiId
"""
GetDocumentationVersions(args) = api_gateway("GET", "/restapis/{restapi_id}/documentation/versions", args)

"""
Changes information about the DomainName resource.

Required Parameters:
domainName
"""
UpdateDomainName(args) = api_gateway("PATCH", "/domainnames/{domain_name}", args)

"""


Required Parameters:
restApiId
"""
GetDocumentationParts(args) = api_gateway("GET", "/restapis/{restapi_id}/documentation/parts", args)

"""


Required Parameters:
restApiId, location, properties
"""
CreateDocumentationPart(args) = api_gateway("POST", "/restapis/{restapi_id}/documentation/parts", args)

"""
Deletes the ApiKey resource.

Required Parameters:
apiKey
"""
DeleteApiKey(args) = api_gateway("DELETE", "/apikeys/{api_Key}", args)

"""
Deletes an existing MethodResponse resource.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
DeleteMethodResponse(args) = api_gateway("DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

"""
Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.

Required Parameters:
restApiId, responseType
"""
PutGatewayResponse(args) = api_gateway("PUT", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

"""
Gets information about a Deployment resource.

Required Parameters:
restApiId, deploymentId
"""
GetDeployment(args) = api_gateway("GET", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

"""
Creates a Deployment resource, which makes a specified RestApi callable over the internet.

Required Parameters:
restApiId
"""
CreateDeployment(args) = api_gateway("POST", "/restapis/{restapi_id}/deployments", args)

"""
Updates a usage plan of a given plan Id.

Required Parameters:
usagePlanId
"""
UpdateUsagePlan(args) = api_gateway("PATCH", "/usageplans/{usageplanId}", args)

"""
Gets all the usage plans of the caller's account.
"""
GetUsagePlans() = api_gateway("GET", "/usageplans")

"""
Deletes an existing Method resource.

Required Parameters:
restApiId, resourceId, httpMethod
"""
DeleteMethod(args) = api_gateway("DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

"""
Deletes a Resource resource.

Required Parameters:
restApiId, resourceId
"""
DeleteResource(args) = api_gateway("DELETE", "/restapis/{restapi_id}/resources/{resource_id}", args)

"""
Describe an existing Authorizers resource. AWS CLI

Required Parameters:
restApiId
"""
GetAuthorizers(args) = api_gateway("GET", "/restapis/{restapi_id}/authorizers", args)

"""
Deletes the DomainName resource.

Required Parameters:
domainName
"""
DeleteDomainName(args) = api_gateway("DELETE", "/domainnames/{domain_name}", args)

"""
Represents a collection of DomainName resources.
"""
GetDomainNames() = api_gateway("GET", "/domainnames")

"""
Changes information about the current Account resource.
"""
UpdateAccount() = api_gateway("PATCH", "/account")

"""
Flushes all authorizer cache entries on a stage.

Required Parameters:
restApiId, stageName
"""
FlushStageAuthorizersCache(args) = api_gateway("DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", args)

"""
Deletes an existing VpcLink of a specified identifier.

Required Parameters:
vpcLinkId
"""
DeleteVpcLink(args) = api_gateway("DELETE", "/vpclinks/{vpclink_id}", args)

"""
Removes a tag from a given resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = api_gateway("DELETE", "/tags/{resource_arn}", args)

"""
Adds a new Model resource to an existing RestApi resource.

Required Parameters:
restApiId, name, contentType
"""
CreateModel(args) = api_gateway("POST", "/restapis/{restapi_id}/models", args)

"""
Gets a collection of ClientCertificate resources.
"""
GetClientCertificates() = api_gateway("GET", "/clientcertificates")

"""
Deletes a RequestValidator of a given RestApi.

Required Parameters:
restApiId, requestValidatorId
"""
DeleteRequestValidator(args) = api_gateway("DELETE", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

"""
Changes information about the specified API.

Required Parameters:
restApiId
"""
UpdateRestApi(args) = api_gateway("PATCH", "/restapis/{restapi_id}", args)

"""
Creates a usage plan key for adding an existing API key to a usage plan.

Required Parameters:
usagePlanId, keyId, keyType
"""
CreateUsagePlanKey(args) = api_gateway("POST", "/usageplans/{usageplanId}/keys", args)

"""
A feature of the API Gateway control service for creating a new API from an external API definition file.

Required Parameters:
body
"""
ImportRestApi(args) = api_gateway("POST", "/restapis?mode=import", args)

"""
Changes information about a Stage resource.

Required Parameters:
restApiId, stageName
"""
UpdateStage(args) = api_gateway("PATCH", "/restapis/{restapi_id}/stages/{stage_name}", args)

"""
Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. 

Required Parameters:
name
"""
CreateUsagePlan(args) = api_gateway("POST", "/usageplans", args)

"""
Gets a specified VPC link under the caller's account in a region.

Required Parameters:
vpcLinkId
"""
GetVpcLink(args) = api_gateway("GET", "/vpclinks/{vpclink_id}", args)

"""
Exports a deployed version of a RestApi in a specified format.

Required Parameters:
restApiId, stageName, exportType
"""
GetExport(args) = api_gateway("GET", "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", args)

"""
Gets the VpcLinks collection under the caller's account in a selected region.
"""
GetVpcLinks() = api_gateway("GET", "/vpclinks")

"""
Describe an existing Method resource.

Required Parameters:
restApiId, resourceId, httpMethod
"""
GetMethod(args) = api_gateway("GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

"""
Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.  Use Lambda Function as Authorizer Use Cognito User Pool as Authorizer 

Required Parameters:
restApiId, authorizerId
"""
TestInvokeAuthorizer(args) = api_gateway("POST", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)

"""
Represents an update integration response.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
UpdateIntegrationResponse(args) = api_gateway("PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

"""
Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.

Required Parameters:
restApiId, deploymentId
"""
DeleteDeployment(args) = api_gateway("DELETE", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

"""
Lists information about a collection of Resource resources.

Required Parameters:
restApiId
"""
GetResources(args) = api_gateway("GET", "/restapis/{restapi_id}/resources", args)

"""
Lists the RestApis resources for your collection.
"""
GetRestApis() = api_gateway("GET", "/restapis")

"""


Required Parameters:
restApiId, documentationVersion
"""
DeleteDocumentationVersion(args) = api_gateway("DELETE", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

"""
Gets information about a Deployments collection.

Required Parameters:
restApiId
"""
GetDeployments(args) = api_gateway("GET", "/restapis/{restapi_id}/deployments", args)

"""
Gets the Tags collection for a given resource.

Required Parameters:
resourceArn
"""
GetTags(args) = api_gateway("GET", "/tags/{resource_arn}", args)

"""
Represents a get integration response.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
GetIntegrationResponse(args) = api_gateway("GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

"""
Get the integration settings.

Required Parameters:
restApiId, resourceId, httpMethod
"""
GetIntegration(args) = api_gateway("GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

"""
Gets the usage data of a usage plan in a specified time interval.

Required Parameters:
usagePlanId, startDate, endDate
"""
GetUsage(args) = api_gateway("GET", "/usageplans/{usageplanId}/usage", args)

"""


Required Parameters:
id
"""
GetSdkType(args) = api_gateway("GET", "/sdktypes/{sdktype_id}", args)

"""
Gets information about the current ClientCertificate resource.

Required Parameters:
clientCertificateId
"""
GetClientCertificate(args) = api_gateway("GET", "/clientcertificates/{clientcertificate_id}", args)

"""
Creates a ReqeustValidator of a given RestApi.

Required Parameters:
restApiId
"""
CreateRequestValidator(args) = api_gateway("POST", "/restapis/{restapi_id}/requestvalidators", args)

"""
Gets information about one or more Stage resources.

Required Parameters:
restApiId
"""
GetStages(args) = api_gateway("GET", "/restapis/{restapi_id}/stages", args)

"""
Gets information about the current ApiKeys resource.
"""
GetApiKeys() = api_gateway("GET", "/apikeys")

"""
Adds a new Authorizer resource to an existing RestApi resource. AWS CLI

Required Parameters:
restApiId, name, type
"""
CreateAuthorizer(args) = api_gateway("POST", "/restapis/{restapi_id}/authorizers", args)

"""
Gets a usage plan key of a given key identifier.

Required Parameters:
usagePlanId, keyId
"""
GetUsagePlanKey(args) = api_gateway("GET", "/usageplans/{usageplanId}/keys/{keyId}", args)

"""
Lists information about a resource.

Required Parameters:
restApiId, resourceId
"""
GetResource(args) = api_gateway("GET", "/restapis/{restapi_id}/resources/{resource_id}", args)

"""
Gets a GatewayResponse of a specified response type on the given RestApi.

Required Parameters:
restApiId, responseType
"""
GetGatewayResponse(args) = api_gateway("GET", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

"""


Required Parameters:
restApiId, documentationPartId
"""
DeleteDocumentationPart(args) = api_gateway("DELETE", "/restapis/{restapi_id}/documentation/parts/{part_id}", args)

"""
Updates an existing MethodResponse resource.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
UpdateMethodResponse(args) = api_gateway("PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

"""
Deletes a usage plan of a given plan Id.

Required Parameters:
usagePlanId
"""
DeleteUsagePlan(args) = api_gateway("DELETE", "/usageplans/{usageplanId}", args)

"""
Generates a sample mapping template that can be used to transform a payload into the structure of a model.

Required Parameters:
restApiId, modelName
"""
GetModelTemplate(args) = api_gateway("GET", "/restapis/{restapi_id}/models/{model_name}/default_template", args)

"""
Changes information about an ClientCertificate resource.

Required Parameters:
clientCertificateId
"""
UpdateClientCertificate(args) = api_gateway("PATCH", "/clientcertificates/{clientcertificate_id}", args)

"""
Changes information about a Deployment resource.

Required Parameters:
restApiId, deploymentId
"""
UpdateDeployment(args) = api_gateway("PATCH", "/restapis/{restapi_id}/deployments/{deployment_id}", args)

"""
Generates a ClientCertificate resource.
"""
GenerateClientCertificate() = api_gateway("POST", "/clientcertificates")

"""
Describe a BasePathMapping resource.

Required Parameters:
domainName, basePath
"""
GetBasePathMapping(args) = api_gateway("GET", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

"""
Gets information about the current ApiKey resource.

Required Parameters:
apiKey
"""
GetApiKey(args) = api_gateway("GET", "/apikeys/{api_Key}", args)

"""
Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.

Required Parameters:
restApiId, responseType
"""
DeleteGatewayResponse(args) = api_gateway("DELETE", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

"""


Required Parameters:
restApiId, documentationVersion
"""
UpdateDocumentationVersion(args) = api_gateway("PATCH", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

"""
Deletes the BasePathMapping resource.

Required Parameters:
domainName, basePath
"""
DeleteBasePathMapping(args) = api_gateway("DELETE", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

"""
Flushes a stage's cache.

Required Parameters:
restApiId, stageName
"""
FlushStageCache(args) = api_gateway("DELETE", "/restapis/{restapi_id}/stages/{stage_name}/cache/data", args)

"""
A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.

Required Parameters:
restApiId, body
"""
PutRestApi(args) = api_gateway("PUT", "/restapis/{restapi_id}", args)

"""
Updates a GatewayResponse of a specified response type on the given RestApi.

Required Parameters:
restApiId, responseType
"""
UpdateGatewayResponse(args) = api_gateway("PATCH", "/restapis/{restapi_id}/gatewayresponses/{response_type}", args)

"""
Gets all the usage plan keys representing the API keys added to a specified usage plan.

Required Parameters:
usagePlanId
"""
GetUsagePlanKeys(args) = api_gateway("GET", "/usageplans/{usageplanId}/keys", args)

"""
Create an ApiKey resource.  AWS CLI
"""
CreateApiKey() = api_gateway("POST", "/apikeys")

"""
Represents a domain name that is contained in a simpler, more intuitive URL that can be called.

Required Parameters:
domainName
"""
GetDomainName(args) = api_gateway("GET", "/domainnames/{domain_name}", args)

"""
Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.

Required Parameters:
restApiId, resourceId, httpMethod
"""
TestInvokeMethod(args) = api_gateway("POST", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", args)

"""
Deletes a usage plan key and remove the underlying API key from the associated usage plan.

Required Parameters:
usagePlanId, keyId
"""
DeleteUsagePlanKey(args) = api_gateway("DELETE", "/usageplans/{usageplanId}/keys/{keyId}", args)

"""
Gets a RequestValidator of a given RestApi.

Required Parameters:
restApiId, requestValidatorId
"""
GetRequestValidator(args) = api_gateway("GET", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

"""
Represents a delete integration.

Required Parameters:
restApiId, resourceId, httpMethod
"""
DeleteIntegration(args) = api_gateway("DELETE", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

"""
Deletes the specified API.

Required Parameters:
restApiId
"""
DeleteRestApi(args) = api_gateway("DELETE", "/restapis/{restapi_id}", args)

"""
Sets up a method's integration.

Required Parameters:
restApiId, resourceId, httpMethod, type
"""
PutIntegration(args) = api_gateway("PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

"""
Deletes a model.

Required Parameters:
restApiId, modelName
"""
DeleteModel(args) = api_gateway("DELETE", "/restapis/{restapi_id}/models/{model_name}", args)

"""
Changes information about a model.

Required Parameters:
restApiId, modelName
"""
UpdateModel(args) = api_gateway("PATCH", "/restapis/{restapi_id}/models/{model_name}", args)

"""
Describes a MethodResponse resource.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
GetMethodResponse(args) = api_gateway("GET", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", args)

"""
Generates a client SDK for a RestApi and Stage.

Required Parameters:
restApiId, stageName, sdkType
"""
GetSdk(args) = api_gateway("GET", "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", args)

"""
Changes information about the BasePathMapping resource.

Required Parameters:
domainName, basePath
"""
UpdateBasePathMapping(args) = api_gateway("PATCH", "/domainnames/{domain_name}/basepathmappings/{base_path}", args)

"""
Changes information about a Resource resource.

Required Parameters:
restApiId, resourceId
"""
UpdateResource(args) = api_gateway("PATCH", "/restapis/{restapi_id}/resources/{resource_id}", args)

"""
Updates a RequestValidator of a given RestApi.

Required Parameters:
restApiId, requestValidatorId
"""
UpdateRequestValidator(args) = api_gateway("PATCH", "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", args)

"""
Represents a put integration.

Required Parameters:
restApiId, resourceId, httpMethod, statusCode
"""
PutIntegrationResponse(args) = api_gateway("PUT", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", args)

"""
Gets the RequestValidators collection of a given RestApi.

Required Parameters:
restApiId
"""
GetRequestValidators(args) = api_gateway("GET", "/restapis/{restapi_id}/requestvalidators", args)

"""


Required Parameters:
restApiId, body
"""
ImportDocumentationParts(args) = api_gateway("PUT", "/restapis/{restapi_id}/documentation/parts", args)

"""
Represents an update integration.

Required Parameters:
restApiId, resourceId, httpMethod
"""
UpdateIntegration(args) = api_gateway("PATCH", "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", args)

"""


Required Parameters:
restApiId, documentationVersion
"""
GetDocumentationVersion(args) = api_gateway("GET", "/restapis/{restapi_id}/documentation/versions/{doc_version}", args)

"""


Required Parameters:
restApiId, documentationVersion
"""
CreateDocumentationVersion(args) = api_gateway("POST", "/restapis/{restapi_id}/documentation/versions", args)

"""
Creates a new BasePathMapping resource.

Required Parameters:
domainName, restApiId
"""
CreateBasePathMapping(args) = api_gateway("POST", "/domainnames/{domain_name}/basepathmappings", args)

"""
Deletes the ClientCertificate resource.

Required Parameters:
clientCertificateId
"""
DeleteClientCertificate(args) = api_gateway("DELETE", "/clientcertificates/{clientcertificate_id}", args)

"""
Deletes an existing Authorizer resource. AWS CLI

Required Parameters:
restApiId, authorizerId
"""
DeleteAuthorizer(args) = api_gateway("DELETE", "/restapis/{restapi_id}/authorizers/{authorizer_id}", args)
