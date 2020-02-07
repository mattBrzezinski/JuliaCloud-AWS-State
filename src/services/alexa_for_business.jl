include("../AWSCorePrototypeServices.jl")
using .Services: alexa_for_business

"""
Gets the details of a device by device ARN.
"""
GetDevice() = alexa_for_business("GetDevice")

"""
Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
"""
ListGateways() = alexa_for_business("ListGateways")

"""
Sets the conference preferences on a specific conference provider at the account level.

Required Parameters:
ConferencePreference
"""
PutConferencePreference(args) = alexa_for_business("PutConferencePreference", args)

"""
Searches network profiles and lists the ones that meet a set of filter and sort criteria.
"""
SearchNetworkProfiles() = alexa_for_business("SearchNetworkProfiles")

"""
Creates a user.

Required Parameters:
UserId
"""
CreateUser(args) = alexa_for_business("CreateUser", args)

"""
Deletes a gateway group.

Required Parameters:
GatewayGroupArn
"""
DeleteGatewayGroup(args) = alexa_for_business("DeleteGatewayGroup", args)

"""
Searches room profiles and lists the ones that meet a set of filter criteria.
"""
SearchProfiles() = alexa_for_business("SearchProfiles")

"""
Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.

Required Parameters:
SkillId
"""
ApproveSkill(args) = alexa_for_business("ApproveSkill", args)

"""
Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).

Required Parameters:
ClientId, UserCode, ProductId, DeviceSerialNumber, AmazonId
"""
RegisterAVSDevice(args) = alexa_for_business("RegisterAVSDevice", args)

"""
Deletes room skill parameter details by room, skill, and parameter key ID.

Required Parameters:
SkillId, ParameterKey
"""
DeleteRoomSkillParameter(args) = alexa_for_business("DeleteRoomSkillParameter", args)

"""
Adds metadata tags to a specified resource.

Required Parameters:
Arn, Tags
"""
TagResource(args) = alexa_for_business("TagResource", args)

"""
Deletes a contact by the contact ARN.

Required Parameters:
ContactArn
"""
DeleteContact(args) = alexa_for_business("DeleteContact", args)

"""
Lists all enabled skills in a specific skill group.
"""
ListSkills() = alexa_for_business("ListSkills")

"""
Searches address books and lists the ones that meet a set of filter and sort criteria.
"""
SearchAddressBooks() = alexa_for_business("SearchAddressBooks")

"""
Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.

Required Parameters:
GatewayGroupArn
"""
UpdateGatewayGroup(args) = alexa_for_business("UpdateGatewayGroup", args)

"""
Associates a contact with a given address book.

Required Parameters:
ContactArn, AddressBookArn
"""
AssociateContactWithAddressBook(args) = alexa_for_business("AssociateContactWithAddressBook", args)

"""
Updates room details by room ARN.
"""
UpdateRoom() = alexa_for_business("UpdateRoom")

"""
Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. 

Required Parameters:
RoomFilters, Content, ClientRequestToken
"""
SendAnnouncement(args) = alexa_for_business("SendAnnouncement", args)

"""
Adds a new conference provider under the user's AWS account.

Required Parameters:
ConferenceProviderName, ConferenceProviderType, MeetingSetting
"""
CreateConferenceProvider(args) = alexa_for_business("CreateConferenceProvider", args)

"""
Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
"""
ListBusinessReportSchedules() = alexa_for_business("ListBusinessReportSchedules")

"""
Makes a private skill available for enrolled users to enable on their devices.

Required Parameters:
SkillId
"""
AssociateSkillWithUsers(args) = alexa_for_business("AssociateSkillWithUsers", args)

"""
Creates a gateway group with the specified details.

Required Parameters:
Name, ClientRequestToken
"""
CreateGatewayGroup(args) = alexa_for_business("CreateGatewayGroup", args)

"""
Creates a contact with the specified details.

Required Parameters:
FirstName
"""
CreateContact(args) = alexa_for_business("CreateContact", args)

