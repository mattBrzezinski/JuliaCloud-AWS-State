include("../AWSCorePrototypeServices.jl")
using .Services: glue

"""
Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED.

Required Parameters:
CrawlerName
"""
StartCrawlerSchedule(args) = glue("StartCrawlerSchedule", args)

"""
Gets an AWS Glue machine learning transform artifact and all its corresponding metadata. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. You can retrieve their metadata by calling GetMLTransform.

Required Parameters:
TransformId
"""
GetMLTransform(args) = glue("GetMLTransform", args)

"""
Retrieves the workflow run properties which were set during the run.

Required Parameters:
Name, RunId
"""
GetWorkflowRunProperties(args) = glue("GetWorkflowRunProperties", args)

"""
Creates mappings.

Required Parameters:
Source
"""
GetMapping(args) = glue("GetMapping", args)

"""
Updates an existing database definition in a Data Catalog.

Required Parameters:
Name, DatabaseInput
"""
UpdateDatabase(args) = glue("UpdateDatabase", args)

"""
Sets the security configuration for a specified catalog. After the configuration has been set, the specified encryption is applied to every catalog write thereafter.

Required Parameters:
DataCatalogEncryptionSettings
"""
PutDataCatalogEncryptionSettings(args) = glue("PutDataCatalogEncryptionSettings", args)

"""
Retrieves partitions in a batch request.

Required Parameters:
DatabaseName, TableName, PartitionsToGet
"""
BatchGetPartition(args) = glue("BatchGetPartition", args)

"""
Retrieves the definitions of some or all of the tables in a given Database.

Required Parameters:
DatabaseName
"""
GetTables(args) = glue("GetTables", args)

"""
Modifies an existing classifier (a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field is present).
"""
UpdateClassifier() = glue("UpdateClassifier")

"""
Retrieves a list of all security configurations.
"""
GetSecurityConfigurations() = glue("GetSecurityConfigurations")

"""
Cancels (stops) a task run. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can cancel a machine learning task run at any time by calling CancelMLTaskRun with a task run's parent transform's TransformID and the task run's TaskRunId. 

Required Parameters:
TransformId, TaskRunId
"""
CancelMLTaskRun(args) = glue("CancelMLTaskRun", args)

"""
Retrieves the definition of a trigger.

Required Parameters:
Name
"""
GetTrigger(args) = glue("GetTrigger", args)

"""
Retrieves metadata for all runs of a given job definition.

Required Parameters:
JobName
"""
GetJobRuns(args) = glue("GetJobRuns", args)

"""
Puts the specified workflow run properties for the given workflow run. If a property already exists for the specified run, then it overrides the value otherwise adds the property to existing properties.

Required Parameters:
Name, RunId, RunProperties
"""
PutWorkflowRunProperties(args) = glue("PutWorkflowRunProperties", args)

"""
Returns a list of resource metadata for a given list of development endpoint names. After calling the ListDevEndpoints operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters:
DevEndpointNames
"""
BatchGetDevEndpoints(args) = glue("BatchGetDevEndpoints", args)

"""
Adds tags to a resource. A tag is a label you can assign to an AWS resource. In AWS Glue, you can tag only certain resources. For information about what resources you can tag, see AWS Tags in AWS Glue.

Required Parameters:
ResourceArn, TagsToAdd
"""
TagResource(args) = glue("TagResource", args)

"""
Creates a new table definition in the Data Catalog.

Required Parameters:
DatabaseName, TableInput
"""
CreateTable(args) = glue("CreateTable", args)

"""
Retrieves the security configuration for a specified catalog.
"""
GetDataCatalogEncryptionSettings() = glue("GetDataCatalogEncryptionSettings")

"""
Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling GetMLTransforms.
"""
GetMLTransforms() = glue("GetMLTransforms")

"""
Returns a list of resource metadata for a given list of trigger names. After calling the ListTriggers operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters:
TriggerNames
"""
BatchGetTriggers(args) = glue("BatchGetTriggers", args)

