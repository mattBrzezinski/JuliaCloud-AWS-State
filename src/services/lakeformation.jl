include("../AWSCorePrototypeServices.jl")
using .Services: lakeformation

"""
Batch operation to grant permissions to the principal.

Required Parameters:
Entries
"""
BatchGrantPermissions(args) = lakeformation("BatchGrantPermissions", args)

"""
Returns the permissions for a specified table or database resource located at a path in Amazon S3.

Required Parameters:
ResourceArn
"""
GetEffectivePermissionsForPath(args) = lakeformation("GetEffectivePermissionsForPath", args)

"""
Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
"""
ListPermissions() = lakeformation("ListPermissions")

"""
Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.

Required Parameters:
ResourceArn
"""
RegisterResource(args) = lakeformation("RegisterResource", args)

"""
Retrieves the current data access role for the given resource registered in AWS Lake Formation.

Required Parameters:
ResourceArn
"""
DescribeResource(args) = lakeformation("DescribeResource", args)

"""
Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.

Required Parameters:
Principal, Resource, Permissions
"""
GrantPermissions(args) = lakeformation("GrantPermissions", args)

"""
Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.

Required Parameters:
Principal, Resource, Permissions
"""
RevokePermissions(args) = lakeformation("RevokePermissions", args)

"""
The AWS Lake Formation principal.

Required Parameters:
DataLakeSettings
"""
PutDataLakeSettings(args) = lakeformation("PutDataLakeSettings", args)

"""
The AWS Lake Formation principal.
"""
GetDataLakeSettings() = lakeformation("GetDataLakeSettings")

"""
Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.

Required Parameters:
ResourceArn
"""
DeregisterResource(args) = lakeformation("DeregisterResource", args)

"""
Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation. 

Required Parameters:
RoleArn, ResourceArn
"""
UpdateResource(args) = lakeformation("UpdateResource", args)

"""
Lists the resources registered to be managed by the Data Catalog.
"""
ListResources() = lakeformation("ListResources")

"""
Batch operation to revoke permissions from the principal.

Required Parameters:
Entries
"""
BatchRevokePermissions(args) = lakeformation("BatchRevokePermissions", args)
