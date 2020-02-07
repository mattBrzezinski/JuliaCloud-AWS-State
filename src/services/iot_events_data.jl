include("../AWSCorePrototypeServices.jl")
using .Services: iot_events_data

"""
Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
"""
BatchPutMessage(messages) = iot_events_data("POST", "/inputs/messages")
BatchPutMessage(messages, args) = iot_events_data("POST", "/inputs/messages", args)
BatchPutMessage(a...; b...) = BatchPutMessage(a..., b)

"""
Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
"""
BatchUpdateDetector(detectors) = iot_events_data("POST", "/detectors")
BatchUpdateDetector(detectors, args) = iot_events_data("POST", "/detectors", args)
BatchUpdateDetector(a...; b...) = BatchUpdateDetector(a..., b)

"""
Returns information about the specified detector (instance).
"""
DescribeDetector(detectorModelName) = iot_events_data("GET", "/detectors/$detectorModelName/keyValues/")
DescribeDetector(detectorModelName, args) = iot_events_data("GET", "/detectors/$detectorModelName/keyValues/", args)
DescribeDetector(a...; b...) = DescribeDetector(a..., b)

"""
Lists detectors (the instances of a detector model).
"""
ListDetectors(detectorModelName) = iot_events_data("GET", "/detectors/$detectorModelName")
ListDetectors(detectorModelName, args) = iot_events_data("GET", "/detectors/$detectorModelName", args)
ListDetectors(a...; b...) = ListDetectors(a..., b)
