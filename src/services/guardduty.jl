include("../AWSCorePrototypeServices.jl")
using .Services: guardduty

"""
    GetDetector()

Retrieves an Amazon GuardDuty detector specified by the detectorId.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that you want to get."
}
"""
GetDetector(args) = guardduty("GET", "/detector/{detectorId}", args)

"""
    CreateIPSet()

Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with AWS infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the master account can use this operation.

Required Parameters
{
  "Format": "The format of the file that contains the IPSet.",
  "Activate": "A Boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.",
  "Location": "The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.",
  "DetectorId": "The unique ID of the detector of the GuardDuty account that you want to create an IPSet for.",
  "Name": "The user-friendly name to identify the IPSet.  Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_)."
}

Optional Parameters
{
  "Tags": "The tags to be added to a new IP set resource.",
  "ClientToken": "The idempotency token for the create request."
}
"""
CreateIPSet(args) = guardduty("POST", "/detector/{detectorId}/ipset", args)

"""
    DisableOrganizationAdminAccount()

Disables an AWS account within the Organization as the GuardDuty delegated administrator.

Required Parameters
{
  "AdminAccountId": "The AWS Account ID for the organizations account to be disabled as a GuardDuty delegated administrator."
}
"""
DisableOrganizationAdminAccount(args) = guardduty("POST", "/admin/disable", args)

"""
    CreateMembers()

Creates member accounts of the current AWS account by specifying a list of AWS account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization. When using Create Members as an organizations delegated administrator this action will enable GuardDuty in the added member accounts, with the exception of the organization master account, which must enable GuardDuty prior to being added as a member. If you are adding accounts by invitation use this action after GuardDuty has been enabled in potential member accounts and before using  Invite Members .

Required Parameters
{
  "AccountDetails": "A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.",
  "DetectorId": "The unique ID of the detector of the GuardDuty account that you want to associate member accounts with."
}
"""
CreateMembers(args) = guardduty("POST", "/detector/{detectorId}/member", args)

"""
    ListOrganizationAdminAccounts()

Lists the accounts configured as GuardDuty delegated administrators.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in the response.",
  "NextToken": "A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page."
}
"""

ListOrganizationAdminAccounts() = guardduty("GET", "/admin")
ListOrganizationAdminAccounts(args) = guardduty("GET", "/admin", args)

"""
    CreateDetector()

Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.

Required Parameters
{
  "Enable": "A Boolean value that specifies whether the detector is to be enabled."
}

Optional Parameters
{
  "DataSources": "An object that describes which data sources will be enabled for the detector.",
  "FindingPublishingFrequency": "An enum value that specifies how frequently updated findings are exported.",
  "Tags": "The tags to be added to a new detector resource.",
  "ClientToken": "The idempotency token for the create request."
}
"""
CreateDetector(args) = guardduty("POST", "/detector", args)

"""
    GetInvitationsCount()

Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
"""

GetInvitationsCount() = guardduty("GET", "/invitation/count")
GetInvitationsCount(args) = guardduty("GET", "/invitation/count", args)

"""
    TagResource()

Adds tags to a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.",
  "Tags": "The tags to be added to a resource."
}
"""
TagResource(args) = guardduty("POST", "/tags/{resourceArn}", args)

"""
    DeleteFilter()

Deletes the filter specified by the filter name.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the filter is associated with.",
  "FilterName": "The name of the filter that you want to delete."
}
"""
DeleteFilter(args) = guardduty("DELETE", "/detector/{detectorId}/filter/{filterName}", args)

"""
    DeleteThreatIntelSet()

Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the threatIntelSet is associated with.",
  "ThreatIntelSetId": "The unique ID of the threatIntelSet that you want to delete."
}
"""
DeleteThreatIntelSet(args) = guardduty("DELETE", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
    ListFilters()

Returns a paginated list of the current filters.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the filter is associated with."
}

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data."
}
"""
ListFilters(args) = guardduty("GET", "/detector/{detectorId}/filter", args)

"""
    GetFindingsStatistics()

Lists Amazon GuardDuty findings statistics for the specified detector ID.

Required Parameters
{
  "DetectorId": "The ID of the detector that specifies the GuardDuty service whose findings' statistics you want to retrieve.",
  "FindingStatisticTypes": "The types of finding statistics to retrieve."
}

