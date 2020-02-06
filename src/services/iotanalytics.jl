include("../AWSCorePrototypeServices.jl")
using .Services: iotanalytics

"""
Retrieves information about a data set.

Required Parameters:
datasetName
"""
DescribeDataset(args) = iotanalytics("GET", "/datasets/{datasetName}", args)

"""
Lists the tags (metadata) which you have assigned to the resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iotanalytics("GET", "/tags", args)

"""
Sends messages to a channel.

Required Parameters:
channelName, messages
"""
BatchPutMessage(args) = iotanalytics("POST", "/messages/batch", args)

"""
Creates a data store, which is a repository for messages.

Required Parameters:
datastoreName
"""
CreateDatastore(args) = iotanalytics("POST", "/datastores", args)

"""
Deletes the specified data store.

Required Parameters:
datastoreName
"""
DeleteDatastore(args) = iotanalytics("DELETE", "/datastores/{datastoreName}", args)

"""
Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.

Required Parameters:
channelName
"""
SampleChannelData(args) = iotanalytics("GET", "/channels/{channelName}/sample", args)

"""
Retrieves a list of channels.
"""
ListChannels() = iotanalytics("GET", "/channels")

"""
Retrieves a list of data stores.
"""
ListDatastores() = iotanalytics("GET", "/datastores")

"""
Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.

Required Parameters:
pipelineName, pipelineActivities
"""
CreatePipeline(args) = iotanalytics("POST", "/pipelines", args)

"""
Lists information about data set contents that have been created.

Required Parameters:
datasetName
"""
ListDatasetContents(args) = iotanalytics("GET", "/datasets/{datasetName}/contents", args)

"""
Updates the settings of a channel.

Required Parameters:
channelName
"""
UpdateChannel(args) = iotanalytics("PUT", "/channels/{channelName}", args)

"""
Retrieves information about data sets.
"""
ListDatasets() = iotanalytics("GET", "/datasets")

"""
Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.

Required Parameters:
channelName
"""
CreateChannel(args) = iotanalytics("POST", "/channels", args)

"""
Creates the content of a data set by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application).

Required Parameters:
datasetName
"""
CreateDatasetContent(args) = iotanalytics("POST", "/datasets/{datasetName}/content", args)

"""
Retrieves information about a pipeline.

Required Parameters:
pipelineName
"""
DescribePipeline(args) = iotanalytics("GET", "/pipelines/{pipelineName}", args)

"""
Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.

Required Parameters:
pipelineName, pipelineActivities
"""
UpdatePipeline(args) = iotanalytics("PUT", "/pipelines/{pipelineName}", args)

"""
Deletes the specified data set. You do not have to delete the content of the data set before you perform this operation.

Required Parameters:
datasetName
"""
DeleteDataset(args) = iotanalytics("DELETE", "/datasets/{datasetName}", args)

"""
Deletes the specified channel.

Required Parameters:
channelName
"""
DeleteChannel(args) = iotanalytics("DELETE", "/channels/{channelName}", args)

"""
Retrieves information about a channel.

Required Parameters:
channelName
"""
DescribeChannel(args) = iotanalytics("GET", "/channels/{channelName}", args)

"""
Sets or updates the AWS IoT Analytics logging options. Note that if you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect. 

Required Parameters:
loggingOptions
"""
PutLoggingOptions(args) = iotanalytics("PUT", "/logging", args)

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iotanalytics("POST", "/tags", args)

"""
Removes the given tags (metadata) from the resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iotanalytics("DELETE", "/tags", args)

"""
Updates the settings of a data set.

Required Parameters:
datasetName, actions
"""
UpdateDataset(args) = iotanalytics("PUT", "/datasets/{datasetName}", args)

"""
Updates the settings of a data store.

Required Parameters:
datastoreName
"""
UpdateDatastore(args) = iotanalytics("PUT", "/datastores/{datastoreName}", args)

"""
Starts the reprocessing of raw message data through the pipeline.

Required Parameters:
pipelineName
"""
StartPipelineReprocessing(args) = iotanalytics("POST", "/pipelines/{pipelineName}/reprocessing", args)

"""
Cancels the reprocessing of data through the pipeline.

Required Parameters:
pipelineName, reprocessingId
"""
CancelPipelineReprocessing(args) = iotanalytics("DELETE", "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", args)

"""
Retrieves the contents of a data set as pre-signed URIs.

Required Parameters:
datasetName
"""
GetDatasetContent(args) = iotanalytics("GET", "/datasets/{datasetName}/content", args)

"""
Retrieves information about a data store.

Required Parameters:
datastoreName
"""
DescribeDatastore(args) = iotanalytics("GET", "/datastores/{datastoreName}", args)

"""
Retrieves the current settings of the AWS IoT Analytics logging options.
"""
DescribeLoggingOptions() = iotanalytics("GET", "/logging")

"""
Deletes the content of the specified data set.

Required Parameters:
datasetName
"""
DeleteDatasetContent(args) = iotanalytics("DELETE", "/datasets/{datasetName}/content", args)

"""
Creates a data set. A data set stores data retrieved from a data store by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application). This operation creates the skeleton of a data set. The data set can be populated manually by calling "CreateDatasetContent" or automatically according to a "trigger" you specify.

Required Parameters:
datasetName, actions
"""
CreateDataset(args) = iotanalytics("POST", "/datasets", args)

"""
Deletes the specified pipeline.

Required Parameters:
pipelineName
"""
DeletePipeline(args) = iotanalytics("DELETE", "/pipelines/{pipelineName}", args)

"""
Retrieves a list of pipelines.
"""
ListPipelines() = iotanalytics("GET", "/pipelines")

"""
Simulates the results of running a pipeline activity on a message payload.

Required Parameters:
pipelineActivity, payloads
"""
RunPipelineActivity(args) = iotanalytics("POST", "/pipelineactivities/run", args)
