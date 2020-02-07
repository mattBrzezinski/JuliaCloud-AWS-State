include("../AWSCorePrototypeServices.jl")
using .Services: codedeploy

"""
 Returns information about a deployment target. 
"""
GetDeploymentTarget() = codedeploy("GetDeploymentTarget")

"""
Gets information about a deployment configuration.

Required Parameters:
deploymentConfigName
"""
GetDeploymentConfig(args) = codedeploy("GetDeploymentConfig", args)

"""
Deletes an application.

Required Parameters:
applicationName
"""
DeleteApplication(args) = codedeploy("DeleteApplication", args)

"""
Deletes a GitHub account connection.
"""
DeleteGitHubAccountToken() = codedeploy("DeleteGitHubAccountToken")

"""
Deregisters an on-premises instance.

Required Parameters:
instanceName
"""
DeregisterOnPremisesInstance(args) = codedeploy("DeregisterOnPremisesInstance", args)

"""
Creates an application.

Required Parameters:
applicationName
"""
CreateApplication(args) = codedeploy("CreateApplication", args)

"""
 Associates the list of tags in the input Tags parameter with the resource identified by the ResourceArn input parameter. 

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = codedeploy("TagResource", args)

"""
Lists the deployment configurations with the IAM user or AWS account.
"""
ListDeploymentConfigs() = codedeploy("ListDeploymentConfigs")

"""
Lists the deployment groups for an application registered with the IAM user or AWS account.

Required Parameters:
applicationName
"""
ListDeploymentGroups(args) = codedeploy("ListDeploymentGroups", args)

"""
Lists the names of stored connections to GitHub accounts.
"""
ListGitHubAccountTokenNames() = codedeploy("ListGitHubAccountTokenNames")

"""
Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
"""
ListDeployments() = codedeploy("ListDeployments")

"""
Removes one or more tags from one or more on-premises instances.

Required Parameters:
tags, instanceNames
"""
RemoveTagsFromOnPremisesInstances(args) = codedeploy("RemoveTagsFromOnPremisesInstances", args)

"""
Gets information about an instance as part of a deployment.

Required Parameters:
deploymentId, instanceId
"""
GetDeploymentInstance(args) = codedeploy("GetDeploymentInstance", args)

"""
Gets information about a deployment.   The content property of the appSpecContent object in the returned revision is always null. Use GetApplicationRevision and the sha256 property of the returned appSpecContent object to get the content of the deployment’s AppSpec file.  

Required Parameters:
deploymentId
"""
GetDeployment(args) = codedeploy("GetDeployment", args)

"""
Deploys an application revision through the specified deployment group.

Required Parameters:
applicationName
"""
CreateDeployment(args) = codedeploy("CreateDeployment", args)

"""
Adds tags to on-premises instances.

Required Parameters:
tags, instanceNames
"""
AddTagsToOnPremisesInstances(args) = codedeploy("AddTagsToOnPremisesInstances", args)

"""
 Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated BatchGetDeploymentInstances. The maximum number of targets that can be returned is 25.  The type of targets returned depends on the deployment's compute platform:     EC2/On-premises: Information about EC2 instance targets.     AWS Lambda: Information about Lambda functions targets.     Amazon ECS: Information about Amazon ECS service targets.   
"""
BatchGetDeploymentTargets() = codedeploy("BatchGetDeploymentTargets")

"""
Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.

Required Parameters:
instanceNames
"""
BatchGetOnPremisesInstances(args) = codedeploy("BatchGetOnPremisesInstances", args)

"""
 Disassociates a resource from a list of tags. The resource is identified by the ResourceArn input parameter. The tags are identfied by the list of keys in the TagKeys input parameter. 

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = codedeploy("UntagResource", args)

"""
Gets information about an application revision.

Required Parameters:
applicationName, revision
"""
GetApplicationRevision(args) = codedeploy("GetApplicationRevision", args)

"""
In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.
"""
SkipWaitTimeForInstanceTermination() = codedeploy("SkipWaitTimeForInstanceTermination")

"""
For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) 
"""
ContinueDeployment() = codedeploy("ContinueDeployment")

"""
Deletes a deployment group.

Required Parameters:
applicationName, deploymentGroupName
"""
DeleteDeploymentGroup(args) = codedeploy("DeleteDeploymentGroup", args)

