include("../AWSCorePrototypeServices.jl")
using .Services: alexa_for_business

"""
    GetDevice()

Gets the details of a device by device ARN.

Optional Parameters
{
  "DeviceArn": "The ARN of the device for which to request details. Required."
}
"""

GetDevice() = alexa_for_business("GetDevice")
GetDevice(args) = alexa_for_business("GetDevice", args)

"""
    ListGateways()

Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.

Optional Parameters
{
  "MaxResults": "The maximum number of gateway summaries to return. The default is 50.",
  "NextToken": "The token used to paginate though multiple pages of gateway summaries.",
  "GatewayGroupArn": "The gateway group ARN for which to list gateways."
}
"""

ListGateways() = alexa_for_business("ListGateways")
ListGateways(args) = alexa_for_business("ListGateways", args)

"""
    PutConferencePreference()

Sets the conference preferences on a specific conference provider at the account level.

Required Parameters
{
  "ConferencePreference": "The conference preference of a specific conference provider."
}
"""
PutConferencePreference(args) = alexa_for_business("PutConferencePreference", args)

"""
    SearchNetworkProfiles()

Searches network profiles and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. ",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults. ",
  "SortCriteria": "The sort order to use to list the specified set of network profiles. Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.",
  "Filters": "The filters to use to list a specified set of network profiles. Valid filters are NetworkProfileName, Ssid, and SecurityType."
}
"""

SearchNetworkProfiles() = alexa_for_business("SearchNetworkProfiles")
SearchNetworkProfiles(args) = alexa_for_business("SearchNetworkProfiles", args)

"""
    CreateUser()

Creates a user.

Required Parameters
{
  "UserId": "The ARN for the user."
}

Optional Parameters
{
  "Email": "The email address for the user.",
  "ClientRequestToken": "A unique, user-specified identifier for this request that ensures idempotency. ",
  "Tags": "The tags for the user.",
  "LastName": "The last name for the user.",
  "FirstName": "The first name for the user."
}
"""
CreateUser(args) = alexa_for_business("CreateUser", args)

"""
    DeleteGatewayGroup()

Deletes a gateway group.

Required Parameters
{
  "GatewayGroupArn": "The ARN of the gateway group to delete."
}
"""
DeleteGatewayGroup(args) = alexa_for_business("DeleteGatewayGroup", args)

"""
    SearchProfiles()

Searches room profiles and lists the ones that meet a set of filter criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.",
  "SortCriteria": "The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.",
  "Filters": "The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required. "
}
"""

SearchProfiles() = alexa_for_business("SearchProfiles")
SearchProfiles(args) = alexa_for_business("SearchProfiles", args)

"""
    ApproveSkill()

Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.

Required Parameters
{
  "SkillId": "The unique identifier of the skill."
}
"""
ApproveSkill(args) = alexa_for_business("ApproveSkill", args)

"""
    RegisterAVSDevice()

Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).

Required Parameters
{
  "ClientId": "The client ID of the OEM used for code-based linking authorization on an AVS device.",
  "UserCode": "The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.",
  "ProductId": "The product ID used to identify your AVS device during authorization.",
  "AmazonId": "The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console."
}

Optional Parameters
{
  "DeviceSerialNumber": "The key generated by the OEM that uniquely identifies a specified instance of your AVS device.",
  "RoomArn": "The ARN of the room with which to associate your AVS device."
}
"""
RegisterAVSDevice(args) = alexa_for_business("RegisterAVSDevice", args)

"""
    DeleteRoomSkillParameter()

Deletes room skill parameter details by room, skill, and parameter key ID.

Required Parameters
{
  "SkillId": "The ID of the skill from which to remove the room skill parameter details.",
  "ParameterKey": "The room skill parameter key for which to remove details."
}

Optional Parameters
{
  "RoomArn": "The ARN of the room from which to remove the room skill parameter details."
}
"""
DeleteRoomSkillParameter(args) = alexa_for_business("DeleteRoomSkillParameter", args)

"""
    TagResource()

Adds metadata tags to a specified resource.

Required Parameters
{
  "Arn": "The ARN of the resource to which to add metadata tags. Required. ",
  "Tags": "The tags to be added to the specified resource. Do not provide system tags. Required. "
}
"""
TagResource(args) = alexa_for_business("TagResource", args)

"""
    DeleteContact()

Deletes a contact by the contact ARN.

Required Parameters
{
  "ContactArn": "The ARN of the contact to delete."
}
"""
DeleteContact(args) = alexa_for_business("DeleteContact", args)

"""
    ListSkills()

Lists all enabled skills in a specific skill group.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.",
  "SkillGroupArn": "The ARN of the skill group for which to list enabled skills.",
  "EnablementType": "Whether the skill is enabled under the user's account.",
  "SkillType": "Whether the skill is publicly available or is a private skill."
}
"""

