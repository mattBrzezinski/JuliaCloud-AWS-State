include("../AWSCorePrototypeServices.jl")
using .Services: opsworks

"""
    DescribeElasticIps()

Describes Elastic IP addresses.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "A stack ID. If you include this parameter, DescribeElasticIps returns a description of the Elastic IP addresses that are registered with the specified stack.",
  "InstanceId": "The instance ID. If you include this parameter, DescribeElasticIps returns a description of the Elastic IP addresses associated with the specified instance.",
  "Ips": "An array of Elastic IP addresses to be described. If you include this parameter, DescribeElasticIps returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address."
}
"""

DescribeElasticIps() = opsworks("DescribeElasticIps")
DescribeElasticIps(args) = opsworks("DescribeElasticIps", args)

"""
    StopStack()

Stops a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}
"""
StopStack(args) = opsworks("StopStack", args)

"""
    DeleteApp()

Deletes a specified app.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "AppId": "The app ID."
}
"""
DeleteApp(args) = opsworks("DeleteApp", args)

"""
    DescribeVolumes()

Describes an instance's Amazon EBS volumes.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "A stack ID. The action describes the stack's registered Amazon EBS volumes.",
  "VolumeIds": "Am array of volume IDs. If you use this parameter, DescribeVolumes returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.",
  "InstanceId": "The instance ID. If you use this parameter, DescribeVolumes returns descriptions of the volumes associated with the specified instance.",
  "RaidArrayId": "The RAID array ID. If you use this parameter, DescribeVolumes returns descriptions of the volumes associated with the specified RAID array."
}
"""

DescribeVolumes() = opsworks("DescribeVolumes")
DescribeVolumes(args) = opsworks("DescribeVolumes", args)

"""
    CreateUserProfile()

Creates a new user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "IamUserArn": "The user's IAM ARN; this can also be a federated user's ARN."
}

Optional Parameters
{
  "AllowSelfManagement": "Whether users can specify their own SSH public key through the My Settings page. For more information, see Setting an IAM User's Public SSH Key.",
  "SshPublicKey": "The user's public SSH key.",
  "SshUsername": "The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, my.name will be changed to myname. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. "
}
"""
CreateUserProfile(args) = opsworks("CreateUserProfile", args)

"""
    DescribeLayers()

Requests a description of one or more layers in a specified stack.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "The stack ID.",
  "LayerIds": "An array of layer IDs that specify the layers to be described. If you omit this parameter, DescribeLayers returns a description of every layer in the specified stack."
}
"""

DescribeLayers() = opsworks("DescribeLayers")
DescribeLayers(args) = opsworks("DescribeLayers", args)

"""
    RegisterInstance()

Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.  We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. RegisterInstance handles only the second step. You should instead use the AWS CLI register command, which performs the entire registration operation. For more information, see  Registering an Instance with an AWS OpsWorks Stacks Stack.  Registered instances have the same requirements as instances that are created by using the CreateInstance API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see  Preparing the Instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The ID of the stack that the instance is to be registered with."
}

Optional Parameters
{
  "InstanceIdentity": "An InstanceIdentity object that contains the instance's identity.",
  "Hostname": "The instance's hostname.",
  "RsaPublicKey": "The instances public RSA key. This key is used to encrypt communication between the instance and the service.",
  "PrivateIp": "The instance's private IP address.",
  "RsaPublicKeyFingerprint": "The instances public RSA key fingerprint.",
  "PublicIp": "The instance's public IP address."
}
"""
RegisterInstance(args) = opsworks("RegisterInstance", args)

"""
    DescribePermissions()

Describes the permissions for a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "The stack ID.",
  "IamUserArn": "The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see Using Identifiers."
}
"""

DescribePermissions() = opsworks("DescribePermissions")
DescribePermissions(args) = opsworks("DescribePermissions", args)

"""
    StartInstance()

Starts a specified instance. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}
"""
StartInstance(args) = opsworks("StartInstance", args)

"""
    TagResource()

Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see Tags in the AWS OpsWorks User Guide.

Required Parameters
{
  "ResourceArn": "The stack or layer's Amazon Resource Number (ARN).",
  "Tags": "A map that contains tag keys and tag values that are attached to a stack or layer.   The key cannot be empty.   The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: + - = . _ : /    The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: + - = . _ : /    Leading and trailing white spaces are trimmed from both the key and value.   A maximum of 40 tags is allowed for any resource.  "
}
"""
TagResource(args) = opsworks("TagResource", args)

"""
    UnassignInstance()

Unassigns a registered instance from all layers that are using the instance. The instance remains in the stack as an unassigned instance, and can be assigned to another layer as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}
"""
UnassignInstance(args) = opsworks("UnassignInstance", args)

"""
    DescribeStacks()

Requests a description of one or more stacks.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackIds": "An array of stack IDs that specify the stacks to be described. If you omit this parameter, DescribeStacks returns a description of every stack."
}
"""

DescribeStacks() = opsworks("DescribeStacks")
DescribeStacks(args) = opsworks("DescribeStacks", args)

