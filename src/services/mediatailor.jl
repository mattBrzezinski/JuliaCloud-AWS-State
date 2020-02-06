include("../AWSCorePrototypeServices.jl")
using .Services: mediatailor

"""
Returns a list of the tags assigned to the specified playback configuration resource. 

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = mediatailor("GET", "/tags/{ResourceArn}", args)

"""
Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 
"""
ListPlaybackConfigurations() = mediatailor("GET", "/playbackConfigurations")

"""
Deletes the playback configuration for the specified name. 

Required Parameters:
Name
"""
DeletePlaybackConfiguration(args) = mediatailor("DELETE", "/playbackConfiguration/{Name}", args)

"""
Adds a new playback configuration to AWS Elemental MediaTailor. 
"""
PutPlaybackConfiguration() = mediatailor("PUT", "/playbackConfiguration")

"""
Returns the playback configuration for the specified name. 

Required Parameters:
Name
"""
GetPlaybackConfiguration(args) = mediatailor("GET", "/playbackConfiguration/{Name}", args)

"""
Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = mediatailor("POST", "/tags/{ResourceArn}", args)

"""
Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = mediatailor("DELETE", "/tags/{ResourceArn}", args)
