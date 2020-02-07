include("../AWSCorePrototypeServices.jl")
using .Services: ssm

"""
Get information about a parameter by using the parameter name. Don't confuse this API action with the GetParameters API action.

Required Parameters:
Name
"""
GetParameter(args) = ssm("GetParameter", args)

"""
A parameter label is a user-defined alias to help you manage different versions of a parameter. When you modify a parameter, Systems Manager automatically saves a new version and increments the version number by one. A label can help you remember the purpose of a parameter when there are multiple versions.  Parameter labels have the following requirements and restrictions.   A version of a parameter can have a maximum of 10 labels.   You can't attach the same label to different versions of the same parameter. For example, if version 1 has the label Production, then you can't attach Production to version 2.   You can move a label from one version of a parameter to another.   You can't create a label when you create a new parameter. You must attach a label to a specific version of a parameter.   You can't delete a parameter label. If you no longer want to use a parameter label, then you must move it to a different version of a parameter.   A label can have a maximum of 100 characters.   Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or underscores (_).   Labels can't begin with a number, "aws," or "ssm" (not case sensitive). If a label fails to meet these requirements, then the label is not associated with a parameter and the system displays it in the list of InvalidLabels.  

Required Parameters:
Name, Labels
"""
LabelParameterVersion(args) = ssm("LabelParameterVersion", args)

"""
View a summary of OpsItems based on specified filters and aggregators.
"""
GetOpsSummary() = ssm("GetOpsSummary")

"""
Deletes a Resource Data Sync configuration. After the configuration is deleted, changes to data on managed instances are no longer synced to or from the target. Deleting a sync configuration does not delete data.

Required Parameters:
SyncName
"""
DeleteResourceDataSync(args) = ssm("DeleteResourceDataSync", args)

"""
Lists the tasks in a maintenance window.

Required Parameters:
WindowId
"""
DescribeMaintenanceWindowTasks(args) = ssm("DescribeMaintenanceWindowTasks", args)

"""
Query inventory information.
"""
GetInventory() = ssm("GetInventory")

"""
Lists all patches eligible to be included in a patch baseline.
"""
DescribeAvailablePatches() = ssm("DescribeAvailablePatches")

"""
Edit or change an OpsItem. You must have permission in AWS Identity and Access Management (IAM) to update an OpsItem. For more information, see Getting Started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters:
OpsItemId
"""
UpdateOpsItem(args) = ssm("UpdateOpsItem", args)

"""
Use this API action to run an association immediately and only one time. This action can be helpful when troubleshooting associations.

Required Parameters:
AssociationIds
"""
StartAssociationsOnce(args) = ssm("StartAssociationsOnce", args)

"""
Updates the status of the Systems Manager document associated with the specified instance.

Required Parameters:
Name, InstanceId, AssociationStatus
"""
UpdateAssociationStatus(args) = ssm("UpdateAssociationStatus", args)

"""
Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don't plan to use Run Command on the server, we suggest uninstalling SSM Agent first.

Required Parameters:
InstanceId
"""
DeregisterManagedInstance(args) = ssm("DeregisterManagedInstance", args)

"""
Retrieves a maintenance window.

Required Parameters:
WindowId
"""
GetMaintenanceWindow(args) = ssm("GetMaintenanceWindow", args)

"""
Get information about an OpsItem by using the ID. You must have permission in AWS Identity and Access Management (IAM) to view information about an OpsItem. For more information, see Getting Started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters:
OpsItemId
"""
GetOpsItem(args) = ssm("GetOpsItem", args)

"""
 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the UpdateServiceSetting API action to change the default setting. Or use the ResetServiceSetting to change the value back to the original value defined by the AWS service team. Query the current service setting for the account. 

Required Parameters:
SettingId
"""
GetServiceSetting(args) = ssm("GetServiceSetting", args)

"""
Removes a target from a maintenance window.

Required Parameters:
WindowId, WindowTargetId
"""
DeregisterTargetFromMaintenanceWindow(args) = ssm("DeregisterTargetFromMaintenanceWindow", args)