"""
    CloneStack()

Creates a clone of a specified stack. For more information, see Clone a Stack. By default, all parameters are set to the values used by the parent stack.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "SourceStackId": "The source stack ID.",
  "ServiceRoleArn": "The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling DescribePermissions. For more information about IAM ARNs, see Using Identifiers.  You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly. "
}

Optional Parameters
{
  "DefaultRootDeviceType": "The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see Storage for the Root Device.",
  "CloneAppIds": "A list of source stack app IDs to be included in the cloned stack.",
  "ChefConfiguration": "A ChefConfiguration object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see Create a New Stack.",
  "AgentVersion": "The default AWS OpsWorks Stacks agent version. You have the following options:   Auto-update - Set this parameter to LATEST. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.   The default setting is LATEST. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.  You can also specify an agent version when you create or update an instance, which overrides the stack's default setting. ",
  "CustomJson": "A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:  \"{ \"key1 \":  \"value1 \",  \"key2 \":  \"value2 \",...}\"  For more information about custom JSON, see Use Custom JSON to Modify the Stack Configuration Attributes ",
  "DefaultInstanceProfileArn": "The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see Using Identifiers.",
  "DefaultAvailabilityZone": "The cloned stack's default Availability Zone, which must be in the specified region. For more information, see Regions and Endpoints. If you also specify a value for DefaultSubnetId, the subnet must be in the same zone. For more information, see the VpcId parameter description. ",
  "DefaultOs": "The stack's operating system, which must be set to one of the following.   A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.   A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.    CentOS Linux 7     Red Hat Enterprise Linux 7     Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.   A custom AMI: Custom. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see Using Custom AMIs.   The default option is the parent stack's operating system. For more information about supported operating systems, see AWS OpsWorks Stacks Operating Systems.  You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux. ",
  "VpcId": "The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.   If your account supports EC2 Classic, the default value is no VPC.   If your account does not support EC2 Classic, the default value is the default VPC for the specified region.   If the VPC ID corresponds to a default VPC and you have specified either the DefaultAvailabilityZone or the DefaultSubnetId parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.  If you specify a nondefault VPC ID, note the following:   It must belong to a VPC in your account that is in the specified region.   You must specify a value for DefaultSubnetId.   For more information about how to use AWS OpsWorks Stacks with a VPC, see Running a Stack in a VPC. For more information about default VPC and EC2 Classic, see Supported Platforms. ",
  "HostnameTheme": "The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, HostnameTheme is set to Layer_Dependent, which creates host names by appending integers to the layer's short name. The other themes are:    Baked_Goods     Clouds     Europe_Cities     Fruits     Greek_Deities_and_Titans     Legendary_creatures_from_Japan     Planets_and_Moons     Roman_Deities     Scottish_Islands     US_Cities     Wild_Cats    To obtain a generated host name, call GetHostNameSuggestion, which returns a host name based on the current theme.",
  "Name": "The cloned stack name.",
  "UseOpsworksSecurityGroups": "Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With UseOpsworksSecurityGroups you can instead provide your own custom security groups. UseOpsworksSecurityGroups has the following settings:    True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.   For more information, see Create a New Stack.",
  "CustomCookbooksSource": "Contains the information required to retrieve an app or cookbook from a repository. For more information, see Adding Apps or Cookbooks and Recipes.",
  "ConfigurationManager": "The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.",
  "Attributes": "A list of stack attributes and values as key/value pairs to be added to the cloned stack.",
  "DefaultSubnetId": "The stack's default VPC subnet ID. This parameter is required if you specify a value for the VpcId parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for DefaultAvailabilityZone, the subnet must be in that zone. For information on default values and when this parameter is required, see the VpcId parameter description. ",
  "Region": "The cloned stack AWS region, such as \"ap-northeast-2\". For more information about AWS regions, see Regions and Endpoints.",
  "DefaultSshKeyName": "A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see  Using SSH to Communicate with an Instance and  Managing SSH Access. You can override this setting by specifying a different key pair, or no key pair, when you  create an instance. ",
  "UseCustomCookbooks": "Whether to use custom cookbooks.",
  "ClonePermissions": "Whether to clone the source stack's permissions."
}
"""
CloneStack(args) = opsworks("CloneStack", args)

"""
    RegisterRdsDbInstance()

Registers an Amazon RDS instance with a stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "DbUser": "The database's master user name.",
  "RdsDbInstanceArn": "The Amazon RDS instance's ARN.",
  "DbPassword": "The database password."
}
"""
RegisterRdsDbInstance(args) = opsworks("RegisterRdsDbInstance", args)

"""
    SetTimeBasedAutoScaling()

Specify the time-based auto scaling configuration for a specified instance. For more information, see Managing Load with Time-based and Load-based Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}

Optional Parameters
{
  "AutoScalingSchedule": "An AutoScalingSchedule with the instance schedule."
}
"""
SetTimeBasedAutoScaling(args) = opsworks("SetTimeBasedAutoScaling", args)

"""
    RegisterElasticIp()

Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling DeregisterElasticIp. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "ElasticIp": "The Elastic IP address."
}
"""
RegisterElasticIp(args) = opsworks("RegisterElasticIp", args)

"""
    UpdateElasticIp()

Updates a registered Elastic IP address's name. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "ElasticIp": "The IP address for which you want to update the name."
}

Optional Parameters
{
  "Name": "The new name."
}
"""
UpdateElasticIp(args) = opsworks("UpdateElasticIp", args)

"""
    DescribeElasticLoadBalancers()

Describes a stack's Elastic Load Balancing instances.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "A stack ID. The action describes the stack's Elastic Load Balancing instances.",
  "LayerIds": "A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers."
}
"""

DescribeElasticLoadBalancers() = opsworks("DescribeElasticLoadBalancers")
DescribeElasticLoadBalancers(args) = opsworks("DescribeElasticLoadBalancers", args)

"""
    DeleteStack()

Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see Shut Down a Stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}
"""
DeleteStack(args) = opsworks("DeleteStack", args)