ListSkills() = alexa_for_business("ListSkills")
ListSkills(args) = alexa_for_business("ListSkills", args)

"""
    SearchAddressBooks()

Searches address books and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.",
  "SortCriteria": "The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.",
  "Filters": "The filters to use to list a specified set of address books. The supported filter key is AddressBookName."
}
"""

SearchAddressBooks() = alexa_for_business("SearchAddressBooks")
SearchAddressBooks(args) = alexa_for_business("SearchAddressBooks", args)

"""
    UpdateGatewayGroup()

Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.

Required Parameters
{
  "GatewayGroupArn": "The ARN of the gateway group to update."
}

Optional Parameters
{
  "Description": "The updated description of the gateway group.",
  "Name": "The updated name of the gateway group."
}
"""
UpdateGatewayGroup(args) = alexa_for_business("UpdateGatewayGroup", args)

"""
    AssociateContactWithAddressBook()

Associates a contact with a given address book.

Required Parameters
{
  "ContactArn": "The ARN of the contact to associate with an address book.",
  "AddressBookArn": "The ARN of the address book with which to associate the contact."
}
"""
AssociateContactWithAddressBook(args) = alexa_for_business("AssociateContactWithAddressBook", args)

"""
    UpdateRoom()

Updates room details by room ARN.

Optional Parameters
{
  "RoomName": "The updated name for the room.",
  "Description": "The updated description for the room.",
  "ProviderCalendarId": "The updated provider calendar ARN for the room.",
  "ProfileArn": "The updated profile ARN for the room.",
  "RoomArn": "The ARN of the room to update. "
}
"""

UpdateRoom() = alexa_for_business("UpdateRoom")
UpdateRoom(args) = alexa_for_business("UpdateRoom", args)

"""
    SendAnnouncement()

Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. 

Required Parameters
{
  "ClientRequestToken": "The unique, user-specified identifier for the request that ensures idempotency.",
  "Content": "The announcement content. This can contain only one of the three possible announcement types (text, SSML or audio).",
  "RoomFilters": "The filters to use to send an announcement to a specified list of rooms. The supported filter keys are RoomName, ProfileName, RoomArn, and ProfileArn. To send to all rooms, specify an empty RoomFilters list."
}

Optional Parameters
{
  "TimeToLiveInSeconds": "The time to live for an announcement. Default is 300. If delivery doesn't occur within this time, the announcement is not delivered."
}
"""
SendAnnouncement(args) = alexa_for_business("SendAnnouncement", args)

"""
    CreateConferenceProvider()

Adds a new conference provider under the user's AWS account.

Required Parameters
{
  "ConferenceProviderType": "Represents a type within a list of predefined types.",
  "ConferenceProviderName": "The name of the conference provider.",
  "MeetingSetting": "The meeting settings for the conference provider."
}

Optional Parameters
{
  "ClientRequestToken": "The request token of the client.",
  "IPDialIn": "The IP endpoint and protocol for calling.",
  "PSTNDialIn": "The information for PSTN conferencing."
}
"""
CreateConferenceProvider(args) = alexa_for_business("CreateConferenceProvider", args)

"""
    ListBusinessReportSchedules()

Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.

Optional Parameters
{
  "MaxResults": "The maximum number of schedules listed in the call.",
  "NextToken": "The token used to list the remaining schedules from the previous API call."
}
"""

ListBusinessReportSchedules() = alexa_for_business("ListBusinessReportSchedules")
ListBusinessReportSchedules(args) = alexa_for_business("ListBusinessReportSchedules", args)

"""
    AssociateSkillWithUsers()

Makes a private skill available for enrolled users to enable on their devices.

Required Parameters
{
  "SkillId": "The private skill ID you want to make available to enrolled users."
}
"""
AssociateSkillWithUsers(args) = alexa_for_business("AssociateSkillWithUsers", args)

"""
    CreateGatewayGroup()

Creates a gateway group with the specified details.

Required Parameters
{
  "ClientRequestToken": " A unique, user-specified identifier for the request that ensures idempotency.",
  "Name": "The name of the gateway group."
}

Optional Parameters
{
  "Description": "The description of the gateway group."
}
"""
CreateGatewayGroup(args) = alexa_for_business("CreateGatewayGroup", args)

"""
    CreateContact()

Creates a contact with the specified details.

Required Parameters
{
  "FirstName": "The first name of the contact that is used to call the contact on the device."
}

Optional Parameters
{
  "PhoneNumbers": "The list of phone numbers for the contact.",
  "ClientRequestToken": "A unique, user-specified identifier for this request that ensures idempotency.",
  "PhoneNumber": "The phone number of the contact in E.164 format. The phone number type defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.",
  "DisplayName": "The name of the contact to display on the console.",
  "LastName": "The last name of the contact that is used to call the contact on the device.",
  "SipAddresses": "The list of SIP addresses for the contact."
}
"""
CreateContact(args) = alexa_for_business("CreateContact", args)

