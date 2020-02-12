include("../AWSCorePrototypeServices.jl")
using .Services: codestar_notifications

"""
    ListTagsForResource

Returns a list of the tags associated with a notification rule.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) for the notification rule."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = codestar_notifications("POST", "/listTagsForResource", args)
"""
    ListTargets

Returns a list of the notification rule targets for an AWS account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.",
  "NextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "Filters": "The filters to use to return information by service or resource type. Valid filters include target type, target address, and target status.  A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements. "
}

"""
ListTargets() = codestar_notifications("POST", "/listTargets")
ListTargets(args) = codestar_notifications("POST", "/listTargets", args)

"""
    DeleteTarget

Deletes a specified target for notifications.

Required Parameters:
{
  "TargetAddress": "The Amazon Resource Name (ARN) of the SNS topic to delete."
}


Optional Parameters:
{
  "ForceUnsubscribeAll": "A Boolean value that can be used to delete all associations with this SNS topic. The default value is FALSE. If set to TRUE, all associations between that target and every notification rule in your AWS account are deleted."
}

"""

DeleteTarget(args) = codestar_notifications("POST", "/deleteTarget", args)
"""
    DeleteNotificationRule

Deletes a notification rule for a resource.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule you want to delete."
}


Optional Parameters:
{}

"""

DeleteNotificationRule(args) = codestar_notifications("POST", "/deleteNotificationRule", args)
"""
    CreateNotificationRule

Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.

Required Parameters:
{
  "DetailType": "The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.",
  "Resource": "The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline, repositories in AWS CodeCommit, and build projects in AWS CodeBuild.",
  "Targets": "A list of Amazon Resource Names (ARNs) of SNS topics to associate with the notification rule.",
  "Name": "The name for the notification rule. Notifictaion rule names must be unique in your AWS account.",
  "EventTypeIds": "A list of event types associated with this notification rule. For a list of allowed events, see EventTypeSummary."
}


Optional Parameters:
{
  "ClientRequestToken": "A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request with the same parameters is received and a token is included, the request returns information about the initial request that used that token.  The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an idempotency token is created for you. ",
  "Tags": "A list of tags to apply to this notification rule. Key names cannot start with \"aws\". ",
  "Status": "The status of the notification rule. The default value is ENABLED. If the status is set to DISABLED, notifications aren't sent for the notification rule."
}

"""

CreateNotificationRule(args) = codestar_notifications("POST", "/createNotificationRule", args)
"""
    ListNotificationRules

Returns a list of the notification rules for an AWS account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.",
  "NextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "Filters": "The filters to use to return information by service or resource type. For valid values, see ListNotificationRulesFilter.  A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements. "
}

"""
ListNotificationRules() = codestar_notifications("POST", "/listNotificationRules")
ListNotificationRules(args) = codestar_notifications("POST", "/listNotificationRules", args)

"""
    TagResource

Associates a set of provided tags with a notification rule.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule to tag.",
  "Tags": "The list of tags to associate with the resource. Tag key names cannot start with \"aws\"."
}


Optional Parameters:
{}

"""

TagResource(args) = codestar_notifications("POST", "/tagResource", args)
"""
    UntagResource

Removes the association between one or more provided tags and a notification rule.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule from which to remove the tags.",
  "TagKeys": "The key names of the tags to remove."
}


Optional Parameters:
{}

"""

UntagResource(args) = codestar_notifications("POST", "/untagResource", args)
"""
    Subscribe

Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.",
  "Target": ""
}


Optional Parameters:
{
  "ClientRequestToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}

"""

Subscribe(args) = codestar_notifications("POST", "/subscribe", args)
"""
    UpdateNotificationRule

Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource. 

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule."
}


Optional Parameters:
{
  "DetailType": "The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.",
  "Status": "The status of the notification rule. Valid statuses include enabled (sending notifications) or disabled (not sending notifications).",
  "Targets": "The address and type of the targets to receive notifications from this notification rule.",
  "Name": "The name of the notification rule.",
  "EventTypeIds": "A list of event types associated with this notification rule."
}

"""

UpdateNotificationRule(args) = codestar_notifications("POST", "/updateNotificationRule", args)
"""
    Unsubscribe

Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule.",
  "TargetAddress": "The ARN of the SNS topic to unsubscribe from the notification rule."
}


Optional Parameters:
{}

"""

Unsubscribe(args) = codestar_notifications("POST", "/unsubscribe", args)
"""
    DescribeNotificationRule

Returns information about a specified notification rule.

Required Parameters:
{
  "Arn": "The Amazon Resource Name (ARN) of the notification rule."
}


Optional Parameters:
{}

"""

DescribeNotificationRule(args) = codestar_notifications("POST", "/describeNotificationRule", args)
"""
    ListEventTypes

Returns information about the event types available for configuring notifications.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of results that can be returned is 100.",
  "NextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "Filters": "The filters to use to return information by service or resource type."
}

"""
ListEventTypes() = codestar_notifications("POST", "/listEventTypes")
ListEventTypes(args) = codestar_notifications("POST", "/listEventTypes", args)