"""
    CreateInstance()

Creates an instance in a specified stack. For more information, see Adding an Instance to a Layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "InstanceType": "The instance type, such as t2.micro. For a list of supported instance types, open the stack in the console, choose Instances, and choose + Instance. The Size list contains the currently supported types. For more information, see Instance Families and Types. The parameter values that you use to specify the various types are in the API Name column of the Available Instance Types table.",
  "LayerIds": "An array that contains the instance's layer IDs."
}

Optional Parameters
{
  "BlockDeviceMappings": "An array of BlockDeviceMapping objects that specify the instance's block devices. For more information, see Block Device Mapping. Note that block device mappings are not supported for custom AMIs.",
  "InstallUpdatesOnBoot": "Whether to install operating system and package updates when the instance boots. The default value is true. To control when updates are installed, set this value to false. You must then update your instances manually by using CreateDeployment to run the update_dependencies stack command or by manually running yum (Amazon Linux) or apt-get (Ubuntu) on the instances.   We strongly recommend using the default value of true to ensure that your instances have the latest security updates. ",
  "Tenancy": "The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: dedicated, default, or host. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see Dedicated Hosts Overview and Amazon EC2 Dedicated Hosts. For more information about dedicated instances, see Dedicated Instances and Amazon EC2 Dedicated Instances.",
  "Architecture": "The instance architecture. The default option is x86_64. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see Instance Families and Types.",
  "AgentVersion": "The default AWS OpsWorks Stacks agent version. You have the following options:    INHERIT - Use the stack's default agent version setting.    version_number - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.   The default setting is INHERIT. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.",
  "Os": "The instance's operating system, which must be set to one of the following.   A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.   A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.    CentOS Linux 7     Red Hat Enterprise Linux 7    A supported Windows operating system, such as Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.   A custom AMI: Custom.   For more information about the supported operating systems, see AWS OpsWorks Stacks Operating Systems. The default option is the current Amazon Linux version. If you set this parameter to Custom, you must use the CreateInstance action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is Custom. For more information about supported operating systems, see Operating SystemsFor more information about how to use custom AMIs with AWS OpsWorks Stacks, see Using Custom AMIs.",
  "SshKeyName": "The instance's Amazon EC2 key-pair name.",
  "AutoScalingType": "For load-based or time-based instances, the type. Windows stacks can use only time-based instances.",
  "SubnetId": "The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.",
  "Hostname": "The instance host name.",
  "AvailabilityZone": "The instance Availability Zone. For more information, see Regions and Endpoints.",
  "AmiId": "A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see Using Custom AMIs.  If you specify a custom AMI, you must set Os to Custom. ",
  "VirtualizationType": "The instance's virtualization type, paravirtual or hvm.",
  "EbsOptimized": "Whether to create an Amazon EBS-optimized instance.",
  "RootDeviceType": "The instance root device type. For more information, see Storage for the Root Device."
}
"""
CreateInstance(args) = opsworks("CreateInstance", args)

"""
    AssignInstance()

Assign a registered instance to a layer.   You can assign registered on-premises instances to any layer type.   You can assign registered Amazon EC2 instances only to custom layers.   You cannot use this action with instances that were created with AWS OpsWorks Stacks.    Required Permissions: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID.",
  "LayerIds": "The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer."
}
"""
AssignInstance(args) = opsworks("AssignInstance", args)

"""
    CreateDeployment()

Runs deployment or stack commands. For more information, see Deploying Apps and Run Stack Commands.  Required Permissions: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "Command": "A DeploymentCommand object that specifies the deployment command and any associated arguments.",
  "StackId": "The stack ID."
}

Optional Parameters
{
  "InstanceIds": "The instance IDs for the deployment targets.",
  "Comment": "A user-defined comment.",
  "AppId": "The app ID. This parameter is required for app deployments, but not for other deployment commands.",
  "LayerIds": "The layer IDs for the deployment targets.",
  "CustomJson": "A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format:  \"{ \"key1 \":  \"value1 \",  \"key2 \":  \"value2 \",...}\"  For more information about custom JSON, see Use Custom JSON to Modify the Stack Configuration Attributes and Overriding Attributes With Custom JSON."
}
"""
CreateDeployment(args) = opsworks("CreateDeployment", args)

"""
    DescribeCommands()

Describes the results of specified commands.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "InstanceId": "The instance ID. If you include this parameter, DescribeCommands returns a description of the commands associated with the specified instance.",
  "DeploymentId": "The deployment ID. If you include this parameter, DescribeCommands returns a description of the commands associated with the specified deployment.",
  "CommandIds": "An array of command IDs. If you include this parameter, DescribeCommands returns a description of the specified commands. Otherwise, it returns a description of every command."
}
"""

DescribeCommands() = opsworks("DescribeCommands")
DescribeCommands(args) = opsworks("DescribeCommands", args)

"""
    DeleteUserProfile()

Deletes a user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "IamUserArn": "The user's IAM ARN. This can also be a federated user's ARN."
}
"""
DeleteUserProfile(args) = opsworks("DeleteUserProfile", args)

"""
    DescribeRdsDbInstances()

Describes Amazon RDS instances.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.

Required Parameters
{
  "StackId": "The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances."
}

Optional Parameters
{
  "RdsDbInstanceArns": "An array containing the ARNs of the instances to be described."
}
"""
DescribeRdsDbInstances(args) = opsworks("DescribeRdsDbInstances", args)

"""
    RebootInstance()

Reboots a specified instance. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}
"""
RebootInstance(args) = opsworks("RebootInstance", args)

"""
    UnassignVolume()

Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "VolumeId": "The volume ID."
}
"""
UnassignVolume(args) = opsworks("UnassignVolume", args)

"""
    DescribeEcsClusters()

Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the MaxResults and NextToken parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.

Optional Parameters
{
  "MaxResults": "To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "StackId": "A stack ID. DescribeEcsClusters returns a description of the cluster that is registered with the stack.",
  "NextToken": "If the previous paginated request did not return all of the remaining results, the response object'sNextToken parameter value is set to a token. To retrieve the next set of results, call DescribeEcsClusters again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.",
  "EcsClusterArns": "A list of ARNs, one for each cluster to be described."
}
"""

DescribeEcsClusters() = opsworks("DescribeEcsClusters")
DescribeEcsClusters(args) = opsworks("DescribeEcsClusters", args)

"""
    UntagResource()

Removes tags from a specified stack or layer.

Required Parameters
{
  "ResourceArn": "The stack or layer's Amazon Resource Number (ARN).",
  "TagKeys": "A list of the keys of tags to be removed from a stack or layer."
}
"""
UntagResource(args) = opsworks("UntagResource", args)

"""
    DeregisterVolume()

Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "VolumeId": "The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID."
}
"""
DeregisterVolume(args) = opsworks("DeregisterVolume", args)

