include("../AWSCorePrototypeServices.jl")
using .Services: auto_scaling

"""
Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, use DescribeScalingActivities.
"""
DescribeScheduledActions() = auto_scaling("DescribeScheduledActions")

"""
Terminates the specified instance and optionally adjusts the desired group size. This call simply makes a termination request. The instance is not terminated immediately.

Required Parameters:
InstanceId, ShouldDecrementDesiredCapacity
"""
TerminateInstanceInAutoScalingGroup(args) = auto_scaling("TerminateInstanceInAutoScalingGroup", args)

"""
Describes the load balancers for the specified Auto Scaling group. This operation describes only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DescribeLoadBalancerTargetGroups instead.

Required Parameters:
AutoScalingGroupName
"""
DescribeLoadBalancers(args) = auto_scaling("DescribeLoadBalancers", args)

"""
Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.

Required Parameters:
AutoScalingGroupName, ScheduledUpdateGroupActions
"""
BatchPutScheduledUpdateGroupAction(args) = auto_scaling("BatchPutScheduledUpdateGroupAction", args)

"""
Creates or updates a lifecycle hook for the specified Auto Scaling group. A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated). This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.    Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using RecordLifecycleActionHeartbeat.   If you finish before the timeout period ends, complete the lifecycle action using CompleteLifecycleAction.   For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide. If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. You can view the lifecycle hooks for an Auto Scaling group using DescribeLifecycleHooks. If you are no longer using a lifecycle hook, you can delete it using DeleteLifecycleHook.

Required Parameters:
LifecycleHookName, AutoScalingGroupName
"""
PutLifecycleHook(args) = auto_scaling("PutLifecycleHook", args)

"""
Deletes one or more scheduled actions for the specified Auto Scaling group.

Required Parameters:
AutoScalingGroupName, ScheduledActionNames
"""
BatchDeleteScheduledAction(args) = auto_scaling("BatchDeleteScheduledAction", args)

"""
Creates an Auto Scaling group with the specified name and attributes. If you exceed your maximum limit of Auto Scaling groups, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, MinSize, MaxSize
"""
CreateAutoScalingGroup(args) = auto_scaling("CreateAutoScalingGroup", args)

"""
Deletes the specified scheduled action.

Required Parameters:
AutoScalingGroupName, ScheduledActionName
"""
DeleteScheduledAction(args) = auto_scaling("DeleteScheduledAction", args)

"""
Executes the specified policy.

Required Parameters:
PolicyName
"""
ExecutePolicy(args) = auto_scaling("ExecutePolicy", args)

"""
Describes one or more Auto Scaling instances.
"""
DescribeAutoScalingInstances() = auto_scaling("DescribeAutoScalingInstances")

"""
Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using PutLifecycleHook. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.   For more information, see Auto Scaling Lifecycle in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
LifecycleHookName, AutoScalingGroupName
"""
RecordLifecycleActionHeartbeat(args) = auto_scaling("RecordLifecycleActionHeartbeat", args)

"""
Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName
"""
ResumeProcesses(args) = auto_scaling("ResumeProcesses", args)

"""
Detaches one or more target groups from the specified Auto Scaling group.

Required Parameters:
AutoScalingGroupName, TargetGroupARNs
"""
DetachLoadBalancerTargetGroups(args) = auto_scaling("DetachLoadBalancerTargetGroups", args)

"""
Attaches one or more Classic Load Balancers to the specified Auto Scaling group. To attach an Application Load Balancer or a Network Load Balancer instead, see AttachLoadBalancerTargetGroups. To describe the load balancers for an Auto Scaling group, use DescribeLoadBalancers. To detach the load balancer from the Auto Scaling group, use DetachLoadBalancers. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, LoadBalancerNames
"""
AttachLoadBalancers(args) = auto_scaling("AttachLoadBalancers", args)

"""
Describes one or more launch configurations.
"""
DescribeLaunchConfigurations() = auto_scaling("DescribeLaunchConfigurations")

"""
Deletes the specified scaling policy. Deleting either a step scaling policy or a simple scaling policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action. For more information, see Deleting a Scaling Policy in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
PolicyName
"""
DeletePolicy(args) = auto_scaling("DeletePolicy", args)

"""
Describes the notification types that are supported by Amazon EC2 Auto Scaling.
"""
DescribeAutoScalingNotificationTypes() = auto_scaling("DescribeAutoScalingNotificationTypes")

"""
Disables group metrics for the specified Auto Scaling group.

Required Parameters:
AutoScalingGroupName
"""
DisableMetricsCollection(args) = auto_scaling("DisableMetricsCollection", args)

"""
Deletes the specified launch configuration. The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.

Required Parameters:
LaunchConfigurationName
"""
DeleteLaunchConfiguration(args) = auto_scaling("DeleteLaunchConfiguration", args)

"""
Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address. This configuration overwrites any existing configuration. For more information, see Getting Amazon SNS Notifications When Your Auto Scaling Group Scales in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, TopicARN, NotificationTypes
"""
PutNotificationConfiguration(args) = auto_scaling("PutNotificationConfiguration", args)

