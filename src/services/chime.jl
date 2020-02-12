include("../AWSCorePrototypeServices.jl")
using .Services: chime

"""
    DeleteAccount

Deletes the specified Amazon Chime account. You must suspend all users before deleting a Team account. You can use the BatchSuspendUser action to do so. For EnterpriseLWA and EnterpriseAD accounts, you must release the claimed domains for your Amazon Chime account before deletion. As soon as you release the domain, all users under that account are suspended. Deleted accounts appear in your Disabled accounts list for 90 days. To restore a deleted account from your Disabled accounts list, you must contact AWS Support. After 90 days, deleted accounts are permanently removed from your Disabled accounts list.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

DeleteAccount(args) = chime("DELETE", "/accounts/{accountId}", args)
"""
    DeleteVoiceConnector

Deletes the specified Amazon Chime Voice Connector. Any phone numbers associated with the Amazon Chime Voice Connector must be disassociated from it before it can be deleted.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

DeleteVoiceConnector(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}", args)
"""
    UpdateBot

Updates the status of the specified bot, such as starting or stopping the bot from running in your Amazon Chime Enterprise account.

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "Disabled": "When true, stops the specified bot from running in your account."
}

"""

UpdateBot(args) = chime("POST", "/accounts/{accountId}/bots/{botId}", args)
"""
    CreateUser

Creates a user under the specified Amazon Chime account.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "Email": "The user's email address.",
  "UserType": "The user type.",
  "Username": "The user name."
}

"""

CreateUser(args) = chime("POST", "/accounts/{accountId}/users?operation=create", args)
"""
    ListPhoneNumbers

Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "FilterValue": "The value to use for the filter.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "Status": "The phone number status.",
  "FilterName": "The filter to use to limit the number of results.",
  "ProductType": "The phone number product type."
}

"""
ListPhoneNumbers() = chime("GET", "/phone-numbers")
ListPhoneNumbers(args) = chime("GET", "/phone-numbers", args)

"""
    CreateMeeting

Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "ClientRequestToken": "The unique identifier for the client request. Use a different token for different meetings."
}


Optional Parameters:
{
  "MeetingHostId": "Reserved.",
  "MediaRegion": "The Region in which to create the meeting. Available values: ap-northeast-1, ap-southeast-1, ap-southeast-2, ca-central-1, eu-central-1, eu-north-1, eu-west-1, eu-west-2, eu-west-3, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2.",
  "NotificationsConfiguration": "The configuration for resource targets to receive notifications when meeting and attendee events occur."
}

"""

CreateMeeting(args) = chime("POST", "/meetings", args)
"""
    ListVoiceConnectorTerminationCredentials

Lists the SIP credentials for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

ListVoiceConnectorTerminationCredentials(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination/credentials", args)
"""
    BatchUnsuspendUser

Removes the suspension from up to 50 previously suspended users for the specified Amazon Chime EnterpriseLWA account. Only users on EnterpriseLWA accounts can be unsuspended using this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Previously suspended users who are unsuspended using this action are returned to Registered status. Users who are not previously suspended are ignored.

