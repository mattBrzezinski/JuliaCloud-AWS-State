include("../AWSCorePrototypeServices.jl")
using .Services: securityhub

"""
    DescribeStandardsControls

Returns a list of compliance standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.

Required Parameters:
{
  "StandardsSubscriptionArn": "The ARN of a resource that represents your subscription to a supported standard."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of compliance standard controls to return.",
  "NextToken": "For requests to get the next page of results, the pagination token that was returned with the previous set of results. The initial request does not include a pagination token."
}

"""

DescribeStandardsControls(args) = securityhub("GET", "/standards/controls/{StandardsSubscriptionArn+}", args)
"""
    GetEnabledStandards

Returns a list of the standards that are currently enabled.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in the response.",
  "NextToken": "Paginates results. On your first call to the GetEnabledStandards operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of nextToken from the previous response.",
  "StandardsSubscriptionArns": "The list of the standards subscription ARNs for the standards to retrieve."
}

"""
GetEnabledStandards() = securityhub("POST", "/standards/get")
GetEnabledStandards(args) = securityhub("POST", "/standards/get", args)

"""
    ListTagsForResource

Returns a list of tags associated with a resource.

Required Parameters:
{
  "ResourceArn": "The ARN of the resource to retrieve tags for."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = securityhub("GET", "/tags/{ResourceArn}", args)
"""
    UpdateFindings

Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.

Required Parameters:
{
  "Filters": "A collection of attributes that specify which findings you want to update."
}


Optional Parameters:
{
  "Note": "The updated note for the finding.",
  "RecordState": "The updated record state for the finding."
}

"""

UpdateFindings(args) = securityhub("PATCH", "/findings", args)
"""
    UpdateActionTarget

Updates the name and description of a custom action target in Security Hub.

Required Parameters:
{
  "ActionTargetArn": "The ARN of the custom action target to update."
}


Optional Parameters:
{
  "Description": "The updated description for the custom action target.",
  "Name": "The updated name of the custom action target."
}

"""

UpdateActionTarget(args) = securityhub("PATCH", "/actionTargets/{ActionTargetArn+}", args)
"""
    ListInvitations

Lists all Security Hub membership invitations that were sent to the current AWS account. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return in the response. ",
  "NextToken": "Paginates results. On your first call to the ListInvitations operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of NextToken from the previous response. "
}

"""
ListInvitations() = securityhub("GET", "/invitations")
ListInvitations(args) = securityhub("GET", "/invitations", args)

"""
    CreateMembers

Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. To enable Security Hub, you can use the EnableSecurityHub operation. After you use CreateMembers to create member account associations in Security Hub, you must use the InviteMembers operation to invite the accounts to enable Security Hub and become member accounts in Security Hub. If the account owner accepts the invitation, the account becomes a member account in Security Hub, and a permission policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start to be sent to both the member and master accounts. To remove the association between the master and member accounts, use the DisassociateFromMasterAccount or DisassociateMembers operation.

Required Parameters:
{}


Optional Parameters:
{
  "AccountDetails": "The list of accounts to associate with the Security Hub master account. For each account, the list includes the account ID and the email address."
}

"""
CreateMembers() = securityhub("POST", "/members")
CreateMembers(args) = securityhub("POST", "/members", args)

"""
    UpdateInsight

Updates the Security Hub insight identified by the specified insight ARN.

Required Parameters:
{
  "InsightArn": "The ARN of the insight that you want to update."
}


Optional Parameters:
{
  "GroupByAttribute": "The updated GroupBy attribute that defines this insight.",
  "Filters": "The updated filters that define this insight.",
  "Name": "The updated name for the insight."
}

"""

UpdateInsight(args) = securityhub("PATCH", "/insights/{InsightArn+}", args)
"""
    CreateActionTarget

Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.

Required Parameters:
{
  "Id": "The ID for the custom action target.",
  "Description": "The description for the custom action target.",
  "Name": "The name of the custom action target."
}