"""
Creates a network profile with the specified details.

Required Parameters:
NetworkProfileName, Ssid, SecurityType, ClientRequestToken
"""
CreateNetworkProfile(args) = alexa_for_business("CreateNetworkProfile", args)

"""
Unlinks a third-party account from a skill.

Required Parameters:
SkillId
"""
DeleteSkillAuthorization(args) = alexa_for_business("DeleteSkillAuthorization", args)

"""
Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.

Required Parameters:
UserId, SkillId
"""
ResolveRoom(args) = alexa_for_business("ResolveRoom", args)

"""
Updates an existing conference provider's settings.

Required Parameters:
ConferenceProviderArn, ConferenceProviderType, MeetingSetting
"""
UpdateConferenceProvider(args) = alexa_for_business("UpdateConferenceProvider", args)

"""
Updates address book details by the address book ARN.

Required Parameters:
AddressBookArn
"""
UpdateAddressBook(args) = alexa_for_business("UpdateAddressBook", args)

"""
Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
"""
ListGatewayGroups() = alexa_for_business("ListGatewayGroups")

"""
Deletes a specified user by user ARN and enrollment ARN.

Required Parameters:
EnrollmentId
"""
DeleteUser(args) = alexa_for_business("DeleteUser", args)

"""
Lists all skills in the Alexa skill store by category.

Required Parameters:
CategoryId
"""
ListSkillsStoreSkillsByCategory(args) = alexa_for_business("ListSkillsStoreSkillsByCategory", args)

"""
Deletes the recurring report delivery schedule with the specified schedule ARN.

Required Parameters:
ScheduleArn
"""
DeleteBusinessReportSchedule(args) = alexa_for_business("DeleteBusinessReportSchedule", args)

"""
Searches users and lists the ones that meet a set of filter and sort criteria.
"""
SearchUsers() = alexa_for_business("SearchUsers")

"""
Deletes a conference provider.

Required Parameters:
ConferenceProviderArn
"""
DeleteConferenceProvider(args) = alexa_for_business("DeleteConferenceProvider", args)

"""
Removes metadata tags from a specified resource.

Required Parameters:
Arn, TagKeys
"""
UntagResource(args) = alexa_for_business("UntagResource", args)

"""
Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.

Required Parameters:
SkillId, RoomSkillParameter
"""
PutRoomSkillParameter(args) = alexa_for_business("PutRoomSkillParameter", args)

"""
Lists the device event history, including device connection status, for up to 30 days.

Required Parameters:
DeviceArn
"""
ListDeviceEvents(args) = alexa_for_business("ListDeviceEvents", args)

"""
Creates an address book with the specified details.

Required Parameters:
Name
"""
CreateAddressBook(args) = alexa_for_business("CreateAddressBook", args)

"""
Associates a device with the specified network profile.

Required Parameters:
DeviceArn, NetworkProfileArn
"""
AssociateDeviceWithNetworkProfile(args) = alexa_for_business("AssociateDeviceWithNetworkProfile", args)

"""
Creates a room with the specified details.

Required Parameters:
RoomName
"""
CreateRoom(args) = alexa_for_business("CreateRoom", args)

"""
Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
"""
AssociateSkillGroupWithRoom() = alexa_for_business("AssociateSkillGroupWithRoom")

"""
Removes a device from Alexa For Business.

Required Parameters:
DeviceArn
"""
DeleteDevice(args) = alexa_for_business("DeleteDevice", args)

"""
Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. 

Required Parameters:
SkillId
"""
RejectSkill(args) = alexa_for_business("RejectSkill", args)

"""
Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.

Required Parameters:
Format, ContentRange
"""
CreateBusinessReportSchedule(args) = alexa_for_business("CreateBusinessReportSchedule", args)

"""
Retrieves the details of a gateway.

Required Parameters:
GatewayArn
"""
GetGateway(args) = alexa_for_business("GetGateway", args)

