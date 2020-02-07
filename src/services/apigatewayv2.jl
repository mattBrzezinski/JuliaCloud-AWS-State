include("../AWSCorePrototypeServices.jl")
using .Services: apigatewayv2

"""
Creates a Stage for an API.
"""
CreateStage(ApiId, StageName) = apigatewayv2("POST", "/v2/apis/$apiId/stages")
CreateStage(ApiId, StageName, args) = apigatewayv2("POST", "/v2/apis/$apiId/stages", args)
CreateStage(a...; b...) = CreateStage(a..., b)

"""
Deletes a Stage.
"""
DeleteStage(StageName, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName")
DeleteStage(StageName, ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName", args)
DeleteStage(a...; b...) = DeleteStage(a..., b)

"""
Creates an Api resource.
"""
CreateApi(ProtocolType, Name) = apigatewayv2("POST", "/v2/apis")
CreateApi(ProtocolType, Name, args) = apigatewayv2("POST", "/v2/apis", args)
CreateApi(a...; b...) = CreateApi(a..., b)

"""
Creates a domain name.
"""
CreateDomainName(DomainName) = apigatewayv2("POST", "/v2/domainnames")
CreateDomainName(DomainName, args) = apigatewayv2("POST", "/v2/domainnames", args)
CreateDomainName(a...; b...) = CreateDomainName(a..., b)

"""
Gets a Model.
"""
GetModel(ModelId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId")
GetModel(ModelId, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId", args)
GetModel(a...; b...) = GetModel(a..., b)

"""
Gets a Stage.
"""
GetStage(StageName, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/stages/$stageName")
GetStage(StageName, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/stages/$stageName", args)
GetStage(a...; b...) = GetStage(a..., b)

"""
Creates a new Tag resource to represent a tag.
"""
TagResource(ResourceArn) = apigatewayv2("POST", "/v2/tags/$resource-arn")
TagResource(ResourceArn, args) = apigatewayv2("POST", "/v2/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Updates a domain name.
"""
UpdateDomainName(DomainName) = apigatewayv2("PATCH", "/v2/domainnames/$domainName")
UpdateDomainName(DomainName, args) = apigatewayv2("PATCH", "/v2/domainnames/$domainName", args)
UpdateDomainName(a...; b...) = UpdateDomainName(a..., b)

"""
Gets an Authorizer.
"""
GetAuthorizer(AuthorizerId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers/$authorizerId")
GetAuthorizer(AuthorizerId, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers/$authorizerId", args)
GetAuthorizer(a...; b...) = GetAuthorizer(a..., b)

"""
Gets the Models for an API.
"""
GetModels(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models")
GetModels(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/models", args)
GetModels(a...; b...) = GetModels(a..., b)

"""
Deletes an IntegrationResponses.
"""
DeleteIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")
DeleteIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId", args)
DeleteIntegrationResponse(a...; b...) = DeleteIntegrationResponse(a..., b)

"""
Updates an Authorizer.
"""
UpdateAuthorizer(AuthorizerId, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/authorizers/$authorizerId")
UpdateAuthorizer(AuthorizerId, ApiId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/authorizers/$authorizerId", args)
UpdateAuthorizer(a...; b...) = UpdateAuthorizer(a..., b)

"""
Creates a Route for an API.
"""
CreateRoute(ApiId, RouteKey) = apigatewayv2("POST", "/v2/apis/$apiId/routes")
CreateRoute(ApiId, RouteKey, args) = apigatewayv2("POST", "/v2/apis/$apiId/routes", args)
CreateRoute(a...; b...) = CreateRoute(a..., b)

"""
Creates an Integration.
"""
CreateIntegration(ApiId, IntegrationType) = apigatewayv2("POST", "/v2/apis/$apiId/integrations")
CreateIntegration(ApiId, IntegrationType, args) = apigatewayv2("POST", "/v2/apis/$apiId/integrations", args)
CreateIntegration(a...; b...) = CreateIntegration(a..., b)

"""
Deletes the RouteSettings for a stage.
"""
DeleteRouteSettings(StageName, RouteKey, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName/routesettings/$routeKey")
DeleteRouteSettings(StageName, RouteKey, ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/stages/$stageName/routesettings/$routeKey", args)
DeleteRouteSettings(a...; b...) = DeleteRouteSettings(a..., b)

"""
Gets the Integrations for an API.
"""
GetIntegrations(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations")
GetIntegrations(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/integrations", args)
GetIntegrations(a...; b...) = GetIntegrations(a..., b)

"""
Gets the Routes for an API.
"""
GetRoutes(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/routes")
GetRoutes(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/routes", args)
GetRoutes(a...; b...) = GetRoutes(a..., b)

"""
The API mapping.
"""
UpdateApiMapping(ApiMappingId, ApiId, DomainName) = apigatewayv2("PATCH", "/v2/domainnames/$domainName/apimappings/$apiMappingId")
UpdateApiMapping(ApiMappingId, ApiId, DomainName, args) = apigatewayv2("PATCH", "/v2/domainnames/$domainName/apimappings/$apiMappingId", args)
UpdateApiMapping(a...; b...) = UpdateApiMapping(a..., b)

"""
Gets a Deployment.
"""
GetDeployment(ApiId, DeploymentId) = apigatewayv2("GET", "/v2/apis/$apiId/deployments/$deploymentId")
GetDeployment(ApiId, DeploymentId, args) = apigatewayv2("GET", "/v2/apis/$apiId/deployments/$deploymentId", args)
GetDeployment(a...; b...) = GetDeployment(a..., b)

"""
Creates a Deployment for an API.
"""
CreateDeployment(ApiId) = apigatewayv2("POST", "/v2/apis/$apiId/deployments")
CreateDeployment(ApiId, args) = apigatewayv2("POST", "/v2/apis/$apiId/deployments", args)
CreateDeployment(a...; b...) = CreateDeployment(a..., b)

"""
Deletes an API mapping.
"""
DeleteApiMapping(ApiMappingId, DomainName) = apigatewayv2("DELETE", "/v2/domainnames/$domainName/apimappings/$apiMappingId")
DeleteApiMapping(ApiMappingId, DomainName, args) = apigatewayv2("DELETE", "/v2/domainnames/$domainName/apimappings/$apiMappingId", args)
DeleteApiMapping(a...; b...) = DeleteApiMapping(a..., b)

"""
Gets the Authorizers for an API.
"""
GetAuthorizers(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers")
GetAuthorizers(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/authorizers", args)
GetAuthorizers(a...; b...) = GetAuthorizers(a..., b)

"""
Deletes a domain name.
"""
DeleteDomainName(DomainName) = apigatewayv2("DELETE", "/v2/domainnames/$domainName")
DeleteDomainName(DomainName, args) = apigatewayv2("DELETE", "/v2/domainnames/$domainName", args)
DeleteDomainName(a...; b...) = DeleteDomainName(a..., b)

"""
Gets the domain names for an AWS account.
"""
GetDomainNames() = apigatewayv2("GET", "/v2/domainnames")
GetDomainNames(, args) = apigatewayv2("GET", "/v2/domainnames", args)
GetDomainNames(a...; b...) = GetDomainNames(a..., b)

"""
Deletes a Tag.
"""
UntagResource(ResourceArn, TagKeys) = apigatewayv2("DELETE", "/v2/tags/$resource-arn")
UntagResource(ResourceArn, TagKeys, args) = apigatewayv2("DELETE", "/v2/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Creates a Model for an API.
"""
CreateModel(ApiId, Schema, Name) = apigatewayv2("POST", "/v2/apis/$apiId/models")
CreateModel(ApiId, Schema, Name, args) = apigatewayv2("POST", "/v2/apis/$apiId/models", args)
CreateModel(a...; b...) = CreateModel(a..., b)

"""
Deletes a RouteResponse.
"""
DeleteRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")
DeleteRouteResponse(RouteResponseId, ApiId, RouteId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId", args)
DeleteRouteResponse(a...; b...) = DeleteRouteResponse(a..., b)

"""
Updates a Stage.
"""
UpdateStage(StageName, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/stages/$stageName")
UpdateStage(StageName, ApiId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/stages/$stageName", args)
UpdateStage(a...; b...) = UpdateStage(a..., b)

"""
Updates an Api resource.
"""
UpdateApi(ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId")
UpdateApi(ApiId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId", args)
UpdateApi(a...; b...) = UpdateApi(a..., b)

"""
Updates a RouteResponse.
"""
UpdateRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")
UpdateRouteResponse(RouteResponseId, ApiId, RouteId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId", args)
UpdateRouteResponse(a...; b...) = UpdateRouteResponse(a..., b)

"""
Updates an IntegrationResponses.
"""
UpdateIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")
UpdateIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId", args)
UpdateIntegrationResponse(a...; b...) = UpdateIntegrationResponse(a..., b)

"""
Deletes a Deployment.
"""
DeleteDeployment(ApiId, DeploymentId) = apigatewayv2("DELETE", "/v2/apis/$apiId/deployments/$deploymentId")
DeleteDeployment(ApiId, DeploymentId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/deployments/$deploymentId", args)
DeleteDeployment(a...; b...) = DeleteDeployment(a..., b)

"""
Imports an API.
"""
ImportApi(Body) = apigatewayv2("PUT", "/v2/apis")
ImportApi(Body, args) = apigatewayv2("PUT", "/v2/apis", args)
ImportApi(a...; b...) = ImportApi(a..., b)

"""
Gets an API mapping.
"""
GetApiMapping(ApiMappingId, DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings/$apiMappingId")
GetApiMapping(ApiMappingId, DomainName, args) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings/$apiMappingId", args)
GetApiMapping(a...; b...) = GetApiMapping(a..., b)

"""
Gets the Deployments for an API.
"""
GetDeployments(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/deployments")
GetDeployments(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/deployments", args)
GetDeployments(a...; b...) = GetDeployments(a..., b)

"""
Gets an IntegrationResponses.
"""
GetIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId")
GetIntegrationResponse(ApiId, IntegrationResponseId, IntegrationId, args) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses/$integrationResponseId", args)
GetIntegrationResponse(a...; b...) = GetIntegrationResponse(a..., b)

"""
Gets the RouteResponses for a Route.
"""
GetRouteResponses(RouteId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses")
GetRouteResponses(RouteId, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses", args)
GetRouteResponses(a...; b...) = GetRouteResponses(a..., b)

"""
Gets a collection of Tag resources.
"""
GetTags(ResourceArn) = apigatewayv2("GET", "/v2/tags/$resource-arn")
GetTags(ResourceArn, args) = apigatewayv2("GET", "/v2/tags/$resource-arn", args)
GetTags(a...; b...) = GetTags(a..., b)

"""
Gets an Integration.
"""
GetIntegration(ApiId, IntegrationId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId")
GetIntegration(ApiId, IntegrationId, args) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId", args)
GetIntegration(a...; b...) = GetIntegration(a..., b)

"""
Gets an Api resource.
"""
GetApi(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId")
GetApi(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId", args)
GetApi(a...; b...) = GetApi(a..., b)

"""
Gets the Stages for an API.
"""
GetStages(ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/stages")
GetStages(ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/stages", args)
GetStages(a...; b...) = GetStages(a..., b)

"""
Creates an Authorizer for an API.
"""
CreateAuthorizer(ApiId, AuthorizerType, IdentitySource, Name) = apigatewayv2("POST", "/v2/apis/$apiId/authorizers")
CreateAuthorizer(ApiId, AuthorizerType, IdentitySource, Name, args) = apigatewayv2("POST", "/v2/apis/$apiId/authorizers", args)
CreateAuthorizer(a...; b...) = CreateAuthorizer(a..., b)

"""
Gets a collection of Api resources.
"""
GetApis() = apigatewayv2("GET", "/v2/apis")
GetApis(, args) = apigatewayv2("GET", "/v2/apis", args)
GetApis(a...; b...) = GetApis(a..., b)

"""
Deletes a Route.
"""
DeleteRoute(ApiId, RouteId) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId")
DeleteRoute(ApiId, RouteId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/routes/$routeId", args)
DeleteRoute(a...; b...) = DeleteRoute(a..., b)

"""
Creates a RouteResponse for a Route.
"""
CreateRouteResponse(ApiId, RouteId, RouteResponseKey) = apigatewayv2("POST", "/v2/apis/$apiId/routes/$routeId/routeresponses")
CreateRouteResponse(ApiId, RouteId, RouteResponseKey, args) = apigatewayv2("POST", "/v2/apis/$apiId/routes/$routeId/routeresponses", args)
CreateRouteResponse(a...; b...) = CreateRouteResponse(a..., b)

"""
Updates a Route.
"""
UpdateRoute(ApiId, RouteId) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId")
UpdateRoute(ApiId, RouteId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/routes/$routeId", args)
UpdateRoute(a...; b...) = UpdateRoute(a..., b)

"""
Gets a model template.
"""
GetModelTemplate(ModelId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId/template")
GetModelTemplate(ModelId, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/models/$modelId/template", args)
GetModelTemplate(a...; b...) = GetModelTemplate(a..., b)

"""
Updates a Deployment.
"""
UpdateDeployment(ApiId, DeploymentId) = apigatewayv2("PATCH", "/v2/apis/$apiId/deployments/$deploymentId")
UpdateDeployment(ApiId, DeploymentId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/deployments/$deploymentId", args)
UpdateDeployment(a...; b...) = UpdateDeployment(a..., b)

"""
Gets the IntegrationResponses for an Integration.
"""
GetIntegrationResponses(IntegrationId, ApiId) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses")
GetIntegrationResponses(IntegrationId, ApiId, args) = apigatewayv2("GET", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses", args)
GetIntegrationResponses(a...; b...) = GetIntegrationResponses(a..., b)

"""
Gets a RouteResponse.
"""
GetRouteResponse(RouteResponseId, ApiId, RouteId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId")
GetRouteResponse(RouteResponseId, ApiId, RouteId, args) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId/routeresponses/$routeResponseId", args)
GetRouteResponse(a...; b...) = GetRouteResponse(a..., b)

"""
Gets API mappings.
"""
GetApiMappings(DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings")
GetApiMappings(DomainName, args) = apigatewayv2("GET", "/v2/domainnames/$domainName/apimappings", args)
GetApiMappings(a...; b...) = GetApiMappings(a..., b)

"""
Gets a Route.
"""
GetRoute(ApiId, RouteId) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId")
GetRoute(ApiId, RouteId, args) = apigatewayv2("GET", "/v2/apis/$apiId/routes/$routeId", args)
GetRoute(a...; b...) = GetRoute(a..., b)

"""
Gets a domain name.
"""
GetDomainName(DomainName) = apigatewayv2("GET", "/v2/domainnames/$domainName")
GetDomainName(DomainName, args) = apigatewayv2("GET", "/v2/domainnames/$domainName", args)
GetDomainName(a...; b...) = GetDomainName(a..., b)

"""
Deletes an Integration.
"""
DeleteIntegration(ApiId, IntegrationId) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId")
DeleteIntegration(ApiId, IntegrationId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/integrations/$integrationId", args)
DeleteIntegration(a...; b...) = DeleteIntegration(a..., b)

"""
Deletes a Model.
"""
DeleteModel(ModelId, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/models/$modelId")
DeleteModel(ModelId, ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/models/$modelId", args)
DeleteModel(a...; b...) = DeleteModel(a..., b)

"""
Creates an API mapping.
"""
CreateApiMapping(DomainName, Stage, ApiId) = apigatewayv2("POST", "/v2/domainnames/$domainName/apimappings")
CreateApiMapping(DomainName, Stage, ApiId, args) = apigatewayv2("POST", "/v2/domainnames/$domainName/apimappings", args)
CreateApiMapping(a...; b...) = CreateApiMapping(a..., b)

"""
Updates a Model.
"""
UpdateModel(ModelId, ApiId) = apigatewayv2("PATCH", "/v2/apis/$apiId/models/$modelId")
UpdateModel(ModelId, ApiId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/models/$modelId", args)
UpdateModel(a...; b...) = UpdateModel(a..., b)

"""
Deletes an Api resource.
"""
DeleteApi(ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId")
DeleteApi(ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId", args)
DeleteApi(a...; b...) = DeleteApi(a..., b)

"""
Updates an Integration.
"""
UpdateIntegration(ApiId, IntegrationId) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId")
UpdateIntegration(ApiId, IntegrationId, args) = apigatewayv2("PATCH", "/v2/apis/$apiId/integrations/$integrationId", args)
UpdateIntegration(a...; b...) = UpdateIntegration(a..., b)

"""
Creates an IntegrationResponses.
"""
CreateIntegrationResponse(ApiId, IntegrationId, IntegrationResponseKey) = apigatewayv2("POST", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses")
CreateIntegrationResponse(ApiId, IntegrationId, IntegrationResponseKey, args) = apigatewayv2("POST", "/v2/apis/$apiId/integrations/$integrationId/integrationresponses", args)
CreateIntegrationResponse(a...; b...) = CreateIntegrationResponse(a..., b)

"""
Puts an Api resource.
"""
ReimportApi(ApiId, Body) = apigatewayv2("PUT", "/v2/apis/$apiId")
ReimportApi(ApiId, Body, args) = apigatewayv2("PUT", "/v2/apis/$apiId", args)
ReimportApi(a...; b...) = ReimportApi(a..., b)

"""
Deletes a CORS configuration.
"""
DeleteCorsConfiguration(ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/cors")
DeleteCorsConfiguration(ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/cors", args)
DeleteCorsConfiguration(a...; b...) = DeleteCorsConfiguration(a..., b)

"""
Deletes an Authorizer.
"""
DeleteAuthorizer(AuthorizerId, ApiId) = apigatewayv2("DELETE", "/v2/apis/$apiId/authorizers/$authorizerId")
DeleteAuthorizer(AuthorizerId, ApiId, args) = apigatewayv2("DELETE", "/v2/apis/$apiId/authorizers/$authorizerId", args)
DeleteAuthorizer(a...; b...) = DeleteAuthorizer(a..., b)
