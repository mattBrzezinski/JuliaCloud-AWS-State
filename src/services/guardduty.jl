include("../AWSCorePrototypeServices.jl")
using .Services: guardduty

"""
Retrieves an Amazon GuardDuty detector specified by the detectorId.

Required Parameters:
DetectorId
"""
GetDetector(args) = guardduty("GET", "/detector/{detectorId}", args)

"""
Creates a new IPSet, called Trusted IP list in the consoler user interface. An IPSet is a list IP addresses trusted for secure communication with AWS infrastructure and applications. GuardDuty does not generate findings for IP addresses included in IPSets. Only users from the master account can use this operation.

Required Parameters:
DetectorId, Name, Format, Location, Activate
"""
CreateIPSet(args) = guardduty("POST", "/detector/{detectorId}/ipset", args)

"""
Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.

Required Parameters:
DetectorId, AccountDetails
"""
CreateMembers(args) = guardduty("POST", "/detector/{detectorId}/member", args)

"""
Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each region that you enable the service. You can have only one detector per account per region.

Required Parameters:
Enable
"""
CreateDetector(args) = guardduty("POST", "/detector", args)

"""
Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
"""
GetInvitationsCount() = guardduty("GET", "/invitation/count")

"""
Adds tags to a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = guardduty("POST", "/tags/{resourceArn}", args)

"""
Deletes the filter specified by the filter name.

Required Parameters:
DetectorId, FilterName
"""
DeleteFilter(args) = guardduty("DELETE", "/detector/{detectorId}/filter/{filterName}", args)

"""
Deletes ThreatIntelSet specified by the ThreatIntelSet ID.

Required Parameters:
DetectorId, ThreatIntelSetId
"""
DeleteThreatIntelSet(args) = guardduty("DELETE", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
Returns a paginated list of the current filters.

Required Parameters:
DetectorId
"""
ListFilters(args) = guardduty("GET", "/detector/{detectorId}/filter", args)

"""
Lists Amazon GuardDuty findings' statistics for the specified detector ID.

Required Parameters:
DetectorId, FindingStatisticTypes
"""
GetFindingsStatistics(args) = guardduty("POST", "/detector/{detectorId}/findings/statistics", args)

"""
Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.

Required Parameters:
DetectorId
"""
ListThreatIntelSets(args) = guardduty("GET", "/detector/{detectorId}/threatintelset", args)

"""
Lists Amazon GuardDuty findings for the specified detector ID.

Required Parameters:
DetectorId
"""
ListFindings(args) = guardduty("POST", "/detector/{detectorId}/findings", args)

"""
Lists all GuardDuty membership invitations that were sent to the current AWS account.
"""
ListInvitations() = guardduty("GET", "/invitation")

"""
Unarchives GuardDuty findings specified by the findingIds.

Required Parameters:
DetectorId, FindingIds
"""
UnarchiveFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/unarchive", args)

"""
Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.

Required Parameters:
DetectorId
"""
ListIPSets(args) = guardduty("GET", "/detector/{detectorId}/ipset", args)

