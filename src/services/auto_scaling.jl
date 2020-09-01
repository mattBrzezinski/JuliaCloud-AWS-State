include("../AWSCorePrototypeServices.jl")
using .Services: auto_scaling

"""
    DescribeScheduledActions()

Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, call the DescribeScalingActivities API.

Optional Parameters
{
  "StartTime": "The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.",
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "EndTime": "The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.",
  "ScheduledActionNames": "The names of one or more scheduled actions. You can specify up to 50 actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""

DescribeScheduledActions() = auto_scaling("DescribeScheduledActions")
DescribeScheduledActions(args) = auto_scaling("DescribeScheduledActions", args)

"""
    DescribeInstanceRefreshes()

Describes one or more instance refreshes. You can determine the status of a request by looking at the Status parameter. The following are the possible statuses:     Pending - The request was created, but the operation has not started.    InProgress - The operation is in progress.    Successful - The operation completed successfully.    Failed - The operation failed to complete. You can troubleshoot using the status reason and the scaling activities.     Cancelling - An ongoing operation is being cancelled. Cancellation does not roll back any replacements that have already been completed, but it prevents new replacements from being started.     Cancelled - The operation is cancelled.    For more information, see Replacing Auto Scaling Instances Based on an Instance Refresh.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "InstanceRefreshIds": "One or more instance refresh IDs."
}
"""
DescribeInstanceRefreshes(args) = auto_scaling("DescribeInstanceRefreshes", args)

"""
    TerminateInstanceInAutoScalingGroup()

Terminates the specified instance and optionally adjusts the desired group size.  This call simply makes a termination request. The instance is not terminated immediately. When an instance is terminated, the instance status changes to terminated. You can't connect to or start an instance after you've terminated it. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are terminated.  By default, Amazon EC2 Auto Scaling balances instances across all Availability Zones. If you decrement the desired capacity, your Auto Scaling group can become unbalanced between Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and rebalancing might terminate instances in other zones. For more information, see Rebalancing Activities in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "InstanceId": "The ID of the instance.",
  "ShouldDecrementDesiredCapacity": "Indicates whether terminating the instance also decrements the size of the Auto Scaling group."
}
"""
TerminateInstanceInAutoScalingGroup(args) = auto_scaling("TerminateInstanceInAutoScalingGroup", args)

"""
    DescribeLoadBalancers()

Describes the load balancers for the specified Auto Scaling group. This operation describes only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use the DescribeLoadBalancerTargetGroups API instead.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeLoadBalancers(args) = auto_scaling("DescribeLoadBalancers", args)

"""
    BatchPutScheduledUpdateGroupAction()

Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.

Required Parameters
{
  "ScheduledUpdateGroupActions": "One or more scheduled actions. The maximum number allowed is 50.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
BatchPutScheduledUpdateGroupAction(args) = auto_scaling("BatchPutScheduledUpdateGroupAction", args)

"""
    PutLifecycleHook()

Creates or updates a lifecycle hook for the specified Auto Scaling group. A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated). This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.    Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using the RecordLifecycleActionHeartbeat API call.   If you finish before the timeout period ends, complete the lifecycle action using the CompleteLifecycleAction API call.   For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide. If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. You can view the lifecycle hooks for an Auto Scaling group using the DescribeLifecycleHooks API call. If you are no longer using a lifecycle hook, you can delete it by calling the DeleteLifecycleHook API.

Required Parameters
{
  "LifecycleHookName": "The name of the lifecycle hook.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "NotificationTargetARN": "The ARN of the notification target that Amazon EC2 Auto Scaling uses to notify you when an instance is in the transition state for the lifecycle hook. This target can be either an SQS queue or an SNS topic. If you specify an empty string, this overrides the current ARN. This operation uses the JSON format when sending notifications to an Amazon SQS queue, and an email key-value pair format when sending notifications to an Amazon SNS topic. When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test messages contain the following additional key-value pair: \"Event\": \"autoscaling:TEST_NOTIFICATION\".",
  "DefaultResult": "Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either CONTINUE or ABANDON. The default value is ABANDON.",
  "NotificationMetadata": "Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.",
  "HeartbeatTimeout": "The maximum time, in seconds, that can elapse before the lifecycle hook times out. The range is from 30 to 7200 seconds. The default value is 3600 seconds (1 hour). If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in the DefaultResult parameter. You can prevent the lifecycle hook from timing out by calling the RecordLifecycleActionHeartbeat API.",
  "RoleARN": "The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target, for example, an Amazon SNS topic or an Amazon SQS queue. Required for new lifecycle hooks, but optional when updating existing hooks.",
  "LifecycleTransition": "The instance state to which you want to attach the lifecycle hook. The valid values are:   autoscaling:EC2_INSTANCE_LAUNCHING   autoscaling:EC2_INSTANCE_TERMINATING   Required for new lifecycle hooks, but optional when updating existing hooks."
}
"""
PutLifecycleHook(args) = auto_scaling("PutLifecycleHook", args)

"""
    BatchDeleteScheduledAction()

Deletes one or more scheduled actions for the specified Auto Scaling group.

