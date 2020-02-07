include("../AWSCorePrototypeServices.jl")
using .Services: guardduty

"""
Retrieves an Amazon GuardDuty detector specified by the detectorId.
"""
GetDetector(DetectorId) = guardduty("GET", "/detector/$detectorId")
GetDetector(DetectorId, args) = guardduty("GET", "/detector/$detectorId", args)
GetDetector(a...; b...) = GetDetector(a..., b)

"""
Creates a new IPSet, called Trusted IP list in the consoler user interface. An IPSet is a list IP addresses trusted for secure communication with AWS infrastructure and applications. GuardDuty does not generate findings for IP addresses included in IPSets. Only users from the master account can use this operation.
"""
CreateIPSet(DetectorId, Name, Format, Location, Activate) = guardduty("POST", "/detector/$detectorId/ipset")
CreateIPSet(DetectorId, Name, Format, Location, Activate, args) = guardduty("POST", "/detector/$detectorId/ipset", args)
CreateIPSet(a...; b...) = CreateIPSet(a..., b)

"""
Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
"""
CreateMembers(DetectorId, AccountDetails) = guardduty("POST", "/detector/$detectorId/member")
CreateMembers(DetectorId, AccountDetails, args) = guardduty("POST", "/detector/$detectorId/member", args)
CreateMembers(a...; b...) = CreateMembers(a..., b)

"""
Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each region that you enable the service. You can have only one detector per account per region.
"""
CreateDetector(Enable) = guardduty("POST", "/detector")
CreateDetector(Enable, args) = guardduty("POST", "/detector", args)
CreateDetector(a...; b...) = CreateDetector(a..., b)

"""
Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
"""
GetInvitationsCount() = guardduty("GET", "/invitation/count")
GetInvitationsCount(, args) = guardduty("GET", "/invitation/count", args)
GetInvitationsCount(a...; b...) = GetInvitationsCount(a..., b)

