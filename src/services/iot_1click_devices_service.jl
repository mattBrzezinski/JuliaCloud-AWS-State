include("../AWSCorePrototypeServices.jl")
using .Services: iot_1click_devices_service

"""
Lists the tags associated with the specified resource ARN.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = iot_1click_devices_service("GET", "/tags/{resource-arn}", args)

"""
Lists the 1-Click compatible devices associated with your AWS account.
"""
ListDevices() = iot_1click_devices_service("GET", "/devices")

"""
Given a device ID, issues a request to invoke a named device method (with possible
 parameters). See the "Example POST" code snippet below.

Required Parameters:
DeviceId
"""
InvokeDeviceMethod(args) = iot_1click_devices_service("POST", "/devices/{deviceId}/methods", args)

"""
Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
 resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = iot_1click_devices_service("POST", "/tags/{resource-arn}", args)

"""
Using tag keys, deletes the tags (key/value pairs) associated with the specified
 resource ARN.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = iot_1click_devices_service("DELETE", "/tags/{resource-arn}", args)

"""
Using a device ID, returns a DeviceEventsResponse object containing an
 array of events for the device.

Required Parameters:
DeviceId, FromTimeStamp, ToTimeStamp
"""
ListDeviceEvents(args) = iot_1click_devices_service("GET", "/devices/{deviceId}/events", args)

"""
Given a device ID, finalizes the claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 

Required Parameters:
DeviceId
"""
FinalizeDeviceClaim(args) = iot_1click_devices_service("PUT", "/devices/{deviceId}/finalize-claim", args)

"""
Adds device(s) to your account (i.e., claim one or more devices) if and only if you
 received a claim code with the device(s).

Required Parameters:
ClaimCode
"""
ClaimDevicesByClaimCode(args) = iot_1click_devices_service("PUT", "/claims/{claimCode}", args)

"""
Given a device ID, returns a DescribeDeviceResponse object describing the
 details of the device.

Required Parameters:
DeviceId
"""
DescribeDevice(args) = iot_1click_devices_service("GET", "/devices/{deviceId}", args)

"""
Disassociates a device from your AWS account using its device ID.

Required Parameters:
DeviceId
"""
UnclaimDevice(args) = iot_1click_devices_service("PUT", "/devices/{deviceId}/unclaim", args)

"""
Given a device ID, initiates a claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 

Required Parameters:
DeviceId
"""
InitiateDeviceClaim(args) = iot_1click_devices_service("PUT", "/devices/{deviceId}/initiate-claim", args)

"""
Given a device ID, returns the invokable methods associated with the device.

Required Parameters:
DeviceId
"""
GetDeviceMethods(args) = iot_1click_devices_service("GET", "/devices/{deviceId}/methods", args)

"""
Using a Boolean value (true or false), this operation
 enables or disables the device given a device ID.

Required Parameters:
DeviceId
"""
UpdateDeviceState(args) = iot_1click_devices_service("PUT", "/devices/{deviceId}/state", args)
