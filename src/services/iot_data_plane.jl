include("../AWSCorePrototypeServices.jl")
using .Services: iot_data_plane

"""
Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
"""
GetThingShadow(thingName) = iot_data_plane("GET", "/things/$thingName/shadow")
GetThingShadow(thingName, args) = iot_data_plane("GET", "/things/$thingName/shadow", args)
GetThingShadow(a...; b...) = GetThingShadow(a..., b)

"""
Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
"""
DeleteThingShadow(thingName) = iot_data_plane("DELETE", "/things/$thingName/shadow")
DeleteThingShadow(thingName, args) = iot_data_plane("DELETE", "/things/$thingName/shadow", args)
DeleteThingShadow(a...; b...) = DeleteThingShadow(a..., b)

"""
Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
"""
Publish(topic) = iot_data_plane("POST", "/topics/$topic")
Publish(topic, args) = iot_data_plane("POST", "/topics/$topic", args)
Publish(a...; b...) = Publish(a..., b)

"""
Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
"""
UpdateThingShadow(thingName, payload) = iot_data_plane("POST", "/things/$thingName/shadow")
UpdateThingShadow(thingName, payload, args) = iot_data_plane("POST", "/things/$thingName/shadow", args)
UpdateThingShadow(a...; b...) = UpdateThingShadow(a..., b)