Required Parameters:
{
  "UserIdList": "The request containing the user IDs to unsuspend.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

BatchUnsuspendUser(args) = chime("POST", "/accounts/{accountId}/users?operation=unsuspend", args)
"""
    UpdateVoiceConnector

Updates details for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID.",
  "RequireEncryption": "When enabled, requires encryption for the Amazon Chime Voice Connector.",
  "Name": "The name of the Amazon Chime Voice Connector."
}


Optional Parameters:
{}

"""

UpdateVoiceConnector(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}", args)
"""
    GetBot

Retrieves details for the specified bot, such as bot email address, bot type, status, and display name.

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetBot(args) = chime("GET", "/accounts/{accountId}/bots/{botId}", args)
"""
    RegenerateSecurityToken

Regenerates the security token for a bot.

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

RegenerateSecurityToken(args) = chime("POST", "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token", args)
"""
    GetAccount

Retrieves details for the specified Amazon Chime account, such as account type and supported licenses.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetAccount(args) = chime("GET", "/accounts/{accountId}", args)
"""
    GetVoiceConnectorLoggingConfiguration

Retrieves the logging configuration details for the specified Amazon Chime Voice Connector. Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorLoggingConfiguration(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/logging-configuration", args)
"""
    UpdateRoom

Updates room details, such as the room name.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{
  "Name": "The room name."
}

"""

UpdateRoom(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}", args)
"""
    UpdatePhoneNumber

Updates phone number details, such as product type or calling name, for the specified phone number ID. You can update one phone number detail at a time. For example, you can update either the product type or the calling name in one action. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.

Required Parameters:
{
  "PhoneNumberId": "The phone number ID."
}


Optional Parameters:
{
  "CallingName": "The outbound calling name associated with the phone number.",
  "ProductType": "The product type."
}

"""

UpdatePhoneNumber(args) = chime("POST", "/phone-numbers/{phoneNumberId}", args)
"""
    UpdateAccountSettings

Updates the settings for the specified Amazon Chime account. You can update settings for remote control of shared screens, or for the dial-out option. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "AccountSettings": "The Amazon Chime account settings to update."
}


Optional Parameters:
{}

"""

UpdateAccountSettings(args) = chime("PUT", "/accounts/{accountId}/settings", args)
"""
    CreateVoiceConnectorGroup

Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate up to three existing Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including VoiceConnectorItems in the request. You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.

Required Parameters:
{
  "Name": "The name of the Amazon Chime Voice Connector group."
}


Optional Parameters:
{
  "VoiceConnectorItems": "The Amazon Chime Voice Connectors to route inbound calls to."
}

"""

CreateVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups", args)
"""
    DeleteVoiceConnectorTerminationCredentials

Deletes the specified SIP credentials used by your equipment to authenticate during call termination.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{
  "Usernames": "The RFC2617 compliant username associated with the SIP credentials, in US-ASCII format."
}

"""

DeleteVoiceConnectorTerminationCredentials(args) = chime("POST", "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete", args)
"""
    PutVoiceConnectorOrigination

Adds origination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID.",
  "Origination": "The origination setting details to add."
}


Optional Parameters:
{}

"""

PutVoiceConnectorOrigination(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/origination", args)
"""
    GetVoiceConnectorStreamingConfiguration

Retrieves the streaming configuration details for the specified Amazon Chime Voice Connector. Shows whether media streaming is enabled for sending to Amazon Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis data.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorStreamingConfiguration(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)
"""
    PutEventsConfiguration

Creates an events configuration that allows a bot to receive outgoing events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda function ARN. For more information, see Bot.

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "OutboundEventsHTTPSEndpoint": "HTTPS endpoint that allows the bot to receive outgoing events.",
  "LambdaFunctionArn": "Lambda function ARN that allows the bot to receive outgoing events."
}

"""

PutEventsConfiguration(args) = chime("PUT", "/accounts/{accountId}/bots/{botId}/events-configuration", args)
"""
    LogoutUser

Logs out the specified user from all of the devices they are currently logged into.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

LogoutUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=logout", args)
"""
    SearchAvailablePhoneNumbers

Searches phone numbers that can be ordered.

Required Parameters:
{}


Optional Parameters:
{
  "TollFreePrefix": "The toll-free prefix that you use to filter results.",
  "City": "The city used to filter results.",
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "AreaCode": "The area code used to filter results.",
  "Country": "The country used to filter results.",
  "State": "The state used to filter results."
}

"""
SearchAvailablePhoneNumbers() = chime("GET", "/search?type=phone-numbers")
SearchAvailablePhoneNumbers(args) = chime("GET", "/search?type=phone-numbers", args)

"""
    BatchDeletePhoneNumber

Moves phone numbers into the Deletion queue. Phone numbers must be disassociated from any users or Amazon Chime Voice Connectors before they can be deleted. Phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.

Required Parameters:
{
  "PhoneNumberIds": "List of phone number IDs."
}


Optional Parameters:
{}

"""

BatchDeletePhoneNumber(args) = chime("POST", "/phone-numbers?operation=batch-delete", args)
"""
    DeleteMeeting

Deletes the specified Amazon Chime SDK meeting. When a meeting is deleted, its attendees are also deleted and clients can no longer join it. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID."
}


Optional Parameters:
{}

"""

DeleteMeeting(args) = chime("DELETE", "/meetings/{meetingId}", args)
"""
    GetPhoneNumberSettings

Retrieves the phone number settings for the administrator's AWS account, such as the default outbound calling name.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetPhoneNumberSettings() = chime("GET", "/settings/phone-number")
GetPhoneNumberSettings(args) = chime("GET", "/settings/phone-number", args)

"""
    PutVoiceConnectorTermination

Adds termination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID.",
  "Termination": "The termination setting details to add."
}


Optional Parameters:
{}

"""

PutVoiceConnectorTermination(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/termination", args)
"""
    PutVoiceConnectorTerminationCredentials

Adds termination SIP credentials for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{
  "Credentials": "The termination SIP credentials."
}

"""

PutVoiceConnectorTerminationCredentials(args) = chime("POST", "/voice-connectors/{voiceConnectorId}/termination/credentials?operation=put", args)
"""
    AssociateSigninDelegateGroupsWithAccount

Associates the specified sign-in delegate groups with the specified Amazon Chime account.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "SigninDelegateGroups": "The sign-in delegate groups."
}


