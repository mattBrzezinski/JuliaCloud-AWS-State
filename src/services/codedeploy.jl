include("../AWSCorePrototypeServices.jl")
using .Services: codedeploy

"""
    GetDeploymentTarget()

 Returns information about a deployment target. 

Optional Parameters
{
  "targetId": " The unique ID of a deployment target. ",
  "deploymentId": " The unique ID of a deployment. "
}
"""
GetDeploymentTarget() = codedeploy("GetDeploymentTarget")
GetDeploymentTarget(args) = codedeploy("GetDeploymentTarget", args)

"""
    GetDeploymentConfig()

Gets information about a deployment configuration.

Required Parameters
{
  "deploymentConfigName": "The name of a deployment configuration associated with the IAM user or AWS account."
}
"""
GetDeploymentConfig(args) = codedeploy("GetDeploymentConfig", args)

"""
    DeleteApplication()

Deletes an application.

Required Parameters
{
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}
"""
DeleteApplication(args) = codedeploy("DeleteApplication", args)

"""
    DeleteGitHubAccountToken()

Deletes a GitHub account connection.

Optional Parameters
{
  "tokenName": "The name of the GitHub account connection to delete."
}
"""
DeleteGitHubAccountToken() = codedeploy("DeleteGitHubAccountToken")
DeleteGitHubAccountToken(args) = codedeploy("DeleteGitHubAccountToken", args)

"""
    DeregisterOnPremisesInstance()

Deregisters an on-premises instance.

Required Parameters
{
  "instanceName": "The name of the on-premises instance to deregister."
}
"""
DeregisterOnPremisesInstance(args) = codedeploy("DeregisterOnPremisesInstance", args)

"""
    CreateApplication()

Creates an application.

Required Parameters
{
  "applicationName": "The name of the application. This name must be unique with the applicable IAM user or AWS account."
}

Optional Parameters
{
  "computePlatform": " The destination platform type for the deployment (Lambda, Server, or ECS).",
  "tags": " The metadata that you apply to CodeDeploy applications to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define. "
}
"""
CreateApplication(args) = codedeploy("CreateApplication", args)

"""
    TagResource()

 Associates the list of tags in the input Tags parameter with the resource identified by the ResourceArn input parameter. 

Required Parameters
{
  "ResourceArn": " The ARN of a resource, such as a CodeDeploy application or deployment group. ",
  "Tags": " A list of tags that TagResource associates with a resource. The resource is identified by the ResourceArn input parameter. "
}
"""
TagResource(args) = codedeploy("TagResource", args)

"""
    ListDeploymentConfigs()

Lists the deployment configurations with the IAM user or AWS account.

Optional Parameters
{
  "nextToken": "An identifier returned from the previous ListDeploymentConfigs call. It can be used to return the next set of deployment configurations in the list. "
}
"""
ListDeploymentConfigs() = codedeploy("ListDeploymentConfigs")
ListDeploymentConfigs(args) = codedeploy("ListDeploymentConfigs", args)

"""
    ListDeploymentGroups()

Lists the deployment groups for an application registered with the IAM user or AWS account.

Required Parameters
{
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}

Optional Parameters
{
  "nextToken": "An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list."
}
"""
ListDeploymentGroups(args) = codedeploy("ListDeploymentGroups", args)

"""
    ListGitHubAccountTokenNames()

Lists the names of stored connections to GitHub accounts.

Optional Parameters
{
  "nextToken": "An identifier returned from the previous ListGitHubAccountTokenNames call. It can be used to return the next set of names in the list. "
}
"""
ListGitHubAccountTokenNames() = codedeploy("ListGitHubAccountTokenNames")
ListGitHubAccountTokenNames(args) = codedeploy("ListGitHubAccountTokenNames", args)

"""
    ListDeployments()

Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.

Optional Parameters
{
  "createTimeRange": "A time range (start and end) for returning a subset of the list of deployments.",
  "includeOnlyStatuses": "A subset of deployments to list by status:   Created: Include created deployments in the resulting list.   Queued: Include queued deployments in the resulting list.   In Progress: Include in-progress deployments in the resulting list.   Succeeded: Include successful deployments in the resulting list.   Failed: Include failed deployments in the resulting list.   Stopped: Include stopped deployments in the resulting list.  ",
  "deploymentGroupName": "The name of a deployment group for the specified application.  If deploymentGroupName is specified, then applicationName must be specified. If it is not specified, then applicationName must not be specified.  ",
  "nextToken": "An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account.  If applicationName is specified, then deploymentGroupName must be specified. If it is not specified, then deploymentGroupName must not be specified.  "
}
"""
ListDeployments() = codedeploy("ListDeployments")
ListDeployments(args) = codedeploy("ListDeployments", args)

