include("../AWSCorePrototypeServices.jl")
using .Services: securityhub

"""
Returns a list of compliance standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.

Required Parameters:
StandardsSubscriptionArn
"""
DescribeStandardsControls(args) = securityhub("GET", "/standards/controls/{StandardsSubscriptionArn+}", args)

"""
Returns a list of the standards that are currently enabled.
"""
GetEnabledStandards() = securityhub("POST", "/standards/get")

"""
Returns a list of tags associated with a resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = securityhub("GET", "/tags/{ResourceArn}", args)

"""
Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.

Required Parameters:
Filters
"""
UpdateFindings(args) = securityhub("PATCH", "/findings", args)

"""
Updates the name and description of a custom action target in Security Hub.

Required Parameters:
ActionTargetArn
"""
UpdateActionTarget(args) = securityhub("PATCH", "/actionTargets/{ActionTargetArn+}", args)

"""
Lists all Security Hub membership invitations that were sent to the current AWS account. 
"""
ListInvitations() = securityhub("GET", "/invitations")

"""
Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. To enable Security Hub, you can use the EnableSecurityHub operation. After you use CreateMembers to create member account associations in Security Hub, you must use the InviteMembers operation to invite the accounts to enable Security Hub and become member accounts in Security Hub. If the account owner accepts the invitation, the account becomes a member account in Security Hub, and a permission policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start to be sent to both the member and master accounts. To remove the association between the master and member accounts, use the DisassociateFromMasterAccount or DisassociateMembers operation.
"""
CreateMembers() = securityhub("POST", "/members")

"""
Updates the Security Hub insight identified by the specified insight ARN.

Required Parameters:
InsightArn
"""
UpdateInsight(args) = securityhub("PATCH", "/insights/{InsightArn+}", args)

"""
Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.

Required Parameters:
Name, Description, Id
"""
CreateActionTarget(args) = securityhub("POST", "/actionTargets", args)

"""
Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.
"""
ListEnabledProductsForImport() = securityhub("GET", "/productSubscriptions")

"""
Declines invitations to become a member account.

Required Parameters:
AccountIds
"""
DeclineInvitations(args) = securityhub("POST", "/invitations/decline", args)

"""
Used to control whether an individual compliance standard control is enabled or disabled.

Required Parameters:
StandardsControlArn
"""
UpdateStandardsControl(args) = securityhub("PATCH", "/standards/control/{StandardsControlArn+}", args)

"""
Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first use the CreateMembers action to create the member account in Security Hub. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from the member account.
"""
InviteMembers() = securityhub("POST", "/members/invite")

"""
Returns a list of the custom action targets in Security Hub in your account.
"""
DescribeActionTargets() = securityhub("POST", "/actionTargets/get")

"""
Enables the standards specified by the provided standardsArn. In this release, only CIS AWS Foundations standards are supported. For more information, see Standards Supported in AWS Security Hub.

Required Parameters:
StandardsSubscriptionRequests
"""
BatchEnableStandards(args) = securityhub("POST", "/standards/register", args)

"""
Lists and describes insights for the specified insight ARNs.
"""
GetInsights() = securityhub("POST", "/insights/get")

"""
Deletes a custom action target from Security Hub. Deleting a custom action target does not affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.

Required Parameters:
ActionTargetArn
"""
DeleteActionTarget(args) = securityhub("DELETE", "/actionTargets/{ActionTargetArn+}", args)

"""
Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and cannot be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
"""
DisableSecurityHub() = securityhub("DELETE", "/accounts")

"""
Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
"""
GetInvitationsCount() = securityhub("GET", "/invitations/count")

"""
Lists details about all member accounts for the current Security Hub master account.
"""
ListMembers() = securityhub("GET", "/members")

"""
Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. To group the related findings in the insight, use the GroupByAttribute.

Required Parameters:
Name, Filters, GroupByAttribute
"""
CreateInsight(args) = securityhub("POST", "/insights", args)

"""
Adds one or more tags to a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = securityhub("POST", "/tags/{ResourceArn}", args)

"""
Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
"""
DescribeHub() = securityhub("GET", "/accounts")

"""
Removes one or more tags from a resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = securityhub("DELETE", "/tags/{ResourceArn}", args)

"""
Deletes invitations received by the AWS account to become a member account.

Required Parameters:
AccountIds
"""
DeleteInvitations(args) = securityhub("POST", "/invitations/delete", args)

"""
Deletes the specified member accounts from Security Hub.
"""
DeleteMembers() = securityhub("POST", "/members/delete")

"""
Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.

Required Parameters:
MasterId, InvitationId
"""
AcceptInvitation(args) = securityhub("POST", "/master", args)

"""
Disassociates the current Security Hub member account from the associated master account.
"""
DisassociateFromMasterAccount() = securityhub("POST", "/master/disassociate")

"""
Provides the details for the Security Hub master account for the current member account. 
"""
GetMasterAccount() = securityhub("GET", "/master")

"""
Returns information about the available products that you can subscribe to and integrate with Security Hub in order to consolidate findings.
"""
DescribeProducts() = securityhub("GET", "/products")

"""
Deletes the insight specified by the InsightArn.

Required Parameters:
InsightArn
"""
DeleteInsight(args) = securityhub("DELETE", "/insights/{InsightArn+}", args)

"""
Returns a list of findings that match the specified criteria.
"""
GetFindings() = securityhub("POST", "/findings")

"""
Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permission policy that grants permission for the product to send findings to Security Hub is applied.

Required Parameters:
ProductArn
"""
EnableImportFindingsForProduct(args) = securityhub("POST", "/productSubscriptions", args)

"""
Enables Security Hub for your account in the current Region or the Region you specify in the request. Enabling Security Hub also enables the CIS AWS Foundations standard. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To learn more, see Setting Up AWS Security Hub.
"""
EnableSecurityHub() = securityhub("POST", "/accounts")

"""
Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Standards Supported in AWS Security Hub.

Required Parameters:
StandardsSubscriptionArns
"""
BatchDisableStandards(args) = securityhub("POST", "/standards/deregister", args)

"""
Disassociates the specified member accounts from the associated master account.
"""
DisassociateMembers() = securityhub("POST", "/members/disassociate")

"""
Disables the integration of the specified product with Security Hub. After the integration is disabled, findings from that product are no longer sent to Security Hub.

Required Parameters:
ProductSubscriptionArn
"""
DisableImportFindingsForProduct(args) = securityhub("DELETE", "/productSubscriptions/{ProductSubscriptionArn+}", args)

"""
Lists the results of the Security Hub insight specified by the insight ARN.

Required Parameters:
InsightArn
"""
GetInsightResults(args) = securityhub("GET", "/insights/results/{InsightArn+}", args)

"""
Returns the details for the Security Hub member accounts for the specified account IDs.

Required Parameters:
AccountIds
"""
GetMembers(args) = securityhub("POST", "/members/get", args)

"""
Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb.

Required Parameters:
Findings
"""
BatchImportFindings(args) = securityhub("POST", "/findings/import", args)
