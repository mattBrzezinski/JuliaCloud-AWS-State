include("../AWSCorePrototypeServices.jl")
using .Services: apigatewayv2

"""
Creates a Stage for an API.

Required Parameters:
ApiId, StageName
"""
CreateStage(args) = apigatewayv2("POST", "/v2/apis/{apiId}/stages", args)

"""
Deletes a Stage.

Required Parameters:
StageName, ApiId
"""
DeleteStage(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/stages/{stageName}", args)

"""
Creates an Api resource.

Required Parameters:
ProtocolType, Name
"""
CreateApi(args) = apigatewayv2("POST", "/v2/apis", args)

"""
Creates a domain name.

Required Parameters:
DomainName
"""
CreateDomainName(args) = apigatewayv2("POST", "/v2/domainnames", args)

"""
Gets a Model.

Required Parameters:
ModelId, ApiId
"""
GetModel(args) = apigatewayv2("GET", "/v2/apis/{apiId}/models/{modelId}", args)

"""
Gets a Stage.

Required Parameters:
StageName, ApiId
"""
GetStage(args) = apigatewayv2("GET", "/v2/apis/{apiId}/stages/{stageName}", args)

"""
Creates a new Tag resource to represent a tag.

Required Parameters:
ResourceArn
"""
TagResource(args) = apigatewayv2("POST", "/v2/tags/{resource-arn}", args)

"""
Updates a domain name.

Required Parameters:
DomainName
"""
UpdateDomainName(args) = apigatewayv2("PATCH", "/v2/domainnames/{domainName}", args)

"""
Gets an Authorizer.

Required Parameters:
AuthorizerId, ApiId
"""
GetAuthorizer(args) = apigatewayv2("GET", "/v2/apis/{apiId}/authorizers/{authorizerId}", args)

"""
Gets the Models for an API.

Required Parameters:
ApiId
"""
GetModels(args) = apigatewayv2("GET", "/v2/apis/{apiId}/models", args)

"""
Deletes an IntegrationResponses.

Required Parameters:
ApiId, IntegrationResponseId, IntegrationId
"""
DeleteIntegrationResponse(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", args)

"""
Updates an Authorizer.

Required Parameters:
AuthorizerId, ApiId
"""
UpdateAuthorizer(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/authorizers/{authorizerId}", args)

"""
Creates a Route for an API.

Required Parameters:
ApiId, RouteKey
"""
CreateRoute(args) = apigatewayv2("POST", "/v2/apis/{apiId}/routes", args)

"""
Creates an Integration.

Required Parameters:
ApiId, IntegrationType
"""
CreateIntegration(args) = apigatewayv2("POST", "/v2/apis/{apiId}/integrations", args)

"""
Deletes the RouteSettings for a stage.

Required Parameters:
StageName, RouteKey, ApiId
"""
DeleteRouteSettings(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}", args)

"""
Gets the Integrations for an API.

Required Parameters:
ApiId
"""
GetIntegrations(args) = apigatewayv2("GET", "/v2/apis/{apiId}/integrations", args)

"""
Gets the Routes for an API.

Required Parameters:
ApiId
"""
GetRoutes(args) = apigatewayv2("GET", "/v2/apis/{apiId}/routes", args)

"""
The API mapping.

Required Parameters:
ApiMappingId, ApiId, DomainName
"""
UpdateApiMapping(args) = apigatewayv2("PATCH", "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", args)

"""
Gets a Deployment.

Required Parameters:
ApiId, DeploymentId
"""
GetDeployment(args) = apigatewayv2("GET", "/v2/apis/{apiId}/deployments/{deploymentId}", args)

"""
Creates a Deployment for an API.

Required Parameters:
ApiId
"""
CreateDeployment(args) = apigatewayv2("POST", "/v2/apis/{apiId}/deployments", args)

"""
Deletes an API mapping.

Required Parameters:
ApiMappingId, DomainName
"""
DeleteApiMapping(args) = apigatewayv2("DELETE", "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", args)

"""
Gets the Authorizers for an API.

Required Parameters:
ApiId
"""
GetAuthorizers(args) = apigatewayv2("GET", "/v2/apis/{apiId}/authorizers", args)

"""
Deletes a domain name.

Required Parameters:
DomainName
"""
DeleteDomainName(args) = apigatewayv2("DELETE", "/v2/domainnames/{domainName}", args)

"""
Gets the domain names for an AWS account.
"""
GetDomainNames() = apigatewayv2("GET", "/v2/domainnames")

"""
Deletes a Tag.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = apigatewayv2("DELETE", "/v2/tags/{resource-arn}", args)

"""
Creates a Model for an API.

Required Parameters:
ApiId, Schema, Name
"""
CreateModel(args) = apigatewayv2("POST", "/v2/apis/{apiId}/models", args)

"""
Deletes a RouteResponse.

Required Parameters:
RouteResponseId, ApiId, RouteId
"""
DeleteRouteResponse(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", args)

"""
Updates a Stage.

Required Parameters:
StageName, ApiId
"""
UpdateStage(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/stages/{stageName}", args)

"""
Updates an Api resource.

Required Parameters:
ApiId
"""
UpdateApi(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}", args)

"""
Updates a RouteResponse.

Required Parameters:
RouteResponseId, ApiId, RouteId
"""
UpdateRouteResponse(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", args)

"""
Updates an IntegrationResponses.

Required Parameters:
ApiId, IntegrationResponseId, IntegrationId
"""
UpdateIntegrationResponse(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", args)

"""
Deletes a Deployment.

Required Parameters:
ApiId, DeploymentId
"""
DeleteDeployment(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/deployments/{deploymentId}", args)

"""
Imports an API.

Required Parameters:
Body
"""
ImportApi(args) = apigatewayv2("PUT", "/v2/apis", args)

"""
Gets an API mapping.

Required Parameters:
ApiMappingId, DomainName
"""
GetApiMapping(args) = apigatewayv2("GET", "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", args)

"""
Gets the Deployments for an API.

Required Parameters:
ApiId
"""
GetDeployments(args) = apigatewayv2("GET", "/v2/apis/{apiId}/deployments", args)

"""
Gets an IntegrationResponses.

Required Parameters:
ApiId, IntegrationResponseId, IntegrationId
"""
GetIntegrationResponse(args) = apigatewayv2("GET", "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", args)

"""
Gets the RouteResponses for a Route.

Required Parameters:
RouteId, ApiId
"""
GetRouteResponses(args) = apigatewayv2("GET", "/v2/apis/{apiId}/routes/{routeId}/routeresponses", args)

"""
Gets a collection of Tag resources.

Required Parameters:
ResourceArn
"""
GetTags(args) = apigatewayv2("GET", "/v2/tags/{resource-arn}", args)

"""
Gets an Integration.

Required Parameters:
ApiId, IntegrationId
"""
GetIntegration(args) = apigatewayv2("GET", "/v2/apis/{apiId}/integrations/{integrationId}", args)

"""
Gets an Api resource.

Required Parameters:
ApiId
"""
GetApi(args) = apigatewayv2("GET", "/v2/apis/{apiId}", args)

"""
Gets the Stages for an API.

Required Parameters:
ApiId
"""
GetStages(args) = apigatewayv2("GET", "/v2/apis/{apiId}/stages", args)

"""
Creates an Authorizer for an API.

Required Parameters:
ApiId, AuthorizerType, IdentitySource, Name
"""
CreateAuthorizer(args) = apigatewayv2("POST", "/v2/apis/{apiId}/authorizers", args)

"""
Gets a collection of Api resources.
"""
GetApis() = apigatewayv2("GET", "/v2/apis")

"""
Deletes a Route.

Required Parameters:
ApiId, RouteId
"""
DeleteRoute(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/routes/{routeId}", args)

"""
Creates a RouteResponse for a Route.

Required Parameters:
ApiId, RouteId, RouteResponseKey
"""
CreateRouteResponse(args) = apigatewayv2("POST", "/v2/apis/{apiId}/routes/{routeId}/routeresponses", args)

"""
Updates a Route.

Required Parameters:
ApiId, RouteId
"""
UpdateRoute(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/routes/{routeId}", args)

"""
Gets a model template.

Required Parameters:
ModelId, ApiId
"""
GetModelTemplate(args) = apigatewayv2("GET", "/v2/apis/{apiId}/models/{modelId}/template", args)

"""
Updates a Deployment.

Required Parameters:
ApiId, DeploymentId
"""
UpdateDeployment(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/deployments/{deploymentId}", args)

"""
Gets the IntegrationResponses for an Integration.

Required Parameters:
IntegrationId, ApiId
"""
GetIntegrationResponses(args) = apigatewayv2("GET", "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", args)

"""
Gets a RouteResponse.

Required Parameters:
RouteResponseId, ApiId, RouteId
"""
GetRouteResponse(args) = apigatewayv2("GET", "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", args)

"""
Gets API mappings.

Required Parameters:
DomainName
"""
GetApiMappings(args) = apigatewayv2("GET", "/v2/domainnames/{domainName}/apimappings", args)

"""
Gets a Route.

Required Parameters:
ApiId, RouteId
"""
GetRoute(args) = apigatewayv2("GET", "/v2/apis/{apiId}/routes/{routeId}", args)

"""
Gets a domain name.

Required Parameters:
DomainName
"""
GetDomainName(args) = apigatewayv2("GET", "/v2/domainnames/{domainName}", args)

"""
Deletes an Integration.

Required Parameters:
ApiId, IntegrationId
"""
DeleteIntegration(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/integrations/{integrationId}", args)

"""
Deletes a Model.

Required Parameters:
ModelId, ApiId
"""
DeleteModel(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/models/{modelId}", args)

"""
Creates an API mapping.

Required Parameters:
DomainName, Stage, ApiId
"""
CreateApiMapping(args) = apigatewayv2("POST", "/v2/domainnames/{domainName}/apimappings", args)

"""
Updates a Model.

Required Parameters:
ModelId, ApiId
"""
UpdateModel(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/models/{modelId}", args)

"""
Deletes an Api resource.

Required Parameters:
ApiId
"""
DeleteApi(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}", args)

"""
Updates an Integration.

Required Parameters:
ApiId, IntegrationId
"""
UpdateIntegration(args) = apigatewayv2("PATCH", "/v2/apis/{apiId}/integrations/{integrationId}", args)

"""
Creates an IntegrationResponses.

Required Parameters:
ApiId, IntegrationId, IntegrationResponseKey
"""
CreateIntegrationResponse(args) = apigatewayv2("POST", "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", args)

"""
Puts an Api resource.

Required Parameters:
ApiId, Body
"""
ReimportApi(args) = apigatewayv2("PUT", "/v2/apis/{apiId}", args)

"""
Deletes a CORS configuration.

Required Parameters:
ApiId
"""
DeleteCorsConfiguration(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/cors", args)

"""
Deletes an Authorizer.

Required Parameters:
AuthorizerId, ApiId
"""
DeleteAuthorizer(args) = apigatewayv2("DELETE", "/v2/apis/{apiId}/authorizers/{authorizerId}", args)
