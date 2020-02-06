include("../AWSCorePrototypeServices.jl")
using .Services: connect

"""
Lists the tags for the specified resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = connect("GET", "/tags/{resourceArn}", args)

"""
Provides summary information about the security profiles for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListSecurityProfiles(args) = connect("GET", "/security-profiles-summary/{InstanceId}", args)

"""
Provides information about the hours of operation for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListHoursOfOperations(args) = connect("GET", "/hours-of-operations-summary/{InstanceId}", args)

"""
Updates the identity information for the specified user.

Required Parameters:
IdentityInfo, UserId, InstanceId
"""
UpdateUserIdentityInfo(args) = connect("POST", "/users/{InstanceId}/{UserId}/identity-info", args)

"""
Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.

Required Parameters:
InstanceId, Filters, CurrentMetrics
"""
GetCurrentMetricData(args) = connect("POST", "/metrics/current/{InstanceId}", args)

"""
Creates a user account for the specified Amazon Connect instance.

Required Parameters:
Username, PhoneConfig, SecurityProfileIds, RoutingProfileId, InstanceId
"""
CreateUser(args) = connect("PUT", "/users/{InstanceId}", args)

"""
Provides information about the phone numbers for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListPhoneNumbers(args) = connect("GET", "/phone-numbers-summary/{InstanceId}", args)

"""
Describes the hierarchy structure of the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
DescribeUserHierarchyStructure(args) = connect("GET", "/user-hierarchy-structure/{InstanceId}", args)

"""
Deletes a user account from the specified Amazon Connect instance.

Required Parameters:
InstanceId, UserId
"""
DeleteUser(args) = connect("DELETE", "/users/{InstanceId}/{UserId}", args)

"""
Provides information about the contact flows for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListContactFlows(args) = connect("GET", "/contact-flows-summary/{InstanceId}", args)

"""
Adds the specified tags to the specified resource. The supported resource type is users.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = connect("POST", "/tags/{resourceArn}", args)

"""
Removes the specified tags from the specified resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = connect("DELETE", "/tags/{resourceArn}", args)

"""
Assigns the specified routing profile to the specified user.

Required Parameters:
RoutingProfileId, UserId, InstanceId
"""
UpdateUserRoutingProfile(args) = connect("POST", "/users/{InstanceId}/{UserId}/routing-profile", args)

"""
Initiates a contact flow to place an outbound call to a customer. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.

Required Parameters:
DestinationPhoneNumber, ContactFlowId, InstanceId
"""
StartOutboundVoiceContact(args) = connect("PUT", "/contact/outbound-voice", args)

"""
Provides summary information about the hierarchy groups for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListUserHierarchyGroups(args) = connect("GET", "/user-hierarchy-groups-summary/{InstanceId}", args)

"""
Provides summary information about the users for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListUsers(args) = connect("GET", "/users-summary/{InstanceId}", args)

"""
Ends the specified contact.

Required Parameters:
ContactId, InstanceId
"""
StopContact(args) = connect("POST", "/contact/stop", args)

"""
Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS. 

Required Parameters:
InstanceId, ContactFlowId, ParticipantDetails
"""
StartChatContact(args) = connect("PUT", "/contact/chat", args)

"""
Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.

Required Parameters:
InitialContactId, InstanceId, Attributes
"""
UpdateContactAttributes(args) = connect("POST", "/contact/attributes", args)

"""
Assigns the specified hierarchy group to the specified user.

Required Parameters:
UserId, InstanceId
"""
UpdateUserHierarchy(args) = connect("POST", "/users/{InstanceId}/{UserId}/hierarchy", args)

"""
Retrieves a token for federation.

Required Parameters:
InstanceId
"""
GetFederationToken(args) = connect("GET", "/user/federate/{InstanceId}", args)

"""
Updates the phone configuration settings for the specified user.

Required Parameters:
PhoneConfig, UserId, InstanceId
"""
UpdateUserPhoneConfig(args) = connect("POST", "/users/{InstanceId}/{UserId}/phone-config", args)

"""
Provides summary information about the routing profiles for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListRoutingProfiles(args) = connect("GET", "/routing-profiles-summary/{InstanceId}", args)

"""
Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.

Required Parameters:
InstanceId, StartTime, EndTime, Filters, HistoricalMetrics
"""
GetMetricData(args) = connect("POST", "/metrics/historical/{InstanceId}", args)

"""
Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.

Required Parameters:
UserId, InstanceId
"""
DescribeUser(args) = connect("GET", "/users/{InstanceId}/{UserId}", args)

"""
Describes the specified hierarchy group.

Required Parameters:
HierarchyGroupId, InstanceId
"""
DescribeUserHierarchyGroup(args) = connect("GET", "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", args)

"""
Assigns the specified security profiles to the specified user.

Required Parameters:
SecurityProfileIds, UserId, InstanceId
"""
UpdateUserSecurityProfiles(args) = connect("POST", "/users/{InstanceId}/{UserId}/security-profiles", args)

"""
Provides information about the queues for the specified Amazon Connect instance.

Required Parameters:
InstanceId
"""
ListQueues(args) = connect("GET", "/queues-summary/{InstanceId}", args)

"""
Retrieves the contact attributes for the specified contact.

Required Parameters:
InstanceId, InitialContactId
"""
GetContactAttributes(args) = connect("GET", "/contact/attributes/{InstanceId}/{InitialContactId}", args)
