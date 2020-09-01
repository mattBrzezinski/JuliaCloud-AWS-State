include("../AWSCorePrototypeServices.jl")
using .Services: elastic_beanstalk

"""
    RetrieveEnvironmentInfo()

Retrieves the compiled information from a RequestEnvironmentInfo request. Related Topics    RequestEnvironmentInfo   

Required Parameters
{
  "InfoType": "The type of information to retrieve."
}

Optional Parameters
{
  "EnvironmentId": "The ID of the data's environment. If no such environment is found, returns an InvalidParameterValue error. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error.",
  "EnvironmentName": "The name of the data's environment.  If no such environment is found, returns an InvalidParameterValue error.   Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""
RetrieveEnvironmentInfo(args) = elastic_beanstalk("RetrieveEnvironmentInfo", args)

"""
    AbortEnvironmentUpdate()

Cancels in-progress environment configuration update or application version deployment.

Optional Parameters
{
  "EnvironmentId": "This specifies the ID of the environment with the in-progress update that you want to cancel.",
  "EnvironmentName": "This specifies the name of the environment with the in-progress update that you want to cancel."
}
"""

AbortEnvironmentUpdate() = elastic_beanstalk("AbortEnvironmentUpdate")
AbortEnvironmentUpdate(args) = elastic_beanstalk("AbortEnvironmentUpdate", args)

"""
    DeleteApplication()

Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.  You cannot delete an application that has a running environment. 

Required Parameters
{
  "ApplicationName": "The name of the application to delete."
}

Optional Parameters
{
  "TerminateEnvByForce": "When set to true, running environments will be terminated before deleting the application."
}
"""
DeleteApplication(args) = elastic_beanstalk("DeleteApplication", args)

"""
    DescribeInstancesHealth()

Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires enhanced health reporting.

Optional Parameters
{
  "AttributeNames": "Specifies the response elements you wish to receive. To retrieve all attributes, set to All. If no attribute names are specified, returns a list of instances.",
  "NextToken": "Specify the pagination token returned by a previous call.",
  "EnvironmentId": "Specify the AWS Elastic Beanstalk environment by ID.",
  "EnvironmentName": "Specify the AWS Elastic Beanstalk environment by name."
}
"""

DescribeInstancesHealth() = elastic_beanstalk("DescribeInstancesHealth")
DescribeInstancesHealth(args) = elastic_beanstalk("DescribeInstancesHealth", args)

"""
    DescribeEnvironmentResources()

Returns AWS resources for this environment.

