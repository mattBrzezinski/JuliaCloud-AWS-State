include("../AWSCorePrototypeServices.jl")
using .Services: kendra

"""
    StartDataSourceSyncJob()

Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a ResourceInUseException exception.

Required Parameters
{
  "Id": "The identifier of the data source to synchronize.",
  "IndexId": "The identifier of the index that contains the data source."
}
"""
StartDataSourceSyncJob(args) = kendra("StartDataSourceSyncJob", args)

"""
    BatchDeleteDocument()

Removes one or more documents from an index. The documents must have been added with the BatchPutDocument operation. The documents are deleted asynchronously. You can see the progress of the deletion by using AWS CloudWatch. Any error messages releated to the processing of the batch are sent to you CloudWatch log.

Required Parameters
{
  "IndexId": "The identifier of the index that contains the documents to delete.",
  "DocumentIdList": "One or more identifiers for documents to delete from the index."
}
"""
BatchDeleteDocument(args) = kendra("BatchDeleteDocument", args)

"""
    DeleteFaq()

Removes an FAQ from an index.

Required Parameters
{
  "Id": "The identifier of the FAQ to remove.",
  "IndexId": "The index to remove the FAQ from."
}
"""
DeleteFaq(args) = kendra("DeleteFaq", args)

"""
    Query()

Searches an active index. Use this API to search your documents using query. The Query operation enables to do faceted search and to filter results based on document attributes. It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results.  Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that the query return only one type of result using the QueryResultTypeConfig parameter.

Required Parameters
{
  "IndexId": "The unique identifier of the index to search. The identifier is returned in the response from the operation.",
  "QueryText": "The text to search for."
}

Optional Parameters
{
  "PageNumber": "Query results are returned in pages the size of the PageSize parameter. By default, Amazon Kendra returns the first page of results. Use this parameter to get result pages after the first one.",
  "Facets": "An array of documents attributes. Amazon Kendra returns a count for each attribute key specified. You can use this information to help narrow the search for your user.",
  "RequestedDocumentAttributes": "An array of document attributes to include in the response. No other document attributes are included in the response. By default all document attributes are included in the response. ",
  "AttributeFilter": "Enables filtered searches based on document attributes. You can only provide one attribute filter; however, the AndAllFilters, NotFilter, and OrAllFilters parameters contain a list of other filters. The AttributeFilter parameter enables you to create a set of filtering rules that a document must satisfy to be included in the query results.",
  "QueryResultTypeFilter": "Sets the type of query. Only results for the specified query type are returned.",
  "PageSize": "Sets the number of results that are returned in each page of results. The default page size is 100."
}
"""
Query(args) = kendra("Query", args)

"""
    BatchPutDocument()

Adds one or more documents to an index. The BatchPutDocument operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index. The documents are indexed asynchronously. You can see the progress of the batch using AWS CloudWatch. Any error messages related to processing the batch are sent to your AWS CloudWatch log.

Required Parameters
{
  "IndexId": "The identifier of the index to add the documents to. You need to create the index first using the CreateIndex operation.",
  "Documents": "One or more documents to add to the index.  Each document is limited to 5 Mb, the total size of the list is limited to 50 Mb."
}

Optional Parameters
{
  "RoleArn": "The Amazon Resource Name (ARN) of a role that is allowed to run the BatchPutDocument operation. For more information, see IAM Roles for Amazon Kendra."
}
"""
BatchPutDocument(args) = kendra("BatchPutDocument", args)

"""
    ListFaqs()

Gets a list of FAQ lists associated with an index.

Required Parameters
{
  "IndexId": "The index that contains the FAQ lists."
}

Optional Parameters
{
  "MaxResults": "The maximum number of FAQs to return in the response. If there are fewer results in the list, this response contains only the actual results.",
  "NextToken": "If the result of the previous request to ListFaqs was truncated, include the NextToken to fetch the next set of FAQs."
}
"""
ListFaqs(args) = kendra("ListFaqs", args)

"""
    DescribeDataSource()

Gets information about a Amazon Kendra data source.

Required Parameters
{
  "Id": "The unique identifier of the data source to describe.",
  "IndexId": "The identifier of the index that contains the data source."
}
"""
DescribeDataSource(args) = kendra("DescribeDataSource", args)

"""
    ListDataSourceSyncJobs()

Gets statistics about synchronizing Amazon Kendra with a data source.

Required Parameters
{
  "Id": "The identifier of the data source.",
  "IndexId": "The identifier of the index that contains the data source."
}

Optional Parameters
{
  "MaxResults": "The maximum number of synchronization jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.",
  "NextToken": "If the result of the previous request to GetDataSourceSyncJobHistory was truncated, include the NextToken to fetch the next set of jobs.",
  "StatusFilter": "When specified, only returns synchronization jobs with the Status field equal to the specified status.",
  "StartTimeFilter": "When specified, the synchronization jobs returned in the list are limited to jobs between the specified dates. "
}
"""
ListDataSourceSyncJobs(args) = kendra("ListDataSourceSyncJobs", args)

"""
    ListDataSources()

Lists the data sources that you have created.

Required Parameters
{
  "IndexId": "The identifier of the index that contains the data source."
}

Optional Parameters
{
  "MaxResults": "The maximum number of data sources to return.",
  "NextToken": "If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to retrieve the next set of data sources (DataSourceSummaryItems). "
}
"""
ListDataSources(args) = kendra("ListDataSources", args)