"""
Retrieves information about a patch baseline.

Required Parameters:
BaselineId
"""
GetPatchBaseline(args) = ssm("GetPatchBaseline", args)

"""
Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days.

Required Parameters:
State
"""
DescribeSessions(args) = ssm("DescribeSessions", args)

"""
Describes the association for the specified target or instance. If you created the association by using the Targets parameter, then you must retrieve the association by using the association ID. If you created the association by specifying an instance ID and a Systems Manager document, then you retrieve the association by specifying the document name and the instance ID. 
"""
DescribeAssociation() = ssm("DescribeAssociation")

"""
Retrieves the details about a specific task run as part of a maintenance window execution.

Required Parameters:
WindowExecutionId, TaskId
"""
GetMaintenanceWindowExecutionTask(args) = ssm("GetMaintenanceWindowExecutionTask", args)

"""
Registers a compliance type and other compliance details on a designated resource. This action lets you register custom compliance details with a resource. This call overwrites existing compliance information on the resource, so you must provide a full list of compliance items each time that you send the request. ComplianceType can be one of the following:   ExecutionId: The execution ID when the patch, association, or custom compliance item was applied.   ExecutionType: Specify patch, association, or Custom:string.   ExecutionTime. The time the patch, association, or custom compliance item was applied to the instance.   Id: The patch, association, or custom compliance ID.   Title: A title.   Status: The status of the compliance item. For example, approved for patches, or Failed for associations.   Severity: A patch severity. For example, critical.   DocumentName: A SSM document name. For example, AWS-RunPatchBaseline.   DocumentVersion: An SSM document version number. For example, 4.   Classification: A patch classification. For example, security updates.   PatchBaselineId: A patch baseline ID.   PatchSeverity: A patch severity. For example, Critical.   PatchState: A patch state. For example, InstancesWithFailedPatches.   PatchGroup: The name of a patch group.   InstalledTime: The time the association, patch, or custom compliance item was applied to the resource. Specify the time by using the following format: yyyy-MM-dd'T'HH:mm:ss'Z'  

Required Parameters:
ResourceId, ResourceType, ComplianceType, ExecutionSummary, Items
"""
PutComplianceItems(args) = ssm("PutComplianceItems", args)

"""
Disassociates the specified Systems Manager document from the specified instance. When you disassociate a document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.
"""
DeleteAssociation() = ssm("DeleteAssociation")

"""
Lists the patch baselines in your AWS account.
"""
DescribePatchBaselines() = ssm("DescribePatchBaselines")

"""
Lists the tasks in a maintenance window.

Required Parameters:
WindowId, WindowTaskId
"""
GetMaintenanceWindowTask(args) = ssm("GetMaintenanceWindowTask", args)

"""
Associates the specified Systems Manager document with the specified instances or targets. When you associate a document with one or more instances using instance IDs or tags, SSM Agent running on the instance processes the document and configures the instance as specified. If you associate a document with an instance that already has an associated document, the system returns the AssociationAlreadyExists exception.

Required Parameters:
Name
"""
CreateAssociation(args) = ssm("CreateAssociation", args)

"""
Lists the commands requested by users of the AWS account.
"""
ListCommands() = ssm("ListCommands")

"""
Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.
"""
DescribeActivations() = ssm("DescribeActivations")

"""
Deletes a maintenance window.

Required Parameters:
WindowId
"""
DeleteMaintenanceWindow(args) = ssm("DeleteMaintenanceWindow", args)

"""
Delete a list of parameters.

Required Parameters:
Names
"""
DeleteParameters(args) = ssm("DeleteParameters", args)

"""
Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.
"""
ListDocuments() = ssm("ListDocuments")

"""
 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the GetServiceSetting API action to view the current value. Or, use the ResetServiceSetting to change the value back to the original value defined by the AWS service team. Update the service setting for the account. 

Required Parameters:
SettingId, SettingValue
"""
UpdateServiceSetting(args) = ssm("UpdateServiceSetting", args)

