include("../AWSCorePrototypeServices.jl")
using .Services: application_discovery_service

"""
    StartContinuousExport()

Start the continuous flow of agent's discovered data into Amazon Athena.
"""

StartContinuousExport() = application_discovery_service("StartContinuousExport")
StartContinuousExport(args) = application_discovery_service("StartContinuousExport", args)

"""
    ListServerNeighbors()

Retrieves a list of servers that are one network hop away from a specified server.

Required Parameters
{
  "configurationId": "Configuration ID of the server for which neighbors are being listed."
}

Optional Parameters
{
  "maxResults": "Maximum number of results to return in a single page of output.",
  "portInformationNeeded": "Flag to indicate if port and protocol information is needed as part of the response.",
  "neighborConfigurationIds": "List of configuration IDs to test for one-hop-away.",
  "nextToken": "Token to retrieve the next set of results. For example, if you previously specified 100 IDs for ListServerNeighborsRequest neighborConfigurationIds but set ListServerNeighborsRequest maxResults to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10."
}
"""
ListServerNeighbors(args) = application_discovery_service("ListServerNeighbors", args)

"""
    ListConfigurations()

Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.

Required Parameters
{
  "configurationType": "A valid configuration identified by Application Discovery Service. "
}

Optional Parameters
{
  "filters": "You can filter the request using various logical operators and a key-value format. For example:   {\"key\": \"serverType\", \"value\": \"webServer\"}  For a complete list of filter options and guidance about using them with this action, see Using the ListConfigurations Action in the AWS Application Discovery Service User Guide.",
  "maxResults": "The total number of items to return. The maximum value is 100.",
  "nextToken": "Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set ListConfigurationsRequest maxResults to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.",
  "orderBy": "Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see Using the ListConfigurations Action in the AWS Application Discovery Service User Guide."
}
"""
ListConfigurations(args) = application_discovery_service("ListConfigurations", args)

"""
    DescribeConfigurations()

Retrieves attributes for a list of configuration item IDs.  All of the supplied IDs must be for the same asset type from one of the following:   server   application   process   connection   Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action in the AWS Application Discovery Service User Guide. 

Required Parameters
{
  "configurationIds": "One or more configuration IDs."
}
"""
DescribeConfigurations(args) = application_discovery_service("DescribeConfigurations", args)

"""
    CreateApplication()

Creates an application with the given name and description.

Required Parameters
{
  "name": "Name of the application to be created."
}

Optional Parameters
{
  "description": "Description of the application to be created."
}
"""
CreateApplication(args) = application_discovery_service("CreateApplication", args)

"""
    DeleteApplications()

Deletes a list of applications and their associations with configuration items.

Required Parameters
{
  "configurationIds": "Configuration ID of an application to be deleted."
}
"""
DeleteApplications(args) = application_discovery_service("DeleteApplications", args)

"""
    ExportConfigurations()

Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
"""

ExportConfigurations() = application_discovery_service("ExportConfigurations")
ExportConfigurations(args) = application_discovery_service("ExportConfigurations", args)

"""
    UpdateApplication()

Updates metadata about an application.

Required Parameters
{
  "configurationId": "Configuration ID of the application to be updated."
}

Optional Parameters
{
  "name": "New name of the application to be updated.",
  "description": "New description of the application to be updated."
}
"""
UpdateApplication(args) = application_discovery_service("UpdateApplication", args)

"""
    StopContinuousExport()

Stop the continuous flow of agent's discovered data into Amazon Athena.

Required Parameters
{
  "exportId": "The unique ID assigned to this export."
}
"""
StopContinuousExport(args) = application_discovery_service("StopContinuousExport", args)

"""
    DescribeAgents()

Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call DescribeAgents as is without passing any parameters.

Optional Parameters
{
  "filters": "You can filter the request using various logical operators and a key-value format. For example:   {\"key\": \"collectionStatus\", \"value\": \"STARTED\"} ",
  "maxResults": "The total number of agents/Connectors to return in a single page of output. The maximum value is 100.",
  "nextToken": "Token to retrieve the next set of results. For example, if you previously specified 100 IDs for DescribeAgentsRequest agentIds but set DescribeAgentsRequest maxResults to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.",
  "agentIds": "The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account."
}
"""

