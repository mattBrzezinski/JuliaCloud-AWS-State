include("../AWSCorePrototypeServices.jl")
using .Services: kinesis_video

"""
Returns a list of tags associated with the specified signaling channel.
"""
ListTagsForResource(ResourceARN) = kinesis_video("POST", "/ListTagsForResource")
ListTagsForResource(ResourceARN, args) = kinesis_video("POST", "/ListTagsForResource", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN. 
"""
ListTagsForStream() = kinesis_video("POST", "/listTagsForStream")
ListTagsForStream(, args) = kinesis_video("POST", "/listTagsForStream", args)
ListTagsForStream(a...; b...) = ListTagsForStream(a..., b)

"""
Returns the most current information about the signaling channel. You must specify either the name or the ARN of the channel that you want to describe.
"""
DescribeSignalingChannel() = kinesis_video("POST", "/describeSignalingChannel")
DescribeSignalingChannel(, args) = kinesis_video("POST", "/describeSignalingChannel", args)
DescribeSignalingChannel(a...; b...) = DescribeSignalingChannel(a..., b)

"""
Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.  You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. Kinesis video streams support up to 50 tags.
"""
TagStream(Tags) = kinesis_video("POST", "/tagStream")
TagStream(Tags, args) = kinesis_video("POST", "/tagStream", args)
TagStream(a...; b...) = TagStream(a..., b)

"""
Creates a new Kinesis video stream.  When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.   CreateStream is an asynchronous operation. For information about how the service works, see How it Works.  You must have permissions for the KinesisVideo:CreateStream action.
"""
CreateStream(StreamName) = kinesis_video("POST", "/createStream")
CreateStream(StreamName, args) = kinesis_video("POST", "/createStream", args)
CreateStream(a...; b...) = CreateStream(a..., b)

"""
Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.
"""
DeleteSignalingChannel(ChannelARN) = kinesis_video("POST", "/deleteSignalingChannel")
DeleteSignalingChannel(ChannelARN, args) = kinesis_video("POST", "/deleteSignalingChannel", args)
DeleteSignalingChannel(a...; b...) = DeleteSignalingChannel(a..., b)

"""
Deletes a Kinesis video stream and the data contained in the stream.  This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.    To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.  This operation requires permission for the KinesisVideo:DeleteStream action.
"""
DeleteStream(StreamARN) = kinesis_video("POST", "/deleteStream")
DeleteStream(StreamARN, args) = kinesis_video("POST", "/deleteStream", args)
DeleteStream(a...; b...) = DeleteStream(a..., b)

"""
 Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN.   The retention period that you specify replaces the current value.  This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.  
"""
UpdateDataRetention(CurrentVersion, Operation, DataRetentionChangeInHours) = kinesis_video("POST", "/updateDataRetention")
UpdateDataRetention(CurrentVersion, Operation, DataRetentionChangeInHours, args) = kinesis_video("POST", "/updateDataRetention", args)
UpdateDataRetention(a...; b...) = UpdateDataRetention(a..., b)

"""
Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.
"""
UntagStream(TagKeyList) = kinesis_video("POST", "/untagStream")
UntagStream(TagKeyList, args) = kinesis_video("POST", "/untagStream", args)
UntagStream(a...; b...) = UntagStream(a..., b)

"""
Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.   UpdateStream is an asynchronous operation, and takes time to complete.
"""
UpdateStream(CurrentVersion) = kinesis_video("POST", "/updateStream")
UpdateStream(CurrentVersion, args) = kinesis_video("POST", "/updateStream", args)
UpdateStream(a...; b...) = UpdateStream(a..., b)

"""
Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
"""
ListSignalingChannels() = kinesis_video("POST", "/listSignalingChannels")
ListSignalingChannels(, args) = kinesis_video("POST", "/listSignalingChannels", args)
ListSignalingChannels(a...; b...) = ListSignalingChannels(a..., b)

"""
Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.
"""
TagResource(ResourceARN, Tags) = kinesis_video("POST", "/TagResource")
TagResource(ResourceARN, Tags, args) = kinesis_video("POST", "/TagResource", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.
"""
UntagResource(ResourceARN, TagKeyList) = kinesis_video("POST", "/UntagResource")
UntagResource(ResourceARN, TagKeyList, args) = kinesis_video("POST", "/UntagResource", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation).   The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.  In the request, specify the stream either by StreamName or StreamARN.
"""
GetDataEndpoint(APIName) = kinesis_video("POST", "/getDataEndpoint")
GetDataEndpoint(APIName, args) = kinesis_video("POST", "/getDataEndpoint", args)
GetDataEndpoint(a...; b...) = GetDataEndpoint(a..., b)

"""
Updates the existing signaling channel. This is an asynchronous operation and takes time to complete.  If the MessageTtlSeconds value is updated (either increased or reduced), then it only applies to new messages sent via this channel after it's been updated. Existing messages are still expire as per the previous MessageTtlSeconds value.
"""
UpdateSignalingChannel(ChannelARN, CurrentVersion) = kinesis_video("POST", "/updateSignalingChannel")
UpdateSignalingChannel(ChannelARN, CurrentVersion, args) = kinesis_video("POST", "/updateSignalingChannel", args)
UpdateSignalingChannel(a...; b...) = UpdateSignalingChannel(a..., b)

"""
Creates a signaling channel.   CreateSignalingChannel is an asynchronous operation.
"""
CreateSignalingChannel(ChannelName) = kinesis_video("POST", "/createSignalingChannel")
CreateSignalingChannel(ChannelName, args) = kinesis_video("POST", "/createSignalingChannel", args)
CreateSignalingChannel(a...; b...) = CreateSignalingChannel(a..., b)

"""
Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties.  Protocols is used to determine the communication mechanism. For example, specifying WSS as the protocol, results in this API producing a secure websocket endpoint, and specifying HTTPS as the protocol, results in this API generating an HTTPS endpoint.   Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER. 
"""
GetSignalingChannelEndpoint(ChannelARN) = kinesis_video("POST", "/getSignalingChannelEndpoint")
GetSignalingChannelEndpoint(ChannelARN, args) = kinesis_video("POST", "/getSignalingChannelEndpoint", args)
GetSignalingChannelEndpoint(a...; b...) = GetSignalingChannelEndpoint(a..., b)

"""
Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 
"""
ListStreams() = kinesis_video("POST", "/listStreams")
ListStreams(, args) = kinesis_video("POST", "/listStreams", args)
ListStreams(a...; b...) = ListStreams(a..., b)

"""
Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN. 
"""
DescribeStream() = kinesis_video("POST", "/describeStream")
DescribeStream(, args) = kinesis_video("POST", "/describeStream", args)
DescribeStream(a...; b...) = DescribeStream(a..., b)
