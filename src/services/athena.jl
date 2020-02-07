include("../AWSCorePrototypeServices.jl")
using .Services: athena

"""
Lists the tags associated with this workgroup.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = athena("ListTagsForResource", args)

"""
Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied. 

Required Parameters:
QueryExecutionId
"""
GetQueryResults(args) = athena("GetQueryResults", args)

"""
Runs the SQL query statements contained in the Query. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

Required Parameters:
QueryString
"""
StartQueryExecution(args) = athena("StartQueryExecution", args)

"""
Stops a query execution. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

Required Parameters:
QueryExecutionId
"""
StopQueryExecution(args) = athena("StopQueryExecution", args)

"""
Updates the workgroup with the specified name. The workgroup's name cannot be changed.

Required Parameters:
WorkGroup
"""
UpdateWorkGroup(args) = athena("UpdateWorkGroup", args)

"""
Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use ListQueryExecutionsInput WorkGroup. Query executions differ from named (saved) queries. Use BatchGetNamedQueryInput to get details about named queries.

Required Parameters:
QueryExecutionIds
"""
BatchGetQueryExecution(args) = athena("BatchGetQueryExecution", args)

"""
Deletes the named query if you have access to the workgroup in which the query was saved. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

Required Parameters:
NamedQueryId
"""
DeleteNamedQuery(args) = athena("DeleteNamedQuery", args)

"""
Provides a list of available query execution IDs for the queries in the specified workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
"""
ListQueryExecutions() = athena("ListQueryExecutions")

"""
Creates a workgroup with the specified name.

Required Parameters:
Name
"""
CreateWorkGroup(args) = athena("CreateWorkGroup", args)

"""
Creates a named query in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

Required Parameters:
Name, Database, QueryString
"""
CreateNamedQuery(args) = athena("CreateNamedQuery", args)

"""
Adds one or more tags to the resource, such as a workgroup. A tag is a label that you assign to an AWS Athena resource (a workgroup). Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize resources (workgroups) in Athena, for example, by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups in your account. For best practices, see AWS Tagging Strategies. The key length is from 1 (minimum) to 128 (maximum) Unicode characters in UTF-8. The tag value length is from 0 (minimum) to 256 (maximum) Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one, separate them by commas.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = athena("TagResource", args)

"""
Removes one or more tags from the workgroup resource. Takes as an input a list of TagKey Strings separated by commas, and removes their tags at the same time.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = athena("UntagResource", args)

"""
Lists available workgroups for the account.
"""
ListWorkGroups() = athena("ListWorkGroups")

"""
Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.

Required Parameters:
QueryExecutionId
"""
GetQueryExecution(args) = athena("GetQueryExecution", args)

"""
Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.

Required Parameters:
WorkGroup
"""
DeleteWorkGroup(args) = athena("DeleteWorkGroup", args)

"""
Returns information about the workgroup with the specified name.

Required Parameters:
WorkGroup
"""
GetWorkGroup(args) = athena("GetWorkGroup", args)

"""
Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use ListNamedQueriesInput to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries differ from executed queries. Use BatchGetQueryExecutionInput to get details about each unique query execution, and ListQueryExecutionsInput to get a list of query execution IDs.

Required Parameters:
NamedQueryIds
"""
BatchGetNamedQuery(args) = athena("BatchGetNamedQuery", args)

"""
Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
"""
ListNamedQueries() = athena("ListNamedQueries")

"""
Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.

Required Parameters:
NamedQueryId
"""
GetNamedQuery(args) = athena("GetNamedQuery", args)
