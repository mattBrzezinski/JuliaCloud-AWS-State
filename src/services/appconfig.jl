include("../AWSCorePrototypeServices.jl")
using .Services: appconfig

"""
Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.

Required Parameters:
DeploymentStrategyId
"""
GetDeploymentStrategy(args) = appconfig("GET", "/deploymentstrategies/{DeploymentStrategyId}", args)

"""
Retrieves the list of key-value tags assigned to the resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = appconfig("GET", "/tags/{ResourceArn}", args)

"""
Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.

Required Parameters:
ApplicationId, EnvironmentId, DeploymentNumber
"""
StopDeployment(args) = appconfig("DELETE", "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", args)

"""
A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.

Required Parameters:
Name, DeploymentDurationInMinutes, GrowthFactor, ReplicateTo
"""
CreateDeploymentStrategy(args) = appconfig("POST", "/deploymentstrategies", args)

"""
Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.

Required Parameters:
DeploymentStrategyId
"""
DeleteDeploymentStrategy(args) = appconfig("DELETE", "/deployementstrategies/{DeploymentStrategyId}", args)

"""
Starts a deployment.

Required Parameters:
ApplicationId, EnvironmentId, DeploymentStrategyId, ConfigurationProfileId, ConfigurationVersion
"""
StartDeployment(args) = appconfig("POST", "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", args)

"""
Retrieve information about an application.

Required Parameters:
ApplicationId
"""
GetApplication(args) = appconfig("GET", "/applications/{ApplicationId}", args)

"""
Updates a deployment strategy.

Required Parameters:
DeploymentStrategyId
"""
UpdateDeploymentStrategy(args) = appconfig("PATCH", "/deploymentstrategies/{DeploymentStrategyId}", args)

"""
Delete an application. Deleting an application does not delete a configuration from a host.

Required Parameters:
ApplicationId
"""
DeleteApplication(args) = appconfig("DELETE", "/applications/{ApplicationId}", args)

"""
Retrieve information about a configuration deployment.

Required Parameters:
ApplicationId, EnvironmentId, DeploymentNumber
"""
GetDeployment(args) = appconfig("GET", "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", args)

"""
For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.

Required Parameters:
ApplicationId, Name
"""
CreateEnvironment(args) = appconfig("POST", "/applications/{ApplicationId}/environments", args)

"""
Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.

Required Parameters:
ApplicationId, EnvironmentId
"""
GetEnvironment(args) = appconfig("GET", "/applications/{ApplicationId}/environments/{EnvironmentId}", args)

"""
An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.

Required Parameters:
Name
"""
CreateApplication(args) = appconfig("POST", "/applications", args)

"""
Updates an application.

Required Parameters:
ApplicationId
"""
UpdateApplication(args) = appconfig("PATCH", "/applications/{ApplicationId}", args)

"""
Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.

Required Parameters:
ApplicationId, ConfigurationProfileId
"""
DeleteConfigurationProfile(args) = appconfig("DELETE", "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", args)

"""
Uses the validators in a configuration profile to validate a configuration.

Required Parameters:
ApplicationId, ConfigurationProfileId, ConfigurationVersion
"""
ValidateConfiguration(args) = appconfig("POST", "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators", args)

"""
List deployment strategies.
"""
ListDeploymentStrategies() = appconfig("GET", "/deploymentstrategies")

"""
Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = appconfig("POST", "/tags/{ResourceArn}", args)

"""
Deletes a tag key and value from an AppConfig resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = appconfig("DELETE", "/tags/{ResourceArn}", args)

"""
Retrieve information about a configuration.

Required Parameters:
Application, Environment, Configuration, ClientId
"""
GetConfiguration(args) = appconfig("GET", "/applications/{Application}/environments/{Environment}/configurations/{Configuration}", args)

"""
Delete an environment. Deleting an environment does not delete a configuration from a host.

Required Parameters:
ApplicationId, EnvironmentId
"""
DeleteEnvironment(args) = appconfig("DELETE", "/applications/{ApplicationId}/environments/{EnvironmentId}", args)

"""
List the environments for an application.

Required Parameters:
ApplicationId
"""
ListEnvironments(args) = appconfig("GET", "/applications/{ApplicationId}/environments", args)

"""
List all applications in your AWS account.
"""
ListApplications() = appconfig("GET", "/applications")

"""
Updates an environment.

Required Parameters:
ApplicationId, EnvironmentId
"""
UpdateEnvironment(args) = appconfig("PATCH", "/applications/{ApplicationId}/environments/{EnvironmentId}", args)

"""
Retrieve information about a configuration profile.

Required Parameters:
ApplicationId, ConfigurationProfileId
"""
GetConfigurationProfile(args) = appconfig("GET", "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", args)

"""
Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents and SSM Parameter Store parameters. A configuration profile includes the following information.   The Uri location of the configuration data.   The AWS Identity and Access Management (IAM) role that provides access to the configuration data.   A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.  

Required Parameters:
ApplicationId, Name, LocationUri, RetrievalRoleArn
"""
CreateConfigurationProfile(args) = appconfig("POST", "/applications/{ApplicationId}/configurationprofiles", args)

"""
Lists the configuration profiles for an application.

Required Parameters:
ApplicationId
"""
ListConfigurationProfiles(args) = appconfig("GET", "/applications/{ApplicationId}/configurationprofiles", args)

"""
Lists the deployments for an environment.

Required Parameters:
ApplicationId, EnvironmentId
"""
ListDeployments(args) = appconfig("GET", "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", args)

"""
Updates a configuration profile.

Required Parameters:
ApplicationId, ConfigurationProfileId
"""
UpdateConfigurationProfile(args) = appconfig("PATCH", "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", args)
