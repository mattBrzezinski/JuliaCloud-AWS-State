include("../AWSCorePrototypeServices.jl")
using .Services: kinesis_video

"""
    ListTagsForResource()

Returns a list of tags associated with the specified signaling channel.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the signaling channel for which you want to list tags."
}

Optional Parameters
{
  "NextToken": "If you specify this parameter and the result of a ListTagsForResource call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags. "
}
"""
ListTagsForResource(args) = kinesis_video("POST", "/ListTagsForResource", args)

"""
    ListTagsForStream()

Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN. 

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream that you want to list tags for.",
  "NextToken": "If you specify this parameter and the result of a ListTagsForStream call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.",
  "StreamName": "The name of the stream that you want to list tags for."
}
"""

ListTagsForStream() = kinesis_video("POST", "/listTagsForStream")
ListTagsForStream(args) = kinesis_video("POST", "/listTagsForStream", args)

"""
    DescribeSignalingChannel()

Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.

Optional Parameters
{
  "ChannelName": "The name of the signaling channel that you want to describe.",
  "ChannelARN": "The ARN of the signaling channel that you want to describe."
}
"""

DescribeSignalingChannel() = kinesis_video("POST", "/describeSignalingChannel")
DescribeSignalingChannel(args) = kinesis_video("POST", "/describeSignalingChannel", args)

"""
    TagStream()

Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.  You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. Kinesis video streams support up to 50 tags.

Required Parameters
{
  "Tags": "A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional)."
}

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags to.",
  "StreamName": "The name of the stream that you want to add the tag or tags to."
}
"""
TagStream(args) = kinesis_video("POST", "/tagStream", args)

"""
    CreateStream()

Creates a new Kinesis video stream.  When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.   CreateStream is an asynchronous operation. For information about how the service works, see How it Works.  You must have permissions for the KinesisVideo:CreateStream action.

Required Parameters
{
  "StreamName": "A name for the stream that you are creating. The stream name is an identifier for the stream, and must be unique for each account and region."
}

Optional Parameters
{
  "Tags": "A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).",
  "DeviceName": "The name of the device that is writing to the stream.   In the current implementation, Kinesis Video Streams does not use this name. ",
  "MediaType": "The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements for guidelines. Example valid values include \"video/h264\" and \"video/h264,audio/aac\". This parameter is optional; the default value is null (or empty in JSON).",
  "KmsKeyId": "The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (aws/kinesisvideo) is used.  For more information, see DescribeKey. ",
  "DataRetentionInHours": "The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is 0, indicating that the stream does not persist data. When the DataRetentionInHours value is 0, consumers can still consume the fragments that remain in the service host buffer, which has a retention time limit of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the buffer when either limit is reached."
}
"""
CreateStream(args) = kinesis_video("POST", "/createStream", args)

"""
    DeleteSignalingChannel()

Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.

Required Parameters
{
  "ChannelARN": "The Amazon Resource Name (ARN) of the signaling channel that you want to delete."
}

Optional Parameters
{
  "CurrentVersion": "The current version of the signaling channel that you want to delete. You can obtain the current version by invoking the DescribeSignalingChannel or ListSignalingChannels API operations."
}
"""
DeleteSignalingChannel(args) = kinesis_video("POST", "/deleteSignalingChannel", args)

"""
    DeleteStream()

Deletes a Kinesis video stream and the data contained in the stream.  This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.    To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.  This operation requires permission for the KinesisVideo:DeleteStream action.

Required Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream that you want to delete. "
}

Optional Parameters
{
  "CurrentVersion": "Optional: The version of the stream that you want to delete.  Specify the version as a safeguard to ensure that your are deleting the correct stream. To get the stream version, use the DescribeStream API. If not specified, only the CreationTime is checked before deleting the stream."
}
"""
DeleteStream(args) = kinesis_video("POST", "/deleteStream", args)

"""
    UpdateDataRetention()

 Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN.   The retention period that you specify replaces the current value.  This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.  

Required Parameters
{
  "Operation": "Indicates whether you want to increase or decrease the retention period.",
  "DataRetentionChangeInHours": "The retention period, in hours. The value you specify replaces the current value. The maximum value for this parameter is 87600 (ten years).",
  "CurrentVersion": "The version of the stream whose retention period you want to change. To get the version, call either the DescribeStream or the ListStreams API."
}

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream whose retention period you want to change.",
  "StreamName": "The name of the stream whose retention period you want to change."
}
"""
UpdateDataRetention(args) = kinesis_video("POST", "/updateDataRetention", args)

"""
    UntagStream()

Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.

Required Parameters
{
  "TagKeyList": "A list of the keys of the tags that you want to remove."
}

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream that you want to remove tags from.",
  "StreamName": "The name of the stream that you want to remove tags from."
}
"""
UntagStream(args) = kinesis_video("POST", "/untagStream", args)

