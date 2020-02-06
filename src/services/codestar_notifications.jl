include("../AWSCorePrototypeServices.jl")
using .Services: codestar_notifications

"""
Returns a list of the tags associated with a notification rule.

Required Parameters:
Arn
"""
ListTagsForResource(args) = codestar_notifications("POST", "/listTagsForResource", args)

"""
Returns a list of the notification rule targets for an AWS account.
"""
ListTargets() = codestar_notifications("POST", "/listTargets")

"""
Deletes a specified target for notifications.

Required Parameters:
TargetAddress
"""
DeleteTarget(args) = codestar_notifications("POST", "/deleteTarget", args)

"""
Deletes a notification rule for a resource.

Required Parameters:
Arn
"""
DeleteNotificationRule(args) = codestar_notifications("POST", "/deleteNotificationRule", args)

"""
Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.

Required Parameters:
Name, EventTypeIds, Resource, Targets, DetailType
"""
CreateNotificationRule(args) = codestar_notifications("POST", "/createNotificationRule", args)

"""
Returns a list of the notification rules for an AWS account.
"""
ListNotificationRules() = codestar_notifications("POST", "/listNotificationRules")

"""
Associates a set of provided tags with a notification rule.

Required Parameters:
Arn, Tags
"""
TagResource(args) = codestar_notifications("POST", "/tagResource", args)

"""
Removes the association between one or more provided tags and a notification rule.

Required Parameters:
Arn, TagKeys
"""
UntagResource(args) = codestar_notifications("POST", "/untagResource", args)

"""
Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.

Required Parameters:
Arn, Target
"""
Subscribe(args) = codestar_notifications("POST", "/subscribe", args)

"""
Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource. 

Required Parameters:
Arn
"""
UpdateNotificationRule(args) = codestar_notifications("POST", "/updateNotificationRule", args)

"""
Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.

Required Parameters:
Arn, TargetAddress
"""
Unsubscribe(args) = codestar_notifications("POST", "/unsubscribe", args)

"""
Returns information about a specified notification rule.

Required Parameters:
Arn
"""
DescribeNotificationRule(args) = codestar_notifications("POST", "/describeNotificationRule", args)

"""
Returns information about the event types available for configuring notifications.
"""
ListEventTypes() = codestar_notifications("POST", "/listEventTypes")