"""
Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling GetMLTaskRuns with their parent transform's TransformID and other optional parameters as documented in this section. This operation returns a list of historic runs and must be paginated.

Required Parameters:
TransformId
"""
GetMLTaskRuns(args) = glue("GetMLTaskRuns", args)

"""
Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.  You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search. 
"""
SearchTables() = glue("SearchTables")

"""
Updates an existing job definition.

Required Parameters:
JobName, JobUpdate
"""
UpdateJob(args) = glue("UpdateJob", args)

"""
Removes a specified database from a Data Catalog.  After completing this operation, you no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling DeleteDatabase, use DeleteTableVersion or BatchDeleteTableVersion, DeletePartition or BatchDeletePartition, DeleteUserDefinedFunction, and DeleteTable or BatchDeleteTable, to delete any resources that belong to the database. 

Required Parameters:
Name
"""
DeleteDatabase(args) = glue("DeleteDatabase", args)

"""
If the specified crawler is running, stops the crawl.

Required Parameters:
Name
"""
StopCrawler(args) = glue("StopCrawler", args)

"""
Creates one or more partitions in a batch operation.

Required Parameters:
DatabaseName, TableName, PartitionInputList
"""
BatchCreatePartition(args) = glue("BatchCreatePartition", args)

"""
Stops a specified trigger.

Required Parameters:
Name
"""
StopTrigger(args) = glue("StopTrigger", args)

"""
Updates a connection definition in the Data Catalog.

Required Parameters:
Name, ConnectionInput
"""
UpdateConnection(args) = glue("UpdateConnection", args)

"""
Deletes an existing function definition from the Data Catalog.

Required Parameters:
DatabaseName, FunctionName
"""
DeleteUserDefinedFunction(args) = glue("DeleteUserDefinedFunction", args)

"""
Retrieves a list of strings that identify available versions of a specified table.

Required Parameters:
DatabaseName, TableName
"""
GetTableVersions(args) = glue("GetTableVersions", args)

"""
Retrieves metrics about specified crawlers.
"""
GetCrawlerMetrics() = glue("GetCrawlerMetrics")

"""
Deletes a specified security configuration.

Required Parameters:
Name
"""
DeleteSecurityConfiguration(args) = glue("DeleteSecurityConfiguration", args)

"""
Updates a crawler. If a crawler is running, you must stop it using StopCrawler before updating it.

Required Parameters:
Name
"""
UpdateCrawler(args) = glue("UpdateCrawler", args)

"""
Updates a partition.

Required Parameters:
DatabaseName, TableName, PartitionValueList, PartitionInput
"""
UpdatePartition(args) = glue("UpdatePartition", args)

"""
Retrieves all databases defined in a given Data Catalog.
"""
GetDatabases() = glue("GetDatabases")

"""
Sets the schedule state of the specified crawler to NOT_SCHEDULED, but does not stop the crawler if it is already running.

Required Parameters:
CrawlerName
"""
StopCrawlerSchedule(args) = glue("StopCrawlerSchedule", args)

"""
Retrieves resource metadata for a workflow.

Required Parameters:
Name
"""
GetWorkflow(args) = glue("GetWorkflow", args)

"""
Lists all classifier objects in the Data Catalog.
"""
GetClassifiers() = glue("GetClassifiers")

"""
Retrieves multiple function definitions from the Data Catalog.

Required Parameters:
DatabaseName, Pattern
"""
GetUserDefinedFunctions(args) = glue("GetUserDefinedFunctions", args)

"""
Updates an existing function definition in the Data Catalog.

Required Parameters:
DatabaseName, FunctionName, FunctionInput
"""
UpdateUserDefinedFunction(args) = glue("UpdateUserDefinedFunction", args)

"""
Retrieves the metadata for a given workflow run. 

Required Parameters:
Name, RunId
"""
GetWorkflowRun(args) = glue("GetWorkflowRun", args)

