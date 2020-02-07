include("../AWSCorePrototypeServices.jl")
using .Services: opsworks

"""
Describes Elastic IP addresses.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeElasticIps() = opsworks("DescribeElasticIps")

"""
Stops a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
StopStack(args) = opsworks("StopStack", args)

"""
Deletes a specified app.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
AppId
"""
DeleteApp(args) = opsworks("DeleteApp", args)

"""
Describes an instance's Amazon EBS volumes.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeVolumes() = opsworks("DescribeVolumes")

"""
Creates a new user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
IamUserArn
"""
CreateUserProfile(args) = opsworks("CreateUserProfile", args)

"""
Requests a description of one or more layers in a specified stack.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeLayers() = opsworks("DescribeLayers")

"""
Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.  We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. RegisterInstance handles only the second step. You should instead use the AWS CLI register command, which performs the entire registration operation. For more information, see  Registering an Instance with an AWS OpsWorks Stacks Stack.  Registered instances have the same requirements as instances that are created by using the CreateInstance API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see  Preparing the Instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
RegisterInstance(args) = opsworks("RegisterInstance", args)

"""
Describes the permissions for a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.
"""
DescribePermissions() = opsworks("DescribePermissions")

"""
Starts a specified instance. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
StartInstance(args) = opsworks("StartInstance", args)

"""
Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see Tags in the AWS OpsWorks User Guide.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = opsworks("TagResource", args)

"""
Unassigns a registered instance from all layers that are using the instance. The instance remains in the stack as an unassigned instance, and can be assigned to another layer as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
UnassignInstance(args) = opsworks("UnassignInstance", args)

"""
Requests a description of one or more stacks.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeStacks() = opsworks("DescribeStacks")

"""
Creates a clone of a specified stack. For more information, see Clone a Stack. By default, all parameters are set to the values used by the parent stack.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
SourceStackId, ServiceRoleArn
"""
CloneStack(args) = opsworks("CloneStack", args)

"""
Registers an Amazon RDS instance with a stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, RdsDbInstanceArn, DbUser, DbPassword
"""
RegisterRdsDbInstance(args) = opsworks("RegisterRdsDbInstance", args)

"""
Specify the time-based auto scaling configuration for a specified instance. For more information, see Managing Load with Time-based and Load-based Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
SetTimeBasedAutoScaling(args) = opsworks("SetTimeBasedAutoScaling", args)

"""
Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling DeregisterElasticIp. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticIp, StackId
"""
RegisterElasticIp(args) = opsworks("RegisterElasticIp", args)

"""
Updates a registered Elastic IP address's name. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticIp
"""
UpdateElasticIp(args) = opsworks("UpdateElasticIp", args)

"""
Describes a stack's Elastic Load Balancing instances.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeElasticLoadBalancers() = opsworks("DescribeElasticLoadBalancers")

"""
Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see Shut Down a Stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
DeleteStack(args) = opsworks("DeleteStack", args)

"""
Creates an instance in a specified stack. For more information, see Adding an Instance to a Layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, LayerIds, InstanceType
"""
CreateInstance(args) = opsworks("CreateInstance", args)

"""
Assign a registered instance to a layer.   You can assign registered on-premises instances to any layer type.   You can assign registered Amazon EC2 instances only to custom layers.   You cannot use this action with instances that were created with AWS OpsWorks Stacks.    Required Permissions: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId, LayerIds
"""
AssignInstance(args) = opsworks("AssignInstance", args)

"""
Runs deployment or stack commands. For more information, see Deploying Apps and Run Stack Commands.  Required Permissions: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, Command
"""
CreateDeployment(args) = opsworks("CreateDeployment", args)

"""
Describes the results of specified commands.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeCommands() = opsworks("DescribeCommands")

"""
Deletes a user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
IamUserArn
"""
DeleteUserProfile(args) = opsworks("DeleteUserProfile", args)

"""
Describes Amazon RDS instances.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.

Required Parameters:
StackId
"""
DescribeRdsDbInstances(args) = opsworks("DescribeRdsDbInstances", args)

"""
Reboots a specified instance. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
RebootInstance(args) = opsworks("RebootInstance", args)

"""
Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
VolumeId
"""
UnassignVolume(args) = opsworks("UnassignVolume", args)

"""
Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the MaxResults and NextToken parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.
"""
DescribeEcsClusters() = opsworks("DescribeEcsClusters")

"""
Removes tags from a specified stack or layer.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = opsworks("UntagResource", args)

"""
Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
VolumeId
"""
DeregisterVolume(args) = opsworks("DeregisterVolume", args)

"""
Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticIp
"""
DeregisterElasticIp(args) = opsworks("DeregisterElasticIp", args)

"""
Describe specified users.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeUserProfiles() = opsworks("DescribeUserProfiles")

"""
Requests a description of a stack's provisioning parameters.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
DescribeStackProvisioningParameters(args) = opsworks("DescribeStackProvisioningParameters", args)

"""
Describes a user's SSH information.  Required Permissions: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeMyUserProfile() = opsworks("DescribeMyUserProfile")

"""
Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see  Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see  Managing User Permissions.

Required Parameters:
EcsClusterArn, StackId
"""
RegisterEcsCluster(args) = opsworks("RegisterEcsCluster", args)

"""
Describes time-based auto scaling configurations for specified instances.  You must specify at least one of the parameters.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
InstanceIds
"""
DescribeTimeBasedAutoScaling(args) = opsworks("DescribeTimeBasedAutoScaling", args)

"""
Detaches a specified Elastic Load Balancing instance from its layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticLoadBalancerName, LayerId
"""
DetachElasticLoadBalancer(args) = opsworks("DetachElasticLoadBalancer", args)