Optional Parameters:
{}

"""

AssociateSigninDelegateGroupsWithAccount(args) = chime("POST", "/accounts/{accountId}?operation=associate-signin-delegate-groups", args)
"""
    ListRoomMemberships

Lists the membership details for the specified room, such as the members' IDs, email addresses, and names.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""

ListRoomMemberships(args) = chime("GET", "/accounts/{accountId}/rooms/{roomId}/memberships", args)
"""
    BatchCreateRoomMembership

Adds up to 50 members to a chat room. Members can be either users or bots. The member role designates whether the member is a chat room administrator or a general chat room member.

Required Parameters:
{
  "MembershipItemList": "The list of membership items.",
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{}

"""

BatchCreateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create", args)
"""
    UpdateAccount

Updates account details for the specified Amazon Chime account. Currently, only account name updates are supported for this action.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "Name": "The new name for the specified Amazon Chime account."
}

"""

UpdateAccount(args) = chime("POST", "/accounts/{accountId}", args)
"""
    ListAccounts

Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Defaults to 100.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "UserEmail": "User email address with which to filter results.",
  "Name": "Amazon Chime account name prefix with which to filter results."
}

"""
ListAccounts() = chime("GET", "/accounts")
ListAccounts(args) = chime("GET", "/accounts", args)

"""
    GetUser

Retrieves details for the specified user ID, such as primary email address, license type, and personal meeting PIN. To retrieve user details with an email address instead of a user ID, use the ListUsers action, and then filter by email address.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetUser(args) = chime("GET", "/accounts/{accountId}/users/{userId}", args)
"""
    ListVoiceConnectors

Lists the Amazon Chime Voice Connectors for the administrator's AWS account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""
ListVoiceConnectors() = chime("GET", "/voice-connectors")
ListVoiceConnectors(args) = chime("GET", "/voice-connectors", args)

"""
    ListBots

Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. The default is 10.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""

ListBots(args) = chime("GET", "/accounts/{accountId}/bots", args)
"""
    DeleteEventsConfiguration

Deletes the events configuration that allows a bot to receive outgoing events.

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