"""
    RemoveTagsFromOnPremisesInstances()

Removes one or more tags from one or more on-premises instances.

Required Parameters
{
  "instanceNames": "The names of the on-premises instances from which to remove tags.",
  "tags": "The tag key-value pairs to remove from the on-premises instances."
}
"""
RemoveTagsFromOnPremisesInstances(args) = codedeploy("RemoveTagsFromOnPremisesInstances", args)

"""
    GetDeploymentInstance()

Gets information about an instance as part of a deployment.

Required Parameters
{
  "instanceId": " The unique ID of an instance in the deployment group. ",
  "deploymentId": " The unique ID of a deployment. "
}
"""
GetDeploymentInstance(args) = codedeploy("GetDeploymentInstance", args)

"""
    GetDeployment()

Gets information about a deployment.   The content property of the appSpecContent object in the returned revision is always null. Use GetApplicationRevision and the sha256 property of the returned appSpecContent object to get the content of the deployment’s AppSpec file.  

Required Parameters
{
  "deploymentId": " The unique ID of a deployment associated with the IAM user or AWS account. "
}
"""
GetDeployment(args) = codedeploy("GetDeployment", args)

"""
    CreateDeployment()

Deploys an application revision through the specified deployment group.

Required Parameters
{
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}

Optional Parameters
{
  "ignoreApplicationStopFailures": " If true, then if an ApplicationStop, BeforeBlockTraffic, or AfterBlockTraffic deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if ApplicationStop fails, the deployment continues with DownloadBundle. If BeforeBlockTraffic fails, the deployment continues with BlockTraffic. If AfterBlockTraffic fails, the deployment continues with ApplicationStop.   If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.   During a deployment, the AWS CodeDeploy agent runs the scripts specified for ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail.   If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use ignoreApplicationStopFailures to specify that the ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic failures should be ignored. ",
  "updateOutdatedInstancesOnly": " Indicates whether to deploy to all instances or only to instances that are not running the latest application revision. ",
  "revision": " The type and location of the revision to deploy. ",
  "deploymentGroupName": "The name of the deployment group.",
  "fileExistsBehavior": "Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment. The fileExistsBehavior parameter takes any of the following values:   DISALLOW: The deployment fails. This is also the default behavior if no option is specified.   OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.   RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.  ",
  "deploymentConfigName": "The name of a deployment configuration associated with the IAM user or AWS account. If not specified, the value configured in the deployment group is used as the default. If the deployment group does not have a deployment configuration associated with it, CodeDeployDefault.OneAtATime is used by default.",
  "description": "A comment about the deployment.",
  "autoRollbackConfiguration": "Configuration information for an automatic rollback that is added when a deployment is created.",
  "targetInstances": " Information about the instances that belong to the replacement environment in a blue/green deployment. "
}
"""
CreateDeployment(args) = codedeploy("CreateDeployment", args)

"""
    AddTagsToOnPremisesInstances()

Adds tags to on-premises instances.

Required Parameters
{
  "instanceNames": "The names of the on-premises instances to which to add tags.",
  "tags": "The tag key-value pairs to add to the on-premises instances. Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed."
}
"""
AddTagsToOnPremisesInstances(args) = codedeploy("AddTagsToOnPremisesInstances", args)

