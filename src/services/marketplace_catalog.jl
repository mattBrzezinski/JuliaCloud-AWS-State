include("../AWSCorePrototypeServices.jl")
using .Services: marketplace_catalog

"""
    ListChangeSets()

Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.

Required Parameters
{
  "Catalog": "The catalog related to the request. Fixed value: AWSMarketplace "
}

Optional Parameters
{
  "FilterList": "An array of filter objects.",
  "Sort": "An object that contains two attributes, sortBy and sortOrder.",
  "MaxResults": "The maximum number of results returned by a single call. This value must be provided in the next call to retrieve the next set of results. By default, this value is 20.",
  "NextToken": "The token value retrieved from a previous call to access the next page of results."
}
"""
ListChangeSets(args) = marketplace_catalog("POST", "/ListChangeSets", args)

"""
    DescribeChangeSet()

Provides information about a given change set.

Required Parameters
{
  "Catalog": "Required. The catalog related to the request. Fixed value: AWSMarketplace ",
  "ChangeSetId": "Required. The unique identifier for the StartChangeSet request that you want to describe the details for."
}
"""
DescribeChangeSet(args) = marketplace_catalog("GET", "/DescribeChangeSet", args)

"""
    DescribeEntity()

Returns the metadata and content of the entity.

Required Parameters
{
  "EntityId": "Required. The unique ID of the entity to describe.",
  "Catalog": "Required. The catalog related to the request. Fixed value: AWSMarketplace "
}
"""
DescribeEntity(args) = marketplace_catalog("GET", "/DescribeEntity", args)

"""
    CancelChangeSet()

Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.

Required Parameters
{
  "Catalog": "Required. The catalog related to the request. Fixed value: AWSMarketplace.",
  "ChangeSetId": "Required. The unique identifier of the StartChangeSet request that you want to cancel."
}
"""
CancelChangeSet(args) = marketplace_catalog("PATCH", "/CancelChangeSet", args)

"""
    ListEntities()

Provides the list of entities of a given type.

Required Parameters
{
  "EntityType": "The type of entities to retrieve.",
  "Catalog": "The catalog related to the request. Fixed value: AWSMarketplace "
}

Optional Parameters
{
  "FilterList": "An array of filter objects. Each filter object contains two attributes, filterName and filterValues.",
  "Sort": "An object that contains two attributes, sortBy and sortOrder.",
  "MaxResults": "Specifies the upper limit of the elements on a single page. If a value isn't provided, the default value is 20.",
  "NextToken": "The value of the next token, if it exists. Null if there are no more results."
}
"""
ListEntities(args) = marketplace_catalog("POST", "/ListEntities", args)

"""
    StartChangeSet()

This operation allows you to request changes in your entities.

Required Parameters
{
  "Catalog": "The catalog related to the request. Fixed value: AWSMarketplace ",
  "ChangeSet": "Array of change object."
}

Optional Parameters
{
  "ClientRequestToken": "A unique token to identify the request to ensure idempotency.",
  "ChangeSetName": "Optional case sensitive string of up to 100 ASCII characters. The change set name can be used to filter the list of change sets. "
}
"""
StartChangeSet(args) = marketplace_catalog("POST", "/StartChangeSet", args)