"""
Updates the contact details by the contact ARN.

Required Parameters:
ContactArn
"""
UpdateContact(args) = alexa_for_business("UpdateContact", args)

"""
Disassociates a skill from a skill group.

Required Parameters:
SkillId
"""
DisassociateSkillFromSkillGroup(args) = alexa_for_business("DisassociateSkillFromSkillGroup", args)

"""
Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. 
"""
AssociateDeviceWithRoom() = alexa_for_business("AssociateDeviceWithRoom")

"""
When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.

Required Parameters:
DeviceArn, DeviceUsageType
"""
DeleteDeviceUsageData(args) = alexa_for_business("DeleteDeviceUsageData", args)

"""
Disassociates a contact from a given address book.

Required Parameters:
ContactArn, AddressBookArn
"""
DisassociateContactFromAddressBook(args) = alexa_for_business("DisassociateContactFromAddressBook", args)

"""
Lists all categories in the Alexa skill store.
"""
ListSkillsStoreCategories() = alexa_for_business("ListSkillsStoreCategories")

"""
Deletes a network profile by the network profile ARN.

Required Parameters:
NetworkProfileArn
"""
DeleteNetworkProfile(args) = alexa_for_business("DeleteNetworkProfile", args)

"""
Updates a network profile by the network profile ARN.

Required Parameters:
NetworkProfileArn
"""
UpdateNetworkProfile(args) = alexa_for_business("UpdateNetworkProfile", args)

"""
Gets skill group details by skill group ARN.
"""
GetSkillGroup() = alexa_for_business("GetSkillGroup")

"""
Gets room details by room ARN.
"""
GetRoom() = alexa_for_business("GetRoom")

"""
Creates a skill group with a specified name and description.

Required Parameters:
SkillGroupName
"""
CreateSkillGroup(args) = alexa_for_business("CreateSkillGroup", args)

"""
Gets room skill parameter details by room, skill, and parameter key ARN.

Required Parameters:
SkillId, ParameterKey
"""
GetRoomSkillParameter(args) = alexa_for_business("GetRoomSkillParameter", args)

"""
Gets the contact details by the contact ARN.

Required Parameters:
ContactArn
"""
GetContact(args) = alexa_for_business("GetContact", args)

"""
Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:   Bluetooth - This unpairs all bluetooth devices paired with your echo device.   Volume - This resets the echo device's volume to the default value.   Notifications - This clears all notifications from your echo device.   Lists - This clears all to-do items from your echo device.   Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).  

Required Parameters:
Features
"""
StartDeviceSync(args) = alexa_for_business("StartDeviceSync", args)

"""
Searches rooms and lists the ones that meet a set of filter and sort criteria.
"""
SearchRooms() = alexa_for_business("SearchRooms")

"""
Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
"""
DisassociateDeviceFromRoom() = alexa_for_business("DisassociateDeviceFromRoom")

"""
Creates a new room profile with the specified details.

Required Parameters:
ProfileName, Timezone, Address, DistanceUnit, TemperatureUnit, WakeWord
"""
CreateProfile(args) = alexa_for_business("CreateProfile", args)

"""
Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.

Required Parameters:
AuthorizationResult, SkillId
"""
PutSkillAuthorization(args) = alexa_for_business("PutSkillAuthorization", args)

"""
Initiates the discovery of any smart home appliances associated with the room.

Required Parameters:
RoomArn
"""
StartSmartHomeApplianceDiscovery(args) = alexa_for_business("StartSmartHomeApplianceDiscovery", args)

"""
Updates skill group details by skill group ARN.
"""
UpdateSkillGroup() = alexa_for_business("UpdateSkillGroup")

"""
Gets address the book details by the address book ARN.

Required Parameters:
AddressBookArn
"""
GetAddressBook(args) = alexa_for_business("GetAddressBook", args)

"""
Gets details about a specific conference provider.

Required Parameters:
ConferenceProviderArn
"""
GetConferenceProvider(args) = alexa_for_business("GetConferenceProvider", args)

