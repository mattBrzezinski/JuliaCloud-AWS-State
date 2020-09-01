include("../AWSCorePrototypeServices.jl")
using .Services: quicksight

"""
    ListGroupMemberships()

Lists member users in a group.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to see a membership list of.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return from this request.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListGroupMemberships(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members", args)

"""
    SearchAnalyses()

Searches for analyses that belong to the user specified in the filter.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the analyses that you're searching for.",
  "Filters": "The structure for the search filters that you want to apply to your search. "
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
SearchAnalyses(args) = quicksight("POST", "/accounts/{AwsAccountId}/search/analyses", args)

"""
    ListAnalyses()

Lists Amazon QuickSight analyses that exist in the specified AWS account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the analyses."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListAnalyses(args) = quicksight("GET", "/accounts/{AwsAccountId}/analyses", args)

"""
    DeleteGroup()

Removes a user group from Amazon QuickSight. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to delete.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DeleteGroup(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)

"""
    CreateTemplate()

Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard. A template is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.

Required Parameters
{
  "SourceEntity": "The entity that you are using as a source when you create the template. In SourceEntity, you specify the type of object you're using as source: SourceTemplate for a template or SourceAnalysis for an analysis. Both of these require an Amazon Resource Name (ARN). For SourceTemplate, specify the ARN of the source template. For SourceAnalysis, specify the ARN of the source analysis. The SourceTemplate ARN can contain any AWS Account and any QuickSight-supported AWS Region.  Use the DataSetReferences entity within SourceTemplate or SourceAnalysis to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. ",
  "TemplateId": "An ID for the template that you want to create. This template is unique per AWS Region in each AWS account.",
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account."
}

Optional Parameters
{
  "Permissions": "A list of resource permissions to be set on the template. ",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.",
  "Name": "A display name for the template.",
  "VersionDescription": "A description of the current template version being created. This API operation creates the first version of the template. Every time UpdateTemplate is called, a new version is created. Each version of the template maintains a description of the version in the VersionDescription field."
}
"""
CreateTemplate(args) = quicksight("POST", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
    DescribeDashboard()

Provides a summary for a dashboard.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're describing."
}

Optional Parameters
{
  "VersionNumber": "The version number for the dashboard. If a version number isn't passed, the latest published dashboard version is described. ",
  "AliasName": "The alias name."
}
"""
DescribeDashboard(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
    DescribeDataSet()

Describes a dataset. 

Required Parameters
{
  "DataSetId": "The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DescribeDataSet(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
    UpdateThemeAlias()

Updates an alias of a theme.

Required Parameters
{
  "ThemeVersionNumber": "The version number of the theme that the alias should reference.",
  "AwsAccountId": "The ID of the AWS account that contains the theme alias that you're updating.",
  "AliasName": "The name of the theme alias that you want to update.",
  "ThemeId": "The ID for the theme."
}
"""
UpdateThemeAlias(args) = quicksight("PUT", "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}", args)

"""
    UpdateTemplateAlias()

Updates the template alias of a template.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template alias that you're updating.",
  "AliasName": "The alias of the template that you want to update. If you name a specific alias, you update the version that the alias points to. You can specify the latest version of the template by providing the keyword  LATEST in the AliasName parameter. The keyword  PUBLISHED doesn't apply to templates.",
  "TemplateVersionNumber": "The version number of the template."
}
"""
UpdateTemplateAlias(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
    TagResource()

Assigns one or more tags (key-value pairs) to the specified QuickSight resource.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template.  Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:   You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.   QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.  

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to tag.",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the resource."
}
"""
TagResource(args) = quicksight("POST", "/resources/{ResourceArn}/tags", args)

"""
    CreateIAMPolicyAssignment()

Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. 

Required Parameters
{
  "AssignmentStatus": "The status of the assignment. Possible values are as follows:    ENABLED - Anything specified in this assignment is used when creating the data source.    DISABLED - This assignment isn't used when creating the data source.    DRAFT - This assignment is an unfinished draft and isn't used when creating the data source.  ",
  "AssignmentName": "The name of the assignment. It must be unique within an AWS account.",
  "AwsAccountId": "The ID of the AWS account where you want to assign an IAM policy to QuickSight users or groups.",
  "Namespace": "The namespace that contains the assignment."
}

Optional Parameters
{
  "PolicyArn": "The ARN for the IAM policy to apply to the QuickSight users and groups specified in this assignment.",
  "Identities": "The QuickSight users, groups, or both that you want to assign the policy to."
}
"""
CreateIAMPolicyAssignment(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/", args)

"""
    DeleteThemeAlias()

Deletes the version of the theme that the specified theme alias points to. If you provide a specific alias, you delete the version of the theme that the alias points to.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme alias to delete.",
  "AliasName": "The unique name for the theme alias to delete.",
  "ThemeId": "The ID for the theme that the specified alias is for."
}
"""
DeleteThemeAlias(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}", args)

"""
    CreateIngestion()

Creates and starts a new SPICE ingestion on a dataset Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see How do I create an IAM policy to control access to Amazon EC2 resources using tags? in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.

Required Parameters
{
  "DataSetId": "The ID of the dataset used in the ingestion.",
  "IngestionId": "An ID for the ingestion.",
  "AwsAccountId": "The AWS account ID."
}
"""
CreateIngestion(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
    CreateDashboard()

Creates a dashboard from a template. To first create a template, see the  CreateTemplate  API operation. A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.

Required Parameters
{
  "DashboardId": "The ID for the dashboard, also added to the IAM policy.",
  "SourceEntity": "The entity that you are using as a source when you create the dashboard. In SourceEntity, you specify the type of object you're using as source. You can only create a dashboard from a template, so you use a SourceTemplate entity. If you need to create a dashboard from an analysis, first convert the analysis to a template by using the CreateTemplate API operation. For SourceTemplate, specify the Amazon Resource Name (ARN) of the source template. The SourceTemplateARN can contain any AWS Account and any QuickSight-supported AWS Region.  Use the DataSetReferences entity within SourceTemplate to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. ",
  "AwsAccountId": "The ID of the AWS account where you want to create the dashboard.",
  "Name": "The display name of the dashboard."
}

Optional Parameters
{
  "Permissions": "A structure that contains the permissions of the dashboard. You can use this structure for granting permissions by providing a list of IAM action information for each principal ARN.  To specify no permissions, omit the permissions list.",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the dashboard.",
  "DashboardPublishOptions": "Options for publishing the dashboard when you create it:    AvailabilityStatus for AdHocFilteringOption - This status can be either ENABLED or DISABLED. When this is set to DISABLED, QuickSight disables the left filter pane on the published dashboard, which can be used for ad hoc (one-time) filtering. This option is ENABLED by default.     AvailabilityStatus for ExportToCSVOption - This status can be either ENABLED or DISABLED. The visual option to export data to .CSV format isn't enabled when this is set to DISABLED. This option is ENABLED by default.     VisibilityState for SheetControlsOption - This visibility state can be either COLLAPSED or EXPANDED. This option is COLLAPSED by default.   ",
  "Parameters": "The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. ",
  "ThemeArn": "The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If you add a value for this field, it overrides the value that is used in the source entity. The theme ARN must exist in the same AWS account where you create the dashboard.",
  "VersionDescription": "A description for the first version of the dashboard being created."
}
"""
CreateDashboard(args) = quicksight("POST", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
    DeleteNamespace()

Deletes a namespace and the users and groups that are associated with the namespace. This is an asynchronous process. Assets including dashboards, analyses, datasets and data sources are not deleted. To delete these assets, you use the API operations for the relevant asset. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that you want to delete the QuickSight namespace from.",
  "Namespace": "The namespace that you want to delete."
}
"""
DeleteNamespace(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}", args)

"""
    UpdateAccountSettings()

