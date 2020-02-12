include("../AWSCorePrototypeServices.jl")
using .Services: pinpoint_sms_voice

"""
    CreateConfigurationSetEventDestination

Create a new event destination in a configuration set.

Required Parameters:
{
  "ConfigurationSetName": "ConfigurationSetName"
}


Optional Parameters:
{
  "EventDestination": "",
  "EventDestinationName": "A name that identifies the event destination."
}

"""

CreateConfigurationSetEventDestination(args) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", args)
"""
    GetConfigurationSetEventDestinations

Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.

Required Parameters:
{
  "ConfigurationSetName": "ConfigurationSetName"
}


Optional Parameters:
{}

"""

GetConfigurationSetEventDestinations(args) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", args)
"""
    CreateConfigurationSet

Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.

Required Parameters:
{}


Optional Parameters:
{
  "ConfigurationSetName": "The name that you want to give the configuration set."
}

"""
CreateConfigurationSet() = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets")
CreateConfigurationSet(args) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets", args)

"""
    DeleteConfigurationSet

Deletes an existing configuration set.

Required Parameters:
{
  "ConfigurationSetName": "ConfigurationSetName"
}


Optional Parameters:
{}

"""

DeleteConfigurationSet(args) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", args)
"""
    ListConfigurationSets

List all of the configuration sets associated with your Amazon Pinpoint account in the current region.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to the API that indicates the position in the list of results.",
  "PageSize": "Used to specify the number of items that should be returned in the response."
}

"""
ListConfigurationSets() = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets")
ListConfigurationSets(args) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets", args)

"""
    SendVoiceMessage

Create a new voice message and send it to a recipient's phone number.

Required Parameters:
{}


Optional Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to use to send the message.",
  "Content": "",
  "DestinationPhoneNumber": "The phone number that you want to send the voice message to.",
  "OriginationPhoneNumber": "The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.",
  "CallerId": "The phone number that appears on recipients' devices when they receive the message."
}

"""
SendVoiceMessage() = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message")
SendVoiceMessage(args) = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message", args)

"""
    DeleteConfigurationSetEventDestination

Deletes an event destination in a configuration set.

Required Parameters:
{
  "ConfigurationSetName": "ConfigurationSetName",
  "EventDestinationName": "EventDestinationName"
}


Optional Parameters:
{}

"""

DeleteConfigurationSetEventDestination(args) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)
"""
    UpdateConfigurationSetEventDestination

Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.

Required Parameters:
{
  "ConfigurationSetName": "ConfigurationSetName",
  "EventDestinationName": "EventDestinationName"
}


Optional Parameters:
{
  "EventDestination": ""
}

"""

UpdateConfigurationSetEventDestination(args) = pinpoint_sms_voice("PUT", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)