"""
    UpdateStream()

Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.   UpdateStream is an asynchronous operation, and takes time to complete.

Required Parameters
{
  "CurrentVersion": "The version of the stream whose metadata you want to update."
}

Optional Parameters
{
  "StreamARN": "The ARN of the stream whose metadata you want to update.",
  "DeviceName": "The name of the device that is writing to the stream.    In the current implementation, Kinesis Video Streams does not use this name.  ",
  "StreamName": "The name of the stream whose metadata you want to update. The stream name is an identifier for the stream, and must be unique for each account and region.",
  "MediaType": "The stream's media type. Use MediaType to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements. To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify video/h264 as the MediaType."
}
"""
UpdateStream(args) = kinesis_video("POST", "/updateStream", args)

"""
    ListSignalingChannels()

Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.

Optional Parameters
{
  "MaxResults": "The maximum number of channels to return in the response. The default is 500.",
  "NextToken": "If you specify this parameter, when the result of a ListSignalingChannels operation is truncated, the call returns the NextToken in the response. To get another batch of channels, provide this token in your next request.",
  "ChannelNameCondition": "Optional: Returns only the channels that satisfy a specific condition."
}
"""

ListSignalingChannels() = kinesis_video("POST", "/listSignalingChannels")
ListSignalingChannels(args) = kinesis_video("POST", "/listSignalingChannels", args)

"""
    TagResource()

Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the signaling channel to which you want to add tags.",
  "Tags": "A list of tags to associate with the specified signaling channel. Each tag is a key-value pair."
}
"""
TagResource(args) = kinesis_video("POST", "/TagResource", args)

"""
    UntagResource()

Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.",
  "TagKeyList": "A list of the keys of the tags that you want to remove."
}
"""
UntagResource(args) = kinesis_video("POST", "/UntagResource", args)

"""
    GetDataEndpoint()

Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation).   The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.  In the request, specify the stream either by StreamName or StreamARN.

Required Parameters
{
  "APIName": "The name of the API action for which to get an endpoint."
}

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamName in the request. ",
  "StreamName": "The name of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamARN in the request."
}
"""
GetDataEndpoint(args) = kinesis_video("POST", "/getDataEndpoint", args)

"""
    UpdateSignalingChannel()

Updates the existing signaling channel. This is an asynchronous operation and takes time to complete.  If the MessageTtlSeconds value is updated (either increased or reduced), it only applies to new messages sent via this channel after it's been updated. Existing messages are still expired as per the previous MessageTtlSeconds value.

Required Parameters
{
  "CurrentVersion": "The current version of the signaling channel that you want to update.",
  "ChannelARN": "The Amazon Resource Name (ARN) of the signaling channel that you want to update."
}

Optional Parameters
{
  "SingleMasterConfiguration": "The structure containing the configuration for the SINGLE_MASTER type of the signaling channel that you want to update. "
}
"""
UpdateSignalingChannel(args) = kinesis_video("POST", "/updateSignalingChannel", args)

"""
    CreateSignalingChannel()

Creates a signaling channel.   CreateSignalingChannel is an asynchronous operation.

Required Parameters
{
  "ChannelName": "A name for the signaling channel that you are creating. It must be unique for each AWS account and AWS Region."
}

Optional Parameters
{
  "ChannelType": "A type of the signaling channel that you are creating. Currently, SINGLE_MASTER is the only supported channel type. ",
  "SingleMasterConfiguration": "A structure containing the configuration for the SINGLE_MASTER channel type. ",
  "Tags": "A set of tags (key-value pairs) that you want to associate with this channel."
}
"""
CreateSignalingChannel(args) = kinesis_video("POST", "/createSignalingChannel", args)

"""
    GetSignalingChannelEndpoint()

Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties.  Protocols is used to determine the communication mechanism. For example, if you specify WSS as the protocol, this API produces a secure websocket endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS endpoint.   Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER. 

Required Parameters
{
  "ChannelARN": "The Amazon Resource Name (ARN) of the signalling channel for which you want to get an endpoint."
}

Optional Parameters
{
  "SingleMasterChannelEndpointConfiguration": "A structure containing the endpoint configuration for the SINGLE_MASTER channel type."
}
"""
GetSignalingChannelEndpoint(args) = kinesis_video("POST", "/getSignalingChannelEndpoint", args)

"""
    ListStreams()

Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 

Optional Parameters
{
  "MaxResults": "The maximum number of streams to return in the response. The default is 10,000.",
  "NextToken": "If you specify this parameter, when the result of a ListStreams operation is truncated, the call returns the NextToken in the response. To get another batch of streams, provide this token in your next request.",
  "StreamNameCondition": "Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition. "
}
"""

ListStreams() = kinesis_video("POST", "/listStreams")
ListStreams(args) = kinesis_video("POST", "/listStreams", args)

"""
    DescribeStream()

Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN. 

Optional Parameters
{
  "StreamARN": "The Amazon Resource Name (ARN) of the stream.",
  "StreamName": "The name of the stream."
}
"""

DescribeStream() = kinesis_video("POST", "/describeStream")
DescribeStream(args) = kinesis_video("POST", "/describeStream", args)