include("../AWSCorePrototypeServices.jl")
using .Services: clouddirectory

"""
Adds a new Facet to an object. An object can have more than one facet applied on it.

Required Parameters:
DirectoryArn, SchemaFacet, ObjectReference
"""
AddFacetToObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets", args)

"""
Attaches a typed link to a specified source and target object. For more information, see Typed link.

Required Parameters:
DirectoryArn, SourceObjectReference, TargetObjectReference, TypedLinkFacet, Attributes
"""
AttachTypedLink(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", args)

"""
Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
"""
ListPublishedSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published")

"""
Retrieves attributes that are associated with a typed link.

Required Parameters:
DirectoryArn, TypedLinkSpecifier, AttributeNames
"""
GetLinkAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", args)

"""
Performs all the read operations in a batch. 

Required Parameters:
DirectoryArn, Operations
"""
BatchRead(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/batchread", args)

"""
An API operation for adding tags to a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/add", args)

"""
Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.

Required Parameters:
DirectoryArn, ObjectReference
"""
DeleteObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/delete", args)

"""
Returns current applied schema version ARN, including the minor version in use.

Required Parameters:
SchemaArn
"""
GetAppliedSchemaVersion(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", args)

"""
Lists indices attached to the specified object.

Required Parameters:
DirectoryArn, TargetReference
"""
ListAttachedIndices(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/indices", args)

"""
Updates the schema name with a new name. Only development schema names can be updated.

Required Parameters:
SchemaArn, Name
"""
UpdateSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/update", args)

"""
Creates a TypedLinkFacet. For more information, see Typed link.

Required Parameters:
SchemaArn, Facet
"""
CreateTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", args)

"""
Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.

Required Parameters:
DirectoryArn
"""
ListAppliedSchemaArns(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/applied", args)

"""
Detaches a policy from an object.

Required Parameters:
DirectoryArn, PolicyReference, ObjectReference
"""
DetachPolicy(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/detach", args)

"""
Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.

Required Parameters:
DirectoryArn, ObjectReference
"""
LookupPolicy(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/lookup", args)

"""
Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed link.

Required Parameters:
SchemaArn
"""
ListTypedLinkFacetNames(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", args)

"""
Returns a paginated list of child objects that are associated with a given object.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListObjectChildren(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/children", args)

"""
Retrieves attributes attached to the facet.

Required Parameters:
SchemaArn, Name
"""
ListFacetAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/attributes", args)

"""
Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.

Required Parameters:
SchemaArn, Name
"""
GetFacet(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet", args)

"""
Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListOutgoingTypedLinks(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", args)

"""
Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListIncomingTypedLinks(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", args)

"""
An API operation for removing tags from a resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/remove", args)

"""
Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema.

Required Parameters:
Name, SchemaArn
"""
CreateDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/create", args)

"""
Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
"""
ListDevelopmentSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development")

"""
Updates a given object's attributes.

Required Parameters:
DirectoryArn, ObjectReference, AttributeUpdates
"""
UpdateObjectAttributes(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/update", args)

"""
Attaches the specified object to the specified index.

Required Parameters:
DirectoryArn, IndexReference, TargetReference
"""
AttachToIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/attach", args)

"""
Lists directories created within an account.
"""
ListDirectories() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list")

"""
Performs all the write operations in a batch. Either all the operations succeed or none.

Required Parameters:
DirectoryArn, Operations
"""
BatchWrite(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/batchwrite", args)

"""
Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   

Required Parameters:
Name
"""
CreateSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/create", args)

"""
Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.

Required Parameters:
DirectoryArn
"""
DisableDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/disable", args)

"""
Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.

Required Parameters:
DirectoryArn
"""
DeleteDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory", args)

"""
Returns policies attached to an object in pagination fashion.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListObjectPolicies(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/policy", args)

"""
Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.

Required Parameters:
SchemaArn, Name
"""
DeleteFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/delete", args)

"""
Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/tags", args)

"""
Deletes a given schema. Schemas in a development and published state can only be deleted. 

Required Parameters:
SchemaArn
"""
DeleteSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema", args)

"""
Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.

Required Parameters:
SchemaArn, Name, ObjectType
"""
CreateFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/create", args)

"""
Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.

Required Parameters:
DirectoryArn, ParentReference, LinkName
"""
DetachObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/detach", args)

"""
Retrieves attributes within a facet that are associated with an object.

Required Parameters:
DirectoryArn, ObjectReference, SchemaFacet, AttributeNames
"""
GetObjectAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", args)

"""
Retrieves a JSON representation of the schema. See JSON Schema Format for more information.

Required Parameters:
SchemaArn
"""
GetSchemaAsJson(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/json", args)

"""
Removes the specified facet from the specified object.

Required Parameters:
DirectoryArn, SchemaFacet, ObjectReference
"""
RemoveFacetFromObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", args)

"""
Attaches a policy object to a regular object. An object can have a limited number of attached policies.

Required Parameters:
DirectoryArn, PolicyReference, ObjectReference
"""
AttachPolicy(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/attach", args)

"""
Retrieves the names of facets that exist in a schema.

Required Parameters:
SchemaArn
"""
ListFacetNames(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/list", args)

"""
Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  

Required Parameters:
SchemaArn, Name
"""
UpdateFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet", args)

"""
Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.

Required Parameters:
DevelopmentSchemaArn, PublishedSchemaArn, MinorVersion
"""
UpgradePublishedSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", args)

"""
Lists all attributes that are associated with an object. 

Required Parameters:
DirectoryArn, ObjectReference
"""
ListObjectAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes", args)

"""
Publishes a development schema with a major version and a recommended minor version.

Required Parameters:
DevelopmentSchemaArn, Version
"""
PublishSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/publish", args)

"""
Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   

Required Parameters:
DirectoryArn, ParentReference, ChildReference, LinkName
"""
AttachObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/attach", args)

"""
Updates a TypedLinkFacet. For more information, see Typed link.

Required Parameters:
SchemaArn, Name, AttributeUpdates, IdentityAttributeOrder
"""
UpdateTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", args)

"""
Creates an index object. See Indexing for more information.

Required Parameters:
DirectoryArn, OrderedIndexedAttributeList, IsUnique
"""
CreateIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index", args)

"""
Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListObjectParentPaths(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", args)

"""
Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.

Required Parameters:
PublishedSchemaArn, DirectoryArn
"""
UpgradeAppliedSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", args)

"""
Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.

Required Parameters:
DirectoryArn
"""
EnableDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/enable", args)

"""
Detaches a typed link from a specified source and target object. For more information, see Typed link.

Required Parameters:
DirectoryArn, TypedLinkSpecifier
"""
DetachTypedLink(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", args)

"""
Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed link.

Required Parameters:
SchemaArn, Name
"""
ListTypedLinkFacetAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", args)

"""
Retrieves metadata about a directory.

Required Parameters:
DirectoryArn
"""
GetDirectory(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/get", args)

"""
Lists parent objects that are associated with a given object in pagination fashion.

Required Parameters:
DirectoryArn, ObjectReference
"""
ListObjectParents(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parent", args)

"""
Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.

Required Parameters:
PublishedSchemaArn, DirectoryArn
"""
ApplySchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/apply", args)

"""
Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.

Required Parameters:
SchemaArn, Document
"""
PutSchemaFromJson(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/json", args)

"""
Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 

Required Parameters:
DirectoryArn, SchemaFacets
"""
CreateObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object", args)

"""
Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed link.

Required Parameters:
SchemaArn, Name
"""
GetTypedLinkFacetInformation(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", args)

"""
Deletes a TypedLinkFacet. For more information, see Typed link.

Required Parameters:
SchemaArn, Name
"""
DeleteTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", args)

"""
Detaches the specified object from the specified index.

Required Parameters:
DirectoryArn, IndexReference, TargetReference
"""
DetachFromIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/detach", args)

"""
Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.

Required Parameters:
DirectoryArn, TypedLinkSpecifier, AttributeUpdates
"""
UpdateLinkAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", args)

"""
Returns all of the ObjectIdentifiers to which a given policy is attached.

Required Parameters:
DirectoryArn, PolicyReference
"""
ListPolicyAttachments(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/attachment", args)

"""
Retrieves metadata about an object.

Required Parameters:
DirectoryArn, ObjectReference
"""
GetObjectInformation(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/information", args)

"""
Lists objects attached to the specified index.

Required Parameters:
DirectoryArn, IndexReference
"""
ListIndex(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/index/targets", args)
