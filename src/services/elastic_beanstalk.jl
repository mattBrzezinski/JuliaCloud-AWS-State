include("../AWSCorePrototypeServices.jl")
using .Services: elastic_beanstalk

"""
Retrieves the compiled information from a RequestEnvironmentInfo request. Related Topics    RequestEnvironmentInfo   

Required Parameters:
InfoType
"""
RetrieveEnvironmentInfo(args) = elastic_beanstalk("RetrieveEnvironmentInfo", args)

"""
Cancels in-progress environment configuration update or application version deployment.
"""
AbortEnvironmentUpdate() = elastic_beanstalk("AbortEnvironmentUpdate")

"""
Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.  You cannot delete an application that has a running environment. 

Required Parameters:
ApplicationName
"""
DeleteApplication(args) = elastic_beanstalk("DeleteApplication", args)

"""
Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires enhanced health reporting.
"""
DescribeInstancesHealth() = elastic_beanstalk("DescribeInstancesHealth")

"""
Returns AWS resources for this environment.
"""
DescribeEnvironmentResources() = elastic_beanstalk("DescribeEnvironmentResources")

"""
 Creates an application that has one configuration template named default and no application versions. 

Required Parameters:
ApplicationName
"""
CreateApplication(args) = elastic_beanstalk("CreateApplication", args)

"""
Returns descriptions for existing environments.
"""
DescribeEnvironments() = elastic_beanstalk("DescribeEnvironments")

"""
Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics    DeleteEnvironmentConfiguration   

Required Parameters:
ApplicationName
"""
DescribeConfigurationSettings(args) = elastic_beanstalk("DescribeConfigurationSettings", args)

"""
Lists an environment's upcoming and in-progress managed actions.
"""
DescribeEnvironmentManagedActions() = elastic_beanstalk("DescribeEnvironmentManagedActions")

"""
Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings. Templates aren't associated with any environment. The EnvironmentName response element is always null. Related Topics    DescribeConfigurationOptions     DescribeConfigurationSettings     ListAvailableSolutionStacks   

Required Parameters:
ApplicationName, TemplateName
"""
CreateConfigurationTemplate(args) = elastic_beanstalk("CreateConfigurationTemplate", args)

"""
Initiates a request to compile the specified type of information of the deployed environment.  Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.   Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs.   Use RetrieveEnvironmentInfo to obtain the set of logs.  Related Topics    RetrieveEnvironmentInfo   

Required Parameters:
InfoType
"""
RequestEnvironmentInfo(args) = elastic_beanstalk("RequestEnvironmentInfo", args)

"""
Updates the specified application version to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string. 

Required Parameters:
ApplicationName, VersionLabel
"""
UpdateApplicationVersion(args) = elastic_beanstalk("UpdateApplicationVersion", args)

"""
Lists an environment's completed and failed managed actions.
"""
DescribeEnvironmentManagedActionHistory() = elastic_beanstalk("DescribeEnvironmentManagedActionHistory")

"""
Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
"""
RebuildEnvironment() = elastic_beanstalk("RebuildEnvironment")

"""
Checks if the specified CNAME is available.

Required Parameters:
CNAMEPrefix
"""
CheckDNSAvailability(args) = elastic_beanstalk("CheckDNSAvailability", args)

"""
Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See Compose Environments for details.
"""
ComposeEnvironments() = elastic_beanstalk("ComposeEnvironments")

"""
Create a new version of your custom platform.

Required Parameters:
PlatformName, PlatformVersion, PlatformDefinitionBundle
"""
CreatePlatformVersion(args) = elastic_beanstalk("CreatePlatformVersion", args)

"""
Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.

Required Parameters:
ApplicationName, OptionSettings
"""
ValidateConfigurationSettings(args) = elastic_beanstalk("ValidateConfigurationSettings", args)

"""
Returns the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs. Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see Tagging Resources in Your Elastic Beanstalk Environment.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = elastic_beanstalk("ListTagsForResource", args)

"""
Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using DescribeConfigurationSettings while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.

Required Parameters:
ApplicationName, EnvironmentName
"""
DeleteEnvironmentConfiguration(args) = elastic_beanstalk("DeleteEnvironmentConfiguration", args)

"""
Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with DescribeEnvironmentManagedActions.

Required Parameters:
ActionId
"""
ApplyEnvironmentManagedAction(args) = elastic_beanstalk("ApplyEnvironmentManagedAction", args)

"""
Updates the specified application to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string. 

