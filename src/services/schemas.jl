include("../AWSCorePrototypeServices.jl")
using .Services: schemas

"""
    ListTagsForResource()

Get tags for resource.

Required Parameters
{
  "ResourceArn": "The ARN of the resource."
}
"""
ListTagsForResource(args) = schemas("GET", "/tags/{resource-arn}", args)

"""
    DeleteSchema()

Delete a schema definition.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry."
}
"""
DeleteSchema(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
    DeleteRegistry()

Deletes a Registry.

Required Parameters
{
  "RegistryName": "The name of the registry."
}
"""
DeleteRegistry(args) = schemas("DELETE", "/v1/registries/name/{registryName}", args)

"""
    DeleteResourcePolicy()

Delete the resource-based policy attached to the specified registry.

Optional Parameters
{
  "RegistryName": "The name of the registry."
}
"""

DeleteResourcePolicy() = schemas("DELETE", "/v1/policy")
DeleteResourcePolicy(args) = schemas("DELETE", "/v1/policy", args)

"""
    GetDiscoveredSchema()

Get the discovered schema that was generated based on sampled events.

Required Parameters
{
  "Type": "The type of event.",
  "Events": "An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events."
}
"""
GetDiscoveredSchema(args) = schemas("POST", "/v1/discover", args)

"""
    SearchSchemas()

Search the schemas

Required Parameters
{
  "RegistryName": "The name of the registry.",
  "Keywords": "Specifying this limits the results to only schemas that include the provided keywords."
}

Optional Parameters
{
  "NextToken": "The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.",
  "Limit": ""
}
"""
SearchSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/search", args)

"""
    ListDiscoverers()

List the discoverers.

Optional Parameters
{
  "NextToken": "The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.",
  "SourceArnPrefix": "Specifying this limits the results to only those ARNs that start with the specified prefix.",
  "DiscovererIdPrefix": "Specifying this limits the results to only those discoverer IDs that start with the specified prefix.",
  "Limit": ""
}
"""

ListDiscoverers() = schemas("GET", "/v1/discoverers")
ListDiscoverers(args) = schemas("GET", "/v1/discoverers", args)

"""
    CreateRegistry()

Creates a registry.

Required Parameters
{
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "Description": "A description of the registry to be created.",
  "Tags": "Tags to associate with the registry."
}
"""
CreateRegistry(args) = schemas("POST", "/v1/registries/name/{registryName}", args)

"""
    GetResourcePolicy()

Retrieves the resource-based policy attached to a given registry.

Optional Parameters
{
  "RegistryName": "The name of the registry."
}
"""

GetResourcePolicy() = schemas("GET", "/v1/policy")
GetResourcePolicy(args) = schemas("GET", "/v1/policy", args)

"""
    ListRegistries()

List the registries.

Optional Parameters
{
  "NextToken": "The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.",
  "RegistryNamePrefix": "Specifying this limits the results to only those registry names that start with the specified prefix.",
  "Scope": "Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.",
  "Limit": ""
}
"""

ListRegistries() = schemas("GET", "/v1/registries")
ListRegistries(args) = schemas("GET", "/v1/registries", args)

"""
    DescribeCodeBinding()

Describe the code binding URI.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry.",
  "Language": "The language of the code binding."
}

Optional Parameters
{
  "SchemaVersion": "Specifying this limits the results to only this schema version."
}
"""
DescribeCodeBinding(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)

"""
    DeleteSchemaVersion()

Delete the schema version definition

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry.",
  "SchemaVersion": "The version number of the schema"
}
"""
DeleteSchemaVersion(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}", args)

"""
    PutResourcePolicy()

The name of the policy.

Required Parameters
{
  "Policy": "The resource-based policy."
}

Optional Parameters
{
  "RevisionId": "The revision ID of the policy.",
  "RegistryName": "The name of the registry."
}
"""
PutResourcePolicy(args) = schemas("PUT", "/v1/policy", args)

"""
    CreateDiscoverer()

Creates a discoverer.

Required Parameters
{
  "SourceArn": "The ARN of the event bus."
}

Optional Parameters
{
  "Description": "A description for the discoverer.",
  "Tags": "Tags associated with the resource."
}
"""
CreateDiscoverer(args) = schemas("POST", "/v1/discoverers", args)

"""
    DescribeRegistry()