"""
    BatchGetDeploymentTargets()

 Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated BatchGetDeploymentInstances. The maximum number of targets that can be returned is 25.  The type of targets returned depends on the deployment's compute platform:     EC2/On-premises: Information about EC2 instance targets.     AWS Lambda: Information about Lambda functions targets.     Amazon ECS: Information about Amazon ECS service targets.   

Optional Parameters
{
  "targetIds": " The unique IDs of the deployment targets. The compute platform of the deployment determines the type of the targets and their formats. The maximum number of deployment target IDs you can specify is 25.    For deployments that use the EC2/On-premises compute platform, the target IDs are EC2 or on-premises instances IDs, and their target type is instanceTarget.     For deployments that use the AWS Lambda compute platform, the target IDs are the names of Lambda functions, and their target type is instanceTarget.     For deployments that use the Amazon ECS compute platform, the target IDs are pairs of Amazon ECS clusters and services specified using the format &lt;clustername&gt;:&lt;servicename&gt;. Their target type is ecsTarget.   ",
  "deploymentId": " The unique ID of a deployment. "
}
"""
BatchGetDeploymentTargets() = codedeploy("BatchGetDeploymentTargets")
BatchGetDeploymentTargets(args) = codedeploy("BatchGetDeploymentTargets", args)

"""
    BatchGetOnPremisesInstances()

Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.

Required Parameters
{
  "instanceNames": "The names of the on-premises instances about which to get information. The maximum number of instance names you can specify is 25."
}
"""
BatchGetOnPremisesInstances(args) = codedeploy("BatchGetOnPremisesInstances", args)

"""
    UntagResource()

 Disassociates a resource from a list of tags. The resource is identified by the ResourceArn input parameter. The tags are identfied by the list of keys in the TagKeys input parameter. 

Required Parameters
{
  "ResourceArn": " The ARN that specifies from which resource to disassociate the tags with the keys in the TagKeys input paramter. ",
  "TagKeys": " A list of keys of Tag objects. The Tag objects identified by the keys are disassociated from the resource specified by the ResourceArn input parameter. "
}
"""
UntagResource(args) = codedeploy("UntagResource", args)

"""
    GetApplicationRevision()

Gets information about an application revision.

Required Parameters
{
  "revision": "Information about the application revision to get, including type and location.",
  "applicationName": "The name of the application that corresponds to the revision."
}
"""
GetApplicationRevision(args) = codedeploy("GetApplicationRevision", args)

"""
    SkipWaitTimeForInstanceTermination()

In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.

Optional Parameters
{
  "deploymentId": " The unique ID of a blue/green deployment for which you want to skip the instance termination wait time. "
}
"""
SkipWaitTimeForInstanceTermination() = codedeploy("SkipWaitTimeForInstanceTermination")
SkipWaitTimeForInstanceTermination(args) = codedeploy("SkipWaitTimeForInstanceTermination", args)

"""
    ContinueDeployment()

For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) 

Optional Parameters
{
  "deploymentWaitType": " The status of the deployment's waiting period. READY_WAIT indicates the deployment is ready to start shifting traffic. TERMINATION_WAIT indicates the traffic is shifted, but the original target is not terminated. ",
  "deploymentId": " The unique ID of a blue/green deployment for which you want to start rerouting traffic to the replacement environment. "
}
"""
ContinueDeployment() = codedeploy("ContinueDeployment")
ContinueDeployment(args) = codedeploy("ContinueDeployment", args)

"""
    DeleteDeploymentGroup()

Deletes a deployment group.

Required Parameters
{
  "deploymentGroupName": "The name of a deployment group for the specified application.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}
"""
DeleteDeploymentGroup(args) = codedeploy("DeleteDeploymentGroup", args)

"""
    ListDeploymentTargets()

 Returns an array of target IDs that are associated a deployment. 

Optional Parameters
{
  "targetFilters": " A key used to filter the returned targets. The two valid values are:    TargetStatus - A TargetStatus filter string can be Failed, InProgress, Pending, Ready, Skipped, Succeeded, or Unknown.     ServerInstanceLabel - A ServerInstanceLabel filter string can be Blue or Green.   ",
  "nextToken": " A token identifier returned from the previous ListDeploymentTargets call. It can be used to return the next set of deployment targets in the list. ",
  "deploymentId": " The unique ID of a deployment. "
}
"""
ListDeploymentTargets() = codedeploy("ListDeploymentTargets")
ListDeploymentTargets(args) = codedeploy("ListDeploymentTargets", args)

