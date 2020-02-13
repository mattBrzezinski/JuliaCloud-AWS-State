include("../AWSCorePrototypeServices.jl")
using .Services: eventbridge

"""
    ListTagsForResource()

Displays the tags associated with an EventBridge resource. In EventBridge, rules can be tagged.

Required Parameters
{
  "ResourceARN": "The ARN of the rule for which you want to view tags."
}
"""
ListTagsForResource(args) = eventbridge("ListTagsForResource", args)

"""
    RemovePermission()

Revokes the permission of another AWS account to be able to put events to the specified event bus. Specify the account to revoke by the StatementId value that you associated with the account when you granted it permission with PutPermission. You can find the StatementId by using DescribeEventBus.

Required Parameters
{
  "StatementId": "The statement ID corresponding to the account that is no longer allowed to put events to the default event bus."
}

Optional Parameters
{
  "EventBusName": "The name of the event bus to revoke permissions for. If you omit this, the default event bus is used."
}
"""
RemovePermission(args) = eventbridge("RemovePermission", args)

"""
    ListPartnerEventSources()

An SaaS partner can use this operation to list all the partner event source names that they have created.  This operation is not used by AWS customers. 

Required Parameters
{
  "NamePrefix": "If you specify this, the results are limited to only those partner event sources that start with the string you specify."
}

Optional Parameters
{
  "NextToken": "The token returned by a previous call to this operation. Specifying this retrieves the next set of results.",
  "Limit": "pecifying this limits the number of results returned by this operation. The operation also returns a NextToken that you can use in a subsequent operation to retrieve the next set of results."
}
"""
ListPartnerEventSources(args) = eventbridge("ListPartnerEventSources", args)

"""
    DescribeEventSource()

This operation lists details about a partner event source that is shared with your account.  This operation is run by AWS customers, not by SaaS partners. 

Required Parameters
{
  "Name": "The name of the partner event source to display the details of."
}
"""
DescribeEventSource(args) = eventbridge("DescribeEventSource", args)

"""
    ListPartnerEventSourceAccounts()

An SaaS partner can use this operation to display the AWS account ID that a particular partner event source name is associated with.  This operation is used by SaaS partners, not by AWS customers. 

Required Parameters
{
  "EventSourceName": "The name of the partner event source to display account information about."
}

Optional Parameters
{
  "NextToken": "The token returned by a previous call to this operation. Specifying this retrieves the next set of results.",
  "Limit": "Specifying this limits the number of results returned by this operation. The operation also returns a NextToken that you can use in a subsequent operation to retrieve the next set of results."
}
"""
ListPartnerEventSourceAccounts(args) = eventbridge("ListPartnerEventSourceAccounts", args)

"""
    CreateEventBus()

Creates a new event bus within your account. This can be a custom event bus which you can use to receive events from your own custom applications and services, or it can be a partner event bus which can be matched to a partner event source.  This operation is used by AWS customers, not by SaaS partners. 

Required Parameters
{
  "Name": "The name of the new event bus.  The names of custom event buses can't contain the / character. You can't use the name default for a custom event bus because this name is already used for your account's default event bus. If this is a partner event bus, the name must exactly match the name of the partner event source that this event bus is matched to. This name will include the / character."
}

Optional Parameters
{
  "EventSourceName": "If you're creating a partner event bus, this specifies the partner event source that the new event bus will be matched with."
}
"""
CreateEventBus(args) = eventbridge("CreateEventBus", args)

"""
    PutPartnerEvents()

This is used by SaaS partners to write events to a customer's partner event bus.  AWS customers do not use this operation. Instead, AWS customers can use PutEvents to write custom events from their own applications to an event bus. 

Required Parameters
{
  "Entries": "The list of events to write to the event bus."
}
"""
PutPartnerEvents(args) = eventbridge("PutPartnerEvents", args)