Required Parameters
{
  "ScheduledActionNames": "The names of the scheduled actions to delete. The maximum number allowed is 50. ",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
BatchDeleteScheduledAction(args) = auto_scaling("BatchDeleteScheduledAction", args)

"""
    CreateAutoScalingGroup()

Creates an Auto Scaling group with the specified name and attributes.  If you exceed your maximum limit of Auto Scaling groups, the call fails. To query this limit, call the DescribeAccountLimits API. For information about updating this limit, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide. For introductory exercises for creating an Auto Scaling group, see Getting Started with Amazon EC2 Auto Scaling and Tutorial: Set Up a Scaled and Load-Balanced Application in the Amazon EC2 Auto Scaling User Guide. For more information, see Auto Scaling Groups in the Amazon EC2 Auto Scaling User Guide. Every Auto Scaling group has three size parameters (DesiredCapacity, MaxSize, and MinSize). Usually, you set these sizes based on a specific number of instances. However, if you configure a mixed instances policy that defines weights for the instance types, you must specify these sizes with the same units that you use for weighting instances.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group. This name must be unique per Region per account.",
  "MaxSize": "The maximum size of the group.  With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to go above MaxSize to meet your capacity requirements. In this event, Amazon EC2 Auto Scaling will never go above MaxSize by more than your largest instance weight (weights that define how many units each instance contributes to the desired capacity of the group). ",
  "MinSize": "The minimum size of the group."
}

Optional Parameters
{
  "DefaultCooldown": "The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default value is 300. This setting applies when using simple scaling policies, but not when using other scaling policies or scheduled scaling. For more information, see Scaling Cooldowns for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.",
  "MixedInstancesPolicy": "An embedded object that specifies a mixed instances policy. The required parameters must be specified. If optional parameters are unspecified, their default values are used. The policy includes parameters that not only define the distribution of On-Demand Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacity, but also the parameters that specify the instance configuration information—the launch template and instance types. For more information, see MixedInstancesPolicy in the Amazon EC2 Auto Scaling API Reference and Auto Scaling Groups with Multiple Instance Types and Purchase Options in the Amazon EC2 Auto Scaling User Guide. You must specify one of the following parameters in your request: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.",
  "MaxInstanceLifetime": "The maximum amount of time, in seconds, that an instance can be in service. The default is null. This parameter is optional, but if you specify a value for it, you must specify a value of at least 604,800 seconds (7 days). To clear a previously set value, specify a new value of 0. For more information, see Replacing Auto Scaling Instances Based on Maximum Instance Lifetime in the Amazon EC2 Auto Scaling User Guide. Valid Range: Minimum value of 0.",
  "AvailabilityZones": "One or more Availability Zones for the group. This parameter is optional if you specify one or more subnets for VPCZoneIdentifier. Conditional: If your account supports EC2-Classic and VPC, this parameter is required to launch instances into EC2-Classic.",
  "LifecycleHookSpecificationList": "One or more lifecycle hooks.",
  "DesiredCapacity": "The desired capacity is the initial capacity of the Auto Scaling group at the time of its creation and the capacity it attempts to maintain. It can scale beyond this capacity if you configure automatic scaling. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group. If you do not specify a desired capacity, the default is the minimum size of the group.",
  "Tags": "One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2 instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS volumes, specify the tags in a launch template but use caution. If the launch template specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling overrides the value of that instance tag with the value specified by the Auto Scaling group. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.",
  "InstanceId": "The ID of the instance used to create a launch configuration for the group. To get the instance ID, use the Amazon EC2 DescribeInstances API operation. When you specify an ID of an instance, Amazon EC2 Auto Scaling creates a new launch configuration and associates it with the group. This launch configuration derives its attributes from the specified instance, except for the block device mapping. You must specify one of the following parameters in your request: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.",
  "LaunchTemplate": "Parameters used to specify the launch template and version to use when an instance is launched. For more information, see LaunchTemplateSpecification in the Amazon EC2 Auto Scaling API Reference. You can alternatively associate a launch template to the Auto Scaling group by using the MixedInstancesPolicy parameter. You must specify one of the following parameters in your request: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.",
  "PlacementGroup": "The name of the placement group into which to launch your instances, if any. A placement group is a logical grouping of instances within a single Availability Zone. You cannot specify multiple Availability Zones and a placement group. For more information, see Placement Groups in the Amazon EC2 User Guide for Linux Instances.",
  "ServiceLinkedRoleARN": "The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role named AWSServiceRoleForAutoScaling, which it creates if it does not exist. For more information, see Service-Linked Roles in the Amazon EC2 Auto Scaling User Guide.",
  "LoadBalancerNames": "A list of Classic Load Balancers associated with this Auto Scaling group. For Application Load Balancers and Network Load Balancers, specify a list of target groups using the TargetGroupARNs property instead. For more information, see Using a Load Balancer with an Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.",
  "LaunchConfigurationName": "The name of the launch configuration to use when an instance is launched. To get the launch configuration name, use the DescribeLaunchConfigurations API operation. New launch configurations can be created with the CreateLaunchConfiguration API. You must specify one of the following parameters in your request: LaunchConfigurationName, LaunchTemplate, InstanceId, or MixedInstancesPolicy.",
  "HealthCheckType": "The service to use for the health checks. The valid values are EC2 and ELB. The default value is EC2. If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks. For more information, see Health Checks for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide.",
  "NewInstancesProtectedFromScaleIn": "Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in. For more information about preventing instances from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.",
  "HealthCheckGracePeriod": "The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service. During this time, any health check failures for the instance are ignored. The default value is 0. For more information, see Health Check Grace Period in the Amazon EC2 Auto Scaling User Guide. Required if you are adding an ELB health check.",
  "VPCZoneIdentifier": "A comma-separated list of subnet IDs for your virtual private cloud (VPC). If you specify VPCZoneIdentifier with AvailabilityZones, the subnets that you specify for this parameter must reside in those Availability Zones. Conditional: If your account supports EC2-Classic and VPC, this parameter is required to launch instances into a VPC.",
  "TerminationPolicies": "One or more termination policies used to select the instance to terminate. These policies are executed in the order that they are listed. For more information, see Controlling Which Instances Auto Scaling Terminates During Scale In in the Amazon EC2 Auto Scaling User Guide.",
  "TargetGroupARNs": "The Amazon Resource Names (ARN) of the target groups to associate with the Auto Scaling group. Instances are registered as targets in a target group, and traffic is routed to the target group. For more information, see Using a Load Balancer with an Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide."
}
"""
CreateAutoScalingGroup(args) = auto_scaling("CreateAutoScalingGroup", args)

"""
    DeleteScheduledAction()

Deletes the specified scheduled action.

Required Parameters
{
  "ScheduledActionName": "The name of the action to delete.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
DeleteScheduledAction(args) = auto_scaling("DeleteScheduledAction", args)

"""
    ExecutePolicy()

Executes the specified policy. This can be useful for testing the design of your scaling policy.

Required Parameters
{
  "PolicyName": "The name or ARN of the policy."
}

Optional Parameters
{
  "MetricValue": "The metric value to compare to BreachThreshold. This enables you to execute a policy of type StepScaling and determine which step adjustment to use. For example, if the breach threshold is 50 and you want to use a step adjustment with a lower bound of 0 and an upper bound of 10, you can set the metric value to 59. If you specify a metric value that doesn't correspond to a step adjustment for the policy, the call returns an error. Required if the policy type is StepScaling and not supported otherwise.",
  "HonorCooldown": "Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing the policy. Valid only if the policy type is SimpleScaling. For more information, see Scaling Cooldowns for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.",
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "BreachThreshold": "The breach threshold for the alarm. Required if the policy type is StepScaling and not supported otherwise."
}
"""
ExecutePolicy(args) = auto_scaling("ExecutePolicy", args)

"""
    DescribeAutoScalingInstances()

Describes one or more Auto Scaling instances.

Optional Parameters
{
  "InstanceIds": "The IDs of the instances. You can specify up to MaxRecords IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.",
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 50.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""

DescribeAutoScalingInstances() = auto_scaling("DescribeAutoScalingInstances")
DescribeAutoScalingInstances(args) = auto_scaling("DescribeAutoScalingInstances", args)

"""
    RecordLifecycleActionHeartbeat()

Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using the PutLifecycleHook API call. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.   For more information, see Auto Scaling Lifecycle in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "LifecycleHookName": "The name of the lifecycle hook.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "LifecycleActionToken": "A token that uniquely identifies a specific lifecycle action associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when you created the lifecycle hook.",
  "InstanceId": "The ID of the instance."
}
"""
RecordLifecycleActionHeartbeat(args) = auto_scaling("RecordLifecycleActionHeartbeat", args)

"""
    ResumeProcesses()

Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "ScalingProcesses": "One or more of the following processes:    Launch     Terminate     AddToLoadBalancer     AlarmNotification     AZRebalance     HealthCheck     InstanceRefresh     ReplaceUnhealthy     ScheduledActions    If you omit this parameter, all processes are specified."
}
"""
ResumeProcesses(args) = auto_scaling("ResumeProcesses", args)

"""
    DetachLoadBalancerTargetGroups()

Detaches one or more target groups from the specified Auto Scaling group.

Required Parameters
{
  "TargetGroupARNs": "The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
DetachLoadBalancerTargetGroups(args) = auto_scaling("DetachLoadBalancerTargetGroups", args)

"""
    AttachLoadBalancers()

 To attach an Application Load Balancer or a Network Load Balancer, use the AttachLoadBalancerTargetGroups API operation instead.  Attaches one or more Classic Load Balancers to the specified Auto Scaling group. Amazon EC2 Auto Scaling registers the running instances with these Classic Load Balancers. To describe the load balancers for an Auto Scaling group, call the DescribeLoadBalancers API. To detach the load balancer from the Auto Scaling group, call the DetachLoadBalancers API. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "LoadBalancerNames": "The names of the load balancers. You can specify up to 10 load balancers."
}
"""
AttachLoadBalancers(args) = auto_scaling("AttachLoadBalancers", args)

"""
    DescribeLaunchConfigurations()

Describes one or more launch configurations.

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "LaunchConfigurationNames": "The launch configuration names. If you omit this parameter, all launch configurations are described."
}
"""

DescribeLaunchConfigurations() = auto_scaling("DescribeLaunchConfigurations")
DescribeLaunchConfigurations(args) = auto_scaling("DescribeLaunchConfigurations", args)

"""
    DeletePolicy()

