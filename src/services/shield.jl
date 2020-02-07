include("../AWSCorePrototypeServices.jl")
using .Services: shield

"""
Provides details about the AWS Shield Advanced subscription for an account.
"""
DescribeSubscription() = shield("DescribeSubscription")

"""
Authorizes the DDoS Response team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs. You can associate only one RoleArn with your subscription. If you submit an AssociateDRTRole request for an account that already has an associated role, the new RoleArn will replace the existing RoleArn.  Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to the role you will specify in the request. For more information see Attaching and Detaching IAM Policies. The role must also trust the service principal  drt.shield.amazonaws.com. For more information, see IAM JSON Policy Elements: Principal. The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you. You must have the iam:PassRole permission to make an AssociateDRTRole request. For more information, see Granting a User Permissions to Pass a Role to an AWS Service.  To use the services of the DRT and make an AssociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan.

Required Parameters:
RoleArn
"""
AssociateDRTRole(args) = shield("AssociateDRTRole", args)

"""
Activates AWS Shield Advanced for an account. As part of this request you can specify EmergencySettings that automaticaly grant the DDoS response team (DRT) needed permissions to assist you during a suspected DDoS attack. For more information see Authorize the DDoS Response Team to Create Rules and Web ACLs on Your Behalf. To use the services of the DRT, you must be subscribed to the Business Support plan or the Enterprise Support plan. When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. 
"""
CreateSubscription() = shield("CreateSubscription")

"""
Lists the email addresses that the DRT can use to contact you during a suspected attack.
"""
DescribeEmergencyContactSettings() = shield("DescribeEmergencyContactSettings")

"""
Returns the current role and list of Amazon S3 log buckets used by the DDoS Response team (DRT) to access your AWS account while assisting with attack mitigation.
"""
DescribeDRTAccess() = shield("DescribeDRTAccess")

"""
Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.
"""
UpdateSubscription() = shield("UpdateSubscription")

"""
Updates the details of the list of email addresses that the DRT can use to contact you during a suspected attack.
"""
UpdateEmergencyContactSettings() = shield("UpdateEmergencyContactSettings")

"""
Describes the details of a DDoS attack. 

Required Parameters:
AttackId
"""
DescribeAttack(args) = shield("DescribeAttack", args)

"""
Lists all Protection objects for the account.
"""
ListProtections() = shield("ListProtections")

"""
Deletes an AWS Shield Advanced Protection.

Required Parameters:
ProtectionId
"""
DeleteProtection(args) = shield("DeleteProtection", args)

"""
Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. 
"""
DeleteSubscription() = shield("DeleteSubscription")

"""
Removes the DDoS Response team's (DRT) access to your AWS account. To make a DisassociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTRole request to remove this access.
"""
DisassociateDRTRole() = shield("DisassociateDRTRole")

"""
Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the AWS WAF console. For more information see Getting Started with AWS Shield Advanced and Add AWS Shield Advanced Protection to more AWS Resources.

Required Parameters:
Name, ResourceArn
"""
CreateProtection(args) = shield("CreateProtection", args)

"""
Authorizes the DDoS Response team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription. To use the services of the DRT and make an AssociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan.

Required Parameters:
LogBucket
"""
AssociateDRTLogBucket(args) = shield("AssociateDRTLogBucket", args)

"""
Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
"""
ListAttacks() = shield("ListAttacks")

"""
Removes the DDoS Response team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs. To make a DisassociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTLogBucket request to remove this access.

Required Parameters:
LogBucket
"""
DisassociateDRTLogBucket(args) = shield("DisassociateDRTLogBucket", args)

"""
Returns the SubscriptionState, either Active or Inactive.
"""
GetSubscriptionState() = shield("GetSubscriptionState")

"""
Lists the details of a Protection object.
"""
DescribeProtection() = shield("DescribeProtection")
