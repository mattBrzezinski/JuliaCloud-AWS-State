include("../AWSCorePrototypeServices.jl")
using .Services: connectparticipant

"""
Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.
"""
CreateParticipantConnection(Type, ParticipantToken) = connectparticipant("POST", "/participant/connection")
CreateParticipantConnection(Type, ParticipantToken, args) = connectparticipant("POST", "/participant/connection", args)
CreateParticipantConnection(a...; b...) = CreateParticipantConnection(a..., b)

"""
Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
GetTranscript(ConnectionToken) = connectparticipant("POST", "/participant/transcript")
GetTranscript(ConnectionToken, args) = connectparticipant("POST", "/participant/transcript", args)
GetTranscript(a...; b...) = GetTranscript(a..., b)

"""
Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
SendEvent(ContentType, ConnectionToken) = connectparticipant("POST", "/participant/event")
SendEvent(ContentType, ConnectionToken, args) = connectparticipant("POST", "/participant/event", args)
SendEvent(a...; b...) = SendEvent(a..., b)

"""
Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
SendMessage(ContentType, Content, ConnectionToken) = connectparticipant("POST", "/participant/message")
SendMessage(ContentType, Content, ConnectionToken, args) = connectparticipant("POST", "/participant/message", args)
SendMessage(a...; b...) = SendMessage(a..., b)

"""
Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
"""
DisconnectParticipant(ConnectionToken) = connectparticipant("POST", "/participant/disconnect")
DisconnectParticipant(ConnectionToken, args) = connectparticipant("POST", "/participant/disconnect", args)
DisconnectParticipant(a...; b...) = DisconnectParticipant(a..., b)