Describes the registry.

Required Parameters
{
  "RegistryName": "The name of the registry."
}
"""
DescribeRegistry(args) = schemas("GET", "/v1/registries/name/{registryName}", args)

"""
    UpdateDiscoverer()

Updates the discoverer

Required Parameters
{
  "DiscovererId": "The ID of the discoverer."
}

Optional Parameters
{
  "Description": "The description of the discoverer to update."
}
"""
UpdateDiscoverer(args) = schemas("PUT", "/v1/discoverers/id/{discovererId}", args)

"""
    ListSchemaVersions()

Provides a list of the schema versions and related information.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "NextToken": "The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.",
  "Limit": ""
}
"""
ListSchemaVersions(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions", args)

"""
    GetCodeBindingSource()

Get the code binding source URI.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry.",
  "Language": "The language of the code binding."
}

Optional Parameters
{
  "SchemaVersion": "Specifying this limits the results to only this schema version."
}
"""
GetCodeBindingSource(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source", args)

"""
    DescribeSchema()

Retrieve the schema definition.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "SchemaVersion": "Specifying this limits the results to only this schema version."
}
"""
DescribeSchema(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
    TagResource()

Add tags to a resource.

Required Parameters
{
  "ResourceArn": "The ARN of the resource.",
  "Tags": "Tags associated with the resource."
}
"""
TagResource(args) = schemas("POST", "/tags/{resource-arn}", args)

"""
    UntagResource()

Removes tags from a resource.

Required Parameters
{
  "ResourceArn": "The ARN of the resource.",
  "TagKeys": "Keys of key-value pairs."
}
"""
UntagResource(args) = schemas("DELETE", "/tags/{resource-arn}", args)

"""
    UpdateSchema()

Updates the schema definition Inactive schemas will be deleted after two years.

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "Description": "The description of the schema.",
  "Content": "The source of the schema definition.",
  "Type": "The schema type for the events schema.",
  "ClientTokenId": "The ID of the client token."
}
"""
UpdateSchema(args) = schemas("PUT", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
    PutCodeBinding()

Put code binding URI

Required Parameters
{
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry.",
  "Language": "The language of the code binding."
}

Optional Parameters
{
  "SchemaVersion": "Specifying this limits the results to only this schema version."
}
"""
PutCodeBinding(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)

"""
    CreateSchema()

Creates a schema definition. Inactive schemas will be deleted after two years.

Required Parameters
{
  "Content": "The source of the schema definition.",
  "SchemaName": "The name of the schema.",
  "RegistryName": "The name of the registry.",
  "Type": "The type of schema."
}

Optional Parameters
{
  "Description": "A description of the schema.",
  "Tags": "Tags associated with the schema."
}
"""
CreateSchema(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
    DeleteDiscoverer()

Deletes a discoverer.

Required Parameters
{
  "DiscovererId": "The ID of the discoverer."
}
"""
DeleteDiscoverer(args) = schemas("DELETE", "/v1/discoverers/id/{discovererId}", args)

"""
    DescribeDiscoverer()

Describes the discoverer.

Required Parameters
{
  "DiscovererId": "The ID of the discoverer."
}
"""
DescribeDiscoverer(args) = schemas("GET", "/v1/discoverers/id/{discovererId}", args)

"""
    ListSchemas()

List the schemas.

Required Parameters
{
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "NextToken": "The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.",
  "SchemaNamePrefix": "Specifying this limits the results to only those schema names that start with the specified prefix.",
  "Limit": ""
}
"""
ListSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas", args)

"""
    StartDiscoverer()

Starts the discoverer

Required Parameters
{
  "DiscovererId": "The ID of the discoverer."
}
"""
StartDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/start", args)

"""
    UpdateRegistry()

Updates a registry.

Required Parameters
{
  "RegistryName": "The name of the registry."
}

Optional Parameters
{
  "Description": "The description of the registry to update."
}
"""
UpdateRegistry(args) = schemas("PUT", "/v1/registries/name/{registryName}", args)

"""
    StopDiscoverer()

Stops the discoverer

Required Parameters
{
  "DiscovererId": "The ID of the discoverer."
}
"""
StopDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/stop", args)