"""
    DeregisterElasticIp()

Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "ElasticIp": "The Elastic IP address."
}
"""
DeregisterElasticIp(args) = opsworks("DeregisterElasticIp", args)

"""
    DescribeUserProfiles()

Describe specified users.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "IamUserArns": "An array of IAM or federated user ARNs that identify the users to be described."
}
"""

DescribeUserProfiles() = opsworks("DescribeUserProfiles")
DescribeUserProfiles(args) = opsworks("DescribeUserProfiles", args)

"""
    DescribeStackProvisioningParameters()

Requests a description of a stack's provisioning parameters.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}
"""
DescribeStackProvisioningParameters(args) = opsworks("DescribeStackProvisioningParameters", args)

"""
    DescribeMyUserProfile()

Describes a user's SSH information.  Required Permissions: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.
"""

DescribeMyUserProfile() = opsworks("DescribeMyUserProfile")
DescribeMyUserProfile(args) = opsworks("DescribeMyUserProfile", args)

"""
    RegisterEcsCluster()

Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see  Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see  Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "EcsClusterArn": "The cluster's ARN."
}
"""
RegisterEcsCluster(args) = opsworks("RegisterEcsCluster", args)

"""
    DescribeTimeBasedAutoScaling()

Describes time-based auto scaling configurations for specified instances.  You must specify at least one of the parameters.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceIds": "An array of instance IDs."
}
"""
DescribeTimeBasedAutoScaling(args) = opsworks("DescribeTimeBasedAutoScaling", args)

"""
    DetachElasticLoadBalancer()

Detaches a specified Elastic Load Balancing instance from its layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The ID of the layer that the Elastic Load Balancing instance is attached to.",
  "ElasticLoadBalancerName": "The Elastic Load Balancing instance's name."
}
"""
DetachElasticLoadBalancer(args) = opsworks("DetachElasticLoadBalancer", args)

"""
    AttachElasticLoadBalancer()

Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see Elastic Load Balancing.  You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see  Elastic Load Balancing Developer Guide.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The ID of the layer to which the Elastic Load Balancing instance is to be attached.",
  "ElasticLoadBalancerName": "The Elastic Load Balancing instance's name."
}
"""
AttachElasticLoadBalancer(args) = opsworks("AttachElasticLoadBalancer", args)

"""
    UpdateMyUserProfile()

Updates a user's SSH public key.  Required Permissions: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "SshPublicKey": "The user's SSH public key."
}
"""

UpdateMyUserProfile() = opsworks("UpdateMyUserProfile")
UpdateMyUserProfile(args) = opsworks("UpdateMyUserProfile", args)

"""
    UpdateInstance()

Updates a specified instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}

Optional Parameters
{
  "InstallUpdatesOnBoot": "Whether to install operating system and package updates when the instance boots. The default value is true. To control when updates are installed, set this value to false. You must then update your instances manually by using CreateDeployment to run the update_dependencies stack command or by manually running yum (Amazon Linux) or apt-get (Ubuntu) on the instances.   We strongly recommend using the default value of true, to ensure that your instances have the latest security updates. ",
  "Architecture": "The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see Instance Families and Types.",
  "AgentVersion": "The default AWS OpsWorks Stacks agent version. You have the following options:    INHERIT - Use the stack's default agent version setting.    version_number - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.   The default setting is INHERIT. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.",
  "LayerIds": "The instance's layer IDs.",
  "InstanceType": "The instance type, such as t2.micro. For a list of supported instance types, open the stack in the console, choose Instances, and choose + Instance. The Size list contains the currently supported types. For more information, see Instance Families and Types. The parameter values that you use to specify the various types are in the API Name column of the Available Instance Types table.",
  "Os": "The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.   A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.   A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.    CentOS Linux 7     Red Hat Enterprise Linux 7    A supported Windows operating system, such as Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.   For more information about supported operating systems, see AWS OpsWorks Stacks Operating Systems. The default option is the current Amazon Linux version. If you set this parameter to Custom, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information about supported operating systems, see Operating Systems. For more information about how to use custom AMIs with OpsWorks, see Using Custom AMIs.  You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux. ",
  "SshKeyName": "The instance's Amazon EC2 key name.",
  "AutoScalingType": "For load-based or time-based instances, the type. Windows stacks can use only time-based instances.",
  "Hostname": "The instance host name.",
  "AmiId": "The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. ",
  "EbsOptimized": "This property cannot be updated."
}
"""
UpdateInstance(args) = opsworks("UpdateInstance", args)

"""
    DeleteLayer()

Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see How to Delete a Layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The layer ID."
}
"""
DeleteLayer(args) = opsworks("DeleteLayer", args)

"""
    DescribeInstances()

Requests a description of a set of instances.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "InstanceIds": "An array of instance IDs to be described. If you use this parameter, DescribeInstances returns a description of the specified instances. Otherwise, it returns a description of every instance.",
  "LayerId": "A layer ID. If you use this parameter, DescribeInstances returns descriptions of the instances associated with the specified layer.",
  "StackId": "A stack ID. If you use this parameter, DescribeInstances returns descriptions of the instances associated with the specified stack."
}
"""

DescribeInstances() = opsworks("DescribeInstances")
DescribeInstances(args) = opsworks("DescribeInstances", args)

"""
    DescribeServiceErrors()

Describes AWS OpsWorks Stacks service errors.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.

Optional Parameters
{
  "StackId": "The stack ID. If you use this parameter, DescribeServiceErrors returns descriptions of the errors associated with the specified stack.",
  "InstanceId": "The instance ID. If you use this parameter, DescribeServiceErrors returns descriptions of the errors associated with the specified instance.",
  "ServiceErrorIds": "An array of service error IDs. If you use this parameter, DescribeServiceErrors returns descriptions of the specified errors. Otherwise, it returns a description of every error."
}
"""

DescribeServiceErrors() = opsworks("DescribeServiceErrors")
DescribeServiceErrors(args) = opsworks("DescribeServiceErrors", args)