Deletes the specified scaling policy. Deleting either a step scaling policy or a simple scaling policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action. For more information, see Deleting a Scaling Policy in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "PolicyName": "The name or Amazon Resource Name (ARN) of the policy."
}

Optional Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
DeletePolicy(args) = auto_scaling("DeletePolicy", args)

"""
    DescribeAutoScalingNotificationTypes()

Describes the notification types that are supported by Amazon EC2 Auto Scaling.
"""

DescribeAutoScalingNotificationTypes() = auto_scaling("DescribeAutoScalingNotificationTypes")
DescribeAutoScalingNotificationTypes(args) = auto_scaling("DescribeAutoScalingNotificationTypes", args)

"""
    DisableMetricsCollection()

Disables group metrics for the specified Auto Scaling group.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "Metrics": "Specifies one or more of the following metrics:    GroupMinSize     GroupMaxSize     GroupDesiredCapacity     GroupInServiceInstances     GroupPendingInstances     GroupStandbyInstances     GroupTerminatingInstances     GroupTotalInstances     GroupInServiceCapacity     GroupPendingCapacity     GroupStandbyCapacity     GroupTerminatingCapacity     GroupTotalCapacity    If you omit this parameter, all metrics are disabled. "
}
"""
DisableMetricsCollection(args) = auto_scaling("DisableMetricsCollection", args)

"""
    DeleteLaunchConfiguration()

Deletes the specified launch configuration. The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.

Required Parameters
{
  "LaunchConfigurationName": "The name of the launch configuration."
}
"""
DeleteLaunchConfiguration(args) = auto_scaling("DeleteLaunchConfiguration", args)

"""
    PutNotificationConfiguration()

Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address. This configuration overwrites any existing configuration. For more information, see Getting Amazon SNS Notifications When Your Auto Scaling Group Scales in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "TopicARN": "The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.",
  "NotificationTypes": "The type of event that causes the notification to be sent. To query the notification types supported by Amazon EC2 Auto Scaling, call the DescribeAutoScalingNotificationTypes API.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
PutNotificationConfiguration(args) = auto_scaling("PutNotificationConfiguration", args)

"""
    DescribePolicies()

Describes the policies for the specified Auto Scaling group.

