include("../AWSCorePrototypeServices.jl")
using .Services: appsync

"""
    ListTagsForResource()

Lists the tags for a resource.

Required Parameters
{
  "resourceArn": "The GraphqlApi ARN."
}
"""
ListTagsForResource(args) = appsync("GET", "/v1/tags/{resourceArn}", args)

"""
    UpdateFunction()

Updates a Function object.

Required Parameters
{
  "name": "The Function name.",
  "apiId": "The GraphQL API ID.",
  "dataSourceName": "The Function DataSource name.",
  "functionVersion": "The version of the request mapping template. Currently the supported value is 2018-05-29. ",
  "functionId": "The function ID."
}

Optional Parameters
{
  "requestMappingTemplate": "The Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.",
  "responseMappingTemplate": "The Function request mapping template. ",
  "description": "The Function description."
}
"""
UpdateFunction(args) = appsync("POST", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
    GetFunction()

Get a Function.

Required Parameters
{
  "apiId": "The GraphQL API ID.",
  "functionId": "The Function ID."
}
"""
GetFunction(args) = appsync("GET", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
    GetGraphqlApi()

Retrieves a GraphqlApi object.

Required Parameters
{
  "apiId": "The API ID for the GraphQL API."
}
"""
GetGraphqlApi(args) = appsync("GET", "/v1/apis/{apiId}", args)

"""
    DeleteResolver()

Deletes a Resolver object.

Required Parameters
{
  "typeName": "The name of the resolver type.",
  "apiId": "The API ID.",
  "fieldName": "The resolver field name."
}
"""
DeleteResolver(args) = appsync("DELETE", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
    FlushApiCache()

Flushes an ApiCache object.

Required Parameters
{
  "apiId": "The API ID."
}
"""
FlushApiCache(args) = appsync("DELETE", "/v1/apis/{apiId}/FlushCache", args)

"""
    ListTypes()

Lists the types for a given API.

Required Parameters
{
  "format": "The type format: SDL or JSON.",
  "apiId": "The API ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. "
}
"""
ListTypes(args) = appsync("GET", "/v1/apis/{apiId}/types", args)

"""
    DeleteDataSource()

Deletes a DataSource object.

Required Parameters
{
  "name": "The name of the data source.",
  "apiId": "The API ID."
}
"""
DeleteDataSource(args) = appsync("DELETE", "/v1/apis/{apiId}/datasources/{name}", args)

"""
    DeleteGraphqlApi()

Deletes a GraphqlApi object.

Required Parameters
{
  "apiId": "The API ID."
}
"""
DeleteGraphqlApi(args) = appsync("DELETE", "/v1/apis/{apiId}", args)

"""
    UpdateResolver()

Updates a Resolver object.

Required Parameters
{
  "typeName": "The new type name.",
  "apiId": "The API ID.",
  "fieldName": "The new field name."
}

Optional Parameters
{
  "kind": "The resolver type.    UNIT: A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.    PIPELINE: A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of Function in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.  ",
  "syncConfig": "The SyncConfig for a resolver attached to a versioned datasource.",
  "dataSourceName": "The new data source name.",
  "requestMappingTemplate": "The new request mapping template. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.",
  "responseMappingTemplate": "The new response mapping template.",
  "pipelineConfig": "The PipelineConfig.",
  "cachingConfig": "The caching configuration for the resolver."
}
"""
UpdateResolver(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
    CreateApiKey()

Creates a unique key that you can distribute to clients who are executing your API.

Required Parameters
{
  "apiId": "The ID for your GraphQL API."
}

Optional Parameters
{
  "expires": "The time from creation time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour. The default value for this parameter is 7 days from creation time. For more information, see .",
  "description": "A description of the purpose of the API key."
}
"""
CreateApiKey(args) = appsync("POST", "/v1/apis/{apiId}/apikeys", args)

"""
    CreateFunction()

Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.

Required Parameters
{
  "name": "The Function name. The function name does not have to be unique.",
  "apiId": "The GraphQL API ID.",
  "dataSourceName": "The Function DataSource name.",
  "functionVersion": "The version of the request mapping template. Currently the supported value is 2018-05-29. "
}

Optional Parameters
{
  "requestMappingTemplate": "The Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.",
  "responseMappingTemplate": "The Function response mapping template. ",
  "description": "The Function description."
}
"""
CreateFunction(args) = appsync("POST", "/v1/apis/{apiId}/functions", args)

"""
    CreateType()

Creates a Type object.

Required Parameters
{
  "format": "The type format: SDL or JSON.",
  "apiId": "The API ID.",
  "definition": "The type definition, in GraphQL Schema Definition Language (SDL) format. For more information, see the GraphQL SDL documentation."
}
"""
CreateType(args) = appsync("POST", "/v1/apis/{apiId}/types", args)

"""
    GetDataSource()

Retrieves a DataSource object.

Required Parameters
{
  "name": "The name of the data source.",
  "apiId": "The API ID."
}
"""
GetDataSource(args) = appsync("GET", "/v1/apis/{apiId}/datasources/{name}", args)

"""
    DeleteApiCache()

Deletes an ApiCache object.

Required Parameters
{
  "apiId": "The API ID."
}
"""
DeleteApiCache(args) = appsync("DELETE", "/v1/apis/{apiId}/ApiCaches", args)

"""
    GetResolver()

Retrieves a Resolver object.

Required Parameters
{
  "typeName": "The resolver type name.",
  "apiId": "The API ID.",
  "fieldName": "The resolver field name."
}
"""
GetResolver(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", args)

"""
    ListApiKeys()

Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 

Required Parameters
{
  "apiId": "The API ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list."
}
"""
ListApiKeys(args) = appsync("GET", "/v1/apis/{apiId}/apikeys", args)

"""
    GetApiCache()

Retrieves an ApiCache object.

Required Parameters
{
  "apiId": "The API ID."
}
"""
GetApiCache(args) = appsync("GET", "/v1/apis/{apiId}/ApiCaches", args)

"""
    ListResolvers()

Lists the resolvers for a given API and type.

Required Parameters
{
  "typeName": "The type name.",
  "apiId": "The API ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. "
}
"""
ListResolvers(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

"""
    StartSchemaCreation()

Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.

Required Parameters
{
  "apiId": "The API ID.",
  "definition": "The schema definition, in GraphQL schema language format."
}
"""
StartSchemaCreation(args) = appsync("POST", "/v1/apis/{apiId}/schemacreation", args)

"""
    DeleteType()

Deletes a Type object.

Required Parameters
{
  "typeName": "The type name.",
  "apiId": "The API ID."
}
"""
DeleteType(args) = appsync("DELETE", "/v1/apis/{apiId}/types/{typeName}", args)

"""
    ListDataSources()

Lists the data sources for a given API.

Required Parameters
{
  "apiId": "The API ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. "
}
"""
ListDataSources(args) = appsync("GET", "/v1/apis/{apiId}/datasources", args)

"""
    TagResource()

Tags a resource with user-supplied tags.

Required Parameters
{
  "resourceArn": "The GraphqlApi ARN.",
  "tags": "A TagMap object."
}
"""
TagResource(args) = appsync("POST", "/v1/tags/{resourceArn}", args)

"""
    UntagResource()

Untags a resource.

Required Parameters
{
  "resourceArn": "The GraphqlApi ARN.",
  "tagKeys": "A list of TagKey objects."
}
"""
UntagResource(args) = appsync("DELETE", "/v1/tags/{resourceArn}", args)

"""
    UpdateApiKey()

Updates an API key.

Required Parameters
{
  "apiId": "The ID for the GraphQL API.",
  "id": "The API key ID."
}

Optional Parameters
{
  "expires": "The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .",
  "description": "A description of the purpose of the API key."
}
"""
UpdateApiKey(args) = appsync("POST", "/v1/apis/{apiId}/apikeys/{id}", args)

"""
    UpdateGraphqlApi()

Updates a GraphqlApi object.

Required Parameters
{
  "name": "The new name for the GraphqlApi object.",
  "apiId": "The API ID."
}

Optional Parameters
{
  "additionalAuthenticationProviders": "A list of additional authentication providers for the GraphqlApi API.",
  "authenticationType": "The new authentication type for the GraphqlApi object.",
  "xrayEnabled": "A flag indicating whether to enable X-Ray tracing for the GraphqlApi.",
  "userPoolConfig": "The new Amazon Cognito user pool configuration for the GraphqlApi object.",
  "logConfig": "The Amazon CloudWatch Logs configuration for the GraphqlApi object.",
  "openIDConnectConfig": "The OpenID Connect configuration for the GraphqlApi object."
}
"""
UpdateGraphqlApi(args) = appsync("POST", "/v1/apis/{apiId}", args)

"""
    CreateApiCache()

Creates a cache for the GraphQL API.

Required Parameters
{
  "apiId": "The GraphQL API Id.",
  "apiCachingBehavior": "Caching behavior.    FULL_REQUEST_CACHING: All requests are fully cached.    PER_RESOLVER_CACHING: Individual resovlers that you specify are cached.  ",
  "ttl": "TTL in seconds for cache entries. Valid values are between 1 and 3600 seconds.",
  "type": "The cache instance type. Valid values are     SMALL     MEDIUM     LARGE     XLARGE     LARGE_2X     LARGE_4X     LARGE_8X (not available in all regions)    LARGE_12X    Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used. The following legacy instance types are avaible, but their use is discouraged:    T2_SMALL: A t2.small instance type.    T2_MEDIUM: A t2.medium instance type.    R4_LARGE: A r4.large instance type.    R4_XLARGE: A r4.xlarge instance type.    R4_2XLARGE: A r4.2xlarge instance type.    R4_4XLARGE: A r4.4xlarge instance type.    R4_8XLARGE: A r4.8xlarge instance type.  "
}

Optional Parameters
{
  "transitEncryptionEnabled": "Transit encryption flag when connecting to cache. This setting cannot be updated after creation.",
  "atRestEncryptionEnabled": "At rest encryption flag for cache. This setting cannot be updated after creation."
}
"""
CreateApiCache(args) = appsync("POST", "/v1/apis/{apiId}/ApiCaches", args)

"""
    GetSchemaCreationStatus()

Retrieves the current status of a schema creation operation.

Required Parameters
{
  "apiId": "The API ID."
}
"""
GetSchemaCreationStatus(args) = appsync("GET", "/v1/apis/{apiId}/schemacreation", args)

"""
    CreateResolver()

Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.

Required Parameters
{
  "typeName": "The name of the Type.",
  "apiId": "The ID for the GraphQL API for which the resolver is being created.",
  "fieldName": "The name of the field to attach the resolver to."
}

Optional Parameters
{
  "kind": "The resolver type.    UNIT: A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.    PIPELINE: A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of Function in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.  ",
  "syncConfig": "The SyncConfig for a resolver attached to a versioned datasource.",
  "dataSourceName": "The name of the data source for which the resolver is being created.",
  "requestMappingTemplate": "The mapping template to be used for requests. A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL). VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.",
  "responseMappingTemplate": "The mapping template to be used for responses from the data source.",
  "pipelineConfig": "The PipelineConfig.",
  "cachingConfig": "The caching configuration for the resolver."
}
"""
CreateResolver(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}/resolvers", args)

"""
    CreateDataSource()

Creates a DataSource object.

Required Parameters
{
  "name": "A user-supplied name for the DataSource.",
  "apiId": "The API ID for the GraphQL API for the DataSource.",
  "type": "The type of the DataSource."
}

Optional Parameters
{
  "relationalDatabaseConfig": "Relational database settings.",
  "lambdaConfig": "AWS Lambda settings.",
  "serviceRoleArn": "The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.",
  "dynamodbConfig": "Amazon DynamoDB settings.",
  "httpConfig": "HTTP endpoint settings.",
  "description": "A description of the DataSource.",
  "elasticsearchConfig": "Amazon Elasticsearch Service settings."
}
"""
CreateDataSource(args) = appsync("POST", "/v1/apis/{apiId}/datasources", args)

"""
    GetIntrospectionSchema()

Retrieves the introspection schema for a GraphQL API.

Required Parameters
{
  "format": "The schema format: SDL or JSON.",
  "apiId": "The API ID."
}

Optional Parameters
{
  "includeDirectives": "A flag that specifies whether the schema introspection should contain directives."
}
"""
GetIntrospectionSchema(args) = appsync("GET", "/v1/apis/{apiId}/schema", args)

"""
    ListFunctions()

List multiple functions.

Required Parameters
{
  "apiId": "The GraphQL API ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list."
}
"""
ListFunctions(args) = appsync("GET", "/v1/apis/{apiId}/functions", args)

"""
    DeleteApiKey()

Deletes an API key.

Required Parameters
{
  "apiId": "The API ID.",
  "id": "The ID for the API key."
}
"""
DeleteApiKey(args) = appsync("DELETE", "/v1/apis/{apiId}/apikeys/{id}", args)

"""
    DeleteFunction()

Deletes a Function.

Required Parameters
{
  "apiId": "The GraphQL API ID.",
  "functionId": "The Function ID."
}
"""
DeleteFunction(args) = appsync("DELETE", "/v1/apis/{apiId}/functions/{functionId}", args)

"""
    ListResolversByFunction()

List the resolvers that are associated with a specific function.

Required Parameters
{
  "apiId": "The API ID.",
  "functionId": "The Function ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which you can use to return the next set of items in the list."
}
"""
ListResolversByFunction(args) = appsync("GET", "/v1/apis/{apiId}/functions/{functionId}/resolvers", args)

"""
    UpdateApiCache()

Updates the cache for the GraphQL API.

Required Parameters
{
  "apiId": "The GraphQL API Id.",
  "apiCachingBehavior": "Caching behavior.    FULL_REQUEST_CACHING: All requests are fully cached.    PER_RESOLVER_CACHING: Individual resovlers that you specify are cached.  ",
  "ttl": "TTL in seconds for cache entries. Valid values are between 1 and 3600 seconds.",
  "type": "The cache instance type. Valid values are     SMALL     MEDIUM     LARGE     XLARGE     LARGE_2X     LARGE_4X     LARGE_8X (not available in all regions)    LARGE_12X    Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used. The following legacy instance types are avaible, but their use is discouraged:    T2_SMALL: A t2.small instance type.    T2_MEDIUM: A t2.medium instance type.    R4_LARGE: A r4.large instance type.    R4_XLARGE: A r4.xlarge instance type.    R4_2XLARGE: A r4.2xlarge instance type.    R4_4XLARGE: A r4.4xlarge instance type.    R4_8XLARGE: A r4.8xlarge instance type.  "
}
"""
UpdateApiCache(args) = appsync("POST", "/v1/apis/{apiId}/ApiCaches/update", args)

"""
    ListGraphqlApis()

Lists your GraphQL APIs.

Optional Parameters
{
  "maxResults": "The maximum number of results you want the request to return.",
  "nextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. "
}
"""

ListGraphqlApis() = appsync("GET", "/v1/apis")
ListGraphqlApis(args) = appsync("GET", "/v1/apis", args)

"""
    GetType()

Retrieves a Type object.

Required Parameters
{
  "typeName": "The type name.",
  "format": "The type format: SDL or JSON.",
  "apiId": "The API ID."
}
"""
GetType(args) = appsync("GET", "/v1/apis/{apiId}/types/{typeName}", args)

"""
    CreateGraphqlApi()

Creates a GraphqlApi object.

Required Parameters
{
  "name": "A user-supplied name for the GraphqlApi.",
  "authenticationType": "The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools."
}

Optional Parameters
{
  "additionalAuthenticationProviders": "A list of additional authentication providers for the GraphqlApi API.",
  "xrayEnabled": "A flag indicating whether to enable X-Ray tracing for the GraphqlApi.",
  "userPoolConfig": "The Amazon Cognito user pool configuration.",
  "logConfig": "The Amazon CloudWatch Logs configuration.",
  "tags": "A TagMap object.",
  "openIDConnectConfig": "The OpenID Connect configuration."
}
"""
CreateGraphqlApi(args) = appsync("POST", "/v1/apis", args)

"""
    UpdateDataSource()

Updates a DataSource object.

Required Parameters
{
  "name": "The new name for the data source.",
  "apiId": "The API ID.",
  "type": "The new data source type."
}

Optional Parameters
{
  "relationalDatabaseConfig": "The new relational database configuration.",
  "lambdaConfig": "The new AWS Lambda configuration.",
  "serviceRoleArn": "The new service role ARN for the data source.",
  "dynamodbConfig": "The new Amazon DynamoDB configuration.",
  "httpConfig": "The new HTTP endpoint configuration.",
  "description": "The new description for the data source.",
  "elasticsearchConfig": "The new Elasticsearch Service configuration."
}
"""
UpdateDataSource(args) = appsync("POST", "/v1/apis/{apiId}/datasources/{name}", args)

"""
    UpdateType()

Updates a Type object.

Required Parameters
{
  "typeName": "The new type name.",
  "format": "The new type format: SDL or JSON.",
  "apiId": "The API ID."
}

Optional Parameters
{
  "definition": "The new definition."
}
"""
UpdateType(args) = appsync("POST", "/v1/apis/{apiId}/types/{typeName}", args)