"""
    CreateNetworkProfile()

Creates a network profile with the specified details.

Required Parameters
{
  "SecurityType": "The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.",
  "ClientRequestToken": "",
  "Ssid": "The SSID of the Wi-Fi network.",
  "NetworkProfileName": "The name of the network profile associated with a device."
}

Optional Parameters
{
  "CurrentPassword": "The current password of the Wi-Fi network.",
  "Description": "Detailed information about a device's network profile.",
  "CertificateAuthorityArn": "The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices. ",
  "NextPassword": "The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword. ",
  "TrustAnchors": "The root certificates of your authentication server that is installed on your devices and used to trust your authentication server during EAP negotiation. ",
  "EapMethod": "The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported."
}
"""
CreateNetworkProfile(args) = alexa_for_business("CreateNetworkProfile", args)

"""
    DeleteSkillAuthorization()

Unlinks a third-party account from a skill.

Required Parameters
{
  "SkillId": "The unique identifier of a skill."
}

Optional Parameters
{
  "RoomArn": "The room that the skill is authorized for."
}
"""
DeleteSkillAuthorization(args) = alexa_for_business("DeleteSkillAuthorization", args)

"""
    ResolveRoom()

Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.

Required Parameters
{
  "SkillId": "The ARN of the skill that was requested. Required.",
  "UserId": "The ARN of the user. Required."
}
"""
ResolveRoom(args) = alexa_for_business("ResolveRoom", args)

"""
    UpdateConferenceProvider()

Updates an existing conference provider's settings.

Required Parameters
{
  "ConferenceProviderType": "The type of the conference provider.",
  "ConferenceProviderArn": "The ARN of the conference provider.",
  "MeetingSetting": "The meeting settings for the conference provider."
}

Optional Parameters
{
  "IPDialIn": "The IP endpoint and protocol for calling.",
  "PSTNDialIn": "The information for PSTN conferencing."
}
"""
UpdateConferenceProvider(args) = alexa_for_business("UpdateConferenceProvider", args)

"""
    UpdateAddressBook()

Updates address book details by the address book ARN.

Required Parameters
{
  "AddressBookArn": "The ARN of the room to update."
}

Optional Parameters
{
  "Description": "The updated description of the room.",
  "Name": "The updated name of the room."
}
"""
UpdateAddressBook(args) = alexa_for_business("UpdateAddressBook", args)

"""
    ListGatewayGroups()

Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.

Optional Parameters
{
  "MaxResults": "The maximum number of gateway group summaries to return. The default is 50.",
  "NextToken": "The token used to paginate though multiple pages of gateway group summaries."
}
"""

ListGatewayGroups() = alexa_for_business("ListGatewayGroups")
ListGatewayGroups(args) = alexa_for_business("ListGatewayGroups", args)

"""
    DeleteUser()

Deletes a specified user by user ARN and enrollment ARN.

Required Parameters
{
  "EnrollmentId": "The ARN of the user's enrollment in the organization. Required."
}

Optional Parameters
{
  "UserArn": "The ARN of the user to delete in the organization. Required."
}
"""
DeleteUser(args) = alexa_for_business("DeleteUser", args)

"""
    ListSkillsStoreSkillsByCategory()

Lists all skills in the Alexa skill store by category.

Required Parameters
{
  "CategoryId": "The category ID for which the skills are being retrieved from the skill store."
}

Optional Parameters
{
  "MaxResults": "The maximum number of skills returned per paginated calls.",
  "NextToken": "The tokens used for pagination."
}
"""
ListSkillsStoreSkillsByCategory(args) = alexa_for_business("ListSkillsStoreSkillsByCategory", args)

"""
    DeleteBusinessReportSchedule()

Deletes the recurring report delivery schedule with the specified schedule ARN.

Required Parameters
{
  "ScheduleArn": "The ARN of the business report schedule."
}
"""
DeleteBusinessReportSchedule(args) = alexa_for_business("DeleteBusinessReportSchedule", args)

"""
    SearchUsers()

Searches users and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. Required.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults. Required.",
  "SortCriteria": "The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.",
  "Filters": "The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus."
}
"""

SearchUsers() = alexa_for_business("SearchUsers")
SearchUsers(args) = alexa_for_business("SearchUsers", args)

"""
    DeleteConferenceProvider()

Deletes a conference provider.

Required Parameters
{
  "ConferenceProviderArn": "The ARN of the conference provider."
}
"""
DeleteConferenceProvider(args) = alexa_for_business("DeleteConferenceProvider", args)