"""
Starts a task to estimate the quality of the transform.  When you provide label sets as examples of truth, AWS Glue machine learning uses some of those examples to learn from them. The rest of the labels are used as a test to estimate quality. Returns a unique identifier for the run. You can call GetMLTaskRun to get more information about the stats of the EvaluationTaskRun.

Required Parameters:
TransformId
"""
StartMLEvaluationTaskRun(args) = glue("StartMLEvaluationTaskRun", args)

"""
Retrieves a specified security configuration.

Required Parameters:
Name
"""
GetSecurityConfiguration(args) = glue("GetSecurityConfiguration", args)

"""
Retrieves information about a specified partition.

Required Parameters:
DatabaseName, TableName, PartitionValues
"""
GetPartition(args) = glue("GetPartition", args)

"""
Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the s3Targets field, the jdbcTargets field, or the DynamoDBTargets field.

Required Parameters:
Name, Role, Targets
"""
CreateCrawler(args) = glue("CreateCrawler", args)

"""
Gets code to perform a specified mapping.

Required Parameters:
Mapping, Source
"""
GetPlan(args) = glue("GetPlan", args)

"""
Creates a new development endpoint.

Required Parameters:
EndpointName, RoleArn
"""
CreateDevEndpoint(args) = glue("CreateDevEndpoint", args)

"""
Deletes a specified batch of versions of a table.

Required Parameters:
DatabaseName, TableName, VersionIds
"""
BatchDeleteTableVersion(args) = glue("BatchDeleteTableVersion", args)

"""
Removes tags from a resource.

Required Parameters:
ResourceArn, TagsToRemove
"""
UntagResource(args) = glue("UntagResource", args)

"""
Deletes a list of connection definitions from the Data Catalog.

Required Parameters:
ConnectionNameList
"""
BatchDeleteConnection(args) = glue("BatchDeleteConnection", args)

"""
Creates a new database in a Data Catalog.

Required Parameters:
DatabaseInput
"""
CreateDatabase(args) = glue("CreateDatabase", args)

"""
Deletes a specified version of a table.

Required Parameters:
DatabaseName, TableName, VersionId
"""
DeleteTableVersion(args) = glue("DeleteTableVersion", args)

"""
Returns a list of resource metadata for a given list of workflow names. After calling the ListWorkflows operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters:
Names
"""
BatchGetWorkflows(args) = glue("BatchGetWorkflows", args)

"""
Transforms a Python script into a directed acyclic graph (DAG). 
"""
GetDataflowGraph() = glue("GetDataflowGraph")

"""
Creates a connection definition in the Data Catalog.

Required Parameters:
ConnectionInput
"""
CreateConnection(args) = glue("CreateConnection", args)

"""
Deletes one or more partitions in a batch operation.

Required Parameters:
DatabaseName, TableName, PartitionsToDelete
"""
BatchDeletePartition(args) = glue("BatchDeletePartition", args)

"""
Transforms a directed acyclic graph (DAG) into code.
"""
CreateScript() = glue("CreateScript")

"""
Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels. When the StartMLLabelingSetGenerationTaskRun finishes, AWS Glue will have generated a "labeling set" or a set of questions for humans to answer. In the case of the FindMatches transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?”  After the labeling process is finished, you can upload your labels with a call to StartImportLabelsTaskRun. After StartImportLabelsTaskRun finishes, all future runs of the machine learning transform will use the new and improved labels and perform a higher-quality transformation.

Required Parameters:
TransformId, OutputS3Path
"""
StartMLLabelingSetGenerationTaskRun(args) = glue("StartMLLabelingSetGenerationTaskRun", args)

"""
Deletes a specified partition.

Required Parameters:
DatabaseName, TableName, PartitionValues
"""
DeletePartition(args) = glue("DeletePartition", args)

"""
Gets details for a specific task run on a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can check the stats of any task run by calling GetMLTaskRun with the TaskRunID and its parent transform's TransformID.

Required Parameters:
TransformId, TaskRunId
"""
GetMLTaskRun(args) = glue("GetMLTaskRun", args)

"""
Retrieves metadata for all crawlers defined in the customer account.
"""
GetCrawlers() = glue("GetCrawlers")

