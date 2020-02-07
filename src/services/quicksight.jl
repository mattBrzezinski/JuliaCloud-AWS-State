include("../AWSCorePrototypeServices.jl")
using .Services: quicksight

"""
Lists member users in a group.
"""
ListGroupMemberships(GroupName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members")
ListGroupMemberships(GroupName, AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members", args)
ListGroupMemberships(a...; b...) = ListGroupMemberships(a..., b)

"""
Removes a user group from Amazon QuickSight. 
"""
DeleteGroup(GroupName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")
DeleteGroup(GroupName, AwsAccountId, Namespace, args) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName", args)
DeleteGroup(a...; b...) = DeleteGroup(a..., b)

"""
Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard. A template is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.
"""
CreateTemplate(AwsAccountId, TemplateId, SourceEntity) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId")
CreateTemplate(AwsAccountId, TemplateId, SourceEntity, args) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId", args)
CreateTemplate(a...; b...) = CreateTemplate(a..., b)

"""
Provides a summary for a dashboard.
"""
DescribeDashboard(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId")
DescribeDashboard(AwsAccountId, DashboardId, args) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId", args)
DescribeDashboard(a...; b...) = DescribeDashboard(a..., b)

"""
Describes a dataset. 
"""
DescribeDataSet(AwsAccountId, DataSetId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId")
DescribeDataSet(AwsAccountId, DataSetId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId", args)
DescribeDataSet(a...; b...) = DescribeDataSet(a..., b)

"""
Updates the template alias of a template.
"""
UpdateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")
UpdateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber, args) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName", args)
UpdateTemplateAlias(a...; b...) = UpdateTemplateAlias(a..., b)

"""
Assigns one or more tags (key-value pairs) to the specified QuickSight resource.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template.  Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:   You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.   QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.  
"""
TagResource(ResourceArn, Tags) = quicksight("POST", "/resources/$ResourceArn/tags")
TagResource(ResourceArn, Tags, args) = quicksight("POST", "/resources/$ResourceArn/tags", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. 
"""
CreateIAMPolicyAssignment(AwsAccountId, AssignmentName, AssignmentStatus, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/")
CreateIAMPolicyAssignment(AwsAccountId, AssignmentName, AssignmentStatus, Namespace, args) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/", args)
CreateIAMPolicyAssignment(a...; b...) = CreateIAMPolicyAssignment(a..., b)

"""
Creates and starts a new SPICE ingestion on a dataset Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see How do I create an IAM policy to control access to Amazon EC2 resources using tags? in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.
"""
CreateIngestion(DataSetId, IngestionId, AwsAccountId) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")
CreateIngestion(DataSetId, IngestionId, AwsAccountId, args) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId", args)
CreateIngestion(a...; b...) = CreateIngestion(a..., b)

"""
Creates a dashboard from a template. To first create a template, see the CreateTemplate API operation. A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. The CreateDashboard, DescribeDashboard, and ListDashboardsByUser API operations act on the dashboard entity. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.
"""
CreateDashboard(AwsAccountId, DashboardId, Name, SourceEntity) = quicksight("POST", "/accounts/$AwsAccountId/dashboards/$DashboardId")
CreateDashboard(AwsAccountId, DashboardId, Name, SourceEntity, args) = quicksight("POST", "/accounts/$AwsAccountId/dashboards/$DashboardId", args)
CreateDashboard(a...; b...) = CreateDashboard(a..., b)

"""
Generates a server-side embeddable URL and authorization code. For this process to work properly, first configure the dashboards and user permissions. For more information, see Embedding Amazon QuickSight Dashboards in the Amazon QuickSight User Guide or Embedding Amazon QuickSight Dashboards in the Amazon QuickSight API Reference. Currently, you can use GetDashboardEmbedURL only from the server, not from the user’s browser.
"""
GetDashboardEmbedUrl(AwsAccountId, DashboardId, IdentityType) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/embed-url")
GetDashboardEmbedUrl(AwsAccountId, DashboardId, IdentityType, args) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/embed-url", args)
GetDashboardEmbedUrl(a...; b...) = GetDashboardEmbedUrl(a..., b)

"""
Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.
"""
UpdateIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName")
UpdateIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace, args) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName", args)
UpdateIAMPolicyAssignment(a...; b...) = UpdateIAMPolicyAssignment(a..., b)

"""
Updates a data source.
"""
UpdateDataSource(AwsAccountId, DataSourceId, Name) = quicksight("PUT", "/accounts/$AwsAccountId/data-sources/$DataSourceId")
UpdateDataSource(AwsAccountId, DataSourceId, Name, args) = quicksight("PUT", "/accounts/$AwsAccountId/data-sources/$DataSourceId", args)
UpdateDataSource(a...; b...) = UpdateDataSource(a..., b)

"""
Lists all the versions of the templates in the current Amazon QuickSight account.
"""
ListTemplateVersions(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/versions")
ListTemplateVersions(AwsAccountId, TemplateId, args) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/versions", args)
ListTemplateVersions(a...; b...) = ListTemplateVersions(a..., b)

"""
Adds an Amazon QuickSight user to an Amazon QuickSight group. 
"""
CreateGroupMembership(MemberName, GroupName, AwsAccountId, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName")
CreateGroupMembership(MemberName, GroupName, AwsAccountId, Namespace, args) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName", args)
CreateGroupMembership(a...; b...) = CreateGroupMembership(a..., b)

"""
Describes a template's metadata.
"""
DescribeTemplate(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId")
DescribeTemplate(AwsAccountId, TemplateId, args) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId", args)
DescribeTemplate(a...; b...) = DescribeTemplate(a..., b)

"""
Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.
"""
DeleteTemplateAlias(AwsAccountId, TemplateId, AliasName) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")
DeleteTemplateAlias(AwsAccountId, TemplateId, AliasName, args) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName", args)
DeleteTemplateAlias(a...; b...) = DeleteTemplateAlias(a..., b)

"""
Deletes the data source permanently. This action breaks all the datasets that reference the deleted data source.
"""
DeleteDataSource(AwsAccountId, DataSourceId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sources/$DataSourceId")
DeleteDataSource(AwsAccountId, DataSourceId, args) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sources/$DataSourceId", args)
DeleteDataSource(a...; b...) = DeleteDataSource(a..., b)

"""
Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. 
"""
RegisterUser(IdentityType, Email, UserRole, AwsAccountId, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/users")
RegisterUser(IdentityType, Email, UserRole, AwsAccountId, Namespace, args) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/users", args)
RegisterUser(a...; b...) = RegisterUser(a..., b)

"""
Updates the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
"""
UpdateDataSetPermissions(AwsAccountId, DataSetId) = quicksight("POST", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions")
UpdateDataSetPermissions(AwsAccountId, DataSetId, args) = quicksight("POST", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions", args)
UpdateDataSetPermissions(a...; b...) = UpdateDataSetPermissions(a..., b)

"""
Updates the permissions to a data source.
"""
UpdateDataSourcePermissions(AwsAccountId, DataSourceId) = quicksight("POST", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions")
UpdateDataSourcePermissions(AwsAccountId, DataSourceId, args) = quicksight("POST", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions", args)
UpdateDataSourcePermissions(a...; b...) = UpdateDataSourcePermissions(a..., b)

"""
Updates a template from an existing Amazon QuickSight analysis or another template.
"""
UpdateTemplate(AwsAccountId, TemplateId, SourceEntity) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId")
UpdateTemplate(AwsAccountId, TemplateId, SourceEntity, args) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId", args)
UpdateTemplate(a...; b...) = UpdateTemplate(a..., b)

"""
Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. 
"""
DeleteUser(UserName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")
DeleteUser(UserName, AwsAccountId, Namespace, args) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName", args)
DeleteUser(a...; b...) = DeleteUser(a..., b)

"""
Removes a tag or tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = quicksight("DELETE", "/resources/$ResourceArn/tags")
UntagResource(ResourceArn, TagKeys, args) = quicksight("DELETE", "/resources/$ResourceArn/tags", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Creates a dataset.
"""
CreateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode) = quicksight("POST", "/accounts/$AwsAccountId/data-sets")
CreateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode, args) = quicksight("POST", "/accounts/$AwsAccountId/data-sets", args)
CreateDataSet(a...; b...) = CreateDataSet(a..., b)

"""
Lists data sources in current AWS Region that belong to this AWS account.
"""
ListDataSources(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources")
ListDataSources(AwsAccountId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sources", args)
ListDataSources(a...; b...) = ListDataSources(a..., b)

"""
Describes a SPICE ingestion.
"""
DescribeIngestion(AwsAccountId, DataSetId, IngestionId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")
DescribeIngestion(AwsAccountId, DataSetId, IngestionId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId", args)
DescribeIngestion(a...; b...) = DescribeIngestion(a..., b)

"""
Updates a dashboard in an AWS account.
"""
UpdateDashboard(AwsAccountId, DashboardId, Name, SourceEntity) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId")
UpdateDashboard(AwsAccountId, DashboardId, Name, SourceEntity, args) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId", args)
UpdateDashboard(a...; b...) = UpdateDashboard(a..., b)

"""
Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.
"""
CreateGroup(GroupName, AwsAccountId, Namespace) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/groups")
CreateGroup(GroupName, AwsAccountId, Namespace, args) = quicksight("POST", "/accounts/$AwsAccountId/namespaces/$Namespace/groups", args)
CreateGroup(a...; b...) = CreateGroup(a..., b)

"""
Creates a data source.
"""
CreateDataSource(AwsAccountId, DataSourceId, Name, Type) = quicksight("POST", "/accounts/$AwsAccountId/data-sources")
CreateDataSource(AwsAccountId, DataSourceId, Name, Type, args) = quicksight("POST", "/accounts/$AwsAccountId/data-sources", args)
CreateDataSource(a...; b...) = CreateDataSource(a..., b)

"""
Describes read and write permissions on a template.
"""
DescribeTemplatePermissions(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/permissions")
DescribeTemplatePermissions(AwsAccountId, TemplateId, args) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/permissions", args)
DescribeTemplatePermissions(a...; b...) = DescribeTemplatePermissions(a..., b)

"""
Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
"""
ListDataSets(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets")
ListDataSets(AwsAccountId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sets", args)
ListDataSets(a...; b...) = ListDataSets(a..., b)

"""
Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.
"""
ListUserGroups(UserName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/groups")
ListUserGroups(UserName, AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/groups", args)
ListUserGroups(a...; b...) = ListUserGroups(a..., b)

"""
Lists all the aliases of a template.
"""
ListTemplateAliases(AwsAccountId, TemplateId) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases")
ListTemplateAliases(AwsAccountId, TemplateId, args) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases", args)
ListTemplateAliases(a...; b...) = ListTemplateAliases(a..., b)

"""
Deletes a dashboard.
"""
DeleteDashboard(AwsAccountId, DashboardId) = quicksight("DELETE", "/accounts/$AwsAccountId/dashboards/$DashboardId")
DeleteDashboard(AwsAccountId, DashboardId, args) = quicksight("DELETE", "/accounts/$AwsAccountId/dashboards/$DashboardId", args)
DeleteDashboard(a...; b...) = DeleteDashboard(a..., b)

"""
Lists the tags assigned to a resource.
"""
ListTagsForResource(ResourceArn) = quicksight("GET", "/resources/$ResourceArn/tags")
ListTagsForResource(ResourceArn, args) = quicksight("GET", "/resources/$ResourceArn/tags", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Updates an Amazon QuickSight user.
"""
UpdateUser(UserName, AwsAccountId, Namespace, Email, Role) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")
UpdateUser(UserName, AwsAccountId, Namespace, Email, Role, args) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName", args)
UpdateUser(a...; b...) = UpdateUser(a..., b)

"""
Updates the published version of a dashboard.
"""
UpdateDashboardPublishedVersion(AwsAccountId, DashboardId, VersionNumber) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions/$VersionNumber")
UpdateDashboardPublishedVersion(AwsAccountId, DashboardId, VersionNumber, args) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions/$VersionNumber", args)
UpdateDashboardPublishedVersion(a...; b...) = UpdateDashboardPublishedVersion(a..., b)

"""
Lists the history of SPICE ingestions for a dataset.
"""
ListIngestions(DataSetId, AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions")
ListIngestions(DataSetId, AwsAccountId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions", args)
ListIngestions(a...; b...) = ListIngestions(a..., b)

"""
Deletes a user identified by its principal ID. 
"""
DeleteUserByPrincipalId(PrincipalId, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/user-principals/$PrincipalId")
DeleteUserByPrincipalId(PrincipalId, AwsAccountId, Namespace, args) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/user-principals/$PrincipalId", args)
DeleteUserByPrincipalId(a...; b...) = DeleteUserByPrincipalId(a..., b)

"""
Deletes a template.
"""
DeleteTemplate(AwsAccountId, TemplateId) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId")
DeleteTemplate(AwsAccountId, TemplateId, args) = quicksight("DELETE", "/accounts/$AwsAccountId/templates/$TemplateId", args)
DeleteTemplate(a...; b...) = DeleteTemplate(a..., b)

"""
Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.
"""
ListIAMPolicyAssignmentsForUser(AwsAccountId, UserName, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/iam-policy-assignments")
ListIAMPolicyAssignmentsForUser(AwsAccountId, UserName, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName/iam-policy-assignments", args)
ListIAMPolicyAssignmentsForUser(a...; b...) = ListIAMPolicyAssignmentsForUser(a..., b)

"""
Removes a user from a group so that the user is no longer a member of the group.
"""
DeleteGroupMembership(MemberName, GroupName, AwsAccountId, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName")
DeleteGroupMembership(MemberName, GroupName, AwsAccountId, Namespace, args) = quicksight("DELETE", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName/members/$MemberName", args)
DeleteGroupMembership(a...; b...) = DeleteGroupMembership(a..., b)

"""
Describes read and write permissions for a dashboard.
"""
DescribeDashboardPermissions(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions")
DescribeDashboardPermissions(AwsAccountId, DashboardId, args) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions", args)
DescribeDashboardPermissions(a...; b...) = DescribeDashboardPermissions(a..., b)

"""
Returns a list of all of the Amazon QuickSight users belonging to this account. 
"""
ListUsers(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users")
ListUsers(AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users", args)
ListUsers(a...; b...) = ListUsers(a..., b)

"""
Deletes a dataset.
"""
DeleteDataSet(AwsAccountId, DataSetId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId")
DeleteDataSet(AwsAccountId, DataSetId, args) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId", args)
DeleteDataSet(a...; b...) = DeleteDataSet(a..., b)

"""
Deletes an existing IAM policy assignment.
"""
DeleteIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("DELETE", "/accounts/$AwsAccountId/namespace/$Namespace/iam-policy-assignments/$AssignmentName")
DeleteIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace, args) = quicksight("DELETE", "/accounts/$AwsAccountId/namespace/$Namespace/iam-policy-assignments/$AssignmentName", args)
DeleteIAMPolicyAssignment(a...; b...) = DeleteIAMPolicyAssignment(a..., b)

"""
Lists all user groups in Amazon QuickSight. 
"""
ListGroups(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups")
ListGroups(AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups", args)
ListGroups(a...; b...) = ListGroups(a..., b)

"""
Lists all the templates in the current Amazon QuickSight account.
"""
ListTemplates(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/templates")
ListTemplates(AwsAccountId, args) = quicksight("GET", "/accounts/$AwsAccountId/templates", args)
ListTemplates(a...; b...) = ListTemplates(a..., b)

"""
Returns information about a user, given the user name. 
"""
DescribeUser(UserName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName")
DescribeUser(UserName, AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/users/$UserName", args)
DescribeUser(a...; b...) = DescribeUser(a..., b)

"""
Updates a dataset.
"""
UpdateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId")
UpdateDataSet(AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode, args) = quicksight("PUT", "/accounts/$AwsAccountId/data-sets/$DataSetId", args)
UpdateDataSet(a...; b...) = UpdateDataSet(a..., b)

"""
Describes an existing IAM policy assignment, as specified by the assignment name.
"""
DescribeIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName")
DescribeIAMPolicyAssignment(AwsAccountId, AssignmentName, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments/$AssignmentName", args)
DescribeIAMPolicyAssignment(a...; b...) = DescribeIAMPolicyAssignment(a..., b)

"""
Updates read and write permissions on a dashboard.
"""
UpdateDashboardPermissions(AwsAccountId, DashboardId) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions")
UpdateDashboardPermissions(AwsAccountId, DashboardId, args) = quicksight("PUT", "/accounts/$AwsAccountId/dashboards/$DashboardId/permissions", args)
UpdateDashboardPermissions(a...; b...) = UpdateDashboardPermissions(a..., b)

"""
Creates a template alias for a template.
"""
CreateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")
CreateTemplateAlias(AwsAccountId, TemplateId, AliasName, TemplateVersionNumber, args) = quicksight("POST", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName", args)
CreateTemplateAlias(a...; b...) = CreateTemplateAlias(a..., b)

"""
Describes the resource permissions for a data source.
"""
DescribeDataSourcePermissions(AwsAccountId, DataSourceId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions")
DescribeDataSourcePermissions(AwsAccountId, DataSourceId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId/permissions", args)
DescribeDataSourcePermissions(a...; b...) = DescribeDataSourcePermissions(a..., b)

"""
Lists IAM policy assignments in the current Amazon QuickSight account.
"""
ListIAMPolicyAssignments(AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments")
ListIAMPolicyAssignments(AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/iam-policy-assignments", args)
ListIAMPolicyAssignments(a...; b...) = ListIAMPolicyAssignments(a..., b)

"""
Describes the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
"""
DescribeDataSetPermissions(AwsAccountId, DataSetId) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions")
DescribeDataSetPermissions(AwsAccountId, DataSetId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sets/$DataSetId/permissions", args)
DescribeDataSetPermissions(a...; b...) = DescribeDataSetPermissions(a..., b)

"""
Describes the template alias for a template.
"""
DescribeTemplateAlias(AwsAccountId, TemplateId, AliasName) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName")
DescribeTemplateAlias(AwsAccountId, TemplateId, AliasName, args) = quicksight("GET", "/accounts/$AwsAccountId/templates/$TemplateId/aliases/$AliasName", args)
DescribeTemplateAlias(a...; b...) = DescribeTemplateAlias(a..., b)

"""
Describes a data source.
"""
DescribeDataSource(AwsAccountId, DataSourceId) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId")
DescribeDataSource(AwsAccountId, DataSourceId, args) = quicksight("GET", "/accounts/$AwsAccountId/data-sources/$DataSourceId", args)
DescribeDataSource(a...; b...) = DescribeDataSource(a..., b)

"""
Lists all the versions of the dashboards in the QuickSight subscription.
"""
ListDashboardVersions(AwsAccountId, DashboardId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions")
ListDashboardVersions(AwsAccountId, DashboardId, args) = quicksight("GET", "/accounts/$AwsAccountId/dashboards/$DashboardId/versions", args)
ListDashboardVersions(a...; b...) = ListDashboardVersions(a..., b)

"""
Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). 
"""
DescribeGroup(GroupName, AwsAccountId, Namespace) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")
DescribeGroup(GroupName, AwsAccountId, Namespace, args) = quicksight("GET", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName", args)
DescribeGroup(a...; b...) = DescribeGroup(a..., b)

"""
Lists dashboards in an AWS account.
"""
ListDashboards(AwsAccountId) = quicksight("GET", "/accounts/$AwsAccountId/dashboards")
ListDashboards(AwsAccountId, args) = quicksight("GET", "/accounts/$AwsAccountId/dashboards", args)
ListDashboards(a...; b...) = ListDashboards(a..., b)

"""
Cancels an ongoing ingestion of data into SPICE.
"""
CancelIngestion(AwsAccountId, DataSetId, IngestionId) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId")
CancelIngestion(AwsAccountId, DataSetId, IngestionId, args) = quicksight("DELETE", "/accounts/$AwsAccountId/data-sets/$DataSetId/ingestions/$IngestionId", args)
CancelIngestion(a...; b...) = CancelIngestion(a..., b)

"""
Updates the resource permissions for a template.
"""
UpdateTemplatePermissions(AwsAccountId, TemplateId) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/permissions")
UpdateTemplatePermissions(AwsAccountId, TemplateId, args) = quicksight("PUT", "/accounts/$AwsAccountId/templates/$TemplateId/permissions", args)
UpdateTemplatePermissions(a...; b...) = UpdateTemplatePermissions(a..., b)

"""
Changes a group description. 
"""
UpdateGroup(GroupName, AwsAccountId, Namespace) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName")
UpdateGroup(GroupName, AwsAccountId, Namespace, args) = quicksight("PUT", "/accounts/$AwsAccountId/namespaces/$Namespace/groups/$GroupName", args)
UpdateGroup(a...; b...) = UpdateGroup(a..., b)
