include("../AWSCorePrototypeServices.jl")
using .Services: dynamodb

"""
    DeleteItem()

Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.

Required Parameters
{
  "TableName": "The name of the table in which you want to delete an item. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "Key": ""
}

Optional Parameters
{
  "ReturnValues": "",
  "Expected": ""
}
"""
DeleteItem(args) = dynamodb("DeleteItem", args)

"""
    DeleteTable()

Deletes a table and all of its items. If the table is in the ACTIVE state, you can delete it. If a table is in CREATING or UPDATING states then Amazon DynamoDB returns a ResourceInUseException. If the specified table does not exist, Amazon DynamoDB returns a ResourceNotFoundException.

Required Parameters
{
  "TableName": "The name of the table you want to delete. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period)."
}
"""
DeleteTable(args) = dynamodb("DeleteTable", args)

"""
    Query()

Gets the values of one or more items and its attributes by primary key (composite primary key, only). Narrow the scope of the query using comparison operators on the RangeKeyValue of the composite key. Use the ScanIndexForward parameter to get results in forward or reverse order by range key.

Required Parameters
{
  "TableName": "The name of the table in which you want to query. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "HashKeyValue": "Attribute value of the hash component of the composite primary key."
}

Optional Parameters
{
  "ScanIndexForward": "Specifies forward or backward traversal of the index. Amazon DynamoDB returns results reflecting the requested order, determined by the range key. The default value is true (forward).",
  "RangeKeyCondition": "A container for the attribute values and comparison operators to use for the query.",
  "AttributesToGet": "",
  "ConsistentRead": "",
  "Count": "If set to true, Amazon DynamoDB returns a total number of items that match the query parameters, instead of a list of the matching items and their attributes. Do not set Count to true while providing a list of AttributesToGet, otherwise Amazon DynamoDB returns a validation error.",
  "Limit": "The maximum number of items to return. If Amazon DynamoDB hits this limit while querying the table, it stops the query and returns the matching values up to the limit, and a LastEvaluatedKey to apply in a subsequent operation to continue the query. Also, if the result set size exceeds 1MB before Amazon DynamoDB hits this limit, it stops the query and returns the matching values, and a LastEvaluatedKey to apply in a subsequent operation to continue the query.",
  "ExclusiveStartKey": "Primary key of the item from which to continue an earlier query. An earlier query might provide this value as the LastEvaluatedKey if that query operation was interrupted before completing the query; either because of the result set size or the Limit parameter. The LastEvaluatedKey can be passed back in a new query request to continue the operation from that point."
}
"""
Query(args) = dynamodb("Query", args)

"""
    UpdateTable()

Updates the provisioned throughput for the given table. Setting the throughput for a table helps you manage performance and is part of the Provisioned Throughput feature of Amazon DynamoDB.

Required Parameters
{
  "TableName": "The name of the table you want to update. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "ProvisionedThroughput": ""
}
"""
UpdateTable(args) = dynamodb("UpdateTable", args)

"""
    ListTables()

Retrieves a paginated list of table names created by the AWS Account of the caller in the AWS Region (e.g. us-east-1).

Optional Parameters
{
  "ExclusiveStartTableName": "The name of the table that starts the list. If you already ran a ListTables operation and received a LastEvaluatedTableName value in the response, use that value here to continue the list.",
  "Limit": ""
}
"""

ListTables() = dynamodb("ListTables")
ListTables(args) = dynamodb("ListTables", args)

"""
    CreateTable()

Adds a new table to your account. The table name must be unique among those associated with the AWS Account issuing the request, and the AWS Region that receives the request (e.g. us-east-1). The CreateTable operation triggers an asynchronous workflow to begin creating the table. Amazon DynamoDB immediately returns the state of the table (CREATING) until the table is in the ACTIVE state. Once the table is in the ACTIVE state, you can perform data plane operations.

Required Parameters
{
  "TableName": "The name of the table you want to create. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "ProvisionedThroughput": "",
  "KeySchema": ""
}
"""
CreateTable(args) = dynamodb("CreateTable", args)

