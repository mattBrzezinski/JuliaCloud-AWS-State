include("../AWSCorePrototypeServices.jl")
using .Services: connectparticipant

"""
    CreateParticipantConnection()

Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.

Required Parameters
{
  "Type": "Type of connection information required.",
  "ParticipantToken": "Participant Token as obtained from StartChatContact API response."
}
"""
CreateParticipantConnection(args) = connectparticipant("POST", "/participant/connection", args)

"""
    GetTranscript()

Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters
{
  "ConnectionToken": "The authentication token associated with the participant's connection."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in the page. Default: 10. ",
  "NextToken": "The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.",
  "ContactId": "The contactId from the current contact chain for which transcript is needed.",
  "ScanDirection": "The direction from StartPosition from which to retrieve message. Default: BACKWARD when no StartPosition is provided, FORWARD with StartPosition. ",
  "StartPosition": "A filtering option for where to start.",
  "SortOrder": "The sort order for the records. Default: DESCENDING."
}
"""
GetTranscript(args) = connectparticipant("POST", "/participant/transcript", args)

"""
    SendEvent()

Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters
{
  "ConnectionToken": "The authentication token associated with the participant's connection.",
  "ContentType": "The content type of the request. Supported types are:   application/vnd.amazonaws.connect.event.typing   application/vnd.amazonaws.connect.event.connection.acknowledged  "
}

Optional Parameters
{
  "Content": "The content of the event to be sent (for example, message text). This is not yet supported.",
  "ClientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}
"""
SendEvent(args) = connectparticipant("POST", "/participant/event", args)

"""
    SendMessage()

Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters
{
  "ConnectionToken": "The authentication token associated with the connection.",
  "Content": "The content of the message.",
  "ContentType": "The type of the content. Supported types are text/plain."
}

Optional Parameters
{
  "ClientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}
"""
SendMessage(args) = connectparticipant("POST", "/participant/message", args)

"""
    DisconnectParticipant()

Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters
{
  "ConnectionToken": "The authentication token associated with the participant's connection."
}

Optional Parameters
{
  "ClientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}
"""
DisconnectParticipant(args) = connectparticipant("POST", "/participant/disconnect", args)