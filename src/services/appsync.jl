include("../AWSCorePrototypeServices.jl")
using .Services: appsync

"""
Lists the tags for a resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = appsync("GET", "/v1/tags/{resourceArn}", args)

"""
Updates a Function object.

Required Parameters:
apiId, name, functionId, dataSourceName, requestMappingTemplate, functionVersion
"""
UpdateFunction(args) = appsync("POST", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
Get a Function.

Required Parameters:
apiId, functionId
"""
GetFunction(args) = appsync("GET", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
Retrieves a GraphqlApi object.

Required Parameters:
apiId
"""
GetGraphqlApi(args) = appsync("GET", "/v1/apis/{apiId}", args)

"""
Deletes a Resolver object.

Required Parameters:
apiId, typeName, fieldName
"""
DeleteResolver(args) = appsync("DELETE", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
Flushes an ApiCache object.

Required Parameters:
apiId
"""
FlushApiCache(args) = appsync("DELETE", "/v1/apis/{apiId}/FlushCache", args)

"""
Lists the types for a given API.

Required Parameters:
apiId, format
"""
ListTypes(args) = appsync("GET", "/v1/apis/{apiId}/types", args)

"""
Deletes a DataSource object.

Required Parameters:
apiId, name
"""
DeleteDataSource(args) = appsync("DELETE", "/v1/apis/{apiId}/datasources/{name}", args)

"""
Deletes a GraphqlApi object.

Required Parameters:
apiId
"""
DeleteGraphqlApi(args) = appsync("DELETE", "/v1/apis/{apiId}", args)

"""
Updates a Resolver object.

Required Parameters:
apiId, typeName, fieldName, requestMappingTemplate
"""
UpdateResolver(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
Creates a unique key that you can distribute to clients who are executing your API.

Required Parameters:
apiId
"""
CreateApiKey(args) = appsync("POST", "/v1/apis/{apiId}/apikeys", args)

"""
Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.

Required Parameters:
apiId, name, dataSourceName, requestMappingTemplate, functionVersion
"""
CreateFunction(args) = appsync("POST", "/v1/apis/{apiId}/functions", args)

"""
Creates a Type object.

Required Parameters:
apiId, definition, format
"""
CreateType(args) = appsync("POST", "/v1/apis/{apiId}/types", args)

"""
Retrieves a DataSource object.

Required Parameters:
apiId, name
"""
GetDataSource(args) = appsync("GET", "/v1/apis/{apiId}/datasources/{name}", args)

"""
Deletes an ApiCache object.

Required Parameters:
apiId
"""
DeleteApiCache(args) = appsync("DELETE", "/v1/apis/{apiId}/ApiCaches", args)

"""
Retrieves a Resolver object.

Required Parameters:
apiId, typeName, fieldName
"""
GetResolver(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 

Required Parameters:
apiId
"""
ListApiKeys(args) = appsync("GET", "/v1/apis/{apiId}/apikeys", args)

"""
Retrieves an ApiCache object.

Required Parameters:
apiId
"""
GetApiCache(args) = appsync("GET", "/v1/apis/{apiId}/ApiCaches", args)

"""
Lists the resolvers for a given API and type.

Required Parameters:
apiId, typeName
"""
ListResolvers(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

"""
Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.

Required Parameters:
apiId, definition
"""
StartSchemaCreation(args) = appsync("POST", "/v1/apis/{apiId}/schemacreation", args)

"""
Deletes a Type object.

Required Parameters:
apiId, typeName
"""
DeleteType(args) = appsync("DELETE", "/v1/apis/{apiId}/types/{typeName}", args)

"""
Lists the data sources for a given API.

Required Parameters:
apiId
"""
ListDataSources(args) = appsync("GET", "/v1/apis/{apiId}/datasources", args)

"""
Tags a resource with user-supplied tags.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = appsync("POST", "/v1/tags/{resourceArn}", args)

"""
Untags a resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = appsync("DELETE", "/v1/tags/{resourceArn}", args)

"""
Updates an API key.

Required Parameters:
apiId, id
"""
UpdateApiKey(args) = appsync("POST", "/v1/apis/{apiId}/apikeys/{id}", args)

"""
Updates a GraphqlApi object.

Required Parameters:
apiId, name
"""
UpdateGraphqlApi(args) = appsync("POST", "/v1/apis/{apiId}", args)

"""
Creates a cache for the GraphQL API.

Required Parameters:
apiId, ttl, apiCachingBehavior, type
"""
CreateApiCache(args) = appsync("POST", "/v1/apis/{apiId}/ApiCaches", args)

"""
Retrieves the current status of a schema creation operation.

Required Parameters:
apiId
"""
GetSchemaCreationStatus(args) = appsync("GET", "/v1/apis/{apiId}/schemacreation", args)

"""
Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.

Required Parameters:
apiId, typeName, fieldName, requestMappingTemplate
"""
CreateResolver(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

"""
Creates a DataSource object.

Required Parameters:
apiId, name, type
"""
CreateDataSource(args) = appsync("POST", "/v1/apis/{apiId}/datasources", args)

"""
Retrieves the introspection schema for a GraphQL API.

Required Parameters:
apiId, format
"""
GetIntrospectionSchema(args) = appsync("GET", "/v1/apis/{apiId}/schema", args)

"""
List multiple functions.

Required Parameters:
apiId
"""
ListFunctions(args) = appsync("GET", "/v1/apis/{apiId}/functions", args)

"""
Deletes an API key.

Required Parameters:
apiId, id
"""
DeleteApiKey(args) = appsync("DELETE", "/v1/apis/{apiId}/apikeys/{id}", args)

"""
Deletes a Function.

Required Parameters:
apiId, functionId
"""
DeleteFunction(args) = appsync("DELETE", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
List the resolvers that are associated with a specific function.

Required Parameters:
apiId, functionId
"""
ListResolversByFunction(args) = appsync("GET", "/v1/apis/{apiId}/functions/{functionId}/resolvers", args)

"""
Updates the cache for the GraphQL API.

Required Parameters:
apiId, ttl, apiCachingBehavior, type
"""
UpdateApiCache(args) = appsync("POST", "/v1/apis/{apiId}/ApiCaches/update", args)

"""
Lists your GraphQL APIs.
"""
ListGraphqlApis() = appsync("GET", "/v1/apis")

"""
Retrieves a Type object.

Required Parameters:
apiId, typeName, format
"""
GetType(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}", args)

"""
Creates a GraphqlApi object.

Required Parameters:
name, authenticationType
"""
CreateGraphqlApi(args) = appsync("POST", "/v1/apis", args)

"""
Updates a DataSource object.

Required Parameters:
apiId, name, type
"""
UpdateDataSource(args) = appsync("POST", "/v1/apis/{apiId}/datasources/{name}", args)

"""
Updates a Type object.

Required Parameters:
apiId, typeName, format
"""
UpdateType(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}", args)