DescribeAgents() = application_discovery_service("DescribeAgents")
DescribeAgents(args) = application_discovery_service("DescribeAgents", args)

"""
    DescribeTags()

Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user account that have tags can be listed if you call DescribeTags as is without passing any parameters.

Optional Parameters
{
  "filters": "You can filter the list using a key-value format. You can separate these items by using logical operators. Allowed filters include tagKey, tagValue, and configurationId. ",
  "maxResults": "The total number of items to return in a single page of output. The maximum value is 100.",
  "nextToken": "A token to start the list. Use this token to get the next set of results."
}
"""

DescribeTags() = application_discovery_service("DescribeTags")
DescribeTags(args) = application_discovery_service("DescribeTags", args)

"""
    DescribeContinuousExports()

Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.

Optional Parameters
{
  "exportIds": "The unique IDs assigned to the exports.",
  "maxResults": "A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.",
  "nextToken": "The token from the previous call to DescribeExportTasks."
}
"""

DescribeContinuousExports() = application_discovery_service("DescribeContinuousExports")
DescribeContinuousExports(args) = application_discovery_service("DescribeContinuousExports", args)

"""
    DescribeExportTasks()

Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.

Optional Parameters
{
  "filters": "One or more filters.    AgentId - ID of the agent whose collected data will be exported  ",
  "exportIds": "One or more unique identifiers used to query the status of an export request.",
  "maxResults": "The maximum number of volume results returned by DescribeExportTasks in paginated output. When this parameter is used, DescribeExportTasks only returns maxResults results in a single page along with a nextToken response element.",
  "nextToken": "The nextToken value returned from a previous paginated DescribeExportTasks request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value. This value is null when there are no more results to return."
}
"""

DescribeExportTasks() = application_discovery_service("DescribeExportTasks")
DescribeExportTasks(args) = application_discovery_service("DescribeExportTasks", args)

"""
    DescribeImportTasks()

Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.

Optional Parameters
{
  "filters": "An array of name-value pairs that you provide to filter the results for the DescribeImportTask request to a specific subset of results. Currently, wildcard values aren't supported for filters.",
  "maxResults": "The maximum number of results that you want this request to return, up to 100.",
  "nextToken": "The token to request a specific page of results."
}
"""

DescribeImportTasks() = application_discovery_service("DescribeImportTasks")
DescribeImportTasks(args) = application_discovery_service("DescribeImportTasks", args)

"""
    StartExportTask()

 Begins the export of discovered data to an S3 bucket.  If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.   If you do not include an agentIds filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. 

Optional Parameters
{
  "filters": "If a filter is present, it selects the single agentId of the Application Discovery Agent for which data is exported. The agentId can be found in the results of the DescribeAgents API or CLI. If no filter is present, startTime and endTime are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents. ",
  "startTime": "The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.",
  "endTime": "The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.",
  "exportDataFormat": "The file format for the returned export data. Default value is CSV. Note: The GRAPHML option has been deprecated. "
}
"""

StartExportTask() = application_discovery_service("StartExportTask")
StartExportTask(args) = application_discovery_service("StartExportTask", args)

"""
    DeleteTags()

Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.

Required Parameters
{
  "configurationIds": "A list of configuration items with tags that you want to delete."
}

Optional Parameters
{
  "tags": "Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a key-value format. For example:  {\"key\": \"serverType\", \"value\": \"webServer\"} "
}
"""
DeleteTags(args) = application_discovery_service("DeleteTags", args)

"""
    DescribeExportConfigurations()

 DescribeExportConfigurations is deprecated. Use DescribeImportTasks, instead.

Optional Parameters
{
  "exportIds": "A list of continuous export IDs to search for.",
  "maxResults": "A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.",
  "nextToken": "The token from the previous call to describe-export-tasks."
}
"""