"""
Retrieves information about a specific task running on a specific target.

Required Parameters:
WindowExecutionId, TaskId, InvocationId
"""
GetMaintenanceWindowExecutionTaskInvocation(args) = ssm("GetMaintenanceWindowExecutionTaskInvocation", args)

"""
Retrieves the Session Manager connection status for an instance to determine whether it is connected and ready to receive Session Manager connections.

Required Parameters:
Target
"""
GetConnectionStatus(args) = ssm("GetConnectionStatus", args)

"""
Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type. 
"""
GetInventorySchema() = ssm("GetInventorySchema")

"""
Shares a Systems Manager document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify All as the account ID.

Required Parameters:
Name, PermissionType
"""
ModifyDocumentPermission(args) = ssm("ModifyDocumentPermission", args)

"""
Retrieves all versions of an association for a specific association ID.

Required Parameters:
AssociationId
"""
ListAssociationVersions(args) = ssm("ListAssociationVersions", args)

"""
Returns a resource-level summary count. The summary includes information about compliant and non-compliant statuses and detailed compliance-item severity counts, according to the filter criteria you specify.
"""
ListResourceComplianceSummaries() = ssm("ListResourceComplianceSummaries")

"""
Query a set of OpsItems. You must have permission in AWS Identity and Access Management (IAM) to query a list of OpsItems. For more information, see Getting Started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 
"""
DescribeOpsItems() = ssm("DescribeOpsItems")

"""
Retrieves the high-level patch state of one or more instances.

Required Parameters:
InstanceIds
"""
DescribeInstancePatchStates(args) = ssm("DescribeInstancePatchStates", args)

"""
Stop an Automation that is currently running.

Required Parameters:
AutomationExecutionId
"""
StopAutomationExecution(args) = ssm("StopAutomationExecution", args)

"""
Modifies a task assigned to a maintenance window. You can't change the task type, but you can change the following values:   TaskARN. For example, you can change a RUN_COMMAND task from AWS-RunPowerShellScript to AWS-RunShellScript.   ServiceRoleArn   TaskInvocationParameters   Priority   MaxConcurrency   MaxErrors   If a parameter is null, then the corresponding field is not modified. Also, if you set Replace to true, then all fields required by the RegisterTaskWithMaintenanceWindow action are required for this request. Optional fields that aren't specified are set to null.

Required Parameters:
WindowId, WindowTaskId
"""
UpdateMaintenanceWindowTask(args) = ssm("UpdateMaintenanceWindowTask", args)

"""
For a specified resource ID, this API action returns a list of compliance statuses for different resource types. Currently, you can only specify one resource ID per call. List results depend on the criteria specified in the filter. 
"""
ListComplianceItems() = ssm("ListComplianceItems")

"""
All associations for the instance(s).

Required Parameters:
InstanceId
"""
DescribeEffectiveInstanceAssociations(args) = ssm("DescribeEffectiveInstanceAssociations", args)

"""
Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed. The number of sync configurations might be too large to return using a single call to ListResourceDataSync. You can limit the number of sync configurations returned by using the MaxResults parameter. To determine whether there are more sync configurations to list, check the value of NextToken in the output. If there are more sync configurations to list, you can request them by specifying the NextToken returned in the call to the parameter of a subsequent call. 
"""
ListResourceDataSync() = ssm("ListResourceDataSync")

"""
Returns a summary count of compliant and non-compliant resources for a compliance type. For example, this call can return State Manager associations, patches, or custom compliance types according to the filter criteria that you specify. 
"""
ListComplianceSummaries() = ssm("ListComplianceSummaries")

"""
Registers a target with a maintenance window.

Required Parameters:
WindowId, ResourceType, Targets
"""
RegisterTargetWithMaintenanceWindow(args) = ssm("RegisterTargetWithMaintenanceWindow", args)