DeleteEventsConfiguration(args) = chime("DELETE", "/accounts/{accountId}/bots/{botId}/events-configuration", args)
"""
    DeleteVoiceConnectorOrigination

Deletes the origination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

DeleteVoiceConnectorOrigination(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/origination", args)
"""
    AssociatePhoneNumbersWithVoiceConnectorGroup

Associates phone numbers with the specified Amazon Chime Voice Connector group.

Required Parameters:
{
  "VoiceConnectorGroupId": "The Amazon Chime Voice Connector group ID."
}


Optional Parameters:
{
  "ForceAssociate": "If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector Group and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.",
  "E164PhoneNumbers": "List of phone numbers, in E.164 format."
}

"""

AssociatePhoneNumbersWithVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers", args)
"""
    PutVoiceConnectorLoggingConfiguration

Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.

Required Parameters:
{
  "LoggingConfiguration": "The logging configuration details to add.",
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

PutVoiceConnectorLoggingConfiguration(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/logging-configuration", args)
"""
    GetPhoneNumberOrder

Retrieves details for the specified phone number order, such as order creation timestamp, phone numbers in E.164 format, product type, and order status.

Required Parameters:
{
  "PhoneNumberOrderId": "The ID for the phone number order."
}


Optional Parameters:
{}

"""

GetPhoneNumberOrder(args) = chime("GET", "/phone-number-orders/{phoneNumberOrderId}", args)
"""
    CreateRoom

Creates a chat room for the specified Amazon Chime account.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "Name": "The room name."
}


Optional Parameters:
{
  "ClientRequestToken": "The idempotency token for the request."
}

"""

CreateRoom(args) = chime("POST", "/accounts/{accountId}/rooms", args)
"""
    UpdatePhoneNumberSettings

Updates the phone number settings for the administrator's AWS account, such as the default outbound calling name. You can update the default outbound calling name once every seven days. Outbound calling names can take up to 72 hours to update.

Required Parameters:
{
  "CallingName": "The default outbound calling name for the account."
}


Optional Parameters:
{}

"""

UpdatePhoneNumberSettings(args) = chime("PUT", "/settings/phone-number", args)
"""
    BatchUpdatePhoneNumber

Updates phone number product types or calling names. You can update one attribute at a time for each UpdatePhoneNumberRequestItem. For example, you can update either the product type or the calling name. For product types, choose from Amazon Chime Business Calling and Amazon Chime Voice Connector. For toll-free numbers, you must use the Amazon Chime Voice Connector product type. Updates to outbound calling names can take up to 72 hours to complete. Pending updates to outbound calling names must be complete before you can request another update.

Required Parameters:
{
  "UpdatePhoneNumberRequestItems": "The request containing the phone number IDs and product types or calling names to update."
}


Optional Parameters:
{}

"""

BatchUpdatePhoneNumber(args) = chime("POST", "/phone-numbers?operation=batch-update", args)
"""
    CreateVoiceConnector

Creates an Amazon Chime Voice Connector under the administrator's AWS account. You can choose to create an Amazon Chime Voice Connector in a specific AWS Region. Enabling CreateVoiceConnectorRequest RequireEncryption configures your Amazon Chime Voice Connector to use TLS transport for SIP signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and unencrypted outbound calls are blocked.

Required Parameters:
{
  "RequireEncryption": "When enabled, requires encryption for the Amazon Chime Voice Connector.",
  "Name": "The name of the Amazon Chime Voice Connector."
}


Optional Parameters:
{
  "AwsRegion": "The AWS Region in which the Amazon Chime Voice Connector is created. Default value: us-east-1."
}

"""

CreateVoiceConnector(args) = chime("POST", "/voice-connectors", args)
"""
    DisassociatePhoneNumbersFromVoiceConnector

Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{
  "E164PhoneNumbers": "List of phone numbers, in E.164 format."
}

"""

DisassociatePhoneNumbersFromVoiceConnector(args) = chime("POST", "/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers", args)
"""
    DisassociatePhoneNumberFromUser

Disassociates the primary provisioned phone number from the specified Amazon Chime user.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

DisassociatePhoneNumberFromUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number", args)
"""
    GetVoiceConnectorGroup

Retrieves details for the specified Amazon Chime Voice Connector group, such as timestamps, name, and associated VoiceConnectorItems.

Required Parameters:
{
  "VoiceConnectorGroupId": "The Amazon Chime Voice Connector group ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorGroup(args) = chime("GET", "/voice-connector-groups/{voiceConnectorGroupId}", args)
"""
    DeleteVoiceConnectorTermination

Deletes the termination settings for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

DeleteVoiceConnectorTermination(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/termination", args)
"""
    ListVoiceConnectorGroups

Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""
ListVoiceConnectorGroups() = chime("GET", "/voice-connector-groups")
ListVoiceConnectorGroups(args) = chime("GET", "/voice-connector-groups", args)

"""
    UpdateUser

Updates user details for a specified user ID. Currently, only LicenseType updates are supported for this action.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "AlexaForBusinessMetadata": "The Alexa for Business metadata.",
  "LicenseType": "The user license type to update. This must be a supported license type for the Amazon Chime account that the user belongs to.",
  "UserType": "The user type."
}

"""

UpdateUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}", args)
"""
    CreateAttendee

Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID.",
  "ExternalUserId": "The Amazon Chime SDK external user ID. Links the attendee to an identity managed by a builder application."
}


Optional Parameters:
{}

"""

CreateAttendee(args) = chime("POST", "/meetings/{meetingId}/attendees", args)
"""
    CreateRoomMembership

Adds a member to a chat room. A member can be either a user or a bot. The member role designates whether the member is a chat room administrator or a general chat room member.

Required Parameters:
{
  "MemberId": "The Amazon Chime member ID (user ID or bot ID).",
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{
  "Role": "The role of the member."
}

"""

CreateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships", args)
"""
    GetGlobalSettings

Retrieves global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetGlobalSettings() = chime("GET", "/settings")
GetGlobalSettings(args) = chime("GET", "/settings", args)

"""
    GetVoiceConnectorTermination

Retrieves termination setting details for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorTermination(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination", args)
"""
    UpdateRoomMembership

Updates room membership details, such as the member role. The member role designates whether the member is a chat room administrator or a general chat room member. The member role can be updated only for user IDs.

Required Parameters:
{
  "MemberId": "The member ID.",
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{
  "Role": "The role of the member."
}

"""

UpdateRoomMembership(args) = chime("POST", "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}", args)
"""
    GetEventsConfiguration

Gets details for an events configuration that allows a bot to receive outgoing events, such as an HTTPS endpoint or Lambda function ARN. 

Required Parameters:
{
  "BotId": "The bot ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetEventsConfiguration(args) = chime("GET", "/accounts/{accountId}/bots/{botId}/events-configuration", args)
"""
    GetRoom

Retrieves room details, such as the room name.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{}

"""

GetRoom(args) = chime("GET", "/accounts/{accountId}/rooms/{roomId}", args)
"""
    BatchCreateAttendee

Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide. 

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID.",
  "Attendees": "The request containing the attendees to create."
}


Optional Parameters:
{}

"""

BatchCreateAttendee(args) = chime("POST", "/meetings/{meetingId}/attendees?operation=batch-create", args)
"""
    PutVoiceConnectorStreamingConfiguration

Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis. It also sets the retention period, in hours, for the Amazon Kinesis data.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID.",
  "StreamingConfiguration": "The streaming configuration details to add."
}


Optional Parameters:
{}

"""

PutVoiceConnectorStreamingConfiguration(args) = chime("PUT", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)
"""
    ListUsers

Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Defaults to 100.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "UserEmail": "Optional. The user email address used to filter results. Maximum 1.",
  "UserType": "The user type."
}