Optional Parameters
{
  "FindingCriteria": "Represents the criteria that is used for querying findings."
}
"""
GetFindingsStatistics(args) = guardduty("POST", "/detector/{detectorId}/findings/statistics", args)

"""
    ListThreatIntelSets()

Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the threatIntelSet is associated with."
}

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter to paginate results in the response. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data."
}
"""
ListThreatIntelSets(args) = guardduty("GET", "/detector/{detectorId}/threatintelset", args)

"""
    ListFindings()

Lists Amazon GuardDuty findings for the specified detector ID.

Required Parameters
{
  "DetectorId": "The ID of the detector that specifies the GuardDuty service whose findings you want to list."
}

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.",
  "FindingCriteria": "Represents the criteria used for querying findings. Valid values include:   JSON field name   accountId   region   confidence   id   resource.accessKeyDetails.accessKeyId   resource.accessKeyDetails.principalId   resource.accessKeyDetails.userName   resource.accessKeyDetails.userType   resource.instanceDetails.iamInstanceProfile.id   resource.instanceDetails.imageId   resource.instanceDetails.instanceId   resource.instanceDetails.networkInterfaces.ipv6Addresses   resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress   resource.instanceDetails.networkInterfaces.publicDnsName   resource.instanceDetails.networkInterfaces.publicIp   resource.instanceDetails.networkInterfaces.securityGroups.groupId   resource.instanceDetails.networkInterfaces.securityGroups.groupName   resource.instanceDetails.networkInterfaces.subnetId   resource.instanceDetails.networkInterfaces.vpcId   resource.instanceDetails.tags.key   resource.instanceDetails.tags.value   resource.resourceType   service.action.actionType   service.action.awsApiCallAction.api   service.action.awsApiCallAction.callerType   service.action.awsApiCallAction.remoteIpDetails.city.cityName   service.action.awsApiCallAction.remoteIpDetails.country.countryName   service.action.awsApiCallAction.remoteIpDetails.ipAddressV4   service.action.awsApiCallAction.remoteIpDetails.organization.asn   service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg   service.action.awsApiCallAction.serviceName   service.action.dnsRequestAction.domain   service.action.networkConnectionAction.blocked   service.action.networkConnectionAction.connectionDirection   service.action.networkConnectionAction.localPortDetails.port   service.action.networkConnectionAction.protocol   service.action.networkConnectionAction.remoteIpDetails.city.cityName   service.action.networkConnectionAction.remoteIpDetails.country.countryName   service.action.networkConnectionAction.remoteIpDetails.ipAddressV4   service.action.networkConnectionAction.remoteIpDetails.organization.asn   service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg   service.action.networkConnectionAction.remotePortDetails.port   service.additionalInfo.threatListName   service.archived When this attribute is set to 'true', only archived findings are listed. When it's set to 'false', only unarchived findings are listed. When this attribute is not set, all existing findings are listed.   service.resourceRole   severity   type   updatedAt Type: Timestamp in Unix Epoch millisecond format: 1486685375000  ",
  "SortCriteria": "Represents the criteria used for sorting findings."
}
"""
ListFindings(args) = guardduty("POST", "/detector/{detectorId}/findings", args)

"""
    ListInvitations()

Lists all GuardDuty membership invitations that were sent to the current AWS account.

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data."
}
"""

ListInvitations() = guardduty("GET", "/invitation")
ListInvitations(args) = guardduty("GET", "/invitation", args)

"""
    UnarchiveFindings()

Unarchives GuardDuty findings specified by the findingIds.

Required Parameters
{
  "FindingIds": "The IDs of the findings to unarchive.",
  "DetectorId": "The ID of the detector associated with the findings to unarchive."
}
"""
UnarchiveFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/unarchive", args)

"""
    ListIPSets()

Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the IPSet is associated with."
}

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data."
}
"""
ListIPSets(args) = guardduty("GET", "/detector/{detectorId}/ipset", args)

"""
    DescribePublishingDestination()

Returns information about the publishing destination specified by the provided destinationId.

Required Parameters
{
  "DestinationId": "The ID of the publishing destination to retrieve.",
  "DetectorId": "The unique ID of the detector associated with the publishing destination to retrieve."
}
"""
DescribePublishingDestination(args) = guardduty("GET", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
    UpdatePublishingDestination()

Updates information about the publishing destination specified by the destinationId.

Required Parameters
{
  "DestinationId": "The ID of the publishing destination to update.",
  "DetectorId": "The ID of the detector associated with the publishing destinations to update."
}

Optional Parameters
{
  "DestinationProperties": "A DestinationProperties object that includes the DestinationArn and KmsKeyArn of the publishing destination."
}
"""
UpdatePublishingDestination(args) = guardduty("POST", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
    UntagResource()

Removes tags from a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource to remove tags from.",
  "TagKeys": "The tag keys to remove from the resource."
}
"""
UntagResource(args) = guardduty("DELETE", "/tags/{resourceArn}", args)

"""
    ListMembers()

