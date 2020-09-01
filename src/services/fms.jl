include("../AWSCorePrototypeServices.jl")
using .Services: fms

"""
    ListTagsForResource()

Retrieves the list of tags for the specified AWS resource. 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. "
}
"""
ListTagsForResource(args) = fms("ListTagsForResource", args)

"""
    ListProtocolsLists()

Returns an array of ProtocolsListDataSummary objects.

Required Parameters
{
  "MaxResults": "The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a NextToken value that you can use in a subsequent call to get the next batch of objects. If you don't specify this, AWS Firewall Manager returns all available objects."
}

Optional Parameters
{
  "DefaultLists": "Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.",
  "NextToken": "If you specify a value for MaxResults in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects."
}
"""
ListProtocolsLists(args) = fms("ListProtocolsLists", args)

"""
    DeleteProtocolsList()

Permanently deletes an AWS Firewall Manager protocols list.

Required Parameters
{
  "ListId": "The ID of the protocols list that you want to delete. You can retrieve this ID from PutProtocolsList, ListProtocolsLists, and GetProtocolsLost."
}
"""
DeleteProtocolsList(args) = fms("DeleteProtocolsList", args)

"""
    AssociateAdminAccount()

Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account of your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account. The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. 

Required Parameters
{
  "AdminAccount": "The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see Managing the AWS Accounts in Your Organization. "
}
"""
AssociateAdminAccount(args) = fms("AssociateAdminAccount", args)

"""
    GetProtectionStatus()

If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.

Required Parameters
{
  "PolicyId": "The ID of the policy for which you want to get the attack information."
}

Optional Parameters
{
  "StartTime": "The start of the time period to query for the attacks. This is a timestamp type. The request syntax listing indicates a number type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid timestamp format is allowed.",
  "MaxResults": "Specifies the number of objects that you want AWS Firewall Manager to return for this request. If you have more objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of objects.",
  "NextToken": "If you specify a value for MaxResults and you have more objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response, which you can use to retrieve another group of objects. For the second and subsequent GetProtectionStatus requests, specify the value of NextToken from the previous response to get information about another batch of objects.",
  "EndTime": "The end of the time period to query for the attacks. This is a timestamp type. The request syntax listing indicates a number type because the default used by AWS Firewall Manager is Unix time in seconds. However, any valid timestamp format is allowed.",
  "MemberAccountId": "The AWS account that is in scope of the policy that you want to get the details for."
}
"""
GetProtectionStatus(args) = fms("GetProtectionStatus", args)

"""
    DisassociateAdminAccount()

Disassociates the account that has been set as the AWS Firewall Manager administrator account. To set a different account as the administrator account, you must submit an AssociateAdminAccount request.
"""

DisassociateAdminAccount() = fms("DisassociateAdminAccount")
DisassociateAdminAccount(args) = fms("DisassociateAdminAccount", args)

"""
    GetAdminAccount()

Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
"""

GetAdminAccount() = fms("GetAdminAccount")
GetAdminAccount(args) = fms("GetAdminAccount", args)

"""
    ListAppsLists()

Returns an array of AppsListDataSummary objects.

Required Parameters
{
  "MaxResults": "The maximum number of objects that you want AWS Firewall Manager to return for this request. If more objects are available, in the response, AWS Firewall Manager provides a NextToken value that you can use in a subsequent call to get the next batch of objects. If you don't specify this, AWS Firewall Manager returns all available objects."
}

Optional Parameters
{
  "DefaultLists": "Specifies whether the lists to retrieve are default lists owned by AWS Firewall Manager.",
  "NextToken": "If you specify a value for MaxResults in your list request, and you have more objects than the maximum, AWS Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request in the request parameters, to retrieve the next batch of objects."
}
"""
ListAppsLists(args) = fms("ListAppsLists", args)