"""
Retrieve information about one or more parameters in a specific hierarchy.   Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 

Required Parameters:
Path
"""
GetParametersByPath(args) = ssm("GetParametersByPath", args)

"""
Initiates execution of an Automation document.

Required Parameters:
DocumentName
"""
StartAutomationExecution(args) = ssm("StartAutomationExecution", args)

"""
Information about all active and terminated step executions in an Automation workflow.

Required Parameters:
AutomationExecutionId
"""
DescribeAutomationStepExecutions(args) = ssm("DescribeAutomationStepExecutions", args)

"""
Retrieves information about upcoming executions of a maintenance window.
"""
DescribeMaintenanceWindowSchedule() = ssm("DescribeMaintenanceWindowSchedule")

"""
Gets the state of the AWS Systems Manager Change Calendar at an optional, specified time. If you specify a time, GetCalendarState returns the state of the calendar at a specific time, and returns the next time that the Change Calendar state will transition. If you do not specify a time, GetCalendarState assumes the current time. Change Calendar entries have two possible states: OPEN or CLOSED. For more information about Systems Manager Change Calendar, see AWS Systems Manager Change Calendar in the AWS Systems Manager User Guide.

Required Parameters:
CalendarNames
"""
GetCalendarState(args) = ssm("GetCalendarState", args)

"""
Describes a specific delete inventory operation.
"""
DescribeInventoryDeletions() = ssm("DescribeInventoryDeletions")

"""
Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM Agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.   The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for Amazon EC2 instances. 
"""
DescribeInstanceInformation() = ssm("DescribeInstanceInformation")

"""
Adds a new task to a maintenance window.

Required Parameters:
WindowId, Targets, TaskArn, TaskType, MaxConcurrency, MaxErrors
"""
RegisterTaskWithMaintenanceWindow(args) = ssm("RegisterTaskWithMaintenanceWindow", args)

"""
Updates one or more values for an SSM document.

Required Parameters:
Content, Name
"""
UpdateDocument(args) = ssm("UpdateDocument", args)

"""
Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution.

Required Parameters:
WindowExecutionId, TaskId
"""
DescribeMaintenanceWindowExecutionTaskInvocations(args) = ssm("DescribeMaintenanceWindowExecutionTaskInvocations", args)

"""
Updates an existing maintenance window. Only specified parameters are modified.  The value you specify for Duration determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for Cutoff. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for Cutoff is one hour, no maintenance window tasks can start after 5 PM. 

Required Parameters:
WindowId
"""
UpdateMaintenanceWindow(args) = ssm("UpdateMaintenanceWindow", args)

"""
Creates a Systems Manager document. After you create a document, you can use CreateAssociation to associate it with one or more running instances.

Required Parameters:
Content, Name
"""
CreateDocument(args) = ssm("CreateDocument", args)

"""
Associates the specified Systems Manager document with the specified instances or targets. When you associate a document with one or more instances using instance IDs or tags, SSM Agent running on the instance processes the document and configures the instance as specified. If you associate a document with an instance that already has an associated document, the system returns the AssociationAlreadyExists exception.

Required Parameters:
Entries
"""
CreateAssociationBatch(args) = ssm("CreateAssociationBatch", args)

"""
Creates a new OpsItem. You must have permission in AWS Identity and Access Management (IAM) to create a new OpsItem. For more information, see Getting Started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters:
Description, Source, Title
"""
CreateOpsItem(args) = ssm("CreateOpsItem", args)

"""
Returns a list of the tags assigned to the specified resource.

Required Parameters:
ResourceType, ResourceId
"""
ListTagsForResource(args) = ssm("ListTagsForResource", args)

"""
Lists the targets registered with the maintenance window.

Required Parameters:
WindowId
"""
DescribeMaintenanceWindowTargets(args) = ssm("DescribeMaintenanceWindowTargets", args)

"""
Get information about a parameter.  Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 
"""
DescribeParameters() = ssm("DescribeParameters")