"""
    UntagResource()

Removes metadata tags from a specified resource.

Required Parameters
{
  "Arn": "The ARN of the resource from which to remove metadata tags. Required. ",
  "TagKeys": "The tags to be removed from the specified resource. Do not provide system tags. Required. "
}
"""
UntagResource(args) = alexa_for_business("UntagResource", args)

"""
    PutRoomSkillParameter()

Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.

Required Parameters
{
  "SkillId": "The ARN of the skill associated with the room skill parameter. Required.",
  "RoomSkillParameter": "The updated room skill parameter. Required."
}

Optional Parameters
{
  "RoomArn": "The ARN of the room associated with the room skill parameter. Required."
}
"""
PutRoomSkillParameter(args) = alexa_for_business("PutRoomSkillParameter", args)

"""
    ListDeviceEvents()

Lists the device event history, including device connection status, for up to 30 days.

Required Parameters
{
  "DeviceArn": "The ARN of a device."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. The default value is 50. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. ",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults. When the end of results is reached, the response has a value of null.",
  "EventType": "The event type to filter device events. If EventType isn't specified, this returns a list of all device events in reverse chronological order. If EventType is specified, this returns a list of device events for that EventType in reverse chronological order. "
}
"""
ListDeviceEvents(args) = alexa_for_business("ListDeviceEvents", args)

"""
    CreateAddressBook()

Creates an address book with the specified details.

Required Parameters
{
  "Name": "The name of the address book."
}

Optional Parameters
{
  "Description": "The description of the address book.",
  "ClientRequestToken": "A unique, user-specified identifier for the request that ensures idempotency."
}
"""
CreateAddressBook(args) = alexa_for_business("CreateAddressBook", args)

"""
    AssociateDeviceWithNetworkProfile()

Associates a device with the specified network profile.

Required Parameters
{
  "NetworkProfileArn": "The ARN of the network profile to associate with a device.",
  "DeviceArn": "The device ARN."
}
"""
AssociateDeviceWithNetworkProfile(args) = alexa_for_business("AssociateDeviceWithNetworkProfile", args)

"""
    CreateRoom()

Creates a room with the specified details.

Required Parameters
{
  "RoomName": "The name for the room."
}

Optional Parameters
{
  "Description": "The description for the room.",
  "ProfileArn": "The profile ARN for the room. This is required.",
  "ProviderCalendarId": "The calendar ARN for the room.",
  "ClientRequestToken": "A unique, user-specified identifier for this request that ensures idempotency. ",
  "Tags": "The tags for the room."
}
"""
CreateRoom(args) = alexa_for_business("CreateRoom", args)

"""
    AssociateSkillGroupWithRoom()

Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.

Optional Parameters
{
  "SkillGroupArn": "The ARN of the skill group to associate with a room. Required.",
  "RoomArn": "The ARN of the room with which to associate the skill group. Required."
}
"""

AssociateSkillGroupWithRoom() = alexa_for_business("AssociateSkillGroupWithRoom")
AssociateSkillGroupWithRoom(args) = alexa_for_business("AssociateSkillGroupWithRoom", args)

"""
    DeleteDevice()

Removes a device from Alexa For Business.

Required Parameters
{
  "DeviceArn": "The ARN of the device for which to request details."
}
"""
DeleteDevice(args) = alexa_for_business("DeleteDevice", args)

"""
    RejectSkill()

Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. 

Required Parameters
{
  "SkillId": "The unique identifier of the skill."
}
"""
RejectSkill(args) = alexa_for_business("RejectSkill", args)

"""
    CreateBusinessReportSchedule()

Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.

Required Parameters
{
  "ContentRange": "The content range of the reports.",
  "Format": "The format of the generated report (individual CSV files or zipped files of individual files)."
}

Optional Parameters
{
  "Recurrence": "The recurrence of the reports. If this isn't specified, the report will only be delivered one time when the API is called. ",
  "ClientRequestToken": "The client request token.",
  "Tags": "The tags for the business report schedule.",
  "S3BucketName": "The S3 bucket name of the output reports. If this isn't specified, the report can be retrieved from a download link by calling ListBusinessReportSchedule. ",
  "ScheduleName": "The name identifier of the schedule.",
  "S3KeyPrefix": "The S3 key where the report is delivered."
}
"""
CreateBusinessReportSchedule(args) = alexa_for_business("CreateBusinessReportSchedule", args)

"""
    GetGateway()

Retrieves the details of a gateway.

Required Parameters
{
  "GatewayArn": "The ARN of the gateway to get."
}
"""
GetGateway(args) = alexa_for_business("GetGateway", args)

"""
    UpdateContact()

Updates the contact details by the contact ARN.

Required Parameters
{
  "ContactArn": "The ARN of the contact to update."
}

Optional Parameters
{
  "PhoneNumbers": "The list of phone numbers for the contact.",
  "PhoneNumber": "The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.",
  "DisplayName": "The updated display name of the contact.",
  "LastName": "The updated last name of the contact.",
  "FirstName": "The updated first name of the contact.",
  "SipAddresses": "The list of SIP addresses for the contact."
}
"""
UpdateContact(args) = alexa_for_business("UpdateContact", args)

