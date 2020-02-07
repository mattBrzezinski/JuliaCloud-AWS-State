include("../AWSCorePrototypeServices.jl")
using .Services: iotanalytics

"""
Retrieves information about a data set.
"""
DescribeDataset(datasetName) = iotanalytics("GET", "/datasets/$datasetName")
DescribeDataset(datasetName, args) = iotanalytics("GET", "/datasets/$datasetName", args)
DescribeDataset(a...; b...) = DescribeDataset(a..., b)

"""
Lists the tags (metadata) which you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iotanalytics("GET", "/tags")
ListTagsForResource(resourceArn, args) = iotanalytics("GET", "/tags", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Sends messages to a channel.
"""
BatchPutMessage(channelName, messages) = iotanalytics("POST", "/messages/batch")
BatchPutMessage(channelName, messages, args) = iotanalytics("POST", "/messages/batch", args)
BatchPutMessage(a...; b...) = BatchPutMessage(a..., b)

"""
Creates a data store, which is a repository for messages.
"""
CreateDatastore(datastoreName) = iotanalytics("POST", "/datastores")
CreateDatastore(datastoreName, args) = iotanalytics("POST", "/datastores", args)
CreateDatastore(a...; b...) = CreateDatastore(a..., b)

"""
Deletes the specified data store.
"""
DeleteDatastore(datastoreName) = iotanalytics("DELETE", "/datastores/$datastoreName")
DeleteDatastore(datastoreName, args) = iotanalytics("DELETE", "/datastores/$datastoreName", args)
DeleteDatastore(a...; b...) = DeleteDatastore(a..., b)

"""
Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
"""
SampleChannelData(channelName) = iotanalytics("GET", "/channels/$channelName/sample")
SampleChannelData(channelName, args) = iotanalytics("GET", "/channels/$channelName/sample", args)
SampleChannelData(a...; b...) = SampleChannelData(a..., b)

"""
Retrieves a list of channels.
"""
ListChannels() = iotanalytics("GET", "/channels")
ListChannels(, args) = iotanalytics("GET", "/channels", args)
ListChannels(a...; b...) = ListChannels(a..., b)

"""
Retrieves a list of data stores.
"""
ListDatastores() = iotanalytics("GET", "/datastores")
ListDatastores(, args) = iotanalytics("GET", "/datastores", args)
ListDatastores(a...; b...) = ListDatastores(a..., b)

"""
Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
"""
CreatePipeline(pipelineName, pipelineActivities) = iotanalytics("POST", "/pipelines")
CreatePipeline(pipelineName, pipelineActivities, args) = iotanalytics("POST", "/pipelines", args)
CreatePipeline(a...; b...) = CreatePipeline(a..., b)

"""
Lists information about data set contents that have been created.
"""
ListDatasetContents(datasetName) = iotanalytics("GET", "/datasets/$datasetName/contents")
ListDatasetContents(datasetName, args) = iotanalytics("GET", "/datasets/$datasetName/contents", args)
ListDatasetContents(a...; b...) = ListDatasetContents(a..., b)

"""
Updates the settings of a channel.
"""
UpdateChannel(channelName) = iotanalytics("PUT", "/channels/$channelName")
UpdateChannel(channelName, args) = iotanalytics("PUT", "/channels/$channelName", args)
UpdateChannel(a...; b...) = UpdateChannel(a..., b)

"""
Retrieves information about data sets.
"""
ListDatasets() = iotanalytics("GET", "/datasets")
ListDatasets(, args) = iotanalytics("GET", "/datasets", args)
ListDatasets(a...; b...) = ListDatasets(a..., b)

"""
Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
"""
CreateChannel(channelName) = iotanalytics("POST", "/channels")
CreateChannel(channelName, args) = iotanalytics("POST", "/channels", args)
CreateChannel(a...; b...) = CreateChannel(a..., b)

"""
Creates the content of a data set by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application).
"""
CreateDatasetContent(datasetName) = iotanalytics("POST", "/datasets/$datasetName/content")
CreateDatasetContent(datasetName, args) = iotanalytics("POST", "/datasets/$datasetName/content", args)
CreateDatasetContent(a...; b...) = CreateDatasetContent(a..., b)

"""
Retrieves information about a pipeline.
"""
DescribePipeline(pipelineName) = iotanalytics("GET", "/pipelines/$pipelineName")
DescribePipeline(pipelineName, args) = iotanalytics("GET", "/pipelines/$pipelineName", args)
DescribePipeline(a...; b...) = DescribePipeline(a..., b)

"""
Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
"""
UpdatePipeline(pipelineName, pipelineActivities) = iotanalytics("PUT", "/pipelines/$pipelineName")
UpdatePipeline(pipelineName, pipelineActivities, args) = iotanalytics("PUT", "/pipelines/$pipelineName", args)
UpdatePipeline(a...; b...) = UpdatePipeline(a..., b)

"""
Deletes the specified data set. You do not have to delete the content of the data set before you perform this operation.
"""
DeleteDataset(datasetName) = iotanalytics("DELETE", "/datasets/$datasetName")
DeleteDataset(datasetName, args) = iotanalytics("DELETE", "/datasets/$datasetName", args)
DeleteDataset(a...; b...) = DeleteDataset(a..., b)

"""
Deletes the specified channel.
"""
DeleteChannel(channelName) = iotanalytics("DELETE", "/channels/$channelName")
DeleteChannel(channelName, args) = iotanalytics("DELETE", "/channels/$channelName", args)
DeleteChannel(a...; b...) = DeleteChannel(a..., b)

