include("../AWSCorePrototypeServices.jl")
using .Services: wafv2

"""
    ListTagsForResource()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the TagInfoForResource for the specified resource. 

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the resource."
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListTagsForResource(args) = wafv2("ListTagsForResource", args)

"""
    DeleteWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified WebACL.

Required Parameters
{
  "Id": "The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the Web ACL. You cannot change the name of a Web ACL after you create it."
}
"""
DeleteWebACL(args) = wafv2("DeleteWebACL", args)

"""
    GetRuleGroup()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RuleGroup.

Required Parameters
{
  "Id": "A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the rule group. You cannot change the name of a rule group after you create it."
}
"""
GetRuleGroup(args) = wafv2("GetRuleGroup", args)

"""
    CreateIPSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses. For example, if you're receiving a lot of requests from a ranges of IP addresses, you can configure AWS WAF to block them using an IPSet that lists those IP addresses. 

Required Parameters
{
  "Addresses": "Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6.  Examples:    To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify 192.0.2.44/32.   To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 192.0.2.0/24.   To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify 1111:0000:0000:0000:0000:0000:0000:0111/128.   To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify 1111:0000:0000:0000:0000:0000:0000:0000/64.   For more information about CIDR notation, see the Wikipedia entry Classless Inter-Domain Routing.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "IPAddressVersion": "Specify IPV4 or IPV6. ",
  "Name": "A friendly name of the IP set. You cannot change the name of an IPSet after you create it."
}

Optional Parameters
{
  "Description": "A friendly description of the IP set. You cannot change the description of an IP set after you create it.",
  "Tags": "An array of key:value pairs to associate with the resource."
}
"""
CreateIPSet(args) = wafv2("CreateIPSet", args)

"""
    UpdateWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified WebACL.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 

Required Parameters
{
  "Id": "The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "DefaultAction": "The action to perform if none of the Rules contained in the WebACL match. ",
  "VisibilityConfig": "Defines and enables Amazon CloudWatch metrics and web request sample collection. ",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the Web ACL. You cannot change the name of a Web ACL after you create it."
}

Optional Parameters
{
  "Description": "A friendly description of the Web ACL. You cannot change the description of a Web ACL after you create it.",
  "Rules": "The Rule statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. "
}
"""
UpdateWebACL(args) = wafv2("UpdateWebACL", args)

"""
    CreateWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a WebACL per the specifications provided.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 

Required Parameters
{
  "DefaultAction": "The action to perform if none of the Rules contained in the WebACL match. ",
  "VisibilityConfig": "Defines and enables Amazon CloudWatch metrics and web request sample collection. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the Web ACL. You cannot change the name of a Web ACL after you create it."
}

Optional Parameters
{
  "Description": "A friendly description of the Web ACL. You cannot change the description of a Web ACL after you create it.",
  "Rules": "The Rule statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. ",
  "Tags": "An array of key:value pairs to associate with the resource."
}
"""
CreateWebACL(args) = wafv2("CreateWebACL", args)

"""
    DisassociateWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates a Web ACL from a regional application resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can disassociate the Web ACL by providing an empty WebACLId in the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL.  The ARN must be in one of the following formats:   For a CloudFront distribution: arn:aws:cloudfront::account-id:distribution/distribution-id     For an Application Load Balancer: arn:aws:elasticloadbalancing: region:account-id:loadbalancer/app/load-balancer-name /load-balancer-id     For an Amazon API Gateway stage: arn:aws:apigateway:region ::/restapis/api-id/stages/stage-name    "
}
"""
DisassociateWebACL(args) = wafv2("DisassociateWebACL", args)

"""
    GetSampledRequests()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.  GetSampledRequests returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, GetSampledRequests returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.

Required Parameters
{
  "RuleMetricName": "The metric name assigned to the Rule or RuleGroup for which you want a sample of requests.",
  "MaxItems": "The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of MaxItems, GetSampledRequests returns information about all of them. ",
  "WebAclArn": "The Amazon resource name (ARN) of the WebACL for which you want a sample of requests.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "TimeWindow": "The start date and time and the end date and time of the range for which you want GetSampledRequests to return a sample of requests. Specify the date and time in the following format: \"2016-09-27T14:50Z\". You can specify any time range in the previous three hours."
}
"""
GetSampledRequests(args) = wafv2("GetSampledRequests", args)

"""
    CreateRegexPatternSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RegexPatternSet per the specifications provided.

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "RegularExpressionList": "Array of regular expression strings. ",
  "Name": "A friendly name of the set. You cannot change the name after you create the set."
}