"""
    UpdateApp()

Updates a specified app.  Required Permissions: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "AppId": "The app ID."
}

Optional Parameters
{
  "Environment": "An array of EnvironmentVariable objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see  Environment Variables. There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20 KB).\"  If you have specified one or more environment variables, you cannot modify the stack's Chef version. ",
  "DataSources": "The app's data sources.",
  "EnableSsl": "Whether SSL is enabled for the app.",
  "Description": "A description of the app.",
  "AppSource": "A Source object that specifies the app repository.",
  "Attributes": "One or more user-defined key/value pairs to be added to the stack attributes.",
  "Type": "The app type.",
  "Domains": "The app's virtual host settings, with multiple domains separated by commas. For example: 'www.example.com, example.com' ",
  "Name": "The app name.",
  "SslConfiguration": "An SslConfiguration object with the SSL configuration."
}
"""
UpdateApp(args) = opsworks("UpdateApp", args)

"""
    UpdateLayer()

Updates a specified layer.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The layer ID."
}

Optional Parameters
{
  "InstallUpdatesOnBoot": "Whether to install operating system and package updates when the instance boots. The default value is true. To control when updates are installed, set this value to false. You must then update your instances manually by using CreateDeployment to run the update_dependencies stack command or manually running yum (Amazon Linux) or apt-get (Ubuntu) on the instances.   We strongly recommend using the default value of true, to ensure that your instances have the latest security updates. ",
  "Shortname": "For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: / A[a-z0-9 - _ .]+ Z/. The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the Layer Reference ",
  "CustomJson": "A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see  Using Custom JSON. ",
  "CustomRecipes": "A LayerCustomRecipes object that specifies the layer's custom recipes.",
  "VolumeConfigurations": "A VolumeConfigurations object that describes the layer's Amazon EBS volumes.",
  "AutoAssignElasticIps": "Whether to automatically assign an Elastic IP address to the layer's instances. For more information, see How to Edit a Layer.",
  "UseEbsOptimizedInstances": "Whether to use Amazon EBS-optimized instances.",
  "Name": "The layer name, which is used by the console.",
  "EnableAutoHealing": "Whether to disable auto healing for the layer.",
  "CustomSecurityGroupIds": "An array containing the layer's custom security group IDs.",
  "CustomInstanceProfileArn": "The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see Using Identifiers.",
  "Attributes": "One or more user-defined key/value pairs to be added to the stack attributes.",
  "AutoAssignPublicIps": "For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see How to Edit a Layer.",
  "LifecycleEventConfiguration": "",
  "CloudWatchLogsConfiguration": "Specifies CloudWatch Logs configuration options for the layer. For more information, see CloudWatchLogsLogStream.",
  "Packages": "An array of Package objects that describe the layer's packages."
}
"""
UpdateLayer(args) = opsworks("UpdateLayer", args)

"""
    RegisterVolume()

Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling DeregisterVolume. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}

Optional Parameters
{
  "Ec2VolumeId": "The Amazon EBS volume ID."
}
"""
RegisterVolume(args) = opsworks("RegisterVolume", args)

"""
    UpdateUserProfile()

Updates a specified user profile.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "IamUserArn": "The user IAM ARN. This can also be a federated user's ARN."
}

Optional Parameters
{
  "AllowSelfManagement": "Whether users can specify their own SSH public key through the My Settings page. For more information, see Managing User Permissions.",
  "SshPublicKey": "The user's new SSH public key.",
  "SshUsername": "The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, my.name will be changed to myname. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. "
}
"""
UpdateUserProfile(args) = opsworks("UpdateUserProfile", args)

"""
    DeregisterInstance()

Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action cannot be used with instances that were created with AWS OpsWorks Stacks.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}
"""
DeregisterInstance(args) = opsworks("DeregisterInstance", args)

"""
    CreateLayer()

Creates a layer. For more information, see How to Create a Layer.  You should use CreateLayer for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, CreateLayer fails. A stack can have an arbitrary number of custom layers, so you can call CreateLayer as many times as you like for that layer type.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The layer stack ID.",
  "Type": "The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.",
  "Shortname": "For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'. The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the Layer Reference.",
  "Name": "The layer name, which is used by the console."
}

Optional Parameters
{
  "InstallUpdatesOnBoot": "Whether to install operating system and package updates when the instance boots. The default value is true. To control when updates are installed, set this value to false. You must then update your instances manually by using CreateDeployment to run the update_dependencies stack command or by manually running yum (Amazon Linux) or apt-get (Ubuntu) on the instances.   To ensure that your instances have the latest security updates, we strongly recommend using the default value of true. ",
  "CustomJson": "A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see  Using Custom JSON. This feature is supported as of version 1.7.42 of the AWS CLI. ",
  "CustomRecipes": "A LayerCustomRecipes object that specifies the layer custom recipes.",
  "VolumeConfigurations": "A VolumeConfigurations object that describes the layer's Amazon EBS volumes.",
  "AutoAssignElasticIps": "Whether to automatically assign an Elastic IP address to the layer's instances. For more information, see How to Edit a Layer.",
  "UseEbsOptimizedInstances": "Whether to use Amazon EBS-optimized instances.",
  "EnableAutoHealing": "Whether to disable auto healing for the layer.",
  "CustomSecurityGroupIds": "An array containing the layer custom security group IDs.",
  "CustomInstanceProfileArn": "The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see Using Identifiers.",
  "Attributes": "One or more user-defined key-value pairs to be added to the stack attributes. To create a cluster layer, set the EcsClusterArn attribute to the cluster's ARN.",
  "AutoAssignPublicIps": "For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see How to Edit a Layer.",
  "LifecycleEventConfiguration": "A LifeCycleEventConfiguration object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.",
  "CloudWatchLogsConfiguration": "Specifies CloudWatch Logs configuration options for the layer. For more information, see CloudWatchLogsLogStream.",
  "Packages": "An array of Package objects that describes the layer packages."
}
"""
CreateLayer(args) = opsworks("CreateLayer", args)

