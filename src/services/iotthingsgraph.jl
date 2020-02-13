include("../AWSCorePrototypeServices.jl")
using .Services: iotthingsgraph

"""
    DeploySystemInstance()

 Greengrass and Cloud Deployments  Deploys the system instance to the target specified in CreateSystemInstance.   Greengrass Deployments  If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see AWS IoT Things Graph and AWS IoT Greengrass.

Optional Parameters
{
  "id": "The ID of the system instance. This value is returned by the CreateSystemInstance action. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME "
}
"""
DeploySystemInstance() = iotthingsgraph("DeploySystemInstance")
DeploySystemInstance(args) = iotthingsgraph("DeploySystemInstance", args)

"""
    ListTagsForResource()

Lists all tags on an AWS IoT Things Graph resource.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource whose tags are to be returned."
}

Optional Parameters
{
  "maxResults": "The maximum number of tags to return.",
  "nextToken": "The token that specifies the next page of results to return."
}
"""
ListTagsForResource(args) = iotthingsgraph("ListTagsForResource", args)

"""
    SearchFlowTemplates()

Searches for summary information about workflows.

Optional Parameters
{
  "filters": "An array of objects that limit the result set. The only valid filter is DEVICE_MODEL_ID.",
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
SearchFlowTemplates() = iotthingsgraph("SearchFlowTemplates")
SearchFlowTemplates(args) = iotthingsgraph("SearchFlowTemplates", args)

"""
    SearchSystemInstances()

Searches for system instances in the user's account.

