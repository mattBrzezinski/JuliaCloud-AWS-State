include("../AWSCorePrototypeServices.jl")
using .Services: mediatailor

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified playback configuration resource. 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. "
}
"""
ListTagsForResource(args) = mediatailor("GET", "/tags/{ResourceArn}", args)

"""
    ListPlaybackConfigurations()

Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 

Optional Parameters
{
  "MaxResults": "Maximum number of records to return. ",
  "NextToken": "Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results."
}
"""

ListPlaybackConfigurations() = mediatailor("GET", "/playbackConfigurations")
ListPlaybackConfigurations(args) = mediatailor("GET", "/playbackConfigurations", args)

"""
    DeletePlaybackConfiguration()

Deletes the playback configuration for the specified name. 

Required Parameters
{
  "Name": "The identifier for the playback configuration."
}
"""
DeletePlaybackConfiguration(args) = mediatailor("DELETE", "/playbackConfiguration/{Name}", args)

"""
    PutPlaybackConfiguration()

Adds a new playback configuration to AWS Elemental MediaTailor. 

Optional Parameters
{
  "AdDecisionServerUrl": "The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.",
  "TranscodeProfileName": "The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.",
  "Tags": "The tags to assign to the playback configuration. ",
  "Bumper": "The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. ",
  "VideoContentSourceUrl": "The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.",
  "LivePreRollConfiguration": "The configuration for pre-roll ad insertion.",
  "Name": "The identifier for the playback configuration.",
  "CdnConfiguration": "The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. ",
  "AvailSuppression": "The configuration for Avail Suppression. Ad suppression can be used to turn off ad personalization in a long manifest, or if a viewer joins mid-break.",
  "PersonalizationThresholdSeconds": "The maximum duration of underfilled ad time (in seconds) allowed in an ad break.",
  "DashConfiguration": "The configuration for DASH content. ",
  "SlateAdUrl": "The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. "
}
"""

PutPlaybackConfiguration() = mediatailor("PUT", "/playbackConfiguration")
PutPlaybackConfiguration(args) = mediatailor("PUT", "/playbackConfiguration", args)

"""
    GetPlaybackConfiguration()

Returns the playback configuration for the specified name. 

Required Parameters
{
  "Name": "The identifier for the playback configuration."
}
"""
GetPlaybackConfiguration(args) = mediatailor("GET", "/playbackConfiguration/{Name}", args)

"""
    TagResource()

Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. ",
  "Tags": "A comma-separated list of tag key:value pairs. For example: \n {\n \"Key1\": \"Value1\",\n \"Key2\": \"Value2\"\n }\n "
}
"""
TagResource(args) = mediatailor("POST", "/tags/{ResourceArn}", args)

"""
    UntagResource()

Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request. ",
  "TagKeys": "A comma-separated list of the tag keys to remove from the playback configuration. "
}
"""
UntagResource(args) = mediatailor("DELETE", "/tags/{ResourceArn}", args)