"""
    DescribeDeployments()

Requests a description of a specified set of deployments.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "DeploymentIds": "An array of deployment IDs to be described. If you include this parameter, the command returns a description of the specified deployments. Otherwise, it returns a description of every deployment.",
  "StackId": "The stack ID. If you include this parameter, the command returns a description of the commands associated with the specified stack.",
  "AppId": "The app ID. If you include this parameter, the command returns a description of the commands associated with the specified app."
}
"""

DescribeDeployments() = opsworks("DescribeDeployments")
DescribeDeployments(args) = opsworks("DescribeDeployments", args)

"""
    UpdateVolume()

Updates an Amazon EBS volume's name or mount point. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "VolumeId": "The volume ID."
}

Optional Parameters
{
  "MountPoint": "The new mount point.",
  "Name": "The new name."
}
"""
UpdateVolume(args) = opsworks("UpdateVolume", args)

"""
    DescribeLoadBasedAutoScaling()

Describes load-based auto scaling configurations for specified layers.  You must specify at least one of the parameters.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerIds": "An array of layer IDs."
}
"""
DescribeLoadBasedAutoScaling(args) = opsworks("DescribeLoadBasedAutoScaling", args)

"""
    StartStack()

Starts a stack's instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}
"""
StartStack(args) = opsworks("StartStack", args)

"""
    SetPermission()

Specifies a user's permissions. For more information, see Security and Permissions.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "IamUserArn": "The user's IAM ARN. This can also be a federated user's ARN."
}

Optional Parameters
{
  "AllowSudo": "The user is allowed to use sudo to elevate privileges.",
  "Level": "The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.    deny     show     deploy     manage     iam_only    For more information about the permissions associated with these levels, see Managing User Permissions.",
  "AllowSsh": "The user is allowed to use SSH to communicate with the instance."
}
"""
SetPermission(args) = opsworks("SetPermission", args)

"""
    DeregisterRdsDbInstance()

Deregisters an Amazon RDS instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "RdsDbInstanceArn": "The Amazon RDS instance's ARN."
}
"""
DeregisterRdsDbInstance(args) = opsworks("DeregisterRdsDbInstance", args)

"""
    DeregisterEcsCluster()

Deregisters a specified Amazon ECS cluster from a stack. For more information, see  Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html.

Required Parameters
{
  "EcsClusterArn": "The cluster's Amazon Resource Number (ARN)."
}
"""
DeregisterEcsCluster(args) = opsworks("DeregisterEcsCluster", args)

"""
    StopInstance()

Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see Starting, Stopping, and Rebooting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}

Optional Parameters
{
  "Force": "Specifies whether to force an instance to stop. If the instance's root device type is ebs, or EBS-backed, adding the Force parameter to the StopInstances API call disassociates the AWS OpsWorks Stacks instance from EC2, and forces deletion of only the OpsWorks Stacks instance. You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the AWS OpsWorks Stacks instance with a new one."
}
"""
StopInstance(args) = opsworks("StopInstance", args)

"""
    DeleteInstance()

Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it. For more information, see Deleting Instances.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "InstanceId": "The instance ID."
}

Optional Parameters
{
  "DeleteVolumes": "Whether to delete the instance's Amazon EBS volumes.",
  "DeleteElasticIp": "Whether to delete the instance Elastic IP address."
}
"""
DeleteInstance(args) = opsworks("DeleteInstance", args)

"""
    AssociateElasticIp()

Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling RegisterElasticIp. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "ElasticIp": "The Elastic IP address."
}

Optional Parameters
{
  "InstanceId": "The instance ID."
}
"""
AssociateElasticIp(args) = opsworks("AssociateElasticIp", args)

"""
    DescribeApps()

Requests a description of a specified set of apps.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "The app stack ID. If you use this parameter, DescribeApps returns a description of the apps in the specified stack.",
  "AppIds": "An array of app IDs for the apps to be described. If you use this parameter, DescribeApps returns a description of the specified apps. Otherwise, it returns a description of every app."
}
"""

DescribeApps() = opsworks("DescribeApps")
DescribeApps(args) = opsworks("DescribeApps", args)

"""
    DescribeOperatingSystems()

Describes the operating systems that are supported by AWS OpsWorks Stacks.
"""

DescribeOperatingSystems() = opsworks("DescribeOperatingSystems")
DescribeOperatingSystems(args) = opsworks("DescribeOperatingSystems", args)

"""
    GrantAccess()

 This action can be used only with Windows stacks.  Grants RDP access to a Windows instance for a specified time period.

Required Parameters
{
  "InstanceId": "The instance's AWS OpsWorks Stacks ID."
}

Optional Parameters
{
  "ValidForInMinutes": "The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out."
}
"""
GrantAccess(args) = opsworks("GrantAccess", args)

