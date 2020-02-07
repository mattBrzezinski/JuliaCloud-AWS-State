include("../AWSCorePrototypeServices.jl")
using .Services: marketplace_catalog

"""
Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
"""
ListChangeSets(Catalog) = marketplace_catalog("POST", "/ListChangeSets")
ListChangeSets(Catalog, args) = marketplace_catalog("POST", "/ListChangeSets", args)
ListChangeSets(a...; b...) = ListChangeSets(a..., b)

"""
Provides information about a given change set.
"""
DescribeChangeSet(Catalog, ChangeSetId) = marketplace_catalog("GET", "/DescribeChangeSet")
DescribeChangeSet(Catalog, ChangeSetId, args) = marketplace_catalog("GET", "/DescribeChangeSet", args)
DescribeChangeSet(a...; b...) = DescribeChangeSet(a..., b)

"""
Returns the metadata and content of the entity.
"""
DescribeEntity(Catalog, EntityId) = marketplace_catalog("GET", "/DescribeEntity")
DescribeEntity(Catalog, EntityId, args) = marketplace_catalog("GET", "/DescribeEntity", args)
DescribeEntity(a...; b...) = DescribeEntity(a..., b)

"""
Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
"""
CancelChangeSet(Catalog, ChangeSetId) = marketplace_catalog("PATCH", "/CancelChangeSet")
CancelChangeSet(Catalog, ChangeSetId, args) = marketplace_catalog("PATCH", "/CancelChangeSet", args)
CancelChangeSet(a...; b...) = CancelChangeSet(a..., b)

"""
Provides the list of entities of a given type.
"""
ListEntities(Catalog, EntityType) = marketplace_catalog("POST", "/ListEntities")
ListEntities(Catalog, EntityType, args) = marketplace_catalog("POST", "/ListEntities", args)
ListEntities(a...; b...) = ListEntities(a..., b)

"""
This operation allows you to request changes in your entities.
"""
StartChangeSet(Catalog, ChangeSet) = marketplace_catalog("POST", "/StartChangeSet")
StartChangeSet(Catalog, ChangeSet, args) = marketplace_catalog("POST", "/StartChangeSet", args)
StartChangeSet(a...; b...) = StartChangeSet(a..., b)