Optional Parameters
{
  "PolicyNames": "The names of one or more policies. If you omit this parameter, all policies are described. If a group name is provided, the results are limited to that group. This list is limited to 50 items. If you specify an unknown policy name, it is ignored with no error.",
  "MaxRecords": "The maximum number of items to be returned with each call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "PolicyTypes": "One or more policy types. The valid values are SimpleScaling, StepScaling, and TargetTrackingScaling.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""

DescribePolicies() = auto_scaling("DescribePolicies")
DescribePolicies(args) = auto_scaling("DescribePolicies", args)

"""
    CreateOrUpdateTags()

Creates or updates tags for the specified Auto Scaling group. When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "Tags": "One or more tags."
}
"""
CreateOrUpdateTags(args) = auto_scaling("CreateOrUpdateTags", args)

"""
    DescribeAdjustmentTypes()

Describes the available adjustment types for Amazon EC2 Auto Scaling scaling policies. These settings apply to step scaling policies and simple scaling policies; they do not apply to target tracking scaling policies. The following adjustment types are supported:   ChangeInCapacity   ExactCapacity   PercentChangeInCapacity  
"""

DescribeAdjustmentTypes() = auto_scaling("DescribeAdjustmentTypes")
DescribeAdjustmentTypes(args) = auto_scaling("DescribeAdjustmentTypes", args)

"""
    DeleteTags()

Deletes the specified tags.

Required Parameters
{
  "Tags": "One or more tags."
}
"""
DeleteTags(args) = auto_scaling("DeleteTags", args)

"""
    EnableMetricsCollection()

Enables group metrics for the specified Auto Scaling group. For more information, see Monitoring Your Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "Granularity": "The granularity to associate with the metrics to collect. The only valid value is 1Minute."
}

Optional Parameters
{
  "Metrics": "Specifies which group-level metrics to start collecting. You can specify one or more of the following metrics:    GroupMinSize     GroupMaxSize     GroupDesiredCapacity     GroupInServiceInstances     GroupPendingInstances     GroupStandbyInstances     GroupTerminatingInstances     GroupTotalInstances    The instance weighting feature supports the following additional metrics:     GroupInServiceCapacity     GroupPendingCapacity     GroupStandbyCapacity     GroupTerminatingCapacity     GroupTotalCapacity    If you omit this parameter, all metrics are enabled. "
}
"""
EnableMetricsCollection(args) = auto_scaling("EnableMetricsCollection", args)

"""
    DeleteAutoScalingGroup()

Deletes the specified Auto Scaling group. If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed. If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action. To remove instances from the Auto Scaling group before deleting it, call the DetachInstances API with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances. To terminate all instances before deleting the Auto Scaling group, call the UpdateAutoScalingGroup API and set the minimum size and desired capacity of the Auto Scaling group to zero.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "ForceDelete": "Specifies that the group is to be deleted along with all instances associated with the group, without waiting for all instances to be terminated. This parameter also deletes any lifecycle actions associated with the group."
}
"""
DeleteAutoScalingGroup(args) = auto_scaling("DeleteAutoScalingGroup", args)

"""
    SuspendProcesses()

Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group. If you suspend either the Launch or Terminate process types, it can prevent other process types from functioning properly. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide. To resume processes that have been suspended, call the ResumeProcesses API.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "ScalingProcesses": "One or more of the following processes:    Launch     Terminate     AddToLoadBalancer     AlarmNotification     AZRebalance     HealthCheck     InstanceRefresh     ReplaceUnhealthy     ScheduledActions    If you omit this parameter, all processes are specified."
}
"""
SuspendProcesses(args) = auto_scaling("SuspendProcesses", args)

"""
    DescribeAccountLimits()

Describes the current Amazon EC2 Auto Scaling resource quotas for your AWS account. For information about requesting an increase, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide.
"""

DescribeAccountLimits() = auto_scaling("DescribeAccountLimits")
DescribeAccountLimits(args) = auto_scaling("DescribeAccountLimits", args)

"""
    DescribeLifecycleHooks()

Describes the lifecycle hooks for the specified Auto Scaling group.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "LifecycleHookNames": "The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle hooks are described."
}
"""
DescribeLifecycleHooks(args) = auto_scaling("DescribeLifecycleHooks", args)

"""
    DescribeLoadBalancerTargetGroups()

Describes the target groups for the specified Auto Scaling group.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeLoadBalancerTargetGroups(args) = auto_scaling("DescribeLoadBalancerTargetGroups", args)

"""
    AttachInstances()

Attaches one or more EC2 instances to the specified Auto Scaling group. When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails. If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups. For more information, see Attach EC2 Instances to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "InstanceIds": "The IDs of the instances. You can specify up to 20 instances."
}
"""
AttachInstances(args) = auto_scaling("AttachInstances", args)

"""
    AttachLoadBalancerTargetGroups()

Attaches one or more target groups to the specified Auto Scaling group. To describe the target groups for an Auto Scaling group, call the DescribeLoadBalancerTargetGroups API. To detach the target group from the Auto Scaling group, call the DetachLoadBalancerTargetGroups API. With Application Load Balancers and Network Load Balancers, instances are registered as targets with a target group. With Classic Load Balancers, instances are registered with the load balancer. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "TargetGroupARNs": "The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target groups.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
AttachLoadBalancerTargetGroups(args) = auto_scaling("AttachLoadBalancerTargetGroups", args)