"""
Provides details about all active and terminated Automation executions.
"""
DescribeAutomationExecutions() = ssm("DescribeAutomationExecutions")

"""
Get detailed information about a particular Automation execution.

Required Parameters:
AutomationExecutionId
"""
GetAutomationExecution(args) = ssm("GetAutomationExecution", args)

"""
Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-RunPatchBaseline Systems Manager document. 

Required Parameters:
InstanceId, SnapshotId
"""
GetDeployablePatchSnapshotForInstance(args) = ssm("GetDeployablePatchSnapshotForInstance", args)

"""
Reconnects a session to an instance after it has been disconnected. Connections can be resumed for disconnected sessions, but not terminated sessions.  This command is primarily for use by client machines to automatically reconnect during intermittent network issues. It is not intended for any other use. 

Required Parameters:
SessionId
"""
ResumeSession(args) = ssm("ResumeSession", args)

"""
Removes a task from a maintenance window.

Required Parameters:
WindowId, WindowTaskId
"""
DeregisterTaskFromMaintenanceWindow(args) = ssm("DeregisterTaskFromMaintenanceWindow", args)

"""
Use this API action to view all executions for a specific association ID. 

Required Parameters:
AssociationId
"""
DescribeAssociationExecutions(args) = ssm("DescribeAssociationExecutions", args)

"""
Delete a custom inventory type, or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.

Required Parameters:
TypeName
"""
DeleteInventory(args) = ssm("DeleteInventory", args)

"""
Delete a parameter from the system.

Required Parameters:
Name
"""
DeleteParameter(args) = ssm("DeleteParameter", args)

"""
Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline. Note that this API applies only to Windows patch baselines.

Required Parameters:
BaselineId
"""
DescribeEffectivePatchesForPatchBaseline(args) = ssm("DescribeEffectivePatchesForPatchBaseline", args)

"""
Describes the permissions for a Systems Manager document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user's AWS account ID) or publicly (All). 

Required Parameters:
Name, PermissionType
"""
DescribeDocumentPermission(args) = ssm("DescribeDocumentPermission", args)

"""
Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.
"""
ListAssociations() = ssm("ListAssociations")

"""
A list of inventory items returned by the request.

Required Parameters:
InstanceId, TypeName
"""
ListInventoryEntries(args) = ssm("ListInventoryEntries", args)

"""
Adds or overwrites one or more tags for the specified resource. Tags are metadata that you can assign to your documents, managed instances, maintenance windows, Parameter Store parameters, and patch baselines. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test. Each resource can have a maximum of 50 tags.  We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and are interpreted strictly as a string of characters.  For more information about tags, see Tagging Your Amazon EC2 Resources in the Amazon EC2 User Guide.

Required Parameters:
ResourceType, ResourceId, Tags
"""
AddTagsToResource(args) = ssm("AddTagsToResource", args)

"""
Runs commands on one or more managed instances.

Required Parameters:
DocumentName
"""
SendCommand(args) = ssm("SendCommand", args)

"""
Removes tag keys from the specified resource.

Required Parameters:
ResourceType, ResourceId, TagKeys
"""
RemoveTagsFromResource(args) = ssm("RemoveTagsFromResource", args)

"""
Initiates a connection to a target (for example, an instance) for a Session Manager session. Returns a URL and token that can be used to open a WebSocket connection for sending input and receiving outputs.  AWS CLI usage: start-session is an interactive command that requires the Session Manager plugin to be installed on the client machine making the call. For information, see  Install the Session Manager Plugin for the AWS CLI in the AWS Systems Manager User Guide. AWS Tools for PowerShell usage: Start-SSMSession is not currently supported by AWS Tools for PowerShell on Windows local machines. 

Required Parameters:
Target
"""
StartSession(args) = ssm("StartSession", args)

"""
Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.

Required Parameters:
CommandId
"""
CancelCommand(args) = ssm("CancelCommand", args)

"""
Removes a patch group from a patch baseline.

Required Parameters:
BaselineId, PatchGroup
"""
DeregisterPatchBaselineForPatchGroup(args) = ssm("DeregisterPatchBaselineForPatchGroup", args)