Optional Parameters:
{}

"""

CreateActionTarget(args) = securityhub("POST", "/actionTargets", args)
"""
    ListEnabledProductsForImport

Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return in the response.",
  "NextToken": "Paginates results. On your first call to the ListEnabledProductsForImport operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of NextToken from the previous response."
}

"""
ListEnabledProductsForImport() = securityhub("GET", "/productSubscriptions")
ListEnabledProductsForImport(args) = securityhub("GET", "/productSubscriptions", args)

"""
    DeclineInvitations

Declines invitations to become a member account.

Required Parameters:
{
  "AccountIds": "The list of account IDs for the accounts from which to decline the invitations to Security Hub."
}


Optional Parameters:
{}

"""

DeclineInvitations(args) = securityhub("POST", "/invitations/decline", args)
"""
    UpdateStandardsControl

Used to control whether an individual compliance standard control is enabled or disabled.

Required Parameters:
{
  "StandardsControlArn": "The ARN of the compliance standard control to enable or disable."
}


Optional Parameters:
{
  "ControlStatus": "The updated status of the compliance standard control.",
  "DisabledReason": "A description of the reason why you are disabling a compliance standard control."
}

"""

UpdateStandardsControl(args) = securityhub("PATCH", "/standards/control/{StandardsControlArn+}", args)
"""
    InviteMembers

Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first use the CreateMembers action to create the member account in Security Hub. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from the member account.

Required Parameters:
{}


Optional Parameters:
{
  "AccountIds": "The list of account IDs of the AWS accounts to invite to Security Hub as members. "
}

"""
InviteMembers() = securityhub("POST", "/members/invite")
InviteMembers(args) = securityhub("POST", "/members/invite", args)

"""
    DescribeActionTargets

Returns a list of the custom action targets in Security Hub in your account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token that is required for pagination.",
  "ActionTargetArns": "A list of custom action target ARNs for the custom action targets to retrieve."
}

"""
DescribeActionTargets() = securityhub("POST", "/actionTargets/get")
DescribeActionTargets(args) = securityhub("POST", "/actionTargets/get", args)

"""
    BatchEnableStandards

Enables the standards specified by the provided standardsArn. In this release, only CIS AWS Foundations standards are supported. For more information, see Standards Supported in AWS Security Hub.

Required Parameters:
{
  "StandardsSubscriptionRequests": "The list of standards compliance checks to enable.  In this release, Security Hub supports only the CIS AWS Foundations standard. The ARN for the standard is arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0. "
}


Optional Parameters:
{}

"""

BatchEnableStandards(args) = securityhub("POST", "/standards/register", args)
"""
    GetInsights

Lists and describes insights for the specified insight ARNs.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return in the response.",
  "NextToken": "Paginates results. On your first call to the GetInsights operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of nextToken from the previous response.",
  "InsightArns": "The ARNs of the insights to describe."
}

"""
GetInsights() = securityhub("POST", "/insights/get")
GetInsights(args) = securityhub("POST", "/insights/get", args)

"""
    DeleteActionTarget

Deletes a custom action target from Security Hub. Deleting a custom action target does not affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.

Required Parameters:
{
  "ActionTargetArn": "The ARN of the custom action target to delete."
}


Optional Parameters:
{}

"""

DeleteActionTarget(args) = securityhub("DELETE", "/actionTargets/{ActionTargetArn+}", args)
"""
    DisableSecurityHub

Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and cannot be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.

Required Parameters:
{}


Optional Parameters:
{}

"""
DisableSecurityHub() = securityhub("DELETE", "/accounts")
DisableSecurityHub(args) = securityhub("DELETE", "/accounts", args)

"""
    GetInvitationsCount

Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 

Required Parameters:
{}


Optional Parameters:
{}

"""
GetInvitationsCount() = securityhub("GET", "/invitations/count")
GetInvitationsCount(args) = securityhub("GET", "/invitations/count", args)

"""
    ListMembers