"""
    UpdateAutoScalingGroup()

Updates the configuration for the specified Auto Scaling group. To update an Auto Scaling group, specify the name of the group and the parameter that you want to change. Any parameters that you don't specify are not changed by this update request. The new settings take effect on any scaling activities after this call returns.  If you associate a new launch configuration or template with an Auto Scaling group, all new instances will get the updated configuration. Existing instances continue to run with the configuration that they were originally launched with. When you update a group to specify a mixed instances policy instead of a launch configuration or template, existing instances may be replaced to match the new purchasing options that you specified in the policy. For example, if the group currently has 100% On-Demand capacity and the policy specifies 50% Spot capacity, this means that half of your instances will be gradually terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches new instances before terminating the old ones, so that updating your group does not compromise the performance or availability of your application. Note the following about changing DesiredCapacity, MaxSize, or MinSize:   If a scale-in activity occurs as a result of a new DesiredCapacity value that is lower than the current size of the group, the Auto Scaling group uses its termination policy to determine which instances to terminate.   If you specify a new value for MinSize without specifying a value for DesiredCapacity, and the new MinSize is larger than the current size of the group, this sets the group's DesiredCapacity to the new MinSize value.   If you specify a new value for MaxSize without specifying a value for DesiredCapacity, and the new MaxSize is smaller than the current size of the group, this sets the group's DesiredCapacity to the new MaxSize value.   To see which parameters have been set, call the DescribeAutoScalingGroups API. To view the scaling policies for an Auto Scaling group, call the DescribePolicies API. If the group has scaling policies, you can update them by calling the PutScalingPolicy API.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "DefaultCooldown": "The amount of time, in seconds, after a scaling activity completes before another scaling activity can start. The default value is 300. This setting applies when using simple scaling policies, but not when using other scaling policies or scheduled scaling. For more information, see Scaling Cooldowns for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.",
  "MixedInstancesPolicy": "An embedded object that specifies a mixed instances policy. In your call to UpdateAutoScalingGroup, you can make changes to the policy that is specified. All optional parameters are left unchanged if not specified. For more information, see MixedInstancesPolicy in the Amazon EC2 Auto Scaling API Reference and Auto Scaling Groups with Multiple Instance Types and Purchase Options in the Amazon EC2 Auto Scaling User Guide.",
  "MaxSize": "The maximum size of the Auto Scaling group.  With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to go above MaxSize to meet your capacity requirements. In this event, Amazon EC2 Auto Scaling will never go above MaxSize by more than your largest instance weight (weights that define how many units each instance contributes to the desired capacity of the group). ",
  "MaxInstanceLifetime": "The maximum amount of time, in seconds, that an instance can be in service. The default is null. This parameter is optional, but if you specify a value for it, you must specify a value of at least 604,800 seconds (7 days). To clear a previously set value, specify a new value of 0. For more information, see Replacing Auto Scaling Instances Based on Maximum Instance Lifetime in the Amazon EC2 Auto Scaling User Guide. Valid Range: Minimum value of 0.",
  "AvailabilityZones": "One or more Availability Zones for the group.",
  "DesiredCapacity": "The desired capacity is the initial capacity of the Auto Scaling group after this operation completes and the capacity it attempts to maintain. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.",
  "LaunchTemplate": "The launch template and version to use to specify the updates. If you specify LaunchTemplate in your update request, you can't specify LaunchConfigurationName or MixedInstancesPolicy. For more information, see LaunchTemplateSpecification in the Amazon EC2 Auto Scaling API Reference.",
  "ServiceLinkedRoleARN": "The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf. For more information, see Service-Linked Roles in the Amazon EC2 Auto Scaling User Guide.",
  "PlacementGroup": "The name of the placement group into which to launch your instances, if any. A placement group is a logical grouping of instances within a single Availability Zone. You cannot specify multiple Availability Zones and a placement group. For more information, see Placement Groups in the Amazon EC2 User Guide for Linux Instances.",
  "HealthCheckType": "The service to use for the health checks. The valid values are EC2 and ELB. If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.",
  "LaunchConfigurationName": "The name of the launch configuration. If you specify LaunchConfigurationName in your update request, you can't specify LaunchTemplate or MixedInstancesPolicy.",
  "NewInstancesProtectedFromScaleIn": "Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in. For more information about preventing instances from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.",
  "HealthCheckGracePeriod": "The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service. The default value is 0. For more information, see Health Check Grace Period in the Amazon EC2 Auto Scaling User Guide. Required if you are adding an ELB health check.",
  "VPCZoneIdentifier": "A comma-separated list of subnet IDs for virtual private cloud (VPC). If you specify VPCZoneIdentifier with AvailabilityZones, the subnets that you specify for this parameter must reside in those Availability Zones.",
  "TerminationPolicies": "A standalone termination policy or a list of termination policies used to select the instance to terminate. The policies are executed in the order that they are listed. For more information, see Controlling Which Instances Auto Scaling Terminates During Scale In in the Amazon EC2 Auto Scaling User Guide.",
  "MinSize": "The minimum size of the Auto Scaling group."
}
"""
UpdateAutoScalingGroup(args) = auto_scaling("UpdateAutoScalingGroup", args)

"""
    DescribeMetricCollectionTypes()

Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling. The GroupStandbyInstances metric is not returned by default. You must explicitly request this metric when calling the EnableMetricsCollection API.
"""

DescribeMetricCollectionTypes() = auto_scaling("DescribeMetricCollectionTypes")
DescribeMetricCollectionTypes(args) = auto_scaling("DescribeMetricCollectionTypes", args)

"""
    DescribeScalingActivities()

Describes one or more scaling activities for the specified Auto Scaling group.

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 100 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "ActivityIds": "The activity IDs of the desired scaling activities. You can specify up to 50 IDs. If you omit this parameter, all activities for the past six weeks are described. If unknown activities are requested, they are ignored with no error. If you specify an Auto Scaling group, the results are limited to that group."
}
"""

DescribeScalingActivities() = auto_scaling("DescribeScalingActivities")
DescribeScalingActivities(args) = auto_scaling("DescribeScalingActivities", args)

"""
    DeleteLifecycleHook()

Deletes the specified lifecycle hook. If there are any outstanding lifecycle actions, they are completed first (ABANDON for launching instances, CONTINUE for terminating instances).

Required Parameters
{
  "LifecycleHookName": "The name of the lifecycle hook.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
DeleteLifecycleHook(args) = auto_scaling("DeleteLifecycleHook", args)

"""
    DescribeTags()

Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters to scope the tags to return. The maximum number of filters per filter type (for example, auto-scaling-group) is 1000."
}
"""

DescribeTags() = auto_scaling("DescribeTags")
DescribeTags(args) = auto_scaling("DescribeTags", args)

"""
    DescribeTerminationPolicyTypes()

Describes the termination policies supported by Amazon EC2 Auto Scaling. For more information, see Controlling Which Auto Scaling Instances Terminate During Scale In in the Amazon EC2 Auto Scaling User Guide.
"""

DescribeTerminationPolicyTypes() = auto_scaling("DescribeTerminationPolicyTypes")
DescribeTerminationPolicyTypes(args) = auto_scaling("DescribeTerminationPolicyTypes", args)

"""
    DetachInstances()