"""
    DisassociateSkillFromSkillGroup()

Disassociates a skill from a skill group.

Required Parameters
{
  "SkillId": "The ARN of a skill group to associate to a skill."
}

Optional Parameters
{
  "SkillGroupArn": "The unique identifier of a skill. Required."
}
"""
DisassociateSkillFromSkillGroup(args) = alexa_for_business("DisassociateSkillFromSkillGroup", args)

"""
    AssociateDeviceWithRoom()

Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. 

Optional Parameters
{
  "DeviceArn": "The ARN of the device to associate to a room. Required.",
  "RoomArn": "The ARN of the room with which to associate the device. Required."
}
"""

AssociateDeviceWithRoom() = alexa_for_business("AssociateDeviceWithRoom")
AssociateDeviceWithRoom(args) = alexa_for_business("AssociateDeviceWithRoom", args)

"""
    DeleteDeviceUsageData()

When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.

Required Parameters
{
  "DeviceArn": "The ARN of the device.",
  "DeviceUsageType": "The type of usage data to delete."
}
"""
DeleteDeviceUsageData(args) = alexa_for_business("DeleteDeviceUsageData", args)

"""
    DisassociateContactFromAddressBook()

Disassociates a contact from a given address book.

Required Parameters
{
  "ContactArn": "The ARN of the contact to disassociate from an address book.",
  "AddressBookArn": "The ARN of the address from which to disassociate the contact."
}
"""
DisassociateContactFromAddressBook(args) = alexa_for_business("DisassociateContactFromAddressBook", args)

"""
    ListSkillsStoreCategories()

Lists all categories in the Alexa skill store.

Optional Parameters
{
  "MaxResults": "The maximum number of categories returned, per paginated calls.",
  "NextToken": "The tokens used for pagination."
}
"""

ListSkillsStoreCategories() = alexa_for_business("ListSkillsStoreCategories")
ListSkillsStoreCategories(args) = alexa_for_business("ListSkillsStoreCategories", args)

"""
    DeleteNetworkProfile()

Deletes a network profile by the network profile ARN.

Required Parameters
{
  "NetworkProfileArn": "The ARN of the network profile associated with a device."
}
"""
DeleteNetworkProfile(args) = alexa_for_business("DeleteNetworkProfile", args)

"""
    UpdateNetworkProfile()

Updates a network profile by the network profile ARN.

Required Parameters
{
  "NetworkProfileArn": "The ARN of the network profile associated with a device."
}

Optional Parameters
{
  "CurrentPassword": "The current password of the Wi-Fi network.",
  "Description": "Detailed information about a device's network profile.",
  "CertificateAuthorityArn": "The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices. ",
  "NextPassword": "The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword. ",
  "TrustAnchors": "The root certificate(s) of your authentication server that will be installed on your devices and used to trust your authentication server during EAP negotiation. ",
  "NetworkProfileName": "The name of the network profile associated with a device."
}
"""
UpdateNetworkProfile(args) = alexa_for_business("UpdateNetworkProfile", args)

"""
    GetSkillGroup()

Gets skill group details by skill group ARN.

Optional Parameters
{
  "SkillGroupArn": "The ARN of the skill group for which to get details. Required."
}
"""

GetSkillGroup() = alexa_for_business("GetSkillGroup")
GetSkillGroup(args) = alexa_for_business("GetSkillGroup", args)

"""
    GetRoom()

Gets room details by room ARN.

Optional Parameters
{
  "RoomArn": "The ARN of the room for which to request details. Required."
}
"""

GetRoom() = alexa_for_business("GetRoom")
GetRoom(args) = alexa_for_business("GetRoom", args)

"""
    CreateSkillGroup()

Creates a skill group with a specified name and description.

Required Parameters
{
  "SkillGroupName": "The name for the skill group."
}

Optional Parameters
{
  "Description": "The description for the skill group.",
  "ClientRequestToken": "A unique, user-specified identifier for this request that ensures idempotency. ",
  "Tags": "The tags for the skill group."
}
"""
CreateSkillGroup(args) = alexa_for_business("CreateSkillGroup", args)

"""
    GetRoomSkillParameter()

Gets room skill parameter details by room, skill, and parameter key ARN.

Required Parameters
{
  "SkillId": "The ARN of the skill from which to get the room skill parameter details. Required.",
  "ParameterKey": "The room skill parameter key for which to get details. Required."
}

Optional Parameters
{
  "RoomArn": "The ARN of the room from which to get the room skill parameter details. "
}
"""
GetRoomSkillParameter(args) = alexa_for_business("GetRoomSkillParameter", args)