"""
Use this API action to view information about a specific execution of a specific association.

Required Parameters:
AssociationId, ExecutionId
"""
DescribeAssociationExecutionTargets(args) = ssm("DescribeAssociationExecutionTargets", args)

"""
Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches. You can use the reported properties in the filters you specify in requests for actions such as CreatePatchBaseline, UpdatePatchBaseline, DescribeAvailablePatches, and DescribePatchBaselines. The following section lists the properties that can be used in filters for each major operating system type:  WINDOWS  Valid properties: PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY  AMAZON_LINUX  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  AMAZON_LINUX_2  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  UBUNTU   Valid properties: PRODUCT, PRIORITY  REDHAT_ENTERPRISE_LINUX  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  SUSE  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  CENTOS  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  

Required Parameters:
OperatingSystem, Property
"""
DescribePatchProperties(args) = ssm("DescribePatchProperties", args)

"""
Registers a patch baseline for a patch group.

Required Parameters:
BaselineId, PatchGroup
"""
RegisterPatchBaselineForPatchGroup(args) = ssm("RegisterPatchBaselineForPatchGroup", args)

"""
Describes the specified Systems Manager document.

Required Parameters:
Name
"""
DescribeDocument(args) = ssm("DescribeDocument", args)

"""
Retrieves the default patch baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system. If you do not specify an operating system value, the default patch baseline for Windows is returned.
"""
GetDefaultPatchBaseline() = ssm("GetDefaultPatchBaseline")

"""
For a given maintenance window execution, lists the tasks that were run.

Required Parameters:
WindowExecutionId
"""
DescribeMaintenanceWindowExecutionTasks(args) = ssm("DescribeMaintenanceWindowExecutionTasks", args)

"""
Creates a new maintenance window.  The value you specify for Duration determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for Cutoff. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for Cutoff is one hour, no maintenance window tasks can start after 5 PM. 

Required Parameters:
Name, Schedule, Duration, Cutoff, AllowUnassociatedTargets
"""
CreateMaintenanceWindow(args) = ssm("CreateMaintenanceWindow", args)

"""
Modifies the target of an existing maintenance window. You can change the following:   Name   Description   Owner   IDs for an ID target   Tags for a Tag target   From any supported tag type to another. The three supported tag types are ID target, Tag target, and resource group. For more information, see Target.    If a parameter is null, then the corresponding field is not modified. 

Required Parameters:
WindowId, WindowTargetId
"""
UpdateMaintenanceWindowTarget(args) = ssm("UpdateMaintenanceWindowTarget", args)

"""
Query a list of all parameters used by the AWS account.

Required Parameters:
Name
"""
GetParameterHistory(args) = ssm("GetParameterHistory", args)

"""
Get details of a parameter. Don't confuse this API action with the GetParameter API action.

Required Parameters:
Names
"""
GetParameters(args) = ssm("GetParameters", args)

"""
Creates a patch baseline.  For information about valid key and value pairs in PatchFilters for each supported operating system type, see PatchFilter. 

Required Parameters:
Name
"""
CreatePatchBaseline(args) = ssm("CreatePatchBaseline", args)

"""
Deletes the Systems Manager document and all instance associations to the document. Before you delete the document, we recommend that you use DeleteAssociation to disassociate all instances that are associated with the document.

Required Parameters:
Name
"""
DeleteDocument(args) = ssm("DeleteDocument", args)

"""
An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.
"""
ListCommandInvocations() = ssm("ListCommandInvocations")

"""
Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the instance. A terminated session cannot be resumed.

Required Parameters:
SessionId
"""
TerminateSession(args) = ssm("TerminateSession", args)

