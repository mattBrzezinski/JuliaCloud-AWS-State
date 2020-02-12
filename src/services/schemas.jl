include("../AWSCorePrototypeServices.jl")
using .Services: schemas

"""
    ListTagsForResource

Get tags for resource.

Required Parameters:
{
  "ResourceArn": ""
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = schemas("GET", "/tags/{resource-arn}", args)
"""
    DeleteSchema

Delete a schema definition.

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": ""
}


Optional Parameters:
{}

"""

DeleteSchema(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)
"""
    DeleteRegistry

Deletes a Registry.

Required Parameters:
{
  "RegistryName": ""
}


Optional Parameters:
{}

"""

DeleteRegistry(args) = schemas("DELETE", "/v1/registries/name/{registryName}", args)
"""
    GetDiscoveredSchema

Get the discovered schema that was generated based on sampled events.

Required Parameters:
{
  "Type": "The type of event.",
  "Events": "An array of strings that"
}


Optional Parameters:
{}

"""

GetDiscoveredSchema(args) = schemas("POST", "/v1/discover", args)
"""
    SearchSchemas

Search the schemas

Required Parameters:
{
  "RegistryName": "",
  "Keywords": ""
}


Optional Parameters:
{
  "NextToken": "",
  "Limit": ""
}

"""

SearchSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/search", args)
"""
    UnlockServiceLinkedRole



Required Parameters:
{
  "RoleArn": ""
}


Optional Parameters:
{}

"""

UnlockServiceLinkedRole(args) = schemas("POST", "/slr-deletion/unlock", args)
"""
    ListDiscoverers

List the discoverers.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "",
  "SourceArnPrefix": "",
  "DiscovererIdPrefix": "",
  "Limit": ""
}

"""
ListDiscoverers() = schemas("GET", "/v1/discoverers")
ListDiscoverers(args) = schemas("GET", "/v1/discoverers", args)

"""
    CreateRegistry

Creates a registry.

Required Parameters:
{
  "RegistryName": ""
}


Optional Parameters:
{
  "Description": "A description of the registry to be created.",
  "Tags": "Tags to associate with the registry."
}

"""

CreateRegistry(args) = schemas("POST", "/v1/registries/name/{registryName}", args)
"""
    ListRegistries

List the registries.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "",
  "RegistryNamePrefix": "",
  "Scope": "",
  "Limit": ""
}

"""
ListRegistries() = schemas("GET", "/v1/registries")
ListRegistries(args) = schemas("GET", "/v1/registries", args)

"""
    DescribeCodeBinding

Describe the code binding URI.

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": "",
  "Language": ""
}


Optional Parameters:
{
  "SchemaVersion": ""
}

"""

DescribeCodeBinding(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)
"""
    DeleteSchemaVersion

Delete the schema version definition

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": "",
  "SchemaVersion": ""
}


Optional Parameters:
{}

"""

DeleteSchemaVersion(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}", args)
"""
    LockServiceLinkedRole



Required Parameters:
{
  "Timeout": "",
  "RoleArn": ""
}


Optional Parameters:
{}

"""

LockServiceLinkedRole(args) = schemas("POST", "/slr-deletion/lock", args)
"""
    CreateDiscoverer

Creates a discoverer.

Required Parameters:
{
  "SourceArn": "The ARN of the event bus."
}


Optional Parameters:
{
  "Description": "A description for the discoverer.",
  "Tags": "Tags associated with the resource."
}

"""

CreateDiscoverer(args) = schemas("POST", "/v1/discoverers", args)
"""
    DescribeRegistry

Describes the registry.

Required Parameters:
{
  "RegistryName": ""
}


Optional Parameters:
{}

"""

DescribeRegistry(args) = schemas("GET", "/v1/registries/name/{registryName}", args)
"""
    UpdateDiscoverer

Updates the discoverer

Required Parameters:
{
  "DiscovererId": ""
}


Optional Parameters:
{
  "Description": "The description of the discoverer to update."
}

"""

UpdateDiscoverer(args) = schemas("PUT", "/v1/discoverers/id/{discovererId}", args)
"""
    ListSchemaVersions

Provides a list of the schema versions and related information.

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": ""
}


Optional Parameters:
{
  "NextToken": "",
  "Limit": ""
}

"""

ListSchemaVersions(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions", args)
"""
    GetCodeBindingSource

Get the code binding source URI.

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": "",
  "Language": ""
}


Optional Parameters:
{
  "SchemaVersion": ""
}

"""

GetCodeBindingSource(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source", args)
"""
    DescribeSchema

Retrieve the schema definition.

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": ""
}


Optional Parameters:
{
  "SchemaVersion": ""
}

"""

DescribeSchema(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)
"""
    TagResource

Add tags to a resource.

Required Parameters:
{
  "ResourceArn": "",
  "Tags": ""
}


Optional Parameters:
{}

"""

TagResource(args) = schemas("POST", "/tags/{resource-arn}", args)
"""
    UntagResource

Removes tags from a resource.

Required Parameters:
{
  "ResourceArn": "",
  "TagKeys": ""
}


Optional Parameters:
{}

"""

UntagResource(args) = schemas("DELETE", "/tags/{resource-arn}", args)
"""
    UpdateSchema

Updates the schema definition

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": ""
}


Optional Parameters:
{
  "Description": "The description of the schema.",
  "Content": "The source of the schema definition.",
  "Type": "The schema type for the events schema.",
  "ClientTokenId": "The ID of the client token."
}

"""

UpdateSchema(args) = schemas("PUT", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)
"""
    PutCodeBinding

Put code binding URI

Required Parameters:
{
  "SchemaName": "",
  "RegistryName": "",
  "Language": ""
}


Optional Parameters:
{
  "SchemaVersion": ""
}

"""

PutCodeBinding(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)
"""
    CreateSchema

Creates a schema definition.

Required Parameters:
{
  "Content": "",
  "SchemaName": "",
  "RegistryName": "",
  "Type": ""
}


Optional Parameters:
{
  "Description": "A description of the schema.",
  "Tags": "Tags associated with the schema."
}

"""

CreateSchema(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)
"""
    DeleteDiscoverer

Deletes a discoverer.

Required Parameters:
{
  "DiscovererId": ""
}


Optional Parameters:
{}

"""

DeleteDiscoverer(args) = schemas("DELETE", "/v1/discoverers/id/{discovererId}", args)
"""
    DescribeDiscoverer

Describes the discoverer.

Required Parameters:
{
  "DiscovererId": ""
}


Optional Parameters:
{}

"""

DescribeDiscoverer(args) = schemas("GET", "/v1/discoverers/id/{discovererId}", args)
"""
    ListSchemas

List the schemas.

Required Parameters:
{
  "RegistryName": ""
}


Optional Parameters:
{
  "NextToken": "",
  "SchemaNamePrefix": "",
  "Limit": ""
}

"""

ListSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas", args)
"""
    StartDiscoverer

Starts the discoverer

Required Parameters:
{
  "DiscovererId": ""
}


Optional Parameters:
{}

"""

StartDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/start", args)
"""
    UpdateRegistry

Updates a registry.

Required Parameters:
{
  "RegistryName": ""
}


Optional Parameters:
{
  "Description": "The description of the registry to update."
}

"""

UpdateRegistry(args) = schemas("PUT", "/v1/registries/name/{registryName}", args)
"""
    StopDiscoverer

Stops the discoverer

Required Parameters:
{
  "DiscovererId": ""
}


Optional Parameters:
{}

"""

StopDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/stop", args)