"""
Adds tags to a resource.
"""
TagResource(ResourceArn, Tags) = guardduty("POST", "/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = guardduty("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Deletes the filter specified by the filter name.
"""
DeleteFilter(DetectorId, FilterName) = guardduty("DELETE", "/detector/$detectorId/filter/$filterName")
DeleteFilter(DetectorId, FilterName, args) = guardduty("DELETE", "/detector/$detectorId/filter/$filterName", args)
DeleteFilter(a...; b...) = DeleteFilter(a..., b)

"""
Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
"""
DeleteThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("DELETE", "/detector/$detectorId/threatintelset/$threatIntelSetId")
DeleteThreatIntelSet(DetectorId, ThreatIntelSetId, args) = guardduty("DELETE", "/detector/$detectorId/threatintelset/$threatIntelSetId", args)
DeleteThreatIntelSet(a...; b...) = DeleteThreatIntelSet(a..., b)

"""
Returns a paginated list of the current filters.
"""
ListFilters(DetectorId) = guardduty("GET", "/detector/$detectorId/filter")
ListFilters(DetectorId, args) = guardduty("GET", "/detector/$detectorId/filter", args)
ListFilters(a...; b...) = ListFilters(a..., b)

"""
Lists Amazon GuardDuty findings' statistics for the specified detector ID.
"""
GetFindingsStatistics(DetectorId, FindingStatisticTypes) = guardduty("POST", "/detector/$detectorId/findings/statistics")
GetFindingsStatistics(DetectorId, FindingStatisticTypes, args) = guardduty("POST", "/detector/$detectorId/findings/statistics", args)
GetFindingsStatistics(a...; b...) = GetFindingsStatistics(a..., b)

"""
Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
"""
ListThreatIntelSets(DetectorId) = guardduty("GET", "/detector/$detectorId/threatintelset")
ListThreatIntelSets(DetectorId, args) = guardduty("GET", "/detector/$detectorId/threatintelset", args)
ListThreatIntelSets(a...; b...) = ListThreatIntelSets(a..., b)

"""
Lists Amazon GuardDuty findings for the specified detector ID.
"""
ListFindings(DetectorId) = guardduty("POST", "/detector/$detectorId/findings")
ListFindings(DetectorId, args) = guardduty("POST", "/detector/$detectorId/findings", args)
ListFindings(a...; b...) = ListFindings(a..., b)

"""
Lists all GuardDuty membership invitations that were sent to the current AWS account.
"""
ListInvitations() = guardduty("GET", "/invitation")
ListInvitations(, args) = guardduty("GET", "/invitation", args)
ListInvitations(a...; b...) = ListInvitations(a..., b)

"""
Unarchives GuardDuty findings specified by the findingIds.
"""
UnarchiveFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/unarchive")
UnarchiveFindings(DetectorId, FindingIds, args) = guardduty("POST", "/detector/$detectorId/findings/unarchive", args)
UnarchiveFindings(a...; b...) = UnarchiveFindings(a..., b)

"""
Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
"""
ListIPSets(DetectorId) = guardduty("GET", "/detector/$detectorId/ipset")
ListIPSets(DetectorId, args) = guardduty("GET", "/detector/$detectorId/ipset", args)
ListIPSets(a...; b...) = ListIPSets(a..., b)

"""
Returns information about the publishing destination specified by the provided destinationId.
"""
DescribePublishingDestination(DetectorId, DestinationId) = guardduty("GET", "/detector/$detectorId/publishingDestination/$destinationId")
DescribePublishingDestination(DetectorId, DestinationId, args) = guardduty("GET", "/detector/$detectorId/publishingDestination/$destinationId", args)
DescribePublishingDestination(a...; b...) = DescribePublishingDestination(a..., b)

"""
Updates information about the publishing destination specified by the destinationId.
"""
UpdatePublishingDestination(DetectorId, DestinationId) = guardduty("POST", "/detector/$detectorId/publishingDestination/$destinationId")
UpdatePublishingDestination(DetectorId, DestinationId, args) = guardduty("POST", "/detector/$detectorId/publishingDestination/$destinationId", args)
UpdatePublishingDestination(a...; b...) = UpdatePublishingDestination(a..., b)

"""
Removes tags from a resource.
"""
UntagResource(ResourceArn, TagKeys) = guardduty("DELETE", "/tags/$resourceArn")
UntagResource(ResourceArn, TagKeys, args) = guardduty("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Lists details about all member accounts for the current GuardDuty master account.
"""
ListMembers(DetectorId) = guardduty("GET", "/detector/$detectorId/member")
ListMembers(DetectorId, args) = guardduty("GET", "/detector/$detectorId/member", args)
ListMembers(a...; b...) = ListMembers(a..., b)

"""
Retrieves the IPSet specified by the ipSetId.
"""
GetIPSet(DetectorId, IpSetId) = guardduty("GET", "/detector/$detectorId/ipset/$ipSetId")
GetIPSet(DetectorId, IpSetId, args) = guardduty("GET", "/detector/$detectorId/ipset/$ipSetId", args)
GetIPSet(a...; b...) = GetIPSet(a..., b)

"""
Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
"""
DeleteInvitations(AccountIds) = guardduty("POST", "/invitation/delete")
DeleteInvitations(AccountIds, args) = guardduty("POST", "/invitation/delete", args)
DeleteInvitations(a...; b...) = DeleteInvitations(a..., b)

"""
Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
DeleteMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/delete")
DeleteMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/delete", args)
DeleteMembers(a...; b...) = DeleteMembers(a..., b)

"""
Provides the details for the GuardDuty master account associated with the current GuardDuty member account.
"""
GetMasterAccount(DetectorId) = guardduty("GET", "/detector/$detectorId/master")
GetMasterAccount(DetectorId, args) = guardduty("GET", "/detector/$detectorId/master", args)
GetMasterAccount(a...; b...) = GetMasterAccount(a..., b)

"""
Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
"""
CreateSampleFindings(DetectorId) = guardduty("POST", "/detector/$detectorId/findings/create")
CreateSampleFindings(DetectorId, args) = guardduty("POST", "/detector/$detectorId/findings/create", args)
CreateSampleFindings(a...; b...) = CreateSampleFindings(a..., b)

"""
Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and Threat Intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource..
"""
ListTagsForResource(ResourceArn) = guardduty("GET", "/tags/$resourceArn")
ListTagsForResource(ResourceArn, args) = guardduty("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Marks the specified GuardDuty findings as useful or not useful.
"""
UpdateFindingsFeedback(DetectorId, FindingIds, Feedback) = guardduty("POST", "/detector/$detectorId/findings/feedback")
UpdateFindingsFeedback(DetectorId, FindingIds, Feedback, args) = guardduty("POST", "/detector/$detectorId/findings/feedback", args)
UpdateFindingsFeedback(a...; b...) = UpdateFindingsFeedback(a..., b)

"""
Updates the IPSet specified by the IPSet ID.
"""
UpdateIPSet(DetectorId, IpSetId) = guardduty("POST", "/detector/$detectorId/ipset/$ipSetId")
UpdateIPSet(DetectorId, IpSetId, args) = guardduty("POST", "/detector/$detectorId/ipset/$ipSetId", args)
UpdateIPSet(a...; b...) = UpdateIPSet(a..., b)

"""
Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
"""
InviteMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/invite")
InviteMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/invite", args)
InviteMembers(a...; b...) = InviteMembers(a..., b)

"""
Updates the filter specified by the filter name.
"""
UpdateFilter(DetectorId, FilterName) = guardduty("POST", "/detector/$detectorId/filter/$filterName")
UpdateFilter(DetectorId, FilterName, args) = guardduty("POST", "/detector/$detectorId/filter/$filterName", args)
UpdateFilter(a...; b...) = UpdateFilter(a..., b)

"""
Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
"""
GetThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("GET", "/detector/$detectorId/threatintelset/$threatIntelSetId")
GetThreatIntelSet(DetectorId, ThreatIntelSetId, args) = guardduty("GET", "/detector/$detectorId/threatintelset/$threatIntelSetId", args)
GetThreatIntelSet(a...; b...) = GetThreatIntelSet(a..., b)

"""
Creates a publishing destination to send findings to. The resource to send findings to must exist before you use this operation.
"""
CreatePublishingDestination(DetectorId, DestinationType, DestinationProperties) = guardduty("POST", "/detector/$detectorId/publishingDestination")
CreatePublishingDestination(DetectorId, DestinationType, DestinationProperties, args) = guardduty("POST", "/detector/$detectorId/publishingDestination", args)
CreatePublishingDestination(a...; b...) = CreatePublishingDestination(a..., b)

"""
Accepts the invitation to be monitored by a master GuardDuty account.
"""
AcceptInvitation(DetectorId, MasterId, InvitationId) = guardduty("POST", "/detector/$detectorId/master")
AcceptInvitation(DetectorId, MasterId, InvitationId, args) = guardduty("POST", "/detector/$detectorId/master", args)
AcceptInvitation(a...; b...) = AcceptInvitation(a..., b)

"""
Disassociates the current GuardDuty member account from its master account.
"""
DisassociateFromMasterAccount(DetectorId) = guardduty("POST", "/detector/$detectorId/master/disassociate")
DisassociateFromMasterAccount(DetectorId, args) = guardduty("POST", "/detector/$detectorId/master/disassociate", args)
DisassociateFromMasterAccount(a...; b...) = DisassociateFromMasterAccount(a..., b)

"""
Lists detectorIds of all the existing Amazon GuardDuty detector resources.
"""
ListDetectors() = guardduty("GET", "/detector")
ListDetectors(, args) = guardduty("GET", "/detector", args)
ListDetectors(a...; b...) = ListDetectors(a..., b)

"""
Updates the ThreatIntelSet specified by ThreatIntelSet ID.
"""
UpdateThreatIntelSet(DetectorId, ThreatIntelSetId) = guardduty("POST", "/detector/$detectorId/threatintelset/$threatIntelSetId")
UpdateThreatIntelSet(DetectorId, ThreatIntelSetId, args) = guardduty("POST", "/detector/$detectorId/threatintelset/$threatIntelSetId", args)
UpdateThreatIntelSet(a...; b...) = UpdateThreatIntelSet(a..., b)

"""
Describes Amazon GuardDuty findings specified by finding IDs.
"""
GetFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/get")
GetFindings(DetectorId, FindingIds, args) = guardduty("POST", "/detector/$detectorId/findings/get", args)
GetFindings(a...; b...) = GetFindings(a..., b)

"""
Deletes the publishing definition with the specified destinationId.
"""
DeletePublishingDestination(DetectorId, DestinationId) = guardduty("DELETE", "/detector/$detectorId/publishingDestination/$destinationId")
DeletePublishingDestination(DetectorId, DestinationId, args) = guardduty("DELETE", "/detector/$detectorId/publishingDestination/$destinationId", args)
DeletePublishingDestination(a...; b...) = DeletePublishingDestination(a..., b)

"""
Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
DisassociateMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/disassociate")
DisassociateMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/disassociate", args)
DisassociateMembers(a...; b...) = DisassociateMembers(a..., b)

"""
Returns a list of publishing destinations associated with the specified dectectorId.
"""
ListPublishingDestinations(DetectorId) = guardduty("GET", "/detector/$detectorId/publishingDestination")
ListPublishingDestinations(DetectorId, args) = guardduty("GET", "/detector/$detectorId/publishingDestination", args)
ListPublishingDestinations(a...; b...) = ListPublishingDestinations(a..., b)

"""
Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.
"""
CreateThreatIntelSet(DetectorId, Name, Format, Location, Activate) = guardduty("POST", "/detector/$detectorId/threatintelset")
CreateThreatIntelSet(DetectorId, Name, Format, Location, Activate, args) = guardduty("POST", "/detector/$detectorId/threatintelset", args)
CreateThreatIntelSet(a...; b...) = CreateThreatIntelSet(a..., b)

"""
Deletes a Amazon GuardDuty detector specified by the detector ID.
"""
DeleteDetector(DetectorId) = guardduty("DELETE", "/detector/$detectorId")
DeleteDetector(DetectorId, args) = guardduty("DELETE", "/detector/$detectorId", args)
DeleteDetector(a...; b...) = DeleteDetector(a..., b)

"""
Returns the details of the filter specified by the filter name.
"""
GetFilter(DetectorId, FilterName) = guardduty("GET", "/detector/$detectorId/filter/$filterName")
GetFilter(DetectorId, FilterName, args) = guardduty("GET", "/detector/$detectorId/filter/$filterName", args)
GetFilter(a...; b...) = GetFilter(a..., b)

"""
Archives GuardDuty findings specified by the list of finding IDs.  Only the master account can archive findings. Member accounts do not have permission to archive findings from their accounts. 
"""
ArchiveFindings(DetectorId, FindingIds) = guardduty("POST", "/detector/$detectorId/findings/archive")
ArchiveFindings(DetectorId, FindingIds, args) = guardduty("POST", "/detector/$detectorId/findings/archive", args)
ArchiveFindings(a...; b...) = ArchiveFindings(a..., b)

"""
Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.
"""
StartMonitoringMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/start")
StartMonitoringMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/start", args)
StartMonitoringMembers(a...; b...) = StartMonitoringMembers(a..., b)

"""
Declines invitations sent to the current member account by AWS account specified by their account IDs.
"""
DeclineInvitations(AccountIds) = guardduty("POST", "/invitation/decline")
DeclineInvitations(AccountIds, args) = guardduty("POST", "/invitation/decline", args)
DeclineInvitations(a...; b...) = DeclineInvitations(a..., b)

"""
Stops GuardDuty monitoring for the specified member accounnts. Use the StartMonitoringMembers to restart monitoring for those accounts.
"""
StopMonitoringMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/stop")
StopMonitoringMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/stop", args)
StopMonitoringMembers(a...; b...) = StopMonitoringMembers(a..., b)

"""
Deletes the IPSet specified by the ipSetId. IPSets are called Trusted IP lists in the console user interface.
"""
DeleteIPSet(DetectorId, IpSetId) = guardduty("DELETE", "/detector/$detectorId/ipset/$ipSetId")
DeleteIPSet(DetectorId, IpSetId, args) = guardduty("DELETE", "/detector/$detectorId/ipset/$ipSetId", args)
DeleteIPSet(a...; b...) = DeleteIPSet(a..., b)

"""
Creates a filter using the specified finding criteria.
"""
CreateFilter(DetectorId, Name, FindingCriteria) = guardduty("POST", "/detector/$detectorId/filter")
CreateFilter(DetectorId, Name, FindingCriteria, args) = guardduty("POST", "/detector/$detectorId/filter", args)
CreateFilter(a...; b...) = CreateFilter(a..., b)

"""
Updates the Amazon GuardDuty detector specified by the detectorId.
"""
UpdateDetector(DetectorId) = guardduty("POST", "/detector/$detectorId")
UpdateDetector(DetectorId, args) = guardduty("POST", "/detector/$detectorId", args)
UpdateDetector(a...; b...) = UpdateDetector(a..., b)

"""
Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
"""
GetMembers(DetectorId, AccountIds) = guardduty("POST", "/detector/$detectorId/member/get")
GetMembers(DetectorId, AccountIds, args) = guardduty("POST", "/detector/$detectorId/member/get", args)
GetMembers(a...; b...) = GetMembers(a..., b)