"""
Retrieves a list of connection definitions from the Data Catalog.
"""
GetConnections() = glue("GetConnections")

"""
Retrieves the names of all DevEndpoint resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
"""
ListDevEndpoints() = glue("ListDevEndpoints")

"""
Deletes a specified development endpoint.

Required Parameters:
EndpointName
"""
DeleteDevEndpoint(args) = glue("DeleteDevEndpoint", args)

"""
Starts a job run using a job definition.

Required Parameters:
JobName
"""
StartJobRun(args) = glue("StartJobRun", args)

"""
Deletes multiple tables at once.  After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling BatchDeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 

Required Parameters:
DatabaseName, TablesToDelete
"""
BatchDeleteTable(args) = glue("BatchDeleteTable", args)

"""
Retrieves a specified resource policy.
"""
GetResourcePolicy() = glue("GetResourcePolicy")

"""
Retrieves metadata for all runs of a given workflow.

Required Parameters:
Name
"""
GetWorkflowRuns(args) = glue("GetWorkflowRuns", args)

"""
Updates a specified development endpoint.

Required Parameters:
EndpointName
"""
UpdateDevEndpoint(args) = glue("UpdateDevEndpoint", args)

"""
Retrieve a classifier by name.

Required Parameters:
Name
"""
GetClassifier(args) = glue("GetClassifier", args)

"""
Retrieves the status of a migration operation.
"""
GetCatalogImportStatus() = glue("GetCatalogImportStatus")

"""
Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is RUNNING.

Required Parameters:
Name
"""
DeleteCrawler(args) = glue("DeleteCrawler", args)

"""
Retrieves a list of tags associated with a resource.

Required Parameters:
ResourceArn
"""
GetTags(args) = glue("GetTags", args)

"""
Sets the Data Catalog resource policy for access control.

Required Parameters:
PolicyInJson
"""
PutResourcePolicy(args) = glue("PutResourcePolicy", args)

"""
Updates a metadata table in the Data Catalog.

Required Parameters:
DatabaseName, TableInput
"""
UpdateTable(args) = glue("UpdateTable", args)

"""
Updates a trigger definition.

Required Parameters:
Name, TriggerUpdate
"""
UpdateTrigger(args) = glue("UpdateTrigger", args)

"""
Returns a list of resource metadata for a given list of crawler names. After calling the ListCrawlers operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters:
CrawlerNames
"""
BatchGetCrawlers(args) = glue("BatchGetCrawlers", args)

"""
Begins an asynchronous task to export all labeled data for a particular transform. This task is the only label-related API call that is not part of the typical active learning workflow. You typically use StartExportLabelsTaskRun when you want to work with all of your existing labels at the same time, such as when you want to remove or change labels that were previously submitted as truth. This API operation accepts the TransformId whose labels you want to export and an Amazon Simple Storage Service (Amazon S3) path to export the labels to. The operation returns a TaskRunId. You can check on the status of your task run by calling the GetMLTaskRun API.

Required Parameters:
TransformId, OutputS3Path
"""
StartExportLabelsTaskRun(args) = glue("StartExportLabelsTaskRun", args)

"""
Updates an existing workflow.

Required Parameters:
Name
"""
UpdateWorkflow(args) = glue("UpdateWorkflow", args)

"""
Creates a new job definition.

Required Parameters:
Name, Role, Command
"""
CreateJob(args) = glue("CreateJob", args)

"""
Retrieves the metadata for a given job run.

Required Parameters:
JobName, RunId
"""
GetJobRun(args) = glue("GetJobRun", args)

"""
Retrieves a specified version of a table.

Required Parameters:
DatabaseName, TableName
"""
GetTableVersion(args) = glue("GetTableVersion", args)

"""
Retrieves a specified function definition from the Data Catalog.

Required Parameters:
DatabaseName, FunctionName
"""
GetUserDefinedFunction(args) = glue("GetUserDefinedFunction", args)

"""
Retrieves information about a specified development endpoint.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address, and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 

Required Parameters:
EndpointName
"""
GetDevEndpoint(args) = glue("GetDevEndpoint", args)