Removes one or more instances from the specified Auto Scaling group. After the instances are detached, you can manage them independent of the Auto Scaling group. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached. If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups. For more information, see Detach EC2 Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "ShouldDecrementDesiredCapacity": "Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "InstanceIds": "The IDs of the instances. You can specify up to 20 instances."
}
"""
DetachInstances(args) = auto_scaling("DetachInstances", args)

"""
    PutScheduledUpdateGroupAction()

Creates or updates a scheduled scaling action for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged. For more information, see Scheduled Scaling in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "ScheduledActionName": "The name of this scaling action.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "StartTime": "The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT only and in quotes (for example, \"2019-06-01T00:00:00Z\"). If you specify Recurrence and StartTime, Amazon EC2 Auto Scaling performs the action at this time, and then performs the action based on the specified recurrence. If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error message.",
  "Recurrence": "The recurring schedule for this action, in Unix cron syntax format. This format consists of five fields separated by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example, \"30 0 1 1,6,12 *\"). For more information about this format, see Crontab. When StartTime and EndTime are specified with Recurrence, they form the boundaries of when the recurring action starts and stops.",
  "EndTime": "The date and time for the recurring schedule to end. Amazon EC2 Auto Scaling does not perform the action after this time.",
  "DesiredCapacity": "The desired capacity is the initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain. It can scale beyond this capacity if you add more scaling conditions. ",
  "Time": "This parameter is no longer used.",
  "MaxSize": "The maximum size of the Auto Scaling group.",
  "MinSize": "The minimum size of the Auto Scaling group."
}
"""
PutScheduledUpdateGroupAction(args) = auto_scaling("PutScheduledUpdateGroupAction", args)

"""
    PutScalingPolicy()

Creates or updates a scaling policy for an Auto Scaling group. For more information about using scaling policies to scale your Auto Scaling group, see Target Tracking Scaling Policies and Step and Simple Scaling Policies in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "PolicyName": "The name of the policy.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "StepAdjustments": "A set of adjustments that enable you to scale based on the size of the alarm breach. Required if the policy type is StepScaling. (Not used with any other policy type.) ",
  "MetricAggregationType": "The aggregation type for the CloudWatch metrics. The valid values are Minimum, Maximum, and Average. If the aggregation type is null, the value is treated as Average. Valid only if the policy type is StepScaling.",
  "ScalingAdjustment": "The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity. For exact capacity, you must specify a positive value. Required if the policy type is SimpleScaling. (Not used with any other policy type.) ",
  "TargetTrackingConfiguration": "A target tracking scaling policy. Includes support for predefined or customized metrics. The following predefined metrics are available:    ASGAverageCPUUtilization     ASGAverageNetworkIn     ASGAverageNetworkOut     ALBRequestCountPerTarget    If you specify ALBRequestCountPerTarget for the metric, you must specify the ResourceLabel parameter with the PredefinedMetricSpecification. For more information, see TargetTrackingConfiguration in the Amazon EC2 Auto Scaling API Reference. Required if the policy type is TargetTrackingScaling.",
  "EstimatedInstanceWarmup": "The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. If not provided, the default is to use the value from the default cooldown period for the Auto Scaling group. Valid only if the policy type is TargetTrackingScaling or StepScaling.",
  "Cooldown": "The duration of the policy's cooldown period, in seconds. When a cooldown period is specified here, it overrides the default cooldown period defined for the Auto Scaling group. Valid only if the policy type is SimpleScaling. For more information, see Scaling Cooldowns for Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.",
  "MinAdjustmentMagnitude": "The minimum value to scale by when the adjustment type is PercentChangeInCapacity. For example, suppose that you create a step scaling policy to scale out an Auto Scaling group by 25 percent and you specify a MinAdjustmentMagnitude of 2. If the group has 4 instances and the scaling policy is performed, 25 percent of 4 is 1. However, because you specified a MinAdjustmentMagnitude of 2, Amazon EC2 Auto Scaling scales out the group by 2 instances. Valid only if the policy type is StepScaling or SimpleScaling. For more information, see Scaling Adjustment Types in the Amazon EC2 Auto Scaling User Guide.  Some Auto Scaling groups use instance weights. In this case, set the MinAdjustmentMagnitude to a value that is at least as large as your largest instance weight. ",
  "MinAdjustmentStep": "Available for backward compatibility. Use MinAdjustmentMagnitude instead.",
  "PolicyType": "One of the following policy types:     TargetTrackingScaling     StepScaling     SimpleScaling (default)  ",
  "AdjustmentType": "Specifies how the scaling adjustment is interpreted (for example, an absolute number or a percentage). The valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity. Required if the policy type is StepScaling or SimpleScaling. For more information, see Scaling Adjustment Types in the Amazon EC2 Auto Scaling User Guide.",
  "Enabled": "Indicates whether the scaling policy is enabled or disabled. The default is enabled. For more information, see Disabling a Scaling Policy for an Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide."
}
"""
PutScalingPolicy(args) = auto_scaling("PutScalingPolicy", args)

"""
    ExitStandby()

Moves the specified instances out of the standby state. After you put the instances back in service, the desired capacity is incremented. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "InstanceIds": "The IDs of the instances. You can specify up to 20 instances."
}
"""
ExitStandby(args) = auto_scaling("ExitStandby", args)

"""
    DescribeScalingProcessTypes()

Describes the scaling process types for use with the ResumeProcesses and SuspendProcesses APIs.
"""

DescribeScalingProcessTypes() = auto_scaling("DescribeScalingProcessTypes")
DescribeScalingProcessTypes(args) = auto_scaling("DescribeScalingProcessTypes", args)

"""
    CancelInstanceRefresh()

Cancels an instance refresh operation in progress. Cancellation does not roll back any replacements that have already been completed, but it prevents new replacements from being started.  For more information, see Replacing Auto Scaling Instances Based on an Instance Refresh.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
CancelInstanceRefresh(args) = auto_scaling("CancelInstanceRefresh", args)