"""
    ListTagsForResource()

 Returns a list of tags for the resource identified by a specified ARN. Tags are used to organize and categorize your CodeDeploy resources. 

Required Parameters
{
  "ResourceArn": " The ARN of a CodeDeploy resource. ListTagsForResource returns all the tags associated with the resource that is identified by the ResourceArn. "
}

Optional Parameters
{
  "NextToken": "An identifier returned from the previous ListTagsForResource call. It can be used to return the next set of applications in the list."
}
"""
ListTagsForResource(args) = codedeploy("ListTagsForResource", args)

"""
    StopDeployment()

Attempts to stop an ongoing deployment.

Required Parameters
{
  "deploymentId": " The unique ID of a deployment. "
}

Optional Parameters
{
  "autoRollbackEnabled": " Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision. "
}
"""
StopDeployment(args) = codedeploy("StopDeployment", args)

"""
    GetApplication()

Gets information about an application.

Required Parameters
{
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}
"""
GetApplication(args) = codedeploy("GetApplication", args)

"""
    CreateDeploymentGroup()

Creates a deployment group to which application revisions are deployed.

Required Parameters
{
  "serviceRoleArn": "A service role ARN that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.",
  "deploymentGroupName": "The name of a new deployment group for the specified application.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}

Optional Parameters
{
  "alarmConfiguration": "Information to add about Amazon CloudWatch alarms when the deployment group is created.",
  "autoScalingGroups": "A list of associated Amazon EC2 Auto Scaling groups.",
  "deploymentConfigName": "If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation. CodeDeployDefault.OneAtATime is the default deployment configuration. It is used if a configuration isn't specified for the deployment or deployment group. For more information about the predefined deployment configurations in AWS CodeDeploy, see Working with Deployment Groups in AWS CodeDeploy in the AWS CodeDeploy User Guide.",
  "ecsServices": " The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format &lt;clustername&gt;:&lt;servicename&gt;. ",
  "onPremisesTagSet": "Information about groups of tags applied to on-premises instances. The deployment group includes only on-premises instances identified by all of the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.",
  "triggerConfigurations": "Information about triggers to create when the deployment group is created. For examples, see Create a Trigger for an AWS CodeDeploy Event in the AWS CodeDeploy User Guide.",
  "onPremisesInstanceTagFilters": "The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags. Cannot be used in the same call as OnPremisesTagSet.",
  "ec2TagFilters": "The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.",
  "blueGreenDeploymentConfiguration": "Information about blue/green deployment options for a deployment group.",
  "deploymentStyle": "Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.",
  "ec2TagSet": "Information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilters.",
  "loadBalancerInfo": "Information about the load balancer used in a deployment.",
  "autoRollbackConfiguration": "Configuration information for an automatic rollback that is added when a deployment group is created.",
  "tags": " The metadata that you apply to CodeDeploy deployment groups to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define. "
}
"""
CreateDeploymentGroup(args) = codedeploy("CreateDeploymentGroup", args)

"""
    UpdateApplication()

Changes the name of an application.

Optional Parameters
{
  "newApplicationName": "The new name to give the application.",
  "applicationName": "The current name of the application you want to change."
}
"""
UpdateApplication() = codedeploy("UpdateApplication")
UpdateApplication(args) = codedeploy("UpdateApplication", args)

"""
    ListDeploymentInstances()

  The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 

Required Parameters
{
  "deploymentId": " The unique ID of a deployment. "
}

Optional Parameters
{
  "instanceStatusFilter": "A subset of instances to list by status:   Pending: Include those instances with pending deployments.   InProgress: Include those instances where deployments are still in progress.   Succeeded: Include those instances with successful deployments.   Failed: Include those instances with failed deployments.   Skipped: Include those instances with skipped deployments.   Unknown: Include those instances with deployments in an unknown state.  ",
  "instanceTypeFilter": "The set of instances in a blue/green deployment, either those in the original environment (\"BLUE\") or those in the replacement environment (\"GREEN\"), for which you want to view instance information.",
  "nextToken": "An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list."
}
"""
ListDeploymentInstances(args) = codedeploy("ListDeploymentInstances", args)