Optional Parameters
{
  "Description": "A friendly description of the set. You cannot change the description of a set after you create it.",
  "Tags": "An array of key:value pairs to associate with the resource."
}
"""
CreateRegexPatternSet(args) = wafv2("CreateRegexPatternSet", args)

"""
    GetLoggingConfiguration()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the LoggingConfiguration for the specified web ACL.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the web ACL for which you want to get the LoggingConfiguration."
}
"""
GetLoggingConfiguration(args) = wafv2("GetLoggingConfiguration", args)

"""
    DeleteLoggingConfiguration()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the LoggingConfiguration from the specified web ACL.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the web ACL from which you want to delete the LoggingConfiguration."
}
"""
DeleteLoggingConfiguration(args) = wafv2("DeleteLoggingConfiguration", args)

"""
    GetRegexPatternSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RegexPatternSet.

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the set. You cannot change the name after you create the set."
}
"""
GetRegexPatternSet(args) = wafv2("GetRegexPatternSet", args)

"""
    ListIPSets()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of IPSetSummary objects for the IP sets that you manage.

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListIPSets(args) = wafv2("ListIPSets", args)

"""
    DescribeManagedRuleGroup()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Provides high-level information for a managed rule group, including descriptions of the rules. 

Required Parameters
{
  "VendorName": "The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "The name of the managed rule group. You use this, along with the vendor name, to identify the rule group."
}
"""
DescribeManagedRuleGroup(args) = wafv2("DescribeManagedRuleGroup", args)

"""
    UpdateIPSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified IPSet.

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "Addresses": "Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6.  Examples:    To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify 192.0.2.44/32.   To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 192.0.2.0/24.   To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify 1111:0000:0000:0000:0000:0000:0000:0111/128.   To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify 1111:0000:0000:0000:0000:0000:0000:0000/64.   For more information about CIDR notation, see the Wikipedia entry Classless Inter-Domain Routing.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the IP set. You cannot change the name of an IPSet after you create it."
}

Optional Parameters
{
  "Description": "A friendly description of the IP set. You cannot change the description of an IP set after you create it."
}
"""
UpdateIPSet(args) = wafv2("UpdateIPSet", args)

"""
    ListAvailableManagedRuleGroups()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of managed rule groups that are available for you to use. This list includes all AWS managed rule groups and the AWS Marketplace managed rule groups that you're subscribed to.

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListAvailableManagedRuleGroups(args) = wafv2("ListAvailableManagedRuleGroups", args)

"""
    CheckCapacity()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. You can use this to check the capacity requirements for the rules you want to use in a RuleGroup or WebACL.  AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. 

Required Parameters
{
  "Rules": "An array of Rule that you're configuring to use in a rule group or web ACL. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}
"""
CheckCapacity(args) = wafv2("CheckCapacity", args)

"""
    GetRateBasedStatementManagedKeys()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the keys that are currently blocked by a rate-based rule. The maximum number of managed keys that can be blocked for a single rate-based rule is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.

Required Parameters
{
  "RuleName": "The name of the rate-based rule to get the keys for.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "WebACLId": "The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "WebACLName": "A friendly name of the Web ACL. You cannot change the name of a Web ACL after you create it."
}
"""
GetRateBasedStatementManagedKeys(args) = wafv2("GetRateBasedStatementManagedKeys", args)

"""
    UpdateRegexPatternSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RegexPatternSet.

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "RegularExpressionList": "",
  "Name": "A friendly name of the set. You cannot change the name after you create the set."
}

Optional Parameters
{
  "Description": "A friendly description of the set. You cannot change the description of a set after you create it."
}
"""
UpdateRegexPatternSet(args) = wafv2("UpdateRegexPatternSet", args)

"""
    TagResource()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates tags with the specified AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the resource.",
  "Tags": "An array of key:value pairs to associate with the resource."
}
"""
TagResource(args) = wafv2("TagResource", args)

"""
    UntagResource()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates tags from an AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the resource.",
  "TagKeys": "An array of keys identifying the tags to disassociate from the resource."
}
"""
UntagResource(args) = wafv2("UntagResource", args)

"""
    PutLoggingConfiguration()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided. You can access information about all traffic that AWS WAF inspects using the following steps:   Create an Amazon Kinesis Data Firehose.  Create the data firehose with a PUT source and in the region that you are operating. If you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia).   Do not create the data firehose using a Kinesis stream as your source.    Associate that firehose to your web ACL using a PutLoggingConfiguration request.   When you successfully enable logging using a PutLoggingConfiguration request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see Logging Web ACL Traffic Information in the AWS WAF Developer Guide.

Required Parameters
{
  "LoggingConfiguration": ""
}
"""
PutLoggingConfiguration(args) = wafv2("PutLoggingConfiguration", args)

"""
    DeleteRegexPatternSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RegexPatternSet.

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the set. You cannot change the name after you create the set."
}
"""
DeleteRegexPatternSet(args) = wafv2("DeleteRegexPatternSet", args)

"""
    ListRuleGroups()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RuleGroupSummary objects for the rule groups that you manage. 

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListRuleGroups(args) = wafv2("ListRuleGroups", args)