"""
 Returns an array of target IDs that are associated a deployment. 
"""
ListDeploymentTargets() = codedeploy("ListDeploymentTargets")

"""
 Returns a list of tags for the resource identified by a specified ARN. Tags are used to organize and categorize your CodeDeploy resources. 

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = codedeploy("ListTagsForResource", args)

"""
Attempts to stop an ongoing deployment.

Required Parameters:
deploymentId
"""
StopDeployment(args) = codedeploy("StopDeployment", args)

"""
Gets information about an application.

Required Parameters:
applicationName
"""
GetApplication(args) = codedeploy("GetApplication", args)

"""
Creates a deployment group to which application revisions are deployed.

Required Parameters:
applicationName, deploymentGroupName, serviceRoleArn
"""
CreateDeploymentGroup(args) = codedeploy("CreateDeploymentGroup", args)

"""
Changes the name of an application.
"""
UpdateApplication() = codedeploy("UpdateApplication")

"""
  The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 

Required Parameters:
deploymentId
"""
ListDeploymentInstances(args) = codedeploy("ListDeploymentInstances", args)

"""
 Sets the result of a Lambda validation function. The function validates one or both lifecycle events (BeforeAllowTraffic and AfterAllowTraffic) and returns Succeeded or Failed. 
"""
PutLifecycleEventHookExecutionStatus() = codedeploy("PutLifecycleEventHookExecutionStatus")

"""
Lists the applications registered with the IAM user or AWS account.
"""
ListApplications() = codedeploy("ListApplications")

"""
Gets information about one or more applications. The maximum number of applications that can be returned is 25.

Required Parameters:
applicationNames
"""
BatchGetApplications(args) = codedeploy("BatchGetApplications", args)

"""
 Creates a deployment configuration. 

Required Parameters:
deploymentConfigName
"""
CreateDeploymentConfig(args) = codedeploy("CreateDeploymentConfig", args)

"""
Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.

Required Parameters:
deploymentIds
"""
BatchGetDeployments(args) = codedeploy("BatchGetDeployments", args)

"""
Changes information about a deployment group.

Required Parameters:
applicationName, currentDeploymentGroupName
"""
UpdateDeploymentGroup(args) = codedeploy("UpdateDeploymentGroup", args)

"""
Registers with AWS CodeDeploy a revision for the specified application.

Required Parameters:
applicationName, revision
"""
RegisterApplicationRevision(args) = codedeploy("RegisterApplicationRevision", args)

"""
Deletes a deployment configuration.  A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted. 

Required Parameters:
deploymentConfigName
"""
DeleteDeploymentConfig(args) = codedeploy("DeleteDeploymentConfig", args)

"""
Gets a list of names for one or more on-premises instances. Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
"""
ListOnPremisesInstances() = codedeploy("ListOnPremisesInstances")

"""
Gets information about one or more deployment groups.

Required Parameters:
applicationName, deploymentGroupNames
"""
BatchGetDeploymentGroups(args) = codedeploy("BatchGetDeploymentGroups", args)

"""
Registers an on-premises instance.  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both. 

Required Parameters:
instanceName
"""
RegisterOnPremisesInstance(args) = codedeploy("RegisterOnPremisesInstance", args)

"""
  This method works, but is deprecated. Use BatchGetDeploymentTargets instead.    Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer BatchGetDeploymentTargets works with all compute platforms. The maximum number of instances that can be returned is 25.

Required Parameters:
deploymentId, instanceIds
"""
BatchGetDeploymentInstances(args) = codedeploy("BatchGetDeploymentInstances", args)

"""
 Gets information about an on-premises instance. 

Required Parameters:
instanceName
"""
GetOnPremisesInstance(args) = codedeploy("GetOnPremisesInstance", args)

"""
Lists information about revisions for an application.

Required Parameters:
applicationName
"""
ListApplicationRevisions(args) = codedeploy("ListApplicationRevisions", args)

"""
Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.

Required Parameters:
applicationName, revisions
"""
BatchGetApplicationRevisions(args) = codedeploy("BatchGetApplicationRevisions", args)

"""
Gets information about a deployment group.

Required Parameters:
applicationName, deploymentGroupName
"""
GetDeploymentGroup(args) = codedeploy("GetDeploymentGroup", args)