Lists details about all member accounts for the current GuardDuty master account.

Required Parameters
{
  "DetectorId": "The unique ID of the detector the member is associated with."
}

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.",
  "OnlyAssociated": "Specifies whether to only return associated members or to return all members (including members who haven't been invited yet or have been disassociated)."
}
"""
ListMembers(args) = guardduty("GET", "/detector/{detectorId}/member", args)

"""
    GetIPSet()

Retrieves the IPSet specified by the ipSetId.

Required Parameters
{
  "IpSetId": "The unique ID of the IPSet to retrieve.",
  "DetectorId": "The unique ID of the detector that the IPSet is associated with."
}
"""
GetIPSet(args) = guardduty("GET", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
    DeleteInvitations()

Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.

Required Parameters
{
  "AccountIds": "A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from."
}
"""
DeleteInvitations(args) = guardduty("POST", "/invitation/delete", args)

"""
    DeleteMembers()

Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty account whose members you want to delete.",
  "AccountIds": "A list of account IDs of the GuardDuty member accounts that you want to delete."
}
"""
DeleteMembers(args) = guardduty("POST", "/detector/{detectorId}/member/delete", args)

"""
    GetMasterAccount()

Provides the details for the GuardDuty master account associated with the current GuardDuty member account.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty member account."
}
"""
GetMasterAccount(args) = guardduty("GET", "/detector/{detectorId}/master", args)

"""
    UpdateMemberDetectors()

Contains information on member accounts to be updated.

Required Parameters
{
  "DetectorId": "The detector ID of the master account.",
  "AccountIds": "A list of member account IDs to be updated."
}

Optional Parameters
{
  "DataSources": "An object describes which data sources will be updated."
}
"""
UpdateMemberDetectors(args) = guardduty("POST", "/detector/{detectorId}/member/detector/update", args)

"""
    CreateSampleFindings()

Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.

Required Parameters
{
  "DetectorId": "The ID of the detector to create sample findings for."
}

Optional Parameters
{
  "FindingTypes": "The types of sample findings to generate."
}
"""
CreateSampleFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/create", args)

"""
    DescribeOrganizationConfiguration()

Returns information about the account selected as the delegated administrator for GuardDuty.

Required Parameters
{
  "DetectorId": "The ID of the detector to retrieve information about the delegated administrator from."
}
"""
DescribeOrganizationConfiguration(args) = guardduty("GET", "/detector/{detectorId}/admin", args)

"""
    ListTagsForResource()

Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the given GuardDuty resource. "
}
"""
ListTagsForResource(args) = guardduty("GET", "/tags/{resourceArn}", args)

"""
    GetUsageStatistics()

Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources the cost returned will include only the usage so far under 30 days, this may differ from the cost metrics in the console, which projects usage over 30 days to provide a monthly cost estimate. For more information see Understanding How Usage Costs are Calculated.

Required Parameters
{
  "UsageCriteria": "Represents the criteria used for querying usage.",
  "DetectorId": "The ID of the detector that specifies the GuardDuty service whose usage statistics you want to retrieve.",
  "UsageStatisticType": "The type of usage statistics to retrieve."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in the response.",
  "Unit": "The currency unit you would like to view your usage statistics in. Current valid values are USD.",
  "NextToken": "A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page."
}
"""
GetUsageStatistics(args) = guardduty("POST", "/detector/{detectorId}/usage/statistics", args)

"""
    UpdateFindingsFeedback()

Marks the specified GuardDuty findings as useful or not useful.

Required Parameters
{
  "FindingIds": "The IDs of the findings that you want to mark as useful or not useful.",
  "Feedback": "The feedback for the finding.",
  "DetectorId": "The ID of the detector associated with the findings to update feedback for."
}

Optional Parameters
{
  "Comments": "Additional feedback about the GuardDuty findings."
}
"""
UpdateFindingsFeedback(args) = guardduty("POST", "/detector/{detectorId}/findings/feedback", args)

