include("../AWSCorePrototypeServices.jl")
using .Services: connectparticipant

"""
Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.

Required Parameters:
Type, ParticipantToken
"""
CreateParticipantConnection(args) = connectparticipant("POST", "/participant/connection", args)

"""
Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters:
ConnectionToken
"""
GetTranscript(args) = connectparticipant("POST", "/participant/transcript", args)

"""
Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters:
ContentType, ConnectionToken
"""
SendEvent(args) = connectparticipant("POST", "/participant/event", args)

"""
Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters:
ContentType, Content, ConnectionToken
"""
SendMessage(args) = connectparticipant("POST", "/participant/message", args)

"""
Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.

Required Parameters:
ConnectionToken
"""
DisconnectParticipant(args) = connectparticipant("POST", "/participant/disconnect", args)