"""
    CreatePartnerEventSource()

Called by an SaaS partner to create a partner event source.  This operation is not used by AWS customers.  Each partner event source can be used by one AWS account to create a matching partner event bus in that AWS account. A SaaS partner must create one partner event source for each AWS account that wants to receive those event types.  A partner event source creates events based on resources in the SaaS partner's service or application. An AWS account that creates a partner event bus that matches the partner event source can use that event bus to receive events from the partner, and then process them using AWS Events rules and targets. Partner event source names follow this format:  aws.partner/partner_name/event_namespace/event_name      partner_name is determined during partner registration and identifies the partner to AWS customers.   For event_namespace, we recommend that partners use a string that identifies the AWS customer within the partner's system. This should not be the customer's AWS account ID.    event_name is determined by the partner, and should uniquely identify an event-generating resource within the partner system. This should help AWS customers decide whether to create an event bus to receive these events.  

Required Parameters
{
  "Name": "The name of the partner event source. This name must be unique and must be in the format  partner_name/event_namespace/event_name . The AWS account that wants to use this partner event source must create a partner event bus with a name that matches the name of the partner event source.",
  "Account": "The AWS account ID of the customer who is permitted to create a matching partner event bus for this partner event source."
}
"""
CreatePartnerEventSource(args) = eventbridge("CreatePartnerEventSource", args)

"""
    DescribeRule()

Describes the specified rule.  DescribeRule doesn't list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.

Required Parameters
{
  "Name": "The name of the rule."
}

Optional Parameters
{
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used."
}
"""
DescribeRule(args) = eventbridge("DescribeRule", args)

"""
    EnableRule()

Enables the specified rule. If the rule doesn't exist, the operation fails. When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.

Required Parameters
{
  "Name": "The name of the rule."
}

Optional Parameters
{
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used."
}
"""
EnableRule(args) = eventbridge("EnableRule", args)

"""
    DeleteEventBus()

Deletes the specified custom event bus or partner event bus. All rules associated with this event bus are also deleted. You can't delete your account's default event bus.  This operation is performed by AWS customers, not by SaaS partners. 

Required Parameters
{
  "Name": "The name of the event bus to delete."
}
"""
DeleteEventBus(args) = eventbridge("DeleteEventBus", args)

"""
    ListEventBuses()

Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.  This operation is run by AWS customers, not by SaaS partners. 

Optional Parameters
{
  "NextToken": "The token returned by a previous call to retrieve the next set of results.",
  "Limit": "Specifying this limits the number of results returned by this operation. The operation also returns a NextToken that you can use in a subsequent operation to retrieve the next set of results.",
  "NamePrefix": "Specifying this limits the results to only those event buses with names that start with the specified prefix."
}
"""
ListEventBuses() = eventbridge("ListEventBuses")
ListEventBuses(args) = eventbridge("ListEventBuses", args)

"""
    ListRuleNamesByTarget()

Lists the rules for the specified target. You can see which rules can invoke a specific target in your account.

Required Parameters
{
  "TargetArn": "The Amazon Resource Name (ARN) of the target resource."
}

Optional Parameters
{
  "NextToken": "The token returned by a previous call to retrieve the next set of results.",
  "EventBusName": "Limits the results to show only the rules associated with the specified event bus.",
  "Limit": "The maximum number of results to return."
}
"""
ListRuleNamesByTarget(args) = eventbridge("ListRuleNamesByTarget", args)

"""
    DeletePartnerEventSource()

This operation is used by SaaS partners to delete a partner event source. AWS customers don't use this operation. When you delete an event source, the status of the corresponding partner event bus in the AWS customer account becomes DELETED.

Required Parameters
{
  "Name": "The name of the event source to delete.",
  "Account": "The AWS account ID of the AWS customer that the event source was created for."
}
"""
DeletePartnerEventSource(args) = eventbridge("DeletePartnerEventSource", args)

