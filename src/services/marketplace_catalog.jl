include("../AWSCorePrototypeServices.jl")
using .Services: marketplace_catalog

"""
Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.

Required Parameters:
Catalog
"""
ListChangeSets(args) = marketplace_catalog("POST", "/ListChangeSets", args)

"""
Provides information about a given change set.

Required Parameters:
Catalog, ChangeSetId
"""
DescribeChangeSet(args) = marketplace_catalog("GET", "/DescribeChangeSet", args)

"""
Returns the metadata and content of the entity.

Required Parameters:
Catalog, EntityId
"""
DescribeEntity(args) = marketplace_catalog("GET", "/DescribeEntity", args)

"""
Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.

Required Parameters:
Catalog, ChangeSetId
"""
CancelChangeSet(args) = marketplace_catalog("PATCH", "/CancelChangeSet", args)

"""
Provides the list of entities of a given type.

Required Parameters:
Catalog, EntityType
"""
ListEntities(args) = marketplace_catalog("POST", "/ListEntities", args)

"""
This operation allows you to request changes in your entities.

Required Parameters:
Catalog, ChangeSet
"""
StartChangeSet(args) = marketplace_catalog("POST", "/StartChangeSet", args)