"""
Retrieves information about a channel.
"""
DescribeChannel(channelName) = iotanalytics("GET", "/channels/$channelName")
DescribeChannel(channelName, args) = iotanalytics("GET", "/channels/$channelName", args)
DescribeChannel(a...; b...) = DescribeChannel(a..., b)

"""
Sets or updates the AWS IoT Analytics logging options. Note that if you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect. 
"""
PutLoggingOptions(loggingOptions) = iotanalytics("PUT", "/logging")
PutLoggingOptions(loggingOptions, args) = iotanalytics("PUT", "/logging", args)
PutLoggingOptions(a...; b...) = PutLoggingOptions(a..., b)

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iotanalytics("POST", "/tags")
TagResource(resourceArn, tags, args) = iotanalytics("POST", "/tags", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iotanalytics("DELETE", "/tags")
UntagResource(resourceArn, tagKeys, args) = iotanalytics("DELETE", "/tags", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Updates the settings of a data set.
"""
UpdateDataset(datasetName, actions) = iotanalytics("PUT", "/datasets/$datasetName")
UpdateDataset(datasetName, actions, args) = iotanalytics("PUT", "/datasets/$datasetName", args)
UpdateDataset(a...; b...) = UpdateDataset(a..., b)

"""
Updates the settings of a data store.
"""
UpdateDatastore(datastoreName) = iotanalytics("PUT", "/datastores/$datastoreName")
UpdateDatastore(datastoreName, args) = iotanalytics("PUT", "/datastores/$datastoreName", args)
UpdateDatastore(a...; b...) = UpdateDatastore(a..., b)

"""
Starts the reprocessing of raw message data through the pipeline.
"""
StartPipelineReprocessing(pipelineName) = iotanalytics("POST", "/pipelines/$pipelineName/reprocessing")
StartPipelineReprocessing(pipelineName, args) = iotanalytics("POST", "/pipelines/$pipelineName/reprocessing", args)
StartPipelineReprocessing(a...; b...) = StartPipelineReprocessing(a..., b)

"""
Cancels the reprocessing of data through the pipeline.
"""
CancelPipelineReprocessing(pipelineName, reprocessingId) = iotanalytics("DELETE", "/pipelines/$pipelineName/reprocessing/$reprocessingId")
CancelPipelineReprocessing(pipelineName, reprocessingId, args) = iotanalytics("DELETE", "/pipelines/$pipelineName/reprocessing/$reprocessingId", args)
CancelPipelineReprocessing(a...; b...) = CancelPipelineReprocessing(a..., b)

"""
Retrieves the contents of a data set as pre-signed URIs.
"""
GetDatasetContent(datasetName) = iotanalytics("GET", "/datasets/$datasetName/content")
GetDatasetContent(datasetName, args) = iotanalytics("GET", "/datasets/$datasetName/content", args)
GetDatasetContent(a...; b...) = GetDatasetContent(a..., b)

"""
Retrieves information about a data store.
"""
DescribeDatastore(datastoreName) = iotanalytics("GET", "/datastores/$datastoreName")
DescribeDatastore(datastoreName, args) = iotanalytics("GET", "/datastores/$datastoreName", args)
DescribeDatastore(a...; b...) = DescribeDatastore(a..., b)

"""
Retrieves the current settings of the AWS IoT Analytics logging options.
"""
DescribeLoggingOptions() = iotanalytics("GET", "/logging")
DescribeLoggingOptions(, args) = iotanalytics("GET", "/logging", args)
DescribeLoggingOptions(a...; b...) = DescribeLoggingOptions(a..., b)

"""
Deletes the content of the specified data set.
"""
DeleteDatasetContent(datasetName) = iotanalytics("DELETE", "/datasets/$datasetName/content")
DeleteDatasetContent(datasetName, args) = iotanalytics("DELETE", "/datasets/$datasetName/content", args)
DeleteDatasetContent(a...; b...) = DeleteDatasetContent(a..., b)

"""
Creates a data set. A data set stores data retrieved from a data store by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application). This operation creates the skeleton of a data set. The data set can be populated manually by calling "CreateDatasetContent" or automatically according to a "trigger" you specify.
"""
CreateDataset(datasetName, actions) = iotanalytics("POST", "/datasets")
CreateDataset(datasetName, actions, args) = iotanalytics("POST", "/datasets", args)
CreateDataset(a...; b...) = CreateDataset(a..., b)

"""
Deletes the specified pipeline.
"""
DeletePipeline(pipelineName) = iotanalytics("DELETE", "/pipelines/$pipelineName")
DeletePipeline(pipelineName, args) = iotanalytics("DELETE", "/pipelines/$pipelineName", args)
DeletePipeline(a...; b...) = DeletePipeline(a..., b)

"""
Retrieves a list of pipelines.
"""
ListPipelines() = iotanalytics("GET", "/pipelines")
ListPipelines(, args) = iotanalytics("GET", "/pipelines", args)
ListPipelines(a...; b...) = ListPipelines(a..., b)

"""
Simulates the results of running a pipeline activity on a message payload.
"""
RunPipelineActivity(pipelineActivity, payloads) = iotanalytics("POST", "/pipelineactivities/run")
RunPipelineActivity(pipelineActivity, payloads, args) = iotanalytics("POST", "/pipelineactivities/run", args)
RunPipelineActivity(a...; b...) = RunPipelineActivity(a..., b)