"""
    GetContact()

Gets the contact details by the contact ARN.

Required Parameters
{
  "ContactArn": "The ARN of the contact for which to request details."
}
"""
GetContact(args) = alexa_for_business("GetContact", args)

"""
    StartDeviceSync()

Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:   Bluetooth - This unpairs all bluetooth devices paired with your echo device.   Volume - This resets the echo device's volume to the default value.   Notifications - This clears all notifications from your echo device.   Lists - This clears all to-do items from your echo device.   Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).  

Required Parameters
{
  "Features": "Request structure to start the device sync. Required."
}

Optional Parameters
{
  "DeviceArn": "The ARN of the device to sync. Required.",
  "RoomArn": "The ARN of the room with which the device to sync is associated. Required."
}
"""
StartDeviceSync(args) = alexa_for_business("StartDeviceSync", args)

"""
    SearchRooms()

Searches rooms and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. ",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.",
  "SortCriteria": "The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.",
  "Filters": "The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName."
}
"""

SearchRooms() = alexa_for_business("SearchRooms")
SearchRooms(args) = alexa_for_business("SearchRooms", args)

"""
    DisassociateDeviceFromRoom()

Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.

Optional Parameters
{
  "DeviceArn": "The ARN of the device to disassociate from a room. Required."
}
"""

DisassociateDeviceFromRoom() = alexa_for_business("DisassociateDeviceFromRoom")
DisassociateDeviceFromRoom(args) = alexa_for_business("DisassociateDeviceFromRoom", args)

"""
    CreateProfile()

Creates a new room profile with the specified details.

Required Parameters
{
  "Timezone": "The time zone used by a room profile.",
  "ProfileName": "The name of a room profile.",
  "Address": "The valid address for the room.",
  "WakeWord": "A wake word for Alexa, Echo, Amazon, or a computer.",
  "TemperatureUnit": "The temperature unit to be used by devices in the profile.",
  "DistanceUnit": "The distance unit to be used by devices in the profile."
}

Optional Parameters
{
  "SetupModeDisabled": "Whether room profile setup is enabled.",
  "Tags": "The tags for the profile.",
  "ClientRequestToken": "The user-specified token that is used during the creation of a profile.",
  "Locale": "The locale of the room profile. (This is currently only available to a limited preview audience.)",
  "MaxVolumeLimit": "The maximum volume limit for a room profile.",
  "PSTNEnabled": "Whether PSTN calling is enabled.",
  "MeetingRoomConfiguration": "The meeting room settings of a room profile."
}
"""
CreateProfile(args) = alexa_for_business("CreateProfile", args)

"""
    PutSkillAuthorization()

Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.

Required Parameters
{
  "SkillId": "The unique identifier of a skill.",
  "AuthorizationResult": "The authorization result specific to OAUTH code grant output. \"Code” must be populated in the AuthorizationResult map to establish the authorization."
}

Optional Parameters
{
  "RoomArn": "The room that the skill is authorized for."
}
"""
PutSkillAuthorization(args) = alexa_for_business("PutSkillAuthorization", args)

"""
    StartSmartHomeApplianceDiscovery()

Initiates the discovery of any smart home appliances associated with the room.

Required Parameters
{
  "RoomArn": "The room where smart home appliance discovery was initiated."
}
"""
StartSmartHomeApplianceDiscovery(args) = alexa_for_business("StartSmartHomeApplianceDiscovery", args)

"""
    UpdateSkillGroup()

Updates skill group details by skill group ARN.

Optional Parameters
{
  "SkillGroupName": "The updated name for the skill group.",
  "Description": "The updated description for the skill group.",
  "SkillGroupArn": "The ARN of the skill group to update. "
}
"""

UpdateSkillGroup() = alexa_for_business("UpdateSkillGroup")
UpdateSkillGroup(args) = alexa_for_business("UpdateSkillGroup", args)

"""
    GetAddressBook()

Gets address the book details by the address book ARN.

Required Parameters
{
  "AddressBookArn": "The ARN of the address book for which to request details."
}
"""
GetAddressBook(args) = alexa_for_business("GetAddressBook", args)

"""
    GetConferenceProvider()

Gets details about a specific conference provider.

Required Parameters
{
  "ConferenceProviderArn": "The ARN of the newly created conference provider."
}
"""
GetConferenceProvider(args) = alexa_for_business("GetConferenceProvider", args)

"""
    UpdateDevice()

Updates the device name by device ARN.

Optional Parameters
{
  "DeviceName": "The updated device name. Required.",
  "DeviceArn": "The ARN of the device to update. Required."
}
"""

UpdateDevice() = alexa_for_business("UpdateDevice")
UpdateDevice(args) = alexa_for_business("UpdateDevice", args)

"""
    GetInvitationConfiguration()

Retrieves the configured values for the user enrollment invitation email template.
"""

