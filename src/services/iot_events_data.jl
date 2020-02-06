include("../AWSCorePrototypeServices.jl")
using .Services: iot_events_data

"""
Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.

Required Parameters:
messages
"""
BatchPutMessage(args) = iot_events_data("POST", "/inputs/messages", args)

"""
Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.

Required Parameters:
detectors
"""
BatchUpdateDetector(args) = iot_events_data("POST", "/detectors", args)

"""
Returns information about the specified detector (instance).

Required Parameters:
detectorModelName
"""
DescribeDetector(args) = iot_events_data("GET", "/detectors/{detectorModelName}/keyValues/", args)

"""
Lists detectors (the instances of a detector model).

Required Parameters:
detectorModelName
"""
ListDetectors(args) = iot_events_data("GET", "/detectors/{detectorModelName}", args)