Updates the Amazon QuickSight settings in your AWS Account.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that contains the QuickSight settings that you want to list.",
  "DefaultNamespace": "The default namespace for this AWS Account. Currently, the default is default. IAM users who register for the first time with QuickSight provide an email that becomes associated with the default namespace."
}

Optional Parameters
{
  "NotificationEmail": "The email address that you want QuickSight to send notifications to regarding your AWS account or QuickSight subscription."
}
"""
UpdateAccountSettings(args) = quicksight("PUT", "/accounts/{AwsAccountId}/settings", args)

"""
    DescribeAccountSettings()

Describes the settings that were used when your QuickSight subscription was first created in this AWS Account.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that contains the settings that you want to list."
}
"""
DescribeAccountSettings(args) = quicksight("GET", "/accounts/{AwsAccountId}/settings", args)

"""
    DescribeThemeAlias()

Describes the alias for a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme alias that you're describing.",
  "AliasName": "The name of the theme alias that you want to describe.",
  "ThemeId": "The ID for the theme."
}
"""
DescribeThemeAlias(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}", args)

"""
    GetDashboardEmbedUrl()

Generates a session URL and authorization code that you can use to embed an Amazon QuickSight read-only dashboard in your web server code. Before you use this command, make sure that you have configured the dashboards and permissions.  Currently, you can use GetDashboardEmbedURL only from the server, not from the user's browser. The following rules apply to the combination of URL and authorization code:   They must be used together.   They can be used one time only.   They are valid for 5 minutes after you run this command.   The resulting user session is valid for 10 hours.   For more information, see Embedding Amazon QuickSight in the Amazon QuickSight User Guide .

Required Parameters
{
  "DashboardId": "The ID for the dashboard, also added to the IAM policy.",
  "IdentityType": "The authentication method that the user uses to sign in.",
  "AwsAccountId": "The ID for the AWS account that contains the dashboard that you're embedding."
}

Optional Parameters
{
  "ResetDisabled": "Remove the reset button on the embedded dashboard. The default is FALSE, which enables the reset button.",
  "SessionLifetimeInMinutes": "How many minutes the session is valid. The session lifetime must be 15-600 minutes.",
  "UndoRedoDisabled": "Remove the undo/redo button on the embedded dashboard. The default is FALSE, which enables the undo/redo button.",
  "UserArn": "The Amazon QuickSight user's Amazon Resource Name (ARN), for use with QUICKSIGHT identity type. You can use this for any Amazon QuickSight users in your account (readers, authors, or admins) authenticated as one of the following:   Active Directory (AD) users or group members   Invited nonfederated users   IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using SAML, OpenID Connect, or IAM federation.   Omit this parameter for users in the third group – IAM users and IAM role-based sessions."
}
"""
GetDashboardEmbedUrl(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url", args)

"""
    CreateTheme()

Creates a theme. A theme is set of configuration options for color and layout. Themes apply to analyses and dashboards. For more information, see Using Themes in Amazon QuickSight in the Amazon QuickSight User Guide.

Required Parameters
{
  "Configuration": "The theme configuration, which contains the theme display properties.",
  "AwsAccountId": "The ID of the AWS account where you want to store the new theme. ",
  "Name": "A display name for the theme.",
  "ThemeId": "An ID for the theme that you want to create. The theme ID is unique per AWS Region in each AWS account.",
  "BaseThemeId": "The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use ListThemes or choose Themes from within a QuickSight analysis. "
}

Optional Parameters
{
  "Permissions": "A valid grouping of resource permissions to apply to the new theme. ",
  "Tags": "A map of the key-value pairs for the resource tag or tags that you want to add to the resource.",
  "VersionDescription": "A description of the first version of the theme that you're creating. Every time UpdateTheme is called, a new version is created. Each version of the theme has a description of the version in the VersionDescription field."
}
"""
CreateTheme(args) = quicksight("POST", "/accounts/{AwsAccountId}/themes/{ThemeId}", args)

"""
    UpdateIAMPolicyAssignment()

Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.

Required Parameters
{
  "AssignmentName": "The name of the assignment. This name must be unique within an AWS account.",
  "AwsAccountId": "The ID of the AWS account that contains the IAM policy assignment.",
  "Namespace": "The namespace of the assignment."
}

Optional Parameters
{
  "PolicyArn": "The ARN for the IAM policy to apply to the QuickSight users and groups specified in this assignment.",
  "AssignmentStatus": "The status of the assignment. Possible values are as follows:    ENABLED - Anything specified in this assignment is used when creating the data source.    DISABLED - This assignment isn't used when creating the data source.    DRAFT - This assignment is an unfinished draft and isn't used when creating the data source.  ",
  "Identities": "The QuickSight users, groups, or both that you want to assign the policy to."
}
"""
UpdateIAMPolicyAssignment(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
    UpdateDataSource()

Updates a data source.

Required Parameters
{
  "DataSourceId": "The ID of the data source. This ID is unique per AWS Region for each AWS account. ",
  "AwsAccountId": "The AWS account ID.",
  "Name": "A display name for the data source."
}

Optional Parameters
{
  "Credentials": "The credentials that QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.",
  "SslProperties": "Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.",
  "VpcConnectionProperties": "Use this parameter only when you want QuickSight to use a VPC connection when connecting to your underlying source.",
  "DataSourceParameters": "The parameters that QuickSight uses to connect to your underlying source."
}
"""
UpdateDataSource(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
    UpdateTheme()

Updates a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme that you're updating.",
  "ThemeId": "The ID for the theme.",
  "BaseThemeId": "The theme ID, defined by Amazon QuickSight, that a custom theme inherits from. All themes initially inherit from a default QuickSight theme."
}