Required Parameters:
ApplicationName
"""
UpdateApplication(args) = elastic_beanstalk("UpdateApplication", args)

"""
Lists the available platforms.
"""
ListPlatformVersions() = elastic_beanstalk("ListPlatformVersions")

"""
Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.  Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error.   When updating the configuration settings to a new template or individual settings, a draft configuration is created and DescribeConfigurationSettings for this environment returns two setting descriptions with different DeploymentStatus values. 
"""
UpdateEnvironment() = elastic_beanstalk("UpdateEnvironment")

"""
Describes the version of the platform.
"""
DescribePlatformVersion() = elastic_beanstalk("DescribePlatformVersion")

"""
Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, CreateStorageLocation still returns the bucket name but does not create a new bucket.
"""
CreateStorageLocation() = elastic_beanstalk("CreateStorageLocation")

"""
Terminates the specified environment.
"""
TerminateEnvironment() = elastic_beanstalk("TerminateEnvironment")

"""
Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle  Omit both SourceBuildInformation and SourceBundle to use the default sample application.  Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. 

Required Parameters:
ApplicationName, VersionLabel
"""
CreateApplicationVersion(args) = elastic_beanstalk("CreateApplicationVersion", args)

"""
Returns the descriptions of existing applications.
"""
DescribeApplications() = elastic_beanstalk("DescribeApplications")

"""
Swaps the CNAMEs of two environments.
"""
SwapEnvironmentCNAMEs() = elastic_beanstalk("SwapEnvironmentCNAMEs")

"""
Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
"""
DescribeEvents() = elastic_beanstalk("DescribeEvents")

"""
Launches an environment for the specified application using the specified configuration.

Required Parameters:
ApplicationName
"""
CreateEnvironment(args) = elastic_beanstalk("CreateEnvironment", args)

"""
Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account. The result currently has one set of attributes—resource quotas.
"""
DescribeAccountAttributes() = elastic_beanstalk("DescribeAccountAttributes")

"""
Deletes the specified version of a custom platform.
"""
DeletePlatformVersion() = elastic_beanstalk("DeletePlatformVersion")

"""
Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.
"""
DescribeEnvironmentHealth() = elastic_beanstalk("DescribeEnvironmentHealth")

"""
Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: TagsToAdd for tags to add or update, and TagsToRemove. Currently, Elastic Beanstalk only supports tagging of Elastic Beanstalk environments. For details about environment tagging, see Tagging Resources in Your Elastic Beanstalk Environment. If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:  elasticbeanstalk:AddTags  Controls permission to call UpdateTagsForResource and pass a list of tags to add in the TagsToAdd parameter.  elasticbeanstalk:RemoveTags  Controls permission to call UpdateTagsForResource and pass a list of tag keys to remove in the TagsToRemove parameter.   For details about creating a custom user policy, see Creating a Custom User Policy.

Required Parameters:
ResourceArn
"""
UpdateTagsForResource(args) = elastic_beanstalk("UpdateTagsForResource", args)

"""
Deletes the specified version from the specified application.  You cannot delete an application version that is associated with a running environment. 

Required Parameters:
ApplicationName, VersionLabel
"""
DeleteApplicationVersion(args) = elastic_beanstalk("DeleteApplicationVersion", args)

"""
Deletes the specified configuration template.  When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment. 

Required Parameters:
ApplicationName, TemplateName
"""
DeleteConfigurationTemplate(args) = elastic_beanstalk("DeleteConfigurationTemplate", args)

"""
Causes the environment to restart the application container server running on each Amazon EC2 instance.
"""
RestartAppServer() = elastic_beanstalk("RestartAppServer")

"""
Updates the specified configuration template to have the specified properties or configuration option values.  If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string.  Related Topics    DescribeConfigurationOptions   

Required Parameters:
ApplicationName, TemplateName
"""
UpdateConfigurationTemplate(args) = elastic_beanstalk("UpdateConfigurationTemplate", args)

"""
Retrieve a list of application versions.
"""
DescribeApplicationVersions() = elastic_beanstalk("DescribeApplicationVersions")

"""
Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
"""
ListAvailableSolutionStacks() = elastic_beanstalk("ListAvailableSolutionStacks")

"""
Modifies lifecycle settings for an application.

Required Parameters:
ApplicationName, ResourceLifecycleConfig
"""
UpdateApplicationResourceLifecycle(args) = elastic_beanstalk("UpdateApplicationResourceLifecycle", args)

"""
Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
"""
DescribeConfigurationOptions() = elastic_beanstalk("DescribeConfigurationOptions")