"""
    GetWebACLForResource()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the WebACL for the specified resource. 

Required Parameters
{
  "ResourceArn": "The ARN (Amazon Resource Name) of the resource."
}
"""
GetWebACLForResource(args) = wafv2("GetWebACLForResource", args)

"""
    UpdateRuleGroup()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RuleGroup.  A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 

Required Parameters
{
  "Id": "A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "VisibilityConfig": "Defines and enables Amazon CloudWatch metrics and web request sample collection. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the rule group. You cannot change the name of a rule group after you create it."
}

Optional Parameters
{
  "Description": "A friendly description of the rule group. You cannot change the description of a rule group after you create it.",
  "Rules": "The Rule statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. "
}
"""
UpdateRuleGroup(args) = wafv2("UpdateRuleGroup", args)

"""
    GetIPSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified IPSet.

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the IP set. You cannot change the name of an IPSet after you create it."
}
"""
GetIPSet(args) = wafv2("GetIPSet", args)

"""
    CreateRuleGroup()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RuleGroup per the specifications provided.   A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 

Required Parameters
{
  "VisibilityConfig": "Defines and enables Amazon CloudWatch metrics and web request sample collection. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the rule group. You cannot change the name of a rule group after you create it.",
  "Capacity": "The web ACL capacity units (WCUs) required for this rule group. When you create your own rule group, you define this, and you cannot change it after creation. When you add or modify the rules in a rule group, AWS WAF enforces this limit. You can check the capacity for a set of rules using CheckCapacity. AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. "
}

Optional Parameters
{
  "Description": "A friendly description of the rule group. You cannot change the description of a rule group after you create it.",
  "Rules": "The Rule statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. ",
  "Tags": "An array of key:value pairs to associate with the resource."
}
"""
CreateRuleGroup(args) = wafv2("CreateRuleGroup", args)

"""
    DeleteIPSet()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified IPSet. 

Required Parameters
{
  "Id": "A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the IP set. You cannot change the name of an IPSet after you create it."
}
"""
DeleteIPSet(args) = wafv2("DeleteIPSet", args)

"""
    ListRegexPatternSets()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RegexPatternSetSummary objects for the regex pattern sets that you manage.

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListRegexPatternSets(args) = wafv2("ListRegexPatternSets", args)

"""
    ListResourcesForWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL. If you want the list of AWS CloudFront resources, use the AWS CloudFront call ListDistributionsByWebACLId. 

Required Parameters
{
  "WebACLArn": "The Amazon Resource Name (ARN) of the Web ACL."
}

Optional Parameters
{
  "ResourceType": "Used for web ACLs that are scoped for regional applications. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. "
}
"""
ListResourcesForWebACL(args) = wafv2("ListResourcesForWebACL", args)

"""
    DeleteRuleGroup()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RuleGroup.

Required Parameters
{
  "Id": "A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "LockToken": "A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a WAFOptimisticLockException. If this happens, perform another get, and use the new token returned by that operation. ",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the rule group. You cannot change the name of a rule group after you create it."
}
"""
DeleteRuleGroup(args) = wafv2("DeleteRuleGroup", args)

"""
    ListWebACLs()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of WebACLSummary objects for the web ACLs that you manage.

Required Parameters
{
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   "
}

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListWebACLs(args) = wafv2("ListWebACLs", args)

"""
    ListLoggingConfigurations()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of your LoggingConfiguration objects.

Optional Parameters
{
  "NextMarker": "When you request a list of objects with a Limit setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a NextMarker value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Limit": "The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a NextMarker value that you can use in a subsequent call to get the next batch of objects."
}
"""
ListLoggingConfigurations() = wafv2("ListLoggingConfigurations")
ListLoggingConfigurations(args) = wafv2("ListLoggingConfigurations", args)

"""
    GetWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified WebACL.

Required Parameters
{
  "Id": "The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.",
  "Scope": "Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows:    CLI - Specify the region when you use the CloudFront scope: --scope=CLOUDFRONT --region=us-east-1.    API and SDKs - For all calls, use the Region endpoint us-east-1.   ",
  "Name": "A friendly name of the Web ACL. You cannot change the name of a Web ACL after you create it."
}
"""
GetWebACL(args) = wafv2("GetWebACL", args)

"""
    AssociateWebACL()

 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates a Web ACL with a regional application resource, to protect the resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can associate the Web ACL by providing the Id of the WebACL to the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to associate with the web ACL.  The ARN must be in one of the following formats:   For a CloudFront distribution: arn:aws:cloudfront::account-id:distribution/distribution-id     For an Application Load Balancer: arn:aws:elasticloadbalancing: region:account-id:loadbalancer/app/load-balancer-name /load-balancer-id     For an Amazon API Gateway stage: arn:aws:apigateway:region ::/restapis/api-id/stages/stage-name    ",
  "WebACLArn": "The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource."
}
"""
AssociateWebACL(args) = wafv2("AssociateWebACL", args)
