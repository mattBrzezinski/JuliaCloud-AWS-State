include("../AWSCorePrototypeServices.jl")
using .Services: iot_data_plane

"""
Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.

Required Parameters:
thingName
"""
GetThingShadow(args) = iot_data_plane("GET", "/things/{thingName}/shadow", args)

"""
Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.

Required Parameters:
thingName
"""
DeleteThingShadow(args) = iot_data_plane("DELETE", "/things/{thingName}/shadow", args)

"""
Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.

Required Parameters:
topic
"""
Publish(args) = iot_data_plane("POST", "/topics/{topic}", args)

"""
Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.

Required Parameters:
thingName, payload
"""
UpdateThingShadow(args) = iot_data_plane("POST", "/things/{thingName}/shadow", args)
