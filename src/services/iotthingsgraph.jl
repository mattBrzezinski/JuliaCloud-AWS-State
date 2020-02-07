include("../AWSCorePrototypeServices.jl")
using .Services: iotthingsgraph

"""
 Greengrass and Cloud Deployments  Deploys the system instance to the target specified in CreateSystemInstance.   Greengrass Deployments  If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it. Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error. For information about the artifacts that get added to your Greengrass core device when you use this API, see AWS IoT Things Graph and AWS IoT Greengrass.
"""
DeploySystemInstance() = iotthingsgraph("DeploySystemInstance")

"""
Lists all tags on an AWS IoT Things Graph resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iotthingsgraph("ListTagsForResource", args)

"""
Searches for summary information about workflows.
"""
SearchFlowTemplates() = iotthingsgraph("SearchFlowTemplates")

"""
Searches for system instances in the user's account.
"""
SearchSystemInstances() = iotthingsgraph("SearchSystemInstances")

"""
Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. 

Required Parameters:
id, definition
"""
UpdateFlowTemplate(args) = iotthingsgraph("UpdateFlowTemplate", args)

"""
Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.

Required Parameters:
id
"""
DeleteSystemTemplate(args) = iotthingsgraph("DeleteSystemTemplate", args)

"""
Gets a system instance.

Required Parameters:
id
"""
GetSystemInstance(args) = iotthingsgraph("GetSystemInstance", args)

"""
Searches for AWS IoT Things Graph workflow execution instances.

Required Parameters:
systemInstanceId
"""
SearchFlowExecutions(args) = iotthingsgraph("SearchFlowExecutions", args)

"""
Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
"""
SearchSystemTemplates() = iotthingsgraph("SearchSystemTemplates")

"""
Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted. Users can create a new system instance that has the same ID as a deleted system instance.
"""
DeleteSystemInstance() = iotthingsgraph("DeleteSystemInstance")

"""
Gets the status of the specified upload.

Required Parameters:
uploadId
"""
GetUploadStatus(args) = iotthingsgraph("GetUploadStatus", args)

"""
Gets the latest version of the DefinitionDocument and FlowTemplateSummary for the specified workflow.

Required Parameters:
id
"""
GetFlowTemplate(args) = iotthingsgraph("GetFlowTemplate", args)

"""
Removes a system instance from its target (Cloud or Greengrass).
"""
UndeploySystemInstance() = iotthingsgraph("UndeploySystemInstance")

"""
Gets the latest version of the user's namespace and the public version that it is tracking.
"""
DescribeNamespace() = iotthingsgraph("DescribeNamespace")

"""
Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

Required Parameters:
definition
"""
CreateSystemTemplate(args) = iotthingsgraph("CreateSystemTemplate", args)

"""
Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.

Required Parameters:
id
"""
GetSystemTemplateRevisions(args) = iotthingsgraph("GetSystemTemplateRevisions", args)

"""
Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.

Required Parameters:
entityId
"""
SearchThings(args) = iotthingsgraph("SearchThings", args)

"""
Asynchronously uploads one or more entity definitions to the user's namespace. The document parameter is required if syncWithPublicNamespace and deleteExistingEntites are false. If the syncWithPublicNamespace parameter is set to true, the user's namespace will synchronize with the latest version of the public namespace. If deprecateExistingEntities is set to true, all entities in the latest version will be deleted before the new DefinitionDocument is uploaded. When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the syncWithPublicNamespace parameter or the deprecateExistingEntities parameter to true. The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace. Valid entities are Device, DeviceModel, Service, Capability, State, Action, Event, Property, Mapping, Enum. 
"""
UploadEntityDefinitions() = iotthingsgraph("UploadEntityDefinitions")

"""
Creates a tag for the specified resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iotthingsgraph("TagResource", args)

"""
Removes a tag from the specified resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iotthingsgraph("UntagResource", args)

"""
Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).

Required Parameters:
id
"""
DeleteFlowTemplate(args) = iotthingsgraph("DeleteFlowTemplate", args)

"""
Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.

Required Parameters:
entityTypes
"""
SearchEntities(args) = iotthingsgraph("SearchEntities", args)

"""
Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.

Required Parameters:
id
"""
DeprecateFlowTemplate(args) = iotthingsgraph("DeprecateFlowTemplate", args)

"""
Associates a device with a concrete thing that is in the user's registry. A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.

Required Parameters:
thingName, entityId
"""
AssociateEntityToThing(args) = iotthingsgraph("AssociateEntityToThing", args)

"""
Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.

Required Parameters:
id, definition
"""
UpdateSystemTemplate(args) = iotthingsgraph("UpdateSystemTemplate", args)

"""
Gets the status of a namespace deletion task.
"""
GetNamespaceDeletionStatus() = iotthingsgraph("GetNamespaceDeletionStatus")

"""
Returns a list of objects that contain information about events in a flow execution.

Required Parameters:
flowExecutionId
"""
ListFlowExecutionMessages(args) = iotthingsgraph("ListFlowExecutionMessages", args)

"""
Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.

Required Parameters:
id
"""
GetFlowTemplateRevisions(args) = iotthingsgraph("GetFlowTemplateRevisions", args)

"""
Gets a system.

Required Parameters:
id
"""
GetSystemTemplate(args) = iotthingsgraph("GetSystemTemplate", args)

"""
Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.
"""
DeleteNamespace() = iotthingsgraph("DeleteNamespace")

"""
Creates a system instance.  This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the greengrassGroupName parameter. It also adds a file to the S3 bucket specified by the s3BucketName parameter. You need to call DeploySystemInstance after running this action. For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error. For cloud deployments, this action requires a flowActionsRoleArn value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes. If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.

Required Parameters:
definition, target
"""
CreateSystemInstance(args) = iotthingsgraph("CreateSystemInstance", args)

"""
Deprecates the specified system.

Required Parameters:
id
"""
DeprecateSystemTemplate(args) = iotthingsgraph("DeprecateSystemTemplate", args)

"""
Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.

Required Parameters:
thingName, entityType
"""
DissociateEntityFromThing(args) = iotthingsgraph("DissociateEntityFromThing", args)

"""
Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.

Required Parameters:
definition
"""
CreateFlowTemplate(args) = iotthingsgraph("CreateFlowTemplate", args)

"""
Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.   Properties   States   Events   Actions   Capabilities   Mappings   Devices   Device Models   Services   This action doesn't return definitions for systems, flows, and deployments.

Required Parameters:
ids
"""
GetEntities(args) = iotthingsgraph("GetEntities", args)