"""
    PutTargets()

Adds the specified targets to the specified rule, or updates the targets if they're already associated with the rule. Targets are the resources that are invoked when a rule is triggered. You can configure the following as targets in EventBridge:   EC2 instances   SSM Run Command   SSM Automation   AWS Lambda functions   Data streams in Amazon Kinesis Data Streams   Data delivery streams in Amazon Kinesis Data Firehose   Amazon ECS tasks   AWS Step Functions state machines   AWS Batch jobs   AWS CodeBuild projects   Pipelines in AWS CodePipeline   Amazon Inspector assessment templates   Amazon SNS topics   Amazon SQS queues, including FIFO queues   The default event bus of another AWS account   Creating rules with built-in targets is supported only on the AWS Management Console. The built-in targets are EC2 CreateSnapshot API call, EC2 RebootInstances API call, EC2 StopInstances API call, and EC2 TerminateInstances API call.  For some target types, PutTargets provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the KinesisParameters argument. To invoke a command on multiple EC2 instances with one rule, you can use the RunCommandParameters field. To be able to make API calls against the resources that you own, Amazon EventBridge needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis data streams, and AWS Step Functions state machines, EventBridge relies on IAM roles that you specify in the RoleARN argument in PutTargets. For more information, see Authentication and Access Control in the Amazon EventBridge User Guide. If another AWS account is in the same Region and has granted you permission (using PutPermission), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the Arn value when you run PutTargets. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event isn't charged. For more information, see Amazon EventBridge Pricing. If you're setting an event bus in another account as the target and that account granted permission to your account through an organization instead of directly by the account ID, you must specify a RoleArn with proper permissions in the Target structure. For more information, see Sending and Receiving Events Between AWS Accounts in the Amazon EventBridge User Guide. For more information about enabling cross-account events, see PutPermission.  Input, InputPath, and InputTransformer are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:   If none of the following arguments are specified for a target, the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).   If Input is specified in the form of valid JSON, then the matched event is overridden with this constant.   If InputPath is specified in the form of JSONPath (for example,  .detail), only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).   If InputTransformer is specified, one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.   When you specify InputPath or InputTransformer, you must use JSON dot notation, not bracket notation. When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is nonzero in the response, and each entry in FailedEntries provides the ID of the failed target and the error code.

Required Parameters
{
  "Rule": "The name of the rule.",
  "Targets": "The targets to update or add to the rule."
}

Optional Parameters
{
  "EventBusName": "The name of the event bus associated with the rule. If you omit this, the default event bus is used."
}
"""
PutTargets(args) = eventbridge("PutTargets", args)

"""
    TestEventPattern()

Tests whether the specified event pattern matches the provided event. Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event that you want to match.

Required Parameters
{
  "EventPattern": "The event pattern. For more information, see Event Patterns in the Amazon EventBridge User Guide.",
  "Event": "The event, in JSON format, to test against the event pattern."
}
"""
TestEventPattern(args) = eventbridge("TestEventPattern", args)

"""
    DescribeEventBus()

Displays details about an event bus in your account. This can include the external AWS accounts that are permitted to write events to your default event bus, and the associated policy. For custom event buses and partner event buses, it displays the name, ARN, policy, state, and creation time.  To enable your account to receive events from other accounts on its default event bus, use PutPermission. For more information about partner event buses, see CreateEventBus.

Optional Parameters
{
  "Name": "The name of the event bus to show details for. If you omit this, the default event bus is displayed."
}
"""
DescribeEventBus() = eventbridge("DescribeEventBus")
DescribeEventBus(args) = eventbridge("DescribeEventBus", args)

"""
    PutEvents()

Sends custom events to EventBridge so that they can be matched to rules. These events can be from your custom applications and services.

Required Parameters
{
  "Entries": "The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on."
}
"""
PutEvents(args) = eventbridge("PutEvents", args)

"""
    TagResource()

Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In EventBridge, rules can be tagged. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a rule that already has tags. If you specify a new tag key for the rule, this tag is appended to the list of tags associated with the rule. If you specify a tag key that is already associated with the rule, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.

Required Parameters
{
  "ResourceARN": "The ARN of the rule that you're adding tags to.",
  "Tags": "The list of key-value pairs to associate with the rule."
}
"""
TagResource(args) = eventbridge("TagResource", args)

"""
    ListRules()

Lists your EventBridge rules. You can either list all the rules or provide a prefix to match to the rule names.  ListRules doesn't list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.

Optional Parameters
{
  "NextToken": "The token returned by a previous call to retrieve the next set of results.",
  "EventBusName": "Limits the results to show only the rules associated with the specified event bus.",
  "Limit": "The maximum number of results to return.",
  "NamePrefix": "The prefix matching the rule name."
}
"""
ListRules() = eventbridge("ListRules")
ListRules(args) = eventbridge("ListRules", args)