"""
Returns a list of resource metadata for a given list of job names. After calling the ListJobs operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags. 

Required Parameters:
JobNames
"""
BatchGetJobs(args) = glue("BatchGetJobs", args)

"""
Retrieves all the development endpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 
"""
GetDevEndpoints() = glue("GetDevEndpoints")

"""
Creates a new trigger.

Required Parameters:
Name, Type, Actions
"""
CreateTrigger(args) = glue("CreateTrigger", args)

"""
Retrieves information about the partitions in a table.

Required Parameters:
DatabaseName, TableName
"""
GetPartitions(args) = glue("GetPartitions", args)

"""
Updates an existing machine learning transform. Call this operation to tune the algorithm parameters to achieve better results. After calling this operation, you can call the StartMLEvaluationTaskRun operation to assess how well your new parameters achieved your goals (such as improving the quality of your machine learning transform, or making it more cost-effective).

Required Parameters:
TransformId
"""
UpdateMLTransform(args) = glue("UpdateMLTransform", args)

"""
Deletes a connection from the Data Catalog.

Required Parameters:
ConnectionName
"""
DeleteConnection(args) = glue("DeleteConnection", args)

"""
Stops one or more job runs for a specified job definition.

Required Parameters:
JobName, JobRunIds
"""
BatchStopJobRun(args) = glue("BatchStopJobRun", args)

"""
Removes a classifier from the Data Catalog.

Required Parameters:
Name
"""
DeleteClassifier(args) = glue("DeleteClassifier", args)

"""
Deletes an AWS Glue machine learning transform. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. If you no longer need a transform, you can delete it by calling DeleteMLTransforms. However, any AWS Glue jobs that still reference the deleted transform will no longer succeed.

Required Parameters:
TransformId
"""
DeleteMLTransform(args) = glue("DeleteMLTransform", args)

"""
Deletes a specified job definition. If the job definition is not found, no exception is thrown.

Required Parameters:
JobName
"""
DeleteJob(args) = glue("DeleteJob", args)

"""
Lists names of workflows created in the account.
"""
ListWorkflows() = glue("ListWorkflows")

"""
Creates an AWS Glue machine learning transform. This operation creates the transform and all the necessary parameters to train it. Call this operation as the first step in the process of using a machine learning transform (such as the FindMatches transform) for deduplicating data. You can provide an optional Description, in addition to the parameters that you want to use for your algorithm. You must also specify certain parameters for the tasks that AWS Glue runs on your behalf as part of learning from your data and creating a high-quality machine learning transform. These parameters include Role, and optionally, AllocatedCapacity, Timeout, and MaxRetries. For more information, see Jobs.

Required Parameters:
Name, InputRecordTables, Parameters, Role
"""
CreateMLTransform(args) = glue("CreateMLTransform", args)

"""
Enables you to provide additional labels (examples of truth) to be used to teach the machine learning transform and improve its quality. This API operation is generally used as part of the active learning workflow that starts with the StartMLLabelingSetGenerationTaskRun call and that ultimately results in improving the quality of your machine learning transform.  After the StartMLLabelingSetGenerationTaskRun finishes, AWS Glue machine learning will have generated a series of questions for humans to answer. (Answering these questions is often called 'labeling' in the machine learning workflows). In the case of the FindMatches transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?” After the labeling process is finished, users upload their answers/labels with a call to StartImportLabelsTaskRun. After StartImportLabelsTaskRun finishes, all future runs of the machine learning transform use the new and improved labels and perform a higher-quality transformation. By default, StartMLLabelingSetGenerationTaskRun continually learns from and combines all labels that you upload unless you set Replace to true. If you set Replace to true, StartImportLabelsTaskRun deletes and forgets all previously uploaded labels and learns only from the exact set that you upload. Replacing labels can be helpful if you realize that you previously uploaded incorrect labels, and you believe that they are having a negative effect on your transform quality. You can check on the status of your task run by calling the GetMLTaskRun operation. 

Required Parameters:
TransformId, InputS3Path
"""
StartImportLabelsTaskRun(args) = glue("StartImportLabelsTaskRun", args)

