include("../AWSCorePrototypeServices.jl")
using .Services: codestar_notifications

"""
Returns a list of the tags associated with a notification rule.
"""
ListTagsForResource(Arn) = codestar_notifications("POST", "/listTagsForResource")
ListTagsForResource(Arn, args) = codestar_notifications("POST", "/listTagsForResource", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns a list of the notification rule targets for an AWS account.
"""
ListTargets() = codestar_notifications("POST", "/listTargets")
ListTargets(, args) = codestar_notifications("POST", "/listTargets", args)
ListTargets(a...; b...) = ListTargets(a..., b)

"""
Deletes a specified target for notifications.
"""
DeleteTarget(TargetAddress) = codestar_notifications("POST", "/deleteTarget")
DeleteTarget(TargetAddress, args) = codestar_notifications("POST", "/deleteTarget", args)
DeleteTarget(a...; b...) = DeleteTarget(a..., b)

"""
Deletes a notification rule for a resource.
"""
DeleteNotificationRule(Arn) = codestar_notifications("POST", "/deleteNotificationRule")
DeleteNotificationRule(Arn, args) = codestar_notifications("POST", "/deleteNotificationRule", args)
DeleteNotificationRule(a...; b...) = DeleteNotificationRule(a..., b)

"""
Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.
"""
CreateNotificationRule(Name, EventTypeIds, Resource, Targets, DetailType) = codestar_notifications("POST", "/createNotificationRule")
CreateNotificationRule(Name, EventTypeIds, Resource, Targets, DetailType, args) = codestar_notifications("POST", "/createNotificationRule", args)
CreateNotificationRule(a...; b...) = CreateNotificationRule(a..., b)

"""
Returns a list of the notification rules for an AWS account.
"""
ListNotificationRules() = codestar_notifications("POST", "/listNotificationRules")
ListNotificationRules(, args) = codestar_notifications("POST", "/listNotificationRules", args)
ListNotificationRules(a...; b...) = ListNotificationRules(a..., b)

"""
Associates a set of provided tags with a notification rule.
"""
TagResource(Arn, Tags) = codestar_notifications("POST", "/tagResource")
TagResource(Arn, Tags, args) = codestar_notifications("POST", "/tagResource", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the association between one or more provided tags and a notification rule.
"""
UntagResource(Arn, TagKeys) = codestar_notifications("POST", "/untagResource")
UntagResource(Arn, TagKeys, args) = codestar_notifications("POST", "/untagResource", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.
"""
Subscribe(Arn, Target) = codestar_notifications("POST", "/subscribe")
Subscribe(Arn, Target, args) = codestar_notifications("POST", "/subscribe", args)
Subscribe(a...; b...) = Subscribe(a..., b)

"""
Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource. 
"""
UpdateNotificationRule(Arn) = codestar_notifications("POST", "/updateNotificationRule")
UpdateNotificationRule(Arn, args) = codestar_notifications("POST", "/updateNotificationRule", args)
UpdateNotificationRule(a...; b...) = UpdateNotificationRule(a..., b)

"""
Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.
"""
Unsubscribe(Arn, TargetAddress) = codestar_notifications("POST", "/unsubscribe")
Unsubscribe(Arn, TargetAddress, args) = codestar_notifications("POST", "/unsubscribe", args)
Unsubscribe(a...; b...) = Unsubscribe(a..., b)

"""
Returns information about a specified notification rule.
"""
DescribeNotificationRule(Arn) = codestar_notifications("POST", "/describeNotificationRule")
DescribeNotificationRule(Arn, args) = codestar_notifications("POST", "/describeNotificationRule", args)
DescribeNotificationRule(a...; b...) = DescribeNotificationRule(a..., b)

"""
Returns information about the event types available for configuring notifications.
"""
ListEventTypes() = codestar_notifications("POST", "/listEventTypes")
ListEventTypes(, args) = codestar_notifications("POST", "/listEventTypes", args)
ListEventTypes(a...; b...) = ListEventTypes(a..., b)