"""
Returns information about the publishing destination specified by the provided destinationId.

Required Parameters:
DetectorId, DestinationId
"""
DescribePublishingDestination(args) = guardduty("GET", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
Updates information about the publishing destination specified by the destinationId.

Required Parameters:
DetectorId, DestinationId
"""
UpdatePublishingDestination(args) = guardduty("POST", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
Removes tags from a resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = guardduty("DELETE", "/tags/{resourceArn}", args)

"""
Lists details about all member accounts for the current GuardDuty master account.

Required Parameters:
DetectorId
"""
ListMembers(args) = guardduty("GET", "/detector/{detectorId}/member", args)

"""
Retrieves the IPSet specified by the ipSetId.

Required Parameters:
DetectorId, IpSetId
"""
GetIPSet(args) = guardduty("GET", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.

Required Parameters:
AccountIds
"""
DeleteInvitations(args) = guardduty("POST", "/invitation/delete", args)

"""
Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters:
DetectorId, AccountIds
"""
DeleteMembers(args) = guardduty("POST", "/detector/{detectorId}/member/delete", args)

"""
Provides the details for the GuardDuty master account associated with the current GuardDuty member account.

Required Parameters:
DetectorId
"""
GetMasterAccount(args) = guardduty("GET", "/detector/{detectorId}/master", args)

"""
Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.

Required Parameters:
DetectorId
"""
CreateSampleFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/create", args)

"""
Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and Threat Intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource..

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = guardduty("GET", "/tags/{resourceArn}", args)

"""
Marks the specified GuardDuty findings as useful or not useful.

Required Parameters:
DetectorId, FindingIds, Feedback
"""
UpdateFindingsFeedback(args) = guardduty("POST", "/detector/{detectorId}/findings/feedback", args)

"""
Updates the IPSet specified by the IPSet ID.

Required Parameters:
DetectorId, IpSetId
"""
UpdateIPSet(args) = guardduty("POST", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.

Required Parameters:
DetectorId, AccountIds
"""
InviteMembers(args) = guardduty("POST", "/detector/{detectorId}/member/invite", args)

"""
Updates the filter specified by the filter name.

Required Parameters:
DetectorId, FilterName
"""
UpdateFilter(args) = guardduty("POST", "/detector/{detectorId}/filter/{filterName}", args)

"""
Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.

Required Parameters:
DetectorId, ThreatIntelSetId
"""
GetThreatIntelSet(args) = guardduty("GET", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
Creates a publishing destination to send findings to. The resource to send findings to must exist before you use this operation.

Required Parameters:
DetectorId, DestinationType, DestinationProperties
"""
CreatePublishingDestination(args) = guardduty("POST", "/detector/{detectorId}/publishingDestination", args)

"""
Accepts the invitation to be monitored by a master GuardDuty account.

Required Parameters:
DetectorId, MasterId, InvitationId
"""
AcceptInvitation(args) = guardduty("POST", "/detector/{detectorId}/master", args)

"""
Disassociates the current GuardDuty member account from its master account.

Required Parameters:
DetectorId
"""
DisassociateFromMasterAccount(args) = guardduty("POST", "/detector/{detectorId}/master/disassociate", args)

"""
Lists detectorIds of all the existing Amazon GuardDuty detector resources.
"""
ListDetectors() = guardduty("GET", "/detector")

"""
Updates the ThreatIntelSet specified by ThreatIntelSet ID.

Required Parameters:
DetectorId, ThreatIntelSetId
"""
UpdateThreatIntelSet(args) = guardduty("POST", "/detector/{detectorId}/threatintelset/{threatIntelSetId}", args)

"""
Describes Amazon GuardDuty findings specified by finding IDs.

Required Parameters:
DetectorId, FindingIds
"""
GetFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/get", args)

"""
Deletes the publishing definition with the specified destinationId.

Required Parameters:
DetectorId, DestinationId
"""
DeletePublishingDestination(args) = guardduty("DELETE", "/detector/{detectorId}/publishingDestination/{destinationId}", args)

"""
Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters:
DetectorId, AccountIds
"""
DisassociateMembers(args) = guardduty("POST", "/detector/{detectorId}/member/disassociate", args)

"""
Returns a list of publishing destinations associated with the specified dectectorId.

Required Parameters:
DetectorId
"""
ListPublishingDestinations(args) = guardduty("GET", "/detector/{detectorId}/publishingDestination", args)

"""
Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.

Required Parameters:
DetectorId, Name, Format, Location, Activate
"""
CreateThreatIntelSet(args) = guardduty("POST", "/detector/{detectorId}/threatintelset", args)

"""
Deletes a Amazon GuardDuty detector specified by the detector ID.

Required Parameters:
DetectorId
"""
DeleteDetector(args) = guardduty("DELETE", "/detector/{detectorId}", args)

"""
Returns the details of the filter specified by the filter name.

Required Parameters:
DetectorId, FilterName
"""
GetFilter(args) = guardduty("GET", "/detector/{detectorId}/filter/{filterName}", args)

"""
Archives GuardDuty findings specified by the list of finding IDs.  Only the master account can archive findings. Member accounts do not have permission to archive findings from their accounts. 

Required Parameters:
DetectorId, FindingIds
"""
ArchiveFindings(args) = guardduty("POST", "/detector/{detectorId}/findings/archive", args)

"""
Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.

Required Parameters:
DetectorId, AccountIds
"""
StartMonitoringMembers(args) = guardduty("POST", "/detector/{detectorId}/member/start", args)

"""
Declines invitations sent to the current member account by AWS account specified by their account IDs.

Required Parameters:
AccountIds
"""
DeclineInvitations(args) = guardduty("POST", "/invitation/decline", args)

"""
Stops GuardDuty monitoring for the specified member accounnts. Use the StartMonitoringMembers to restart monitoring for those accounts.

Required Parameters:
DetectorId, AccountIds
"""
StopMonitoringMembers(args) = guardduty("POST", "/detector/{detectorId}/member/stop", args)

"""
Deletes the IPSet specified by the ipSetId. IPSets are called Trusted IP lists in the console user interface.

Required Parameters:
DetectorId, IpSetId
"""
DeleteIPSet(args) = guardduty("DELETE", "/detector/{detectorId}/ipset/{ipSetId}", args)

"""
Creates a filter using the specified finding criteria.

Required Parameters:
DetectorId, Name, FindingCriteria
"""
CreateFilter(args) = guardduty("POST", "/detector/{detectorId}/filter", args)

"""
Updates the Amazon GuardDuty detector specified by the detectorId.

Required Parameters:
DetectorId
"""
UpdateDetector(args) = guardduty("POST", "/detector/{detectorId}", args)

"""
Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

Required Parameters:
DetectorId, AccountIds
"""
GetMembers(args) = guardduty("POST", "/detector/{detectorId}/member/get", args)
