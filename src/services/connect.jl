include("../AWSCorePrototypeServices.jl")
using .Services: connect

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(resourceArn) = connect("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = connect("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Provides summary information about the security profiles for the specified Amazon Connect instance.
"""
ListSecurityProfiles(InstanceId) = connect("GET", "/security-profiles-summary/$InstanceId")
ListSecurityProfiles(InstanceId, args) = connect("GET", "/security-profiles-summary/$InstanceId", args)
ListSecurityProfiles(a...; b...) = ListSecurityProfiles(a..., b)

"""
Provides information about the hours of operation for the specified Amazon Connect instance.
"""
ListHoursOfOperations(InstanceId) = connect("GET", "/hours-of-operations-summary/$InstanceId")
ListHoursOfOperations(InstanceId, args) = connect("GET", "/hours-of-operations-summary/$InstanceId", args)
ListHoursOfOperations(a...; b...) = ListHoursOfOperations(a..., b)

"""
Updates the identity information for the specified user.
"""
UpdateUserIdentityInfo(IdentityInfo, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/identity-info")
UpdateUserIdentityInfo(IdentityInfo, UserId, InstanceId, args) = connect("POST", "/users/$InstanceId/$UserId/identity-info", args)
UpdateUserIdentityInfo(a...; b...) = UpdateUserIdentityInfo(a..., b)

"""
Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.
"""
GetCurrentMetricData(InstanceId, Filters, CurrentMetrics) = connect("POST", "/metrics/current/$InstanceId")
GetCurrentMetricData(InstanceId, Filters, CurrentMetrics, args) = connect("POST", "/metrics/current/$InstanceId", args)
GetCurrentMetricData(a...; b...) = GetCurrentMetricData(a..., b)

"""
Creates a user account for the specified Amazon Connect instance.
"""
CreateUser(Username, PhoneConfig, SecurityProfileIds, RoutingProfileId, InstanceId) = connect("PUT", "/users/$InstanceId")
CreateUser(Username, PhoneConfig, SecurityProfileIds, RoutingProfileId, InstanceId, args) = connect("PUT", "/users/$InstanceId", args)
CreateUser(a...; b...) = CreateUser(a..., b)

"""
Provides information about the phone numbers for the specified Amazon Connect instance.
"""
ListPhoneNumbers(InstanceId) = connect("GET", "/phone-numbers-summary/$InstanceId")
ListPhoneNumbers(InstanceId, args) = connect("GET", "/phone-numbers-summary/$InstanceId", args)
ListPhoneNumbers(a...; b...) = ListPhoneNumbers(a..., b)

"""
Describes the hierarchy structure of the specified Amazon Connect instance.
"""
DescribeUserHierarchyStructure(InstanceId) = connect("GET", "/user-hierarchy-structure/$InstanceId")
DescribeUserHierarchyStructure(InstanceId, args) = connect("GET", "/user-hierarchy-structure/$InstanceId", args)
DescribeUserHierarchyStructure(a...; b...) = DescribeUserHierarchyStructure(a..., b)

"""
Deletes a user account from the specified Amazon Connect instance.
"""
DeleteUser(InstanceId, UserId) = connect("DELETE", "/users/$InstanceId/$UserId")
DeleteUser(InstanceId, UserId, args) = connect("DELETE", "/users/$InstanceId/$UserId", args)
DeleteUser(a...; b...) = DeleteUser(a..., b)

"""
Provides information about the contact flows for the specified Amazon Connect instance.
"""
ListContactFlows(InstanceId) = connect("GET", "/contact-flows-summary/$InstanceId")
ListContactFlows(InstanceId, args) = connect("GET", "/contact-flows-summary/$InstanceId", args)
ListContactFlows(a...; b...) = ListContactFlows(a..., b)

"""
Adds the specified tags to the specified resource. The supported resource type is users.
"""
TagResource(resourceArn, tags) = connect("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = connect("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the specified tags from the specified resource.
"""
UntagResource(resourceArn, tagKeys) = connect("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = connect("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Assigns the specified routing profile to the specified user.
"""
UpdateUserRoutingProfile(RoutingProfileId, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/routing-profile")
UpdateUserRoutingProfile(RoutingProfileId, UserId, InstanceId, args) = connect("POST", "/users/$InstanceId/$UserId/routing-profile", args)
UpdateUserRoutingProfile(a...; b...) = UpdateUserRoutingProfile(a..., b)

"""
Initiates a contact flow to place an outbound call to a customer. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.
"""
StartOutboundVoiceContact(DestinationPhoneNumber, ContactFlowId, InstanceId) = connect("PUT", "/contact/outbound-voice")
StartOutboundVoiceContact(DestinationPhoneNumber, ContactFlowId, InstanceId, args) = connect("PUT", "/contact/outbound-voice", args)
StartOutboundVoiceContact(a...; b...) = StartOutboundVoiceContact(a..., b)

"""
Provides summary information about the hierarchy groups for the specified Amazon Connect instance.
"""
ListUserHierarchyGroups(InstanceId) = connect("GET", "/user-hierarchy-groups-summary/$InstanceId")
ListUserHierarchyGroups(InstanceId, args) = connect("GET", "/user-hierarchy-groups-summary/$InstanceId", args)
ListUserHierarchyGroups(a...; b...) = ListUserHierarchyGroups(a..., b)

"""
Provides summary information about the users for the specified Amazon Connect instance.
"""
ListUsers(InstanceId) = connect("GET", "/users-summary/$InstanceId")
ListUsers(InstanceId, args) = connect("GET", "/users-summary/$InstanceId", args)
ListUsers(a...; b...) = ListUsers(a..., b)

"""
Ends the specified contact.
"""
StopContact(ContactId, InstanceId) = connect("POST", "/contact/stop")
StopContact(ContactId, InstanceId, args) = connect("POST", "/contact/stop", args)
StopContact(a...; b...) = StopContact(a..., b)

"""
Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS. 
"""
StartChatContact(InstanceId, ContactFlowId, ParticipantDetails) = connect("PUT", "/contact/chat")
StartChatContact(InstanceId, ContactFlowId, ParticipantDetails, args) = connect("PUT", "/contact/chat", args)
StartChatContact(a...; b...) = StartChatContact(a..., b)

"""
Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
"""
UpdateContactAttributes(InitialContactId, InstanceId, Attributes) = connect("POST", "/contact/attributes")
UpdateContactAttributes(InitialContactId, InstanceId, Attributes, args) = connect("POST", "/contact/attributes", args)
UpdateContactAttributes(a...; b...) = UpdateContactAttributes(a..., b)

"""
Assigns the specified hierarchy group to the specified user.
"""
UpdateUserHierarchy(UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/hierarchy")
UpdateUserHierarchy(UserId, InstanceId, args) = connect("POST", "/users/$InstanceId/$UserId/hierarchy", args)
UpdateUserHierarchy(a...; b...) = UpdateUserHierarchy(a..., b)

"""
Retrieves a token for federation.
"""
GetFederationToken(InstanceId) = connect("GET", "/user/federate/$InstanceId")
GetFederationToken(InstanceId, args) = connect("GET", "/user/federate/$InstanceId", args)
GetFederationToken(a...; b...) = GetFederationToken(a..., b)

"""
Updates the phone configuration settings for the specified user.
"""
UpdateUserPhoneConfig(PhoneConfig, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/phone-config")
UpdateUserPhoneConfig(PhoneConfig, UserId, InstanceId, args) = connect("POST", "/users/$InstanceId/$UserId/phone-config", args)
UpdateUserPhoneConfig(a...; b...) = UpdateUserPhoneConfig(a..., b)

"""
Provides summary information about the routing profiles for the specified Amazon Connect instance.
"""
ListRoutingProfiles(InstanceId) = connect("GET", "/routing-profiles-summary/$InstanceId")
ListRoutingProfiles(InstanceId, args) = connect("GET", "/routing-profiles-summary/$InstanceId", args)
ListRoutingProfiles(a...; b...) = ListRoutingProfiles(a..., b)

"""
Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.
"""
GetMetricData(InstanceId, StartTime, EndTime, Filters, HistoricalMetrics) = connect("POST", "/metrics/historical/$InstanceId")
GetMetricData(InstanceId, StartTime, EndTime, Filters, HistoricalMetrics, args) = connect("POST", "/metrics/historical/$InstanceId", args)
GetMetricData(a...; b...) = GetMetricData(a..., b)

"""
Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.
"""
DescribeUser(UserId, InstanceId) = connect("GET", "/users/$InstanceId/$UserId")
DescribeUser(UserId, InstanceId, args) = connect("GET", "/users/$InstanceId/$UserId", args)
DescribeUser(a...; b...) = DescribeUser(a..., b)

"""
Describes the specified hierarchy group.
"""
DescribeUserHierarchyGroup(HierarchyGroupId, InstanceId) = connect("GET", "/user-hierarchy-groups/$InstanceId/$HierarchyGroupId")
DescribeUserHierarchyGroup(HierarchyGroupId, InstanceId, args) = connect("GET", "/user-hierarchy-groups/$InstanceId/$HierarchyGroupId", args)
DescribeUserHierarchyGroup(a...; b...) = DescribeUserHierarchyGroup(a..., b)

"""
Assigns the specified security profiles to the specified user.
"""
UpdateUserSecurityProfiles(SecurityProfileIds, UserId, InstanceId) = connect("POST", "/users/$InstanceId/$UserId/security-profiles")
UpdateUserSecurityProfiles(SecurityProfileIds, UserId, InstanceId, args) = connect("POST", "/users/$InstanceId/$UserId/security-profiles", args)
UpdateUserSecurityProfiles(a...; b...) = UpdateUserSecurityProfiles(a..., b)

"""
Provides information about the queues for the specified Amazon Connect instance.
"""
ListQueues(InstanceId) = connect("GET", "/queues-summary/$InstanceId")
ListQueues(InstanceId, args) = connect("GET", "/queues-summary/$InstanceId", args)
ListQueues(a...; b...) = ListQueues(a..., b)

"""
Retrieves the contact attributes for the specified contact.
"""
GetContactAttributes(InstanceId, InitialContactId) = connect("GET", "/contact/attributes/$InstanceId/$InitialContactId")
GetContactAttributes(InstanceId, InitialContactId, args) = connect("GET", "/contact/attributes/$InstanceId/$InitialContactId", args)
GetContactAttributes(a...; b...) = GetContactAttributes(a..., b)
