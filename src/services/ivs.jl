include("../AWSCorePrototypeServices.jl")
using .Services: ivs

"""
    ListTagsForResource()

Gets information about AWS tags for the specified ARN.

Required Parameters
{
  "resourceArn": "The ARN of the resource to be retrieved."
}

Optional Parameters
{
  "maxResults": "Maximum number of tags to return.",
  "nextToken": "The first tag to retrieve. This is used for pagination; see the nextToken response field."
}
"""
ListTagsForResource(args) = ivs("GET", "/tags/{resourceArn}", args)

"""
    GetStream()

Gets information about the active (live) stream on a specified channel.

Required Parameters
{
  "channelArn": "Channel ARN for stream to be accessed."
}
"""
GetStream(args) = ivs("POST", "/GetStream", args)

"""
    ListPlaybackKeyPairs()

Gets summary information about playback key pairs.

Optional Parameters
{
  "maxResults": "The first key pair to retrieve. This is used for pagination; see the nextToken response field.",
  "nextToken": "Maximum number of key pairs to return."
}
"""

ListPlaybackKeyPairs() = ivs("POST", "/ListPlaybackKeyPairs")
ListPlaybackKeyPairs(args) = ivs("POST", "/ListPlaybackKeyPairs", args)

"""
    BatchGetStreamKey()

Performs GetStreamKey on multiple ARNs simultaneously.

Required Parameters
{
  "arns": "Array of ARNs, one per channel."
}
"""
BatchGetStreamKey(args) = ivs("POST", "/BatchGetStreamKey", args)

"""
    GetStreamKey()

Gets stream-key information for a specified ARN.

Required Parameters
{
  "arn": "ARN for the stream key to be retrieved."
}
"""
GetStreamKey(args) = ivs("POST", "/GetStreamKey", args)

"""
    ListChannels()

Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified string.

Optional Parameters
{
  "maxResults": "Maximum number of channels to return.",
  "nextToken": "The first channel to retrieve. This is used for pagination; see the nextToken response field.",
  "filterByName": "Filters the channel list to match the specified name."
}
"""

ListChannels() = ivs("POST", "/ListChannels")
ListChannels(args) = ivs("POST", "/ListChannels", args)

"""
    UpdateChannel()

Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.

Required Parameters
{
  "arn": "ARN of the channel to be updated."
}

Optional Parameters
{
  "name": "Channel name.",
  "authorized": "Whether the channel is authorized. Default: false.",
  "latencyMode": "Channel latency mode. Default: LOW.",
  "type": "Channel type, which determines the allowable resolution and bitrate. If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately. Valid values:    STANDARD: Multiple qualities are generated from the original input, to automatically give viewers the best experience for their devices and network conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.    BASIC: Amazon IVS delivers the original input to viewers. The viewer’s video-quality choice is limited to the original input. Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.   Default: STANDARD."
}
"""
UpdateChannel(args) = ivs("POST", "/UpdateChannel", args)

"""
    ListStreamKeys()

Gets summary information about stream keys for the specified channel.

Required Parameters
{
  "channelArn": "Channel ARN used to filter the list."
}

Optional Parameters
{
  "maxResults": "Maximum number of streamKeys to return.",
  "nextToken": "The first stream key to retrieve. This is used for pagination; see the nextToken response field."
}
"""
ListStreamKeys(args) = ivs("POST", "/ListStreamKeys", args)

"""
    BatchGetChannel()

Performs GetChannel on multiple ARNs simultaneously.

Required Parameters
{
  "arns": "Array of ARNs, one per channel."
}
"""
BatchGetChannel(args) = ivs("POST", "/BatchGetChannel", args)

"""
    CreateChannel()

Creates a new channel and an associated stream key to start streaming.

Optional Parameters
{
  "name": "Channel name.",
  "authorized": "Whether the channel is authorized. Default: false.",
  "latencyMode": "Channel latency mode. Default: LOW.",
  "tags": "See Channel tags.",
  "type": "Channel type, which determines the allowable resolution and bitrate. If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately. Valid values:    STANDARD: Multiple qualities are generated from the original input, to automatically give viewers the best experience for their devices and network conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.    BASIC: Amazon IVS delivers the original input to viewers. The viewer’s video-quality choice is limited to the original input. Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.   Default: STANDARD."
}
"""

CreateChannel() = ivs("POST", "/CreateChannel")
CreateChannel(args) = ivs("POST", "/CreateChannel", args)