"""
Updates the device name by device ARN.
"""
UpdateDevice() = alexa_for_business("UpdateDevice")

"""
Retrieves the configured values for the user enrollment invitation email template.
"""
GetInvitationConfiguration() = alexa_for_business("GetInvitationConfiguration")

"""
Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.

Required Parameters:
GatewayArn
"""
UpdateGateway(args) = alexa_for_business("UpdateGateway", args)

"""
Gets the network profile details by the network profile ARN.

Required Parameters:
NetworkProfileArn
"""
GetNetworkProfile(args) = alexa_for_business("GetNetworkProfile", args)

"""
Gets the details of a room profile by profile ARN.
"""
GetProfile() = alexa_for_business("GetProfile")

"""
Revokes an invitation and invalidates the enrollment URL.
"""
RevokeInvitation() = alexa_for_business("RevokeInvitation")

"""
Searches skill groups and lists the ones that meet a set of filter and sort criteria.
"""
SearchSkillGroups() = alexa_for_business("SearchSkillGroups")

"""
Retrieves the details of a gateway group.

Required Parameters:
GatewayGroupArn
"""
GetGatewayGroup(args) = alexa_for_business("GetGatewayGroup", args)

"""
Configures the email template for the user enrollment invitation with the specified attributes.

Required Parameters:
OrganizationName
"""
PutInvitationConfiguration(args) = alexa_for_business("PutInvitationConfiguration", args)

"""
Deletes a room by the room ARN.
"""
DeleteRoom() = alexa_for_business("DeleteRoom")

"""
Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. 
"""
SendInvitation() = alexa_for_business("SendInvitation")

"""
Lists conference providers under a specific AWS account.
"""
ListConferenceProviders() = alexa_for_business("ListConferenceProviders")

"""
Deletes a skill group by skill group ARN.
"""
DeleteSkillGroup() = alexa_for_business("DeleteSkillGroup")

"""
Forgets smart home appliances associated to a room.

Required Parameters:
RoomArn
"""
ForgetSmartHomeAppliances(args) = alexa_for_business("ForgetSmartHomeAppliances", args)

"""
Retrieves the existing conference preferences.
"""
GetConferencePreference() = alexa_for_business("GetConferencePreference")

"""
Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.

Required Parameters:
SkillId
"""
DisassociateSkillFromUsers(args) = alexa_for_business("DisassociateSkillFromUsers", args)

"""
Searches contacts and lists the ones that meet a set of filter and sort criteria.
"""
SearchContacts() = alexa_for_business("SearchContacts")

"""
Searches devices and lists the ones that meet a set of filter criteria.
"""
SearchDevices() = alexa_for_business("SearchDevices")

"""
Lists all tags for the specified resource.

Required Parameters:
Arn
"""
ListTags(args) = alexa_for_business("ListTags", args)

"""
Deletes an address book by the address book ARN.

Required Parameters:
AddressBookArn
"""
DeleteAddressBook(args) = alexa_for_business("DeleteAddressBook", args)

"""
Lists all of the smart home appliances associated with a room.

Required Parameters:
RoomArn
"""
ListSmartHomeAppliances(args) = alexa_for_business("ListSmartHomeAppliances", args)

"""
Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
"""
DisassociateSkillGroupFromRoom() = alexa_for_business("DisassociateSkillGroupFromRoom")

"""
Updates the configuration of the report delivery schedule with the specified schedule ARN.

Required Parameters:
ScheduleArn
"""
UpdateBusinessReportSchedule(args) = alexa_for_business("UpdateBusinessReportSchedule", args)

"""
Updates an existing room profile by room profile ARN.
"""
UpdateProfile() = alexa_for_business("UpdateProfile")

"""
Deletes a room profile by the profile ARN.
"""
DeleteProfile() = alexa_for_business("DeleteProfile")

"""
Associates a skill with a skill group.

Required Parameters:
SkillId
"""
AssociateSkillWithSkillGroup(args) = alexa_for_business("AssociateSkillWithSkillGroup", args)
