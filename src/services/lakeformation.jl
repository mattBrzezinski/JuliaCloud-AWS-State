include("../AWSCorePrototypeServices.jl")
using .Services: lakeformation

"""
    BatchGrantPermissions()

Batch operation to grant permissions to the principal.

Required Parameters
{
  "Entries": "A list of up to 20 entries for resource permissions to be granted by batch operation to the principal."
}

Optional Parameters
{
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
BatchGrantPermissions(args) = lakeformation("BatchGrantPermissions", args)

"""
    GetEffectivePermissionsForPath()

Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource for which you want to get permissions."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A continuation token, if this is not the first call to retrieve this list.",
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
GetEffectivePermissionsForPath(args) = lakeformation("GetEffectivePermissionsForPath", args)

"""
    ListPermissions()

Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A continuation token, if this is not the first call to retrieve this list.",
  "ResourceType": "Specifies a resource type to filter the permissions returned.",
  "Resource": "A resource where you will get a list of the principal permissions. This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.",
  "Principal": "Specifies a principal to filter the permissions returned.",
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""

ListPermissions() = lakeformation("ListPermissions")
ListPermissions(args) = lakeformation("ListPermissions", args)

"""
    RegisterResource()

Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy. The following request registers a new location and gives AWS Lake Formation permission to use the service-linked role to access that location.  ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true  If UseServiceLinkedRole is not set to true, you must provide or set the RoleArn:  arn:aws:iam::12345:role/my-data-access-role 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to register."
}

Optional Parameters
{
  "UseServiceLinkedRole": "Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation. For more information, see Using Service-Linked Roles for Lake Formation.",
  "RoleArn": "The identifier for the role that registers the resource."
}
"""
RegisterResource(args) = lakeformation("RegisterResource", args)

"""
    DescribeResource()

Retrieves the current data access role for the given resource registered in AWS Lake Formation.

Required Parameters
{
  "ResourceArn": "The resource ARN."
}
"""
DescribeResource(args) = lakeformation("DescribeResource", args)

"""
    GrantPermissions()

Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.

Required Parameters
{
  "Permissions": "The permissions granted to the principal on the resource. AWS Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. AWS Lake Formation requires that each principal be authorized to perform a specific task on AWS Lake Formation resources. ",
  "Resource": "The resource to which permissions are to be granted. Resources in AWS Lake Formation are the Data Catalog, databases, and tables.",
  "Principal": "The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN. Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. "
}

Optional Parameters
{
  "PermissionsWithGrantOption": "Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the Privileges.",
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
GrantPermissions(args) = lakeformation("GrantPermissions", args)

"""
    RevokePermissions()

Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.

Required Parameters
{
  "Permissions": "The permissions revoked to the principal on the resource. For information about permissions, see Security and Access Control to Metadata and Data.",
  "Resource": "The resource to which permissions are to be revoked.",
  "Principal": "The principal to be revoked permissions on the resource."
}

Optional Parameters
{
  "PermissionsWithGrantOption": "Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.",
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
RevokePermissions(args) = lakeformation("RevokePermissions", args)

"""
    PutDataLakeSettings()

Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see Granting Lake Formation Permissions. This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.

Required Parameters
{
  "DataLakeSettings": "A structure representing a list of AWS Lake Formation principals designated as data lake administrators."
}

Optional Parameters
{
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
PutDataLakeSettings(args) = lakeformation("PutDataLakeSettings", args)

"""
    GetDataLakeSettings()

Retrieves the list of the data lake administrators of a Lake Formation-managed data lake. 

Optional Parameters
{
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""

GetDataLakeSettings() = lakeformation("GetDataLakeSettings")
GetDataLakeSettings(args) = lakeformation("GetDataLakeSettings", args)

"""
    DeregisterResource()

Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to deregister."
}
"""
DeregisterResource(args) = lakeformation("DeregisterResource", args)

"""
    UpdateResource()

Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation. 

Required Parameters
{
  "ResourceArn": "The resource ARN.",
  "RoleArn": "The new role to use for the given resource registered in AWS Lake Formation."
}
"""
UpdateResource(args) = lakeformation("UpdateResource", args)

"""
    ListResources()

Lists the resources registered to be managed by the Data Catalog.

Optional Parameters
{
  "MaxResults": "The maximum number of resource results.",
  "NextToken": "A continuation token, if this is not the first call to retrieve these resources.",
  "FilterConditionList": "Any applicable row-level and/or column-level filtering conditions for the resources."
}
"""

ListResources() = lakeformation("ListResources")
ListResources(args) = lakeformation("ListResources", args)

"""
    BatchRevokePermissions()

Batch operation to revoke permissions from the principal.

Required Parameters
{
  "Entries": "A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal."
}

Optional Parameters
{
  "CatalogId": "The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. "
}
"""
BatchRevokePermissions(args) = lakeformation("BatchRevokePermissions", args)