Lists details about all member accounts for the current Security Hub master account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return in the response. ",
  "NextToken": "Paginates results. On your first call to the ListMembers operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of nextToken from the previous response.",
  "OnlyAssociated": "Specifies which member accounts to include in the response based on their relationship status with the master account. The default value is TRUE. If onlyAssociated is set to TRUE, the response includes member accounts whose relationship status with the master is set to ENABLED or DISABLED. If onlyAssociated is set to FALSE, the response includes all existing member accounts. "
}

"""
ListMembers() = securityhub("GET", "/members")
ListMembers(args) = securityhub("GET", "/members", args)

"""
    CreateInsight

Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. To group the related findings in the insight, use the GroupByAttribute.

Required Parameters:
{
  "GroupByAttribute": "The attribute used as the aggregator to group related findings for the insight.",
  "Filters": "One or more attributes used to filter the findings included in the insight. The insight only includes findings that match the criteria defined in the filters.",
  "Name": "The name of the custom insight to create."
}


Optional Parameters:
{}

"""

CreateInsight(args) = securityhub("POST", "/insights", args)
"""
    TagResource

Adds one or more tags to a resource.

Required Parameters:
{
  "ResourceArn": "The ARN of the resource to apply the tags to.",
  "Tags": "The tags to add to the resource."
}


Optional Parameters:
{}

"""

TagResource(args) = securityhub("POST", "/tags/{ResourceArn}", args)
"""
    DescribeHub

Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.

Required Parameters:
{}


Optional Parameters:
{
  "HubArn": "The ARN of the Hub resource to retrieve."
}

"""
DescribeHub() = securityhub("GET", "/accounts")
DescribeHub(args) = securityhub("GET", "/accounts", args)

"""
    UntagResource

Removes one or more tags from a resource.

Required Parameters:
{
  "ResourceArn": "The ARN of the resource to remove the tags from.",
  "TagKeys": "The tag keys associated with the tags to remove from the resource."
}


Optional Parameters:
{}

"""

UntagResource(args) = securityhub("DELETE", "/tags/{ResourceArn}", args)
"""
    DeleteInvitations

Deletes invitations received by the AWS account to become a member account.

Required Parameters:
{
  "AccountIds": "The list of the account IDs that sent the invitations to delete."
}


Optional Parameters:
{}

"""

DeleteInvitations(args) = securityhub("POST", "/invitations/delete", args)
"""
    DeleteMembers

Deletes the specified member accounts from Security Hub.

Required Parameters:
{}


Optional Parameters:
{
  "AccountIds": "The list of account IDs for the member accounts to delete."
}

"""
DeleteMembers() = securityhub("POST", "/members/delete")
DeleteMembers(args) = securityhub("POST", "/members/delete", args)

"""
    AcceptInvitation

Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.

Required Parameters:
{
  "InvitationId": "The ID of the invitation sent from the Security Hub master account.",
  "MasterId": "The account ID of the Security Hub master account that sent the invitation."
}


Optional Parameters:
{}

"""

AcceptInvitation(args) = securityhub("POST", "/master", args)
"""
    DisassociateFromMasterAccount

Disassociates the current Security Hub member account from the associated master account.

Required Parameters:
{}


Optional Parameters:
{}

"""
DisassociateFromMasterAccount() = securityhub("POST", "/master/disassociate")
DisassociateFromMasterAccount(args) = securityhub("POST", "/master/disassociate", args)

"""
    GetMasterAccount

Provides the details for the Security Hub master account for the current member account. 

Required Parameters:
{}


Optional Parameters:
{}

"""
GetMasterAccount() = securityhub("GET", "/master")
GetMasterAccount(args) = securityhub("GET", "/master", args)

"""
    DescribeProducts

Returns information about the available products that you can subscribe to and integrate with Security Hub in order to consolidate findings.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token that is required for pagination."
}

"""
DescribeProducts() = securityhub("GET", "/products")
DescribeProducts(args) = securityhub("GET", "/products", args)

"""
    DeleteInsight

