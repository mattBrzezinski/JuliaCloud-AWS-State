include("../AWSCorePrototypeServices.jl")
using .Services: schemas

"""
Get tags for resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = schemas("GET", "/tags/{resource-arn}", args)

"""
Delete a schema definition.

Required Parameters:
RegistryName, SchemaName
"""
DeleteSchema(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
Deletes a Registry.

Required Parameters:
RegistryName
"""
DeleteRegistry(args) = schemas("DELETE", "/v1/registries/name/{registryName}", args)

"""
Get the discovered schema that was generated based on sampled events.

Required Parameters:
Type, Events
"""
GetDiscoveredSchema(args) = schemas("POST", "/v1/discover", args)

"""
Search the schemas

Required Parameters:
RegistryName, Keywords
"""
SearchSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/search", args)

"""


Required Parameters:
RoleArn
"""
UnlockServiceLinkedRole(args) = schemas("POST", "/slr-deletion/unlock", args)

"""
List the discoverers.
"""
ListDiscoverers() = schemas("GET", "/v1/discoverers")

"""
Creates a registry.

Required Parameters:
RegistryName
"""
CreateRegistry(args) = schemas("POST", "/v1/registries/name/{registryName}", args)

"""
List the registries.
"""
ListRegistries() = schemas("GET", "/v1/registries")

"""
Describe the code binding URI.

Required Parameters:
RegistryName, SchemaName, Language
"""
DescribeCodeBinding(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)

"""
Delete the schema version definition

Required Parameters:
SchemaVersion, RegistryName, SchemaName
"""
DeleteSchemaVersion(args) = schemas("DELETE", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}", args)

"""


Required Parameters:
Timeout, RoleArn
"""
LockServiceLinkedRole(args) = schemas("POST", "/slr-deletion/lock", args)

"""
Creates a discoverer.

Required Parameters:
SourceArn
"""
CreateDiscoverer(args) = schemas("POST", "/v1/discoverers", args)

"""
Describes the registry.

Required Parameters:
RegistryName
"""
DescribeRegistry(args) = schemas("GET", "/v1/registries/name/{registryName}", args)

"""
Updates the discoverer

Required Parameters:
DiscovererId
"""
UpdateDiscoverer(args) = schemas("PUT", "/v1/discoverers/id/{discovererId}", args)

"""
Provides a list of the schema versions and related information.

Required Parameters:
RegistryName, SchemaName
"""
ListSchemaVersions(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions", args)

"""
Get the code binding source URI.

Required Parameters:
RegistryName, SchemaName, Language
"""
GetCodeBindingSource(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source", args)

"""
Retrieve the schema definition.

Required Parameters:
RegistryName, SchemaName
"""
DescribeSchema(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
Add tags to a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = schemas("POST", "/tags/{resource-arn}", args)

"""
Removes tags from a resource.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = schemas("DELETE", "/tags/{resource-arn}", args)

"""
Updates the schema definition

Required Parameters:
RegistryName, SchemaName
"""
UpdateSchema(args) = schemas("PUT", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
Put code binding URI

Required Parameters:
RegistryName, SchemaName, Language
"""
PutCodeBinding(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", args)

"""
Creates a schema definition.

Required Parameters:
RegistryName, SchemaName, Type, Content
"""
CreateSchema(args) = schemas("POST", "/v1/registries/name/{registryName}/schemas/name/{schemaName}", args)

"""
Deletes a discoverer.

Required Parameters:
DiscovererId
"""
DeleteDiscoverer(args) = schemas("DELETE", "/v1/discoverers/id/{discovererId}", args)

"""
Describes the discoverer.

Required Parameters:
DiscovererId
"""
DescribeDiscoverer(args) = schemas("GET", "/v1/discoverers/id/{discovererId}", args)

"""
List the schemas.

Required Parameters:
RegistryName
"""
ListSchemas(args) = schemas("GET", "/v1/registries/name/{registryName}/schemas", args)

"""
Starts the discoverer

Required Parameters:
DiscovererId
"""
StartDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/start", args)

"""
Updates a registry.

Required Parameters:
RegistryName
"""
UpdateRegistry(args) = schemas("PUT", "/v1/registries/name/{registryName}", args)

"""
Stops the discoverer

Required Parameters:
DiscovererId
"""
StopDiscoverer(args) = schemas("POST", "/v1/discoverers/id/{discovererId}/stop", args)