"""

ListUsers(args) = chime("GET", "/accounts/{accountId}/users", args)
"""
    UpdateUserSettings

Updates the settings for the specified user, such as phone number settings.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID.",
  "UserSettings": "The user settings to update."
}


Optional Parameters:
{}

"""

UpdateUserSettings(args) = chime("PUT", "/accounts/{accountId}/users/{userId}/settings", args)
"""
    GetVoiceConnectorTerminationHealth

Retrieves information about the last time a SIP OPTIONS ping was received from your SIP infrastructure for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorTerminationHealth(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/termination/health", args)
"""
    ListMeetings

Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""
ListMeetings() = chime("GET", "/meetings")
ListMeetings(args) = chime("GET", "/meetings", args)

"""
    UpdateGlobalSettings

Updates global settings for the administrator's AWS account, such as Amazon Chime Business Calling and Amazon Chime Voice Connector settings.

Required Parameters:
{
  "BusinessCalling": "The Amazon Chime Business Calling settings.",
  "VoiceConnector": "The Amazon Chime Voice Connector settings."
}


Optional Parameters:
{}

"""

UpdateGlobalSettings(args) = chime("PUT", "/settings", args)
"""
    GetAttendee

Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID.",
  "AttendeeId": "The Amazon Chime SDK attendee ID."
}


