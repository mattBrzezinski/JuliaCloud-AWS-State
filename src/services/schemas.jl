include("../AWSCorePrototypeServices.jl")
using .Services: schemas

"""
Get tags for resource.
"""
ListTagsForResource(ResourceArn) = schemas("GET", "/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = schemas("GET", "/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Delete a schema definition.
"""
DeleteSchema(RegistryName, SchemaName) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName")
DeleteSchema(RegistryName, SchemaName, args) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName", args)
DeleteSchema(a...; b...) = DeleteSchema(a..., b)

"""
Deletes a Registry.
"""
DeleteRegistry(RegistryName) = schemas("DELETE", "/v1/registries/name/$registryName")
DeleteRegistry(RegistryName, args) = schemas("DELETE", "/v1/registries/name/$registryName", args)
DeleteRegistry(a...; b...) = DeleteRegistry(a..., b)

"""
Get the discovered schema that was generated based on sampled events.
"""
GetDiscoveredSchema(Type, Events) = schemas("POST", "/v1/discover")
GetDiscoveredSchema(Type, Events, args) = schemas("POST", "/v1/discover", args)
GetDiscoveredSchema(a...; b...) = GetDiscoveredSchema(a..., b)

"""
Search the schemas
"""
SearchSchemas(RegistryName, Keywords) = schemas("GET", "/v1/registries/name/$registryName/schemas/search")
SearchSchemas(RegistryName, Keywords, args) = schemas("GET", "/v1/registries/name/$registryName/schemas/search", args)
SearchSchemas(a...; b...) = SearchSchemas(a..., b)

"""

"""
UnlockServiceLinkedRole(RoleArn) = schemas("POST", "/slr-deletion/unlock")
UnlockServiceLinkedRole(RoleArn, args) = schemas("POST", "/slr-deletion/unlock", args)
UnlockServiceLinkedRole(a...; b...) = UnlockServiceLinkedRole(a..., b)

"""
List the discoverers.
"""
ListDiscoverers() = schemas("GET", "/v1/discoverers")
ListDiscoverers(, args) = schemas("GET", "/v1/discoverers", args)
ListDiscoverers(a...; b...) = ListDiscoverers(a..., b)

"""
Creates a registry.
"""
CreateRegistry(RegistryName) = schemas("POST", "/v1/registries/name/$registryName")
CreateRegistry(RegistryName, args) = schemas("POST", "/v1/registries/name/$registryName", args)
CreateRegistry(a...; b...) = CreateRegistry(a..., b)

"""
List the registries.
"""
ListRegistries() = schemas("GET", "/v1/registries")
ListRegistries(, args) = schemas("GET", "/v1/registries", args)
ListRegistries(a...; b...) = ListRegistries(a..., b)

"""
Describe the code binding URI.
"""
DescribeCodeBinding(RegistryName, SchemaName, Language) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language")
DescribeCodeBinding(RegistryName, SchemaName, Language, args) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language", args)
DescribeCodeBinding(a...; b...) = DescribeCodeBinding(a..., b)

"""
Delete the schema version definition
"""
DeleteSchemaVersion(SchemaVersion, RegistryName, SchemaName) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName/version/$schemaVersion")
DeleteSchemaVersion(SchemaVersion, RegistryName, SchemaName, args) = schemas("DELETE", "/v1/registries/name/$registryName/schemas/name/$schemaName/version/$schemaVersion", args)
DeleteSchemaVersion(a...; b...) = DeleteSchemaVersion(a..., b)

"""

"""
LockServiceLinkedRole(Timeout, RoleArn) = schemas("POST", "/slr-deletion/lock")
LockServiceLinkedRole(Timeout, RoleArn, args) = schemas("POST", "/slr-deletion/lock", args)
LockServiceLinkedRole(a...; b...) = LockServiceLinkedRole(a..., b)

"""
Creates a discoverer.
"""
CreateDiscoverer(SourceArn) = schemas("POST", "/v1/discoverers")
CreateDiscoverer(SourceArn, args) = schemas("POST", "/v1/discoverers", args)
CreateDiscoverer(a...; b...) = CreateDiscoverer(a..., b)

"""
Describes the registry.
"""
DescribeRegistry(RegistryName) = schemas("GET", "/v1/registries/name/$registryName")
DescribeRegistry(RegistryName, args) = schemas("GET", "/v1/registries/name/$registryName", args)
DescribeRegistry(a...; b...) = DescribeRegistry(a..., b)

"""
Updates the discoverer
"""
UpdateDiscoverer(DiscovererId) = schemas("PUT", "/v1/discoverers/id/$discovererId")
UpdateDiscoverer(DiscovererId, args) = schemas("PUT", "/v1/discoverers/id/$discovererId", args)
UpdateDiscoverer(a...; b...) = UpdateDiscoverer(a..., b)

"""
Provides a list of the schema versions and related information.
"""
ListSchemaVersions(RegistryName, SchemaName) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/versions")
ListSchemaVersions(RegistryName, SchemaName, args) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/versions", args)
ListSchemaVersions(a...; b...) = ListSchemaVersions(a..., b)

"""
Get the code binding source URI.
"""
GetCodeBindingSource(RegistryName, SchemaName, Language) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language/source")
GetCodeBindingSource(RegistryName, SchemaName, Language, args) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language/source", args)
GetCodeBindingSource(a...; b...) = GetCodeBindingSource(a..., b)

"""
Retrieve the schema definition.
"""
DescribeSchema(RegistryName, SchemaName) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName")
DescribeSchema(RegistryName, SchemaName, args) = schemas("GET", "/v1/registries/name/$registryName/schemas/name/$schemaName", args)
DescribeSchema(a...; b...) = DescribeSchema(a..., b)

"""
Add tags to a resource.
"""
TagResource(ResourceArn, Tags) = schemas("POST", "/tags/$resource-arn")
TagResource(ResourceArn, Tags, args) = schemas("POST", "/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes tags from a resource.
"""
UntagResource(TagKeys, ResourceArn) = schemas("DELETE", "/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = schemas("DELETE", "/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Updates the schema definition
"""
UpdateSchema(RegistryName, SchemaName) = schemas("PUT", "/v1/registries/name/$registryName/schemas/name/$schemaName")
UpdateSchema(RegistryName, SchemaName, args) = schemas("PUT", "/v1/registries/name/$registryName/schemas/name/$schemaName", args)
UpdateSchema(a...; b...) = UpdateSchema(a..., b)

"""
Put code binding URI
"""
PutCodeBinding(RegistryName, SchemaName, Language) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language")
PutCodeBinding(RegistryName, SchemaName, Language, args) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName/language/$language", args)
PutCodeBinding(a...; b...) = PutCodeBinding(a..., b)

"""
Creates a schema definition.
"""
CreateSchema(RegistryName, SchemaName, Type, Content) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName")
CreateSchema(RegistryName, SchemaName, Type, Content, args) = schemas("POST", "/v1/registries/name/$registryName/schemas/name/$schemaName", args)
CreateSchema(a...; b...) = CreateSchema(a..., b)

"""
Deletes a discoverer.
"""
DeleteDiscoverer(DiscovererId) = schemas("DELETE", "/v1/discoverers/id/$discovererId")
DeleteDiscoverer(DiscovererId, args) = schemas("DELETE", "/v1/discoverers/id/$discovererId", args)
DeleteDiscoverer(a...; b...) = DeleteDiscoverer(a..., b)

"""
Describes the discoverer.
"""
DescribeDiscoverer(DiscovererId) = schemas("GET", "/v1/discoverers/id/$discovererId")
DescribeDiscoverer(DiscovererId, args) = schemas("GET", "/v1/discoverers/id/$discovererId", args)
DescribeDiscoverer(a...; b...) = DescribeDiscoverer(a..., b)

"""
List the schemas.
"""
ListSchemas(RegistryName) = schemas("GET", "/v1/registries/name/$registryName/schemas")
ListSchemas(RegistryName, args) = schemas("GET", "/v1/registries/name/$registryName/schemas", args)
ListSchemas(a...; b...) = ListSchemas(a..., b)

"""
Starts the discoverer
"""
StartDiscoverer(DiscovererId) = schemas("POST", "/v1/discoverers/id/$discovererId/start")
StartDiscoverer(DiscovererId, args) = schemas("POST", "/v1/discoverers/id/$discovererId/start", args)
StartDiscoverer(a...; b...) = StartDiscoverer(a..., b)

"""
Updates a registry.
"""
UpdateRegistry(RegistryName) = schemas("PUT", "/v1/registries/name/$registryName")
UpdateRegistry(RegistryName, args) = schemas("PUT", "/v1/registries/name/$registryName", args)
UpdateRegistry(a...; b...) = UpdateRegistry(a..., b)

"""
Stops the discoverer
"""
StopDiscoverer(DiscovererId) = schemas("POST", "/v1/discoverers/id/$discovererId/stop")
StopDiscoverer(DiscovererId, args) = schemas("POST", "/v1/discoverers/id/$discovererId/stop", args)
StopDiscoverer(a...; b...) = StopDiscoverer(a..., b)