"""
    BatchWriteItem()

Allows to execute a batch of Put and/or Delete Requests for many tables in a single call. A total of 25 requests are allowed. There are no transaction guarantees provided by this API. It does not allow conditional puts nor does it support return values.

Required Parameters
{
  "RequestItems": "A map of table name to list-of-write-requests. Used as input to the BatchWriteItem API call"
}
"""
BatchWriteItem(args) = dynamodb("BatchWriteItem", args)

"""
    PutItem()

Creates a new item, or replaces an old item with a new item (including all the attributes). If an item already exists in the specified table with the same primary key, the new item completely replaces the existing item. You can perform a conditional put (insert a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values.

Required Parameters
{
  "TableName": "The name of the table in which you want to put an item. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "Item": ""
}

Optional Parameters
{
  "ReturnValues": "",
  "Expected": ""
}
"""
PutItem(args) = dynamodb("PutItem", args)

"""
    DescribeTable()

Retrieves information about the table, including the current status of the table, the primary key schema and when the table was created. If the table does not exist, Amazon DynamoDB returns a ResourceNotFoundException.

Required Parameters
{
  "TableName": "The name of the table you want to describe. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period)."
}
"""
DescribeTable(args) = dynamodb("DescribeTable", args)

"""
    GetItem()

Retrieves a set of Attributes for an item that matches the primary key. The GetItem operation provides an eventually-consistent read by default. If eventually-consistent reads are not acceptable for your application, use ConsistentRead. Although this operation might take longer than a standard read, it always returns the last updated value.

Required Parameters
{
  "TableName": "The name of the table in which you want to get an item. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "Key": ""
}

Optional Parameters
{
  "AttributesToGet": "",
  "ConsistentRead": ""
}
"""
GetItem(args) = dynamodb("GetItem", args)

"""
    Scan()

Retrieves one or more items and its attributes by performing a full scan of a table. Provide a ScanFilter to get more specific results.

Required Parameters
{
  "TableName": "The name of the table in which you want to scan. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period)."
}

Optional Parameters
{
  "ScanFilter": "Evaluates the scan results and returns only the desired values.",
  "AttributesToGet": "",
  "Count": "If set to true, Amazon DynamoDB returns a total number of items for the Scan operation, even if the operation has no matching items for the assigned filter. Do not set Count to true while providing a list of AttributesToGet, otherwise Amazon DynamoDB returns a validation error.",
  "Limit": "The maximum number of items to return. If Amazon DynamoDB hits this limit while scanning the table, it stops the scan and returns the matching values up to the limit, and a LastEvaluatedKey to apply in a subsequent operation to continue the scan. Also, if the scanned data set size exceeds 1 MB before Amazon DynamoDB hits this limit, it stops the scan and returns the matching values up to the limit, and a LastEvaluatedKey to apply in a subsequent operation to continue the scan.",
  "ExclusiveStartKey": "Primary key of the item from which to continue an earlier scan. An earlier scan might provide this value if that scan operation was interrupted before scanning the entire table; either because of the result set size or the Limit parameter. The LastEvaluatedKey can be passed back in a new scan request to continue the operation from that point."
}
"""
Scan(args) = dynamodb("Scan", args)

"""
    UpdateItem()

Edits an existing item's attributes. You can perform a conditional update (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).

Required Parameters
{
  "AttributeUpdates": "",
  "TableName": "The name of the table in which you want to update an item. Allowed characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen) and . (period).",
  "Key": ""
}

Optional Parameters
{
  "ReturnValues": "",
  "Expected": ""
}
"""
UpdateItem(args) = dynamodb("UpdateItem", args)

"""
    BatchGetItem()

Retrieves the attributes for multiple items from multiple tables using their primary keys. The maximum number of item attributes that can be retrieved for a single operation is 100. Also, the number of items retrieved is constrained by a 1 MB the size limit. If the response size limit is exceeded or a partial result is returned due to an internal processing failure, Amazon DynamoDB returns an UnprocessedKeys value so you can retry the operation starting with the next item to get. Amazon DynamoDB automatically adjusts the number of items returned per page to enforce this limit. For example, even if you ask to retrieve 100 items, but each individual item is 50k in size, the system returns 20 items and an appropriate UnprocessedKeys value so you can get the next page of results. If necessary, your application needs its own logic to assemble the pages of results into one set.

Required Parameters
{
  "RequestItems": ""
}
"""
BatchGetItem(args) = dynamodb("BatchGetItem", args)