"""
    StopStream()

Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with DeleteStreamKey to prevent further streaming to a channel.  Many streaming client-software libraries automatically reconnect a dropped RTMPS session, so to stop the stream permanently, you may want to first revoke the streamKey attached to the channel. 

Required Parameters
{
  "channelArn": "ARN of the channel for which the stream is to be stopped."
}
"""
StopStream(args) = ivs("POST", "/StopStream", args)

"""
    TagResource()

Adds or updates tags for the AWS resource with the specified ARN.

Required Parameters
{
  "resourceArn": "ARN of the resource for which tags are to be added or updated.",
  "tags": "Array of tags to be added or updated."
}
"""
TagResource(args) = ivs("POST", "/tags/{resourceArn}", args)

"""
    DeleteChannel()

Deletes the specified channel and its associated stream keys.

Required Parameters
{
  "arn": "ARN of the channel to be deleted."
}
"""
DeleteChannel(args) = ivs("POST", "/DeleteChannel", args)

"""
    PutMetadata()

Inserts metadata into an RTMPS stream for the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1KB payload.

Required Parameters
{
  "channelArn": "ARN of the channel into which metadata is inserted. This channel must have an active stream.",
  "metadata": "Metadata to insert into the stream. Maximum: 1 KB per request."
}
"""
PutMetadata(args) = ivs("POST", "/PutMetadata", args)

"""
    DeleteStreamKey()

Deletes the stream key for the specified ARN, so it can no longer be used to stream.

Required Parameters
{
  "arn": "ARN of the stream key to be deleted."
}
"""
DeleteStreamKey(args) = ivs("POST", "/DeleteStreamKey", args)

"""
    DeletePlaybackKeyPair()

Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s privateKey.

Required Parameters
{
  "arn": "ARN of the key pair to be deleted."
}
"""
DeletePlaybackKeyPair(args) = ivs("POST", "/DeletePlaybackKeyPair", args)

"""
    CreateStreamKey()

Creates a stream key, used to initiate a stream, for the specified channel ARN. Note that CreateChannel creates a stream key. If you subsequently use CreateStreamKey on the same channel, it will fail because a stream key already exists and there is a limit of 1 stream key per channel. To reset the stream key on a channel, use DeleteStreamKey and then CreateStreamKey.

Required Parameters
{
  "channelArn": "ARN of the channel for which to create the stream key."
}

Optional Parameters
{
  "tags": "See Channel tags."
}
"""
CreateStreamKey(args) = ivs("POST", "/CreateStreamKey", args)

"""
    UntagResource()

Removes tags from the resource with the specified ARN.

Required Parameters
{
  "resourceArn": "ARN of the resource for which tags are to be removed.",
  "tagKeys": "Array of tags to be removed."
}
"""
UntagResource(args) = ivs("DELETE", "/tags/{resourceArn}", args)

"""
    GetChannel()

Gets the channel configuration for the specified channel ARN. See also BatchGetChannel.

Required Parameters
{
  "arn": "ARN of the channel for which the configuration is to be retrieved."
}
"""
GetChannel(args) = ivs("POST", "/GetChannel", args)

"""
    GetPlaybackKeyPair()

Gets a specified playback authorization key pair and returns the arn and fingerprint. The privateKey held by the caller can be used to generate viewer authorization tokens, to grant viewers access to authorized channels.

Required Parameters
{
  "arn": "ARN of the key pair to be returned."
}
"""
GetPlaybackKeyPair(args) = ivs("POST", "/GetPlaybackKeyPair", args)

"""
    ListStreams()

Gets summary information about live streams in your account, in the AWS region where the API request is processed.

Optional Parameters
{
  "maxResults": "Maximum number of streams to return.",
  "nextToken": "The first stream to retrieve. This is used for pagination; see the nextToken response field."
}
"""

ListStreams() = ivs("POST", "/ListStreams")
ListStreams(args) = ivs("POST", "/ListStreams", args)

"""
    ImportPlaybackKeyPair()

Imports the public portion of a new key pair and returns its arn and fingerprint. The privateKey can then be used to generate viewer authorization tokens, to grant viewers access to authorized channels.

Required Parameters
{
  "publicKeyMaterial": "The public portion of a customer-generated key pair."
}

Optional Parameters
{
  "name": "An arbitrary string (a nickname) assigned to a playback key pair that helps the customer identify that resource. The value does not need to be unique.",
  "tags": "Any tags provided with the request are added to the playback key pair tags."
}
"""
ImportPlaybackKeyPair(args) = ivs("POST", "/ImportPlaybackKeyPair", args)