"""
A resource data sync helps you view data from multiple sources in a single location. Systems Manager offers two types of resource data sync: SyncToDestination and SyncFromSource. You can configure Systems Manager Inventory to use the SyncToDestination type to synchronize Inventory data from multiple AWS Regions to a single Amazon S3 bucket. For more information, see Configuring Resource Data Sync for Inventory in the AWS Systems Manager User Guide. You can configure Systems Manager Explorer to use the SyncFromSource type to synchronize operational work items (OpsItems) and operational data (OpsData) from multiple AWS Regions to a single Amazon S3 bucket. This type can synchronize OpsItems and OpsData from multiple AWS accounts and Regions or EntireOrganization by using AWS Organizations. For more information, see Setting Up Explorer to Display Data from Multiple Accounts and Regions in the AWS Systems Manager User Guide. A resource data sync is an asynchronous operation that returns immediately. After a successful initial sync is completed, the system continuously syncs data. To check the status of a sync, use the ListResourceDataSync.  By default, data is not encrypted in Amazon S3. We strongly recommend that you enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you secure access to the Amazon S3 bucket by creating a restrictive bucket policy.  

Required Parameters:
SyncName
"""
CreateResourceDataSync(args) = ssm("CreateResourceDataSync", args)

"""
Updates an association. You can update the association name and version, the document version, schedule, parameters, and Amazon S3 output.  In order to call this API action, your IAM user account, group, or role must be configured with permission to call the DescribeAssociation API action. If you don't have permission to call DescribeAssociation, then you receive the following error: An error occurred (AccessDeniedException) when calling the UpdateAssociation operation: User: &lt;user_arn&gt; is not authorized to perform: ssm:DescribeAssociation on resource: &lt;resource_arn&gt;   When you update an association, the association immediately runs against the specified targets. 

Required Parameters:
AssociationId
"""
UpdateAssociation(args) = ssm("UpdateAssociation", args)

"""
Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.

Required Parameters:
InstanceId, Items
"""
PutInventory(args) = ssm("PutInventory", args)

"""
The status of the associations for the instance(s).

Required Parameters:
InstanceId
"""
DescribeInstanceAssociationsStatus(args) = ssm("DescribeInstanceAssociationsStatus", args)

"""
Returns detailed information about command execution for an invocation or plugin. 

Required Parameters:
CommandId, InstanceId
"""
GetCommandInvocation(args) = ssm("GetCommandInvocation", args)

"""
Retrieves the high-level patch state for the instances in the specified patch group.

Required Parameters:
PatchGroup
"""
DescribeInstancePatchStatesForPatchGroup(args) = ssm("DescribeInstancePatchStatesForPatchGroup", args)

"""
Update a resource data sync. After you create a resource data sync for a Region, you can't change the account options for that sync. For example, if you create a sync in the us-east-2 (Ohio) Region and you choose the Include only the current account option, you can't edit that sync later and choose the Include all accounts from my AWS Organizations configuration option. Instead, you must delete the first resource data sync, and create a new one.

Required Parameters:
SyncName, SyncType, SyncSource
"""
UpdateResourceDataSync(args) = ssm("UpdateResourceDataSync", args)

"""
Retrieves details about a specific a maintenance window execution.

Required Parameters:
WindowExecutionId
"""
GetMaintenanceWindowExecution(args) = ssm("GetMaintenanceWindowExecution", args)

"""
Generates an activation code and activation ID you can use to register your on-premises server or virtual machine (VM) with Systems Manager. Registering these machines with Systems Manager makes it possible to manage them using Systems Manager capabilities. You use the activation code and ID when installing SSM Agent on machines in your hybrid environment. For more information about requirements for managing on-premises instances and VMs using Systems Manager, see Setting Up AWS Systems Manager for Hybrid Environments in the AWS Systems Manager User Guide.   On-premises servers or VMs that are registered with Systems Manager and Amazon EC2 instances that you manage with Systems Manager are all called managed instances. 

Required Parameters:
IamRole
"""
CreateActivation(args) = ssm("CreateActivation", args)

