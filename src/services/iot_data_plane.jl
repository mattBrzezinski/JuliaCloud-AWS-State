include("../AWSCorePrototypeServices.jl")
using .Services: iot_data_plane

"""
    GetThingShadow()

Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing."
}
"""
GetThingShadow(args) = iot_data_plane("GET", "/things/{thingName}/shadow", args)

"""
    DeleteThingShadow()

Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing."
}
"""
DeleteThingShadow(args) = iot_data_plane("DELETE", "/things/{thingName}/shadow", args)

"""
    Publish()

Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.

Required Parameters
{
  "topic": "The name of the MQTT topic."
}

Optional Parameters
{
  "qos": "The Quality of Service (QoS) level.",
  "payload": "The state information, in JSON format."
}
"""
Publish(args) = iot_data_plane("POST", "/topics/{topic}", args)

"""
    UpdateThingShadow()

Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing.",
  "payload": "The state information, in JSON format."
}
"""
UpdateThingShadow(args) = iot_data_plane("POST", "/things/{thingName}/shadow", args)