"""
Creates a new security configuration. A security configuration is a set of security properties that can be used by AWS Glue. You can use a security configuration to encrypt data at rest. For information about using security configurations in AWS Glue, see Encrypting Data Written by Crawlers, Jobs, and Development Endpoints.

Required Parameters:
Name, EncryptionConfiguration
"""
CreateSecurityConfiguration(args) = glue("CreateSecurityConfiguration", args)

"""
Creates a new workflow.

Required Parameters:
Name
"""
CreateWorkflow(args) = glue("CreateWorkflow", args)

"""
Retrieves the definition of a specified database.

Required Parameters:
Name
"""
GetDatabase(args) = glue("GetDatabase", args)

"""
Deletes a specified policy.
"""
DeleteResourcePolicy() = glue("DeleteResourcePolicy")

"""
Deletes a workflow.

Required Parameters:
Name
"""
DeleteWorkflow(args) = glue("DeleteWorkflow", args)

"""
Retrieves all current job definitions.
"""
GetJobs() = glue("GetJobs")

"""
Creates a classifier in the user's account. This can be a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field of the request is present.
"""
CreateClassifier() = glue("CreateClassifier")

"""
Removes a table definition from the Data Catalog.  After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling DeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 

Required Parameters:
DatabaseName, Name
"""
DeleteTable(args) = glue("DeleteTable", args)

"""
Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
"""
ListCrawlers() = glue("ListCrawlers")

"""
Resets a bookmark entry.

Required Parameters:
JobName
"""
ResetJobBookmark(args) = glue("ResetJobBookmark", args)

"""
Updates the schedule of a crawler using a cron expression. 

Required Parameters:
CrawlerName
"""
UpdateCrawlerSchedule(args) = glue("UpdateCrawlerSchedule", args)

"""
Starts a new run of the specified workflow.

Required Parameters:
Name
"""
StartWorkflowRun(args) = glue("StartWorkflowRun", args)

"""
Retrieves an existing job definition.

Required Parameters:
JobName
"""
GetJob(args) = glue("GetJob", args)

"""
Retrieves a connection definition from the Data Catalog.

Required Parameters:
Name
"""
GetConnection(args) = glue("GetConnection", args)

"""
Returns information on a job bookmark entry.

Required Parameters:
JobName
"""
GetJobBookmark(args) = glue("GetJobBookmark", args)

"""
Retrieves metadata for a specified crawler.

Required Parameters:
Name
"""
GetCrawler(args) = glue("GetCrawler", args)

"""
Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
"""
ListTriggers() = glue("ListTriggers")

"""
Gets all the triggers associated with a job.
"""
GetTriggers() = glue("GetTriggers")

"""
Deletes a specified trigger. If the trigger is not found, no exception is thrown.

Required Parameters:
Name
"""
DeleteTrigger(args) = glue("DeleteTrigger", args)

"""
Retrieves the Table definition in a Data Catalog for a specified table.

Required Parameters:
DatabaseName, Name
"""
GetTable(args) = glue("GetTable", args)

"""
Imports an existing Amazon Athena Data Catalog to AWS Glue
"""
ImportCatalogToGlue() = glue("ImportCatalogToGlue")

"""
Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
"""
ListJobs() = glue("ListJobs")

"""
Starts an existing trigger. See Triggering Jobs for information about how different types of trigger are started.

Required Parameters:
Name
"""
StartTrigger(args) = glue("StartTrigger", args)

"""
Creates a new partition.

Required Parameters:
DatabaseName, TableName, PartitionInput
"""
CreatePartition(args) = glue("CreatePartition", args)

"""
Creates a new function definition in the Data Catalog.

Required Parameters:
DatabaseName, FunctionInput
"""
CreateUserDefinedFunction(args) = glue("CreateUserDefinedFunction", args)

"""
Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a CrawlerRunningException.

Required Parameters:
Name
"""
StartCrawler(args) = glue("StartCrawler", args)
