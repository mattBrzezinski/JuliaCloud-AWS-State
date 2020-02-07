include("../AWSCorePrototypeServices.jl")
using .Services: iot_1click_devices_service

"""
Lists the tags associated with the specified resource ARN.
"""
ListTagsForResource(ResourceArn) = iot_1click_devices_service("GET", "/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = iot_1click_devices_service("GET", "/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Lists the 1-Click compatible devices associated with your AWS account.
"""
ListDevices() = iot_1click_devices_service("GET", "/devices")
ListDevices(, args) = iot_1click_devices_service("GET", "/devices", args)
ListDevices(a...; b...) = ListDevices(a..., b)

"""
Given a device ID, issues a request to invoke a named device method (with possible
 parameters). See the "Example POST" code snippet below.
"""
InvokeDeviceMethod(DeviceId) = iot_1click_devices_service("POST", "/devices/$deviceId/methods")
InvokeDeviceMethod(DeviceId, args) = iot_1click_devices_service("POST", "/devices/$deviceId/methods", args)
InvokeDeviceMethod(a...; b...) = InvokeDeviceMethod(a..., b)

"""
Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
 resource.
"""
TagResource(ResourceArn, Tags) = iot_1click_devices_service("POST", "/tags/$resource-arn")
TagResource(ResourceArn, Tags, args) = iot_1click_devices_service("POST", "/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Using tag keys, deletes the tags (key/value pairs) associated with the specified
 resource ARN.
"""
UntagResource(TagKeys, ResourceArn) = iot_1click_devices_service("DELETE", "/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = iot_1click_devices_service("DELETE", "/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Using a device ID, returns a DeviceEventsResponse object containing an
 array of events for the device.
"""
ListDeviceEvents(DeviceId, FromTimeStamp, ToTimeStamp) = iot_1click_devices_service("GET", "/devices/$deviceId/events")
ListDeviceEvents(DeviceId, FromTimeStamp, ToTimeStamp, args) = iot_1click_devices_service("GET", "/devices/$deviceId/events", args)
ListDeviceEvents(a...; b...) = ListDeviceEvents(a..., b)

"""
Given a device ID, finalizes the claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 
"""
FinalizeDeviceClaim(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/finalize-claim")
FinalizeDeviceClaim(DeviceId, args) = iot_1click_devices_service("PUT", "/devices/$deviceId/finalize-claim", args)
FinalizeDeviceClaim(a...; b...) = FinalizeDeviceClaim(a..., b)

"""
Adds device(s) to your account (i.e., claim one or more devices) if and only if you
 received a claim code with the device(s).
"""
ClaimDevicesByClaimCode(ClaimCode) = iot_1click_devices_service("PUT", "/claims/$claimCode")
ClaimDevicesByClaimCode(ClaimCode, args) = iot_1click_devices_service("PUT", "/claims/$claimCode", args)
ClaimDevicesByClaimCode(a...; b...) = ClaimDevicesByClaimCode(a..., b)

"""
Given a device ID, returns a DescribeDeviceResponse object describing the
 details of the device.
"""
DescribeDevice(DeviceId) = iot_1click_devices_service("GET", "/devices/$deviceId")
DescribeDevice(DeviceId, args) = iot_1click_devices_service("GET", "/devices/$deviceId", args)
DescribeDevice(a...; b...) = DescribeDevice(a..., b)

"""
Disassociates a device from your AWS account using its device ID.
"""
UnclaimDevice(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/unclaim")
UnclaimDevice(DeviceId, args) = iot_1click_devices_service("PUT", "/devices/$deviceId/unclaim", args)
UnclaimDevice(a...; b...) = UnclaimDevice(a..., b)

"""
Given a device ID, initiates a claim request for the associated device.
 Claiming a device consists of initiating a claim, then publishing a device event,
 and finalizing the claim. For a device of type button, a device event can
 be published by simply clicking the device.
 
"""
InitiateDeviceClaim(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/initiate-claim")
InitiateDeviceClaim(DeviceId, args) = iot_1click_devices_service("PUT", "/devices/$deviceId/initiate-claim", args)
InitiateDeviceClaim(a...; b...) = InitiateDeviceClaim(a..., b)

"""
Given a device ID, returns the invokable methods associated with the device.
"""
GetDeviceMethods(DeviceId) = iot_1click_devices_service("GET", "/devices/$deviceId/methods")
GetDeviceMethods(DeviceId, args) = iot_1click_devices_service("GET", "/devices/$deviceId/methods", args)
GetDeviceMethods(a...; b...) = GetDeviceMethods(a..., b)

"""
Using a Boolean value (true or false), this operation
 enables or disables the device given a device ID.
"""
UpdateDeviceState(DeviceId) = iot_1click_devices_service("PUT", "/devices/$deviceId/state")
UpdateDeviceState(DeviceId, args) = iot_1click_devices_service("PUT", "/devices/$deviceId/state", args)
UpdateDeviceState(a...; b...) = UpdateDeviceState(a..., b)