Optional Parameters
{
  "EnvironmentId": "The ID of the environment to retrieve AWS resource usage data.  Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment to retrieve AWS resource usage data.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""

DescribeEnvironmentResources() = elastic_beanstalk("DescribeEnvironmentResources")
DescribeEnvironmentResources(args) = elastic_beanstalk("DescribeEnvironmentResources", args)

"""
    CreateApplication()

Creates an application that has one configuration template named default and no application versions.

Required Parameters
{
  "ApplicationName": "The name of the application. Must be unique within your account."
}

Optional Parameters
{
  "Description": "Your description of the application.",
  "Tags": "Specifies the tags applied to the application. Elastic Beanstalk applies these tags only to the application. Environments that you create in the application don't inherit the tags.",
  "ResourceLifecycleConfig": "Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions."
}
"""
CreateApplication(args) = elastic_beanstalk("CreateApplication", args)

"""
    DescribeEnvironments()

Returns descriptions for existing environments.

Optional Parameters
{
  "IncludedDeletedBackTo": " If specified when IncludeDeleted is set to true, then environments deleted after this date are displayed. ",
  "MaxRecords": "For a paginated request. Specify a maximum number of environments to include in each response. If no MaxRecords is specified, all available environments are retrieved in a single response.",
  "EnvironmentNames": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified names.",
  "VersionLabel": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application version.",
  "NextToken": "For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no NextToken is specified, the first page is retrieved.",
  "ApplicationName": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that are associated with this application.",
  "EnvironmentIds": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those that have the specified IDs.",
  "IncludeDeleted": "Indicates whether to include deleted environments:  true: Environments that have been deleted after IncludedDeletedBackTo are displayed.  false: Do not include deleted environments."
}
"""

DescribeEnvironments() = elastic_beanstalk("DescribeEnvironments")
DescribeEnvironments(args) = elastic_beanstalk("DescribeEnvironments", args)

"""
    DescribeConfigurationSettings()

Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics    DeleteEnvironmentConfiguration   

Required Parameters
{
  "ApplicationName": "The application for the environment or configuration template."
}

Optional Parameters
{
  "TemplateName": "The name of the configuration template to describe.  Conditional: You must specify either this parameter or an EnvironmentName, but not both. If you specify both, AWS Elastic Beanstalk returns an InvalidParameterCombination error. If you do not specify either, AWS Elastic Beanstalk returns a MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment to describe.  Condition: You must specify either this or a TemplateName, but not both. If you specify both, AWS Elastic Beanstalk returns an InvalidParameterCombination error. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""
DescribeConfigurationSettings(args) = elastic_beanstalk("DescribeConfigurationSettings", args)

"""
    DescribeEnvironmentManagedActions()

Lists an environment's upcoming and in-progress managed actions.

Optional Parameters
{
  "Status": "To show only actions with a particular status, specify a status.",
  "EnvironmentId": "The environment ID of the target environment.",
  "EnvironmentName": "The name of the target environment."
}
"""

DescribeEnvironmentManagedActions() = elastic_beanstalk("DescribeEnvironmentManagedActions")
DescribeEnvironmentManagedActions(args) = elastic_beanstalk("DescribeEnvironmentManagedActions", args)

"""
    CreateConfigurationTemplate()

Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application. You define application configuration settings in a configuration template. You can then use the configuration template to deploy different versions of the application with the same configuration settings. Templates aren't associated with any environment. The EnvironmentName response element is always null. Related Topics    DescribeConfigurationOptions     DescribeConfigurationSettings     ListAvailableSolutionStacks   

Required Parameters
{
  "ApplicationName": "The name of the Elastic Beanstalk application to associate with this configuration template.",
  "TemplateName": "The name of the configuration template. Constraint: This name must be unique per application."
}

Optional Parameters
{
  "OptionSettings": "Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these values override the values obtained from the solution stack or the source configuration template. For a complete list of Elastic Beanstalk configuration options, see Option Values in the AWS Elastic Beanstalk Developer Guide.",
  "Description": "An optional description for this configuration.",
  "Tags": "Specifies the tags applied to the configuration template.",
  "PlatformArn": "The Amazon Resource Name (ARN) of the custom platform. For more information, see  Custom Platforms in the AWS Elastic Beanstalk Developer Guide.  If you specify PlatformArn, then don't specify SolutionStackName. ",
  "EnvironmentId": "The ID of an environment whose settings you want to use to create the configuration template. You must specify EnvironmentId if you don't specify PlatformArn, SolutionStackName, or SourceConfiguration.",
  "SourceConfiguration": "An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration. Values specified in OptionSettings override any values obtained from the SourceConfiguration. You must specify SourceConfiguration if you don't specify PlatformArn, EnvironmentId, or SolutionStackName. Constraint: If both solution stack name and source configuration are specified, the solution stack of the source configuration template must match the specified solution stack name.",
  "SolutionStackName": "The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For example, 64bit Amazon Linux 2013.09 running Tomcat 7 Java 7. A solution stack specifies the operating system, runtime, and application server for a configuration template. It also determines the set of configuration options as well as the possible and default values. For more information, see Supported Platforms in the AWS Elastic Beanstalk Developer Guide. You must specify SolutionStackName if you don't specify PlatformArn, EnvironmentId, or SourceConfiguration. Use the  ListAvailableSolutionStacks  API to obtain a list of available solution stacks."
}
"""
CreateConfigurationTemplate(args) = elastic_beanstalk("CreateConfigurationTemplate", args)

"""
    RequestEnvironmentInfo()

Initiates a request to compile the specified type of information of the deployed environment.  Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.   Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs.   Use RetrieveEnvironmentInfo to obtain the set of logs.  Related Topics    RetrieveEnvironmentInfo   

Required Parameters
{
  "InfoType": "The type of information to request."
}

Optional Parameters
{
  "EnvironmentId": "The ID of the environment of the requested data. If no such environment is found, RequestEnvironmentInfo returns an InvalidParameterValue error.  Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment of the requested data. If no such environment is found, RequestEnvironmentInfo returns an InvalidParameterValue error.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""
RequestEnvironmentInfo(args) = elastic_beanstalk("RequestEnvironmentInfo", args)

"""
    ListPlatformBranches()

Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.

Optional Parameters
{
  "MaxRecords": "The maximum number of platform branch values returned in one call.",
  "NextToken": "For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no NextToken is specified, the first page is retrieved.",
  "Filters": "Criteria for restricting the resulting list of platform branches. The filter is evaluated as a logical conjunction (AND) of the separate SearchFilter terms. The following list shows valid attribute values for each of the SearchFilter terms. Most operators take a single value. The in and not_in operators can take multiple values.    Attribute = BranchName:    Operator: = | != | begins_with | ends_with | contains | in | not_in       Attribute = LifecycleState:    Operator: = | != | in | not_in     Values: beta | supported | deprecated | retired       Attribute = PlatformName:    Operator: = | != | begins_with | ends_with | contains | in | not_in       Attribute = TierType:    Operator: = | !=     Values: WebServer/Standard | Worker/SQS/HTTP      Array size: limited to 10 SearchFilter objects. Within each SearchFilter item, the Values array is limited to 10 items."
}
"""

ListPlatformBranches() = elastic_beanstalk("ListPlatformBranches")
ListPlatformBranches(args) = elastic_beanstalk("ListPlatformBranches", args)

"""
    UpdateApplicationVersion()

Updates the specified application version to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string. 

Required Parameters
{
  "VersionLabel": "The name of the version to update. If no application version is found with this label, UpdateApplication returns an InvalidParameterValue error. ",
  "ApplicationName": "The name of the application associated with this version.  If no application is found with this name, UpdateApplication returns an InvalidParameterValue error."
}

Optional Parameters
{
  "Description": "A new description for this version."
}
"""
UpdateApplicationVersion(args) = elastic_beanstalk("UpdateApplicationVersion", args)

"""
    DescribeEnvironmentManagedActionHistory()

Lists an environment's completed and failed managed actions.

Optional Parameters
{
  "NextToken": "The pagination token returned by a previous request.",
  "MaxItems": "The maximum number of items to return for a single request.",
  "EnvironmentId": "The environment ID of the target environment.",
  "EnvironmentName": "The name of the target environment."
}
"""

DescribeEnvironmentManagedActionHistory() = elastic_beanstalk("DescribeEnvironmentManagedActionHistory")
DescribeEnvironmentManagedActionHistory(args) = elastic_beanstalk("DescribeEnvironmentManagedActionHistory", args)

"""
    RebuildEnvironment()

Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.

Optional Parameters
{
  "EnvironmentId": "The ID of the environment to rebuild.  Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment to rebuild.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""

RebuildEnvironment() = elastic_beanstalk("RebuildEnvironment")
RebuildEnvironment(args) = elastic_beanstalk("RebuildEnvironment", args)

"""
    CheckDNSAvailability()

Checks if the specified CNAME is available.

Required Parameters
{
  "CNAMEPrefix": "The prefix used when this CNAME is reserved."
}
"""
CheckDNSAvailability(args) = elastic_beanstalk("CheckDNSAvailability", args)

"""
    DisassociateEnvironmentOperationsRole()

Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses the caller's permissions for permissions to downstream services during subsequent calls acting on this environment. For more information, see Operations roles in the AWS Elastic Beanstalk Developer Guide.

Required Parameters
{
  "EnvironmentName": "The name of the environment from which to disassociate the operations role."
}
"""
DisassociateEnvironmentOperationsRole(args) = elastic_beanstalk("DisassociateEnvironmentOperationsRole", args)

"""
    ComposeEnvironments()

Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See Compose Environments for details.

Optional Parameters
{
  "VersionLabels": "A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.",
  "ApplicationName": "The name of the application to which the specified source bundles belong.",
  "GroupName": "The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See Environment Manifest (env.yaml) for details."
}
"""

ComposeEnvironments() = elastic_beanstalk("ComposeEnvironments")
ComposeEnvironments(args) = elastic_beanstalk("ComposeEnvironments", args)

"""
    CreatePlatformVersion()

Create a new version of your custom platform.

Required Parameters
{
  "PlatformVersion": "The number, such as 1.0.2, for the new platform version.",
  "PlatformDefinitionBundle": "The location of the platform definition archive in Amazon S3.",
  "PlatformName": "The name of your custom platform."
}

Optional Parameters
{
  "EnvironmentName": "The name of the builder environment.",
  "Tags": "Specifies the tags applied to the new platform version. Elastic Beanstalk applies these tags only to the platform version. Environments that you create using the platform version don't inherit the tags.",
  "OptionSettings": "The configuration option settings to apply to the builder environment."
}
"""
CreatePlatformVersion(args) = elastic_beanstalk("CreatePlatformVersion", args)

"""
    ValidateConfigurationSettings()

Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.

Required Parameters
{
  "ApplicationName": "The name of the application that the configuration template or environment belongs to.",
  "OptionSettings": "A list of the options and desired values to evaluate."
}

Optional Parameters
{
  "TemplateName": "The name of the configuration template to validate the settings against. Condition: You cannot specify both this and an environment name.",
  "EnvironmentName": "The name of the environment to validate the settings against. Condition: You cannot specify both this and a configuration template name."
}
"""
ValidateConfigurationSettings(args) = elastic_beanstalk("ValidateConfigurationSettings", args)

"""
    ListTagsForResource()

Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see Tagging Application Resources.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resouce for which a tag list is requested. Must be the ARN of an Elastic Beanstalk resource."
}
"""
ListTagsForResource(args) = elastic_beanstalk("ListTagsForResource", args)

"""
    DeleteEnvironmentConfiguration()

Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using DescribeConfigurationSettings while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.

Required Parameters
{
  "ApplicationName": "The name of the application the environment is associated with.",
  "EnvironmentName": "The name of the environment to delete the draft configuration from."
}
"""
DeleteEnvironmentConfiguration(args) = elastic_beanstalk("DeleteEnvironmentConfiguration", args)

"""
    ApplyEnvironmentManagedAction()

Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with DescribeEnvironmentManagedActions.

Required Parameters
{
  "ActionId": "The action ID of the scheduled managed action to execute."
}

Optional Parameters
{
  "EnvironmentId": "The environment ID of the target environment.",
  "EnvironmentName": "The name of the target environment."
}
"""
ApplyEnvironmentManagedAction(args) = elastic_beanstalk("ApplyEnvironmentManagedAction", args)

"""
    UpdateApplication()

Updates the specified application to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string. 

Required Parameters
{
  "ApplicationName": "The name of the application to update. If no such application is found, UpdateApplication returns an InvalidParameterValue error. "
}

Optional Parameters
{
  "Description": "A new description for the application. Default: If not specified, AWS Elastic Beanstalk does not update the description."
}
"""
UpdateApplication(args) = elastic_beanstalk("UpdateApplication", args)

"""
    ListPlatformVersions()

Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to DescribePlatformVersion, which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.

Optional Parameters
{
  "MaxRecords": "The maximum number of platform version values returned in one call.",
  "NextToken": "For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no NextToken is specified, the first page is retrieved.",
  "Filters": "Criteria for restricting the resulting list of platform versions. The filter is interpreted as a logical conjunction (AND) of the separate PlatformFilter terms."
}
"""

ListPlatformVersions() = elastic_beanstalk("ListPlatformVersions")
ListPlatformVersions(args) = elastic_beanstalk("ListPlatformVersions", args)

"""
    UpdateEnvironment()

Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.  Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error.   When updating the configuration settings to a new template or individual settings, a draft configuration is created and DescribeConfigurationSettings for this environment returns two setting descriptions with different DeploymentStatus values. 

Optional Parameters
{
  "VersionLabel": "If this parameter is specified, AWS Elastic Beanstalk deploys the named application version to the environment. If no such application version is found, returns an InvalidParameterValue error. ",
  "GroupName": "The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name or environment ID parameters. See Environment Manifest (env.yaml) for details.",
  "SolutionStackName": "This specifies the platform version that the environment will run after the environment is updated.",
  "Tier": "This specifies the tier to use to update the environment. Condition: At this time, if you change the tier version, name, or type, AWS Elastic Beanstalk returns InvalidParameterValue error. ",
  "OptionSettings": "If specified, AWS Elastic Beanstalk updates the configuration set associated with the running environment and sets the specified configuration options to the requested value.",
  "EnvironmentName": "The name of the environment to update. If no environment with this name exists, AWS Elastic Beanstalk returns an InvalidParameterValue error.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "TemplateName": "If this parameter is specified, AWS Elastic Beanstalk deploys this configuration template to the environment. If no such configuration template is found, AWS Elastic Beanstalk returns an InvalidParameterValue error. ",
  "Description": "If this parameter is specified, AWS Elastic Beanstalk updates the description of this environment.",
  "PlatformArn": "The ARN of the platform, if used.",
  "ApplicationName": "The name of the application with which the environment is associated.",
  "EnvironmentId": "The ID of the environment to update. If no environment with this ID exists, AWS Elastic Beanstalk returns an InvalidParameterValue error. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "OptionsToRemove": "A list of custom user-defined configuration options to remove from the configuration set for this environment."
}
"""

UpdateEnvironment() = elastic_beanstalk("UpdateEnvironment")
UpdateEnvironment(args) = elastic_beanstalk("UpdateEnvironment", args)

"""
    DescribePlatformVersion()

Describes a platform version. Provides full details. Compare to ListPlatformVersions, which provides summary information about a list of platform versions. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.

Optional Parameters
{
  "PlatformArn": "The ARN of the platform version."
}
"""

DescribePlatformVersion() = elastic_beanstalk("DescribePlatformVersion")
DescribePlatformVersion(args) = elastic_beanstalk("DescribePlatformVersion", args)

"""
    AssociateEnvironmentOperationsRole()

Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk uses the associated operations role for permissions to downstream services during subsequent calls acting on this environment. For more information, see Operations roles in the AWS Elastic Beanstalk Developer Guide.

Required Parameters
{
  "OperationsRole": "The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role.",
  "EnvironmentName": "The name of the environment to which to set the operations role."
}
"""
AssociateEnvironmentOperationsRole(args) = elastic_beanstalk("AssociateEnvironmentOperationsRole", args)

"""
    CreateStorageLocation()

Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, CreateStorageLocation still returns the bucket name but does not create a new bucket.
"""

CreateStorageLocation() = elastic_beanstalk("CreateStorageLocation")
CreateStorageLocation(args) = elastic_beanstalk("CreateStorageLocation", args)

"""
    TerminateEnvironment()

Terminates the specified environment.

Optional Parameters
{
  "TerminateResources": "Indicates whether the associated AWS resources should shut down when the environment is terminated:    true: The specified environment as well as the associated AWS resources, such as Auto Scaling group and LoadBalancer, are terminated.    false: AWS Elastic Beanstalk resource management is removed from the environment, but the AWS resources continue to operate.    For more information, see the  AWS Elastic Beanstalk User Guide.    Default: true   Valid Values: true | false ",
  "ForceTerminate": "Terminates the target environment even if another environment in the same group is dependent on it.",
  "EnvironmentId": "The ID of the environment to terminate.  Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment to terminate.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""

TerminateEnvironment() = elastic_beanstalk("TerminateEnvironment")
TerminateEnvironment(args) = elastic_beanstalk("TerminateEnvironment", args)

"""
    CreateApplicationVersion()

Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle  Omit both SourceBuildInformation and SourceBundle to use the default sample application.  After you create an application version with a specified Amazon S3 bucket and key location, you can't change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. 

Required Parameters
{
  "VersionLabel": "A label identifying this version. Constraint: Must be unique per application. If an application version already exists with this label for the specified application, AWS Elastic Beanstalk returns an InvalidParameterValue error. ",
  "ApplicationName": " The name of the application. If no application is found with this name, and AutoCreateApplication is false, returns an InvalidParameterValue error. "
}

Optional Parameters
{
  "SourceBundle": "The Amazon S3 bucket and key that identify the location of the source bundle for this version.  The Amazon S3 bucket must be in the same region as the environment.  Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with SourceBuildInformation), but not both. If neither SourceBundle nor SourceBuildInformation are provided, Elastic Beanstalk uses a sample application.",
  "SourceBuildInformation": "Specify a commit in an AWS CodeCommit Git repository to use as the source code for the application version.",
  "Description": "A description of this application version.",
  "Process": "Pre-processes and validates the environment manifest (env.yaml) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional.  The Process option validates Elastic Beanstalk configuration files. It doesn't validate your application's configuration files, like proxy server or Docker configuration. ",
  "Tags": "Specifies the tags applied to the application version. Elastic Beanstalk applies these tags only to the application version. Environments that use the application version don't inherit the tags.",
  "BuildConfiguration": "Settings for an AWS CodeBuild build.",
  "AutoCreateApplication": "Set to true to create an application with the specified name if it doesn't already exist."
}
"""
CreateApplicationVersion(args) = elastic_beanstalk("CreateApplicationVersion", args)

"""
    DescribeApplications()

Returns the descriptions of existing applications.

Optional Parameters
{
  "ApplicationNames": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include those with the specified names."
}
"""

DescribeApplications() = elastic_beanstalk("DescribeApplications")
DescribeApplications(args) = elastic_beanstalk("DescribeApplications", args)

"""
    SwapEnvironmentCNAMEs()

Swaps the CNAMEs of two environments.

Optional Parameters
{
  "DestinationEnvironmentName": "The name of the destination environment.  Condition: You must specify at least the DestinationEnvironmentID or the DestinationEnvironmentName. You may also specify both. You must specify the SourceEnvironmentName with the DestinationEnvironmentName. ",
  "SourceEnvironmentId": "The ID of the source environment.  Condition: You must specify at least the SourceEnvironmentID or the SourceEnvironmentName. You may also specify both. If you specify the SourceEnvironmentId, you must specify the DestinationEnvironmentId. ",
  "DestinationEnvironmentId": "The ID of the destination environment.  Condition: You must specify at least the DestinationEnvironmentID or the DestinationEnvironmentName. You may also specify both. You must specify the SourceEnvironmentId with the DestinationEnvironmentId. ",
  "SourceEnvironmentName": "The name of the source environment.  Condition: You must specify at least the SourceEnvironmentID or the SourceEnvironmentName. You may also specify both. If you specify the SourceEnvironmentName, you must specify the DestinationEnvironmentName. "
}
"""

SwapEnvironmentCNAMEs() = elastic_beanstalk("SwapEnvironmentCNAMEs")
SwapEnvironmentCNAMEs(args) = elastic_beanstalk("SwapEnvironmentCNAMEs", args)

"""
    DescribeEvents()

Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 

Optional Parameters
{
  "VersionLabel": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this application version.",
  "EndTime": " If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur up to, but not including, the EndTime. ",
  "MaxRecords": "Specifies the maximum number of events that can be returned, beginning with the most recent event.",
  "Severity": "If specified, limits the events returned from this call to include only those with the specified severity or higher.",
  "EnvironmentName": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment.",
  "StartTime": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that occur on or after this time.",
  "RequestId": "If specified, AWS Elastic Beanstalk restricts the described events to include only those associated with this request ID.",
  "TemplateName": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that are associated with this environment configuration.",
  "NextToken": "Pagination token. If specified, the events return the next batch of results.",
  "PlatformArn": "The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this custom platform version.",
  "ApplicationName": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only those associated with this application.",
  "EnvironmentId": "If specified, AWS Elastic Beanstalk restricts the returned descriptions to those associated with this environment."
}
"""

DescribeEvents() = elastic_beanstalk("DescribeEvents")
DescribeEvents(args) = elastic_beanstalk("DescribeEvents", args)

"""
    CreateEnvironment()

Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.

Required Parameters
{
  "ApplicationName": "The name of the application that is associated with this environment."
}

Optional Parameters
{
  "CNAMEPrefix": "If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.",
  "VersionLabel": "The name of the application version to deploy. Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.",
  "GroupName": "The name of the group to which the target environment belongs. Specify a group name only if the environment's name is specified in an environment manifest and not with the environment name parameter. See Environment Manifest (env.yaml) for details.",
  "SolutionStackName": "The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If specified, Elastic Beanstalk sets the configuration values to the default values associated with the specified solution stack. For a list of current solution stacks, see Elastic Beanstalk Supported Platforms in the AWS Elastic Beanstalk Platforms guide.  If you specify SolutionStackName, don't specify PlatformArn or TemplateName. ",
  "Tags": "Specifies the tags applied to resources in the environment.",
  "Tier": "Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.",
  "EnvironmentName": "A unique name for the environment. Constraint: Must be from 4 to 40 characters in length. The name can contain only letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an InvalidParameterValue error.  If you don't specify the CNAMEPrefix parameter, the environment name becomes part of the CNAME, and therefore part of the visible URL for your application.",
  "OptionSettings": "If specified, AWS Elastic Beanstalk sets the specified configuration options to the requested value in the configuration set for the new environment. These override the values obtained from the solution stack or the configuration template.",
  "OperationsRole": "The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream services during this call and during subsequent calls acting on this environment. To specify an operations role, you must have the iam:PassRole permission for the role. For more information, see Operations roles in the AWS Elastic Beanstalk Developer Guide.",
  "TemplateName": "The name of the Elastic Beanstalk configuration template to use with the environment.  If you specify TemplateName, then don't specify SolutionStackName. ",
  "Description": "Your description for this environment.",
  "PlatformArn": "The Amazon Resource Name (ARN) of the custom platform to use with the environment. For more information, see Custom Platforms in the AWS Elastic Beanstalk Developer Guide.  If you specify PlatformArn, don't specify SolutionStackName. ",
  "OptionsToRemove": "A list of custom user-defined configuration options to remove from the configuration set for this new environment."
}
"""
CreateEnvironment(args) = elastic_beanstalk("CreateEnvironment", args)

"""
    DescribeAccountAttributes()

Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account. The result currently has one set of attributes—resource quotas.
"""

DescribeAccountAttributes() = elastic_beanstalk("DescribeAccountAttributes")
DescribeAccountAttributes(args) = elastic_beanstalk("DescribeAccountAttributes", args)

"""
    DeletePlatformVersion()

Deletes the specified version of a custom platform.

Optional Parameters
{
  "PlatformArn": "The ARN of the version of the custom platform."
}
"""

DeletePlatformVersion() = elastic_beanstalk("DeletePlatformVersion")
DeletePlatformVersion(args) = elastic_beanstalk("DeletePlatformVersion", args)

"""
    DescribeEnvironmentHealth()

Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.

Optional Parameters
{
  "AttributeNames": "Specify the response elements to return. To retrieve all attributes, set to All. If no attribute names are specified, returns the name of the environment.",
  "EnvironmentId": "Specify the environment by ID. You must specify either this or an EnvironmentName, or both.",
  "EnvironmentName": "Specify the environment by name. You must specify either this or an EnvironmentName, or both."
}
"""

DescribeEnvironmentHealth() = elastic_beanstalk("DescribeEnvironmentHealth")
DescribeEnvironmentHealth(args) = elastic_beanstalk("DescribeEnvironmentHealth", args)

"""
    UpdateTagsForResource()

Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: TagsToAdd for tags to add or update, and TagsToRemove. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see Tagging Application Resources. If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:  elasticbeanstalk:AddTags  Controls permission to call UpdateTagsForResource and pass a list of tags to add in the TagsToAdd parameter.  elasticbeanstalk:RemoveTags  Controls permission to call UpdateTagsForResource and pass a list of tag keys to remove in the TagsToRemove parameter.   For details about creating a custom user policy, see Creating a Custom User Policy.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resouce to be updated. Must be the ARN of an Elastic Beanstalk resource."
}

Optional Parameters
{
  "TagsToAdd": "A list of tags to add or update. If a key of an existing tag is added, the tag's value is updated. Specify at least one of these parameters: TagsToAdd, TagsToRemove.",
  "TagsToRemove": "A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored. Specify at least one of these parameters: TagsToAdd, TagsToRemove."
}
"""
UpdateTagsForResource(args) = elastic_beanstalk("UpdateTagsForResource", args)

"""
    DeleteApplicationVersion()

Deletes the specified version from the specified application.  You cannot delete an application version that is associated with a running environment. 

Required Parameters
{
  "VersionLabel": "The label of the version to delete.",
  "ApplicationName": "The name of the application to which the version belongs."
}

Optional Parameters
{
  "DeleteSourceBundle": "Set to true to delete the source bundle from your storage bucket. Otherwise, the application version is deleted only from Elastic Beanstalk and the source bundle remains in Amazon S3."
}
"""
DeleteApplicationVersion(args) = elastic_beanstalk("DeleteApplicationVersion", args)

"""
    DeleteConfigurationTemplate()

Deletes the specified configuration template.  When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment. 

Required Parameters
{
  "ApplicationName": "The name of the application to delete the configuration template from.",
  "TemplateName": "The name of the configuration template to delete."
}
"""
DeleteConfigurationTemplate(args) = elastic_beanstalk("DeleteConfigurationTemplate", args)

"""
    RestartAppServer()

Causes the environment to restart the application container server running on each Amazon EC2 instance.

Optional Parameters
{
  "EnvironmentId": "The ID of the environment to restart the server for.  Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. ",
  "EnvironmentName": "The name of the environment to restart the server for.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns MissingRequiredParameter error. "
}
"""

RestartAppServer() = elastic_beanstalk("RestartAppServer")
RestartAppServer(args) = elastic_beanstalk("RestartAppServer", args)

"""
    UpdateConfigurationTemplate()

Updates the specified configuration template to have the specified properties or configuration option values.  If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string.  Related Topics    DescribeConfigurationOptions   

Required Parameters
{
  "ApplicationName": "The name of the application associated with the configuration template to update.  If no application is found with this name, UpdateConfigurationTemplate returns an InvalidParameterValue error. ",
  "TemplateName": "The name of the configuration template to update.  If no configuration template is found with this name, UpdateConfigurationTemplate returns an InvalidParameterValue error. "
}

Optional Parameters
{
  "Description": "A new description for the configuration.",
  "OptionsToRemove": "A list of configuration options to remove from the configuration set.  Constraint: You can remove only UserDefined configuration options. ",
  "OptionSettings": "A list of configuration option settings to update with the new specified option value."
}
"""
UpdateConfigurationTemplate(args) = elastic_beanstalk("UpdateConfigurationTemplate", args)

"""
    DescribeApplicationVersions()

Retrieve a list of application versions.

Optional Parameters
{
  "MaxRecords": "For a paginated request. Specify a maximum number of application versions to include in each response. If no MaxRecords is specified, all available application versions are retrieved in a single response.",
  "NextToken": "For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other parameter values must be identical to the ones specified in the initial request. If no NextToken is specified, the first page is retrieved.",
  "VersionLabels": "Specify a version label to show a specific application version.",
  "ApplicationName": "Specify an application name to show only application versions for that application."
}
"""

DescribeApplicationVersions() = elastic_beanstalk("DescribeApplicationVersions")
DescribeApplicationVersions(args) = elastic_beanstalk("DescribeApplicationVersions", args)

"""
    ListAvailableSolutionStacks()

Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
"""

ListAvailableSolutionStacks() = elastic_beanstalk("ListAvailableSolutionStacks")
ListAvailableSolutionStacks(args) = elastic_beanstalk("ListAvailableSolutionStacks", args)

"""
    UpdateApplicationResourceLifecycle()

Modifies lifecycle settings for an application.

Required Parameters
{
  "ResourceLifecycleConfig": "The lifecycle configuration.",
  "ApplicationName": "The name of the application."
}
"""
UpdateApplicationResourceLifecycle(args) = elastic_beanstalk("UpdateApplicationResourceLifecycle", args)

"""
    DescribeConfigurationOptions()

Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.

Optional Parameters
{
  "SolutionStackName": "The name of the solution stack whose configuration options you want to describe.",
  "TemplateName": "The name of the configuration template whose configuration options you want to describe.",
  "PlatformArn": "The ARN of the custom platform.",
  "ApplicationName": "The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.",
  "Options": "If specified, restricts the descriptions to only the specified options.",
  "EnvironmentName": "The name of the environment whose configuration options you want to describe."
}
"""

DescribeConfigurationOptions() = elastic_beanstalk("DescribeConfigurationOptions")
DescribeConfigurationOptions(args) = elastic_beanstalk("DescribeConfigurationOptions", args)
