include("../AWSCorePrototypeServices.jl")
using .Services: workdocs

"""
Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.

Required Parameters:
OrganizationId, Endpoint, Protocol, SubscriptionType
"""
CreateNotificationSubscription(args) = workdocs("POST", "/api/v1/organizations/{OrganizationId}/subscriptions", args)

"""
Deletes custom metadata from the specified resource.

Required Parameters:
ResourceId
"""
DeleteCustomMetadata(args) = workdocs("DELETE", "/api/v1/resources/{ResourceId}/customMetadata", args)

"""
Lists the specified notification subscriptions.

Required Parameters:
OrganizationId
"""
DescribeNotificationSubscriptions(args) = workdocs("GET", "/api/v1/organizations/{OrganizationId}/subscriptions", args)

"""
Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
"""
GetResources() = workdocs("GET", "/api/v1/resources")

"""
Deletes the specified subscription from the specified organization.

Required Parameters:
SubscriptionId, OrganizationId
"""
DeleteNotificationSubscription(args) = workdocs("DELETE", "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", args)

"""
Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.

Required Parameters:
Username, GivenName, Surname, Password
"""
CreateUser(args) = workdocs("POST", "/api/v1/users", args)

"""
Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.

Required Parameters:
AuthenticationToken
"""
DescribeRootFolders(args) = workdocs("GET", "/api/v1/me/root", args)

"""
Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.

Required Parameters:
ParentFolderId
"""
InitiateDocumentVersionUpload(args) = workdocs("POST", "/api/v1/documents", args)

"""
Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.

Required Parameters:
DocumentId
"""
GetDocumentPath(args) = workdocs("GET", "/api/v1/documents/{DocumentId}/path", args)

"""
Deletes the contents of the specified folder.

Required Parameters:
FolderId
"""
DeleteFolderContents(args) = workdocs("DELETE", "/api/v1/folders/{FolderId}/contents", args)

"""
Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.

Required Parameters:
UserId
"""
UpdateUser(args) = workdocs("PATCH", "/api/v1/users/{UserId}", args)

"""
Creates a folder with the specified name and parent folder.

Required Parameters:
ParentFolderId
"""
CreateFolder(args) = workdocs("POST", "/api/v1/folders", args)

"""
Deletes the specified list of labels from a resource.

Required Parameters:
ResourceId
"""
DeleteLabels(args) = workdocs("DELETE", "/api/v1/resources/{ResourceId}/labels", args)

"""
Adds a new comment to the specified document version.

Required Parameters:
DocumentId, VersionId, Text
"""
CreateComment(args) = workdocs("POST", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", args)

"""
Adds the specified list of labels to the given resource (a document or folder)

Required Parameters:
ResourceId, Labels
"""
CreateLabels(args) = workdocs("PUT", "/api/v1/resources/{ResourceId}/labels", args)

"""
Removes all the permissions from the specified resource.

Required Parameters:
ResourceId
"""
RemoveAllResourcePermissions(args) = workdocs("DELETE", "/api/v1/resources/{ResourceId}/permissions", args)

"""
Retrieves details of a document.

Required Parameters:
DocumentId
"""
GetDocument(args) = workdocs("GET", "/api/v1/documents/{DocumentId}", args)

"""
Deletes the specified user from a Simple AD or Microsoft AD directory.

Required Parameters:
UserId
"""
DeleteUser(args) = workdocs("DELETE", "/api/v1/users/{UserId}", args)

"""
Retrieves version metadata for the specified document.

Required Parameters:
DocumentId, VersionId
"""
GetDocumentVersion(args) = workdocs("GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

"""
Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.

Required Parameters:
FolderId
"""
UpdateFolder(args) = workdocs("PATCH", "/api/v1/folders/{FolderId}", args)

"""
Retrieves the metadata of the specified folder.

Required Parameters:
FolderId
"""
GetFolder(args) = workdocs("GET", "/api/v1/folders/{FolderId}", args)

"""
Describes the groups specified by the query. Groups are defined by the underlying Active Directory.

Required Parameters:
SearchQuery
"""
DescribeGroups(args) = workdocs("GET", "/api/v1/groups", args)

"""
Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload. 

Required Parameters:
DocumentId, VersionId
"""
UpdateDocumentVersion(args) = workdocs("PATCH", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

"""
Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.

Required Parameters:
FolderId
"""
GetFolderPath(args) = workdocs("GET", "/api/v1/folders/{FolderId}/path", args)

"""
Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.

Required Parameters:
DocumentId, VersionId
"""
AbortDocumentVersionUpload(args) = workdocs("DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}", args)

"""
List all the comments for the specified document version.

Required Parameters:
DocumentId, VersionId
"""
DescribeComments(args) = workdocs("GET", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", args)

"""
Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.

Required Parameters:
ResourceId, Principals
"""
AddResourcePermissions(args) = workdocs("POST", "/api/v1/resources/{ResourceId}/permissions", args)

"""
Describes the user activities in a specified time period.
"""
DescribeActivities() = workdocs("GET", "/api/v1/activities")

"""
Permanently deletes the specified folder and its contents.

Required Parameters:
FolderId
"""
DeleteFolder(args) = workdocs("DELETE", "/api/v1/folders/{FolderId}", args)

"""
Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.

Required Parameters:
FolderId
"""
DescribeFolderContents(args) = workdocs("GET", "/api/v1/folders/{FolderId}/contents", args)

"""
Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.

Required Parameters:
DocumentId
"""
UpdateDocument(args) = workdocs("PATCH", "/api/v1/documents/{DocumentId}", args)

"""
Activates the specified user. Only active users can access Amazon WorkDocs.

Required Parameters:
UserId
"""
ActivateUser(args) = workdocs("POST", "/api/v1/users/{UserId}/activation", args)

"""
Permanently deletes the specified document and its associated metadata.

Required Parameters:
DocumentId
"""
DeleteDocument(args) = workdocs("DELETE", "/api/v1/documents/{DocumentId}", args)

"""
Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.

Required Parameters:
AuthenticationToken
"""
GetCurrentUser(args) = workdocs("GET", "/api/v1/me", args)

"""
Adds one or more custom properties to the specified resource (a folder, document, or version).

Required Parameters:
ResourceId, CustomMetadata
"""
CreateCustomMetadata(args) = workdocs("PUT", "/api/v1/resources/{ResourceId}/customMetadata", args)

"""
Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.

Required Parameters:
UserId
"""
DeactivateUser(args) = workdocs("DELETE", "/api/v1/users/{UserId}/activation", args)

"""
Deletes the specified comment from the document version.

Required Parameters:
DocumentId, VersionId, CommentId
"""
DeleteComment(args) = workdocs("DELETE", "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", args)

"""
Describes the permissions of a specified resource.

Required Parameters:
ResourceId
"""
DescribeResourcePermissions(args) = workdocs("GET", "/api/v1/resources/{ResourceId}/permissions", args)

"""
Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
"""
DescribeUsers() = workdocs("GET", "/api/v1/users")

"""
Removes the permission for the specified principal from the specified resource.

Required Parameters:
ResourceId, PrincipalId
"""
RemoveResourcePermission(args) = workdocs("DELETE", "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", args)

"""
Retrieves the document versions for the specified document. By default, only active versions are returned.

Required Parameters:
DocumentId
"""
DescribeDocumentVersions(args) = workdocs("GET", "/api/v1/documents/{DocumentId}/versions", args)