"""
    CreateStack()

Creates a new stack. For more information, see Create a New Stack.  Required Permissions: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "ServiceRoleArn": "The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see Using Identifiers.",
  "DefaultInstanceProfileArn": "The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see Using Identifiers.",
  "Name": "The stack name.",
  "Region": "The stack's AWS region, such as ap-south-1. For more information about Amazon regions, see Regions and Endpoints.  In the AWS CLI, this API maps to the --stack-region parameter. If the --stack-region parameter and the AWS CLI common parameter --region are set to the same value, the stack uses a regional endpoint. If the --stack-region parameter is not set, but the AWS CLI --region parameter is, this also results in a stack with a regional endpoint. However, if the --region parameter is set to us-east-1, and the --stack-region parameter is set to one of the following, then the stack uses a legacy or classic region: us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1, ap-southeast-2. In this case, the actual API endpoint of the stack is in us-east-1. Only the preceding regions are supported as classic regions in the us-east-1 API endpoint. Because it is a best practice to choose the regional endpoint that is closest to where you manage AWS, we recommend that you use regional endpoints for new stacks. The AWS CLI common --region parameter always specifies a regional API endpoint; it cannot be used to specify a classic AWS OpsWorks Stacks region. "
}

Optional Parameters
{
  "DefaultRootDeviceType": "The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is instance-store. For more information, see Storage for the Root Device.",
  "ChefConfiguration": "A ChefConfiguration object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see Create a New Stack.",
  "AgentVersion": "The default AWS OpsWorks Stacks agent version. You have the following options:   Auto-update - Set this parameter to LATEST. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.   The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.  You can also specify an agent version when you create or update an instance, which overrides the stack's default setting. ",
  "CustomJson": "A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:  \"{ \"key1 \":  \"value1 \",  \"key2 \":  \"value2 \",...}\"  For more information about custom JSON, see Use Custom JSON to Modify the Stack Configuration Attributes.",
  "DefaultAvailabilityZone": "The stack's default Availability Zone, which must be in the specified region. For more information, see Regions and Endpoints. If you also specify a value for DefaultSubnetId, the subnet must be in the same zone. For more information, see the VpcId parameter description. ",
  "DefaultOs": "The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.   A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.   A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.    CentOS Linux 7     Red Hat Enterprise Linux 7    A supported Windows operating system, such as Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.   A custom AMI: Custom. You specify the custom AMI you want to use when you create instances. For more information, see  Using Custom AMIs.   The default option is the current Amazon Linux version. For more information about supported operating systems, see AWS OpsWorks Stacks Operating Systems.",
  "VpcId": "The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.   If your account supports EC2-Classic, the default value is no VPC.   If your account does not support EC2-Classic, the default value is the default VPC for the specified region.   If the VPC ID corresponds to a default VPC and you have specified either the DefaultAvailabilityZone or the DefaultSubnetId parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. If you specify a nondefault VPC ID, note the following:   It must belong to a VPC in your account that is in the specified region.   You must specify a value for DefaultSubnetId.   For more information about how to use AWS OpsWorks Stacks with a VPC, see Running a Stack in a VPC. For more information about default VPC and EC2-Classic, see Supported Platforms. ",
  "HostnameTheme": "The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, HostnameTheme is set to Layer_Dependent, which creates host names by appending integers to the layer's short name. The other themes are:    Baked_Goods     Clouds     Europe_Cities     Fruits     Greek_Deities_and_Titans     Legendary_creatures_from_Japan     Planets_and_Moons     Roman_Deities     Scottish_Islands     US_Cities     Wild_Cats    To obtain a generated host name, call GetHostNameSuggestion, which returns a host name based on the current theme.",
  "UseOpsworksSecurityGroups": "Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With UseOpsworksSecurityGroups you can instead provide your own custom security groups. UseOpsworksSecurityGroups has the following settings:    True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.   For more information, see Create a New Stack.",
  "CustomCookbooksSource": "Contains the information required to retrieve an app or cookbook from a repository. For more information, see Adding Apps or Cookbooks and Recipes.",
  "ConfigurationManager": "The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.",
  "Attributes": "One or more user-defined key-value pairs to be added to the stack attributes.",
  "DefaultSubnetId": "The stack's default VPC subnet ID. This parameter is required if you specify a value for the VpcId parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for DefaultAvailabilityZone, the subnet must be in that zone. For information on default values and when this parameter is required, see the VpcId parameter description. ",
  "DefaultSshKeyName": "A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see  Using SSH to Communicate with an Instance and  Managing SSH Access. You can override this setting by specifying a different key pair, or no key pair, when you  create an instance. ",
  "UseCustomCookbooks": "Whether the stack uses custom cookbooks."
}
"""
CreateStack(args) = opsworks("CreateStack", args)

"""
    UpdateRdsDbInstance()

Updates an Amazon RDS instance.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "RdsDbInstanceArn": "The Amazon RDS instance's ARN."
}

Optional Parameters
{
  "DbUser": "The master user name.",
  "DbPassword": "The database password."
}
"""
UpdateRdsDbInstance(args) = opsworks("UpdateRdsDbInstance", args)

"""
    UpdateStack()

Updates a specified stack.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}

Optional Parameters
{
  "DefaultRootDeviceType": "The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see Storage for the Root Device.",
  "ChefConfiguration": "A ChefConfiguration object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see Create a New Stack.",
  "AgentVersion": "The default AWS OpsWorks Stacks agent version. You have the following options:   Auto-update - Set this parameter to LATEST. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.   Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.   The default setting is LATEST. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.  You can also specify an agent version when you create or update an instance, which overrides the stack's default setting. ",
  "CustomJson": "A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:  \"{ \"key1 \":  \"value1 \",  \"key2 \":  \"value2 \",...}\"  For more information about custom JSON, see Use Custom JSON to Modify the Stack Configuration Attributes.",
  "DefaultInstanceProfileArn": "The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see Using Identifiers.",
  "DefaultAvailabilityZone": "The stack's default Availability Zone, which must be in the stack's region. For more information, see Regions and Endpoints. If you also specify a value for DefaultSubnetId, the subnet must be in the same zone. For more information, see CreateStack. ",
  "DefaultOs": "The stack's operating system, which must be set to one of the following:   A supported Linux operating system: An Amazon Linux version, such as Amazon Linux 2018.03, Amazon Linux 2017.09, Amazon Linux 2017.03, Amazon Linux 2016.09, Amazon Linux 2016.03, Amazon Linux 2015.09, or Amazon Linux 2015.03.   A supported Ubuntu operating system, such as Ubuntu 16.04 LTS, Ubuntu 14.04 LTS, or Ubuntu 12.04 LTS.    CentOS Linux 7     Red Hat Enterprise Linux 7    A supported Windows operating system, such as Microsoft Windows Server 2012 R2 Base, Microsoft Windows Server 2012 R2 with SQL Server Express, Microsoft Windows Server 2012 R2 with SQL Server Standard, or Microsoft Windows Server 2012 R2 with SQL Server Web.   A custom AMI: Custom. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see Using Custom AMIs.   The default option is the stack's current operating system. For more information about supported operating systems, see AWS OpsWorks Stacks Operating Systems.",
  "HostnameTheme": "The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, HostnameTheme is set to Layer_Dependent, which creates host names by appending integers to the layer's short name. The other themes are:    Baked_Goods     Clouds     Europe_Cities     Fruits     Greek_Deities_and_Titans     Legendary_creatures_from_Japan     Planets_and_Moons     Roman_Deities     Scottish_Islands     US_Cities     Wild_Cats    To obtain a generated host name, call GetHostNameSuggestion, which returns a host name based on the current theme.",
  "ServiceRoleArn": "Do not use this parameter. You cannot update a stack's service role.",
  "Name": "The stack's new name.",
  "UseOpsworksSecurityGroups": "Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. UseOpsworksSecurityGroups allows you to provide your own custom security groups instead of using the built-in groups. UseOpsworksSecurityGroups has the following settings:    True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.   False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.   For more information, see Create a New Stack.",
  "CustomCookbooksSource": "Contains the information required to retrieve an app or cookbook from a repository. For more information, see Adding Apps or Cookbooks and Recipes.",
  "ConfigurationManager": "The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.",
  "Attributes": "One or more user-defined key-value pairs to be added to the stack attributes.",
  "DefaultSubnetId": "The stack's default VPC subnet ID. This parameter is required if you specify a value for the VpcId parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for DefaultAvailabilityZone, the subnet must be in that zone. For information on default values and when this parameter is required, see the VpcId parameter description. ",
  "DefaultSshKeyName": "A default Amazon EC2 key-pair name. The default value is none. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see  Using SSH to Communicate with an Instance and  Managing SSH Access. You can override this setting by specifying a different key pair, or no key pair, when you  create an instance. ",
  "UseCustomCookbooks": "Whether the stack uses custom cookbooks."
}
"""
UpdateStack(args) = opsworks("UpdateStack", args)