"""
    ListMemberAccounts()

Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.

Optional Parameters
{
  "MaxResults": "Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of member account IDs.",
  "NextToken": "If you specify a value for MaxResults and you have more account IDs than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of IDs. For the second and subsequent ListMemberAccountsRequest requests, specify the value of NextToken from the previous response to get information about another batch of member account IDs."
}
"""

ListMemberAccounts() = fms("ListMemberAccounts")
ListMemberAccounts(args) = fms("ListMemberAccounts", args)

"""
    DeletePolicy()

Permanently deletes an AWS Firewall Manager policy. 

Required Parameters
{
  "PolicyId": "The ID of the policy that you want to delete. You can retrieve this ID from PutPolicy and ListPolicies."
}

Optional Parameters
{
  "DeleteAllPolicyResources": "If True, the request performs cleanup according to the policy type.  For AWS WAF and Shield Advanced policies, the cleanup does the following:   Deletes rule groups created by AWS Firewall Manager   Removes web ACLs from in-scope resources   Deletes web ACLs that contain no rules or rule groups   For security group policies, the cleanup does the following for each security group in the policy:   Disassociates the security group from in-scope resources    Deletes the security group if it was created through Firewall Manager and if it's no longer associated with any resources through another policy   After the cleanup, in-scope resources are no longer protected by web ACLs in this policy. Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you create and accounts that you associate with the policy. When creating the policy, if you specify that only resources in specific accounts or with specific tags are in scope of the policy, those accounts and resources are handled by the policy. All others are out of scope. If you don't specify tags or accounts, all resources are in scope. "
}
"""
DeletePolicy(args) = fms("DeletePolicy", args)

"""
    GetViolationDetails()

Retrieves violations for a resource based on the specified AWS Firewall Manager policy and AWS account.

Required Parameters
{
  "ResourceType": "The resource type. This is in the format shown in the AWS Resource Types Reference. Supported resource types are: AWS::EC2::Instance, AWS::EC2::NetworkInterface, or AWS::EC2::SecurityGroup. ",
  "PolicyId": "The ID of the AWS Firewall Manager policy that you want the details for. This currently only supports security group content audit policies.",
  "MemberAccount": "The AWS account ID that you want the details for.",
  "ResourceId": "The ID of the resource that has violations."
}
"""
GetViolationDetails(args) = fms("GetViolationDetails", args)

"""
    ListComplianceStatus()

Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy. 

Required Parameters
{
  "PolicyId": "The ID of the AWS Firewall Manager policy that you want the details for."
}

Optional Parameters
{
  "MaxResults": "Specifies the number of PolicyComplianceStatus objects that you want AWS Firewall Manager to return for this request. If you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicyComplianceStatus objects.",
  "NextToken": "If you specify a value for MaxResults and you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicyComplianceStatus objects. For the second and subsequent ListComplianceStatus requests, specify the value of NextToken from the previous response to get information about another batch of PolicyComplianceStatus objects."
}
"""
ListComplianceStatus(args) = fms("ListComplianceStatus", args)

"""
    GetProtocolsList()

Returns information about the specified AWS Firewall Manager protocols list.

Required Parameters
{
  "ListId": "The ID of the AWS Firewall Manager protocols list that you want the details for."
}

Optional Parameters
{
  "DefaultList": "Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager."
}
"""
GetProtocolsList(args) = fms("GetProtocolsList", args)

"""
    GetNotificationChannel()

Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
"""

GetNotificationChannel() = fms("GetNotificationChannel")
GetNotificationChannel(args) = fms("GetNotificationChannel", args)

"""
    DeleteAppsList()

Permanently deletes an AWS Firewall Manager applications list.

Required Parameters
{
  "ListId": "The ID of the applications list that you want to delete. You can retrieve this ID from PutAppsList, ListAppsLists, and GetAppsList."
}
"""
DeleteAppsList(args) = fms("DeleteAppsList", args)

"""
    TagResource()

Adds one or more tags to an AWS resource.

Required Parameters
{
  "TagList": "The tags to add to the resource.",
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. "
}
"""
TagResource(args) = fms("TagResource", args)