GetInvitationConfiguration() = alexa_for_business("GetInvitationConfiguration")
GetInvitationConfiguration(args) = alexa_for_business("GetInvitationConfiguration", args)

"""
    UpdateGateway()

Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.

Required Parameters
{
  "GatewayArn": "The ARN of the gateway to update."
}

Optional Parameters
{
  "Description": "The updated description of the gateway.",
  "SoftwareVersion": "The updated software version of the gateway. The gateway automatically updates its software version during normal operation.",
  "Name": "The updated name of the gateway."
}
"""
UpdateGateway(args) = alexa_for_business("UpdateGateway", args)

"""
    GetNetworkProfile()

Gets the network profile details by the network profile ARN.

Required Parameters
{
  "NetworkProfileArn": "The ARN of the network profile associated with a device."
}
"""
GetNetworkProfile(args) = alexa_for_business("GetNetworkProfile", args)

"""
    GetProfile()

Gets the details of a room profile by profile ARN.

Optional Parameters
{
  "ProfileArn": "The ARN of the room profile for which to request details. Required."
}
"""

GetProfile() = alexa_for_business("GetProfile")
GetProfile(args) = alexa_for_business("GetProfile", args)

"""
    RevokeInvitation()

Revokes an invitation and invalidates the enrollment URL.

Optional Parameters
{
  "EnrollmentId": "The ARN of the enrollment invitation to revoke. Required.",
  "UserArn": "The ARN of the user for whom to revoke an enrollment invitation. Required."
}
"""

RevokeInvitation() = alexa_for_business("RevokeInvitation")
RevokeInvitation(args) = alexa_for_business("RevokeInvitation", args)

"""
    SearchSkillGroups()

Searches skill groups and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. ",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults. Required.",
  "SortCriteria": "The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName. ",
  "Filters": "The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName. "
}
"""

SearchSkillGroups() = alexa_for_business("SearchSkillGroups")
SearchSkillGroups(args) = alexa_for_business("SearchSkillGroups", args)

"""
    GetGatewayGroup()

Retrieves the details of a gateway group.

Required Parameters
{
  "GatewayGroupArn": "The ARN of the gateway group to get."
}
"""
GetGatewayGroup(args) = alexa_for_business("GetGatewayGroup", args)

"""
    PutInvitationConfiguration()

Configures the email template for the user enrollment invitation with the specified attributes.

Required Parameters
{
  "OrganizationName": "The name of the organization sending the enrollment invite to a user."
}

Optional Parameters
{
  "ContactEmail": "The email ID of the organization or individual contact that the enrolled user can use. ",
  "PrivateSkillIds": "The list of private skill IDs that you want to recommend to the user to enable in the invitation."
}
"""
PutInvitationConfiguration(args) = alexa_for_business("PutInvitationConfiguration", args)

"""
    DeleteRoom()

Deletes a room by the room ARN.

Optional Parameters
{
  "RoomArn": "The ARN of the room to delete. Required."
}
"""

DeleteRoom() = alexa_for_business("DeleteRoom")
DeleteRoom(args) = alexa_for_business("DeleteRoom", args)

"""
    SendInvitation()

Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. 

Optional Parameters
{
  "UserArn": "The ARN of the user to whom to send an invitation. Required."
}
"""

SendInvitation() = alexa_for_business("SendInvitation")
SendInvitation(args) = alexa_for_business("SendInvitation", args)

"""
    ListConferenceProviders()

Lists conference providers under a specific AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of conference providers to be returned, per paginated calls.",
  "NextToken": "The tokens used for pagination."
}
"""

ListConferenceProviders() = alexa_for_business("ListConferenceProviders")
ListConferenceProviders(args) = alexa_for_business("ListConferenceProviders", args)

"""
    DeleteSkillGroup()

Deletes a skill group by skill group ARN.

Optional Parameters
{
  "SkillGroupArn": "The ARN of the skill group to delete. Required."
}
"""

DeleteSkillGroup() = alexa_for_business("DeleteSkillGroup")
DeleteSkillGroup(args) = alexa_for_business("DeleteSkillGroup", args)

"""
    ForgetSmartHomeAppliances()

Forgets smart home appliances associated to a room.

Required Parameters
{
  "RoomArn": "The room that the appliances are associated with."
}
"""
ForgetSmartHomeAppliances(args) = alexa_for_business("ForgetSmartHomeAppliances", args)

"""
    GetConferencePreference()

Retrieves the existing conference preferences.
"""

GetConferencePreference() = alexa_for_business("GetConferencePreference")
GetConferencePreference(args) = alexa_for_business("GetConferencePreference", args)

"""
    DisassociateSkillFromUsers()

Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.

Required Parameters
{
  "SkillId": " The private skill ID you want to make unavailable for enrolled users."
}
"""
DisassociateSkillFromUsers(args) = alexa_for_business("DisassociateSkillFromUsers", args)

