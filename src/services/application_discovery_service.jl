include("../AWSCorePrototypeServices.jl")
using .Services: application_discovery_service

"""
Start the continuous flow of agent's discovered data into Amazon Athena.
"""
StartContinuousExport() = application_discovery_service("StartContinuousExport")

"""
Retrieves a list of servers that are one network hop away from a specified server.

Required Parameters:
configurationId
"""
ListServerNeighbors(args) = application_discovery_service("ListServerNeighbors", args)

"""
Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.

Required Parameters:
configurationType
"""
ListConfigurations(args) = application_discovery_service("ListConfigurations", args)

"""
Retrieves attributes for a list of configuration item IDs.  All of the supplied IDs must be for the same asset type from one of the following:   server   application   process   connection   Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action in the AWS Application Discovery Service User Guide. 

Required Parameters:
configurationIds
"""
DescribeConfigurations(args) = application_discovery_service("DescribeConfigurations", args)

"""
Creates an application with the given name and description.

Required Parameters:
name
"""
CreateApplication(args) = application_discovery_service("CreateApplication", args)

"""
Deletes a list of applications and their associations with configuration items.

Required Parameters:
configurationIds
"""
DeleteApplications(args) = application_discovery_service("DeleteApplications", args)

"""
Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
"""
ExportConfigurations() = application_discovery_service("ExportConfigurations")

"""
Updates metadata about an application.

Required Parameters:
configurationId
"""
UpdateApplication(args) = application_discovery_service("UpdateApplication", args)

"""
Stop the continuous flow of agent's discovered data into Amazon Athena.

Required Parameters:
exportId
"""
StopContinuousExport(args) = application_discovery_service("StopContinuousExport", args)

"""
Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call DescribeAgents as is without passing any parameters.
"""
DescribeAgents() = application_discovery_service("DescribeAgents")

"""
Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user account that have tags can be listed if you call DescribeTags as is without passing any parameters.
"""
DescribeTags() = application_discovery_service("DescribeTags")

"""
Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
"""
DescribeContinuousExports() = application_discovery_service("DescribeContinuousExports")

"""
Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
"""
DescribeExportTasks() = application_discovery_service("DescribeExportTasks")

"""
Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
"""
DescribeImportTasks() = application_discovery_service("DescribeImportTasks")

"""
 Begins the export of discovered data to an S3 bucket.  If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.   If you do not include an agentIds filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. 
"""
StartExportTask() = application_discovery_service("StartExportTask")

"""
Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.

Required Parameters:
configurationIds
"""
DeleteTags(args) = application_discovery_service("DeleteTags", args)

"""
 DescribeExportConfigurations is deprecated. Use DescribeImportTasks, instead.
"""
DescribeExportConfigurations() = application_discovery_service("DescribeExportConfigurations")

"""
Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications.  AWS Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.

Required Parameters:
importTaskIds
"""
BatchDeleteImportData(args) = application_discovery_service("BatchDeleteImportData", args)

"""
Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.

Required Parameters:
configurationIds, tags
"""
CreateTags(args) = application_discovery_service("CreateTags", args)

"""
Instructs the specified agents or connectors to stop collecting data.

Required Parameters:
agentIds
"""
StopDataCollectionByAgentIds(args) = application_discovery_service("StopDataCollectionByAgentIds", args)

"""
Associates one or more configuration items with an application.

Required Parameters:
applicationConfigurationId, configurationIds
"""
AssociateConfigurationItemsToApplication(args) = application_discovery_service("AssociateConfigurationItemsToApplication", args)

"""
Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
"""
GetDiscoverySummary() = application_discovery_service("GetDiscoverySummary")

"""
Disassociates one or more configuration items from an application.

Required Parameters:
applicationConfigurationId, configurationIds
"""
DisassociateConfigurationItemsFromApplication(args) = application_discovery_service("DisassociateConfigurationItemsFromApplication", args)

"""
Instructs the specified agents or connectors to start collecting data.

Required Parameters:
agentIds
"""
StartDataCollectionByAgentIds(args) = application_discovery_service("StartDataCollectionByAgentIds", args)

"""
Starts an import task, which allows you to import details of your on-premises environment directly into AWS Migration Hub without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status. To start an import request, do this:   Download the specially formatted comma separated value (CSV) import template, which you can find here: https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv.   Fill out the template with your server and application data.   Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.   Use the console or the StartImportTask command with the AWS CLI or one of the AWS SDKs to import the records from your file.   For more information, including step-by-step procedures, see Migration Hub Import in the AWS Application Discovery Service User Guide.  There are limits to the number of import tasks you can create (and delete) in an AWS account. For more information, see AWS Application Discovery Service Limits in the AWS Application Discovery Service User Guide. 

Required Parameters:
name, importUrl
"""
StartImportTask(args) = application_discovery_service("StartImportTask", args)