"""
    CompleteLifecycleAction()

Completes the lifecycle action for the specified token or instance with the specified result. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.   If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.    For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "LifecycleHookName": "The name of the lifecycle hook.",
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "LifecycleActionResult": "The action for the group to take. This parameter can be either CONTINUE or ABANDON."
}

Optional Parameters
{
  "LifecycleActionToken": "A universally unique identifier (UUID) that identifies a specific lifecycle action associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you specified when you created the lifecycle hook.",
  "InstanceId": "The ID of the instance."
}
"""
CompleteLifecycleAction(args) = auto_scaling("CompleteLifecycleAction", args)

"""
    SetInstanceProtection()

Updates the instance protection settings of the specified instances. For more information about preventing instances that are part of an Auto Scaling group from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "InstanceIds": "One or more instance IDs.",
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "ProtectedFromScaleIn": "Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in."
}
"""
SetInstanceProtection(args) = auto_scaling("SetInstanceProtection", args)

"""
    SetDesiredCapacity()

Sets the size of the specified Auto Scaling group. If a scale-in activity occurs as a result of a new DesiredCapacity value that is lower than the current size of the group, the Auto Scaling group uses its termination policy to determine which instances to terminate.  For more information, see Manual Scaling in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "DesiredCapacity": "The desired capacity is the initial capacity of the Auto Scaling group after this operation completes and the capacity it attempts to maintain.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "HonorCooldown": "Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does not honor the cooldown period during manual scaling activities."
}
"""
SetDesiredCapacity(args) = auto_scaling("SetDesiredCapacity", args)

"""
    DescribeAutoScalingGroups()

Describes one or more Auto Scaling groups.

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "AutoScalingGroupNames": "The names of the Auto Scaling groups. Each name can be a maximum of 1600 characters. By default, you can only specify up to 50 names. You can optionally increase this limit using the MaxRecords parameter. If you omit this parameter, all Auto Scaling groups are described."
}
"""

DescribeAutoScalingGroups() = auto_scaling("DescribeAutoScalingGroups")
DescribeAutoScalingGroups(args) = auto_scaling("DescribeAutoScalingGroups", args)

"""
    DescribeNotificationConfigurations()

Describes the notification actions associated with the specified Auto Scaling group.

Optional Parameters
{
  "MaxRecords": "The maximum number of items to return with this call. The default value is 50 and the maximum value is 100.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "AutoScalingGroupNames": "The name of the Auto Scaling group."
}
"""

DescribeNotificationConfigurations() = auto_scaling("DescribeNotificationConfigurations")
DescribeNotificationConfigurations(args) = auto_scaling("DescribeNotificationConfigurations", args)

"""
    EnterStandby()

Moves the specified instances into the standby state. If you choose to decrement the desired capacity of the Auto Scaling group, the instances can enter standby as long as the desired capacity of the Auto Scaling group after the instances are placed into standby is equal to or greater than the minimum capacity of the group. If you choose not to decrement the desired capacity of the Auto Scaling group, the Auto Scaling group launches new instances to replace the instances on standby. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "ShouldDecrementDesiredCapacity": "Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of instances moved to Standby mode.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "InstanceIds": "The IDs of the instances. You can specify up to 20 instances."
}
"""
EnterStandby(args) = auto_scaling("EnterStandby", args)

"""
    DetachLoadBalancers()

Detaches one or more Classic Load Balancers from the specified Auto Scaling group. This operation detaches only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use the DetachLoadBalancerTargetGroups API instead. When you detach a load balancer, it enters the Removing state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using the DescribeLoadBalancers API call. The instances remain running.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group.",
  "LoadBalancerNames": "The names of the load balancers. You can specify up to 10 load balancers."
}
"""
DetachLoadBalancers(args) = auto_scaling("DetachLoadBalancers", args)

"""
    StartInstanceRefresh()

Starts a new instance refresh operation, which triggers a rolling replacement of all previously launched instances in the Auto Scaling group with a new group of instances. If successful, this call creates a new instance refresh request with a unique ID that you can use to track its progress. To query its status, call the DescribeInstanceRefreshes API. To describe the instance refreshes that have already run, call the DescribeInstanceRefreshes API. To cancel an instance refresh operation in progress, use the CancelInstanceRefresh API.  For more information, see Replacing Auto Scaling Instances Based on an Instance Refresh.

Required Parameters
{
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}

Optional Parameters
{
  "Strategy": "The strategy to use for the instance refresh. The only valid value is Rolling. A rolling update is an update that is applied to all instances in an Auto Scaling group until all instances have been updated. A rolling update can fail due to failed health checks or if instances are on standby or are protected from scale in. If the rolling update process fails, any instances that were already replaced are not rolled back to their previous configuration. ",
  "Preferences": "Set of preferences associated with the instance refresh request. If not provided, the default values are used. For MinHealthyPercentage, the default value is 90. For InstanceWarmup, the default is to use the value specified for the health check grace period for the Auto Scaling group. For more information, see RefreshPreferences in the Amazon EC2 Auto Scaling API Reference."
}
"""
StartInstanceRefresh(args) = auto_scaling("StartInstanceRefresh", args)

"""
    DescribeLifecycleHookTypes()

Describes the available types of lifecycle hooks. The following hook types are supported:   autoscaling:EC2_INSTANCE_LAUNCHING   autoscaling:EC2_INSTANCE_TERMINATING  
"""

DescribeLifecycleHookTypes() = auto_scaling("DescribeLifecycleHookTypes")
DescribeLifecycleHookTypes(args) = auto_scaling("DescribeLifecycleHookTypes", args)

