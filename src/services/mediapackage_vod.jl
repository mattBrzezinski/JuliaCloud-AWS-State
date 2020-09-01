include("../AWSCorePrototypeServices.jl")
using .Services: mediapackage_vod

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource."
}
"""
ListTagsForResource(args) = mediapackage_vod("GET", "/tags/{resource-arn}", args)

"""
    ListPackagingGroups()

Returns a collection of MediaPackage VOD PackagingGroup resources.

Optional Parameters
{
  "MaxResults": "Upper bound on number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request."
}
"""

ListPackagingGroups() = mediapackage_vod("GET", "/packaging_groups")
ListPackagingGroups(args) = mediapackage_vod("GET", "/packaging_groups", args)

"""
    UpdatePackagingGroup()

Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.

Required Parameters
{
  "Id": "The ID of a MediaPackage VOD PackagingGroup resource."
}

Optional Parameters
{
  "Authorization": ""
}
"""
UpdatePackagingGroup(args) = mediapackage_vod("PUT", "/packaging_groups/{id}", args)

"""
    DescribePackagingGroup()

Returns a description of a MediaPackage VOD PackagingGroup resource.

Required Parameters
{
  "Id": "The ID of a MediaPackage VOD PackagingGroup resource."
}
"""
DescribePackagingGroup(args) = mediapackage_vod("GET", "/packaging_groups/{id}", args)

"""
    CreateAsset()

Creates a new MediaPackage VOD Asset resource.

Required Parameters
{
  "Id": "The unique identifier for the Asset.",
  "SourceArn": "ARN of the source object in S3.",
  "PackagingGroupId": "The ID of the PackagingGroup for the Asset.",
  "SourceRoleArn": "The IAM role ARN used to access the source S3 bucket."
}

Optional Parameters
{
  "Tags": "",
  "ResourceId": "The resource ID to include in SPEKE key requests."
}
"""
CreateAsset(args) = mediapackage_vod("POST", "/assets", args)

"""
    CreatePackagingConfiguration()

Creates a new MediaPackage VOD PackagingConfiguration resource.

Required Parameters
{
  "Id": "The ID of the PackagingConfiguration.",
  "PackagingGroupId": "The ID of a PackagingGroup."
}

Optional Parameters
{
  "DashPackage": "",
  "CmafPackage": "",
  "Tags": "",
  "HlsPackage": "",
  "MssPackage": ""
}
"""
CreatePackagingConfiguration(args) = mediapackage_vod("POST", "/packaging_configurations", args)

"""
    DeleteAsset()

Deletes an existing MediaPackage VOD Asset resource.

Required Parameters
{
  "Id": "The ID of the MediaPackage VOD Asset resource to delete."
}
"""
DeleteAsset(args) = mediapackage_vod("DELETE", "/assets/{id}", args)

"""
    DeletePackagingGroup()

Deletes a MediaPackage VOD PackagingGroup resource.

Required Parameters
{
  "Id": "The ID of the MediaPackage VOD PackagingGroup resource to delete."
}
"""
DeletePackagingGroup(args) = mediapackage_vod("DELETE", "/packaging_groups/{id}", args)

"""
    DeletePackagingConfiguration()

Deletes a MediaPackage VOD PackagingConfiguration resource.

Required Parameters
{
  "Id": "The ID of the MediaPackage VOD PackagingConfiguration resource to delete."
}
"""
DeletePackagingConfiguration(args) = mediapackage_vod("DELETE", "/packaging_configurations/{id}", args)

"""
    DescribeAsset()

Returns a description of a MediaPackage VOD Asset resource.

Required Parameters
{
  "Id": "The ID of an MediaPackage VOD Asset resource."
}
"""
DescribeAsset(args) = mediapackage_vod("GET", "/assets/{id}", args)

"""
    TagResource()

Adds tags to the specified resource. You can specify one or more tags to add.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.",
  "Tags": "A collection of tags associated with a resource"
}
"""
TagResource(args) = mediapackage_vod("POST", "/tags/{resource-arn}", args)

"""
    UntagResource()

Removes tags from the specified resource. You can specify one or more tags to remove.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.",
  "TagKeys": "A comma-separated list of the tag keys to remove from the resource."
}
"""
UntagResource(args) = mediapackage_vod("DELETE", "/tags/{resource-arn}", args)

"""
    DescribePackagingConfiguration()

Returns a description of a MediaPackage VOD PackagingConfiguration resource.

Required Parameters
{
  "Id": "The ID of a MediaPackage VOD PackagingConfiguration resource."
}
"""
DescribePackagingConfiguration(args) = mediapackage_vod("GET", "/packaging_configurations/{id}", args)

"""
    ListAssets()

Returns a collection of MediaPackage VOD Asset resources.

Optional Parameters
{
  "MaxResults": "Upper bound on number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request.",
  "PackagingGroupId": "Returns Assets associated with the specified PackagingGroup."
}
"""

ListAssets() = mediapackage_vod("GET", "/assets")
ListAssets(args) = mediapackage_vod("GET", "/assets", args)

"""
    CreatePackagingGroup()

Creates a new MediaPackage VOD PackagingGroup resource.

Required Parameters
{
  "Id": "The ID of the PackagingGroup."
}

Optional Parameters
{
  "Tags": "",
  "Authorization": ""
}
"""
CreatePackagingGroup(args) = mediapackage_vod("POST", "/packaging_groups", args)

"""
    ListPackagingConfigurations()

Returns a collection of MediaPackage VOD PackagingConfiguration resources.

Optional Parameters
{
  "MaxResults": "Upper bound on number of records to return.",
  "NextToken": "A token used to resume pagination from the end of a previous request.",
  "PackagingGroupId": "Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup."
}
"""

ListPackagingConfigurations() = mediapackage_vod("GET", "/packaging_configurations")
ListPackagingConfigurations(args) = mediapackage_vod("GET", "/packaging_configurations", args)
