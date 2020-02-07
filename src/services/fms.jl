include("../AWSCorePrototypeServices.jl")
using .Services: fms

"""
Retrieves the list of tags for the specified AWS resource. 

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = fms("ListTagsForResource", args)

"""
Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account of your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account. The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. 

Required Parameters:
AdminAccount
"""
AssociateAdminAccount(args) = fms("AssociateAdminAccount", args)

"""
If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.

Required Parameters:
PolicyId
"""
GetProtectionStatus(args) = fms("GetProtectionStatus", args)

"""
Disassociates the account that has been set as the AWS Firewall Manager administrator account. To set a different account as the administrator account, you must submit an AssociateAdminAccount request.
"""
DisassociateAdminAccount() = fms("DisassociateAdminAccount")

"""
Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
"""
GetAdminAccount() = fms("GetAdminAccount")

"""
Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.
"""
ListMemberAccounts() = fms("ListMemberAccounts")

"""
Permanently deletes an AWS Firewall Manager policy. 

Required Parameters:
PolicyId
"""
DeletePolicy(args) = fms("DeletePolicy", args)

"""
Returns an array of PolicyComplianceStatus objects in the response. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy. 

Required Parameters:
PolicyId
"""
ListComplianceStatus(args) = fms("ListComplianceStatus", args)

"""
Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
"""
GetNotificationChannel() = fms("GetNotificationChannel")

"""
Adds one or more tags to an AWS resource.

Required Parameters:
ResourceArn, TagList
"""
TagResource(args) = fms("TagResource", args)

"""
Removes one or more tags from an AWS resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = fms("UntagResource", args)

"""
Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered noncompliant for AWS WAF and Shield Advanced policies if the specified policy has not been applied to them. Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible. 

Required Parameters:
PolicyId, MemberAccount
"""
GetComplianceDetail(args) = fms("GetComplianceDetail", args)

"""
Returns information about the specified AWS Firewall Manager policy.

Required Parameters:
PolicyId
"""
GetPolicy(args) = fms("GetPolicy", args)

"""
Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.

Required Parameters:
SnsTopicArn, SnsRoleName
"""
PutNotificationChannel(args) = fms("PutNotificationChannel", args)

"""
Returns an array of PolicySummary objects in the response.
"""
ListPolicies() = fms("ListPolicies")

"""
Creates an AWS Firewall Manager policy. Firewall Manager provides the following types of policies:    A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources   An AWS WAF policy, which contains a rule group and defines which resources are to be protected by that rule group   A security group policy, which manages VPC security groups across your AWS organization.    Each policy is specific to one of the three types. If you want to enforce more than one policy type across accounts, you can create multiple policies. You can create multiple policies for each type. You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see CreateSubscription.

Required Parameters:
Policy
"""
PutPolicy(args) = fms("PutPolicy", args)

"""
Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
"""
DeleteNotificationChannel() = fms("DeleteNotificationChannel")