"""
    PutRule()

Creates or updates the specified rule. Rules are enabled by default or based on value of the state. You can disable a rule using DisableRule. A single rule watches for events from a single event bus. Events generated by AWS services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see CreateEventBus. If you're updating an existing rule, the rule is replaced with what you specify in this PutRule command. If you omit arguments in PutRule, the old values for those arguments aren't kept. Instead, they're replaced with null values. When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect. A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule. When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the PutRule operation and assign tags, you must have both the events:PutRule and events:TagResource permissions. If you are updating an existing rule, any tags you specify in the PutRule operation are ignored. To update the tags of an existing rule, use TagResource and UntagResource. Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event that you want to match. In EventBridge, you could create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If you don't write the rule carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop. To prevent this, write the rules so that the triggered actions don't refire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change.  An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see Managing Your Costs with Budgets.

Required Parameters
{
  "Name": "The name of the rule that you're creating or updating. A rule can't have the same name as another rule in the same Region or on the same event bus."
}

Optional Parameters
{
  "EventPattern": "The event pattern. For more information, see Event Patterns in the Amazon EventBridge User Guide.",
  "Description": "A description of the rule.",
  "ScheduleExpression": "The scheduling expression: for example, \"cron(0 20 * * ? *)\" or \"rate(5 minutes)\".",
  "Tags": "The list of key-value pairs to associate with the rule.",
  "State": "Indicates whether the rule is enabled or disabled.",
  "EventBusName": "The event bus to associate with this rule. If you omit this, the default event bus is used.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role associated with the rule."
}
"""
PutRule(args) = eventbridge("PutRule", args)

"""
    UntagResource()

Removes one or more tags from the specified EventBridge resource. In EventBridge, rules can be tagged.

Required Parameters
{
  "ResourceARN": "The ARN of the rule that you're removing tags from.",
  "TagKeys": "The list of tag keys to remove from the resource."
}
"""
UntagResource(args) = eventbridge("UntagResource", args)

"""
    DisableRule()

Disables the specified rule. A disabled rule won't match any events and won't self-trigger if it has a schedule expression. When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.

Required Parameters
{
  "Name": "The name of the rule."
}

Optional Parameters
{
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used."
}
"""
DisableRule(args) = eventbridge("DisableRule", args)

"""
    PutPermission()

Running PutPermission permits the specified AWS account or AWS organization to put events to the specified event bus. Rules in your account are triggered by these events arriving to an event bus in your account.  For another account to send events to your account, that external account must have a rule with your account's event bus as a target. To enable multiple AWS accounts to put events to an event bus, run PutPermission once for each of these accounts. Or, if all the accounts are members of the same AWS organization, you can run PutPermission once specifying Principal as "*" and specifying the AWS organization ID in Condition, to grant permissions to all accounts in that organization. If you grant permissions using an organization, then accounts in that organization must specify a RoleArn with proper permissions when they use PutTarget to add your account's event bus as a target. For more information, see Sending and Receiving Events Between AWS Accounts in the Amazon EventBridge User Guide. The permission policy on an event bus can't exceed 10 KB in size.

Required Parameters
{
  "StatementId": "An identifier string for the external account that you're granting permissions to. If you later want to revoke the permission for this external account, specify this StatementId when you run RemovePermission.",
  "Principal": "The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify \"*\" to permit any account to put events to your default event bus. If you specify \"*\" without specifying Condition, avoid creating rules that might match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an account field with a specific account ID to receive events from. Rules that have an account field match events sent only from accounts that are listed in the rule's account field.",
  "Action": "The action that you're enabling the other account to perform. Currently, this must be events:PutEvents."
}

Optional Parameters
{
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used.",
  "Condition": "This parameter enables you to limit the permission to accounts that fulfill a certain condition, such as being a member of a certain AWS organization. For more information about AWS Organizations, see What Is AWS Organizations? in the AWS Organizations User Guide. If you specify Condition with an AWS organization ID and specify \"*\" as the value for Principal, you grant permission to all the accounts in the named organization. The Condition is a JSON string that must contain Type, Key, and Value fields."
}
"""
PutPermission(args) = eventbridge("PutPermission", args)