"""
Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see Elastic Load Balancing.  You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see  Elastic Load Balancing Developer Guide.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticLoadBalancerName, LayerId
"""
AttachElasticLoadBalancer(args) = opsworks("AttachElasticLoadBalancer", args)

"""
Updates a user's SSH public key.  Required Permissions: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
UpdateMyUserProfile() = opsworks("UpdateMyUserProfile")

"""
Updates a specified instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
UpdateInstance(args) = opsworks("UpdateInstance", args)

"""
Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see How to Delete a Layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
LayerId
"""
DeleteLayer(args) = opsworks("DeleteLayer", args)

"""
Requests a description of a set of instances.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeInstances() = opsworks("DescribeInstances")

"""
Describes AWS OpsWorks Stacks service errors.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.
"""
DescribeServiceErrors() = opsworks("DescribeServiceErrors")

"""
Updates a specified app.  Required Permissions: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
AppId
"""
UpdateApp(args) = opsworks("UpdateApp", args)

"""
Updates a specified layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
LayerId
"""
UpdateLayer(args) = opsworks("UpdateLayer", args)

"""
Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling DeregisterVolume. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
RegisterVolume(args) = opsworks("RegisterVolume", args)

"""
Updates a specified user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
IamUserArn
"""
UpdateUserProfile(args) = opsworks("UpdateUserProfile", args)

"""
Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action cannot be used with instances that were created with AWS OpsWorks Stacks.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
DeregisterInstance(args) = opsworks("DeregisterInstance", args)

"""
Creates a layer. For more information, see How to Create a Layer.  You should use CreateLayer for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, CreateLayer fails. A stack can have an arbitrary number of custom layers, so you can call CreateLayer as many times as you like for that layer type.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, Type, Name, Shortname
"""
CreateLayer(args) = opsworks("CreateLayer", args)

"""
Requests a description of a specified set of deployments.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeDeployments() = opsworks("DescribeDeployments")

"""
Updates an Amazon EBS volume's name or mount point. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
VolumeId
"""
UpdateVolume(args) = opsworks("UpdateVolume", args)

"""
Describes load-based auto scaling configurations for specified layers.  You must specify at least one of the parameters.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
LayerIds
"""
DescribeLoadBasedAutoScaling(args) = opsworks("DescribeLoadBasedAutoScaling", args)

"""
Starts a stack's instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
StartStack(args) = opsworks("StartStack", args)

"""
Specifies a user's permissions. For more information, see Security and Permissions.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, IamUserArn
"""
SetPermission(args) = opsworks("SetPermission", args)

"""
Deregisters an Amazon RDS instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
RdsDbInstanceArn
"""
DeregisterRdsDbInstance(args) = opsworks("DeregisterRdsDbInstance", args)

"""
Deregisters a specified Amazon ECS cluster from a stack. For more information, see  Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.

Required Parameters:
EcsClusterArn
"""
DeregisterEcsCluster(args) = opsworks("DeregisterEcsCluster", args)

"""
Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
StopInstance(args) = opsworks("StopInstance", args)

"""
Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it. For more information, see Deleting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
InstanceId
"""
DeleteInstance(args) = opsworks("DeleteInstance", args)

"""
Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling RegisterElasticIp. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticIp
"""
AssociateElasticIp(args) = opsworks("AssociateElasticIp", args)

"""
Requests a description of a specified set of apps.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeApps() = opsworks("DescribeApps")

"""
Describes the operating systems that are supported by AWS OpsWorks Stacks.
"""
DescribeOperatingSystems() = opsworks("DescribeOperatingSystems")

"""
 This action can be used only with Windows stacks.  Grants RDP access to a Windows instance for a specified time period.

Required Parameters:
InstanceId
"""
GrantAccess(args) = opsworks("GrantAccess", args)

"""
Creates a new stack. For more information, see Create a New Stack.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
Name, Region, ServiceRoleArn, DefaultInstanceProfileArn
"""
CreateStack(args) = opsworks("CreateStack", args)

"""
Updates an Amazon RDS instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
RdsDbInstanceArn
"""
UpdateRdsDbInstance(args) = opsworks("UpdateRdsDbInstance", args)

"""
Updates a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
UpdateStack(args) = opsworks("UpdateStack", args)

"""
Gets a generated host name for the specified layer, based on the current host name theme.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
LayerId
"""
GetHostnameSuggestion(args) = opsworks("GetHostnameSuggestion", args)

"""
Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling RegisterVolume. After you register the volume, you must call UpdateVolume to specify a mount point before calling AssignVolume. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
VolumeId
"""
AssignVolume(args) = opsworks("AssignVolume", args)

"""
Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
ElasticIp
"""
DisassociateElasticIp(args) = opsworks("DisassociateElasticIp", args)

"""
Creates an app for a specified stack. For more information, see Creating Apps.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
StackId, Name, Type
"""
CreateApp(args) = opsworks("CreateApp", args)

"""
Returns a list of tags that are applied to the specified stack or layer.

Required Parameters:
ResourceArn
"""
ListTags(args) = opsworks("ListTags", args)

"""
Describe an instance's RAID arrays.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""
DescribeRaidArrays() = opsworks("DescribeRaidArrays")

"""
Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running_setup or online.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters:
StackId
"""
DescribeStackSummary(args) = opsworks("DescribeStackSummary", args)

"""
Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. DescribeAgentVersions returns a list of available agent versions for the specified stack or configuration manager.
"""
DescribeAgentVersions() = opsworks("DescribeAgentVersions")

"""
Specify the load-based auto scaling configuration for a specified layer. For more information, see Managing Load with Time-based and Load-based Instances.  To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters:
LayerId
"""
SetLoadBasedAutoScaling(args) = opsworks("SetLoadBasedAutoScaling", args)