"""
Describes the policies for the specified Auto Scaling group.
"""
DescribePolicies() = auto_scaling("DescribePolicies")

"""
Creates or updates tags for the specified Auto Scaling group. When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
Tags
"""
CreateOrUpdateTags(args) = auto_scaling("CreateOrUpdateTags", args)

"""
Describes the policy adjustment types for use with PutScalingPolicy.
"""
DescribeAdjustmentTypes() = auto_scaling("DescribeAdjustmentTypes")

"""
Deletes the specified tags.

Required Parameters:
Tags
"""
DeleteTags(args) = auto_scaling("DeleteTags", args)

"""
Enables group metrics for the specified Auto Scaling group. For more information, see Monitoring Your Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, Granularity
"""
EnableMetricsCollection(args) = auto_scaling("EnableMetricsCollection", args)

"""
Deletes the specified Auto Scaling group. If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed. If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action. To remove instances from the Auto Scaling group before deleting it, call DetachInstances with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances. To terminate all instances before deleting the Auto Scaling group, call UpdateAutoScalingGroup and set the minimum size and desired capacity of the Auto Scaling group to zero.

Required Parameters:
AutoScalingGroupName
"""
DeleteAutoScalingGroup(args) = auto_scaling("DeleteAutoScalingGroup", args)

"""
Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group. If you suspend either the Launch or Terminate process types, it can prevent other process types from functioning properly. To resume processes that have been suspended, use ResumeProcesses. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName
"""
SuspendProcesses(args) = auto_scaling("SuspendProcesses", args)

"""
Describes the current Amazon EC2 Auto Scaling resource limits for your AWS account. For information about requesting an increase in these limits, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide.
"""
DescribeAccountLimits() = auto_scaling("DescribeAccountLimits")

"""
Describes the lifecycle hooks for the specified Auto Scaling group.

Required Parameters:
AutoScalingGroupName
"""
DescribeLifecycleHooks(args) = auto_scaling("DescribeLifecycleHooks", args)

"""
Describes the target groups for the specified Auto Scaling group.

Required Parameters:
AutoScalingGroupName
"""
DescribeLoadBalancerTargetGroups(args) = auto_scaling("DescribeLoadBalancerTargetGroups", args)

"""
Attaches one or more EC2 instances to the specified Auto Scaling group. When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails. If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups. For more information, see Attach EC2 Instances to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName
"""
AttachInstances(args) = auto_scaling("AttachInstances", args)

"""
Attaches one or more target groups to the specified Auto Scaling group. To describe the target groups for an Auto Scaling group, use DescribeLoadBalancerTargetGroups. To detach the target group from the Auto Scaling group, use DetachLoadBalancerTargetGroups. With Application Load Balancers and Network Load Balancers, instances are registered as targets with a target group. With Classic Load Balancers, instances are registered with the load balancer. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, TargetGroupARNs
"""
AttachLoadBalancerTargetGroups(args) = auto_scaling("AttachLoadBalancerTargetGroups", args)

"""
Updates the configuration for the specified Auto Scaling group. To update an Auto Scaling group, specify the name of the group and the parameter that you want to change. Any parameters that you don't specify are not changed by this update request. The new settings take effect on any scaling activities after this call returns.  If you associate a new launch configuration or template with an Auto Scaling group, all new instances will get the updated configuration. Existing instances continue to run with the configuration that they were originally launched with. When you update a group to specify a mixed instances policy instead of a launch configuration or template, existing instances may be replaced to match the new purchasing options that you specified in the policy. For example, if the group currently has 100% On-Demand capacity and the policy specifies 50% Spot capacity, this means that half of your instances will be gradually terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches new instances before terminating the old ones, so that updating your group does not compromise the performance or availability of your application. Note the following about changing DesiredCapacity, MaxSize, or MinSize:   If a scale-in event occurs as a result of a new DesiredCapacity value that is lower than the current size of the group, the Auto Scaling group uses its termination policy to determine which instances to terminate.   If you specify a new value for MinSize without specifying a value for DesiredCapacity, and the new MinSize is larger than the current size of the group, this sets the group's DesiredCapacity to the new MinSize value.   If you specify a new value for MaxSize without specifying a value for DesiredCapacity, and the new MaxSize is smaller than the current size of the group, this sets the group's DesiredCapacity to the new MaxSize value.   To see which parameters have been set, use DescribeAutoScalingGroups. You can also view the scaling policies for an Auto Scaling group using DescribePolicies. If the group has scaling policies, you can update them using PutScalingPolicy.

Required Parameters:
AutoScalingGroupName
"""
UpdateAutoScalingGroup(args) = auto_scaling("UpdateAutoScalingGroup", args)

"""
Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling. The GroupStandbyInstances metric is not returned by default. You must explicitly request this metric when calling EnableMetricsCollection.
"""
DescribeMetricCollectionTypes() = auto_scaling("DescribeMetricCollectionTypes")

"""
Describes one or more scaling activities for the specified Auto Scaling group.
"""
DescribeScalingActivities() = auto_scaling("DescribeScalingActivities")

