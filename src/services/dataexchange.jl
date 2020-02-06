include("../AWSCorePrototypeServices.jl")
using .Services: dataexchange

"""
This operation lists the tags on the resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = dataexchange("GET", "/tags/{resource-arn}", args)

"""
This operation returns information about a data set.

Required Parameters:
DataSetId
"""
GetDataSet(args) = dataexchange("GET", "/v1/data-sets/{DataSetId}", args)

"""
This operation creates a revision for a data set.

Required Parameters:
DataSetId
"""
CreateRevision(args) = dataexchange("POST", "/v1/data-sets/{DataSetId}/revisions", args)

"""
This operation returns information about a revision.

Required Parameters:
RevisionId, DataSetId
"""
GetRevision(args) = dataexchange("GET", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", args)

"""
This operation lists a data set's revisions sorted by CreatedAt in descending order.

Required Parameters:
DataSetId
"""
ListDataSetRevisions(args) = dataexchange("GET", "/v1/data-sets/{DataSetId}/revisions", args)

"""
This operation returns information about an asset.

Required Parameters:
RevisionId, AssetId, DataSetId
"""
GetAsset(args) = dataexchange("GET", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", args)

"""
This operation deletes an asset.

Required Parameters:
RevisionId, AssetId, DataSetId
"""
DeleteAsset(args) = dataexchange("DELETE", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", args)

"""
This operation starts a job.

Required Parameters:
JobId
"""
StartJob(args) = dataexchange("PATCH", "/v1/jobs/{JobId}", args)

"""
This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.

Required Parameters:
JobId
"""
CancelJob(args) = dataexchange("DELETE", "/v1/jobs/{JobId}", args)

"""
This operation creates a job.

Required Parameters:
Type, Details
"""
CreateJob(args) = dataexchange("POST", "/v1/jobs", args)

"""
This operation tags a resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = dataexchange("POST", "/tags/{resource-arn}", args)

"""
This operation creates a data set.

Required Parameters:
AssetType, Description, Name
"""
CreateDataSet(args) = dataexchange("POST", "/v1/data-sets", args)

"""
This operation removes one or more tags from a resource.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = dataexchange("DELETE", "/tags/{resource-arn}", args)

"""
This operation returns information about a job.

Required Parameters:
JobId
"""
GetJob(args) = dataexchange("GET", "/v1/jobs/{JobId}", args)

"""
This operation deletes a data set.

Required Parameters:
DataSetId
"""
DeleteDataSet(args) = dataexchange("DELETE", "/v1/data-sets/{DataSetId}", args)

"""
This operation lists a revision's assets sorted alphabetically in descending order.

Required Parameters:
RevisionId, DataSetId
"""
ListRevisionAssets(args) = dataexchange("GET", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", args)

"""
This operation deletes a revision.

Required Parameters:
RevisionId, DataSetId
"""
DeleteRevision(args) = dataexchange("DELETE", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", args)

"""
This operation updates a revision.

Required Parameters:
RevisionId, DataSetId
"""
UpdateRevision(args) = dataexchange("PATCH", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", args)

"""
This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
"""
ListDataSets() = dataexchange("GET", "/v1/data-sets")

"""
This operation lists your jobs sorted by CreatedAt in descending order.
"""
ListJobs() = dataexchange("GET", "/v1/jobs")

"""
This operation updates an asset.

Required Parameters:
RevisionId, AssetId, DataSetId, Name
"""
UpdateAsset(args) = dataexchange("PATCH", "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", args)

"""
This operation updates a data set.

Required Parameters:
DataSetId
"""
UpdateDataSet(args) = dataexchange("PATCH", "/v1/data-sets/{DataSetId}", args)