"""
    UpdateIPSet()

Updates the IPSet specified by the IPSet ID.

Required Parameters
{
  "IpSetId": "The unique ID that specifies the IPSet that you want to update.",
  "DetectorId": "The detectorID that specifies the GuardDuty service whose IPSet you want to update."
}

Optional Parameters
{
  "Activate": "The updated Boolean value that specifies whether the IPSet is active or not.",
  "Location": "The updated URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.",
  "Name": "The unique ID that specifies the IPSet that you want to update."
}
"""
UpdateIPSet(args) = guardduty("POST", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
    InviteMembers()

Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty, and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty account that you want to invite members with.",
  "AccountIds": "A list of account IDs of the accounts that you want to invite to GuardDuty as members."
}

Optional Parameters
{
  "Message": "The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.",
  "DisableEmailNotification": "A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members."
}
"""
InviteMembers(args) = guardduty("POST", "/detector/{detectorId}/member/invite", args)

"""
    UpdateFilter()

Updates the filter specified by the filter name.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.",
  "FilterName": "The name of the filter."
}

Optional Parameters
{
  "Description": "The description of the filter.",
  "FindingCriteria": "Represents the criteria to be used in the filter for querying findings.",
  "Action": "Specifies the action that is to be applied to the findings that match the filter.",
  "Rank": "Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings."
}
"""
UpdateFilter(args) = guardduty("POST", "/detector/{detectorId}/filter/{filterName}", args)

"""
    GetThreatIntelSet()

Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the threatIntelSet is associated with.",
  "ThreatIntelSetId": "The unique ID of the threatIntelSet that you want to get."
}
"""
GetThreatIntelSet(args) = guardduty("GET", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
    CreatePublishingDestination()

Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.

Required Parameters
{
  "DestinationType": "The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.",
  "DestinationProperties": "The properties of the publishing destination, including the ARNs for the destination and the KMS key used for encryption.",
  "DetectorId": "The ID of the GuardDuty detector associated with the publishing destination."
}

Optional Parameters
{
  "ClientToken": "The idempotency token for the request."
}
"""
CreatePublishingDestination(args) = guardduty("POST", "/detector/{detectorId}/publishingDestination", args)

"""
    AcceptInvitation()

Accepts the invitation to be monitored by a master GuardDuty account.

Required Parameters
{
  "InvitationId": "The value that is used to validate the master account to the member account.",
  "DetectorId": "The unique ID of the detector of the GuardDuty member account.",
  "MasterId": "The account ID of the master GuardDuty account whose invitation you're accepting."
}
"""
AcceptInvitation(args) = guardduty("POST", "/detector/{detectorId}/master", args)

"""
    DisassociateFromMasterAccount()

Disassociates the current GuardDuty member account from its master account.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty member account."
}
"""
DisassociateFromMasterAccount(args) = guardduty("POST", "/detector/{detectorId}/master/disassociate", args)

"""
    ListDetectors()

Lists detectorIds of all the existing Amazon GuardDuty detector resources.

Optional Parameters
{
  "MaxResults": "You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.",
  "NextToken": "You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data."
}
"""

ListDetectors() = guardduty("GET", "/detector")
ListDetectors(args) = guardduty("GET", "/detector", args)