"""
    DescribePartnerEventSource()

An SaaS partner can use this operation to list details about a partner event source that they have created.  AWS customers do not use this operation. Instead, AWS customers can use DescribeEventSource to see details about a partner event source that is shared with them. 

Required Parameters
{
  "Name": "The name of the event source to display."
}
"""
DescribePartnerEventSource(args) = eventbridge("DescribePartnerEventSource", args)

"""
    DeleteRule()

Deletes the specified rule. Before you can delete the rule, you must remove all targets, using RemoveTargets. When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect. Managed rules are rules created and managed by another AWS service on your behalf. These rules are created by those other AWS services to support functionality in those services. You can delete these rules using the Force option, but you should do so only if you're sure that the other service isn't still using that rule.

Required Parameters
{
  "Name": "The name of the rule."
}

Optional Parameters
{
  "Force": "If this is a managed rule, created by an AWS service on your behalf, you must specify Force as True to delete the rule. This parameter is ignored for rules that are not managed rules. You can check whether a rule is a managed rule by using DescribeRule or ListRules and checking the ManagedBy field of the response.",
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used."
}
"""
DeleteRule(args) = eventbridge("DeleteRule", args)

"""
    RemoveTargets()

Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked. When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect. This action can partially fail if too many requests are made at the same time. If that happens, FailedEntryCount is non-zero in the response and each entry in FailedEntries provides the ID of the failed target and the error code.

Required Parameters
{
  "Ids": "The IDs of the targets to remove from the rule.",
  "Rule": "The name of the rule."
}

Optional Parameters
{
  "Force": "If this is a managed rule created by an AWS service on your behalf, you must specify Force as True to remove targets. This parameter is ignored for rules that aren't managed rules. You can check whether a rule is a managed rule by using DescribeRule or ListRules and checking the ManagedBy field of the response.",
  "EventBusName": "The name of the event bus associated with the rule."
}
"""
RemoveTargets(args) = eventbridge("RemoveTargets", args)

"""
    DeactivateEventSource()

An AWS customer uses this operation to temporarily stop receiving events from the specified partner event source. The matching event bus isn't deleted.  When you deactivate a partner event source, the source goes into PENDING state. If it remains in PENDING state for more than two weeks, it's deleted. To activate a deactivated partner event source, use ActivateEventSource.

Required Parameters
{
  "Name": "The name of the partner event source to deactivate."
}
"""
DeactivateEventSource(args) = eventbridge("DeactivateEventSource", args)

"""
    ListEventSources()

You can use this to see all the partner event sources that have been shared with your AWS account. For more information about partner event sources, see CreateEventBus.  This operation is run by AWS customers, not by SaaS partners. 

Optional Parameters
{
  "NextToken": "The token returned by a previous call to retrieve the next set of results.",
  "Limit": "Specifying this limits the number of results returned by this operation. The operation also returns a NextToken that you can use in a subsequent operation to retrieve the next set of results.",
  "NamePrefix": "Specifying this limits the results to only those partner event sources with names that start with the specified prefix."
}
"""
ListEventSources() = eventbridge("ListEventSources")
ListEventSources(args) = eventbridge("ListEventSources", args)

"""
    ActivateEventSource()

Activates a partner event source that has been deactivated. Once activated, your matching event bus will start receiving events from the event source.  This operation is performed by AWS customers, not by SaaS partners. 

Required Parameters
{
  "Name": "The name of the partner event source to activate."
}
"""
ActivateEventSource(args) = eventbridge("ActivateEventSource", args)

"""
    ListTargetsByRule()

Lists the targets assigned to the specified rule.

Required Parameters
{
  "Rule": "The name of the rule."
}

Optional Parameters
{
  "NextToken": "The token returned by a previous call to retrieve the next set of results.",
  "EventBusName": "The event bus associated with the rule. If you omit this, the default event bus is used.",
  "Limit": "The maximum number of results to return."
}
"""
ListTargetsByRule(args) = eventbridge("ListTargetsByRule", args)