Optional Parameters
{
  "filters": "Optional filter to apply to the search. Valid filters are SYSTEM_TEMPLATE_ID, STATUS, and GREENGRASS_GROUP_NAME. Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.",
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
SearchSystemInstances() = iotthingsgraph("SearchSystemInstances")
SearchSystemInstances(args) = iotthingsgraph("SearchSystemInstances", args)

"""
    UpdateFlowTemplate()

Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. 

Required Parameters
{
  "id": "The ID of the workflow to be updated. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME ",
  "definition": "The DefinitionDocument that contains the updated workflow definition."
}

Optional Parameters
{
  "compatibleNamespaceVersion": "The version of the user's namespace. If no value is specified, the latest version is used by default. Use the GetFlowTemplateRevisions if you want to find earlier revisions of the flow to update."
}
"""
UpdateFlowTemplate(args) = iotthingsgraph("UpdateFlowTemplate", args)

"""
    DeleteSystemTemplate()

Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.

Required Parameters
{
  "id": "The ID of the system to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME "
}
"""
DeleteSystemTemplate(args) = iotthingsgraph("DeleteSystemTemplate", args)

"""
    GetSystemInstance()

Gets a system instance.

Required Parameters
{
  "id": "The ID of the system deployment instance. This value is returned by CreateSystemInstance. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME "
}
"""
GetSystemInstance(args) = iotthingsgraph("GetSystemInstance", args)

"""
    SearchFlowExecutions()

Searches for AWS IoT Things Graph workflow execution instances.

Required Parameters
{
  "systemInstanceId": "The ID of the system instance that contains the flow."
}

Optional Parameters
{
  "startTime": "The date and time of the earliest flow execution to return.",
  "maxResults": "The maximum number of results to return in the response.",
  "flowExecutionId": "The ID of a flow execution.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results.",
  "endTime": "The date and time of the latest flow execution to return."
}
"""
SearchFlowExecutions(args) = iotthingsgraph("SearchFlowExecutions", args)

"""
    SearchSystemTemplates()

Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.

Optional Parameters
{
  "filters": "An array of filters that limit the result set. The only valid filter is FLOW_TEMPLATE_ID.",
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
SearchSystemTemplates() = iotthingsgraph("SearchSystemTemplates")
SearchSystemTemplates(args) = iotthingsgraph("SearchSystemTemplates", args)

"""
    DeleteSystemInstance()

Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.

Optional Parameters
{
  "id": "The ID of the system instance to be deleted."
}
"""
DeleteSystemInstance() = iotthingsgraph("DeleteSystemInstance")
DeleteSystemInstance(args) = iotthingsgraph("DeleteSystemInstance", args)

"""
    GetUploadStatus()

Gets the status of the specified upload.

Required Parameters
{
  "uploadId": "The ID of the upload. This value is returned by the UploadEntityDefinitions action."
}
"""
GetUploadStatus(args) = iotthingsgraph("GetUploadStatus", args)

"""
    GetFlowTemplate()

Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.

Required Parameters
{
  "id": "The ID of the workflow. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME "
}

Optional Parameters
{
  "revisionNumber": "The number of the workflow revision to retrieve."
}
"""
GetFlowTemplate(args) = iotthingsgraph("GetFlowTemplate", args)

"""
    UndeploySystemInstance()

Removes a system instance from its target (Cloud or Greengrass).

Optional Parameters
{
  "id": "The ID of the system instance to remove from its target."
}
"""
UndeploySystemInstance() = iotthingsgraph("UndeploySystemInstance")
UndeploySystemInstance(args) = iotthingsgraph("UndeploySystemInstance", args)

"""
    DescribeNamespace()

Gets the latest version of the user's namespace and the public version that it is tracking.

Optional Parameters
{
  "namespaceName": "The name of the user's namespace. Set this to aws to get the public namespace."
}
"""
DescribeNamespace() = iotthingsgraph("DescribeNamespace")
DescribeNamespace(args) = iotthingsgraph("DescribeNamespace", args)

"""
    CreateSystemTemplate()

Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

Required Parameters
{
  "definition": "The DefinitionDocument used to create the system."
}

Optional Parameters
{
  "compatibleNamespaceVersion": "The namespace version in which the system is to be created. If no value is specified, the latest version is used by default."
}
"""
CreateSystemTemplate(args) = iotthingsgraph("CreateSystemTemplate", args)

"""
    GetSystemTemplateRevisions()

Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.

Required Parameters
{
  "id": "The ID of the system template. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME "
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
GetSystemTemplateRevisions(args) = iotthingsgraph("GetSystemTemplateRevisions", args)

"""
    SearchThings()

Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.

Required Parameters
{
  "entityId": "The ID of the entity to which the things are associated. The IDs should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME "
}

Optional Parameters
{
  "namespaceVersion": "The version of the user's namespace. Defaults to the latest version of the user's namespace.",
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
SearchThings(args) = iotthingsgraph("SearchThings", args)

"""
    UploadEntityDefinitions()

Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum. 

Optional Parameters
{
  "document": "The DefinitionDocument that defines the updated entities.",
  "deprecateExistingEntities": "A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new DefinitionDocument. If set to true, the upload will create a new namespace version.",
  "syncWithPublicNamespace": "A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to true, the upload will create a new namespace version."
}
"""
UploadEntityDefinitions() = iotthingsgraph("UploadEntityDefinitions")
UploadEntityDefinitions(args) = iotthingsgraph("UploadEntityDefinitions", args)

"""
    TagResource()

Creates a tag for the specified resource.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource whose tags are returned.",
  "tags": "A list of tags to add to the resource.&gt;"
}
"""
TagResource(args) = iotthingsgraph("TagResource", args)

"""
    UntagResource()

Removes a tag from the specified resource.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource whose tags are to be removed.",
  "tagKeys": "A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed.  This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see Using JSON for Parameters in the AWS CLI User Guide. "
}
"""
UntagResource(args) = iotthingsgraph("UntagResource", args)

"""
    DeleteFlowTemplate()

Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).

Required Parameters
{
  "id": "The ID of the workflow to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME "
}
"""
DeleteFlowTemplate(args) = iotthingsgraph("DeleteFlowTemplate", args)

"""
    SearchEntities()

Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.

Required Parameters
{
  "entityTypes": "The entity types for which to search."
}