"""
    GetHostnameSuggestion()

Gets a generated host name for the specified layer, based on the current host name theme.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The layer ID."
}
"""
GetHostnameSuggestion(args) = opsworks("GetHostnameSuggestion", args)

"""
    AssignVolume()

Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling RegisterVolume. After you register the volume, you must call UpdateVolume to specify a mount point before calling AssignVolume. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "VolumeId": "The volume ID."
}

Optional Parameters
{
  "InstanceId": "The instance ID."
}
"""
AssignVolume(args) = opsworks("AssignVolume", args)

"""
    DisassociateElasticIp()

Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see Resource Management.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "ElasticIp": "The Elastic IP address."
}
"""
DisassociateElasticIp(args) = opsworks("DisassociateElasticIp", args)

"""
    CreateApp()

Creates an app for a specified stack. For more information, see Creating Apps.  Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID.",
  "Type": "The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify other.",
  "Name": "The app name."
}

Optional Parameters
{
  "Environment": "An array of EnvironmentVariable objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see  Environment Variables. There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20KB).\"  If you have specified one or more environment variables, you cannot modify the stack's Chef version. ",
  "DataSources": "The app's data source.",
  "EnableSsl": "Whether to enable SSL for the app.",
  "Description": "A description of the app.",
  "AppSource": "A Source object that specifies the app repository.",
  "Attributes": "One or more user-defined key/value pairs to be added to the stack attributes.",
  "Shortname": "The app's short name.",
  "Domains": "The app virtual host settings, with multiple domains separated by commas. For example: 'www.example.com, example.com' ",
  "SslConfiguration": "An SslConfiguration object with the SSL configuration."
}
"""
CreateApp(args) = opsworks("CreateApp", args)

"""
    ListTags()

Returns a list of tags that are applied to the specified stack or layer.

Required Parameters
{
  "ResourceArn": "The stack or layer's Amazon Resource Number (ARN)."
}

Optional Parameters
{
  "MaxResults": "Do not use. A validation exception occurs if you add a MaxResults parameter to a ListTagsRequest call. ",
  "NextToken": "Do not use. A validation exception occurs if you add a NextToken parameter to a ListTagsRequest call. "
}
"""
ListTags(args) = opsworks("ListTags", args)

"""
    DescribeRaidArrays()

Describe an instance's RAID arrays.  This call accepts only one resource-identifying parameter.   Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Optional Parameters
{
  "StackId": "The stack ID.",
  "InstanceId": "The instance ID. If you use this parameter, DescribeRaidArrays returns descriptions of the RAID arrays associated with the specified instance. ",
  "RaidArrayIds": "An array of RAID array IDs. If you use this parameter, DescribeRaidArrays returns descriptions of the specified arrays. Otherwise, it returns a description of every array."
}
"""

DescribeRaidArrays() = opsworks("DescribeRaidArrays")
DescribeRaidArrays(args) = opsworks("DescribeRaidArrays", args)

"""
    DescribeStackSummary()

Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running_setup or online.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see Managing User Permissions.

Required Parameters
{
  "StackId": "The stack ID."
}
"""
DescribeStackSummary(args) = opsworks("DescribeStackSummary", args)

"""
    DescribeAgentVersions()

Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. DescribeAgentVersions returns a list of available agent versions for the specified stack or configuration manager.

Optional Parameters
{
  "ConfigurationManager": "The configuration manager.",
  "StackId": "The stack ID."
}
"""

DescribeAgentVersions() = opsworks("DescribeAgentVersions")
DescribeAgentVersions(args) = opsworks("DescribeAgentVersions", args)

"""
    SetLoadBasedAutoScaling()

Specify the load-based auto scaling configuration for a specified layer. For more information, see Managing Load with Time-based and Load-based Instances.  To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.   Required Permissions: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see Managing User Permissions.

Required Parameters
{
  "LayerId": "The layer ID."
}

Optional Parameters
{
  "Enable": "Enables load-based auto scaling for the layer.",
  "DownScaling": "An AutoScalingThresholds object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.",
  "UpScaling": "An AutoScalingThresholds object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances."
}
"""
SetLoadBasedAutoScaling(args) = opsworks("SetLoadBasedAutoScaling", args)