"""
    PutLifecycleEventHookExecutionStatus()

 Sets the result of a Lambda validation function. The function validates one or both lifecycle events (BeforeAllowTraffic and AfterAllowTraffic) and returns Succeeded or Failed. 

Optional Parameters
{
  "status": "The result of a Lambda function that validates a deployment lifecycle event (Succeeded or Failed).",
  "lifecycleEventHookExecutionId": " The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the hooks section of the AppSpec file. ",
  "deploymentId": " The unique ID of a deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event. "
}
"""
PutLifecycleEventHookExecutionStatus() = codedeploy("PutLifecycleEventHookExecutionStatus")
PutLifecycleEventHookExecutionStatus(args) = codedeploy("PutLifecycleEventHookExecutionStatus", args)

"""
    ListApplications()

Lists the applications registered with the IAM user or AWS account.

Optional Parameters
{
  "nextToken": "An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list."
}
"""
ListApplications() = codedeploy("ListApplications")
ListApplications(args) = codedeploy("ListApplications", args)

"""
    BatchGetApplications()

Gets information about one or more applications. The maximum number of applications that can be returned is 25.

Required Parameters
{
  "applicationNames": "A list of application names separated by spaces. The maximum number of application names you can specify is 25."
}
"""
BatchGetApplications(args) = codedeploy("BatchGetApplications", args)

"""
    CreateDeploymentConfig()

 Creates a deployment configuration. 

Required Parameters
{
  "deploymentConfigName": "The name of the deployment configuration to create."
}

Optional Parameters
{
  "computePlatform": "The destination platform type for the deployment (Lambda, Server, or ECS).",
  "trafficRoutingConfig": "The configuration that specifies how the deployment traffic is routed.",
  "minimumHealthyHosts": "The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value. The type parameter takes either of the following values:   HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.   FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances.   The value parameter takes an integer. For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95."
}
"""
CreateDeploymentConfig(args) = codedeploy("CreateDeploymentConfig", args)

"""
    BatchGetDeployments()

Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.

Required Parameters
{
  "deploymentIds": " A list of deployment IDs, separated by spaces. The maximum number of deployment IDs you can specify is 25."
}
"""
BatchGetDeployments(args) = codedeploy("BatchGetDeployments", args)

"""
    UpdateDeploymentGroup()

Changes information about a deployment group.

Required Parameters
{
  "currentDeploymentGroupName": "The current name of the deployment group.",
  "applicationName": "The application name that corresponds to the deployment group to update."
}

Optional Parameters
{
  "newDeploymentGroupName": "The new name of the deployment group, if you want to change it.",
  "alarmConfiguration": "Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.",
  "autoScalingGroups": "The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.",
  "deploymentConfigName": "The replacement deployment configuration name to use, if you want to change it.",
  "ecsServices": " The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format &lt;clustername&gt;:&lt;servicename&gt;. ",
  "serviceRoleArn": "A replacement ARN for the service role, if you want to change it.",
  "onPremisesTagSet": "Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.",
  "triggerConfigurations": "Information about triggers to change when the deployment group is updated. For examples, see Modify Triggers in an AWS CodeDeploy Deployment Group in the AWS CodeDeploy User Guide.",
  "onPremisesInstanceTagFilters": "The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.",
  "ec2TagFilters": "The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.",
  "blueGreenDeploymentConfiguration": "Information about blue/green deployment options for a deployment group.",
  "deploymentStyle": "Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.",
  "ec2TagSet": "Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.",
  "loadBalancerInfo": "Information about the load balancer used in a deployment.",
  "autoRollbackConfiguration": "Information for an automatic rollback configuration that is added or changed when a deployment group is updated."
}
"""
UpdateDeploymentGroup(args) = codedeploy("UpdateDeploymentGroup", args)

"""
    RegisterApplicationRevision()

Registers with AWS CodeDeploy a revision for the specified application.

Required Parameters
{
  "revision": "Information about the application revision to register, including type and location.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}

Optional Parameters
{
  "description": "A comment about the revision."
}
"""
RegisterApplicationRevision(args) = codedeploy("RegisterApplicationRevision", args)

"""
    DeleteDeploymentConfig()

Deletes a deployment configuration.  A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted. 

Required Parameters
{
  "deploymentConfigName": "The name of a deployment configuration associated with the IAM user or AWS account."
}
"""
DeleteDeploymentConfig(args) = codedeploy("DeleteDeploymentConfig", args)