Optional Parameters
{
  "filters": "Optional filter to apply to the search. Valid filters are NAME NAMESPACE, SEMANTIC_TYPE_PATH and REFERENCED_ENTITY_ID. REFERENCED_ENTITY_ID filters on entities that are used by the entity in the result set. For example, you can filter on the ID of a property that is used in a state. Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.",
  "namespaceVersion": "The version of the user's namespace. Defaults to the latest version of the user's namespace.",
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
SearchEntities(args) = iotthingsgraph("SearchEntities", args)

"""
    DeprecateFlowTemplate()

Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.

Required Parameters
{
  "id": "The ID of the workflow to be deleted. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME "
}
"""
DeprecateFlowTemplate(args) = iotthingsgraph("DeprecateFlowTemplate", args)

"""
    AssociateEntityToThing()

Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.

Required Parameters
{
  "thingName": "The name of the thing to which the entity is to be associated.",
  "entityId": "The ID of the device to be associated with the thing. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME "
}

Optional Parameters
{
  "namespaceVersion": "The version of the user's namespace. Defaults to the latest version of the user's namespace."
}
"""
AssociateEntityToThing(args) = iotthingsgraph("AssociateEntityToThing", args)

"""
    UpdateSystemTemplate()

Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.

Required Parameters
{
  "id": "The ID of the system to be updated. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME ",
  "definition": "The DefinitionDocument that contains the updated system definition."
}

Optional Parameters
{
  "compatibleNamespaceVersion": "The version of the user's namespace. Defaults to the latest version of the user's namespace. If no value is specified, the latest version is used by default."
}
"""
UpdateSystemTemplate(args) = iotthingsgraph("UpdateSystemTemplate", args)

"""
    GetNamespaceDeletionStatus()

Gets the status of a namespace deletion task.
"""
GetNamespaceDeletionStatus() = iotthingsgraph("GetNamespaceDeletionStatus")
GetNamespaceDeletionStatus(args) = iotthingsgraph("GetNamespaceDeletionStatus", args)

"""
    ListFlowExecutionMessages()

Returns a list of objects that contain information about events in a flow execution.

Required Parameters
{
  "flowExecutionId": "The ID of the flow execution."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
ListFlowExecutionMessages(args) = iotthingsgraph("ListFlowExecutionMessages", args)

"""
    GetFlowTemplateRevisions()

Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.

Required Parameters
{
  "id": "The ID of the workflow. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME "
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "The string that specifies the next page of results. Use this when you're paginating results."
}
"""
GetFlowTemplateRevisions(args) = iotthingsgraph("GetFlowTemplateRevisions", args)

"""
    GetSystemTemplate()

Gets a system.

Required Parameters
{
  "id": "The ID of the system to get. This ID must be in the user's namespace. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME "
}

Optional Parameters
{
  "revisionNumber": "The number that specifies the revision of the system to get."
}
"""
GetSystemTemplate(args) = iotthingsgraph("GetSystemTemplate", args)

"""
    DeleteNamespace()

Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.
"""
DeleteNamespace() = iotthingsgraph("DeleteNamespace")
DeleteNamespace(args) = iotthingsgraph("DeleteNamespace", args)

"""
    CreateSystemInstance()

Creates a system instance.  This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.

Required Parameters
{
  "target": "The target type of the deployment. Valid values are GREENGRASS and CLOUD.",
  "definition": ""
}

Optional Parameters
{
  "flowActionsRoleArn": "The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes. This value is required if the value of the target parameter is CLOUD.",
  "greengrassGroupName": "The name of the Greengrass group where the system instance will be deployed. This value is required if the value of the target parameter is GREENGRASS.",
  "s3BucketName": "The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if the value of the target parameter is GREENGRASS.",
  "tags": "Metadata, consisting of key-value pairs, that can be used to categorize your system instances.",
  "metricsConfiguration": ""
}
"""
CreateSystemInstance(args) = iotthingsgraph("CreateSystemInstance", args)

"""
    DeprecateSystemTemplate()

Deprecates the specified system.

Required Parameters
{
  "id": "The ID of the system to delete. The ID should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME "
}
"""
DeprecateSystemTemplate(args) = iotthingsgraph("DeprecateSystemTemplate", args)

"""
    DissociateEntityFromThing()

Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.

Required Parameters
{
  "thingName": "The name of the thing to disassociate.",
  "entityType": "The entity type from which to disassociate the thing."
}
"""
DissociateEntityFromThing(args) = iotthingsgraph("DissociateEntityFromThing", args)

"""
    CreateFlowTemplate()

Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

Required Parameters
{
  "definition": "The workflow DefinitionDocument."
}

Optional Parameters
{
  "compatibleNamespaceVersion": "The namespace version in which the workflow is to be created. If no value is specified, the latest version is used by default."
}
"""
CreateFlowTemplate(args) = iotthingsgraph("CreateFlowTemplate", args)

"""
    GetEntities()

Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.   Properties   States   Events   Actions   Capabilities   Mappings   Devices   Device Models   Services   This action doesn't return definitions for systems, flows, and deployments.

Required Parameters
{
  "ids": "An array of entity IDs. The IDs should be in the following format.  urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME "
}

Optional Parameters
{
  "namespaceVersion": "The version of the user's namespace. Defaults to the latest version of the user's namespace."
}
"""
GetEntities(args) = iotthingsgraph("GetEntities", args)
