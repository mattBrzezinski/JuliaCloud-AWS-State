include("../AWSCorePrototypeServices.jl")
using .Services: mediatailor

"""
Returns a list of the tags assigned to the specified playback configuration resource. 
"""
ListTagsForResource(ResourceArn) = mediatailor("GET", "/tags/$ResourceArn")
ListTagsForResource(ResourceArn, args) = mediatailor("GET", "/tags/$ResourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 
"""
ListPlaybackConfigurations() = mediatailor("GET", "/playbackConfigurations")
ListPlaybackConfigurations(, args) = mediatailor("GET", "/playbackConfigurations", args)
ListPlaybackConfigurations(a...; b...) = ListPlaybackConfigurations(a..., b)

"""
Deletes the playback configuration for the specified name. 
"""
DeletePlaybackConfiguration(Name) = mediatailor("DELETE", "/playbackConfiguration/$Name")
DeletePlaybackConfiguration(Name, args) = mediatailor("DELETE", "/playbackConfiguration/$Name", args)
DeletePlaybackConfiguration(a...; b...) = DeletePlaybackConfiguration(a..., b)

"""
Adds a new playback configuration to AWS Elemental MediaTailor. 
"""
PutPlaybackConfiguration() = mediatailor("PUT", "/playbackConfiguration")
PutPlaybackConfiguration(, args) = mediatailor("PUT", "/playbackConfiguration", args)
PutPlaybackConfiguration(a...; b...) = PutPlaybackConfiguration(a..., b)

"""
Returns the playback configuration for the specified name. 
"""
GetPlaybackConfiguration(Name) = mediatailor("GET", "/playbackConfiguration/$Name")
GetPlaybackConfiguration(Name, args) = mediatailor("GET", "/playbackConfiguration/$Name", args)
GetPlaybackConfiguration(a...; b...) = GetPlaybackConfiguration(a..., b)

"""
Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 
"""
TagResource(ResourceArn, Tags) = mediatailor("POST", "/tags/$ResourceArn")
TagResource(ResourceArn, Tags, args) = mediatailor("POST", "/tags/$ResourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 
"""
UntagResource(ResourceArn, TagKeys) = mediatailor("DELETE", "/tags/$ResourceArn")
UntagResource(ResourceArn, TagKeys, args) = mediatailor("DELETE", "/tags/$ResourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)