DescribeExportConfigurations() = application_discovery_service("DescribeExportConfigurations")
DescribeExportConfigurations(args) = application_discovery_service("DescribeExportConfigurations", args)

"""
    BatchDeleteImportData()

Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications.  AWS Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.

Required Parameters
{
  "importTaskIds": "The IDs for the import tasks that you want to delete."
}
"""
BatchDeleteImportData(args) = application_discovery_service("BatchDeleteImportData", args)

"""
    CreateTags()

Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.

Required Parameters
{
  "configurationIds": "A list of configuration items that you want to tag.",
  "tags": "Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a key-value format. For example:  {\"key\": \"serverType\", \"value\": \"webServer\"} "
}
"""
CreateTags(args) = application_discovery_service("CreateTags", args)

"""
    StopDataCollectionByAgentIds()

Instructs the specified agents or connectors to stop collecting data.

Required Parameters
{
  "agentIds": "The IDs of the agents or connectors from which to stop collecting data."
}
"""
StopDataCollectionByAgentIds(args) = application_discovery_service("StopDataCollectionByAgentIds", args)

"""
    AssociateConfigurationItemsToApplication()

Associates one or more configuration items with an application.

Required Parameters
{
  "configurationIds": "The ID of each configuration item to be associated with an application.",
  "applicationConfigurationId": "The configuration ID of an application with which items are to be associated."
}
"""
AssociateConfigurationItemsToApplication(args) = application_discovery_service("AssociateConfigurationItemsToApplication", args)

"""
    GetDiscoverySummary()

Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
"""

GetDiscoverySummary() = application_discovery_service("GetDiscoverySummary")
GetDiscoverySummary(args) = application_discovery_service("GetDiscoverySummary", args)

"""
    DisassociateConfigurationItemsFromApplication()

Disassociates one or more configuration items from an application.

Required Parameters
{
  "configurationIds": "Configuration ID of each item to be disassociated from an application.",
  "applicationConfigurationId": "Configuration ID of an application from which each item is disassociated."
}
"""
DisassociateConfigurationItemsFromApplication(args) = application_discovery_service("DisassociateConfigurationItemsFromApplication", args)

"""
    StartDataCollectionByAgentIds()

Instructs the specified agents or connectors to start collecting data.

Required Parameters
{
  "agentIds": "The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the Description field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows Failed in the Description field."
}
"""
StartDataCollectionByAgentIds(args) = application_discovery_service("StartDataCollectionByAgentIds", args)

"""
    StartImportTask()

Starts an import task, which allows you to import details of your on-premises environment directly into AWS Migration Hub without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status. To start an import request, do this:   Download the specially formatted comma separated value (CSV) import template, which you can find here: https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv.   Fill out the template with your server and application data.   Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.   Use the console or the StartImportTask command with the AWS CLI or one of the AWS SDKs to import the records from your file.   For more information, including step-by-step procedures, see Migration Hub Import in the AWS Application Discovery Service User Guide.  There are limits to the number of import tasks you can create (and delete) in an AWS account. For more information, see AWS Application Discovery Service Limits in the AWS Application Discovery Service User Guide. 

Required Parameters
{
  "name": "A descriptive name for this request. You can use this name to filter future requests related to this import task, such as identifying applications and servers that were included in this import task. We recommend that you use a meaningful name for each import task.",
  "importUrl": "The URL for your import file that you've uploaded to Amazon S3.  If you're using the AWS CLI, this URL is structured as follows: s3://BucketName/ImportFileName.CSV  "
}

Optional Parameters
{
  "clientRequestToken": "Optional. A unique token that you can provide to prevent the same import request from occurring more than once. If you don't provide a token, a token is automatically generated. Sending more than one StartImportTask request with the same client request token will return information about the original import task with that client request token."
}
"""
StartImportTask(args) = application_discovery_service("StartImportTask", args)