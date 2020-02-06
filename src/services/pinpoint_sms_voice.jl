include("../AWSCorePrototypeServices.jl")
using .Services: pinpoint_sms_voice

"""
Create a new event destination in a configuration set.

Required Parameters:
ConfigurationSetName
"""
CreateConfigurationSetEventDestination(args) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.

Required Parameters:
ConfigurationSetName
"""
GetConfigurationSetEventDestinations(args) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
"""
CreateConfigurationSet() = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets")

"""
Deletes an existing configuration set.

Required Parameters:
ConfigurationSetName
"""
DeleteConfigurationSet(args) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", args)

"""
List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
"""
ListConfigurationSets() = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets")

"""
Create a new voice message and send it to a recipient's phone number.
"""
SendVoiceMessage() = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message")

"""
Deletes an event destination in a configuration set.

Required Parameters:
EventDestinationName, ConfigurationSetName
"""
DeleteConfigurationSetEventDestination(args) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)

"""
Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.

Required Parameters:
EventDestinationName, ConfigurationSetName
"""
UpdateConfigurationSetEventDestination(args) = pinpoint_sms_voice("PUT", "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)
