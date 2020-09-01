include("../AWSCorePrototypeServices.jl")
using .Services: iot_data_plane

"""
    ListNamedShadowsForThing()

Lists the shadows for the specified thing.

Required Parameters
{
  "thingName": "The name of the thing."
}

Optional Parameters
{
  "pageSize": "The result page size.",
  "nextToken": "The token to retrieve the next set of results."
}
"""
ListNamedShadowsForThing(args) = iot_data_plane("GET", "/api/things/shadow/ListNamedShadowsForThing/{thingName}", args)

"""
    GetThingShadow()

Gets the shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing."
}

Optional Parameters
{
  "shadowName": "The name of the shadow."
}
"""
GetThingShadow(args) = iot_data_plane("GET", "/things/{thingName}/shadow", args)

"""
    DeleteThingShadow()

Deletes the shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing."
}

Optional Parameters
{
  "shadowName": "The name of the shadow."
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

Updates the shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.

Required Parameters
{
  "thingName": "The name of the thing.",
  "payload": "The state information, in JSON format."
}

Optional Parameters
{
  "shadowName": "The name of the shadow."
}
"""
UpdateThingShadow(args) = iot_data_plane("POST", "/things/{thingName}/shadow", args)
