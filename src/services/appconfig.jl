include("../AWSCorePrototypeServices.jl")
using .Services: appconfig

"""
Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
"""
GetDeploymentStrategy(DeploymentStrategyId) = appconfig("GET", "/deploymentstrategies/$DeploymentStrategyId")
GetDeploymentStrategy(DeploymentStrategyId, args) = appconfig("GET", "/deploymentstrategies/$DeploymentStrategyId", args)
GetDeploymentStrategy(a...; b...) = GetDeploymentStrategy(a..., b)

"""
Retrieves the list of key-value tags assigned to the resource.
"""
ListTagsForResource(ResourceArn) = appconfig("GET", "/tags/$ResourceArn")
ListTagsForResource(ResourceArn, args) = appconfig("GET", "/tags/$ResourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.
"""
StopDeployment(ApplicationId, EnvironmentId, DeploymentNumber) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber")
StopDeployment(ApplicationId, EnvironmentId, DeploymentNumber, args) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber", args)
StopDeployment(a...; b...) = StopDeployment(a..., b)

"""
A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
"""
CreateDeploymentStrategy(Name, DeploymentDurationInMinutes, GrowthFactor, ReplicateTo) = appconfig("POST", "/deploymentstrategies")
CreateDeploymentStrategy(Name, DeploymentDurationInMinutes, GrowthFactor, ReplicateTo, args) = appconfig("POST", "/deploymentstrategies", args)
CreateDeploymentStrategy(a...; b...) = CreateDeploymentStrategy(a..., b)

"""
Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.
"""
DeleteDeploymentStrategy(DeploymentStrategyId) = appconfig("DELETE", "/deployementstrategies/$DeploymentStrategyId")
DeleteDeploymentStrategy(DeploymentStrategyId, args) = appconfig("DELETE", "/deployementstrategies/$DeploymentStrategyId", args)
DeleteDeploymentStrategy(a...; b...) = DeleteDeploymentStrategy(a..., b)

"""
Starts a deployment.
"""
StartDeployment(ApplicationId, EnvironmentId, DeploymentStrategyId, ConfigurationProfileId, ConfigurationVersion) = appconfig("POST", "/applications/$ApplicationId/environments/$EnvironmentId/deployments")
StartDeployment(ApplicationId, EnvironmentId, DeploymentStrategyId, ConfigurationProfileId, ConfigurationVersion, args) = appconfig("POST", "/applications/$ApplicationId/environments/$EnvironmentId/deployments", args)
StartDeployment(a...; b...) = StartDeployment(a..., b)

"""
Retrieve information about an application.
"""
GetApplication(ApplicationId) = appconfig("GET", "/applications/$ApplicationId")
GetApplication(ApplicationId, args) = appconfig("GET", "/applications/$ApplicationId", args)
GetApplication(a...; b...) = GetApplication(a..., b)

"""
Updates a deployment strategy.
"""
UpdateDeploymentStrategy(DeploymentStrategyId) = appconfig("PATCH", "/deploymentstrategies/$DeploymentStrategyId")
UpdateDeploymentStrategy(DeploymentStrategyId, args) = appconfig("PATCH", "/deploymentstrategies/$DeploymentStrategyId", args)
UpdateDeploymentStrategy(a...; b...) = UpdateDeploymentStrategy(a..., b)

"""
Delete an application. Deleting an application does not delete a configuration from a host.
"""
DeleteApplication(ApplicationId) = appconfig("DELETE", "/applications/$ApplicationId")
DeleteApplication(ApplicationId, args) = appconfig("DELETE", "/applications/$ApplicationId", args)
DeleteApplication(a...; b...) = DeleteApplication(a..., b)

"""
Retrieve information about a configuration deployment.
"""
GetDeployment(ApplicationId, EnvironmentId, DeploymentNumber) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber")
GetDeployment(ApplicationId, EnvironmentId, DeploymentNumber, args) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments/$DeploymentNumber", args)
GetDeployment(a...; b...) = GetDeployment(a..., b)

"""
For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.
"""
CreateEnvironment(ApplicationId, Name) = appconfig("POST", "/applications/$ApplicationId/environments")
CreateEnvironment(ApplicationId, Name, args) = appconfig("POST", "/applications/$ApplicationId/environments", args)
CreateEnvironment(a...; b...) = CreateEnvironment(a..., b)

"""
Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.
"""
GetEnvironment(ApplicationId, EnvironmentId) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId")
GetEnvironment(ApplicationId, EnvironmentId, args) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId", args)
GetEnvironment(a...; b...) = GetEnvironment(a..., b)

"""
An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.
"""
CreateApplication(Name) = appconfig("POST", "/applications")
CreateApplication(Name, args) = appconfig("POST", "/applications", args)
CreateApplication(a...; b...) = CreateApplication(a..., b)

"""
Updates an application.
"""
UpdateApplication(ApplicationId) = appconfig("PATCH", "/applications/$ApplicationId")
UpdateApplication(ApplicationId, args) = appconfig("PATCH", "/applications/$ApplicationId", args)
UpdateApplication(a...; b...) = UpdateApplication(a..., b)

"""
Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.
"""
DeleteConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("DELETE", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")
DeleteConfigurationProfile(ApplicationId, ConfigurationProfileId, args) = appconfig("DELETE", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId", args)
DeleteConfigurationProfile(a...; b...) = DeleteConfigurationProfile(a..., b)

"""
Uses the validators in a configuration profile to validate a configuration.
"""
ValidateConfiguration(ApplicationId, ConfigurationProfileId, ConfigurationVersion) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId/validators")
ValidateConfiguration(ApplicationId, ConfigurationProfileId, ConfigurationVersion, args) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId/validators", args)
ValidateConfiguration(a...; b...) = ValidateConfiguration(a..., b)

"""
List deployment strategies.
"""
ListDeploymentStrategies() = appconfig("GET", "/deploymentstrategies")
ListDeploymentStrategies(, args) = appconfig("GET", "/deploymentstrategies", args)
ListDeploymentStrategies(a...; b...) = ListDeploymentStrategies(a..., b)

"""
Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.
"""
TagResource(ResourceArn, Tags) = appconfig("POST", "/tags/$ResourceArn")
TagResource(ResourceArn, Tags, args) = appconfig("POST", "/tags/$ResourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Deletes a tag key and value from an AppConfig resource.
"""
UntagResource(ResourceArn, TagKeys) = appconfig("DELETE", "/tags/$ResourceArn")
UntagResource(ResourceArn, TagKeys, args) = appconfig("DELETE", "/tags/$ResourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Retrieve information about a configuration.
"""
GetConfiguration(Application, Environment, Configuration, ClientId) = appconfig("GET", "/applications/$Application/environments/$Environment/configurations/$Configuration")
GetConfiguration(Application, Environment, Configuration, ClientId, args) = appconfig("GET", "/applications/$Application/environments/$Environment/configurations/$Configuration", args)
GetConfiguration(a...; b...) = GetConfiguration(a..., b)

"""
Delete an environment. Deleting an environment does not delete a configuration from a host.
"""
DeleteEnvironment(ApplicationId, EnvironmentId) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId")
DeleteEnvironment(ApplicationId, EnvironmentId, args) = appconfig("DELETE", "/applications/$ApplicationId/environments/$EnvironmentId", args)
DeleteEnvironment(a...; b...) = DeleteEnvironment(a..., b)

"""
List the environments for an application.
"""
ListEnvironments(ApplicationId) = appconfig("GET", "/applications/$ApplicationId/environments")
ListEnvironments(ApplicationId, args) = appconfig("GET", "/applications/$ApplicationId/environments", args)
ListEnvironments(a...; b...) = ListEnvironments(a..., b)

"""
List all applications in your AWS account.
"""
ListApplications() = appconfig("GET", "/applications")
ListApplications(, args) = appconfig("GET", "/applications", args)
ListApplications(a...; b...) = ListApplications(a..., b)

"""
Updates an environment.
"""
UpdateEnvironment(ApplicationId, EnvironmentId) = appconfig("PATCH", "/applications/$ApplicationId/environments/$EnvironmentId")
UpdateEnvironment(ApplicationId, EnvironmentId, args) = appconfig("PATCH", "/applications/$ApplicationId/environments/$EnvironmentId", args)
UpdateEnvironment(a...; b...) = UpdateEnvironment(a..., b)

"""
Retrieve information about a configuration profile.
"""
GetConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")
GetConfigurationProfile(ApplicationId, ConfigurationProfileId, args) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId", args)
GetConfigurationProfile(a...; b...) = GetConfigurationProfile(a..., b)

"""
Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents and SSM Parameter Store parameters. A configuration profile includes the following information.   The Uri location of the configuration data.   The AWS Identity and Access Management (IAM) role that provides access to the configuration data.   A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.  
"""
CreateConfigurationProfile(ApplicationId, Name, LocationUri, RetrievalRoleArn) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles")
CreateConfigurationProfile(ApplicationId, Name, LocationUri, RetrievalRoleArn, args) = appconfig("POST", "/applications/$ApplicationId/configurationprofiles", args)
CreateConfigurationProfile(a...; b...) = CreateConfigurationProfile(a..., b)

"""
Lists the configuration profiles for an application.
"""
ListConfigurationProfiles(ApplicationId) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles")
ListConfigurationProfiles(ApplicationId, args) = appconfig("GET", "/applications/$ApplicationId/configurationprofiles", args)
ListConfigurationProfiles(a...; b...) = ListConfigurationProfiles(a..., b)

"""
Lists the deployments for an environment.
"""
ListDeployments(ApplicationId, EnvironmentId) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments")
ListDeployments(ApplicationId, EnvironmentId, args) = appconfig("GET", "/applications/$ApplicationId/environments/$EnvironmentId/deployments", args)
ListDeployments(a...; b...) = ListDeployments(a..., b)

"""
Updates a configuration profile.
"""
UpdateConfigurationProfile(ApplicationId, ConfigurationProfileId) = appconfig("PATCH", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId")
UpdateConfigurationProfile(ApplicationId, ConfigurationProfileId, args) = appconfig("PATCH", "/applications/$ApplicationId/configurationprofiles/$ConfigurationProfileId", args)
UpdateConfigurationProfile(a...; b...) = UpdateConfigurationProfile(a..., b)