"""
    GetComplianceDetail()

Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered noncompliant for AWS WAF and Shield Advanced policies if the specified policy has not been applied to them. Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible. 

Required Parameters
{
  "PolicyId": "The ID of the policy that you want to get the details for. PolicyId is returned by PutPolicy and by ListPolicies.",
  "MemberAccount": "The AWS account that owns the resources that you want to get the details for."
}
"""
GetComplianceDetail(args) = fms("GetComplianceDetail", args)

"""
    UntagResource()

Removes one or more tags from an AWS resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to return tags for. The AWS Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. ",
  "TagKeys": "The keys of the tags to remove from the resource. "
}
"""
UntagResource(args) = fms("UntagResource", args)

"""
    GetPolicy()

Returns information about the specified AWS Firewall Manager policy.

Required Parameters
{
  "PolicyId": "The ID of the AWS Firewall Manager policy that you want the details for."
}
"""
GetPolicy(args) = fms("GetPolicy", args)

"""
    GetAppsList()

Returns information about the specified AWS Firewall Manager applications list.

Required Parameters
{
  "ListId": "The ID of the AWS Firewall Manager applications list that you want the details for."
}

Optional Parameters
{
  "DefaultList": "Specifies whether the list to retrieve is a default list owned by AWS Firewall Manager."
}
"""
GetAppsList(args) = fms("GetAppsList", args)

"""
    PutNotificationChannel()

Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.

Required Parameters
{
  "SnsRoleName": "The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity. ",
  "SnsTopicArn": "The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager."
}
"""
PutNotificationChannel(args) = fms("PutNotificationChannel", args)

"""
    ListPolicies()

Returns an array of PolicySummary objects.

Optional Parameters
{
  "MaxResults": "Specifies the number of PolicySummary objects that you want AWS Firewall Manager to return for this request. If you have more PolicySummary objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicySummary objects.",
  "NextToken": "If you specify a value for MaxResults and you have more PolicySummary objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicySummary objects. For the second and subsequent ListPolicies requests, specify the value of NextToken from the previous response to get information about another batch of PolicySummary objects."
}
"""

ListPolicies() = fms("ListPolicies")
ListPolicies(args) = fms("ListPolicies", args)

"""
    PutAppsList()

Creates an AWS Firewall Manager applications list.

Required Parameters
{
  "AppsList": "The details of the AWS Firewall Manager applications list to be created."
}

Optional Parameters
{
  "TagList": "The tags associated with the resource."
}
"""
PutAppsList(args) = fms("PutAppsList", args)

"""
    PutProtocolsList()

Creates an AWS Firewall Manager protocols list.

Required Parameters
{
  "ProtocolsList": "The details of the AWS Firewall Manager protocols list to be created."
}

Optional Parameters
{
  "TagList": "The tags associated with the resource."
}
"""
PutProtocolsList(args) = fms("PutProtocolsList", args)

"""
    PutPolicy()

Creates an AWS Firewall Manager policy. Firewall Manager provides the following types of policies:    A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources   An AWS WAF policy (type WAFV2), which defines rule groups to run first in the corresponding AWS WAF web ACL and rule groups to run last in the web ACL.   An AWS WAF Classic policy (type WAF), which defines a rule group.    A security group policy, which manages VPC security groups across your AWS organization.    Each policy is specific to one of the types. If you want to enforce more than one policy type across accounts, create multiple policies. You can create multiple policies for each type. You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see CreateSubscription.

Required Parameters
{
  "Policy": "The details of the AWS Firewall Manager policy to be created."
}

Optional Parameters
{
  "TagList": "The tags to add to the AWS resource."
}
"""
PutPolicy(args) = fms("PutPolicy", args)

"""
    DeleteNotificationChannel()

Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
"""

DeleteNotificationChannel() = fms("DeleteNotificationChannel")
DeleteNotificationChannel(args) = fms("DeleteNotificationChannel", args)
