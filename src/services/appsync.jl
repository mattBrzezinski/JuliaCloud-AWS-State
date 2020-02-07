include("../AWSCorePrototypeServices.jl")
using .Services: appsync

"""
Lists the tags for a resource.
"""
ListTagsForResource(resourceArn) = appsync("GET", "/v1/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = appsync("GET", "/v1/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Updates a Function object.
"""
UpdateFunction(apiId, name, functionId, dataSourceName, requestMappingTemplate, functionVersion) = appsync("POST", "/v1/apis/$apiId/functions/$functionId")
UpdateFunction(apiId, name, functionId, dataSourceName, requestMappingTemplate, functionVersion, args) = appsync("POST", "/v1/apis/$apiId/functions/$functionId", args)
UpdateFunction(a...; b...) = UpdateFunction(a..., b)

"""
Get a Function.
"""
GetFunction(apiId, functionId) = appsync("GET", "/v1/apis/$apiId/functions/$functionId")
GetFunction(apiId, functionId, args) = appsync("GET", "/v1/apis/$apiId/functions/$functionId", args)
GetFunction(a...; b...) = GetFunction(a..., b)

"""
Retrieves a GraphqlApi object.
"""
GetGraphqlApi(apiId) = appsync("GET", "/v1/apis/$apiId")
GetGraphqlApi(apiId, args) = appsync("GET", "/v1/apis/$apiId", args)
GetGraphqlApi(a...; b...) = GetGraphqlApi(a..., b)

"""
Deletes a Resolver object.
"""
DeleteResolver(apiId, typeName, fieldName) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")
DeleteResolver(apiId, typeName, fieldName, args) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName", args)
DeleteResolver(a...; b...) = DeleteResolver(a..., b)

"""
Flushes an ApiCache object.
"""
FlushApiCache(apiId) = appsync("DELETE", "/v1/apis/$apiId/FlushCache")
FlushApiCache(apiId, args) = appsync("DELETE", "/v1/apis/$apiId/FlushCache", args)
FlushApiCache(a...; b...) = FlushApiCache(a..., b)

"""
Lists the types for a given API.
"""
ListTypes(apiId, format) = appsync("GET", "/v1/apis/$apiId/types")
ListTypes(apiId, format, args) = appsync("GET", "/v1/apis/$apiId/types", args)
ListTypes(a...; b...) = ListTypes(a..., b)

"""
Deletes a DataSource object.
"""
DeleteDataSource(apiId, name) = appsync("DELETE", "/v1/apis/$apiId/datasources/$name")
DeleteDataSource(apiId, name, args) = appsync("DELETE", "/v1/apis/$apiId/datasources/$name", args)
DeleteDataSource(a...; b...) = DeleteDataSource(a..., b)

"""
Deletes a GraphqlApi object.
"""
DeleteGraphqlApi(apiId) = appsync("DELETE", "/v1/apis/$apiId")
DeleteGraphqlApi(apiId, args) = appsync("DELETE", "/v1/apis/$apiId", args)
DeleteGraphqlApi(a...; b...) = DeleteGraphqlApi(a..., b)

"""
Updates a Resolver object.
"""
UpdateResolver(apiId, typeName, fieldName, requestMappingTemplate) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")
UpdateResolver(apiId, typeName, fieldName, requestMappingTemplate, args) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName", args)
UpdateResolver(a...; b...) = UpdateResolver(a..., b)

"""
Creates a unique key that you can distribute to clients who are executing your API.
"""
CreateApiKey(apiId) = appsync("POST", "/v1/apis/$apiId/apikeys")
CreateApiKey(apiId, args) = appsync("POST", "/v1/apis/$apiId/apikeys", args)
CreateApiKey(a...; b...) = CreateApiKey(a..., b)

"""
Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
"""
CreateFunction(apiId, name, dataSourceName, requestMappingTemplate, functionVersion) = appsync("POST", "/v1/apis/$apiId/functions")
CreateFunction(apiId, name, dataSourceName, requestMappingTemplate, functionVersion, args) = appsync("POST", "/v1/apis/$apiId/functions", args)
CreateFunction(a...; b...) = CreateFunction(a..., b)

"""
Creates a Type object.
"""
CreateType(apiId, definition, format) = appsync("POST", "/v1/apis/$apiId/types")
CreateType(apiId, definition, format, args) = appsync("POST", "/v1/apis/$apiId/types", args)
CreateType(a...; b...) = CreateType(a..., b)

"""
Retrieves a DataSource object.
"""
GetDataSource(apiId, name) = appsync("GET", "/v1/apis/$apiId/datasources/$name")
GetDataSource(apiId, name, args) = appsync("GET", "/v1/apis/$apiId/datasources/$name", args)
GetDataSource(a...; b...) = GetDataSource(a..., b)

"""
Deletes an ApiCache object.
"""
DeleteApiCache(apiId) = appsync("DELETE", "/v1/apis/$apiId/ApiCaches")
DeleteApiCache(apiId, args) = appsync("DELETE", "/v1/apis/$apiId/ApiCaches", args)
DeleteApiCache(a...; b...) = DeleteApiCache(a..., b)

"""
Retrieves a Resolver object.
"""
GetResolver(apiId, typeName, fieldName) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName")
GetResolver(apiId, typeName, fieldName, args) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers/$fieldName", args)
GetResolver(a...; b...) = GetResolver(a..., b)

"""
Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 
"""
ListApiKeys(apiId) = appsync("GET", "/v1/apis/$apiId/apikeys")
ListApiKeys(apiId, args) = appsync("GET", "/v1/apis/$apiId/apikeys", args)
ListApiKeys(a...; b...) = ListApiKeys(a..., b)

"""
Retrieves an ApiCache object.
"""
GetApiCache(apiId) = appsync("GET", "/v1/apis/$apiId/ApiCaches")
GetApiCache(apiId, args) = appsync("GET", "/v1/apis/$apiId/ApiCaches", args)
GetApiCache(a...; b...) = GetApiCache(a..., b)

"""
Lists the resolvers for a given API and type.
"""
ListResolvers(apiId, typeName) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers")
ListResolvers(apiId, typeName, args) = appsync("GET", "/v1/apis/$apiId/types/$typeName/resolvers", args)
ListResolvers(a...; b...) = ListResolvers(a..., b)

"""
Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
"""
StartSchemaCreation(apiId, definition) = appsync("POST", "/v1/apis/$apiId/schemacreation")
StartSchemaCreation(apiId, definition, args) = appsync("POST", "/v1/apis/$apiId/schemacreation", args)
StartSchemaCreation(a...; b...) = StartSchemaCreation(a..., b)

"""
Deletes a Type object.
"""
DeleteType(apiId, typeName) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName")
DeleteType(apiId, typeName, args) = appsync("DELETE", "/v1/apis/$apiId/types/$typeName", args)
DeleteType(a...; b...) = DeleteType(a..., b)

"""
Lists the data sources for a given API.
"""
ListDataSources(apiId) = appsync("GET", "/v1/apis/$apiId/datasources")
ListDataSources(apiId, args) = appsync("GET", "/v1/apis/$apiId/datasources", args)
ListDataSources(a...; b...) = ListDataSources(a..., b)

"""
Tags a resource with user-supplied tags.
"""
TagResource(resourceArn, tags) = appsync("POST", "/v1/tags/$resourceArn")
TagResource(resourceArn, tags, args) = appsync("POST", "/v1/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Untags a resource.
"""
UntagResource(resourceArn, tagKeys) = appsync("DELETE", "/v1/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = appsync("DELETE", "/v1/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Updates an API key.
"""
UpdateApiKey(apiId, id) = appsync("POST", "/v1/apis/$apiId/apikeys/$id")
UpdateApiKey(apiId, id, args) = appsync("POST", "/v1/apis/$apiId/apikeys/$id", args)
UpdateApiKey(a...; b...) = UpdateApiKey(a..., b)

"""
Updates a GraphqlApi object.
"""
UpdateGraphqlApi(apiId, name) = appsync("POST", "/v1/apis/$apiId")
UpdateGraphqlApi(apiId, name, args) = appsync("POST", "/v1/apis/$apiId", args)
UpdateGraphqlApi(a...; b...) = UpdateGraphqlApi(a..., b)

"""
Creates a cache for the GraphQL API.
"""
CreateApiCache(apiId, ttl, apiCachingBehavior, type) = appsync("POST", "/v1/apis/$apiId/ApiCaches")
CreateApiCache(apiId, ttl, apiCachingBehavior, type, args) = appsync("POST", "/v1/apis/$apiId/ApiCaches", args)
CreateApiCache(a...; b...) = CreateApiCache(a..., b)

"""
Retrieves the current status of a schema creation operation.
"""
GetSchemaCreationStatus(apiId) = appsync("GET", "/v1/apis/$apiId/schemacreation")
GetSchemaCreationStatus(apiId, args) = appsync("GET", "/v1/apis/$apiId/schemacreation", args)
GetSchemaCreationStatus(a...; b...) = GetSchemaCreationStatus(a..., b)

"""
Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
"""
CreateResolver(apiId, typeName, fieldName, requestMappingTemplate) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers")
CreateResolver(apiId, typeName, fieldName, requestMappingTemplate, args) = appsync("POST", "/v1/apis/$apiId/types/$typeName/resolvers", args)
CreateResolver(a...; b...) = CreateResolver(a..., b)

"""
Creates a DataSource object.
"""
CreateDataSource(apiId, name, type) = appsync("POST", "/v1/apis/$apiId/datasources")
CreateDataSource(apiId, name, type, args) = appsync("POST", "/v1/apis/$apiId/datasources", args)
CreateDataSource(a...; b...) = CreateDataSource(a..., b)

"""
Retrieves the introspection schema for a GraphQL API.
"""
GetIntrospectionSchema(apiId, format) = appsync("GET", "/v1/apis/$apiId/schema")
GetIntrospectionSchema(apiId, format, args) = appsync("GET", "/v1/apis/$apiId/schema", args)
GetIntrospectionSchema(a...; b...) = GetIntrospectionSchema(a..., b)

"""
List multiple functions.
"""
ListFunctions(apiId) = appsync("GET", "/v1/apis/$apiId/functions")
ListFunctions(apiId, args) = appsync("GET", "/v1/apis/$apiId/functions", args)
ListFunctions(a...; b...) = ListFunctions(a..., b)

"""
Deletes an API key.
"""
DeleteApiKey(apiId, id) = appsync("DELETE", "/v1/apis/$apiId/apikeys/$id")
DeleteApiKey(apiId, id, args) = appsync("DELETE", "/v1/apis/$apiId/apikeys/$id", args)
DeleteApiKey(a...; b...) = DeleteApiKey(a..., b)

"""
Deletes a Function.
"""
DeleteFunction(apiId, functionId) = appsync("DELETE", "/v1/apis/$apiId/functions/$functionId")
DeleteFunction(apiId, functionId, args) = appsync("DELETE", "/v1/apis/$apiId/functions/$functionId", args)
DeleteFunction(a...; b...) = DeleteFunction(a..., b)

"""
List the resolvers that are associated with a specific function.
"""
ListResolversByFunction(apiId, functionId) = appsync("GET", "/v1/apis/$apiId/functions/$functionId/resolvers")
ListResolversByFunction(apiId, functionId, args) = appsync("GET", "/v1/apis/$apiId/functions/$functionId/resolvers", args)
ListResolversByFunction(a...; b...) = ListResolversByFunction(a..., b)

"""
Updates the cache for the GraphQL API.
"""
UpdateApiCache(apiId, ttl, apiCachingBehavior, type) = appsync("POST", "/v1/apis/$apiId/ApiCaches/update")
UpdateApiCache(apiId, ttl, apiCachingBehavior, type, args) = appsync("POST", "/v1/apis/$apiId/ApiCaches/update", args)
UpdateApiCache(a...; b...) = UpdateApiCache(a..., b)

"""
Lists your GraphQL APIs.
"""
ListGraphqlApis() = appsync("GET", "/v1/apis")
ListGraphqlApis(, args) = appsync("GET", "/v1/apis", args)
ListGraphqlApis(a...; b...) = ListGraphqlApis(a..., b)

"""
Retrieves a Type object.
"""
GetType(apiId, typeName, format) = appsync("GET", "/v1/apis/$apiId/types/$typeName")
GetType(apiId, typeName, format, args) = appsync("GET", "/v1/apis/$apiId/types/$typeName", args)
GetType(a...; b...) = GetType(a..., b)

"""
Creates a GraphqlApi object.
"""
CreateGraphqlApi(name, authenticationType) = appsync("POST", "/v1/apis")
CreateGraphqlApi(name, authenticationType, args) = appsync("POST", "/v1/apis", args)
CreateGraphqlApi(a...; b...) = CreateGraphqlApi(a..., b)

"""
Updates a DataSource object.
"""
UpdateDataSource(apiId, name, type) = appsync("POST", "/v1/apis/$apiId/datasources/$name")
UpdateDataSource(apiId, name, type, args) = appsync("POST", "/v1/apis/$apiId/datasources/$name", args)
UpdateDataSource(a...; b...) = UpdateDataSource(a..., b)

"""
Updates a Type object.
"""
UpdateType(apiId, typeName, format) = appsync("POST", "/v1/apis/$apiId/types/$typeName")
UpdateType(apiId, typeName, format, args) = appsync("POST", "/v1/apis/$apiId/types/$typeName", args)
UpdateType(a...; b...) = UpdateType(a..., b)
