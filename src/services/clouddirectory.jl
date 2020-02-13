include("../AWSCorePrototypeServices.jl")
using .Services: clouddirectory

"""
    AddFacetToObject()

Adds a new Facet to an object. An object can have more than one facet applied on it.

Required Parameters
{
  "ObjectReference": "A reference to the object you are adding the specified facet to.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns.",
  "SchemaFacet": "Identifiers for the facet that you are adding to the object. See SchemaFacet for details."
}

Optional Parameters
{
  "ObjectAttributeList": "Attributes on the facet that you are adding to the object."
}
"""
AddFacetToObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets", args)

"""
    AttachTypedLink()

Attaches a typed link to a specified source and target object. For more information, see Typed link.

Required Parameters
{
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.",
  "TargetObjectReference": "Identifies the target object that the typed link will attach to.",
  "TypedLinkFacet": "Identifies the typed link facet that is associated with the typed link.",
  "Attributes": "A set of attributes that are associated with the typed link.",
  "SourceObjectReference": "Identifies the source object that the typed link will attach to."
}
"""
AttachTypedLink(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/attach", args)

"""
    ListPublishedSchemaArns()

Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token.",
  "SchemaArn": "The response for ListPublishedSchemaArns when this parameter is used will list all minor version ARNs for a major version."
}
"""
ListPublishedSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published")
ListPublishedSchemaArns(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/published", args)

"""
    GetLinkAttributes()

Retrieves attributes that are associated with a typed link.

Required Parameters
{
  "AttributeNames": "A list of attribute names whose values will be retrieved.",
  "TypedLinkSpecifier": "Allows a typed link specifier to be accepted as input.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see arns or Typed link."
}

Optional Parameters
{
  "ConsistencyLevel": "The consistency level at which to retrieve the attributes on a typed link."
}
"""
GetLinkAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", args)

"""
    BatchRead()

Performs all the read operations in a batch. 

Required Parameters
{
  "Operations": "A list of operations that are part of the batch.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory. For more information, see arns."
}

Optional Parameters
{
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object."
}
"""
BatchRead(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/batchread", args)

"""
    TagResource()

An API operation for adding tags to a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.",
  "Tags": "A list of tag key-value pairs."
}
"""
TagResource(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/add", args)

"""
    DeleteObject()

Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.

Required Parameters
{
  "ObjectReference": "A reference that identifies the object.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns."
}
"""
DeleteObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/delete", args)

"""
    GetAppliedSchemaVersion()

Returns current applied schema version ARN, including the minor version in use.

Required Parameters
{
  "SchemaArn": "The ARN of the applied schema."
}
"""
GetAppliedSchemaVersion(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/getappliedschema", args)

"""
    ListAttachedIndices()

Lists indices attached to the specified object.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory.",
  "TargetReference": "A reference to the object that has indices attached."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "ConsistencyLevel": "The consistency level to use for this operation.",
  "NextToken": "The pagination token."
}
"""
ListAttachedIndices(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/indices", args)

"""
    UpdateSchema()

Updates the schema name with a new name. Only development schema names can be updated.

Required Parameters
{
  "Name": "The name of the schema.",
  "SchemaArn": "The Amazon Resource Name (ARN) of the development schema. For more information, see arns."
}
"""
UpdateSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/update", args)

"""
    CreateTypedLinkFacet()

Creates a TypedLinkFacet. For more information, see Typed link.

Required Parameters
{
  "Facet": " Facet structure that is associated with the typed link facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}
"""
CreateTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/create", args)

"""
    ListAppliedSchemaArns()

Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory you are listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token.",
  "SchemaArn": "The response for ListAppliedSchemaArns when this parameter is used will list all minor version ARNs for a major version."
}
"""
ListAppliedSchemaArns(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/applied", args)

"""
    DetachPolicy()

Detaches a policy from an object.

Required Parameters
{
  "PolicyReference": "Reference that identifies the policy object.",
  "ObjectReference": "Reference that identifies the object whose policy object will be detached.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where both objects reside. For more information, see arns."
}
"""
DetachPolicy(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/detach", args)

"""
    LookupPolicy()

Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.

Required Parameters
{
  "ObjectReference": "Reference that identifies the object whose policies will be looked up.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "NextToken": "The token to request the next page of results."
}
"""
LookupPolicy(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/lookup", args)

"""
    ListTypedLinkFacetNames()

Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed link.

Required Parameters
{
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token."
}
"""
ListTypedLinkFacetNames(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/list", args)

"""
    ListObjectChildren()

Returns a paginated list of child objects that are associated with a given object.

Required Parameters
{
  "ObjectReference": "The reference that identifies the object for which child objects are being listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.",
  "NextToken": "The pagination token."
}
"""
ListObjectChildren(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/children", args)

"""
    ListFacetAttributes()

Retrieves attributes attached to the facet.

Required Parameters
{
  "Name": "The name of the facet whose attributes will be retrieved.",
  "SchemaArn": "The ARN of the schema where the facet resides."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token."
}
"""
ListFacetAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/attributes", args)

"""
    GetFacet()

Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.

Required Parameters
{
  "Name": "The name of the facet to retrieve.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the Facet. For more information, see arns."
}
"""
GetFacet(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet", args)

"""
    ListOutgoingTypedLinks()

Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.

Required Parameters
{
  "ObjectReference": "A reference that identifies the object whose attributes will be listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory where you want to list the typed links."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "ConsistencyLevel": "The consistency level to execute the request at.",
  "NextToken": "The pagination token.",
  "FilterAttributeRanges": "Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.",
  "FilterTypedLink": "Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls."
}
"""
ListOutgoingTypedLinks(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/outgoing", args)

"""
    ListIncomingTypedLinks()

Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed link.

Required Parameters
{
  "ObjectReference": "Reference that identifies the object whose attributes will be listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory where you want to list the typed links."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "ConsistencyLevel": "The consistency level to execute the request at.",
  "NextToken": "The pagination token.",
  "FilterAttributeRanges": "Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.",
  "FilterTypedLink": "Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls."
}
"""
ListIncomingTypedLinks(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/incoming", args)

"""
    UntagResource()

An API operation for removing tags from a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.",
  "TagKeys": "Keys of the tag that need to be removed from the resource."
}
"""
UntagResource(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/tags/remove", args)

"""
    CreateDirectory()

Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema.

Required Parameters
{
  "Name": "The name of the Directory. Should be unique per account, per region.",
  "SchemaArn": "The Amazon Resource Name (ARN) of the published schema that will be copied into the data Directory. For more information, see arns."
}
"""
CreateDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/create", args)

"""
    ListDevelopmentSchemaArns()

Retrieves each Amazon Resource Name (ARN) of schemas in the development state.

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token."
}
"""
ListDevelopmentSchemaArns() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development")
ListDevelopmentSchemaArns(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/development", args)

"""
    UpdateObjectAttributes()

Updates a given object's attributes.

Required Parameters
{
  "AttributeUpdates": "The attributes update structure.",
  "ObjectReference": "The reference that identifies the object.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns."
}
"""
UpdateObjectAttributes(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/update", args)

"""
    AttachToIndex()

Attaches the specified object to the specified index.

Required Parameters
{
  "IndexReference": "A reference to the index that you are attaching the object to.",
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory where the object and index exist.",
  "TargetReference": "A reference to the object that you are attaching to the index."
}
"""
AttachToIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/attach", args)

"""
    ListDirectories()

Lists directories created within an account.

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token.",
  "state": "The state of the directories in the list. Can be either Enabled, Disabled, or Deleted."
}
"""
ListDirectories() = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list")
ListDirectories(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/list", args)

"""
    BatchWrite()

Performs all the write operations in a batch. Either all the operations succeed or none.

Required Parameters
{
  "Operations": "A list of operations that are part of the batch.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory. For more information, see arns."
}
"""
BatchWrite(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/batchwrite", args)

"""
    CreateSchema()

Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   

Required Parameters
{
  "Name": "The name that is associated with the schema. This is unique to each account and in each region."
}
"""
CreateSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/create", args)

"""
    DisableDirectory()

Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory to disable."
}
"""
DisableDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/disable", args)

"""
    DeleteDirectory()

Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory to delete."
}
"""
DeleteDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory", args)

"""
    ListObjectPolicies()

Returns policies attached to an object in pagination fashion.

Required Parameters
{
  "ObjectReference": "Reference that identifies the object for which policies will be listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where objects reside. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.",
  "NextToken": "The pagination token."
}
"""
ListObjectPolicies(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/policy", args)

"""
    DeleteFacet()

Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.

Required Parameters
{
  "Name": "The name of the facet to delete.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the Facet. For more information, see arns."
}
"""
DeleteFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/delete", args)

"""
    ListTagsForResource()

Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories."
}

Optional Parameters
{
  "MaxResults": "The MaxResults parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.",
  "NextToken": "The pagination token. This is for future use. Currently pagination is not supported for tagging."
}
"""
ListTagsForResource(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/tags", args)

"""
    DeleteSchema()

Deletes a given schema. Schemas in a development and published state can only be deleted. 

Required Parameters
{
  "SchemaArn": "The Amazon Resource Name (ARN) of the development schema. For more information, see arns."
}
"""
DeleteSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema", args)

"""
    CreateFacet()

Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.

Required Parameters
{
  "Name": "The name of the Facet, which is unique for a given schema.",
  "ObjectType": "Specifies whether a given object created from this facet is of type node, leaf node, policy or index.   Node: Can have multiple children but one parent.     Leaf node: Cannot have children but can have multiple parents.     Policy: Allows you to store a policy document and policy type. For more information, see Policies.     Index: Can be created with the Index API.  ",
  "SchemaArn": "The schema ARN in which the new Facet will be created. For more information, see arns."
}

Optional Parameters
{
  "Attributes": "The attributes that are associated with the Facet."
}
"""
CreateFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet/create", args)

"""
    DetachObject()

Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.

Required Parameters
{
  "ParentReference": "The parent reference from which the object with the specified link name is detached.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where objects reside. For more information, see arns.",
  "LinkName": "The link name associated with the object that needs to be detached."
}
"""
DetachObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/detach", args)

"""
    GetObjectAttributes()

Retrieves attributes within a facet that are associated with an object.

Required Parameters
{
  "AttributeNames": "List of attribute names whose values will be retrieved.",
  "ObjectReference": "Reference that identifies the object whose attributes will be retrieved.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides.",
  "SchemaFacet": "Identifier for the facet whose attributes will be retrieved. See SchemaFacet for details."
}

Optional Parameters
{
  "ConsistencyLevel": "The consistency level at which to retrieve the attributes on an object."
}
"""
GetObjectAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes/get", args)

"""
    GetSchemaAsJson()

Retrieves a JSON representation of the schema. See JSON Schema Format for more information.

Required Parameters
{
  "SchemaArn": "The ARN of the schema to retrieve."
}
"""
GetSchemaAsJson(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/schema/json", args)

"""
    RemoveFacetFromObject()

Removes the specified facet from the specified object.

Required Parameters
{
  "ObjectReference": "A reference to the object to remove the facet from.",
  "DirectoryArn": "The ARN of the directory in which the object resides.",
  "SchemaFacet": "The facet to remove. See SchemaFacet for details."
}
"""
RemoveFacetFromObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/facets/delete", args)

"""
    AttachPolicy()

Attaches a policy object to a regular object. An object can have a limited number of attached policies.

Required Parameters
{
  "PolicyReference": "The reference that is associated with the policy object.",
  "ObjectReference": "The reference that identifies the object to which the policy will be attached.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where both objects reside. For more information, see arns."
}
"""
AttachPolicy(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/policy/attach", args)

"""
    ListFacetNames()

Retrieves the names of facets that exist in a schema.

Required Parameters
{
  "SchemaArn": "The Amazon Resource Name (ARN) to retrieve facet names from."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token."
}
"""
ListFacetNames(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/facet/list", args)

"""
    UpdateFacet()

Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  

Required Parameters
{
  "Name": "The name of the facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the Facet. For more information, see arns."
}

Optional Parameters
{
  "AttributeUpdates": "List of attributes that need to be updated in a given schema Facet. Each attribute is followed by AttributeAction, which specifies the type of update operation to perform. ",
  "ObjectType": "The object type that is associated with the facet. See CreateFacetRequest ObjectType for more details."
}
"""
UpdateFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/facet", args)

"""
    UpgradePublishedSchema()

Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.

Required Parameters
{
  "PublishedSchemaArn": "The ARN of the published schema to be upgraded.",
  "DevelopmentSchemaArn": "The ARN of the development schema with the changes used for the upgrade.",
  "MinorVersion": "Identifies the minor version of the published schema that will be created. This parameter is NOT optional."
}

Optional Parameters
{
  "DryRun": "Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false."
}
"""
UpgradePublishedSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradepublished", args)

"""
    ListObjectAttributes()

Lists all attributes that are associated with an object. 

Required Parameters
{
  "ObjectReference": "The reference that identifies the object whose attributes will be listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.",
  "NextToken": "The pagination token.",
  "FacetFilter": "Used to filter the list of object attributes that are associated with a certain facet."
}
"""
ListObjectAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/attributes", args)

"""
    PublishSchema()

Publishes a development schema with a major version and a recommended minor version.

Required Parameters
{
  "DevelopmentSchemaArn": "The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see arns.",
  "Version": "The major version under which the schema will be published. Schemas have both a major and minor version associated with them."
}

Optional Parameters
{
  "MinorVersion": "The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.",
  "Name": "The new name under which the schema will be published. If this is not provided, the development schema is considered."
}
"""
PublishSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/publish", args)

"""
    AttachObject()

Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   

Required Parameters
{
  "ParentReference": "The parent object reference.",
  "DirectoryArn": "Amazon Resource Name (ARN) that is associated with the Directory where both objects reside. For more information, see arns.",
  "LinkName": "The link name with which the child object is attached to the parent.",
  "ChildReference": "The child object reference to be attached to the object."
}
"""
AttachObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object/attach", args)

"""
    UpdateTypedLinkFacet()

Updates a TypedLinkFacet. For more information, see Typed link.

Required Parameters
{
  "AttributeUpdates": "Attributes update structure.",
  "IdentityAttributeOrder": "The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see Typed link.",
  "Name": "The unique name of the typed link facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}
"""
UpdateTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet", args)

"""
    CreateIndex()

Creates an index object. See Indexing for more information.

Required Parameters
{
  "IsUnique": "Indicates whether the attribute that is being indexed has unique values or not.",
  "DirectoryArn": "The ARN of the directory where the index should be created.",
  "OrderedIndexedAttributeList": "Specifies the attributes that should be indexed on. Currently only a single attribute is supported."
}

Optional Parameters
{
  "ParentReference": "A reference to the parent object that contains the index object.",
  "LinkName": "The name of the link between the parent object and the index object."
}
"""
CreateIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index", args)

"""
    ListObjectParentPaths()

Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.

Required Parameters
{
  "ObjectReference": "The reference that identifies the object whose parent paths are listed.",
  "DirectoryArn": "The ARN of the directory to which the parent path applies."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "NextToken": "The pagination token."
}
"""
ListObjectParentPaths(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parentpaths", args)

"""
    UpgradeAppliedSchema()

Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.

Required Parameters
{
  "PublishedSchemaArn": "The revision of the published schema to upgrade the directory to.",
  "DirectoryArn": "The ARN for the directory to which the upgraded schema will be applied."
}

Optional Parameters
{
  "DryRun": "Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional."
}
"""
UpgradeAppliedSchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", args)

"""
    EnableDirectory()

Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory to enable."
}
"""
EnableDirectory(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/directory/enable", args)

"""
    DetachTypedLink()

Detaches a typed link from a specified source and target object. For more information, see Typed link.

Required Parameters
{
  "TypedLinkSpecifier": "Used to accept a typed link specifier as input.",
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory where you want to detach the typed link."
}
"""
DetachTypedLink(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/detach", args)

"""
    ListTypedLinkFacetAttributes()

Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed link.

Required Parameters
{
  "Name": "The unique name of the typed link facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to retrieve.",
  "NextToken": "The pagination token."
}
"""
ListTypedLinkFacetAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", args)

"""
    GetDirectory()

Retrieves metadata about a directory.

Required Parameters
{
  "DirectoryArn": "The ARN of the directory."
}
"""
GetDirectory(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/directory/get", args)

"""
    ListObjectParents()

Lists parent objects that are associated with a given object in pagination fashion.

Required Parameters
{
  "ObjectReference": "The reference that identifies the object for which parent objects are being listed.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the object resides. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.",
  "NextToken": "The pagination token."
}
"""
ListObjectParents(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/parent", args)

"""
    ApplySchema()

Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.

Required Parameters
{
  "PublishedSchemaArn": "Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see arns.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory into which the schema is copied. For more information, see arns."
}
"""
ApplySchema(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/apply", args)

"""
    PutSchemaFromJson()

Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.

Required Parameters
{
  "Document": "The replacement JSON schema.",
  "SchemaArn": "The ARN of the schema to update."
}
"""
PutSchemaFromJson(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/schema/json", args)

"""
    CreateObject()

Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 

Required Parameters
{
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory in which the object will be created. For more information, see arns.",
  "SchemaFacets": "A list of schema facets to be associated with the object. Do not provide minor version components. See SchemaFacet for details."
}

Optional Parameters
{
  "ObjectAttributeList": "The attribute map whose attribute ARN contains the key and attribute value as the map value.",
  "ParentReference": "If specified, the parent reference to which this object will be attached.",
  "LinkName": "The name of link that is used to attach this object to a parent."
}
"""
CreateObject(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/object", args)

"""
    GetTypedLinkFacetInformation()

Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed link.

Required Parameters
{
  "Name": "The unique name of the typed link facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}
"""
GetTypedLinkFacetInformation(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/facet/get", args)

"""
    DeleteTypedLinkFacet()

Deletes a TypedLinkFacet. For more information, see Typed link.

Required Parameters
{
  "Name": "The unique name of the typed link facet.",
  "SchemaArn": "The Amazon Resource Name (ARN) that is associated with the schema. For more information, see arns."
}
"""
DeleteTypedLinkFacet(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", args)

"""
    DetachFromIndex()

Detaches the specified object from the specified index.

Required Parameters
{
  "IndexReference": "A reference to the index object.",
  "DirectoryArn": "The Amazon Resource Name (ARN) of the directory the index and object exist in.",
  "TargetReference": "A reference to the object being detached from the index."
}
"""
DetachFromIndex(args) = clouddirectory("PUT", "/amazonclouddirectory/2017-01-11/index/detach", args)

"""
    UpdateLinkAttributes()

Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.

Required Parameters
{
  "AttributeUpdates": "The attributes update structure.",
  "TypedLinkSpecifier": "Allows a typed link specifier to be accepted as input.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see arns or Typed link."
}
"""
UpdateLinkAttributes(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", args)

"""
    ListPolicyAttachments()

Returns all of the ObjectIdentifiers to which a given policy is attached.

Required Parameters
{
  "PolicyReference": "The reference that identifies the policy object.",
  "DirectoryArn": "The Amazon Resource Name (ARN) that is associated with the Directory where objects reside. For more information, see arns."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to be retrieved in a single call. This is an approximate number.",
  "ConsistencyLevel": "Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.",
  "NextToken": "The pagination token."
}
"""
ListPolicyAttachments(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/policy/attachment", args)

"""
    GetObjectInformation()

Retrieves metadata about an object.

Required Parameters
{
  "ObjectReference": "A reference to the object.",
  "DirectoryArn": "The ARN of the directory being retrieved."
}

Optional Parameters
{
  "ConsistencyLevel": "The consistency level at which to retrieve the object information."
}
"""
GetObjectInformation(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/object/information", args)

"""
    ListIndex()

Lists objects attached to the specified index.

Required Parameters
{
  "IndexReference": "The reference to the index to list.",
  "DirectoryArn": "The ARN of the directory that the index exists in."
}

Optional Parameters
{
  "MaxResults": "The maximum number of objects in a single page to retrieve from the index during a request. For more information, see AWS Directory Service Limits.",
  "ConsistencyLevel": "The consistency level to execute the request at.",
  "RangesOnIndexedValues": "Specifies the ranges of indexed values that you want to query.",
  "NextToken": "The pagination token."
}
"""
ListIndex(args) = clouddirectory("POST", "/amazonclouddirectory/2017-01-11/index/targets", args)
