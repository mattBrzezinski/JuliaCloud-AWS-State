include("../AWSCorePrototypeServices.jl")
using .Services: quicksight

"""
Lists member users in a group.

Required Parameters:
GroupName, AwsAccountId, Namespace
"""
ListGroupMemberships(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members", args)

"""
Removes a user group from Amazon QuickSight. 

Required Parameters:
GroupName, AwsAccountId, Namespace
"""
DeleteGroup(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)

"""
Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard. A template is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.

Required Parameters:
AwsAccountId, TemplateId, SourceEntity
"""
CreateTemplate(args) = quicksight("POST", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
Provides a summary for a dashboard.

Required Parameters:
AwsAccountId, DashboardId
"""
DescribeDashboard(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
Describes a dataset. 

Required Parameters:
AwsAccountId, DataSetId
"""
DescribeDataSet(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
Updates the template alias of a template.

Required Parameters:
AwsAccountId, TemplateId, AliasName, TemplateVersionNumber
"""
UpdateTemplateAlias(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
Assigns one or more tags (key-value pairs) to the specified QuickSight resource.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template.  Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:   You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.   QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.  

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = quicksight("POST", "/resources/{ResourceArn}/tags", args)

"""
Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. 

Required Parameters:
AwsAccountId, AssignmentName, AssignmentStatus, Namespace
"""
CreateIAMPolicyAssignment(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/", args)

"""
Creates and starts a new SPICE ingestion on a dataset Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see How do I create an IAM policy to control access to Amazon EC2 resources using tags? in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.

Required Parameters:
DataSetId, IngestionId, AwsAccountId
"""
CreateIngestion(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
Creates a dashboard from a template. To first create a template, see the CreateTemplate API operation. A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. The CreateDashboard, DescribeDashboard, and ListDashboardsByUser API operations act on the dashboard entity. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.

Required Parameters:
AwsAccountId, DashboardId, Name, SourceEntity
"""
CreateDashboard(args) = quicksight("POST", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
Generates a server-side embeddable URL and authorization code. For this process to work properly, first configure the dashboards and user permissions. For more information, see Embedding Amazon QuickSight Dashboards in the Amazon QuickSight User Guide or Embedding Amazon QuickSight Dashboards in the Amazon QuickSight API Reference. Currently, you can use GetDashboardEmbedURL only from the server, not from the user’s browser.

Required Parameters:
AwsAccountId, DashboardId, IdentityType
"""
GetDashboardEmbedUrl(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url", args)

"""
Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.

Required Parameters:
AwsAccountId, AssignmentName, Namespace
"""
UpdateIAMPolicyAssignment(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
Updates a data source.

Required Parameters:
AwsAccountId, DataSourceId, Name
"""
UpdateDataSource(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
Lists all the versions of the templates in the current Amazon QuickSight account.

Required Parameters:
AwsAccountId, TemplateId
"""
ListTemplateVersions(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/versions", args)

"""
Adds an Amazon QuickSight user to an Amazon QuickSight group. 

Required Parameters:
MemberName, GroupName, AwsAccountId, Namespace
"""
CreateGroupMembership(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", args)

"""
Describes a template's metadata.

Required Parameters:
AwsAccountId, TemplateId
"""
DescribeTemplate(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.

Required Parameters:
AwsAccountId, TemplateId, AliasName
"""
DeleteTemplateAlias(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
Deletes the data source permanently. This action breaks all the datasets that reference the deleted data source.

Required Parameters:
AwsAccountId, DataSourceId
"""
DeleteDataSource(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. 

Required Parameters:
IdentityType, Email, UserRole, AwsAccountId, Namespace
"""
RegisterUser(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", args)

"""
Updates the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.

Required Parameters:
AwsAccountId, DataSetId
"""
UpdateDataSetPermissions(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", args)

"""
Updates the permissions to a data source.

Required Parameters:
AwsAccountId, DataSourceId
"""
UpdateDataSourcePermissions(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", args)

"""
Updates a template from an existing Amazon QuickSight analysis or another template.

Required Parameters:
AwsAccountId, TemplateId, SourceEntity
"""
UpdateTemplate(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. 

Required Parameters:
UserName, AwsAccountId, Namespace
"""
DeleteUser(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
Removes a tag or tags from a resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = quicksight("DELETE", "/resources/{ResourceArn}/tags", args)

"""
Creates a dataset.

Required Parameters:
AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode
"""
CreateDataSet(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sets", args)

"""
Lists data sources in current AWS Region that belong to this AWS account.

Required Parameters:
AwsAccountId
"""
ListDataSources(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources", args)

"""
Describes a SPICE ingestion.

Required Parameters:
AwsAccountId, DataSetId, IngestionId
"""
DescribeIngestion(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
Updates a dashboard in an AWS account.

Required Parameters:
AwsAccountId, DashboardId, Name, SourceEntity
"""
UpdateDashboard(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.

Required Parameters:
GroupName, AwsAccountId, Namespace
"""
CreateGroup(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", args)

"""
Creates a data source.

Required Parameters:
AwsAccountId, DataSourceId, Name, Type
"""
CreateDataSource(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sources", args)

"""
Describes read and write permissions on a template.

Required Parameters:
AwsAccountId, TemplateId
"""
DescribeTemplatePermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", args)

"""
Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.

Required Parameters:
AwsAccountId
"""
ListDataSets(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets", args)

"""
Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.

Required Parameters:
UserName, AwsAccountId, Namespace
"""
ListUserGroups(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups", args)

"""
Lists all the aliases of a template.

Required Parameters:
AwsAccountId, TemplateId
"""
ListTemplateAliases(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases", args)

"""
Deletes a dashboard.

Required Parameters:
AwsAccountId, DashboardId
"""
DeleteDashboard(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
Lists the tags assigned to a resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = quicksight("GET", "/resources/{ResourceArn}/tags", args)

"""
Updates an Amazon QuickSight user.

Required Parameters:
UserName, AwsAccountId, Namespace, Email, Role
"""
UpdateUser(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
Updates the published version of a dashboard.

Required Parameters:
AwsAccountId, DashboardId, VersionNumber
"""
UpdateDashboardPublishedVersion(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}", args)

"""
Lists the history of SPICE ingestions for a dataset.

Required Parameters:
DataSetId, AwsAccountId
"""
ListIngestions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions", args)

"""
Deletes a user identified by its principal ID. 

Required Parameters:
PrincipalId, AwsAccountId, Namespace
"""
DeleteUserByPrincipalId(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}", args)

"""
Deletes a template.

Required Parameters:
AwsAccountId, TemplateId
"""
DeleteTemplate(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.

Required Parameters:
AwsAccountId, UserName, Namespace
"""
ListIAMPolicyAssignmentsForUser(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments", args)

"""
Removes a user from a group so that the user is no longer a member of the group.

Required Parameters:
MemberName, GroupName, AwsAccountId, Namespace
"""
DeleteGroupMembership(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", args)

"""
Describes read and write permissions for a dashboard.

Required Parameters:
AwsAccountId, DashboardId
"""
DescribeDashboardPermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", args)

"""
Returns a list of all of the Amazon QuickSight users belonging to this account. 

Required Parameters:
AwsAccountId, Namespace
"""
ListUsers(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", args)

"""
Deletes a dataset.

Required Parameters:
AwsAccountId, DataSetId
"""
DeleteDataSet(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
Deletes an existing IAM policy assignment.

Required Parameters:
AwsAccountId, AssignmentName, Namespace
"""
DeleteIAMPolicyAssignment(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
Lists all user groups in Amazon QuickSight. 

Required Parameters:
AwsAccountId, Namespace
"""
ListGroups(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", args)

"""
Lists all the templates in the current Amazon QuickSight account.

Required Parameters:
AwsAccountId
"""
ListTemplates(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates", args)

"""
Returns information about a user, given the user name. 

Required Parameters:
UserName, AwsAccountId, Namespace
"""
DescribeUser(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
Updates a dataset.

Required Parameters:
AwsAccountId, DataSetId, Name, PhysicalTableMap, ImportMode
"""
UpdateDataSet(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
Describes an existing IAM policy assignment, as specified by the assignment name.

Required Parameters:
AwsAccountId, AssignmentName, Namespace
"""
DescribeIAMPolicyAssignment(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
Updates read and write permissions on a dashboard.

Required Parameters:
AwsAccountId, DashboardId
"""
UpdateDashboardPermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", args)

"""
Creates a template alias for a template.

Required Parameters:
AwsAccountId, TemplateId, AliasName, TemplateVersionNumber
"""
CreateTemplateAlias(args) = quicksight("POST", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
Describes the resource permissions for a data source.

Required Parameters:
AwsAccountId, DataSourceId
"""
DescribeDataSourcePermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", args)

"""
Lists IAM policy assignments in the current Amazon QuickSight account.

Required Parameters:
AwsAccountId, Namespace
"""
ListIAMPolicyAssignments(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments", args)

"""
Describes the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.

Required Parameters:
AwsAccountId, DataSetId
"""
DescribeDataSetPermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", args)

"""
Describes the template alias for a template.

Required Parameters:
AwsAccountId, TemplateId, AliasName
"""
DescribeTemplateAlias(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
Describes a data source.

Required Parameters:
AwsAccountId, DataSourceId
"""
DescribeDataSource(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
Lists all the versions of the dashboards in the QuickSight subscription.

Required Parameters:
AwsAccountId, DashboardId
"""
ListDashboardVersions(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions", args)

"""
Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). 

Required Parameters:
GroupName, AwsAccountId, Namespace
"""
DescribeGroup(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)

"""
Lists dashboards in an AWS account.

Required Parameters:
AwsAccountId
"""
ListDashboards(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards", args)

"""
Cancels an ongoing ingestion of data into SPICE.

Required Parameters:
AwsAccountId, DataSetId, IngestionId
"""
CancelIngestion(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
Updates the resource permissions for a template.

Required Parameters:
AwsAccountId, TemplateId
"""
UpdateTemplatePermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", args)

"""
Changes a group description. 

Required Parameters:
GroupName, AwsAccountId, Namespace
"""
UpdateGroup(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)
