include("../AWSCorePrototypeServices.jl")
using .Services: kendra

"""
Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a ResourceInUseException exception.

Required Parameters:
Id, IndexId
"""
StartDataSourceSyncJob(args) = kendra("StartDataSourceSyncJob", args)

"""
Removes one or more documents from an index. The documents must have been added with the BatchPutDocument operation. The documents are deleted asynchronously. You can see the progress of the deletion by using AWS CloudWatch. Any error messages releated to the processing of the batch are sent to you CloudWatch log.

Required Parameters:
IndexId, DocumentIdList
"""
BatchDeleteDocument(args) = kendra("BatchDeleteDocument", args)

"""
Removes an FAQ from an index.

Required Parameters:
Id, IndexId
"""
DeleteFaq(args) = kendra("DeleteFaq", args)

"""
Searches an active index. Use this API to search your documents using query. The Query operation enables to do faceted search and to filter results based on document attributes. It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results.  Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that the query return only one type of result using the QueryResultTypeConfig parameter.

Required Parameters:
IndexId, QueryText
"""
Query(args) = kendra("Query", args)

"""
Adds one or more documents to an index. The BatchPutDocument operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index. The documents are indexed asynchronously. You can see the progress of the batch using AWS CloudWatch. Any error messages related to processing the batch are sent to your AWS CloudWatch log.

Required Parameters:
IndexId, Documents
"""
BatchPutDocument(args) = kendra("BatchPutDocument", args)

"""
Gets a list of FAQ lists associated with an index.

Required Parameters:
IndexId
"""
ListFaqs(args) = kendra("ListFaqs", args)

"""
Gets information about a Amazon Kendra data source.

Required Parameters:
Id, IndexId
"""
DescribeDataSource(args) = kendra("DescribeDataSource", args)

"""
Gets statistics about synchronizing Amazon Kendra with a data source.

Required Parameters:
Id, IndexId
"""
ListDataSourceSyncJobs(args) = kendra("ListDataSourceSyncJobs", args)

"""
Lists the data sources that you have created.

Required Parameters:
IndexId
"""
ListDataSources(args) = kendra("ListDataSources", args)

"""
Lists the Amazon Kendra indexes that you have created.
"""
ListIndices() = kendra("ListIndices")

"""
Creates a data source that you use to with an Amazon Kendra index.  You specify a name, connector type and description for your data source. You can choose between an S3 connector, a SharePoint Online connector, and a database connector. You also specify configuration information such as document metadata (author, source URI, and so on) and user context information.  CreateDataSource is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.

Required Parameters:
Name, IndexId, Type, Configuration, RoleArn
"""
CreateDataSource(args) = kendra("CreateDataSource", args)

"""
Creates an new set of frequently asked question (FAQ) questions and answers.

Required Parameters:
IndexId, Name, S3Path, RoleArn
"""
CreateFaq(args) = kendra("CreateFaq", args)

"""
Gets information about an FAQ list.

Required Parameters:
Id, IndexId
"""
DescribeFaq(args) = kendra("DescribeFaq", args)

"""
Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the Status field returned by a call to the DescribeIndex operation is set to DELETING.

Required Parameters:
Id
"""
DeleteIndex(args) = kendra("DeleteIndex", args)

"""
Stops a running synchronization job. You can't stop a scheduled synchronization job.

Required Parameters:
Id, IndexId
"""
StopDataSourceSyncJob(args) = kendra("StopDataSourceSyncJob", args)

"""
Updates an existing Amazon Kendra index.

Required Parameters:
Id
"""
UpdateIndex(args) = kendra("UpdateIndex", args)

"""
Enables you to provide feedback to Amazon Kendra to improve the performance of the service. 

Required Parameters:
IndexId, QueryId
"""
SubmitFeedback(args) = kendra("SubmitFeedback", args)

"""
Updates an existing Amazon Kendra data source.

Required Parameters:
Id, IndexId
"""
UpdateDataSource(args) = kendra("UpdateDataSource", args)

"""
Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the Status field returned from a call to . The Status field is set to ACTIVE when the index is ready to use. Once the index is active you can index your documents using the operation or using one of the supported data sources. 

Required Parameters:
Name, RoleArn
"""
CreateIndex(args) = kendra("CreateIndex", args)

"""
Describes an existing Amazon Kendra index

Required Parameters:
Id
"""
DescribeIndex(args) = kendra("DescribeIndex", args)
