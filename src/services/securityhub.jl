include("../AWSCorePrototypeServices.jl")
using .Services: securityhub

"""
Returns a list of compliance standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.
"""
DescribeStandardsControls(StandardsSubscriptionArn) = securityhub("GET", "/standards/controls/$StandardsSubscriptionArn+")
DescribeStandardsControls(StandardsSubscriptionArn, args) = securityhub("GET", "/standards/controls/$StandardsSubscriptionArn+", args)
DescribeStandardsControls(a...; b...) = DescribeStandardsControls(a..., b)

"""
Returns a list of the standards that are currently enabled.
"""
GetEnabledStandards() = securityhub("POST", "/standards/get")
GetEnabledStandards(, args) = securityhub("POST", "/standards/get", args)
GetEnabledStandards(a...; b...) = GetEnabledStandards(a..., b)

"""
Returns a list of tags associated with a resource.
"""
ListTagsForResource(ResourceArn) = securityhub("GET", "/tags/$ResourceArn")
ListTagsForResource(ResourceArn, args) = securityhub("GET", "/tags/$ResourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
"""
UpdateFindings(Filters) = securityhub("PATCH", "/findings")
UpdateFindings(Filters, args) = securityhub("PATCH", "/findings", args)
UpdateFindings(a...; b...) = UpdateFindings(a..., b)

"""
Updates the name and description of a custom action target in Security Hub.
"""
UpdateActionTarget(ActionTargetArn) = securityhub("PATCH", "/actionTargets/$ActionTargetArn+")
UpdateActionTarget(ActionTargetArn, args) = securityhub("PATCH", "/actionTargets/$ActionTargetArn+", args)
UpdateActionTarget(a...; b...) = UpdateActionTarget(a..., b)

"""
Lists all Security Hub membership invitations that were sent to the current AWS account. 
"""
ListInvitations() = securityhub("GET", "/invitations")
ListInvitations(, args) = securityhub("GET", "/invitations", args)
ListInvitations(a...; b...) = ListInvitations(a..., b)

"""
Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. To enable Security Hub, you can use the EnableSecurityHub operation. After you use CreateMembers to create member account associations in Security Hub, you must use the InviteMembers operation to invite the accounts to enable Security Hub and become member accounts in Security Hub. If the account owner accepts the invitation, the account becomes a member account in Security Hub, and a permission policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start to be sent to both the member and master accounts. To remove the association between the master and member accounts, use the DisassociateFromMasterAccount or DisassociateMembers operation.
"""
CreateMembers() = securityhub("POST", "/members")
CreateMembers(, args) = securityhub("POST", "/members", args)
CreateMembers(a...; b...) = CreateMembers(a..., b)

"""
Updates the Security Hub insight identified by the specified insight ARN.
"""
UpdateInsight(InsightArn) = securityhub("PATCH", "/insights/$InsightArn+")
UpdateInsight(InsightArn, args) = securityhub("PATCH", "/insights/$InsightArn+", args)
UpdateInsight(a...; b...) = UpdateInsight(a..., b)

"""
Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
"""
CreateActionTarget(Name, Description, Id) = securityhub("POST", "/actionTargets")
CreateActionTarget(Name, Description, Id, args) = securityhub("POST", "/actionTargets", args)
CreateActionTarget(a...; b...) = CreateActionTarget(a..., b)

"""
Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.
"""
ListEnabledProductsForImport() = securityhub("GET", "/productSubscriptions")
ListEnabledProductsForImport(, args) = securityhub("GET", "/productSubscriptions", args)
ListEnabledProductsForImport(a...; b...) = ListEnabledProductsForImport(a..., b)

"""
Declines invitations to become a member account.
"""
DeclineInvitations(AccountIds) = securityhub("POST", "/invitations/decline")
DeclineInvitations(AccountIds, args) = securityhub("POST", "/invitations/decline", args)
DeclineInvitations(a...; b...) = DeclineInvitations(a..., b)

"""
Used to control whether an individual compliance standard control is enabled or disabled.
"""
UpdateStandardsControl(StandardsControlArn) = securityhub("PATCH", "/standards/control/$StandardsControlArn+")
UpdateStandardsControl(StandardsControlArn, args) = securityhub("PATCH", "/standards/control/$StandardsControlArn+", args)
UpdateStandardsControl(a...; b...) = UpdateStandardsControl(a..., b)

"""
Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first use the CreateMembers action to create the member account in Security Hub. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from the member account.
"""
InviteMembers() = securityhub("POST", "/members/invite")
InviteMembers(, args) = securityhub("POST", "/members/invite", args)
InviteMembers(a...; b...) = InviteMembers(a..., b)

"""
Returns a list of the custom action targets in Security Hub in your account.
"""
DescribeActionTargets() = securityhub("POST", "/actionTargets/get")
DescribeActionTargets(, args) = securityhub("POST", "/actionTargets/get", args)
DescribeActionTargets(a...; b...) = DescribeActionTargets(a..., b)

"""
Enables the standards specified by the provided standardsArn. In this release, only CIS AWS Foundations standards are supported. For more information, see Standards Supported in AWS Security Hub.
"""
BatchEnableStandards(StandardsSubscriptionRequests) = securityhub("POST", "/standards/register")
BatchEnableStandards(StandardsSubscriptionRequests, args) = securityhub("POST", "/standards/register", args)
BatchEnableStandards(a...; b...) = BatchEnableStandards(a..., b)

"""
Lists and describes insights for the specified insight ARNs.
"""
GetInsights() = securityhub("POST", "/insights/get")
GetInsights(, args) = securityhub("POST", "/insights/get", args)
GetInsights(a...; b...) = GetInsights(a..., b)

"""
Deletes a custom action target from Security Hub. Deleting a custom action target does not affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.
"""
DeleteActionTarget(ActionTargetArn) = securityhub("DELETE", "/actionTargets/$ActionTargetArn+")
DeleteActionTarget(ActionTargetArn, args) = securityhub("DELETE", "/actionTargets/$ActionTargetArn+", args)
DeleteActionTarget(a...; b...) = DeleteActionTarget(a..., b)

"""
Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and cannot be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
"""
DisableSecurityHub() = securityhub("DELETE", "/accounts")
DisableSecurityHub(, args) = securityhub("DELETE", "/accounts", args)
DisableSecurityHub(a...; b...) = DisableSecurityHub(a..., b)

"""
Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
"""
GetInvitationsCount() = securityhub("GET", "/invitations/count")
GetInvitationsCount(, args) = securityhub("GET", "/invitations/count", args)
GetInvitationsCount(a...; b...) = GetInvitationsCount(a..., b)

"""
Lists details about all member accounts for the current Security Hub master account.
"""
ListMembers() = securityhub("GET", "/members")
ListMembers(, args) = securityhub("GET", "/members", args)
ListMembers(a...; b...) = ListMembers(a..., b)

"""
Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. To group the related findings in the insight, use the GroupByAttribute.
"""
CreateInsight(Name, Filters, GroupByAttribute) = securityhub("POST", "/insights")
CreateInsight(Name, Filters, GroupByAttribute, args) = securityhub("POST", "/insights", args)
CreateInsight(a...; b...) = CreateInsight(a..., b)

"""
Adds one or more tags to a resource.
"""
TagResource(ResourceArn, Tags) = securityhub("POST", "/tags/$ResourceArn")
TagResource(ResourceArn, Tags, args) = securityhub("POST", "/tags/$ResourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
"""
DescribeHub() = securityhub("GET", "/accounts")
DescribeHub(, args) = securityhub("GET", "/accounts", args)
DescribeHub(a...; b...) = DescribeHub(a..., b)

"""
Removes one or more tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = securityhub("DELETE", "/tags/$ResourceArn")
UntagResource(ResourceArn, TagKeys, args) = securityhub("DELETE", "/tags/$ResourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Deletes invitations received by the AWS account to become a member account.
"""
DeleteInvitations(AccountIds) = securityhub("POST", "/invitations/delete")
DeleteInvitations(AccountIds, args) = securityhub("POST", "/invitations/delete", args)
DeleteInvitations(a...; b...) = DeleteInvitations(a..., b)

"""
Deletes the specified member accounts from Security Hub.
"""
DeleteMembers() = securityhub("POST", "/members/delete")
DeleteMembers(, args) = securityhub("POST", "/members/delete", args)
DeleteMembers(a...; b...) = DeleteMembers(a..., b)

"""
Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.
"""
AcceptInvitation(MasterId, InvitationId) = securityhub("POST", "/master")
AcceptInvitation(MasterId, InvitationId, args) = securityhub("POST", "/master", args)
AcceptInvitation(a...; b...) = AcceptInvitation(a..., b)

"""
Disassociates the current Security Hub member account from the associated master account.
"""
DisassociateFromMasterAccount() = securityhub("POST", "/master/disassociate")
DisassociateFromMasterAccount(, args) = securityhub("POST", "/master/disassociate", args)
DisassociateFromMasterAccount(a...; b...) = DisassociateFromMasterAccount(a..., b)

"""
Provides the details for the Security Hub master account for the current member account. 
"""
GetMasterAccount() = securityhub("GET", "/master")
GetMasterAccount(, args) = securityhub("GET", "/master", args)
GetMasterAccount(a...; b...) = GetMasterAccount(a..., b)

"""
Returns information about the available products that you can subscribe to and integrate with Security Hub in order to consolidate findings.
"""
DescribeProducts() = securityhub("GET", "/products")
DescribeProducts(, args) = securityhub("GET", "/products", args)
DescribeProducts(a...; b...) = DescribeProducts(a..., b)

"""
Deletes the insight specified by the InsightArn.
"""
DeleteInsight(InsightArn) = securityhub("DELETE", "/insights/$InsightArn+")
DeleteInsight(InsightArn, args) = securityhub("DELETE", "/insights/$InsightArn+", args)
DeleteInsight(a...; b...) = DeleteInsight(a..., b)

"""
Returns a list of findings that match the specified criteria.
"""
GetFindings() = securityhub("POST", "/findings")
GetFindings(, args) = securityhub("POST", "/findings", args)
GetFindings(a...; b...) = GetFindings(a..., b)

"""
Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permission policy that grants permission for the product to send findings to Security Hub is applied.
"""
EnableImportFindingsForProduct(ProductArn) = securityhub("POST", "/productSubscriptions")
EnableImportFindingsForProduct(ProductArn, args) = securityhub("POST", "/productSubscriptions", args)
EnableImportFindingsForProduct(a...; b...) = EnableImportFindingsForProduct(a..., b)

"""
Enables Security Hub for your account in the current Region or the Region you specify in the request. Enabling Security Hub also enables the CIS AWS Foundations standard. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To learn more, see Setting Up AWS Security Hub.
"""
EnableSecurityHub() = securityhub("POST", "/accounts")
EnableSecurityHub(, args) = securityhub("POST", "/accounts", args)
EnableSecurityHub(a...; b...) = EnableSecurityHub(a..., b)

"""
Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Standards Supported in AWS Security Hub.
"""
BatchDisableStandards(StandardsSubscriptionArns) = securityhub("POST", "/standards/deregister")
BatchDisableStandards(StandardsSubscriptionArns, args) = securityhub("POST", "/standards/deregister", args)
BatchDisableStandards(a...; b...) = BatchDisableStandards(a..., b)

"""
Disassociates the specified member accounts from the associated master account.
"""
DisassociateMembers() = securityhub("POST", "/members/disassociate")
DisassociateMembers(, args) = securityhub("POST", "/members/disassociate", args)
DisassociateMembers(a...; b...) = DisassociateMembers(a..., b)

"""
Disables the integration of the specified product with Security Hub. After the integration is disabled, findings from that product are no longer sent to Security Hub.
"""
DisableImportFindingsForProduct(ProductSubscriptionArn) = securityhub("DELETE", "/productSubscriptions/$ProductSubscriptionArn+")
DisableImportFindingsForProduct(ProductSubscriptionArn, args) = securityhub("DELETE", "/productSubscriptions/$ProductSubscriptionArn+", args)
DisableImportFindingsForProduct(a...; b...) = DisableImportFindingsForProduct(a..., b)

"""
Lists the results of the Security Hub insight specified by the insight ARN.
"""
GetInsightResults(InsightArn) = securityhub("GET", "/insights/results/$InsightArn+")
GetInsightResults(InsightArn, args) = securityhub("GET", "/insights/results/$InsightArn+", args)
GetInsightResults(a...; b...) = GetInsightResults(a..., b)

"""
Returns the details for the Security Hub member accounts for the specified account IDs.
"""
GetMembers(AccountIds) = securityhub("POST", "/members/get")
GetMembers(AccountIds, args) = securityhub("POST", "/members/get", args)
GetMembers(a...; b...) = GetMembers(a..., b)

"""
Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb.
"""
BatchImportFindings(Findings) = securityhub("POST", "/findings/import")
BatchImportFindings(Findings, args) = securityhub("POST", "/findings/import", args)
BatchImportFindings(a...; b...) = BatchImportFindings(a..., b)