"""
    SearchContacts()

Searches contacts and lists the ones that meet a set of filter and sort criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.",
  "SortCriteria": "The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.",
  "Filters": "The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns."
}
"""

SearchContacts() = alexa_for_business("SearchContacts")
SearchContacts(args) = alexa_for_business("SearchContacts", args)

"""
    SearchDevices()

Searches devices and lists the ones that meet a set of filter criteria.

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.",
  "SortCriteria": "The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus, NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.",
  "Filters": "The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature, and FailureCode."
}
"""

SearchDevices() = alexa_for_business("SearchDevices")
SearchDevices(args) = alexa_for_business("SearchDevices", args)

"""
    ListTags()

Lists all tags for the specified resource.

Required Parameters
{
  "Arn": "The ARN of the specified resource for which to list tags."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.",
  "NextToken": "An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults. "
}
"""
ListTags(args) = alexa_for_business("ListTags", args)

"""
    DeleteAddressBook()

Deletes an address book by the address book ARN.

Required Parameters
{
  "AddressBookArn": "The ARN of the address book to delete."
}
"""
DeleteAddressBook(args) = alexa_for_business("DeleteAddressBook", args)

"""
    ListSmartHomeAppliances()

Lists all of the smart home appliances associated with a room.

Required Parameters
{
  "RoomArn": "The room that the appliances are associated with."
}

Optional Parameters
{
  "MaxResults": "The maximum number of appliances to be returned, per paginated calls.",
  "NextToken": "The tokens used for pagination."
}
"""
ListSmartHomeAppliances(args) = alexa_for_business("ListSmartHomeAppliances", args)

"""
    DisassociateSkillGroupFromRoom()

Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.

Optional Parameters
{
  "SkillGroupArn": "The ARN of the skill group to disassociate from a room. Required.",
  "RoomArn": "The ARN of the room from which the skill group is to be disassociated. Required."
}
"""

DisassociateSkillGroupFromRoom() = alexa_for_business("DisassociateSkillGroupFromRoom")
DisassociateSkillGroupFromRoom(args) = alexa_for_business("DisassociateSkillGroupFromRoom", args)

"""
    UpdateBusinessReportSchedule()

Updates the configuration of the report delivery schedule with the specified schedule ARN.

Required Parameters
{
  "ScheduleArn": "The ARN of the business report schedule."
}

Optional Parameters
{
  "Format": "The format of the generated report (individual CSV files or zipped files of individual files).",
  "Recurrence": "The recurrence of the reports.",
  "S3BucketName": "The S3 location of the output reports.",
  "ScheduleName": "The name identifier of the schedule.",
  "S3KeyPrefix": "The S3 key where the report is delivered."
}
"""
UpdateBusinessReportSchedule(args) = alexa_for_business("UpdateBusinessReportSchedule", args)

"""
    UpdateProfile()

Updates an existing room profile by room profile ARN.

Optional Parameters
{
  "Timezone": "The updated timezone for the room profile.",
  "ProfileName": "The updated name for the room profile.",
  "IsDefault": "Sets the profile as default if selected. If this is missing, no update is done to the default status.",
  "Locale": "The updated locale for the room profile. (This is currently only available to a limited preview audience.)",
  "MaxVolumeLimit": "The updated maximum volume limit for the room profile.",
  "PSTNEnabled": "Whether the PSTN setting of the room profile is enabled.",
  "MeetingRoomConfiguration": "The updated meeting room settings of a room profile.",
  "Address": "The updated address for the room profile.",
  "WakeWord": "The updated wake word for the room profile.",
  "TemperatureUnit": "The updated temperature unit for the room profile.",
  "DistanceUnit": "The updated distance unit for the room profile.",
  "SetupModeDisabled": "Whether the setup mode of the profile is enabled.",
  "ProfileArn": "The ARN of the room profile to update. Required."
}
"""

UpdateProfile() = alexa_for_business("UpdateProfile")
UpdateProfile(args) = alexa_for_business("UpdateProfile", args)

"""
    DeleteProfile()

Deletes a room profile by the profile ARN.

Optional Parameters
{
  "ProfileArn": "The ARN of the room profile to delete. Required."
}
"""

DeleteProfile() = alexa_for_business("DeleteProfile")
DeleteProfile(args) = alexa_for_business("DeleteProfile", args)

"""
    AssociateSkillWithSkillGroup()

Associates a skill with a skill group.

Required Parameters
{
  "SkillId": "The unique identifier of the skill."
}

Optional Parameters
{
  "SkillGroupArn": "The ARN of the skill group to associate the skill to. Required."
}
"""
AssociateSkillWithSkillGroup(args) = alexa_for_business("AssociateSkillWithSkillGroup", args)
