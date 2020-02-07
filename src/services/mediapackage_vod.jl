include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage_vod

"""
Returns a collection of MediaPackage VOD PackagingGroup resources.
"""
ListPackagingGroups() = mediapackage_vod("GET", "/packaging_groups")
ListPackagingGroups(, args) = mediapackage_vod("GET", "/packaging_groups", args)
ListPackagingGroups(a...; b...) = ListPackagingGroups(a..., b)

"""
Returns a description of a MediaPackage VOD PackagingGroup resource.
"""
DescribePackagingGroup(Id) = mediapackage_vod("GET", "/packaging_groups/$id")
DescribePackagingGroup(Id, args) = mediapackage_vod("GET", "/packaging_groups/$id", args)
DescribePackagingGroup(a...; b...) = DescribePackagingGroup(a..., b)

"""
Creates a new MediaPackage VOD Asset resource.
"""
CreateAsset(SourceArn, Id, PackagingGroupId, SourceRoleArn) = mediapackage_vod("POST", "/assets")
CreateAsset(SourceArn, Id, PackagingGroupId, SourceRoleArn, args) = mediapackage_vod("POST", "/assets", args)
CreateAsset(a...; b...) = CreateAsset(a..., b)

"""
Creates a new MediaPackage VOD PackagingConfiguration resource.
"""
CreatePackagingConfiguration(Id, PackagingGroupId) = mediapackage_vod("POST", "/packaging_configurations")
CreatePackagingConfiguration(Id, PackagingGroupId, args) = mediapackage_vod("POST", "/packaging_configurations", args)
CreatePackagingConfiguration(a...; b...) = CreatePackagingConfiguration(a..., b)

"""
Deletes an existing MediaPackage VOD Asset resource.
"""
DeleteAsset(Id) = mediapackage_vod("DELETE", "/assets/$id")
DeleteAsset(Id, args) = mediapackage_vod("DELETE", "/assets/$id", args)
DeleteAsset(a...; b...) = DeleteAsset(a..., b)

"""
Deletes a MediaPackage VOD PackagingGroup resource.
"""
DeletePackagingGroup(Id) = mediapackage_vod("DELETE", "/packaging_groups/$id")
DeletePackagingGroup(Id, args) = mediapackage_vod("DELETE", "/packaging_groups/$id", args)
DeletePackagingGroup(a...; b...) = DeletePackagingGroup(a..., b)

"""
Deletes a MediaPackage VOD PackagingConfiguration resource.
"""
DeletePackagingConfiguration(Id) = mediapackage_vod("DELETE", "/packaging_configurations/$id")
DeletePackagingConfiguration(Id, args) = mediapackage_vod("DELETE", "/packaging_configurations/$id", args)
DeletePackagingConfiguration(a...; b...) = DeletePackagingConfiguration(a..., b)

"""
Returns a description of a MediaPackage VOD Asset resource.
"""
DescribeAsset(Id) = mediapackage_vod("GET", "/assets/$id")
DescribeAsset(Id, args) = mediapackage_vod("GET", "/assets/$id", args)
DescribeAsset(a...; b...) = DescribeAsset(a..., b)

"""
Returns a description of a MediaPackage VOD PackagingConfiguration resource.
"""
DescribePackagingConfiguration(Id) = mediapackage_vod("GET", "/packaging_configurations/$id")
DescribePackagingConfiguration(Id, args) = mediapackage_vod("GET", "/packaging_configurations/$id", args)
DescribePackagingConfiguration(a...; b...) = DescribePackagingConfiguration(a..., b)

"""
Returns a collection of MediaPackage VOD Asset resources.
"""
ListAssets() = mediapackage_vod("GET", "/assets")
ListAssets(, args) = mediapackage_vod("GET", "/assets", args)
ListAssets(a...; b...) = ListAssets(a..., b)

"""
Creates a new MediaPackage VOD PackagingGroup resource.
"""
CreatePackagingGroup(Id) = mediapackage_vod("POST", "/packaging_groups")
CreatePackagingGroup(Id, args) = mediapackage_vod("POST", "/packaging_groups", args)
CreatePackagingGroup(a...; b...) = CreatePackagingGroup(a..., b)

"""
Returns a collection of MediaPackage VOD PackagingConfiguration resources.
"""
ListPackagingConfigurations() = mediapackage_vod("GET", "/packaging_configurations")
ListPackagingConfigurations(, args) = mediapackage_vod("GET", "/packaging_configurations", args)
ListPackagingConfigurations(a...; b...) = ListPackagingConfigurations(a..., b)
