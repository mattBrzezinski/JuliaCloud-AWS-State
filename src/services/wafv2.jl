include("../AWSCorePrototypeServices.jl")
using .Services: wafv2

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the TagInfoForResource for the specified resource. 

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = wafv2("ListTagsForResource", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified WebACL.

Required Parameters:
Name, Scope, Id, LockToken
"""
DeleteWebACL(args) = wafv2("DeleteWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RuleGroup.

Required Parameters:
Name, Scope, Id
"""
GetRuleGroup(args) = wafv2("GetRuleGroup", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates an IPSet, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses. For example, if you're receiving a lot of requests from a ranges of IP addresses, you can configure AWS WAF to block them using an IPSet that lists those IP addresses. 

Required Parameters:
Name, Scope, IPAddressVersion, Addresses
"""
CreateIPSet(args) = wafv2("CreateIPSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified WebACL.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 

Required Parameters:
Name, Scope, Id, DefaultAction, VisibilityConfig, LockToken
"""
UpdateWebACL(args) = wafv2("UpdateWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a WebACL per the specifications provided.  A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types Rule, RuleGroup, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. 

Required Parameters:
Name, Scope, DefaultAction, VisibilityConfig
"""
CreateWebACL(args) = wafv2("CreateWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates a Web ACL from a regional application resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can disassociate the Web ACL by providing an empty WebACLId in the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.

Required Parameters:
ResourceArn
"""
DisassociateWebACL(args) = wafv2("DisassociateWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.  GetSampledRequests returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, GetSampledRequests returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.

Required Parameters:
WebAclArn, RuleMetricName, Scope, TimeWindow, MaxItems
"""
GetSampledRequests(args) = wafv2("GetSampledRequests", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RegexPatternSet per the specifications provided.

Required Parameters:
Name, Scope, RegularExpressionList
"""
CreateRegexPatternSet(args) = wafv2("CreateRegexPatternSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the LoggingConfiguration for the specified web ACL.

Required Parameters:
ResourceArn
"""
GetLoggingConfiguration(args) = wafv2("GetLoggingConfiguration", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the LoggingConfiguration from the specified web ACL.

Required Parameters:
ResourceArn
"""
DeleteLoggingConfiguration(args) = wafv2("DeleteLoggingConfiguration", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified RegexPatternSet.

Required Parameters:
Name, Scope, Id
"""
GetRegexPatternSet(args) = wafv2("GetRegexPatternSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of IPSetSummary objects for the IP sets that you manage.

Required Parameters:
Scope
"""
ListIPSets(args) = wafv2("ListIPSets", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Provides high-level information for a managed rule group, including descriptions of the rules. 

Required Parameters:
VendorName, Name, Scope
"""
DescribeManagedRuleGroup(args) = wafv2("DescribeManagedRuleGroup", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified IPSet.

Required Parameters:
Name, Scope, Id, Addresses, LockToken
"""
UpdateIPSet(args) = wafv2("UpdateIPSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of managed rule groups that are available for you to use. This list includes all AWS managed rule groups and the AWS Marketplace managed rule groups that you're subscribed to.

Required Parameters:
Scope
"""
ListAvailableManagedRuleGroups(args) = wafv2("ListAvailableManagedRuleGroups", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. You can use this to check the capacity requirements for the rules you want to use in a RuleGroup or WebACL.  AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. 

Required Parameters:
Scope, Rules
"""
CheckCapacity(args) = wafv2("CheckCapacity", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the keys that are currently blocked by a rate-based rule. The maximum number of managed keys that can be blocked for a single rate-based rule is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.

Required Parameters:
Scope, WebACLName, WebACLId, RuleName
"""
GetRateBasedStatementManagedKeys(args) = wafv2("GetRateBasedStatementManagedKeys", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RegexPatternSet.

Required Parameters:
Name, Scope, Id, RegularExpressionList, LockToken
"""
UpdateRegexPatternSet(args) = wafv2("UpdateRegexPatternSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates tags with the specified AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = wafv2("TagResource", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Disassociates tags from an AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = wafv2("UntagResource", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Enables the specified LoggingConfiguration, to start logging from a web ACL, according to the configuration provided. You can access information about all traffic that AWS WAF inspects using the following steps:   Create an Amazon Kinesis Data Firehose.  Create the data firehose with a PUT source and in the region that you are operating. If you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia).   Do not create the data firehose using a Kinesis stream as your source.    Associate that firehose to your web ACL using a PutLoggingConfiguration request.   When you successfully enable logging using a PutLoggingConfiguration request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see Logging Web ACL Traffic Information in the AWS WAF Developer Guide.

Required Parameters:
LoggingConfiguration
"""
PutLoggingConfiguration(args) = wafv2("PutLoggingConfiguration", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RegexPatternSet.

Required Parameters:
Name, Scope, Id, LockToken
"""
DeleteRegexPatternSet(args) = wafv2("DeleteRegexPatternSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RuleGroupSummary objects for the rule groups that you manage. 

Required Parameters:
Scope
"""
ListRuleGroups(args) = wafv2("ListRuleGroups", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the WebACL for the specified resource. 

Required Parameters:
ResourceArn
"""
GetWebACLForResource(args) = wafv2("GetWebACLForResource", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Updates the specified RuleGroup.  A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 

Required Parameters:
Name, Scope, Id, VisibilityConfig, LockToken
"""
UpdateRuleGroup(args) = wafv2("UpdateRuleGroup", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified IPSet.

Required Parameters:
Name, Scope, Id
"""
GetIPSet(args) = wafv2("GetIPSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Creates a RuleGroup per the specifications provided.   A rule group defines a collection of rules to inspect and control web requests that you can use in a WebACL. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. 

Required Parameters:
Name, Scope, Capacity, VisibilityConfig
"""
CreateRuleGroup(args) = wafv2("CreateRuleGroup", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified IPSet. 

Required Parameters:
Name, Scope, Id, LockToken
"""
DeleteIPSet(args) = wafv2("DeleteIPSet", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of RegexPatternSetSummary objects for the regex pattern sets that you manage.

Required Parameters:
Scope
"""
ListRegexPatternSets(args) = wafv2("ListRegexPatternSets", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL. If you want the list of AWS CloudFront resources, use the AWS CloudFront call ListDistributionsByWebACLId. 

Required Parameters:
WebACLArn
"""
ListResourcesForWebACL(args) = wafv2("ListResourcesForWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Deletes the specified RuleGroup.

Required Parameters:
Name, Scope, Id, LockToken
"""
DeleteRuleGroup(args) = wafv2("DeleteRuleGroup", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of WebACLSummary objects for the web ACLs that you manage.

Required Parameters:
Scope
"""
ListWebACLs(args) = wafv2("ListWebACLs", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves an array of your LoggingConfiguration objects.
"""
ListLoggingConfigurations() = wafv2("ListLoggingConfigurations")

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Retrieves the specified WebACL.

Required Parameters:
Name, Scope, Id
"""
GetWebACL(args) = wafv2("GetWebACL", args)

"""
 This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide.   Associates a Web ACL with a regional application resource, to protect the resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage.  For AWS CloudFront, you can associate the Web ACL by providing the Id of the WebACL to the CloudFront API call UpdateDistribution. For information, see UpdateDistribution.

Required Parameters:
WebACLArn, ResourceArn
"""
AssociateWebACL(args) = wafv2("AssociateWebACL", args)
