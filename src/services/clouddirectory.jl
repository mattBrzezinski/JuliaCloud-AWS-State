include("../AWSCorePrototypeServices.jl")
using .Services: clouddirectory

"""
Adds a new Facet to an object. An object can have more than one facet applied on it.
"""
AddFacetToObject(DirectoryArn, SchemaFacet, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets")
AddFacetToObject(DirectoryArn, SchemaFacet, ObjectReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets", args)
AddFacetToObject(a...; b...) = AddFacetToObject(a..., b)

"""
Attaches a typed link to a specified source and target object. For more information, see Typed link.
"""
AttachTypedLink(DirectoryArn, SourceObjectReference, TargetObjectReference, TypedLinkFacet, Attributes) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach")
AttachTypedLink(DirectoryArn, SourceObjectReference, TargetObjectReference, TypedLinkFacet, Attributes, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", args)
AttachTypedLink(a...; b...) = AttachTypedLink(a..., b)

"""
Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
"""
ListPublishedSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published")
ListPublishedSchemaArns(, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published", args)
ListPublishedSchemaArns(a...; b...) = ListPublishedSchemaArns(a..., b)

"""
Retrieves attributes that are associated with a typed link.
"""
GetLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeNames) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get")
GetLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeNames, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", args)
GetLinkAttributes(a...; b...) = GetLinkAttributes(a..., b)

"""
Performs all the read operations in a batch. 
"""
BatchRead(DirectoryArn, Operations) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/batchread")
BatchRead(DirectoryArn, Operations, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/batchread", args)
BatchRead(a...; b...) = BatchRead(a..., b)

"""
An API operation for adding tags to a resource.
"""
TagResource(ResourceArn, Tags) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/add")
TagResource(ResourceArn, Tags, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/add", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.
"""
DeleteObject(DirectoryArn, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/delete")
DeleteObject(DirectoryArn, ObjectReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/delete", args)
DeleteObject(a...; b...) = DeleteObject(a..., b)

"""
Returns current applied schema version ARN, including the minor version in use.
"""
GetAppliedSchemaVersion(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema")
GetAppliedSchemaVersion(SchemaArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", args)
GetAppliedSchemaVersion(a...; b...) = GetAppliedSchemaVersion(a..., b)

"""
Lists indices attached to the specified object.
"""
ListAttachedIndices(DirectoryArn, TargetReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/indices")
ListAttachedIndices(DirectoryArn, TargetReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/indices", args)
ListAttachedIndices(a...; b...) = ListAttachedIndices(a..., b)

"""
Updates the schema name with a new name. Only development schema names can be updated.
"""
UpdateSchema(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/update")
UpdateSchema(SchemaArn, Name, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/update", args)
UpdateSchema(a...; b...) = UpdateSchema(a..., b)

"""
Creates a TypedLinkFacet. For more information, see Typed link.
"""
CreateTypedLinkFacet(SchemaArn, Facet) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create")
CreateTypedLinkFacet(SchemaArn, Facet, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", args)
CreateTypedLinkFacet(a...; b...) = CreateTypedLinkFacet(a..., b)

"""
Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
"""
ListAppliedSchemaArns(DirectoryArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/applied")
ListAppliedSchemaArns(DirectoryArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/applied", args)
ListAppliedSchemaArns(a...; b...) = ListAppliedSchemaArns(a..., b)

"""
Detaches a policy from an object.
"""
DetachPolicy(DirectoryArn, PolicyReference, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/detach")
DetachPolicy(DirectoryArn, PolicyReference, ObjectReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/detach", args)
DetachPolicy(a...; b...) = DetachPolicy(a..., b)

"""
Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
"""
LookupPolicy(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/lookup")
LookupPolicy(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/lookup", args)
LookupPolicy(a...; b...) = LookupPolicy(a..., b)

"""
Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed link.
"""
ListTypedLinkFacetNames(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list")
ListTypedLinkFacetNames(SchemaArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", args)
ListTypedLinkFacetNames(a...; b...) = ListTypedLinkFacetNames(a..., b)

"""
Returns a paginated list of child objects that are associated with a given object.
"""
ListObjectChildren(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/children")
ListObjectChildren(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/children", args)
ListObjectChildren(a...; b...) = ListObjectChildren(a..., b)

"""
Retrieves attributes attached to the facet.
"""
ListFacetAttributes(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/attributes")
ListFacetAttributes(SchemaArn, Name, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/attributes", args)
ListFacetAttributes(a...; b...) = ListFacetAttributes(a..., b)

"""
Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.
"""
GetFacet(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet")
GetFacet(SchemaArn, Name, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet", args)
GetFacet(a...; b...) = GetFacet(a..., b)

"""
Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.
"""
ListOutgoingTypedLinks(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing")
ListOutgoingTypedLinks(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", args)
ListOutgoingTypedLinks(a...; b...) = ListOutgoingTypedLinks(a..., b)

"""
Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.
"""
ListIncomingTypedLinks(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming")
ListIncomingTypedLinks(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", args)
ListIncomingTypedLinks(a...; b...) = ListIncomingTypedLinks(a..., b)

"""
An API operation for removing tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/remove")
UntagResource(ResourceArn, TagKeys, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/remove", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema.
"""
CreateDirectory(Name, SchemaArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/create")
CreateDirectory(Name, SchemaArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/create", args)
CreateDirectory(a...; b...) = CreateDirectory(a..., b)

"""
Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
"""
ListDevelopmentSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development")
ListDevelopmentSchemaArns(, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development", args)
ListDevelopmentSchemaArns(a...; b...) = ListDevelopmentSchemaArns(a..., b)

"""
Updates a given object's attributes.
"""
UpdateObjectAttributes(DirectoryArn, ObjectReference, AttributeUpdates) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/update")
UpdateObjectAttributes(DirectoryArn, ObjectReference, AttributeUpdates, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/update", args)
UpdateObjectAttributes(a...; b...) = UpdateObjectAttributes(a..., b)

"""
Attaches the specified object to the specified index.
"""
AttachToIndex(DirectoryArn, IndexReference, TargetReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/attach")
AttachToIndex(DirectoryArn, IndexReference, TargetReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/attach", args)
AttachToIndex(a...; b...) = AttachToIndex(a..., b)

"""
Lists directories created within an account.
"""
ListDirectories() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list")
ListDirectories(, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list", args)
ListDirectories(a...; b...) = ListDirectories(a..., b)

"""
Performs all the write operations in a batch. Either all the operations succeed or none.
"""
BatchWrite(DirectoryArn, Operations) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/batchwrite")
BatchWrite(DirectoryArn, Operations, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/batchwrite", args)
BatchWrite(a...; b...) = BatchWrite(a..., b)

"""
Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   
"""
CreateSchema(Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/create")
CreateSchema(Name, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/create", args)
CreateSchema(a...; b...) = CreateSchema(a..., b)

"""
Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
"""
DisableDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/disable")
DisableDirectory(DirectoryArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/disable", args)
DisableDirectory(a...; b...) = DisableDirectory(a..., b)

"""
Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
"""
DeleteDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory")
DeleteDirectory(DirectoryArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory", args)
DeleteDirectory(a...; b...) = DeleteDirectory(a..., b)

"""
Returns policies attached to an object in pagination fashion.
"""
ListObjectPolicies(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/policy")
ListObjectPolicies(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/policy", args)
ListObjectPolicies(a...; b...) = ListObjectPolicies(a..., b)

"""
Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.
"""
DeleteFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/delete")
DeleteFacet(SchemaArn, Name, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/delete", args)
DeleteFacet(a...; b...) = DeleteFacet(a..., b)

"""
Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
"""
ListTagsForResource(ResourceArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/tags")
ListTagsForResource(ResourceArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/tags", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Deletes a given schema. Schemas in a development and published state can only be deleted. 
"""
DeleteSchema(SchemaArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema")
DeleteSchema(SchemaArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema", args)
DeleteSchema(a...; b...) = DeleteSchema(a..., b)

"""
Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.
"""
CreateFacet(SchemaArn, Name, ObjectType) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/create")
CreateFacet(SchemaArn, Name, ObjectType, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/create", args)
CreateFacet(a...; b...) = CreateFacet(a..., b)

"""
Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.
"""
DetachObject(DirectoryArn, ParentReference, LinkName) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/detach")
DetachObject(DirectoryArn, ParentReference, LinkName, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/detach", args)
DetachObject(a...; b...) = DetachObject(a..., b)

"""
Retrieves attributes within a facet that are associated with an object.
"""
GetObjectAttributes(DirectoryArn, ObjectReference, SchemaFacet, AttributeNames) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes/get")
GetObjectAttributes(DirectoryArn, ObjectReference, SchemaFacet, AttributeNames, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", args)
GetObjectAttributes(a...; b...) = GetObjectAttributes(a..., b)

"""
Retrieves a JSON representation of the schema. See JSON Schema Format for more information.
"""
GetSchemaAsJson(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/json")
GetSchemaAsJson(SchemaArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/json", args)
GetSchemaAsJson(a...; b...) = GetSchemaAsJson(a..., b)

"""
Removes the specified facet from the specified object.
"""
RemoveFacetFromObject(DirectoryArn, SchemaFacet, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete")
RemoveFacetFromObject(DirectoryArn, SchemaFacet, ObjectReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", args)
RemoveFacetFromObject(a...; b...) = RemoveFacetFromObject(a..., b)

"""
Attaches a policy object to a regular object. An object can have a limited number of attached policies.
"""
AttachPolicy(DirectoryArn, PolicyReference, ObjectReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/attach")
AttachPolicy(DirectoryArn, PolicyReference, ObjectReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/attach", args)
AttachPolicy(a...; b...) = AttachPolicy(a..., b)

"""
Retrieves the names of facets that exist in a schema.
"""
ListFacetNames(SchemaArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/list")
ListFacetNames(SchemaArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/list", args)
ListFacetNames(a...; b...) = ListFacetNames(a..., b)

"""
Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  
"""
UpdateFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet")
UpdateFacet(SchemaArn, Name, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet", args)
UpdateFacet(a...; b...) = UpdateFacet(a..., b)

"""
Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.
"""
UpgradePublishedSchema(DevelopmentSchemaArn, PublishedSchemaArn, MinorVersion) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished")
UpgradePublishedSchema(DevelopmentSchemaArn, PublishedSchemaArn, MinorVersion, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", args)
UpgradePublishedSchema(a...; b...) = UpgradePublishedSchema(a..., b)

"""
Lists all attributes that are associated with an object. 
"""
ListObjectAttributes(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes")
ListObjectAttributes(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes", args)
ListObjectAttributes(a...; b...) = ListObjectAttributes(a..., b)

"""
Publishes a development schema with a major version and a recommended minor version.
"""
PublishSchema(DevelopmentSchemaArn, Version) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/publish")
PublishSchema(DevelopmentSchemaArn, Version, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/publish", args)
PublishSchema(a...; b...) = PublishSchema(a..., b)

"""
Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   
"""
AttachObject(DirectoryArn, ParentReference, ChildReference, LinkName) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/attach")
AttachObject(DirectoryArn, ParentReference, ChildReference, LinkName, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/attach", args)
AttachObject(a...; b...) = AttachObject(a..., b)

"""
Updates a TypedLinkFacet. For more information, see Typed link.
"""
UpdateTypedLinkFacet(SchemaArn, Name, AttributeUpdates, IdentityAttributeOrder) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet")
UpdateTypedLinkFacet(SchemaArn, Name, AttributeUpdates, IdentityAttributeOrder, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", args)
UpdateTypedLinkFacet(a...; b...) = UpdateTypedLinkFacet(a..., b)

"""
Creates an index object. See Indexing for more information.
"""
CreateIndex(DirectoryArn, OrderedIndexedAttributeList, IsUnique) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index")
CreateIndex(DirectoryArn, OrderedIndexedAttributeList, IsUnique, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index", args)
CreateIndex(a...; b...) = CreateIndex(a..., b)

"""
Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
"""
ListObjectParentPaths(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parentpaths")
ListObjectParentPaths(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", args)
ListObjectParentPaths(a...; b...) = ListObjectParentPaths(a..., b)

"""
Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
"""
UpgradeAppliedSchema(PublishedSchemaArn, DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied")
UpgradeAppliedSchema(PublishedSchemaArn, DirectoryArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", args)
UpgradeAppliedSchema(a...; b...) = UpgradeAppliedSchema(a..., b)

"""
Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
"""
EnableDirectory(DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/enable")
EnableDirectory(DirectoryArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/enable", args)
EnableDirectory(a...; b...) = EnableDirectory(a..., b)

"""
Detaches a typed link from a specified source and target object. For more information, see Typed link.
"""
DetachTypedLink(DirectoryArn, TypedLinkSpecifier) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach")
DetachTypedLink(DirectoryArn, TypedLinkSpecifier, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", args)
DetachTypedLink(a...; b...) = DetachTypedLink(a..., b)

"""
Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed link.
"""
ListTypedLinkFacetAttributes(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes")
ListTypedLinkFacetAttributes(SchemaArn, Name, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", args)
ListTypedLinkFacetAttributes(a...; b...) = ListTypedLinkFacetAttributes(a..., b)

"""
Retrieves metadata about a directory.
"""
GetDirectory(DirectoryArn) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/get")
GetDirectory(DirectoryArn, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/get", args)
GetDirectory(a...; b...) = GetDirectory(a..., b)

"""
Lists parent objects that are associated with a given object in pagination fashion.
"""
ListObjectParents(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parent")
ListObjectParents(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parent", args)
ListObjectParents(a...; b...) = ListObjectParents(a..., b)

"""
Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.
"""
ApplySchema(PublishedSchemaArn, DirectoryArn) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/apply")
ApplySchema(PublishedSchemaArn, DirectoryArn, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/apply", args)
ApplySchema(a...; b...) = ApplySchema(a..., b)

"""
Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.
"""
PutSchemaFromJson(SchemaArn, Document) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/json")
PutSchemaFromJson(SchemaArn, Document, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/json", args)
PutSchemaFromJson(a...; b...) = PutSchemaFromJson(a..., b)

"""
Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 
"""
CreateObject(DirectoryArn, SchemaFacets) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object")
CreateObject(DirectoryArn, SchemaFacets, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object", args)
CreateObject(a...; b...) = CreateObject(a..., b)

"""
Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed link.
"""
GetTypedLinkFacetInformation(SchemaArn, Name) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get")
GetTypedLinkFacetInformation(SchemaArn, Name, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", args)
GetTypedLinkFacetInformation(a...; b...) = GetTypedLinkFacetInformation(a..., b)

"""
Deletes a TypedLinkFacet. For more information, see Typed link.
"""
DeleteTypedLinkFacet(SchemaArn, Name) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete")
DeleteTypedLinkFacet(SchemaArn, Name, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", args)
DeleteTypedLinkFacet(a...; b...) = DeleteTypedLinkFacet(a..., b)

"""
Detaches the specified object from the specified index.
"""
DetachFromIndex(DirectoryArn, IndexReference, TargetReference) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/detach")
DetachFromIndex(DirectoryArn, IndexReference, TargetReference, args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/detach", args)
DetachFromIndex(a...; b...) = DetachFromIndex(a..., b)

"""
Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.
"""
UpdateLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeUpdates) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update")
UpdateLinkAttributes(DirectoryArn, TypedLinkSpecifier, AttributeUpdates, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", args)
UpdateLinkAttributes(a...; b...) = UpdateLinkAttributes(a..., b)

"""
Returns all of the ObjectIdentifiers to which a given policy is attached.
"""
ListPolicyAttachments(DirectoryArn, PolicyReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/attachment")
ListPolicyAttachments(DirectoryArn, PolicyReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/attachment", args)
ListPolicyAttachments(a...; b...) = ListPolicyAttachments(a..., b)

"""
Retrieves metadata about an object.
"""
GetObjectInformation(DirectoryArn, ObjectReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/information")
GetObjectInformation(DirectoryArn, ObjectReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/information", args)
GetObjectInformation(a...; b...) = GetObjectInformation(a..., b)

"""
Lists objects attached to the specified index.
"""
ListIndex(DirectoryArn, IndexReference) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/index/targets")
ListIndex(DirectoryArn, IndexReference, args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/index/targets", args)
ListIndex(a...; b...) = ListIndex(a..., b)