Optional Parameters:
{}

"""

GetAttendee(args) = chime("GET", "/meetings/{meetingId}/attendees/{attendeeId}", args)
"""
    CreateAccount

Creates an Amazon Chime account under the administrator's AWS account. Only Team account types are currently supported for this action. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide.

Required Parameters:
{
  "Name": "The name of the Amazon Chime account."
}


Optional Parameters:
{}

"""

CreateAccount(args) = chime("POST", "/accounts", args)
"""
    CreateBot

Creates a bot for an Amazon Chime Enterprise account.

Required Parameters:
{
  "DisplayName": "The bot display name.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "Domain": "The domain of the Amazon Chime Enterprise account."
}

"""

CreateBot(args) = chime("POST", "/accounts/{accountId}/bots", args)
"""
    DisassociateSigninDelegateGroupsFromAccount

Disassociates the specified sign-in delegate groups from the specified Amazon Chime account.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "GroupNames": "The sign-in delegate group names."
}


Optional Parameters:
{}

"""

DisassociateSigninDelegateGroupsFromAccount(args) = chime("POST", "/accounts/{accountId}?operation=disassociate-signin-delegate-groups", args)
"""
    AssociatePhoneNumberWithUser

Associates a phone number with the specified Amazon Chime user.

Required Parameters:
{
  "E164PhoneNumber": "The phone number, in E.164 format.",
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

AssociatePhoneNumberWithUser(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=associate-phone-number", args)
"""
    GetVoiceConnectorOrigination

Retrieves origination setting details for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnectorOrigination(args) = chime("GET", "/voice-connectors/{voiceConnectorId}/origination", args)
"""
    GetAccountSettings

Retrieves account settings for the specified Amazon Chime account ID, such as remote control and dial out settings. For more information about these settings, see Use the Policies Page in the Amazon Chime Administration Guide.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetAccountSettings(args) = chime("GET", "/accounts/{accountId}/settings", args)
"""
    DeleteRoom

Deletes a chat room.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The chat room ID."
}


Optional Parameters:
{}

"""

DeleteRoom(args) = chime("DELETE", "/accounts/{accountId}/rooms/{roomId}", args)
"""
    GetVoiceConnector

Retrieves details for the specified Amazon Chime Voice Connector, such as timestamps, name, outbound host, and encryption requirements.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

GetVoiceConnector(args) = chime("GET", "/voice-connectors/{voiceConnectorId}", args)
"""
    BatchSuspendUser

Suspends up to 50 users from a Team or EnterpriseLWA Amazon Chime account. For more information about different account types, see Managing Your Amazon Chime Accounts in the Amazon Chime Administration Guide. Users suspended from a Team account are disassociated from the account, but they can continue to use Amazon Chime as free users. To remove the suspension from suspended Team account users, invite them to the Team account again. You can use the InviteUsers action to do so. Users suspended from an EnterpriseLWA account are immediately signed out of Amazon Chime and can no longer sign in. To remove the suspension from suspended EnterpriseLWA account users, use the BatchUnsuspendUser action.  To sign out users without suspending them, use the LogoutUser action.

Required Parameters:
{
  "UserIdList": "The request containing the user IDs to suspend.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

BatchSuspendUser(args) = chime("POST", "/accounts/{accountId}/users?operation=suspend", args)
"""
    DeleteVoiceConnectorStreamingConfiguration

Deletes the streaming configuration for the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{}

"""

DeleteVoiceConnectorStreamingConfiguration(args) = chime("DELETE", "/voice-connectors/{voiceConnectorId}/streaming-configuration", args)
"""
    GetUserSettings

Retrieves settings for the specified user ID, such as any associated phone number settings.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

GetUserSettings(args) = chime("GET", "/accounts/{accountId}/users/{userId}/settings", args)
"""
    InviteUsers

Sends email to a maximum of 50 users, inviting them to the specified Amazon Chime Team account. Only Team account types are currently supported for this action. 

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID.",
  "UserEmailList": "The user email addresses to which to send the email invitation."
}


Optional Parameters:
{
  "UserType": "The user type."
}

"""

InviteUsers(args) = chime("POST", "/accounts/{accountId}/users?operation=add", args)
"""
    UpdateVoiceConnectorGroup

Updates details for the specified Amazon Chime Voice Connector group, such as the name and Amazon Chime Voice Connector priority ranking.

Required Parameters:
{
  "VoiceConnectorItems": "The VoiceConnectorItems to associate with the group.",
  "Name": "The name of the Amazon Chime Voice Connector group.",
  "VoiceConnectorGroupId": "The Amazon Chime Voice Connector group ID."
}


Optional Parameters:
{}

"""

UpdateVoiceConnectorGroup(args) = chime("PUT", "/voice-connector-groups/{voiceConnectorGroupId}", args)
"""
    GetMeeting

Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID."
}


Optional Parameters:
{}

"""

GetMeeting(args) = chime("GET", "/meetings/{meetingId}", args)
"""
    DeleteVoiceConnectorGroup

Deletes the specified Amazon Chime Voice Connector group. Any VoiceConnectorItems and phone numbers associated with the group must be removed before it can be deleted.

Required Parameters:
{
  "VoiceConnectorGroupId": "The Amazon Chime Voice Connector group ID."
}


Optional Parameters:
{}

"""

DeleteVoiceConnectorGroup(args) = chime("DELETE", "/voice-connector-groups/{voiceConnectorGroupId}", args)
"""
    ListRooms

Lists the room details for the specified Amazon Chime account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.

Required Parameters:
{
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{
  "MemberId": "The member ID (user ID or bot ID).",
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""

ListRooms(args) = chime("GET", "/accounts/{accountId}/rooms", args)
"""
    AssociatePhoneNumbersWithVoiceConnector

Associates phone numbers with the specified Amazon Chime Voice Connector.

Required Parameters:
{
  "VoiceConnectorId": "The Amazon Chime Voice Connector ID."
}


Optional Parameters:
{
  "ForceAssociate": "If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.",
  "E164PhoneNumbers": "List of phone numbers, in E.164 format."
}

"""

AssociatePhoneNumbersWithVoiceConnector(args) = chime("POST", "/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers", args)
"""
    GetPhoneNumber

Retrieves details for the specified phone number ID, such as associations, capabilities, and product type.

Required Parameters:
{
  "PhoneNumberId": "The phone number ID."
}


Optional Parameters:
{}

"""

GetPhoneNumber(args) = chime("GET", "/phone-numbers/{phoneNumberId}", args)
"""
    DisassociatePhoneNumbersFromVoiceConnectorGroup

Disassociates the specified phone numbers from the specified Amazon Chime Voice Connector group.

Required Parameters:
{
  "VoiceConnectorGroupId": "The Amazon Chime Voice Connector group ID."
}


Optional Parameters:
{
  "E164PhoneNumbers": "List of phone numbers, in E.164 format."
}

"""

DisassociatePhoneNumbersFromVoiceConnectorGroup(args) = chime("POST", "/voice-connector-groups/{voiceConnectorGroupId}?operation=disassociate-phone-numbers", args)
"""
    BatchUpdateUser

Updates user details within the UpdateUserRequestItem object for up to 20 users for the specified Amazon Chime account. Currently, only LicenseType updates are supported for this action.

Required Parameters:
{
  "UpdateUserRequestItems": "The request containing the user IDs and details to update.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

BatchUpdateUser(args) = chime("POST", "/accounts/{accountId}/users", args)
"""
    ResetPersonalPIN

Resets the personal meeting PIN for the specified user on an Amazon Chime account. Returns the User object with the updated personal meeting PIN.

Required Parameters:
{
  "UserId": "The user ID.",
  "AccountId": "The Amazon Chime account ID."
}


Optional Parameters:
{}

"""

ResetPersonalPIN(args) = chime("POST", "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin", args)
"""
    RestorePhoneNumber

Moves a phone number from the Deletion queue back into the phone number Inventory.

Required Parameters:
{
  "PhoneNumberId": "The phone number."
}


Optional Parameters:
{}

"""

RestorePhoneNumber(args) = chime("POST", "/phone-numbers/{phoneNumberId}?operation=restore", args)
"""
    DeleteRoomMembership

Removes a member from a chat room.

Required Parameters:
{
  "MemberId": "The member ID (user ID or bot ID).",
  "AccountId": "The Amazon Chime account ID.",
  "RoomId": "The room ID."
}


Optional Parameters:
{}

"""

DeleteRoomMembership(args) = chime("DELETE", "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}", args)
"""
    CreatePhoneNumberOrder

Creates an order for phone numbers to be provisioned. Choose from Amazon Chime Business Calling and Amazon Chime Voice Connector product types. For toll-free numbers, you must use the Amazon Chime Voice Connector product type.

Required Parameters:
{
  "E164PhoneNumbers": "List of phone numbers, in E.164 format.",
  "ProductType": "The phone number product type."
}


Optional Parameters:
{}

"""

CreatePhoneNumberOrder(args) = chime("POST", "/phone-number-orders", args)
"""
    ListAttendees

Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""

ListAttendees(args) = chime("GET", "/meetings/{meetingId}/attendees", args)
"""
    DeletePhoneNumber

Moves the specified phone number into the Deletion queue. A phone number must be disassociated from any users or Amazon Chime Voice Connectors before it can be deleted. Deleted phone numbers remain in the Deletion queue for 7 days before they are deleted permanently.

Required Parameters:
{
  "PhoneNumberId": "The phone number ID."
}


Optional Parameters:
{}

"""

DeletePhoneNumber(args) = chime("DELETE", "/phone-numbers/{phoneNumberId}", args)
"""
    DeleteAttendee

Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

Required Parameters:
{
  "MeetingId": "The Amazon Chime SDK meeting ID.",
  "AttendeeId": "The Amazon Chime SDK attendee ID."
}


Optional Parameters:
{}

"""

DeleteAttendee(args) = chime("DELETE", "/meetings/{meetingId}/attendees/{attendeeId}", args)
"""
    ListPhoneNumberOrders

Lists the phone number orders for the administrator's Amazon Chime account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to use to retrieve the next page of results."
}

"""
ListPhoneNumberOrders() = chime("GET", "/phone-number-orders")
ListPhoneNumberOrders(args) = chime("GET", "/phone-number-orders", args)