"""
    UpdateThreatIntelSet()

Updates the ThreatIntelSet specified by the ThreatIntelSet ID.

Required Parameters
{
  "DetectorId": "The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.",
  "ThreatIntelSetId": "The unique ID that specifies the ThreatIntelSet that you want to update."
}

Optional Parameters
{
  "Activate": "The updated Boolean value that specifies whether the ThreateIntelSet is active or not.",
  "Location": "The updated URI of the file that contains the ThreateIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.",
  "Name": "The unique ID that specifies the ThreatIntelSet that you want to update."
}
"""
UpdateThreatIntelSet(args) = guardduty("POST", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
    GetFindings()

Describes Amazon GuardDuty findings specified by finding IDs.

Required Parameters
{
  "FindingIds": "The IDs of the findings that you want to retrieve.",
  "DetectorId": "The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve."
}

Optional Parameters
{
  "SortCriteria": "Represents the criteria used for sorting findings."
}
"""
GetFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/get", args)

"""
    DeletePublishingDestination()

Deletes the publishing definition with the specified destinationId.

Required Parameters
{
  "DestinationId": "The ID of the publishing destination to delete.",
  "DetectorId": "The unique ID of the detector associated with the publishing destination to delete."
}
"""
DeletePublishingDestination(args) = guardduty("DELETE", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
    DisassociateMembers()

Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty account whose members you want to disassociate from the master account.",
  "AccountIds": "A list of account IDs of the GuardDuty member accounts that you want to disassociate from the master account."
}
"""
DisassociateMembers(args) = guardduty("POST", "/detector/{detectorId}/member/disassociate", args)

"""
    ListPublishingDestinations()

Returns a list of publishing destinations associated with the specified dectectorId.

Required Parameters
{
  "DetectorId": "The ID of the detector to retrieve publishing destinations for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in the response.",
  "NextToken": "A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page."
}
"""
ListPublishingDestinations(args) = guardduty("GET", "/detector/{detectorId}/publishingDestination", args)

"""
    CreateThreatIntelSet()

Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.

Required Parameters
{
  "Format": "The format of the file that contains the ThreatIntelSet.",
  "Activate": "A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.",
  "Location": "The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.",
  "DetectorId": "The unique ID of the detector of the GuardDuty account that you want to create a threatIntelSet for.",
  "Name": "A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet."
}

Optional Parameters
{
  "Tags": "The tags to be added to a new threat list resource.",
  "ClientToken": "The idempotency token for the create request."
}
"""
CreateThreatIntelSet(args) = guardduty("POST", "/detector/{detectorId}/threatintelset", args)

"""
    EnableOrganizationAdminAccount()

Enables an AWS account within the organization as the GuardDuty delegated administrator.

Required Parameters
{
  "AdminAccountId": "The AWS Account ID for the organization account to be enabled as a GuardDuty delegated administrator."
}
"""
EnableOrganizationAdminAccount(args) = guardduty("POST", "/admin/enable", args)

"""
    DeleteDetector()

Deletes an Amazon GuardDuty detector that is specified by the detector ID.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that you want to delete."
}
"""
DeleteDetector(args) = guardduty("DELETE", "/detector/{detectorId}", args)

"""
    GetFilter()

Returns the details of the filter specified by the filter name.

Required Parameters
{
  "DetectorId": "The unique ID of the detector that the filter is associated with.",
  "FilterName": "The name of the filter you want to get."
}
"""
GetFilter(args) = guardduty("GET", "/detector/{detectorId}/filter/{filterName}", args)

"""
    ArchiveFindings()

Archives GuardDuty findings that are specified by the list of finding IDs.  Only the master account can archive findings. Member accounts don't have permission to archive findings from their accounts. 

Required Parameters
{
  "FindingIds": "The IDs of the findings that you want to archive.",
  "DetectorId": "The ID of the detector that specifies the GuardDuty service whose findings you want to archive."
}
"""
ArchiveFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/archive", args)

"""
    StartMonitoringMembers()

Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty master account associated with the member accounts to monitor.",
  "AccountIds": "A list of account IDs of the GuardDuty member accounts to start monitoring."
}
"""
StartMonitoringMembers(args) = guardduty("POST", "/detector/{detectorId}/member/start", args)

"""
    DeclineInvitations()

Declines invitations sent to the current member account by AWS accounts specified by their account IDs.

Required Parameters
{
  "AccountIds": "A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to decline invitations from."
}
"""
DeclineInvitations(args) = guardduty("POST", "/invitation/decline", args)

"""
    StopMonitoringMembers()

Stops GuardDuty monitoring for the specified member accounts. Use the StartMonitoringMembers operation to restart monitoring for those accounts.

Required Parameters
{
  "DetectorId": "The unique ID of the detector associated with the GuardDuty master account that is monitoring member accounts.",
  "AccountIds": "A list of account IDs for the member accounts to stop monitoring."
}
"""
StopMonitoringMembers(args) = guardduty("POST", "/detector/{detectorId}/member/stop", args)

"""
    GetMemberDetectors()

Describes which data sources are enabled for the member account's detector.

Required Parameters
{
  "DetectorId": "The detector ID for the master account.",
  "AccountIds": "The account ID of the member account."
}
"""
GetMemberDetectors(args) = guardduty("POST", "/detector/{detectorId}/member/detector/get", args)

"""
    UpdateOrganizationConfiguration()

Updates the delegated administrator account with the values provided.

Required Parameters
{
  "AutoEnable": "Indicates whether to automatically enable member accounts in the organization.",
  "DetectorId": "The ID of the detector to update the delegated administrator for."
}

Optional Parameters
{
  "DataSources": "An object describes which data sources will be updated."
}
"""
UpdateOrganizationConfiguration(args) = guardduty("POST", "/detector/{detectorId}/admin", args)

"""
    DeleteIPSet()

Deletes the IPSet specified by the ipSetId. IPSets are called trusted IP lists in the console user interface.

Required Parameters
{
  "IpSetId": "The unique ID of the IPSet to delete.",
  "DetectorId": "The unique ID of the detector associated with the IPSet."
}
"""
DeleteIPSet(args) = guardduty("DELETE", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
    CreateFilter()

Creates a filter using the specified finding criteria.

Required Parameters
{
  "FindingCriteria": "Represents the criteria to be used in the filter for querying findings. You can only use the following attributes to query findings:   accountId   region   confidence   id   resource.accessKeyDetails.accessKeyId   resource.accessKeyDetails.principalId   resource.accessKeyDetails.userName   resource.accessKeyDetails.userType   resource.instanceDetails.iamInstanceProfile.id   resource.instanceDetails.imageId   resource.instanceDetails.instanceId   resource.instanceDetails.outpostArn   resource.instanceDetails.networkInterfaces.ipv6Addresses   resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress   resource.instanceDetails.networkInterfaces.publicDnsName   resource.instanceDetails.networkInterfaces.publicIp   resource.instanceDetails.networkInterfaces.securityGroups.groupId   resource.instanceDetails.networkInterfaces.securityGroups.groupName   resource.instanceDetails.networkInterfaces.subnetId   resource.instanceDetails.networkInterfaces.vpcId   resource.instanceDetails.tags.key   resource.instanceDetails.tags.value   resource.resourceType   service.action.actionType   service.action.awsApiCallAction.api   service.action.awsApiCallAction.callerType   service.action.awsApiCallAction.remoteIpDetails.city.cityName   service.action.awsApiCallAction.remoteIpDetails.country.countryName   service.action.awsApiCallAction.remoteIpDetails.ipAddressV4   service.action.awsApiCallAction.remoteIpDetails.organization.asn   service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg   service.action.awsApiCallAction.serviceName   service.action.dnsRequestAction.domain   service.action.networkConnectionAction.blocked   service.action.networkConnectionAction.connectionDirection   service.action.networkConnectionAction.localPortDetails.port   service.action.networkConnectionAction.protocol   service.action.networkConnectionAction.localIpDetails.ipAddressV4   service.action.networkConnectionAction.remoteIpDetails.city.cityName   service.action.networkConnectionAction.remoteIpDetails.country.countryName   service.action.networkConnectionAction.remoteIpDetails.ipAddressV4   service.action.networkConnectionAction.remoteIpDetails.organization.asn   service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg   service.action.networkConnectionAction.remotePortDetails.port   service.additionalInfo.threatListName   service.archived When this attribute is set to TRUE, only archived findings are listed. When it's set to FALSE, only unarchived findings are listed. When this attribute is not set, all existing findings are listed.   service.resourceRole   severity   type   updatedAt Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains milliseconds.  ",
  "DetectorId": "The unique ID of the detector of the GuardDuty account that you want to create a filter for.",
  "Name": "The name of the filter."
}

Optional Parameters
{
  "Description": "The description of the filter.",
  "Tags": "The tags to be added to a new filter resource.",
  "ClientToken": "The idempotency token for the create request.",
  "Action": "Specifies the action that is to be applied to the findings that match the filter.",
  "Rank": "Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings."
}
"""
CreateFilter(args) = guardduty("POST", "/detector/{detectorId}/filter", args)

"""
    UpdateDetector()

Updates the Amazon GuardDuty detector specified by the detectorId.

Required Parameters
{
  "DetectorId": "The unique ID of the detector to update."
}

Optional Parameters
{
  "DataSources": "An object that describes which data sources will be updated.",
  "FindingPublishingFrequency": "An enum value that specifies how frequently findings are exported, such as to CloudWatch Events.",
  "Enable": "Specifies whether the detector is enabled or not enabled."
}
"""
UpdateDetector(args) = guardduty("POST", "/detector/{detectorId}", args)

"""
    GetMembers()

Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters
{
  "DetectorId": "The unique ID of the detector of the GuardDuty account whose members you want to retrieve.",
  "AccountIds": "A list of account IDs of the GuardDuty member accounts that you want to describe."
}
"""
GetMembers(args) = guardduty("POST", "/detector/{detectorId}/member/get", args)