"""
    ListOnPremisesInstances()

Gets a list of names for one or more on-premises instances. Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.

Optional Parameters
{
  "tagFilters": "The on-premises instance tags that are used to restrict the on-premises instance names returned.",
  "nextToken": "An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.",
  "registrationStatus": "The registration status of the on-premises instances:   Deregistered: Include deregistered on-premises instances in the resulting list.   Registered: Include registered on-premises instances in the resulting list.  "
}
"""
ListOnPremisesInstances() = codedeploy("ListOnPremisesInstances")
ListOnPremisesInstances(args) = codedeploy("ListOnPremisesInstances", args)

"""
    BatchGetDeploymentGroups()

Gets information about one or more deployment groups.

Required Parameters
{
  "deploymentGroupNames": "The names of the deployment groups.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account."
}
"""
BatchGetDeploymentGroups(args) = codedeploy("BatchGetDeploymentGroups", args)

"""
    RegisterOnPremisesInstance()

Registers an on-premises instance.  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both. 

Required Parameters
{
  "instanceName": "The name of the on-premises instance to register."
}

Optional Parameters
{
  "iamUserArn": "The ARN of the IAM user to associate with the on-premises instance.",
  "iamSessionArn": "The ARN of the IAM session to associate with the on-premises instance."
}
"""
RegisterOnPremisesInstance(args) = codedeploy("RegisterOnPremisesInstance", args)

"""
    BatchGetDeploymentInstances()

  This method works, but is deprecated. Use BatchGetDeploymentTargets instead.    Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer BatchGetDeploymentTargets works with all compute platforms. The maximum number of instances that can be returned is 25.

Required Parameters
{
  "instanceIds": "The unique IDs of instances used in the deployment. The maximum number of instance IDs you can specify is 25.",
  "deploymentId": " The unique ID of a deployment. "
}
"""
BatchGetDeploymentInstances(args) = codedeploy("BatchGetDeploymentInstances", args)

"""
    GetOnPremisesInstance()

 Gets information about an on-premises instance. 

Required Parameters
{
  "instanceName": " The name of the on-premises instance about which to get information. "
}
"""
GetOnPremisesInstance(args) = codedeploy("GetOnPremisesInstance", args)

"""
    ListApplicationRevisions()

Lists information about revisions for an application.

Required Parameters
{
  "applicationName": " The name of an AWS CodeDeploy application associated with the IAM user or AWS account. "
}

Optional Parameters
{
  "deployed": " Whether to list revisions based on whether the revision is the target revision of an deployment group:    include: List revisions that are target revisions of a deployment group.   exclude: Do not list revisions that are target revisions of a deployment group.   ignore: List all revisions.  ",
  "sortBy": "The column name to use to sort the list results:   registerTime: Sort by the time the revisions were registered with AWS CodeDeploy.   firstUsedTime: Sort by the time the revisions were first used in a deployment.   lastUsedTime: Sort by the time the revisions were last used in a deployment.    If not specified or set to null, the results are returned in an arbitrary order. ",
  "s3KeyPrefix": " A key prefix for the set of Amazon S3 objects to limit the search for revisions. ",
  "sortOrder": " The order in which to sort the list results:    ascending: ascending order.   descending: descending order.   If not specified, the results are sorted in ascending order. If set to null, the results are sorted in an arbitrary order.",
  "s3Bucket": " An Amazon S3 bucket name to limit the search for revisions.   If set to null, all of the user's buckets are searched. ",
  "nextToken": "An identifier returned from the previous ListApplicationRevisions call. It can be used to return the next set of applications in the list."
}
"""
ListApplicationRevisions(args) = codedeploy("ListApplicationRevisions", args)

"""
    BatchGetApplicationRevisions()

Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.

Required Parameters
{
  "revisions": "An array of RevisionLocation objects that specify information to get about the application revisions, including type and location. The maximum number of RevisionLocation objects you can specify is 25.",
  "applicationName": "The name of an AWS CodeDeploy application about which to get revision information."
}
"""
BatchGetApplicationRevisions(args) = codedeploy("BatchGetApplicationRevisions", args)

"""
    GetDeploymentGroup()

Gets information about a deployment group.

Required Parameters
{
  "deploymentGroupName": "The name of a deployment group for the specified application.",
  "applicationName": "The name of an AWS CodeDeploy application associated with the IAM user or AWS account."
}
"""
GetDeploymentGroup(args) = codedeploy("GetDeploymentGroup", args)