"""
    CreateLaunchConfiguration()

Creates a launch configuration. If you exceed your maximum limit of launch configurations, the call fails. To query this limit, call the DescribeAccountLimits API. For information about updating this limit, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide. For more information, see Launch Configurations in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "LaunchConfigurationName": "The name of the launch configuration. This name must be unique per Region per account."
}

Optional Parameters
{
  "BlockDeviceMappings": "A block device mapping, which specifies the block devices for the instance. You can specify virtual devices and EBS volumes. For more information, see Block Device Mapping in the Amazon EC2 User Guide for Linux Instances.",
  "IamInstanceProfile": "The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance. The instance profile contains the IAM role. For more information, see IAM Role for Applications That Run on Amazon EC2 Instances in the Amazon EC2 Auto Scaling User Guide.",
  "MetadataOptions": "The metadata options for the instances. For more information, see Instance Metadata and User Data in the Amazon EC2 User Guide for Linux Instances.",
  "ClassicLinkVPCId": "The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more information, see ClassicLink in the Amazon EC2 User Guide for Linux Instances and Linking EC2-Classic Instances to a VPC in the Amazon EC2 Auto Scaling User Guide. This parameter can only be used if you are launching EC2-Classic instances.",
  "InstanceMonitoring": "Controls whether instances in this group are launched with detailed (true) or basic (false) monitoring. The default value is true (enabled).  When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and your account is charged a fee. When you disable detailed monitoring, CloudWatch generates metrics every 5 minutes. For more information, see Configure Monitoring for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide. ",
  "SpotPrice": "The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot price. For more information, see Launching Spot Instances in Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.  When you change your maximum price by creating a new launch configuration, running instances will continue to run as long as the maximum price for those running instances is higher than the current Spot price. ",
  "InstanceType": "Specifies the instance type of the EC2 instance. For information about available instance types, see Available Instance Types in the Amazon EC2 User Guide for Linux Instances.  If you do not specify InstanceId, you must specify InstanceType.",
  "UserData": "The Base64-encoded user data to make available to the launched EC2 instances. For more information, see Instance Metadata and User Data in the Amazon EC2 User Guide for Linux Instances.",
  "InstanceId": "The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, except for the block device mapping. To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request. For more information, see Create a Launch Configuration Using an EC2 Instance in the Amazon EC2 Auto Scaling User Guide. If you do not specify InstanceId, you must specify both ImageId and InstanceType.",
  "KeyName": "The name of the key pair. For more information, see Amazon EC2 Key Pairs in the Amazon EC2 User Guide for Linux Instances.",
  "SecurityGroups": "A list that contains the security groups to assign to the instances in the Auto Scaling group. [EC2-VPC] Specify the security group IDs. For more information, see Security Groups for Your VPC in the Amazon Virtual Private Cloud User Guide. [EC2-Classic] Specify either the security group names or the security group IDs. For more information, see Amazon EC2 Security Groups in the Amazon EC2 User Guide for Linux Instances.",
  "AssociatePublicIpAddress": "For Auto Scaling groups that are running in a virtual private cloud (VPC), specifies whether to assign a public IP address to the group's instances. If you specify true, each instance in the Auto Scaling group receives a unique public IP address. For more information, see Launching Auto Scaling Instances in a VPC in the Amazon EC2 Auto Scaling User Guide. If you specify this parameter, you must specify at least one subnet for VPCZoneIdentifier when you create your group.  If the instance is launched into a default subnet, the default is to assign a public IP address, unless you disabled the option to assign a public IP address on the subnet. If the instance is launched into a nondefault subnet, the default is not to assign a public IP address, unless you enabled the option to assign a public IP address on the subnet. ",
  "KernelId": "The ID of the kernel associated with the AMI.",
  "PlacementTenancy": "The tenancy of the instance. An instance with dedicated tenancy runs on isolated, single-tenant hardware and can only be launched into a VPC. To launch dedicated instances into a shared tenancy VPC (a VPC with the instance placement tenancy attribute set to default), you must set the value of this parameter to dedicated. If you specify PlacementTenancy, you must specify at least one subnet for VPCZoneIdentifier when you create your group. For more information, see Instance Placement Tenancy in the Amazon EC2 Auto Scaling User Guide. Valid Values: default | dedicated ",
  "RamdiskId": "The ID of the RAM disk to select.",
  "ImageId": "The ID of the Amazon Machine Image (AMI) that was assigned during registration. For more information, see Finding an AMI in the Amazon EC2 User Guide for Linux Instances. If you do not specify InstanceId, you must specify ImageId.",
  "EbsOptimized": "Specifies whether the launch configuration is optimized for EBS I/O (true) or not (false). The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional fees are incurred when you enable EBS optimization for an instance type that is not EBS-optimized by default. For more information, see Amazon EBS-Optimized Instances in the Amazon EC2 User Guide for Linux Instances. The default value is false.",
  "ClassicLinkVPCSecurityGroups": "The IDs of one or more security groups for the specified ClassicLink-enabled VPC. For more information, see ClassicLink in the Amazon EC2 User Guide for Linux Instances and Linking EC2-Classic Instances to a VPC in the Amazon EC2 Auto Scaling User Guide. If you specify the ClassicLinkVPCId parameter, you must specify this parameter."
}
"""
CreateLaunchConfiguration(args) = auto_scaling("CreateLaunchConfiguration", args)

"""
    SetInstanceHealth()

Sets the health status of the specified instance. For more information, see Health Checks for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide.

Required Parameters
{
  "InstanceId": "The ID of the instance.",
  "HealthStatus": "The health status of the instance. Set to Healthy to have the instance remain in service. Set to Unhealthy to have the instance be out of service. Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance."
}

Optional Parameters
{
  "ShouldRespectGracePeriod": "If the Auto Scaling group of the specified instance has a HealthCheckGracePeriod specified for the group, by default, this call respects the grace period. Set this to False, to have the call not respect the grace period associated with the group. For more information about the health check grace period, see CreateAutoScalingGroup in the Amazon EC2 Auto Scaling API Reference."
}
"""
SetInstanceHealth(args) = auto_scaling("SetInstanceHealth", args)

"""
    DeleteNotificationConfiguration()

Deletes the specified notification.

Required Parameters
{
  "TopicARN": "The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.",
  "AutoScalingGroupName": "The name of the Auto Scaling group."
}
"""
DeleteNotificationConfiguration(args) = auto_scaling("DeleteNotificationConfiguration", args)