"""
Defines the default patch baseline for the relevant operating system. To reset the AWS predefined patch baseline as the default, specify the full patch baseline ARN as the baseline ID value. For example, for CentOS, specify arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed instead of pb-0574b43a65ea646ed.

Required Parameters:
BaselineId
"""
RegisterDefaultPatchBaseline(args) = ssm("RegisterDefaultPatchBaseline", args)

"""
Retrieves information about the maintenance window targets or tasks that an instance is associated with.

Required Parameters:
Targets, ResourceType
"""
DescribeMaintenanceWindowsForTarget(args) = ssm("DescribeMaintenanceWindowsForTarget", args)

"""
Gets the contents of the specified Systems Manager document.

Required Parameters:
Name
"""
GetDocument(args) = ssm("GetDocument", args)

"""
Returns high-level aggregated patch compliance state for a patch group.

Required Parameters:
PatchGroup
"""
DescribePatchGroupState(args) = ssm("DescribePatchGroupState", args)

"""
 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the GetServiceSetting API action to view the current value. Use the UpdateServiceSetting API action to change the default setting.  Reset the service setting for the account to the default value as provisioned by the AWS service team. 

Required Parameters:
SettingId
"""
ResetServiceSetting(args) = ssm("ResetServiceSetting", args)

"""
Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.

Required Parameters:
ActivationId
"""
DeleteActivation(args) = ssm("DeleteActivation", args)

"""
Add a parameter to the system.

Required Parameters:
Name, Value, Type
"""
PutParameter(args) = ssm("PutParameter", args)

"""
Retrieves the maintenance windows in an AWS account.
"""
DescribeMaintenanceWindows() = ssm("DescribeMaintenanceWindows")

"""
Retrieves the patch baseline that should be used for the specified patch group.

Required Parameters:
PatchGroup
"""
GetPatchBaselineForPatchGroup(args) = ssm("GetPatchBaselineForPatchGroup", args)

"""
Deletes a patch baseline.

Required Parameters:
BaselineId
"""
DeletePatchBaseline(args) = ssm("DeletePatchBaseline", args)

"""
Sends a signal to an Automation execution to change the current behavior or status of the execution. 

Required Parameters:
AutomationExecutionId, SignalType
"""
SendAutomationSignal(args) = ssm("SendAutomationSignal", args)

"""
List all versions for a document.

Required Parameters:
Name
"""
ListDocumentVersions(args) = ssm("ListDocumentVersions", args)

"""
Stops a maintenance window execution that is already in progress and cancels any tasks in the window that have not already starting running. (Tasks already in progress will continue to completion.)

Required Parameters:
WindowExecutionId
"""
CancelMaintenanceWindowExecution(args) = ssm("CancelMaintenanceWindowExecution", args)

"""
Lists the executions of a maintenance window. This includes information about when the maintenance window was scheduled to be active, and information about tasks registered and run with the maintenance window.

Required Parameters:
WindowId
"""
DescribeMaintenanceWindowExecutions(args) = ssm("DescribeMaintenanceWindowExecutions", args)

"""
Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.

Required Parameters:
InstanceId
"""
DescribeInstancePatches(args) = ssm("DescribeInstancePatches", args)

"""
Lists all patch groups that have been registered with patch baselines.
"""
DescribePatchGroups() = ssm("DescribePatchGroups")

"""
Assigns or changes an Amazon Identity and Access Management (IAM) role for the managed instance.

Required Parameters:
InstanceId, IamRole
"""
UpdateManagedInstanceRole(args) = ssm("UpdateManagedInstanceRole", args)

"""
Set the default version of a document. 

Required Parameters:
Name, DocumentVersion
"""
UpdateDocumentDefaultVersion(args) = ssm("UpdateDocumentDefaultVersion", args)

"""
Modifies an existing patch baseline. Fields not specified in the request are left unchanged.  For information about valid key and value pairs in PatchFilters for each supported operating system type, see PatchFilter. 

Required Parameters:
BaselineId
"""
UpdatePatchBaseline(args) = ssm("UpdatePatchBaseline", args)