"""
Deletes the specified lifecycle hook. If there are any outstanding lifecycle actions, they are completed first (ABANDON for launching instances, CONTINUE for terminating instances).

Required Parameters:
LifecycleHookName, AutoScalingGroupName
"""
DeleteLifecycleHook(args) = auto_scaling("DeleteLifecycleHook", args)

"""
Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.
"""
DescribeTags() = auto_scaling("DescribeTags")

"""
Describes the termination policies supported by Amazon EC2 Auto Scaling. For more information, see Controlling Which Auto Scaling Instances Terminate During Scale In in the Amazon EC2 Auto Scaling User Guide.
"""
DescribeTerminationPolicyTypes() = auto_scaling("DescribeTerminationPolicyTypes")

"""
Removes one or more instances from the specified Auto Scaling group. After the instances are detached, you can manage them independent of the Auto Scaling group. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached. If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups. For more information, see Detach EC2 Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, ShouldDecrementDesiredCapacity
"""
DetachInstances(args) = auto_scaling("DetachInstances", args)

"""
Creates or updates a scheduled scaling action for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged. For more information, see Scheduled Scaling in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, ScheduledActionName
"""
PutScheduledUpdateGroupAction(args) = auto_scaling("PutScheduledUpdateGroupAction", args)

"""
Creates or updates a scaling policy for an Auto Scaling group. To update an existing scaling policy, use the existing policy name and set the parameters to change. Any existing parameter not changed in an update to an existing policy is not changed in this update request. For more information about using scaling policies to scale your Auto Scaling group automatically, see Dynamic Scaling in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, PolicyName
"""
PutScalingPolicy(args) = auto_scaling("PutScalingPolicy", args)

"""
Moves the specified instances out of the standby state. After you put the instances back in service, the desired capacity is incremented. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName
"""
ExitStandby(args) = auto_scaling("ExitStandby", args)

"""
Describes the scaling process types for use with ResumeProcesses and SuspendProcesses.
"""
DescribeScalingProcessTypes() = auto_scaling("DescribeScalingProcessTypes")

"""
Completes the lifecycle action for the specified token or instance with the specified result. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.   If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.    For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
LifecycleHookName, AutoScalingGroupName, LifecycleActionResult
"""
CompleteLifecycleAction(args) = auto_scaling("CompleteLifecycleAction", args)

"""
Updates the instance protection settings of the specified instances. For more information about preventing instances that are part of an Auto Scaling group from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
InstanceIds, AutoScalingGroupName, ProtectedFromScaleIn
"""
SetInstanceProtection(args) = auto_scaling("SetInstanceProtection", args)

"""
Sets the size of the specified Auto Scaling group. For more information about desired capacity, see What Is Amazon EC2 Auto Scaling? in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, DesiredCapacity
"""
SetDesiredCapacity(args) = auto_scaling("SetDesiredCapacity", args)

"""
Describes one or more Auto Scaling groups.
"""
DescribeAutoScalingGroups() = auto_scaling("DescribeAutoScalingGroups")

"""
Describes the notification actions associated with the specified Auto Scaling group.
"""
DescribeNotificationConfigurations() = auto_scaling("DescribeNotificationConfigurations")

"""
Moves the specified instances into the standby state. If you choose to decrement the desired capacity of the Auto Scaling group, the instances can enter standby as long as the desired capacity of the Auto Scaling group after the instances are placed into standby is equal to or greater than the minimum capacity of the group. If you choose not to decrement the desired capacity of the Auto Scaling group, the Auto Scaling group launches new instances to replace the instances on standby. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
AutoScalingGroupName, ShouldDecrementDesiredCapacity
"""
EnterStandby(args) = auto_scaling("EnterStandby", args)

"""
Detaches one or more Classic Load Balancers from the specified Auto Scaling group. This operation detaches only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DetachLoadBalancerTargetGroups instead. When you detach a load balancer, it enters the Removing state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using DescribeLoadBalancers. The instances remain running.

Required Parameters:
AutoScalingGroupName, LoadBalancerNames
"""
DetachLoadBalancers(args) = auto_scaling("DetachLoadBalancers", args)

"""
Describes the available types of lifecycle hooks. The following hook types are supported:   autoscaling:EC2_INSTANCE_LAUNCHING   autoscaling:EC2_INSTANCE_TERMINATING  
"""
DescribeLifecycleHookTypes() = auto_scaling("DescribeLifecycleHookTypes")

"""
Creates a launch configuration. If you exceed your maximum limit of launch configurations, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide. For more information, see Launch Configurations in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
LaunchConfigurationName
"""
CreateLaunchConfiguration(args) = auto_scaling("CreateLaunchConfiguration", args)

"""
Sets the health status of the specified instance. For more information, see Health Checks for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters:
InstanceId, HealthStatus
"""
SetInstanceHealth(args) = auto_scaling("SetInstanceHealth", args)

"""
Deletes the specified notification.

Required Parameters:
AutoScalingGroupName, TopicARN
"""
DeleteNotificationConfiguration(args) = auto_scaling("DeleteNotificationConfiguration", args)