Deletes the insight specified by the InsightArn.

Required Parameters:
{
  "InsightArn": "The ARN of the insight to delete."
}


Optional Parameters:
{}

"""

DeleteInsight(args) = securityhub("DELETE", "/insights/{InsightArn+}", args)
"""
    GetFindings

Returns a list of findings that match the specified criteria.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of findings to return.",
  "NextToken": "Paginates results. On your first call to the GetFindings operation, set the value of this parameter to NULL. For subsequent calls to the operation, to continue listing data, set nextToken in the request to the value of nextToken from the previous response.",
  "SortCriteria": "The finding attributes used to sort the list of returned findings.",
  "Filters": "The finding attributes used to define a condition to filter the returned findings."
}

"""
GetFindings() = securityhub("POST", "/findings")
GetFindings(args) = securityhub("POST", "/findings", args)

"""
    EnableImportFindingsForProduct

Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permission policy that grants permission for the product to send findings to Security Hub is applied.

Required Parameters:
{
  "ProductArn": "The ARN of the product to enable the integration for."
}


Optional Parameters:
{}

"""

EnableImportFindingsForProduct(args) = securityhub("POST", "/productSubscriptions", args)
"""
    EnableSecurityHub

Enables Security Hub for your account in the current Region or the Region you specify in the request. Enabling Security Hub also enables the CIS AWS Foundations standard. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from AWS Config, Amazon GuardDuty, Amazon Inspector, and Amazon Macie. To learn more, see Setting Up AWS Security Hub.

Required Parameters:
{}


Optional Parameters:
{
  "Tags": "The tags to add to the Hub resource when you enable Security Hub."
}

"""
EnableSecurityHub() = securityhub("POST", "/accounts")
EnableSecurityHub(args) = securityhub("POST", "/accounts", args)

"""
    BatchDisableStandards

Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Standards Supported in AWS Security Hub.

Required Parameters:
{
  "StandardsSubscriptionArns": "The ARNs of the standards subscriptions to disable."
}


Optional Parameters:
{}

"""

BatchDisableStandards(args) = securityhub("POST", "/standards/deregister", args)
"""
    DisassociateMembers

Disassociates the specified member accounts from the associated master account.

Required Parameters:
{}


Optional Parameters:
{
  "AccountIds": "The account IDs of the member accounts to disassociate from the master account."
}

"""
DisassociateMembers() = securityhub("POST", "/members/disassociate")
DisassociateMembers(args) = securityhub("POST", "/members/disassociate", args)

"""
    DisableImportFindingsForProduct

Disables the integration of the specified product with Security Hub. After the integration is disabled, findings from that product are no longer sent to Security Hub.

Required Parameters:
{
  "ProductSubscriptionArn": "The ARN of the integrated product to disable the integration for."
}


Optional Parameters:
{}

"""

DisableImportFindingsForProduct(args) = securityhub("DELETE", "/productSubscriptions/{ProductSubscriptionArn+}", args)
"""
    GetInsightResults

Lists the results of the Security Hub insight specified by the insight ARN.

Required Parameters:
{
  "InsightArn": "The ARN of the insight for which to return results."
}


Optional Parameters:
{}

"""

GetInsightResults(args) = securityhub("GET", "/insights/results/{InsightArn+}", args)
"""
    GetMembers

Returns the details for the Security Hub member accounts for the specified account IDs.

Required Parameters:
{
  "AccountIds": "The list of account IDs for the Security Hub member accounts to return the details for. "
}


Optional Parameters:
{}

"""

GetMembers(args) = securityhub("POST", "/members/get", args)
"""
    BatchImportFindings

Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb.

Required Parameters:
{
  "Findings": "A list of findings to import. To successfully import a finding, it must follow the AWS Security Finding Format. Maximum of 100 findings per request."
}


Optional Parameters:
{}

"""

BatchImportFindings(args) = securityhub("POST", "/findings/import", args)