"""
    ListIndices()

Lists the Amazon Kendra indexes that you have created.

Optional Parameters
{
  "MaxResults": "The maximum number of data sources to return.",
  "NextToken": "If the previous response was incomplete (because there is more data to retrieve), Amazon Kendra returns a pagination token in the response. You can use this pagination token to retrieve the next set of indexes (DataSourceSummaryItems). "
}
"""
ListIndices() = kendra("ListIndices")
ListIndices(args) = kendra("ListIndices", args)

"""
    CreateDataSource()

Creates a data source that you use to with an Amazon Kendra index.  You specify a name, connector type and description for your data source. You can choose between an S3 connector, a SharePoint Online connector, and a database connector. You also specify configuration information such as document metadata (author, source URI, and so on) and user context information.  CreateDataSource is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.

Required Parameters
{
  "Configuration": "The connector configuration information that is required to access the repository.",
  "IndexId": "The identifier of the index that should be associated with this data source.",
  "Type": "The type of repository that contains the data source.",
  "Name": "A unique name for the data source. A data source name can't be changed without deleting and recreating the data source.",
  "RoleArn": "The Amazon Resource Name (ARN) of a role with permission to access the data source. For more information, see IAM Roles for Amazon Kendra."
}

Optional Parameters
{
  "Description": "A description for the data source.",
  "Schedule": "Sets the frequency that Amazon Kendra will check the documents in your repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the StartDataSourceSyncJob operation to update the index."
}
"""
CreateDataSource(args) = kendra("CreateDataSource", args)

"""
    CreateFaq()

Creates an new set of frequently asked question (FAQ) questions and answers.

Required Parameters
{
  "IndexId": "The identifier of the index that contains the FAQ.",
  "S3Path": "The S3 location of the FAQ input data.",
  "Name": "The name that should be associated with the FAQ.",
  "RoleArn": "The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
}

Optional Parameters
{
  "Description": "A description of the FAQ."
}
"""
CreateFaq(args) = kendra("CreateFaq", args)

"""
    DescribeFaq()

Gets information about an FAQ list.

Required Parameters
{
  "Id": "The unique identifier of the FAQ.",
  "IndexId": "The identifier of the index that contains the FAQ."
}
"""
DescribeFaq(args) = kendra("DescribeFaq", args)

"""
    DeleteIndex()

Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the Status field returned by a call to the DescribeIndex operation is set to DELETING.

Required Parameters
{
  "Id": "The identifier of the index to delete."
}
"""
DeleteIndex(args) = kendra("DeleteIndex", args)

"""
    StopDataSourceSyncJob()

Stops a running synchronization job. You can't stop a scheduled synchronization job.

Required Parameters
{
  "Id": "The identifier of the data source for which to stop the synchronization jobs.",
  "IndexId": "The identifier of the index that contains the data source."
}
"""
StopDataSourceSyncJob(args) = kendra("StopDataSourceSyncJob", args)

"""
    UpdateIndex()

Updates an existing Amazon Kendra index.

Required Parameters
{
  "Id": "The identifier of the index to update."
}

Optional Parameters
{
  "Description": "A new description for the index.",
  "DocumentMetadataConfigurationUpdates": "The document metadata to update. ",
  "Name": "The name of the index to update.",
  "RoleArn": "A new IAM role that gives Amazon Kendra permission to access your Amazon CloudWatch logs."
}
"""
UpdateIndex(args) = kendra("UpdateIndex", args)

"""
    SubmitFeedback()

Enables you to provide feedback to Amazon Kendra to improve the performance of the service. 

Required Parameters
{
  "QueryId": "The identifier of the specific query for which you are submitting feedback. The query ID is returned in the response to the operation.",
  "IndexId": "The identifier of the index that was queried."
}

Optional Parameters
{
  "RelevanceFeedbackItems": "Provides Amazon Kendra with relevant or not relevant feedback for whether a particular item was relevant to the search.",
  "ClickFeedbackItems": "Tells Amazon Kendra that a particular search result link was chosen by the user. "
}
"""
SubmitFeedback(args) = kendra("SubmitFeedback", args)

"""
    UpdateDataSource()

Updates an existing Amazon Kendra data source.

Required Parameters
{
  "Id": "The unique identifier of the data source to update.",
  "IndexId": "The identifier of the index that contains the data source to update."
}

Optional Parameters
{
  "Configuration": "",
  "Description": "The new description for the data source.",
  "Schedule": "The new update schedule for the data source.",
  "Name": "The name of the data source to update. The name of the data source can't be updated. To rename a data source you must delete the data source and re-create it.",
  "RoleArn": "The Amazon Resource Name (ARN) of the new role to use when the data source is accessing resources on your behalf."
}
"""
UpdateDataSource(args) = kendra("UpdateDataSource", args)

"""
    CreateIndex()

Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the Status field returned from a call to . The Status field is set to ACTIVE when the index is ready to use. Once the index is active you can index your documents using the operation or using one of the supported data sources. 

Required Parameters
{
  "Name": "The name for the new index.",
  "RoleArn": "An IAM role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role used when you use the BatchPutDocument operation to index documents from an Amazon S3 bucket."
}

Optional Parameters
{
  "ServerSideEncryptionConfiguration": "The identifier of the AWS KMS customer managed key (CMK) to use to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs.",
  "Description": "A description for the index."
}
"""
CreateIndex(args) = kendra("CreateIndex", args)

"""
    DescribeIndex()

Describes an existing Amazon Kendra index

Required Parameters
{
  "Id": "The name of the index to describe."
}
"""
DescribeIndex(args) = kendra("DescribeIndex", args)
