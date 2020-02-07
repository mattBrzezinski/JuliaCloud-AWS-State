include("../AWSCorePrototypeServices.jl")
using .Services: dataexchange

"""
This operation lists the tags on the resource.
"""
ListTagsForResource(ResourceArn) = dataexchange("GET", "/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = dataexchange("GET", "/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
This operation returns information about a data set.
"""
GetDataSet(DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId")
GetDataSet(DataSetId, args) = dataexchange("GET", "/v1/data-sets/$DataSetId", args)
GetDataSet(a...; b...) = GetDataSet(a..., b)

"""
This operation creates a revision for a data set.
"""
CreateRevision(DataSetId) = dataexchange("POST", "/v1/data-sets/$DataSetId/revisions")
CreateRevision(DataSetId, args) = dataexchange("POST", "/v1/data-sets/$DataSetId/revisions", args)
CreateRevision(a...; b...) = CreateRevision(a..., b)

"""
This operation returns information about a revision.
"""
GetRevision(RevisionId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId")
GetRevision(RevisionId, DataSetId, args) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId", args)
GetRevision(a...; b...) = GetRevision(a..., b)

"""
This operation lists a data set's revisions sorted by CreatedAt in descending order.
"""
ListDataSetRevisions(DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions")
ListDataSetRevisions(DataSetId, args) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions", args)
ListDataSetRevisions(a...; b...) = ListDataSetRevisions(a..., b)

"""
This operation returns information about an asset.
"""
GetAsset(RevisionId, AssetId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")
GetAsset(RevisionId, AssetId, DataSetId, args) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId", args)
GetAsset(a...; b...) = GetAsset(a..., b)

"""
This operation deletes an asset.
"""
DeleteAsset(RevisionId, AssetId, DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")
DeleteAsset(RevisionId, AssetId, DataSetId, args) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId", args)
DeleteAsset(a...; b...) = DeleteAsset(a..., b)

"""
This operation starts a job.
"""
StartJob(JobId) = dataexchange("PATCH", "/v1/jobs/$JobId")
StartJob(JobId, args) = dataexchange("PATCH", "/v1/jobs/$JobId", args)
StartJob(a...; b...) = StartJob(a..., b)

"""
This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
"""
CancelJob(JobId) = dataexchange("DELETE", "/v1/jobs/$JobId")
CancelJob(JobId, args) = dataexchange("DELETE", "/v1/jobs/$JobId", args)
CancelJob(a...; b...) = CancelJob(a..., b)

"""
This operation creates a job.
"""
CreateJob(Type, Details) = dataexchange("POST", "/v1/jobs")
CreateJob(Type, Details, args) = dataexchange("POST", "/v1/jobs", args)
CreateJob(a...; b...) = CreateJob(a..., b)

"""
This operation tags a resource.
"""
TagResource(ResourceArn, Tags) = dataexchange("POST", "/tags/$resource-arn")
TagResource(ResourceArn, Tags, args) = dataexchange("POST", "/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
This operation creates a data set.
"""
CreateDataSet(AssetType, Description, Name) = dataexchange("POST", "/v1/data-sets")
CreateDataSet(AssetType, Description, Name, args) = dataexchange("POST", "/v1/data-sets", args)
CreateDataSet(a...; b...) = CreateDataSet(a..., b)

"""
This operation removes one or more tags from a resource.
"""
UntagResource(TagKeys, ResourceArn) = dataexchange("DELETE", "/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = dataexchange("DELETE", "/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
This operation returns information about a job.
"""
GetJob(JobId) = dataexchange("GET", "/v1/jobs/$JobId")
GetJob(JobId, args) = dataexchange("GET", "/v1/jobs/$JobId", args)
GetJob(a...; b...) = GetJob(a..., b)

"""
This operation deletes a data set.
"""
DeleteDataSet(DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId")
DeleteDataSet(DataSetId, args) = dataexchange("DELETE", "/v1/data-sets/$DataSetId", args)
DeleteDataSet(a...; b...) = DeleteDataSet(a..., b)

"""
This operation lists a revision's assets sorted alphabetically in descending order.
"""
ListRevisionAssets(RevisionId, DataSetId) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets")
ListRevisionAssets(RevisionId, DataSetId, args) = dataexchange("GET", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets", args)
ListRevisionAssets(a...; b...) = ListRevisionAssets(a..., b)

"""
This operation deletes a revision.
"""
DeleteRevision(RevisionId, DataSetId) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId")
DeleteRevision(RevisionId, DataSetId, args) = dataexchange("DELETE", "/v1/data-sets/$DataSetId/revisions/$RevisionId", args)
DeleteRevision(a...; b...) = DeleteRevision(a..., b)

"""
This operation updates a revision.
"""
UpdateRevision(RevisionId, DataSetId) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId")
UpdateRevision(RevisionId, DataSetId, args) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId", args)
UpdateRevision(a...; b...) = UpdateRevision(a..., b)

"""
This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
"""
ListDataSets() = dataexchange("GET", "/v1/data-sets")
ListDataSets(, args) = dataexchange("GET", "/v1/data-sets", args)
ListDataSets(a...; b...) = ListDataSets(a..., b)

"""
This operation lists your jobs sorted by CreatedAt in descending order.
"""
ListJobs() = dataexchange("GET", "/v1/jobs")
ListJobs(, args) = dataexchange("GET", "/v1/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
This operation updates an asset.
"""
UpdateAsset(RevisionId, AssetId, DataSetId, Name) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId")
UpdateAsset(RevisionId, AssetId, DataSetId, Name, args) = dataexchange("PATCH", "/v1/data-sets/$DataSetId/revisions/$RevisionId/assets/$AssetId", args)
UpdateAsset(a...; b...) = UpdateAsset(a..., b)

"""
This operation updates a data set.
"""
UpdateDataSet(DataSetId) = dataexchange("PATCH", "/v1/data-sets/$DataSetId")
UpdateDataSet(DataSetId, args) = dataexchange("PATCH", "/v1/data-sets/$DataSetId", args)
UpdateDataSet(a...; b...) = UpdateDataSet(a..., b)
