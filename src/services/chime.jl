include("../AWSCorePrototypeServices.jl")
using .Services: chime

"""
Deletes the specified Amazon Chime account. You must suspend all users before deleting a Team account. You can use the BatchSuspendUser action to do so. For EnterpriseLWA and EnterpriseAD accounts, you must release the claimed domains for your Amazon Chime account before deletion. As soon as you release the domain, all users under that account are suspended. Deleted accounts appear in your Disabled accounts list for 90 days. To restore a deleted account from your Disabled accounts list, you must contact AWS Support. After 90 days, deleted accounts are permanently removed from your Disabled accounts list.

Required Parameters:
AccountId
"""
DeleteAccount(args) = chime("DELETE", "/accounts/{accountId}", args)

"""
Deletes the specified Amazon Chime Voice Connector. Any phone numbers associated with the Amazon Chime Voice Connector must be disassociated from it before it can be deleted.

Required Parameters:
VoiceConnectorId
"""
DeleteVoiceConnector(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}", args)

"""
Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.

Required Parameters:
AccountId, BotId
"""
UpdateBot(args) = chime("POST", "/accounts/{accountId}/bots/{botId}", args)

"""
Creates a user under the specified Amazon Chime account.

Required Parameters:
AccountId
"""
CreateUser(args) = chime("POST", "/accounts/{accountId}/users?operation=create", args)

"""
Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
"""
ListPhoneNumbers() = chime("GET", "/phone-numbers")

"""
Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
ClientRequestToken
"""
CreateMeeting(args) = chime("POST", "/meetings", args)

"""
Lists the SIP credentials for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
ListVoiceConnectorTerminationCredentials(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination/credentials", args)

"""
Removes the suspension from up to 50 previously suspended users for the specified Amazon Chime EnterpriseLWA account. Only users on EnterpriseLWA accounts can be unsuspended using this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Previously suspended users who are unsuspended using this action are returned to Registered status. Users who are not previously suspended are ignored.

Required Parameters:
AccountId, UserIdList
"""
BatchUnsuspendUser(args) = chime("POST", "/accounts/{accountId}/users?operation=unsuspend", args)

"""
Updates details for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId, Name, RequireEncryption
"""
UpdateVoiceConnector(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}", args)

"""
Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.

Required Parameters:
AccountId, BotId
"""
GetBot(args) = chime("GET", "/accounts/{accountId}/bots/{botId}", args)

"""
Regenerates the security token for a bot.

Required Parameters:
AccountId, BotId
"""
RegenerateSecurityToken(args) = chime("POST", "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token", args)

"""
Retrieves details for the specified Amazon Chime account, such as account type and supported licenses.