Optional Parameters
{
  "Configuration": "The theme configuration, which contains the theme display properties.",
  "Name": "The name for the theme.",
  "VersionDescription": "A description of the theme version that you're updating Every time that you call UpdateTheme, you create a new version of the theme. Each version of the theme maintains a description of the version in VersionDescription."
}
"""
UpdateTheme(args) = quicksight("PUT", "/accounts/{AwsAccountId}/themes/{ThemeId}", args)

"""
    ListTemplateVersions()

Lists all the versions of the templates in the current Amazon QuickSight account.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the templates that you're listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListTemplateVersions(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/versions", args)

"""
    CreateGroupMembership()

Adds an Amazon QuickSight user to an Amazon QuickSight group. 

Required Parameters
{
  "MemberName": "The name of the user that you want to add to the group membership.",
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to add the user to.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
CreateGroupMembership(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", args)

"""
    DescribeTemplate()

Describes a template's metadata.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template that you're describing."
}

Optional Parameters
{
  "VersionNumber": "(Optional) The number for the version to describe. If a VersionNumber parameter value isn't provided, the latest version of the template is described.",
  "AliasName": "The alias of the template that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the template by providing the keyword  LATEST in the AliasName parameter. The keyword  PUBLISHED doesn't apply to templates."
}
"""
DescribeTemplate(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
    DescribeTheme()

Describes a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme that you're describing.",
  "ThemeId": "The ID for the theme."
}

Optional Parameters
{
  "VersionNumber": "The version number for the version to describe. If a VersionNumber parameter value isn't provided, the latest version of the theme is described.",
  "AliasName": "The alias of the theme that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the theme by providing the keyword  LATEST in the AliasName parameter. The keyword  PUBLISHED doesn't apply to themes."
}
"""
DescribeTheme(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes/{ThemeId}", args)

"""
    DeleteTemplateAlias()

Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.

Required Parameters
{
  "TemplateId": "The ID for the template that the specified alias is for.",
  "AwsAccountId": "The ID of the AWS account that contains the item to delete.",
  "AliasName": "The name for the template alias. To delete a specific alias, you delete the version that the alias points to. You can specify the alias name, or specify the latest version of the template by providing the keyword  LATEST in the AliasName parameter. "
}
"""
DeleteTemplateAlias(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
    DeleteDataSource()

Deletes the data source permanently. This operation breaks all the datasets that reference the deleted data source.

Required Parameters
{
  "DataSourceId": "The ID of the data source. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DeleteDataSource(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
    RegisterUser()

Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. 

Required Parameters
{
  "IdentityType": "Amazon QuickSight supports several ways of managing the identity of users. This parameter accepts two values:    IAM: A user whose identity maps to an existing IAM user or role.     QUICKSIGHT: A user whose identity is owned and managed internally by Amazon QuickSight.   ",
  "Email": "The email address of the user that you want to register.",
  "UserRole": "The Amazon QuickSight role for the user. The user role can be one of the following:    READER: A user who has read-only access to dashboards.    AUTHOR: A user who can create data sources, datasets, analyses, and dashboards.    ADMIN: A user who is an author, who can also manage Amazon QuickSight settings.    RESTRICTED_READER: This role isn't currently available for use.    RESTRICTED_AUTHOR: This role isn't currently available for use.  ",
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "UserName": "The Amazon QuickSight user name that you want to create for the user you are registering.",
  "SessionName": "You need to use this parameter only when you register one or more users using an assumed IAM role. You don't need to provide the session name for other scenarios, for example when you are registering an IAM user or an Amazon QuickSight user. You can register multiple users using the same IAM role if each user has a different session name. For more information on assuming IAM roles, see  assume-role  in the AWS CLI Reference. ",
  "IamArn": "The ARN of the IAM user or role that you are registering with Amazon QuickSight. ",
  "CustomPermissionsName": "(Enterprise edition only) The name of the custom permissions profile that you want to assign to this user. Customized permissions allows you to control a user's access by restricting access the following operations:   Create and update data sources   Create and update datasets   Create and update email reports   Subscribe to email reports   To add custom permissions to an existing user, use  UpdateUser  instead. A set of custom permissions includes any combination of these restrictions. Currently, you need to create the profile names for custom permission sets by using the QuickSight console. Then, you use the RegisterUser API operation to assign the named set of permissions to a QuickSight user.  QuickSight custom permissions are applied through IAM policies. Therefore, they override the permissions typically granted by assigning QuickSight users to one of the default security cohorts in QuickSight (admin, author, reader). This feature is available only to QuickSight Enterprise edition subscriptions that use SAML 2.0-Based Federation for Single Sign-On (SSO)."
}
"""
RegisterUser(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", args)

"""
    UpdateDataSetPermissions()

Updates the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.

Required Parameters
{
  "DataSetId": "The ID for the dataset whose permissions you want to update. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}

Optional Parameters
{
  "RevokePermissions": "The resource permissions that you want to revoke from the dataset.",
  "GrantPermissions": "The resource permissions that you want to grant to the dataset."
}
"""
UpdateDataSetPermissions(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", args)

"""
    UpdateDataSourcePermissions()

Updates the permissions to a data source.

Required Parameters
{
  "DataSourceId": "The ID of the data source. This ID is unique per AWS Region for each AWS account. ",
  "AwsAccountId": "The AWS account ID."
}

Optional Parameters
{
  "RevokePermissions": "A list of resource permissions that you want to revoke on the data source.",
  "GrantPermissions": "A list of resource permissions that you want to grant on the data source."
}
"""
UpdateDataSourcePermissions(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", args)

"""
    DescribeNamespace()

Describes the current namespace.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that contains the QuickSight namespace that you want to describe.",
  "Namespace": "The namespace that you want to describe."
}
"""
DescribeNamespace(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}", args)

"""
    DeleteUser()

Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. 

Required Parameters
{
  "UserName": "The name of the user that you want to delete.",
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DeleteUser(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
    UpdateTemplate()

Updates a template from an existing Amazon QuickSight analysis or another template.

Required Parameters
{
  "SourceEntity": "The entity that you are using as a source when you update the template. In SourceEntity, you specify the type of object you're using as source: SourceTemplate for a template or SourceAnalysis for an analysis. Both of these require an Amazon Resource Name (ARN). For SourceTemplate, specify the ARN of the source template. For SourceAnalysis, specify the ARN of the source analysis. The SourceTemplate ARN can contain any AWS Account and any QuickSight-supported AWS Region.  Use the DataSetReferences entity within SourceTemplate or SourceAnalysis to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. ",
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template that you're updating."
}

Optional Parameters
{
  "Name": "The name for the template.",
  "VersionDescription": "A description of the current template version that is being updated. Every time you call UpdateTemplate, you create a new version of the template. Each version of the template maintains a description of the version in the VersionDescription field."
}
"""
UpdateTemplate(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
    UntagResource()

Removes a tag or tags from a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to untag.",
  "TagKeys": "The keys of the key-value pairs for the resource tag or tags assigned to the resource."
}
"""
UntagResource(args) = quicksight("DELETE", "/resources/{ResourceArn}/tags", args)

"""
    CreateDataSet()

Creates a dataset.

Required Parameters
{
  "DataSetId": "An ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.",
  "PhysicalTableMap": "Declares the physical tables that are available in the underlying data sources.",
  "AwsAccountId": "The AWS account ID.",
  "ImportMode": "Indicates whether you want to import the data into SPICE.",
  "Name": "The display name for the dataset."
}

Optional Parameters
{
  "Permissions": "A list of resource permissions on the dataset.",
  "RowLevelPermissionDataSet": "The row-level security configuration for the data that you want to create.",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.",
  "LogicalTableMap": "Configures the combination and transformation of the data from the physical tables.",
  "ColumnGroups": "Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported."
}
"""
CreateDataSet(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sets", args)

"""
    ListDataSources()

Lists data sources in current AWS Region that belong to this AWS account.

Required Parameters
{
  "AwsAccountId": "The AWS account ID."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListDataSources(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources", args)

"""
    DescribeIngestion()

Describes a SPICE ingestion.

Required Parameters
{
  "DataSetId": "The ID of the dataset used in the ingestion.",
  "IngestionId": "An ID for the ingestion.",
  "AwsAccountId": "The AWS account ID."
}
"""
DescribeIngestion(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
    DeleteAccountCustomization()

Deletes all Amazon QuickSight customizations in this AWS Region for the specified AWS Account and QuickSight namespace.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that you want to delete QuickSight customizations from in this AWS Region."
}

Optional Parameters
{
  "Namespace": "The QuickSight namespace that you're deleting the customizations from."
}
"""
DeleteAccountCustomization(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/customizations", args)

"""
    UpdateDashboard()

Updates a dashboard in an AWS account.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "SourceEntity": "The entity that you are using as a source when you update the dashboard. In SourceEntity, you specify the type of object you're using as source. You can only update a dashboard from a template, so you use a SourceTemplate entity. If you need to update a dashboard from an analysis, first convert the analysis to a template by using the CreateTemplate API operation. For SourceTemplate, specify the Amazon Resource Name (ARN) of the source template. The SourceTemplate ARN can contain any AWS Account and any QuickSight-supported AWS Region.  Use the DataSetReferences entity within SourceTemplate to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. ",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're updating.",
  "Name": "The display name of the dashboard."
}

Optional Parameters
{
  "DashboardPublishOptions": "Options for publishing the dashboard when you create it:    AvailabilityStatus for AdHocFilteringOption - This status can be either ENABLED or DISABLED. When this is set to DISABLED, QuickSight disables the left filter pane on the published dashboard, which can be used for ad hoc (one-time) filtering. This option is ENABLED by default.     AvailabilityStatus for ExportToCSVOption - This status can be either ENABLED or DISABLED. The visual option to export data to .CSV format isn't enabled when this is set to DISABLED. This option is ENABLED by default.     VisibilityState for SheetControlsOption - This visibility state can be either COLLAPSED or EXPANDED. This option is COLLAPSED by default.   ",
  "Parameters": "A structure that contains the parameters of the dashboard. These are parameter overrides for a dashboard. A dashboard can have any type of parameters, and some parameters might accept multiple values.",
  "ThemeArn": "The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If you add a value for this field, it overrides the value that was originally associated with the entity. The theme ARN must exist in the same AWS account where you create the dashboard.",
  "VersionDescription": "A description for the first version of the dashboard being created."
}
"""
UpdateDashboard(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
    CreateGroup()

Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "A name for the group that you want to create.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "Description": "A description for the group that you want to create."
}
"""
CreateGroup(args) = quicksight("POST", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", args)

"""
    CreateDataSource()

Creates a data source.

Required Parameters
{
  "DataSourceId": "An ID for the data source. This ID is unique per AWS Region for each AWS account. ",
  "Type": "The type of the data source. Currently, the supported types for this operation are: ATHENA, AURORA, AURORA_POSTGRESQL, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3, SNOWFLAKE, SPARK, SQLSERVER, TERADATA. Use ListDataSources to return a list of all data sources.",
  "AwsAccountId": "The AWS account ID.",
  "Name": "A display name for the data source."
}

Optional Parameters
{
  "Permissions": "A list of resource permissions on the data source.",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the data source.",
  "Credentials": "The credentials QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.",
  "SslProperties": "Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.",
  "VpcConnectionProperties": "Use this parameter only when you want QuickSight to use a VPC connection when connecting to your underlying source.",
  "DataSourceParameters": "The parameters that QuickSight uses to connect to your underlying source."
}
"""
CreateDataSource(args) = quicksight("POST", "/accounts/{AwsAccountId}/data-sources", args)

"""
    DescribeTemplatePermissions()

Describes read and write permissions on a template.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template that you're describing."
}
"""
DescribeTemplatePermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", args)

"""
    ListDataSets()

Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.

Required Parameters
{
  "AwsAccountId": "The AWS account ID."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListDataSets(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets", args)

"""
    ListUserGroups()

Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.

Required Parameters
{
  "UserName": "The Amazon QuickSight user name that you want to list group memberships for.",
  "AwsAccountId": "The AWS account ID that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return from this request.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListUserGroups(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups", args)

"""
    ListTemplateAliases()

Lists all the aliases of a template.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template aliases that you're listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListTemplateAliases(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases", args)

"""
    DeleteDashboard()

Deletes a dashboard.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're deleting."
}

Optional Parameters
{
  "VersionNumber": "The version number of the dashboard. If the version number property is provided, only the specified version of the dashboard is deleted."
}
"""
DeleteDashboard(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/dashboards/{DashboardId}", args)

"""
    DeleteAnalysis()

Deletes an analysis from Amazon QuickSight. You can optionally include a recovery window during which you can restore the analysis. If you don't specify a recovery window value, the operation defaults to 30 days. QuickSight attaches a DeletionTime stamp to the response that specifies the end of the recovery window. At the end of the recovery window, QuickSight deletes the analysis permanently. At any time before recovery window ends, you can use the RestoreAnalysis API operation to remove the DeletionTime stamp and cancel the deletion of the analysis. The analysis remains visible in the API until it's deleted, so you can describe it but you can't make a template from it. An analysis that's scheduled for deletion isn't accessible in the QuickSight console. To access it in the console, restore it. Deleting an analysis doesn't delete the dashboards that you publish from it.

Required Parameters
{
  "AnalysisId": "The ID of the analysis that you're deleting.",
  "AwsAccountId": "The ID of the AWS account where you want to delete an analysis."
}

Optional Parameters
{
  "ForceDeleteWithoutRecovery": "This option defaults to the value NoForceDeleteWithoutRecovery. To immediately delete the analysis, add the ForceDeleteWithoutRecovery option. You can't restore an analysis after it's deleted. ",
  "RecoveryWindowInDays": "A value that specifies the number of days that QuickSight waits before it deletes the analysis. You can't use this parameter with the ForceDeleteWithoutRecovery option in the same API call. The default value is 30."
}
"""
DeleteAnalysis(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/analyses/{AnalysisId}", args)

"""
    ListTagsForResource()

Lists the tags assigned to a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want a list of tags for."
}
"""
ListTagsForResource(args) = quicksight("GET", "/resources/{ResourceArn}/tags", args)

"""
    CreateThemeAlias()

Creates a theme alias for a theme.

Required Parameters
{
  "ThemeVersionNumber": "The version number of the theme.",
  "AwsAccountId": "The ID of the AWS account that contains the theme for the new theme alias.",
  "AliasName": "The name that you want to give to the theme alias that you are creating. The alias name can't begin with a  . Alias names that start with   are reserved by Amazon QuickSight. ",
  "ThemeId": "An ID for the theme alias."
}
"""
CreateThemeAlias(args) = quicksight("POST", "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}", args)

"""
    CreateAnalysis()

Creates an analysis in Amazon QuickSight.

Required Parameters
{
  "SourceEntity": "A source entity to use for the analysis that you're creating. This metadata structure contains details that describe a source template and one or more datasets.",
  "AnalysisId": "The ID for the analysis that you're creating. This ID displays in the URL of the analysis.",
  "AwsAccountId": "The ID of the AWS account where you are creating an analysis.",
  "Name": "A descriptive name for the analysis that you're creating. This name displays for the analysis in the QuickSight console. "
}

Optional Parameters
{
  "Permissions": "A structure that describes the principals and the resource-level permissions on an analysis. You can use the Permissions structure to grant permissions by providing a list of AWS Identity and Access Management (IAM) action information for each principal listed by Amazon Resource Name (ARN).  To specify no permissions, omit Permissions.",
  "Tags": "Contains a map of the key-value pairs for the resource tag or tags assigned to the analysis.",
  "ThemeArn": "The ARN for the theme to apply to the analysis that you're creating. To see the theme in the QuickSight console, make sure that you have access to it.",
  "Parameters": "The parameter names and override values that you want to use. An analysis can have any parameter type, and some parameters might accept multiple values. "
}
"""
CreateAnalysis(args) = quicksight("POST", "/accounts/{AwsAccountId}/analyses/{AnalysisId}", args)

"""
    DescribeAnalysisPermissions()

Provides the read and write permissions for an analysis.

Required Parameters
{
  "AnalysisId": "The ID of the analysis whose permissions you're describing. The ID is part of the analysis URL.",
  "AwsAccountId": "The ID of the AWS account that contains the analysis whose permissions you're describing. You must be using the AWS account that the analysis is in."
}
"""
DescribeAnalysisPermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions", args)

"""
    UpdateUser()

Updates an Amazon QuickSight user.

Required Parameters
{
  "UserName": "The Amazon QuickSight user name that you want to update.",
  "Email": "The email address of the user that you want to update.",
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default.",
  "Role": "The Amazon QuickSight role of the user. The role can be one of the following default security cohorts:    READER: A user who has read-only access to dashboards.    AUTHOR: A user who can create data sources, datasets, analyses, and dashboards.    ADMIN: A user who is an author, who can also manage Amazon QuickSight settings.   The name of the QuickSight role is invisible to the user except for the console screens dealing with permissions."
}

Optional Parameters
{
  "UnapplyCustomPermissions": "A flag that you use to indicate that you want to remove all custom permissions from this user. Using this parameter resets the user to the state it was in before a custom permissions profile was applied. This parameter defaults to NULL and it doesn't accept any other value.",
  "CustomPermissionsName": "(Enterprise edition only) The name of the custom permissions profile that you want to assign to this user. Customized permissions allows you to control a user's access by restricting access the following operations:   Create and update data sources   Create and update datasets   Create and update email reports   Subscribe to email reports   A set of custom permissions includes any combination of these restrictions. Currently, you need to create the profile names for custom permission sets by using the QuickSight console. Then, you use the RegisterUser API operation to assign the named set of permissions to a QuickSight user.  QuickSight custom permissions are applied through IAM policies. Therefore, they override the permissions typically granted by assigning QuickSight users to one of the default security cohorts in QuickSight (admin, author, reader). This feature is available only to QuickSight Enterprise edition subscriptions that use SAML 2.0-Based Federation for Single Sign-On (SSO)."
}
"""
UpdateUser(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
    GetSessionEmbedUrl()

Generates a session URL and authorization code that you can use to embed the Amazon QuickSight console in your web server code. Use GetSessionEmbedUrl where you want to provide an authoring portal that allows users to create data sources, datasets, analyses, and dashboards. The users who access an embedded QuickSight console need belong to the author or admin security cohort. If you want to restrict permissions to some of these features, add a custom permissions profile to the user with the  UpdateUser  API operation. Use  RegisterUser  API operation to add a new user with a custom permission profile attached. For more information, see the following sections in the Amazon QuickSight User Guide:    Embedding the Amazon QuickSight Console     Customizing Access to the Amazon QuickSight Console   

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account associated with your QuickSight subscription."
}

Optional Parameters
{
  "SessionLifetimeInMinutes": "How many minutes the session is valid. The session lifetime must be 15-600 minutes.",
  "UserArn": "The Amazon QuickSight user's Amazon Resource Name (ARN), for use with QUICKSIGHT identity type. You can use this for any type of Amazon QuickSight users in your account (readers, authors, or admins). They need to be authenticated as one of the following:   Active Directory (AD) users or group members   Invited nonfederated users   IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using SAML, OpenID Connect, or IAM federation   Omit this parameter for users in the third group – IAM users and IAM role-based sessions.",
  "EntryPoint": "The URL you use to access the embedded session. The entry point URL is constrained to the following paths:    /start     /start/analyses     /start/dashboards     /start/favorites     /dashboards/DashboardId  - where DashboardId is the actual ID key from the QuickSight console URL of the dashboard    /analyses/AnalysisId  - where AnalysisId is the actual ID key from the QuickSight console URL of the analysis  "
}
"""
GetSessionEmbedUrl(args) = quicksight("GET", "/accounts/{AwsAccountId}/session-embed-url", args)

"""
    UpdateDashboardPublishedVersion()

Updates the published version of a dashboard.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "VersionNumber": "The version number of the dashboard.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're updating."
}
"""
UpdateDashboardPublishedVersion(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}", args)

"""
    ListIngestions()

Lists the history of SPICE ingestions for a dataset.

Required Parameters
{
  "DataSetId": "The ID of the dataset used in the ingestion.",
  "AwsAccountId": "The AWS account ID."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListIngestions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions", args)

"""
    DeleteUserByPrincipalId()

Deletes a user identified by its principal ID. 

Required Parameters
{
  "PrincipalId": "The principal ID of the user.",
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DeleteUserByPrincipalId(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}", args)

"""
    DeleteTemplate()

Deletes a template.

Required Parameters
{
  "TemplateId": "An ID for the template you want to delete.",
  "AwsAccountId": "The ID of the AWS account that contains the template that you're deleting."
}

Optional Parameters
{
  "VersionNumber": "Specifies the version of the template that you want to delete. If you don't provide a version number, DeleteTemplate deletes all versions of the template. "
}
"""
DeleteTemplate(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/templates/{TemplateId}", args)

"""
    ListThemes()

Lists all the themes in the current AWS account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the themes that you're listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results.",
  "Type": "The type of themes that you want to list. Valid options include the following:    ALL (default)- Display all existing themes.    CUSTOM - Display only the themes created by people using Amazon QuickSight.    QUICKSIGHT - Display only the starting themes defined by QuickSight.  "
}
"""
ListThemes(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes", args)

"""
    ListIAMPolicyAssignmentsForUser()

Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.

Required Parameters
{
  "UserName": "The name of the user.",
  "AwsAccountId": "The ID of the AWS account that contains the assignments.",
  "Namespace": "The namespace of the assignment."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListIAMPolicyAssignmentsForUser(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments", args)

"""
    DeleteGroupMembership()

Removes a user from a group so that the user is no longer a member of the group.

Required Parameters
{
  "MemberName": "The name of the user that you want to delete from the group membership.",
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to delete the user from.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DeleteGroupMembership(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", args)

"""
    DescribeDashboardPermissions()

Describes read and write permissions for a dashboard.

Required Parameters
{
  "DashboardId": "The ID for the dashboard, also added to the IAM policy.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're describing permissions for."
}
"""
DescribeDashboardPermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", args)

"""
    ListUsers()

Returns a list of all of the Amazon QuickSight users belonging to this account. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return from this request.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListUsers(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", args)

"""
    CreateAccountCustomization()

Creates Amazon QuickSight customizations the current AWS Region. Currently, you can add a custom default theme by using the CreateAccountCustomization or UpdateAccountCustomization API operation. To further customize QuickSight by removing QuickSight sample assets and videos for all new users, see Customizing QuickSight in the Amazon QuickSight User Guide. You can create customizations for your AWS account or, if you specify a namespace, for a QuickSight namespace instead. Customizations that apply to a namespace always override customizations that apply to an AWS account. To find out which customizations apply, use the DescribeAccountCustomization API operation. Before you add a theme as the namespace default, make sure that you first share the theme with the namespace. If you don't share it with the namespace, the theme won't be visible to your users even if you use this API operation to make it the default theme. 

Required Parameters
{
  "AccountCustomization": "The QuickSight customizations you're adding in the current AWS Region. You can add these to an AWS account and a QuickSight namespace.  For example, you could add a default theme by setting AccountCustomization to the midnight theme: \"AccountCustomization\": { \"DefaultTheme\": \"arn:aws:quicksight::aws:theme/MIDNIGHT\" }. . Or, you could add a custom theme by specifying \"AccountCustomization\": { \"DefaultTheme\": \"arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639\" }. ",
  "AwsAccountId": "The ID for the AWS account that you want to customize QuickSight for."
}

Optional Parameters
{
  "Namespace": "The QuickSight namespace that you want to add customizations to."
}
"""
CreateAccountCustomization(args) = quicksight("POST", "/accounts/{AwsAccountId}/customizations", args)

"""
    DeleteDataSet()

Deletes a dataset.

Required Parameters
{
  "DataSetId": "The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DeleteDataSet(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
    DescribeThemePermissions()

Describes the read and write permissions for a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme that you're describing.",
  "ThemeId": "The ID for the theme that you want to describe permissions for."
}
"""
DescribeThemePermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions", args)

"""
    UpdateAnalysisPermissions()

Updates the read and write permissions for an analysis.

Required Parameters
{
  "AnalysisId": "The ID of the analysis whose permissions you're updating. The ID is part of the analysis URL.",
  "AwsAccountId": "The ID of the AWS account that contains the analysis whose permissions you're updating. You must be using the AWS account that the analysis is in."
}

Optional Parameters
{
  "RevokePermissions": "A structure that describes the permissions to remove and the principal to remove them from.",
  "GrantPermissions": "A structure that describes the permissions to add and the principal to add them to."
}
"""
UpdateAnalysisPermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions", args)

"""
    DeleteIAMPolicyAssignment()

Deletes an existing IAM policy assignment.

Required Parameters
{
  "AssignmentName": "The name of the assignment. ",
  "AwsAccountId": "The AWS account ID where you want to delete the IAM policy assignment.",
  "Namespace": "The namespace that contains the assignment."
}
"""
DeleteIAMPolicyAssignment(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
    RestoreAnalysis()

Restores an analysis.

Required Parameters
{
  "AnalysisId": "The ID of the analysis that you're restoring.",
  "AwsAccountId": "The ID of the AWS account that contains the analysis."
}
"""
RestoreAnalysis(args) = quicksight("POST", "/accounts/{AwsAccountId}/restore/analyses/{AnalysisId}", args)

"""
    ListGroups()

Lists all user groups in Amazon QuickSight. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListGroups(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", args)

"""
    ListTemplates()

Lists all the templates in the current Amazon QuickSight account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the templates that you're listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListTemplates(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates", args)

"""
    DescribeUser()

Returns information about a user, given the user name. 

Required Parameters
{
  "UserName": "The name of the user that you want to describe.",
  "AwsAccountId": "The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DescribeUser(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", args)

"""
    SearchDashboards()

Searches for dashboards that belong to a user. 

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the user whose dashboards you're searching for. ",
  "Filters": "The filters to apply to the search. Currently, you can search only by user name, for example, \"Filters\": [ { \"Name\": \"QUICKSIGHT_USER\", \"Operator\": \"StringEquals\", \"Value\": \"arn:aws:quicksight:us-east-1:1:user/default/UserName1\" } ] "
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
SearchDashboards(args) = quicksight("POST", "/accounts/{AwsAccountId}/search/dashboards", args)

"""
    UpdateDataSet()

Updates a dataset.

Required Parameters
{
  "DataSetId": "The ID for the dataset that you want to update. This ID is unique per AWS Region for each AWS account.",
  "PhysicalTableMap": "Declares the physical tables that are available in the underlying data sources.",
  "AwsAccountId": "The AWS account ID.",
  "ImportMode": "Indicates whether you want to import the data into SPICE.",
  "Name": "The display name for the dataset."
}

Optional Parameters
{
  "RowLevelPermissionDataSet": "The row-level security configuration for the data you want to create.",
  "LogicalTableMap": "Configures the combination and transformation of the data from the physical tables.",
  "ColumnGroups": "Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported."
}
"""
UpdateDataSet(args) = quicksight("PUT", "/accounts/{AwsAccountId}/data-sets/{DataSetId}", args)

"""
    UpdateThemePermissions()

Updates the resource permissions for a theme. Permissions apply to the action to grant or revoke permissions on, for example "quicksight:DescribeTheme". Theme permissions apply in groupings. Valid groupings include the following for the three levels of permissions, which are user, owner, or no permissions:    User    "quicksight:DescribeTheme"     "quicksight:DescribeThemeAlias"     "quicksight:ListThemeAliases"     "quicksight:ListThemeVersions"      Owner    "quicksight:DescribeTheme"     "quicksight:DescribeThemeAlias"     "quicksight:ListThemeAliases"     "quicksight:ListThemeVersions"     "quicksight:DeleteTheme"     "quicksight:UpdateTheme"     "quicksight:CreateThemeAlias"     "quicksight:DeleteThemeAlias"     "quicksight:UpdateThemeAlias"     "quicksight:UpdateThemePermissions"     "quicksight:DescribeThemePermissions"      To specify no permissions, omit the permissions list.  

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme.",
  "ThemeId": "The ID for the theme."
}

Optional Parameters
{
  "RevokePermissions": "A list of resource permissions to be revoked from the theme.",
  "GrantPermissions": "A list of resource permissions to be granted for the theme."
}
"""
UpdateThemePermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions", args)

"""
    DescribeIAMPolicyAssignment()

Describes an existing IAM policy assignment, as specified by the assignment name.

Required Parameters
{
  "AssignmentName": "The name of the assignment. ",
  "AwsAccountId": "The ID of the AWS account that contains the assignment that you want to describe.",
  "Namespace": "The namespace that contains the assignment."
}
"""
DescribeIAMPolicyAssignment(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", args)

"""
    UpdateDashboardPermissions()

Updates read and write permissions on a dashboard.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard whose permissions you're updating."
}

Optional Parameters
{
  "RevokePermissions": "The permissions that you want to revoke from this resource.",
  "GrantPermissions": "The permissions that you want to grant on this resource."
}
"""
UpdateDashboardPermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", args)

"""
    CreateTemplateAlias()

Creates a template alias for a template.

Required Parameters
{
  "TemplateId": "An ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template that you creating an alias for.",
  "AliasName": "The name that you want to give to the template alias that you're creating. Don't start the alias name with the   character. Alias names that start with   are reserved by QuickSight. ",
  "TemplateVersionNumber": "The version number of the template."
}
"""
CreateTemplateAlias(args) = quicksight("POST", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
    DescribeAnalysis()

Provides a summary of the metadata for an analysis.

Required Parameters
{
  "AnalysisId": "The ID of the analysis that you're describing. The ID is part of the URL of the analysis.",
  "AwsAccountId": "The ID of the AWS account that contains the analysis. You must be using the AWS account that the analysis is in."
}
"""
DescribeAnalysis(args) = quicksight("GET", "/accounts/{AwsAccountId}/analyses/{AnalysisId}", args)

"""
    DescribeDataSourcePermissions()

Describes the resource permissions for a data source.

Required Parameters
{
  "DataSourceId": "The ID of the data source. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DescribeDataSourcePermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", args)

"""
    ListIAMPolicyAssignments()

Lists IAM policy assignments in the current Amazon QuickSight account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains these IAM policy assignments.",
  "Namespace": "The namespace for the assignments."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "AssignmentStatus": "The status of the assignments.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListIAMPolicyAssignments(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments", args)

"""
    DescribeDataSetPermissions()

Describes the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.

Required Parameters
{
  "DataSetId": "The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DescribeDataSetPermissions(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", args)

"""
    ListThemeAliases()

Lists all the aliases of a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme aliases that you're listing.",
  "ThemeId": "The ID for the theme."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListThemeAliases(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases", args)

"""
    ListThemeVersions()

Lists all the versions of the themes in the current AWS account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the themes that you're listing.",
  "ThemeId": "The ID for the theme."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListThemeVersions(args) = quicksight("GET", "/accounts/{AwsAccountId}/themes/{ThemeId}/versions", args)

"""
    UpdateAccountCustomization()

Updates Amazon QuickSight customizations the current AWS Region. Currently, the only customization you can use is a theme. You can use customizations for your AWS account or, if you specify a namespace, for a QuickSight namespace instead. Customizations that apply to a namespace override customizations that apply to an AWS account. To find out which customizations apply, use the DescribeAccountCustomization API operation. 

Required Parameters
{
  "AccountCustomization": "The QuickSight customizations you're updating in the current AWS Region. ",
  "AwsAccountId": "The ID for the AWS account that you want to update QuickSight customizations for."
}

Optional Parameters
{
  "Namespace": "The namespace that you want to update QuickSight customizations for."
}
"""
UpdateAccountCustomization(args) = quicksight("PUT", "/accounts/{AwsAccountId}/customizations", args)

"""
    DescribeTemplateAlias()

Describes the template alias for a template.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template alias that you're describing.",
  "AliasName": "The name of the template alias that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the template by providing the keyword  LATEST in the AliasName parameter. The keyword  PUBLISHED doesn't apply to templates."
}
"""
DescribeTemplateAlias(args) = quicksight("GET", "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", args)

"""
    ListNamespaces()

Lists the namespaces for the specified AWS account.

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that contains the QuickSight namespaces that you want to list."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A pagination token that can be used in a subsequent request."
}
"""
ListNamespaces(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces", args)

"""
    DescribeDataSource()

Describes a data source.

Required Parameters
{
  "DataSourceId": "The ID of the data source. This ID is unique per AWS Region for each AWS account.",
  "AwsAccountId": "The AWS account ID."
}
"""
DescribeDataSource(args) = quicksight("GET", "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", args)

"""
    DescribeAccountCustomization()

Describes the customizations associated with the provided AWS account and Amazon QuickSight namespace in an AWS Region. The QuickSight console evaluates which customizations to apply by running this API operation with the Resolved flag included.  To determine what customizations display when you run this command, it can help to visualize the relationship of the entities involved.     AWS Account - The AWS account exists at the top of the hierarchy. It has the potential to use all of the AWS Regions and AWS Services. When you subscribe to QuickSight, you choose one AWS Region to use as your home region. That's where your free SPICE capacity is located. You can use QuickSight in any supported AWS Region.     AWS Region - In each AWS Region where you sign in to QuickSight at least once, QuickSight acts as a separate instance of the same service. If you have a user directory, it resides in us-east-1, which is the US East (N. Virginia). Generally speaking, these users have access to QuickSight in any AWS Region, unless they are constrained to a namespace.  To run the command in a different AWS Region, you change your region settings. If you're using the AWS CLI, you can use one of the following options:   Use command line options.    Use named profiles.    Run aws configure to change your default AWS Region. Use Enter to key the same settings for your keys. For more information, see Configuring the AWS CLI.      Namespace - A QuickSight namespace is a partition that contains users and assets (data sources, datasets, dashboards, and so on). To access assets that are in a specific namespace, users and groups must also be part of the same namespace. People who share a namespace are completely isolated from users and assets in other namespaces, even if they are in the same AWS account and AWS Region.    Applied customizations - Within an AWS Region, a set of QuickSight customizations can apply to an AWS account or to a namespace. Settings that you apply to a namespace override settings that you apply to an AWS Account. All settings are isolated to a single AWS Region. To apply them in other AWS Regions, run the CreateAccountCustomization command in each AWS Region where you want to apply the same customizations.   

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that you want to describe QuickSight customizations for."
}

Optional Parameters
{
  "Namespace": "The QuickSight namespace that you want to describe QuickSight customizations for.",
  "Resolved": "The Resolved flag works with the other parameters to determine which view of QuickSight customizations is returned. You can add this flag to your command to use the same view that QuickSight uses to identify which customizations to apply to the console. Omit this flag, or set it to no-resolved, to reveal customizations that are configured at different levels. "
}
"""
DescribeAccountCustomization(args) = quicksight("GET", "/accounts/{AwsAccountId}/customizations", args)

"""
    ListDashboardVersions()

Lists all the versions of the dashboards in the QuickSight subscription.

Required Parameters
{
  "DashboardId": "The ID for the dashboard.",
  "AwsAccountId": "The ID of the AWS account that contains the dashboard that you're listing versions for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListDashboardVersions(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions", args)

"""
    DescribeGroup()

Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to describe.",
  "Namespace": "The namespace. Currently, you should set this to default."
}
"""
DescribeGroup(args) = quicksight("GET", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)

"""
    ListDashboards()

Lists dashboards in an AWS account.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the dashboards that you're listing."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned per request.",
  "NextToken": "The token for the next set of results, or null if there are no more results."
}
"""
ListDashboards(args) = quicksight("GET", "/accounts/{AwsAccountId}/dashboards", args)

"""
    CreateNamespace()

(Enterprise edition only) Creates a new namespace for you to use with Amazon QuickSight. A namespace allows you to isolate the QuickSight users and groups that are registered for that namespace. Users that access the namespace can share assets only with other users or groups in the same namespace. They can't see users and groups in other namespaces. You can create a namespace after your AWS account is subscribed to QuickSight. The namespace must be unique within the AWS account. By default, there is a limit of 100 namespaces per AWS account. To increase your limit, create a ticket with AWS Support. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that you want to create the QuickSight namespace in.",
  "Namespace": "The name that you want to use to describe the new namespace.",
  "IdentityStore": "Specifies the type of your user identity directory. Currently, this supports users with an identity type of QUICKSIGHT."
}

Optional Parameters
{
  "Tags": "The tags that you want to associate with the namespace that you're creating."
}
"""
CreateNamespace(args) = quicksight("POST", "/accounts/{AwsAccountId}", args)

"""
    DeleteTheme()

Deletes a theme.

Required Parameters
{
  "AwsAccountId": "The ID of the AWS account that contains the theme that you're deleting.",
  "ThemeId": "An ID for the theme that you want to delete."
}

Optional Parameters
{
  "VersionNumber": "The version of the theme that you want to delete.   Note: If you don't provide a version number, you're using this call to DeleteTheme to delete all versions of the theme."
}
"""
DeleteTheme(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/themes/{ThemeId}", args)

"""
    UpdateAnalysis()

Updates an analysis in Amazon QuickSight

Required Parameters
{
  "SourceEntity": "A source entity to use for the analysis that you're updating. This metadata structure contains details that describe a source template and one or more datasets.",
  "AnalysisId": "The ID for the analysis that you're updating. This ID displays in the URL of the analysis.",
  "AwsAccountId": "The ID of the AWS account that contains the analysis that you're updating.",
  "Name": "A descriptive name for the analysis that you're updating. This name displays for the analysis in the QuickSight console."
}

Optional Parameters
{
  "ThemeArn": "The Amazon Resource Name (ARN) for the theme to apply to the analysis that you're creating. To see the theme in the QuickSight console, make sure that you have access to it.",
  "Parameters": "The parameter names and override values that you want to use. An analysis can have any parameter type, and some parameters might accept multiple values. "
}
"""
UpdateAnalysis(args) = quicksight("PUT", "/accounts/{AwsAccountId}/analyses/{AnalysisId}", args)

"""
    CancelIngestion()

Cancels an ongoing ingestion of data into SPICE.

Required Parameters
{
  "DataSetId": "The ID of the dataset used in the ingestion.",
  "IngestionId": "An ID for the ingestion.",
  "AwsAccountId": "The AWS account ID."
}
"""
CancelIngestion(args) = quicksight("DELETE", "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", args)

"""
    UpdateTemplatePermissions()

Updates the resource permissions for a template.

Required Parameters
{
  "TemplateId": "The ID for the template.",
  "AwsAccountId": "The ID of the AWS account that contains the template."
}

Optional Parameters
{
  "RevokePermissions": "A list of resource permissions to be revoked from the template. ",
  "GrantPermissions": "A list of resource permissions to be granted on the template. "
}
"""
UpdateTemplatePermissions(args) = quicksight("PUT", "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", args)

"""
    UpdateGroup()

Changes a group description. 

Required Parameters
{
  "AwsAccountId": "The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.",
  "GroupName": "The name of the group that you want to update.",
  "Namespace": "The namespace. Currently, you should set this to default."
}

Optional Parameters
{
  "Description": "The description for the group that you want to update."
}
"""
UpdateGroup(args) = quicksight("PUT", "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", args)
