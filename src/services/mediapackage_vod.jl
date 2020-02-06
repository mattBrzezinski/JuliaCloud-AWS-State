include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage_vod

"""
Returns a collection of MediaPackage VOD PackagingGroup resources.
"""
ListPackagingGroups() = mediapackage_vod("GET", "/packaging_groups")

"""
Returns a description of a MediaPackage VOD PackagingGroup resource.

Required Parameters:
Id
"""
DescribePackagingGroup(args) = mediapackage_vod("GET", "/packaging_groups/{id}", args)

"""
Creates a new MediaPackage VOD Asset resource.

Required Parameters:
SourceArn, Id, PackagingGroupId, SourceRoleArn
"""
CreateAsset(args) = mediapackage_vod("POST", "/assets", args)

"""
Creates a new MediaPackage VOD PackagingConfiguration resource.

Required Parameters:
Id, PackagingGroupId
"""
CreatePackagingConfiguration(args) = mediapackage_vod("POST", "/packaging_configurations", args)

"""
Deletes an existing MediaPackage VOD Asset resource.

Required Parameters:
Id
"""
DeleteAsset(args) = mediapackage_vod("DELETE", "/assets/{id}", args)

"""
Deletes a MediaPackage VOD PackagingGroup resource.

Required Parameters:
Id
"""
DeletePackagingGroup(args) = mediapackage_vod("DELETE", "/packaging_groups/{id}", args)

"""
Deletes a MediaPackage VOD PackagingConfiguration resource.

Required Parameters:
Id
"""
DeletePackagingConfiguration(args) = mediapackage_vod("DELETE", "/packaging_configurations/{id}", args)

"""
Returns a description of a MediaPackage VOD Asset resource.

Required Parameters:
Id
"""
DescribeAsset(args) = mediapackage_vod("GET", "/assets/{id}", args)

"""
Returns a description of a MediaPackage VOD PackagingConfiguration resource.

Required Parameters:
Id
"""
DescribePackagingConfiguration(args) = mediapackage_vod("GET", "/packaging_configurations/{id}", args)

"""
Returns a collection of MediaPackage VOD Asset resources.
"""
ListAssets() = mediapackage_vod("GET", "/assets")

"""
Creates a new MediaPackage VOD PackagingGroup resource.

Required Parameters:
Id
"""
CreatePackagingGroup(args) = mediapackage_vod("POST", "/packaging_groups", args)

"""
Returns a collection of MediaPackage VOD PackagingConfiguration resources.
"""
ListPackagingConfigurations() = mediapackage_vod("GET", "/packaging_configurations")