Required Parameters:
AccountId
"""
GetAccount(args) = chime("GET", "/accounts/{accountId}", args)

"""
Retrieves the logging configuration details for the specified Amazon Chime Voice Connector. Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnectorLoggingConfiguration(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/logging-configuration", args)

"""
Updates room details, such as the room name.

Required Parameters:
AccountId, RoomId
"""
UpdateRoom(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}", args)

"""
Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.

Required Parameters:
PhoneNumberId
"""
UpdatePhoneNumber(args) = chime("POST", "/phone-numbers/{phoneNumberId}", args)

"""
Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.

Required Parameters:
AccountId, AccountSettings
"""
UpdateAccountSettings(args) = chime("PUT", "/accounts/{accountId}/settings", args)

"""
Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate up to three existing Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including VoiceConnectorItems in the request. You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.

Required Parameters:
Name
"""
CreateVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups", args)

"""
Deletes the specified SIP credentials used by your equipment to authenticate during call termination.

Required Parameters:
VoiceConnectorId
"""
DeleteVoiceConnectorTerminationCredentials(args) = chime("POST", "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete", args)

"""
Adds origination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId, Origination
"""
PutVoiceConnectorOrigination(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/origination", args)

"""
Retrieves the streaming configuration details for the specified Amazon Chime Voice Connector. Shows whether media streaming is enabled for sending to Amazon Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis data.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnectorStreamingConfiguration(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)

"""
Creates an events configuration that allows a bot to receive outgoing events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information, see Bot.

Required Parameters:
AccountId, BotId
"""
PutEventsConfiguration(args) = chime("PUT", "/accounts/{accountId}/bots/{botId}/events-configuration", args)

"""
Logs out the specified user from all of the devices they are currently logged into.

Required Parameters:
AccountId, UserId
"""
LogoutUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=logout", args)

"""
Searches phone numbers that can be ordered.
"""
SearchAvailablePhoneNumbers() = chime("GET", "/search?type=phone-numbers")

"""
Moves phone numbers into the Deletion queue. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted. Phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.

Required Parameters:
PhoneNumberIds
"""
BatchDeletePhoneNumber(args) = chime("POST", "/phone-numbers?operation=batch-delete", args)

"""
Deletes the specified Amazon Chime SDK meeting. When a meeting is deleted, its attendees are also deleted and clients can no longer join it. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId
"""
DeleteMeeting(args) = chime("DELETE", "/meetings/{meetingId}", args)

"""
Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.
"""
GetPhoneNumberSettings() = chime("GET", "/settings/phone-number")

"""
Adds termination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId, Termination
"""
PutVoiceConnectorTermination(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/termination", args)

"""
Adds termination SIP credentials for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
PutVoiceConnectorTerminationCredentials(args) = chime("POST", "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put", args)

"""
Associates the specified sign-in delegate groups with the specified Amazon Chime account.

Required Parameters:
AccountId, SigninDelegateGroups
"""
AssociateSigninDelegateGroupsWithAccount(args) = chime("POST", "/accounts/{accountId}?operation=associate-signin-delegate-groups", args)

"""
Lists the membership details for the specified room, such as the members' IDs, email addresses, and names.

Required Parameters:
AccountId, RoomId
"""
ListRoomMemberships(args) = chime("GET", "/accounts/{accountId}/rooms/{roomId}/memberships", args)

"""
Adds up to 50 members to a chat room. Members can be either users or bots. The member role designates whether the member is a chat room administrator or a general chat room member.

Required Parameters:
AccountId, RoomId, MembershipItemList
"""
BatchCreateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create", args)

"""
Updates account details for the specified Amazon Chime account. Currently, only account name updates are supported for this action.

Required Parameters:
AccountId
"""
UpdateAccount(args) = chime("POST", "/accounts/{accountId}", args)

"""
Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
"""
ListAccounts() = chime("GET", "/accounts")

"""
Retrieves details for the specified user ID, such as primary email address, license type, and personal meeting PIN. To retrieve user details with an email address instead of a user ID, use the ListUsers action, and then filter by email address.

Required Parameters:
AccountId, UserId
"""
GetUser(args) = chime("GET", "/accounts/{accountId}/users/{userId}", args)

"""
Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
"""
ListVoiceConnectors() = chime("GET", "/voice-connectors")

"""
Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.

Required Parameters:
AccountId
"""
ListBots(args) = chime("GET", "/accounts/{accountId}/bots", args)

"""
Deletes the events configuration that allows a bot to receive outgoing events.

Required Parameters:
AccountId, BotId
"""
DeleteEventsConfiguration(args) = chime("DELETE", "/accounts/{accountId}/bots/{botId}/events-configuration", args)

"""
Deletes the origination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
DeleteVoiceConnectorOrigination(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/origination", args)

"""
Associates phone numbers with the specified Amazon Chime Voice Connector group.

Required Parameters:
VoiceConnectorGroupId
"""
AssociatePhoneNumbersWithVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers", args)

"""
Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.

Required Parameters:
VoiceConnectorId, LoggingConfiguration
"""
PutVoiceConnectorLoggingConfiguration(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/logging-configuration", args)

"""
Retrieves details for the specified phone number order, such as order creation timestamp, phone numbers in E.164 format, product type, and order status.

Required Parameters:
PhoneNumberOrderId
"""
GetPhoneNumberOrder(args) = chime("GET", "/phone-number-orders/{phoneNumberOrderId}", args)

"""
Creates a chat room for the specified Amazon Chime account.

Required Parameters:
AccountId, Name
"""
CreateRoom(args) = chime("POST", "/accounts/{accountId}/rooms", args)

"""
Updates the phone number settings for the administrator's AWS account, such as the default outbound calling name. You can update the default outbound calling name once every seven days. Outbound calling names can take up to 72 hours to update.

Required Parameters:
CallingName
"""
UpdatePhoneNumberSettings(args) = chime("PUT", "/settings/phone-number", args)

"""
Updates phone number product types or calling names. You can update one attribute at a time for each UpdatePhoneNumberRequestItem. For example, you can update either the product type or the calling name. For product types, choose from Amazon Chime Business Calling and Amazon Chime Voice Connector. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.

Required Parameters:
UpdatePhoneNumberRequestItems
"""
BatchUpdatePhoneNumber(args) = chime("POST", "/phone-numbers?operation=batch-update", args)

"""
Creates an Amazon Chime Voice Connector under the administrator's AWS account. You can choose to create an Amazon Chime Voice Connector in a specific AWS Region. Enabling CreateVoiceConnectorRequest RequireEncryption configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.

Required Parameters:
Name, RequireEncryption
"""
CreateVoiceConnector(args) = chime("POST", "/voice-connectors", args)

"""
Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
DisassociatePhoneNumbersFromVoiceConnector(args) = chime("POST", "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers", args)

"""
Disassociates the primary provisioned phone number from the specified Amazon Chime user.

Required Parameters:
AccountId, UserId
"""
DisassociatePhoneNumberFromUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number", args)

"""
Retrieves details for the specified Amazon Chime Voice Connector group, such as timestamps, name, and associated VoiceConnectorItems.

Required Parameters:
VoiceConnectorGroupId
"""
GetVoiceConnectorGroup(args) = chime("GET", "/voice-connector-groups/{voiceConnectorGroupId}", args)

"""
Deletes the termination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
DeleteVoiceConnectorTermination(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/termination", args)

"""
Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.
"""
ListVoiceConnectorGroups() = chime("GET", "/voice-connector-groups")

"""
Updates user details for a specified user ID. Currently, only LicenseType updates are supported for this action.

Required Parameters:
AccountId, UserId
"""
UpdateUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}", args)

"""
Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId, ExternalUserId
"""
CreateAttendee(args) = chime("POST", "/meetings/{meetingId}/attendees", args)

"""
Adds a member to a chat room. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.

Required Parameters:
AccountId, RoomId, MemberId
"""
CreateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships", args)

"""
Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
"""
GetGlobalSettings() = chime("GET", "/settings")

"""
Retrieves termination setting details for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnectorTermination(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination", args)

"""
Updates room membership details, such as the member role. The member role designates whether the member is a chat room administrator or a general chat room member. The member role can be updated only for user IDs.

Required Parameters:
AccountId, RoomId, MemberId
"""
UpdateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}", args)

"""
Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN. 

Required Parameters:
AccountId, BotId
"""
GetEventsConfiguration(args) = chime("GET", "/accounts/{accountId}/bots/{botId}/events-configuration", args)

"""
Retrieves room details, such as the room name.

Required Parameters:
AccountId, RoomId
"""
GetRoom(args) = chime("GET", "/accounts/{accountId}/rooms/{roomId}", args)

"""
Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide. 

Required Parameters:
MeetingId, Attendees
"""
BatchCreateAttendee(args) = chime("POST", "/meetings/{meetingId}/attendees?operation=batch-create", args)

"""
Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis. It also sets the retention period, in hours, for the Amazon Kinesis data.

Required Parameters:
VoiceConnectorId, StreamingConfiguration
"""
PutVoiceConnectorStreamingConfiguration(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)

"""
Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.

Required Parameters:
AccountId
"""
ListUsers(args) = chime("GET", "/accounts/{accountId}/users", args)

"""
Updates the settings for the specified user, such as phone number settings.

Required Parameters:
AccountId, UserId, UserSettings
"""
UpdateUserSettings(args) = chime("PUT", "/accounts/{accountId}/users/{userId}/settings", args)

"""
Retrieves information about the last time a SIP OPTIONS ping was received from your SIP infrastructure for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnectorTerminationHealth(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination/health", args)

"""
Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
"""
ListMeetings() = chime("GET", "/meetings")

"""
Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.

Required Parameters:
BusinessCalling, VoiceConnector
"""
UpdateGlobalSettings(args) = chime("PUT", "/settings", args)

"""
Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId, AttendeeId
"""
GetAttendee(args) = chime("GET", "/meetings/{meetingId}/attendees/{attendeeId}", args)

"""
Creates an Amazon Chime account under the administrator's AWS account. Only Team account types are currently supported for this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide.

Required Parameters:
Name
"""
CreateAccount(args) = chime("POST", "/accounts", args)

"""
Creates a bot for an Amazon Chime Enterprise account.

Required Parameters:
DisplayName, AccountId
"""
CreateBot(args) = chime("POST", "/accounts/{accountId}/bots", args)

"""
Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.

Required Parameters:
AccountId, GroupNames
"""
DisassociateSigninDelegateGroupsFromAccount(args) = chime("POST", "/accounts/{accountId}?operation=disassociate-signin-delegate-groups", args)

"""
Associates a phone number with the specified Amazon Chime user.

Required Parameters:
AccountId, UserId, E164PhoneNumber
"""
AssociatePhoneNumberWithUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=associate-phone-number", args)

"""
Retrieves origination setting details for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnectorOrigination(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/origination", args)

"""
Retrieves account settings for the specified Amazon Chime account ID, such as remote control and dial out settings. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.

Required Parameters:
AccountId
"""
GetAccountSettings(args) = chime("GET", "/accounts/{accountId}/settings", args)

"""
Deletes a chat room.

Required Parameters:
AccountId, RoomId
"""
DeleteRoom(args) = chime("DELETE", "/accounts/{accountId}/rooms/{roomId}", args)

"""
Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps, name, outbound host, and encryption requirements.

Required Parameters:
VoiceConnectorId
"""
GetVoiceConnector(args) = chime("GET", "/voice-connectors/{voiceConnectorId}", args)

"""
Suspends up to 50 users from a Team or EnterpriseLWA Amazon Chime account. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Users suspended from a Team account are disassociated from the account, but they can continue to use Amazon Chime as free users. To remove the suspension from suspended Team account users, invite them to the Team account again. You can use the InviteUsers action to do so. Users suspended from an EnterpriseLWA account are immediately signed out of Amazon Chime and can no longer sign in. To remove the suspension from suspended EnterpriseLWA account users, use the BatchUnsuspendUser action.  To sign out users without suspending them, use the LogoutUser action.

Required Parameters:
AccountId, UserIdList
"""
BatchSuspendUser(args) = chime("POST", "/accounts/{accountId}/users?operation=suspend", args)

"""
Deletes the streaming configuration for the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
DeleteVoiceConnectorStreamingConfiguration(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)

"""
Retrieves settings for the specified user ID, such as any associated phone number settings.

Required Parameters:
AccountId, UserId
"""
GetUserSettings(args) = chime("GET", "/accounts/{accountId}/users/{userId}/settings", args)

"""
Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime Team account. Only Team account types are currently supported for this action. 

Required Parameters:
AccountId, UserEmailList
"""
InviteUsers(args) = chime("POST", "/accounts/{accountId}/users?operation=add", args)

"""
Updates details for the specified Amazon Chime Voice Connector group, such as the name and Amazon Chime Voice Connector priority ranking.

Required Parameters:
VoiceConnectorGroupId, Name, VoiceConnectorItems
"""
UpdateVoiceConnectorGroup(args) = chime("PUT", "/voice-connector-groups/{voiceConnectorGroupId}", args)

"""
Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId
"""
GetMeeting(args) = chime("GET", "/meetings/{meetingId}", args)

"""
Deletes the specified Amazon Chime Voice Connector group. Any VoiceConnectorItems and phone numbers associated with the group must be removed before it can be deleted.

Required Parameters:
VoiceConnectorGroupId
"""
DeleteVoiceConnectorGroup(args) = chime("DELETE", "/voice-connector-groups/{voiceConnectorGroupId}", args)

"""
Lists the room details for the specified Amazon Chime account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.

Required Parameters:
AccountId
"""
ListRooms(args) = chime("GET", "/accounts/{accountId}/rooms", args)

"""
Associates phone numbers with the specified Amazon Chime Voice Connector.

Required Parameters:
VoiceConnectorId
"""
AssociatePhoneNumbersWithVoiceConnector(args) = chime("POST", "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers", args)

"""
Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.

Required Parameters:
PhoneNumberId
"""
GetPhoneNumber(args) = chime("GET", "/phone-numbers/{phoneNumberId}", args)

"""
Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector group.

Required Parameters:
VoiceConnectorGroupId
"""
DisassociatePhoneNumbersFromVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers", args)

"""
Updates user details within the UpdateUserRequestItem object for up to 20 users for the specified Amazon Chime account. Currently, only LicenseType updates are supported for this action.

Required Parameters:
AccountId, UpdateUserRequestItems
"""
BatchUpdateUser(args) = chime("POST", "/accounts/{accountId}/users", args)

"""
Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns the User object with the updated personal meeting PIN.

Required Parameters:
AccountId, UserId
"""
ResetPersonalPIN(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin", args)

"""
Moves a phone number from the Deletion queue back into the phone number Inventory.

Required Parameters:
PhoneNumberId
"""
RestorePhoneNumber(args) = chime("POST", "/phone-numbers/{phoneNumberId}?operation=restore", args)

"""
Removes a member from a chat room.

Required Parameters:
AccountId, RoomId, MemberId
"""
DeleteRoomMembership(args) = chime("DELETE", "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}", args)

"""
Creates an order for phone numbers to be provisioned. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you must use the Amazon Chime Voice Connector product type.

Required Parameters:
ProductType, E164PhoneNumbers
"""
CreatePhoneNumberOrder(args) = chime("POST", "/phone-number-orders", args)

"""
Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId
"""
ListAttendees(args) = chime("GET", "/meetings/{meetingId}/attendees", args)

"""
Moves the specified phone number into the Deletion queue. A phone number must be disassociated from any users or Amazon Chime Voice Connectors before it can be deleted. Deleted phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.

Required Parameters:
PhoneNumberId
"""
DeletePhoneNumber(args) = chime("DELETE", "/phone-numbers/{phoneNumberId}", args)

"""
Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
MeetingId, AttendeeId
"""
DeleteAttendee(args) = chime("DELETE", "/meetings/{meetingId}/attendees/{attendeeId}", args)

"""
Lists the phone number orders for the administrator's Amazon Chime account.
"""
ListPhoneNumberOrders() = chime("GET", "/phone-number-orders")
