include("../AWSCorePrototypeServices.jl")
using .Services: ssm

"""
    GetParameter()

Get information about a parameter by using the parameter name. Don't confuse this API action with the GetParameters API action.

Required Parameters
{
  "Name": "The name of the parameter you want to query."
}

Optional Parameters
{
  "WithDecryption": "Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types."
}
"""
GetParameter(args) = ssm("GetParameter", args)

"""
    LabelParameterVersion()

A parameter label is a user-defined alias to help you manage different versions of a parameter. When you modify a parameter, Systems Manager automatically saves a new version and increments the version number by one. A label can help you remember the purpose of a parameter when there are multiple versions.  Parameter labels have the following requirements and restrictions.   A version of a parameter can have a maximum of 10 labels.   You can't attach the same label to different versions of the same parameter. For example, if version 1 has the label Production, then you can't attach Production to version 2.   You can move a label from one version of a parameter to another.   You can't create a label when you create a new parameter. You must attach a label to a specific version of a parameter.   You can't delete a parameter label. If you no longer want to use a parameter label, then you must move it to a different version of a parameter.   A label can have a maximum of 100 characters.   Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or underscores (_).   Labels can't begin with a number, "aws," or "ssm" (not case sensitive). If a label fails to meet these requirements, then the label is not associated with a parameter and the system displays it in the list of InvalidLabels.  

Required Parameters
{
  "Labels": "One or more labels to attach to the specified parameter version.",
  "Name": "The parameter name on which you want to attach one or more labels."
}

Optional Parameters
{
  "ParameterVersion": "The specific version of the parameter on which you want to attach one or more labels. If no version is specified, the system attaches the label to the latest version."
}
"""
LabelParameterVersion(args) = ssm("LabelParameterVersion", args)

"""
    GetOpsSummary()

View a summary of OpsItems based on specified filters and aggregators.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "Aggregators": "Optional aggregators that return counts of OpsItems based on one or more expressions.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "SyncName": "Specify the name of a resource data sync to get.",
  "Filters": "Optional filters used to scope down the returned OpsItems. ",
  "ResultAttributes": "The OpsItem data type to return."
}
"""

GetOpsSummary() = ssm("GetOpsSummary")
GetOpsSummary(args) = ssm("GetOpsSummary", args)

"""
    DeleteResourceDataSync()

Deletes a Resource Data Sync configuration. After the configuration is deleted, changes to data on managed instances are no longer synced to or from the target. Deleting a sync configuration does not delete data.

Required Parameters
{
  "SyncName": "The name of the configuration to delete."
}

Optional Parameters
{
  "SyncType": "Specify the type of resource data sync to delete."
}
"""
DeleteResourceDataSync(args) = ssm("DeleteResourceDataSync", args)

"""
    DescribeMaintenanceWindowTasks()

Lists the tasks in a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window whose tasks should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType."
}
"""
DescribeMaintenanceWindowTasks(args) = ssm("DescribeMaintenanceWindowTasks", args)

"""
    GetInventory()

Query inventory information.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "Aggregators": "Returns counts of inventory types based on one or more expressions. For example, if you aggregate by using an expression that uses the AWS:InstanceInformation.PlatformType type, you can see a count of how many Windows and Linux instances exist in your inventoried fleet.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters. Use a filter to return a more specific list of results.",
  "ResultAttributes": "The list of inventory item types to return."
}
"""

GetInventory() = ssm("GetInventory")
GetInventory(args) = ssm("GetInventory", args)

"""
    DescribeAvailablePatches()

Lists all patches eligible to be included in a patch baseline.

Optional Parameters
{
  "MaxResults": "The maximum number of patches to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Filters used to scope down the returned patches."
}
"""

DescribeAvailablePatches() = ssm("DescribeAvailablePatches")
DescribeAvailablePatches(args) = ssm("DescribeAvailablePatches", args)

"""
    UpdateOpsItem()

Edit or change an OpsItem. You must have permission in AWS Identity and Access Management (IAM) to update an OpsItem. For more information, see Getting started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters
{
  "OpsItemId": "The ID of the OpsItem."
}

Optional Parameters
{
  "OperationalData": "Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem object. Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB.  Operational data keys can't begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.  You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the DescribeOpsItems API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the GetOpsItem API action). Use the /aws/resources key in OperationalData to specify a related resource in the request. Use the /aws/automations key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see Creating OpsItems manually in the AWS Systems Manager User Guide.",
  "OperationalDataToDelete": "Keys that you want to remove from the OperationalData map.",
  "Description": "Update the information about the OpsItem. Provide enough information so that users reading this OpsItem for the first time understand the issue. ",
  "Status": "The OpsItem status. Status can be Open, In Progress, or Resolved. For more information, see Editing OpsItem details in the AWS Systems Manager User Guide.",
  "Severity": "Specify a new severity for an OpsItem.",
  "Notifications": "The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.",
  "RelatedOpsItems": "One or more OpsItems that share something in common with the current OpsItems. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.",
  "Priority": "The importance of this OpsItem in relation to other OpsItems in the system.",
  "Category": "Specify a new category for an OpsItem.",
  "Title": "A short heading that describes the nature of the OpsItem and the impacted resource."
}
"""
UpdateOpsItem(args) = ssm("UpdateOpsItem", args)

"""
    StartAssociationsOnce()

Use this API action to run an association immediately and only one time. This action can be helpful when troubleshooting associations.

Required Parameters
{
  "AssociationIds": "The association IDs that you want to run immediately and only one time."
}
"""
StartAssociationsOnce(args) = ssm("StartAssociationsOnce", args)

"""
    UpdateAssociationStatus()

Updates the status of the Systems Manager document associated with the specified instance.

Required Parameters
{
  "InstanceId": "The ID of the instance.",
  "AssociationStatus": "The association status.",
  "Name": "The name of the Systems Manager document."
}
"""
UpdateAssociationStatus(args) = ssm("UpdateAssociationStatus", args)

"""
    DeregisterManagedInstance()

Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don't plan to use Run Command on the server, we suggest uninstalling SSM Agent first.

Required Parameters
{
  "InstanceId": "The ID assigned to the managed instance when you registered it using the activation process. "
}
"""
DeregisterManagedInstance(args) = ssm("DeregisterManagedInstance", args)

"""
    GetMaintenanceWindow()

Retrieves a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window for which you want to retrieve information."
}
"""
GetMaintenanceWindow(args) = ssm("GetMaintenanceWindow", args)

"""
    GetOpsItem()

Get information about an OpsItem by using the ID. You must have permission in AWS Identity and Access Management (IAM) to view information about an OpsItem. For more information, see Getting started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters
{
  "OpsItemId": "The ID of the OpsItem that you want to get."
}
"""
GetOpsItem(args) = ssm("GetOpsItem", args)

"""
    GetServiceSetting()

 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the UpdateServiceSetting API action to change the default setting. Or use the ResetServiceSetting to change the value back to the original value defined by the AWS service team. Query the current service setting for the account. 

Required Parameters
{
  "SettingId": "The ID of the service setting to get. The setting ID can be /ssm/parameter-store/default-parameter-tier, /ssm/parameter-store/high-throughput-enabled, or /ssm/managed-instance/activation-tier."
}
"""
GetServiceSetting(args) = ssm("GetServiceSetting", args)

"""
    DeregisterTargetFromMaintenanceWindow()

Removes a target from a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window the target should be removed from.",
  "WindowTargetId": "The ID of the target definition to remove."
}

Optional Parameters
{
  "Safe": "The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window."
}
"""
DeregisterTargetFromMaintenanceWindow(args) = ssm("DeregisterTargetFromMaintenanceWindow", args)

"""
    GetPatchBaseline()

Retrieves information about a patch baseline.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to retrieve."
}
"""
GetPatchBaseline(args) = ssm("GetPatchBaseline", args)

"""
    DescribeSessions()

Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days.

Required Parameters
{
  "State": "The session status to retrieve a list of sessions for. For example, \"Active\"."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters to limit the type of sessions returned by the request."
}
"""
DescribeSessions(args) = ssm("DescribeSessions", args)

"""
    DescribeAssociation()

Describes the association for the specified target or instance. If you created the association by using the Targets parameter, then you must retrieve the association by using the association ID. If you created the association by specifying an instance ID and a Systems Manager document, then you retrieve the association by specifying the document name and the instance ID. 

Optional Parameters
{
  "AssociationId": "The association ID for which you want information.",
  "InstanceId": "The instance ID.",
  "AssociationVersion": "Specify the association version to retrieve. To view the latest version, either specify  LATEST for this parameter, or omit this parameter. To view a list of all associations for an instance, use ListAssociations. To get a list of versions for a specific association, use ListAssociationVersions. ",
  "Name": "The name of the Systems Manager document."
}
"""

DescribeAssociation() = ssm("DescribeAssociation")
DescribeAssociation(args) = ssm("DescribeAssociation", args)

"""
    GetMaintenanceWindowExecutionTask()

Retrieves the details about a specific task run as part of a maintenance window execution.

Required Parameters
{
  "TaskId": "The ID of the specific task execution in the maintenance window task that should be retrieved.",
  "WindowExecutionId": "The ID of the maintenance window execution that includes the task."
}
"""
GetMaintenanceWindowExecutionTask(args) = ssm("GetMaintenanceWindowExecutionTask", args)

"""
    PutComplianceItems()

Registers a compliance type and other compliance details on a designated resource. This action lets you register custom compliance details with a resource. This call overwrites existing compliance information on the resource, so you must provide a full list of compliance items each time that you send the request. ComplianceType can be one of the following:   ExecutionId: The execution ID when the patch, association, or custom compliance item was applied.   ExecutionType: Specify patch, association, or Custom:string.   ExecutionTime. The time the patch, association, or custom compliance item was applied to the instance.   Id: The patch, association, or custom compliance ID.   Title: A title.   Status: The status of the compliance item. For example, approved for patches, or Failed for associations.   Severity: A patch severity. For example, critical.   DocumentName: A SSM document name. For example, AWS-RunPatchBaseline.   DocumentVersion: An SSM document version number. For example, 4.   Classification: A patch classification. For example, security updates.   PatchBaselineId: A patch baseline ID.   PatchSeverity: A patch severity. For example, Critical.   PatchState: A patch state. For example, InstancesWithFailedPatches.   PatchGroup: The name of a patch group.   InstalledTime: The time the association, patch, or custom compliance item was applied to the resource. Specify the time by using the following format: yyyy-MM-dd'T'HH:mm:ss'Z'  

Required Parameters
{
  "ExecutionSummary": "A summary of the call execution that includes an execution ID, the type of execution (for example, Command), and the date/time of the execution using a datetime object that is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.",
  "Items": "Information about the compliance as defined by the resource type. For example, for a patch compliance type, Items includes information about the PatchSeverity, Classification, and so on.",
  "ResourceType": "Specify the type of resource. ManagedInstance is currently the only supported resource type.",
  "ResourceId": "Specify an ID for this resource. For a managed instance, this is the instance ID.",
  "ComplianceType": "Specify the compliance type. For example, specify Association (for a State Manager association), Patch, or Custom:string."
}

Optional Parameters
{
  "ItemContentHash": "MD5 or SHA-256 content hash. The content hash is used to determine if existing information should be overwritten or ignored. If the content hashes match, the request to put compliance information is ignored.",
  "UploadType": "The mode for uploading compliance items. You can specify COMPLETE or PARTIAL. In COMPLETE mode, the system overwrites all existing compliance information for the resource. You must provide a full list of compliance items each time you send the request. In PARTIAL mode, the system overwrites compliance information for a specific association. The association must be configured with SyncCompliance set to MANUAL. By default, all requests use COMPLETE mode.  This attribute is only valid for association compliance. "
}
"""
PutComplianceItems(args) = ssm("PutComplianceItems", args)

"""
    DeleteAssociation()

Disassociates the specified Systems Manager document from the specified instance. When you disassociate a document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.

Optional Parameters
{
  "AssociationId": "The association ID that you want to delete.",
  "InstanceId": "The ID of the instance.",
  "Name": "The name of the Systems Manager document."
}
"""

DeleteAssociation() = ssm("DeleteAssociation")
DeleteAssociation(args) = ssm("DeleteAssociation", args)

"""
    DescribePatchBaselines()

Lists the patch baselines in your AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of patch baselines to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Each element in the array is a structure containing:  Key: (string, \"NAME_PREFIX\" or \"OWNER\") Value: (array of strings, exactly 1 entry, between 1 and 255 characters)"
}
"""

DescribePatchBaselines() = ssm("DescribePatchBaselines")
DescribePatchBaselines(args) = ssm("DescribePatchBaselines", args)

"""
    GetMaintenanceWindowTask()

Lists the tasks in a maintenance window.

Required Parameters
{
  "WindowId": "The maintenance window ID that includes the task to retrieve.",
  "WindowTaskId": "The maintenance window task ID to retrieve."
}
"""
GetMaintenanceWindowTask(args) = ssm("GetMaintenanceWindowTask", args)

"""
    CreateAssociation()

A State Manager association defines the state that you want to maintain on your instances. For example, an association can specify that anti-virus software must be installed and running on your instances, or that certain ports must be closed. For static targets, the association specifies a schedule for when the configuration is reapplied. For dynamic targets, such as an AWS Resource Group or an AWS Autoscaling Group, State Manager applies the configuration when new instances are added to the group. The association also specifies actions to take when applying the configuration. For example, an association for anti-virus software might run once a day. If the software is not installed, then State Manager installs it. If the software is installed, but the service is not running, then the association might instruct State Manager to start the service. 

Required Parameters
{
  "Name": "The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format:  arn:partition:ssm:region:account-id:document/document-name   For example:  arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, AWS-ApplyPatchBaseline or My-Document."
}

Optional Parameters
{
  "AutomationTargetParameterName": "Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.",
  "DocumentVersion": "The document version you want to associate with the target(s). Can be a specific version or the default version.",
  "ScheduleExpression": "A cron expression when the association will be applied to the target(s).",
  "InstanceId": "The instance ID.   InstanceId has been deprecated. To specify an instance ID for an association, use the Targets parameter. Requests that include the parameter InstanceID with SSM documents that use schema version 2.0 or later will fail. In addition, if you use the parameter InstanceId, you cannot use the parameters AssociationName, DocumentVersion, MaxErrors, MaxConcurrency, OutputLocation, or ScheduleExpression. To use these parameters, you must use the Targets parameter. ",
  "OutputLocation": "An S3 bucket where you want to store the output details of the request.",
  "SyncCompliance": "The mode for generating association compliance. You can specify AUTO or MANUAL. In AUTO mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is COMPLIANT. If the association execution doesn't run successfully, the association is NON-COMPLIANT. In MANUAL mode, you must specify the AssociationId as a parameter for the PutComplianceItems API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the PutComplianceItems API action. By default, all associations use AUTO mode.",
  "AssociationName": "Specify a descriptive name for the association.",
  "MaxConcurrency": "The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.",
  "MaxErrors": "The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.",
  "ApplyOnlyAtCronInterval": "By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it.",
  "Parameters": "The parameters for the runtime configuration of the document.",
  "ComplianceSeverity": "The severity level to assign to the association.",
  "Targets": "The targets for the association. You can target instances by using tags, AWS Resource Groups, all instances in an AWS account, or individual instance IDs. For more information about choosing targets for an association, see Using targets and rate controls with State Manager associations in the AWS Systems Manager User Guide."
}
"""
CreateAssociation(args) = ssm("CreateAssociation", args)

"""
    ListCommands()

Lists the commands requested by users of the AWS account.

Optional Parameters
{
  "MaxResults": "(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "(Optional) The token for the next set of items to return. (You received this token from a previous call.)",
  "InstanceId": "(Optional) Lists commands issued against this instance ID.  You can't specify an instance ID in the same command that you specify Status = Pending. This is because the command has not reached the instance yet. ",
  "CommandId": "(Optional) If provided, lists only the specified command.",
  "Filters": "(Optional) One or more filters. Use a filter to return a more specific list of results. "
}
"""

ListCommands() = ssm("ListCommands")
ListCommands(args) = ssm("ListCommands", args)

"""
    DescribeActivations()

Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "Filters": "A filter to view information about your activations."
}
"""

DescribeActivations() = ssm("DescribeActivations")
DescribeActivations(args) = ssm("DescribeActivations", args)

"""
    DeleteMaintenanceWindow()

Deletes a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window to delete."
}
"""
DeleteMaintenanceWindow(args) = ssm("DeleteMaintenanceWindow", args)

"""
    DeleteParameters()

Delete a list of parameters.

Required Parameters
{
  "Names": "The names of the parameters to delete."
}
"""
DeleteParameters(args) = ssm("DeleteParameters", args)

"""
    ListDocuments()

Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "DocumentFilterList": "This data type is deprecated. Instead, use Filters.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more DocumentKeyValuesFilter objects. Use a filter to return a more specific list of results. For keys, you can specify one or more key-value pair tags that have been applied to a document. Other valid keys include Owner, Name, PlatformTypes, DocumentType, and TargetType. For example, to return documents you own use Key=Owner,Values=Self. To specify a custom key-value pair, use the format Key=tag:tagName,Values=valueName."
}
"""

ListDocuments() = ssm("ListDocuments")
ListDocuments(args) = ssm("ListDocuments", args)

"""
    UpdateServiceSetting()

 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the GetServiceSetting API action to view the current value. Or, use the ResetServiceSetting to change the value back to the original value defined by the AWS service team. Update the service setting for the account. 

Required Parameters
{
  "SettingValue": "The new value to specify for the service setting. For the /ssm/parameter-store/default-parameter-tier setting ID, the setting value can be one of the following.   Standard   Advanced   Intelligent-Tiering   For the /ssm/parameter-store/high-throughput-enabled, and /ssm/managed-instance/activation-tier setting IDs, the setting value can be true or false.",
  "SettingId": "The Amazon Resource Name (ARN) of the service setting to reset. For example, arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled. The setting ID can be one of the following.    /ssm/parameter-store/default-parameter-tier     /ssm/parameter-store/high-throughput-enabled     /ssm/managed-instance/activation-tier   "
}
"""
UpdateServiceSetting(args) = ssm("UpdateServiceSetting", args)

"""
    GetMaintenanceWindowExecutionTaskInvocation()

Retrieves information about a specific task running on a specific target.

Required Parameters
{
  "InvocationId": "The invocation ID to retrieve.",
  "TaskId": "The ID of the specific task in the maintenance window task that should be retrieved. ",
  "WindowExecutionId": "The ID of the maintenance window execution for which the task is a part."
}
"""
GetMaintenanceWindowExecutionTaskInvocation(args) = ssm("GetMaintenanceWindowExecutionTaskInvocation", args)

"""
    GetConnectionStatus()

Retrieves the Session Manager connection status for an instance to determine whether it is running and ready to receive Session Manager connections.

Required Parameters
{
  "Target": "The ID of the instance."
}
"""
GetConnectionStatus(args) = ssm("GetConnectionStatus", args)

"""
    GetInventorySchema()

Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "TypeName": "The type of inventory item to return.",
  "SubType": "Returns the sub-type schema for a specified inventory type.",
  "Aggregator": "Returns inventory schemas that support aggregation. For example, this call returns the AWS:InstanceInformation type, because it supports aggregation based on the PlatformName, PlatformType, and PlatformVersion attributes."
}
"""

GetInventorySchema() = ssm("GetInventorySchema")
GetInventorySchema(args) = ssm("GetInventorySchema", args)

"""
    ModifyDocumentPermission()

Shares a Systems Manager document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify All as the account ID.

Required Parameters
{
  "PermissionType": "The permission type for the document. The permission type can be Share.",
  "Name": "The name of the document that you want to share."
}

Optional Parameters
{
  "SharedDocumentVersion": "(Optional) The version of the document to share. If it's not specified, the system choose the Default version to share.",
  "AccountIdsToAdd": "The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or All.",
  "AccountIdsToRemove": "The AWS user accounts that should no longer have access to the document. The AWS user account can either be a group of account IDs or All. This action has a higher priority than AccountIdsToAdd. If you specify an account ID to add and the same ID to remove, the system removes access to the document."
}
"""
ModifyDocumentPermission(args) = ssm("ModifyDocumentPermission", args)

"""
    ListAssociationVersions()

Retrieves all versions of an association for a specific association ID.

Required Parameters
{
  "AssociationId": "The association ID for which you want to view all versions."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. "
}
"""
ListAssociationVersions(args) = ssm("ListAssociationVersions", args)

"""
    ListResourceComplianceSummaries()

Returns a resource-level summary count. The summary includes information about compliant and non-compliant statuses and detailed compliance-item severity counts, according to the filter criteria you specify.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "Filters": "One or more filters. Use a filter to return a more specific list of results."
}
"""

ListResourceComplianceSummaries() = ssm("ListResourceComplianceSummaries")
ListResourceComplianceSummaries(args) = ssm("ListResourceComplianceSummaries", args)

"""
    DescribeOpsItems()

Query a set of OpsItems. You must have permission in AWS Identity and Access Management (IAM) to query a list of OpsItems. For more information, see Getting started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results.",
  "OpsItemFilters": "One or more filters to limit the response.   Key: CreatedTime Operations: GreaterThan, LessThan   Key: LastModifiedBy Operations: Contains, Equals   Key: LastModifiedTime Operations: GreaterThan, LessThan   Key: Priority Operations: Equals   Key: Source Operations: Contains, Equals   Key: Status Operations: Equals   Key: Title Operations: Contains   Key: OperationalData* Operations: Equals   Key: OperationalDataKey Operations: Equals   Key: OperationalDataValue Operations: Equals, Contains   Key: OpsItemId Operations: Equals   Key: ResourceId Operations: Contains   Key: AutomationId Operations: Equals   *If you filter the response by using the OperationalData operator, specify a key-value pair by using the following JSON format: {\"key\":\"key_name\",\"value\":\"a_value\"}"
}
"""

DescribeOpsItems() = ssm("DescribeOpsItems")
DescribeOpsItems(args) = ssm("DescribeOpsItems", args)

"""
    DescribeInstancePatchStates()

Retrieves the high-level patch state of one or more instances.

Required Parameters
{
  "InstanceIds": "The ID of the instance whose patch state information should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of instances to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeInstancePatchStates(args) = ssm("DescribeInstancePatchStates", args)

"""
    StopAutomationExecution()

Stop an Automation that is currently running.

Required Parameters
{
  "AutomationExecutionId": "The execution ID of the Automation to stop."
}

Optional Parameters
{
  "Type": "The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel."
}
"""
StopAutomationExecution(args) = ssm("StopAutomationExecution", args)

"""
    UpdateMaintenanceWindowTask()

Modifies a task assigned to a maintenance window. You can't change the task type, but you can change the following values:   TaskARN. For example, you can change a RUN_COMMAND task from AWS-RunPowerShellScript to AWS-RunShellScript.   ServiceRoleArn   TaskInvocationParameters   Priority   MaxConcurrency   MaxErrors   If a parameter is null, then the corresponding field is not modified. Also, if you set Replace to true, then all fields required by the RegisterTaskWithMaintenanceWindow action are required for this request. Optional fields that aren't specified are set to null.

Required Parameters
{
  "WindowId": "The maintenance window ID that contains the task to modify.",
  "WindowTaskId": "The task ID to modify."
}

Optional Parameters
{
  "LoggingInfo": "The new logging location in Amazon S3 to specify.   LoggingInfo has been deprecated. To specify an S3 bucket to contain logs, instead use the OutputS3BucketName and OutputS3KeyPrefix options in the TaskInvocationParameters structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see MaintenanceWindowTaskInvocationParameters. ",
  "TaskArn": "The task ARN to modify.",
  "ServiceRoleArn": "The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run RegisterTaskWithMaintenanceWindow. For more information, see the following topics in the in the AWS Systems Manager User Guide:    Using service-linked roles for Systems Manager     Should I use a service-linked role or a custom service role to run maintenance window tasks?    ",
  "Name": "The new task name to specify.",
  "TaskParameters": "The parameters to modify.   TaskParameters has been deprecated. To specify parameters to pass to a task when it runs, instead use the Parameters option in the TaskInvocationParameters structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see MaintenanceWindowTaskInvocationParameters.  The map has the following format: Key: string, between 1 and 255 characters Value: an array of strings, each string is between 1 and 255 characters",
  "TaskInvocationParameters": "The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty.",
  "MaxConcurrency": "The new MaxConcurrency value you want to specify. MaxConcurrency is the number of targets that are allowed to run this task in parallel.",
  "MaxErrors": "The new MaxErrors value to specify. MaxErrors is the maximum number of errors that are allowed before the task stops being scheduled.",
  "Description": "The new task description to specify.",
  "Priority": "The new task priority to specify. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.",
  "Targets": "The targets (either instances or tags) to modify. Instances are specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags are specified using Key=tag_name,Values=tag_value. ",
  "Replace": "If True, then all fields that are required by the RegisterTaskWithMaintenanceWndow action are also required for this API request. Optional fields that are not specified are set to null."
}
"""
UpdateMaintenanceWindowTask(args) = ssm("UpdateMaintenanceWindowTask", args)

"""
    ListComplianceItems()

For a specified resource ID, this API action returns a list of compliance statuses for different resource types. Currently, you can only specify one resource ID per call. List results depend on the criteria specified in the filter.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "ResourceIds": "The ID for the resources from which to get compliance information. Currently, you can only specify one resource ID.",
  "ResourceTypes": "The type of resource from which to get compliance information. Currently, the only supported resource type is ManagedInstance.",
  "Filters": "One or more compliance filters. Use a filter to return a more specific list of results."
}
"""

ListComplianceItems() = ssm("ListComplianceItems")
ListComplianceItems(args) = ssm("ListComplianceItems", args)

"""
    DescribeEffectiveInstanceAssociations()

All associations for the instance(s).

Required Parameters
{
  "InstanceId": "The instance ID for which you want to view all associations."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeEffectiveInstanceAssociations(args) = ssm("DescribeEffectiveInstanceAssociations", args)

"""
    ListResourceDataSync()

Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed. The number of sync configurations might be too large to return using a single call to ListResourceDataSync. You can limit the number of sync configurations returned by using the MaxResults parameter. To determine whether there are more sync configurations to list, check the value of NextToken in the output. If there are more sync configurations to list, you can request them by specifying the NextToken returned in the call to the parameter of a subsequent call. 

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "SyncType": "View a list of resource data syncs according to the sync type. Specify SyncToDestination to view resource data syncs that synchronize data to an Amazon S3 buckets. Specify SyncFromSource to view resource data syncs from AWS Organizations or from multiple AWS Regions. "
}
"""

ListResourceDataSync() = ssm("ListResourceDataSync")
ListResourceDataSync(args) = ssm("ListResourceDataSync", args)

"""
    ListComplianceSummaries()

Returns a summary count of compliant and non-compliant resources for a compliance type. For example, this call can return State Manager associations, patches, or custom compliance types according to the filter criteria that you specify.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. Currently, you can specify null or 50. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "Filters": "One or more compliance or inventory filters. Use a filter to return a more specific list of results."
}
"""

ListComplianceSummaries() = ssm("ListComplianceSummaries")
ListComplianceSummaries(args) = ssm("ListComplianceSummaries", args)

"""
    RegisterTargetWithMaintenanceWindow()

Registers a target with a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window the target should be registered with.",
  "ResourceType": "The type of target being registered with the maintenance window.",
  "Targets": "The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances.  Example 1: Specify instance IDs  Key=InstanceIds,Values=instance-id-1,instance-id-2,instance-id-3    Example 2: Use tag key-pairs applied to instances  Key=tag:my-tag-key,Values=my-tag-value-1,my-tag-value-2    Example 3: Use tag-keys applied to instances  Key=tag-key,Values=my-tag-key-1,my-tag-key-2    Example 4: Use resource group names  Key=resource-groups:Name,Values=resource-group-name    Example 5: Use filters for resource group types  Key=resource-groups:ResourceTypeFilters,Values=resource-type-1,resource-type-2    For Key=resource-groups:ResourceTypeFilters, specify resource types in the following format  Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC    For more information about these examples formats, including the best use case for each one, see Examples: Register targets with a maintenance window in the AWS Systems Manager User Guide."
}

Optional Parameters
{
  "Description": "An optional description for the target.",
  "OwnerInformation": "User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.",
  "ClientToken": "User-provided idempotency token.",
  "Name": "An optional name for the target."
}
"""
RegisterTargetWithMaintenanceWindow(args) = ssm("RegisterTargetWithMaintenanceWindow", args)

"""
    GetParametersByPath()

Retrieve information about one or more parameters in a specific hierarchy.   Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 

Required Parameters
{
  "Path": "The hierarchy for the parameter. Hierarchies start with a forward slash (/) and end with the parameter name. A parameter name hierarchy can have a maximum of 15 levels. Here is an example of a hierarchy: /Finance/Prod/IAD/WinServ2016/license33 "
}

Optional Parameters
{
  "Recursive": "Retrieve all parameters within a hierarchy.  If a user has access to a path, then the user can access all levels of that path. For example, if a user has permission to access path /a, then the user can also access /a/b. Even if a user has explicitly been denied access in IAM for parameter /a/b, they can still call the GetParametersByPath API action recursively for /a and view /a/b. ",
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "ParameterFilters": "Filters to limit the request results.",
  "WithDecryption": "Retrieve all parameters in a hierarchy with their value decrypted."
}
"""
GetParametersByPath(args) = ssm("GetParametersByPath", args)

"""
    StartAutomationExecution()

Initiates execution of an Automation document.

Required Parameters
{
  "DocumentName": "The name of the Automation document to use for this execution."
}

Optional Parameters
{
  "TargetParameterName": "The name of the parameter used as the target resource for the rate-controlled execution. Required if you specify targets.",
  "TargetMaps": "A key-value mapping of document parameters to target resources. Both Targets and TargetMaps cannot be specified together.",
  "Mode": "The execution mode of the automation. Valid modes include the following: Auto and Interactive. The default mode is Auto.",
  "DocumentVersion": "The version of the Automation document to use for this execution.",
  "Tags": "Optional metadata that you assign to a resource. You can specify a maximum of five tags for an automation. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an automation to identify an environment or operating system. In this case, you could specify the following key name/value pairs:    Key=environment,Value=test     Key=OS,Value=Windows     To add tags to an existing patch baseline, use the AddTagsToResource action. ",
  "ClientToken": "User-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.",
  "MaxConcurrency": "The maximum number of targets allowed to run this task in parallel. You can specify a number, such as 10, or a percentage, such as 10%. The default value is 10.",
  "MaxErrors": "The number of errors that are allowed before the system stops running the automation on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops running the automation when the fourth error is received. If you specify 0, then the system stops running the automation on additional targets after the first error result is returned. If you run an automation on 50 resources and set max-errors to 10%, then the system stops running the automation on additional targets when the sixth error is received. Executions that are already running an automation when max-errors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one at a time.",
  "TargetLocations": "A location is a combination of AWS Regions and/or AWS accounts where you want to run the Automation. Use this action to start an Automation in multiple Regions and multiple accounts. For more information, see Running Automation workflows in multiple AWS Regions and accounts in the AWS Systems Manager User Guide. ",
  "Parameters": "A key-value map of execution parameters, which match the declared parameters in the Automation document.",
  "Targets": "A key-value mapping to target resources. Required if you specify TargetParameterName."
}
"""
StartAutomationExecution(args) = ssm("StartAutomationExecution", args)

"""
    DescribeAutomationStepExecutions()

Information about all active and terminated step executions in an Automation workflow.

Required Parameters
{
  "AutomationExecutionId": "The Automation execution ID for which you want step execution descriptions."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "ReverseOrder": "A boolean that indicates whether to list step executions in reverse order by start time. The default value is false.",
  "Filters": "One or more filters to limit the number of step executions returned by the request."
}
"""
DescribeAutomationStepExecutions(args) = ssm("DescribeAutomationStepExecutions", args)

"""
    DescribeMaintenanceWindowSchedule()

Retrieves information about upcoming executions of a maintenance window.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "WindowId": "The ID of the maintenance window to retrieve information about.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "ResourceType": "The type of resource you want to retrieve information about. For example, \"INSTANCE\".",
  "Targets": "The instance ID or key/value pair to retrieve information about.",
  "Filters": "Filters used to limit the range of results. For example, you can limit maintenance window executions to only those scheduled before or after a certain date and time."
}
"""

DescribeMaintenanceWindowSchedule() = ssm("DescribeMaintenanceWindowSchedule")
DescribeMaintenanceWindowSchedule(args) = ssm("DescribeMaintenanceWindowSchedule", args)

"""
    GetCalendarState()

Gets the state of the AWS Systems Manager Change Calendar at an optional, specified time. If you specify a time, GetCalendarState returns the state of the calendar at a specific time, and returns the next time that the Change Calendar state will transition. If you do not specify a time, GetCalendarState assumes the current time. Change Calendar entries have two possible states: OPEN or CLOSED. If you specify more than one calendar in a request, the command returns the status of OPEN only if all calendars in the request are open. If one or more calendars in the request are closed, the status returned is CLOSED. For more information about Systems Manager Change Calendar, see AWS Systems Manager Change Calendar in the AWS Systems Manager User Guide.

Required Parameters
{
  "CalendarNames": "The names or Amazon Resource Names (ARNs) of the Systems Manager documents that represent the calendar entries for which you want to get the state."
}

Optional Parameters
{
  "AtTime": "(Optional) The specific time for which you want to get calendar state information, in ISO 8601 format. If you do not add AtTime, the current time is assumed."
}
"""
GetCalendarState(args) = ssm("GetCalendarState", args)

"""
    DescribeInventoryDeletions()

Describes a specific delete inventory operation.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "DeletionId": "Specify the delete inventory ID for which you want information. This ID was returned by the DeleteInventory action."
}
"""

DescribeInventoryDeletions() = ssm("DescribeInventoryDeletions")
DescribeInventoryDeletions(args) = ssm("DescribeInventoryDeletions", args)

"""
    DescribeInstanceInformation()

Describes one or more of your instances, including information about the operating system platform, the version of SSM Agent installed on the instance, instance status, and so on. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.  The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for EC2 instances. 

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results. ",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters. Use a filter to return a more specific list of instances. You can filter based on tags applied to EC2 instances. Use this Filters data type instead of InstanceInformationFilterList, which is deprecated.",
  "InstanceInformationFilterList": "This is a legacy method. We recommend that you don't use this method. Instead, use the Filters data type. Filters enables you to return instance information by filtering based on tags applied to managed instances.  Attempting to use InstanceInformationFilterList and Filters leads to an exception error.  "
}
"""

DescribeInstanceInformation() = ssm("DescribeInstanceInformation")
DescribeInstanceInformation(args) = ssm("DescribeInstanceInformation", args)

"""
    RegisterTaskWithMaintenanceWindow()

Adds a new task to a maintenance window.

Required Parameters
{
  "MaxConcurrency": "The maximum number of targets this task can be run for in parallel.",
  "WindowId": "The ID of the maintenance window the task should be added to.",
  "MaxErrors": "The maximum number of errors allowed before this task stops being scheduled.",
  "TaskType": "The type of task being registered.",
  "TaskArn": "The ARN of the task to run.",
  "Targets": "The targets (either instances or maintenance window targets). Specify instances using the following format:   Key=InstanceIds,Values=&lt;instance-id-1&gt;,&lt;instance-id-2&gt;  Specify maintenance window targets using the following format:  Key=WindowTargetIds;,Values=&lt;window-target-id-1&gt;,&lt;window-target-id-2&gt; "
}

Optional Parameters
{
  "TaskInvocationParameters": "The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty. ",
  "Description": "An optional description for the task.",
  "LoggingInfo": "A structure containing information about an S3 bucket to write instance-level logs to.    LoggingInfo has been deprecated. To specify an S3 bucket to contain logs, instead use the OutputS3BucketName and OutputS3KeyPrefix options in the TaskInvocationParameters structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see MaintenanceWindowTaskInvocationParameters. ",
  "Priority": "The priority of the task in the maintenance window, the lower the number the higher the priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the same priority scheduled in parallel.",
  "ServiceRoleArn": "The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run RegisterTaskWithMaintenanceWindow. For more information, see the following topics in the in the AWS Systems Manager User Guide:    Using service-linked roles for Systems Manager     Should I use a service-linked role or a custom service role to run maintenance window tasks?    ",
  "ClientToken": "User-provided idempotency token.",
  "Name": "An optional name for the task.",
  "TaskParameters": "The parameters that should be passed to the task when it is run.   TaskParameters has been deprecated. To specify parameters to pass to a task when it runs, instead use the Parameters option in the TaskInvocationParameters structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see MaintenanceWindowTaskInvocationParameters. "
}
"""
RegisterTaskWithMaintenanceWindow(args) = ssm("RegisterTaskWithMaintenanceWindow", args)

"""
    UpdateDocument()

Updates one or more values for an SSM document.

Required Parameters
{
  "Content": "A valid JSON or YAML string.",
  "Name": "The name of the document that you want to update."
}

Optional Parameters
{
  "TargetType": "Specify a new target type for the document.",
  "Attachments": "A list of key and value pairs that describe attachments to a version of a document.",
  "DocumentVersion": "(Required) The latest version of the document that you want to update. The latest document version can be specified using the  LATEST variable or by the version number. Updating a previous version of a document is not supported.",
  "DocumentFormat": "Specify the document format for the new document version. Systems Manager supports JSON and YAML documents. JSON is the default format.",
  "VersionName": "An optional field specifying the version of the artifact you are updating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed."
}
"""
UpdateDocument(args) = ssm("UpdateDocument", args)

"""
    DescribeMaintenanceWindowExecutionTaskInvocations()

Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution.

Required Parameters
{
  "TaskId": "The ID of the specific task in the maintenance window task that should be retrieved.",
  "WindowExecutionId": "The ID of the maintenance window execution the task is part of."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED."
}
"""
DescribeMaintenanceWindowExecutionTaskInvocations(args) = ssm("DescribeMaintenanceWindowExecutionTaskInvocations", args)

"""
    UpdateMaintenanceWindow()

Updates an existing maintenance window. Only specified parameters are modified.  The value you specify for Duration determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for Cutoff. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for Cutoff is one hour, no maintenance window tasks can start after 5 PM. 

Required Parameters
{
  "WindowId": "The ID of the maintenance window to update."
}

Optional Parameters
{
  "EndDate": "The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.",
  "StartDate": "The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the Time Zone Database on the IANA website.",
  "Duration": "The duration of the maintenance window in hours.",
  "Name": "The name of the maintenance window.",
  "Schedule": "The schedule of the maintenance window in the form of a cron or rate expression.",
  "ScheduleOffset": "The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM.  cron(0 30 23 ? * TUE#3 *)  If the schedule offset is 2, the maintenance window won't run until two days later.",
  "AllowUnassociatedTargets": "Whether targets must be registered with the maintenance window before tasks can be defined for those targets.",
  "Description": "An optional description for the update request.",
  "Cutoff": "The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.",
  "ScheduleTimezone": "The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the Time Zone Database on the IANA website.",
  "Enabled": "Whether the maintenance window is enabled.",
  "Replace": "If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null. "
}
"""
UpdateMaintenanceWindow(args) = ssm("UpdateMaintenanceWindow", args)

"""
    CreateDocument()

Creates a Systems Manager (SSM) document. An SSM document defines the actions that Systems Manager performs on your managed instances. For more information about SSM documents, including information about supported schemas, features, and syntax, see AWS Systems Manager Documents in the AWS Systems Manager User Guide.

Required Parameters
{
  "Content": "The content for the new SSM document in JSON or YAML format. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command. For examples, see the following topics in the AWS Systems Manager User Guide.    Create an SSM document (AWS API)     Create an SSM document (AWS CLI)     Create an SSM document (API)   ",
  "Name": "A name for the Systems Manager document.  You can't use the following strings as document name prefixes. These are reserved by AWS for use as document name prefixes:    aws-     amazon     amzn    "
}

Optional Parameters
{
  "TargetType": "Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see AWS resource and property types reference in the AWS CloudFormation User Guide. ",
  "Attachments": "A list of key and value pairs that describe attachments to a version of a document.",
  "DocumentType": "The type of document to create.",
  "DocumentFormat": "Specify the document format for the request. The document format can be JSON, YAML, or TEXT. JSON is the default format.",
  "VersionName": "An optional field specifying the version of the artifact you are creating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.",
  "Tags": "Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an SSM document to identify the types of targets or the environment where it will run. In this case, you could specify the following key name/value pairs:    Key=OS,Value=Windows     Key=Environment,Value=Production     To add tags to an existing SSM document, use the AddTagsToResource action. ",
  "Requires": "A list of SSM documents required by a document. This parameter is used exclusively by AWS AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also specify a required document for validation purposes. In this case, an ApplicationConfiguration document requires an ApplicationConfigurationSchema document for validation purposes. For more information, see AWS AppConfig in the AWS Systems Manager User Guide."
}
"""
CreateDocument(args) = ssm("CreateDocument", args)

"""
    CreateAssociationBatch()

Associates the specified Systems Manager document with the specified instances or targets. When you associate a document with one or more instances using instance IDs or tags, SSM Agent running on the instance processes the document and configures the instance as specified. If you associate a document with an instance that already has an associated document, the system returns the AssociationAlreadyExists exception.

Required Parameters
{
  "Entries": "One or more associations."
}
"""
CreateAssociationBatch(args) = ssm("CreateAssociationBatch", args)

"""
    CreateOpsItem()

Creates a new OpsItem. You must have permission in AWS Identity and Access Management (IAM) to create a new OpsItem. For more information, see Getting started with OpsCenter in the AWS Systems Manager User Guide. Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see AWS Systems Manager OpsCenter in the AWS Systems Manager User Guide. 

Required Parameters
{
  "Description": "Information about the OpsItem. ",
  "Source": "The origin of the OpsItem, such as Amazon EC2 or Systems Manager.  The source name can't contain the following strings: aws, amazon, and amzn.  ",
  "Title": "A short heading that describes the nature of the OpsItem and the impacted resource."
}

Optional Parameters
{
  "OperationalData": "Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB.  Operational data keys can't begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.  You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the DescribeOpsItems API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the GetOpsItem API action). Use the /aws/resources key in OperationalData to specify a related resource in the request. Use the /aws/automations key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see Creating OpsItems manually in the AWS Systems Manager User Guide.",
  "Tags": "Optional metadata that you assign to a resource. You can restrict access to OpsItems by using an inline IAM policy that specifies tags. For more information, see Getting started with OpsCenter in the AWS Systems Manager User Guide. Tags use a key-value pair. For example:  Key=Department,Value=Finance   To add tags to an existing OpsItem, use the AddTagsToResource action. ",
  "Notifications": "The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.",
  "Priority": "The importance of this OpsItem in relation to other OpsItems in the system.",
  "RelatedOpsItems": "One or more OpsItems that share something in common with the current OpsItems. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.",
  "Category": "Specify a category to assign to an OpsItem. ",
  "Severity": "Specify a severity to assign to an OpsItem."
}
"""
CreateOpsItem(args) = ssm("CreateOpsItem", args)

"""
    ListTagsForResource()

Returns a list of the tags assigned to the specified resource.

Required Parameters
{
  "ResourceType": "Returns a list of tags for a specific resource type.",
  "ResourceId": "The resource ID for which you want to see a list of tags."
}
"""
ListTagsForResource(args) = ssm("ListTagsForResource", args)

"""
    DescribeMaintenanceWindowTargets()

Lists the targets registered with the maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window whose targets should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Optional filters that can be used to narrow down the scope of the returned window targets. The supported filter keys are Type, WindowTargetId and OwnerInformation."
}
"""
DescribeMaintenanceWindowTargets(args) = ssm("DescribeMaintenanceWindowTargets", args)

"""
    DescribeParameters()

Get information about a parameter.  Request results are returned on a best-effort basis. If you specify MaxResults in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of MaxResults. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a NextToken. You can specify the NextToken in a subsequent call to get the next set of results. 

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "ParameterFilters": "Filters to limit the request results.",
  "Filters": "This data type is deprecated. Instead, use ParameterFilters."
}
"""

DescribeParameters() = ssm("DescribeParameters")
DescribeParameters(args) = ssm("DescribeParameters", args)

"""
    DescribeAutomationExecutions()

Provides details about all active and terminated Automation executions.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Filters used to limit the scope of executions that are requested."
}
"""

DescribeAutomationExecutions() = ssm("DescribeAutomationExecutions")
DescribeAutomationExecutions(args) = ssm("DescribeAutomationExecutions", args)

"""
    GetAutomationExecution()

Get detailed information about a particular Automation execution.

Required Parameters
{
  "AutomationExecutionId": "The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated."
}
"""
GetAutomationExecution(args) = ssm("GetAutomationExecution", args)

"""
    GetDeployablePatchSnapshotForInstance()

Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-RunPatchBaseline Systems Manager document. 

Required Parameters
{
  "SnapshotId": "The user-defined snapshot ID.",
  "InstanceId": "The ID of the instance for which the appropriate patch snapshot should be retrieved."
}
"""
GetDeployablePatchSnapshotForInstance(args) = ssm("GetDeployablePatchSnapshotForInstance", args)

"""
    ResumeSession()

Reconnects a session to an instance after it has been disconnected. Connections can be resumed for disconnected sessions, but not terminated sessions.  This command is primarily for use by client machines to automatically reconnect during intermittent network issues. It is not intended for any other use. 

Required Parameters
{
  "SessionId": "The ID of the disconnected session to resume."
}
"""
ResumeSession(args) = ssm("ResumeSession", args)

"""
    DeregisterTaskFromMaintenanceWindow()

Removes a task from a maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window the task should be removed from.",
  "WindowTaskId": "The ID of the task to remove from the maintenance window."
}
"""
DeregisterTaskFromMaintenanceWindow(args) = ssm("DeregisterTaskFromMaintenanceWindow", args)

"""
    DescribeAssociationExecutions()

Use this API action to view all executions for a specific association ID. 

Required Parameters
{
  "AssociationId": "The association ID for which you want to view execution history details."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "Filters": "Filters for the request. You can specify the following filters and values. ExecutionId (EQUAL) Status (EQUAL) CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)"
}
"""
DescribeAssociationExecutions(args) = ssm("DescribeAssociationExecutions", args)

"""
    DeleteInventory()

Delete a custom inventory type or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.

Required Parameters
{
  "TypeName": "The name of the custom inventory type for which you want to delete either all previously collected data or the inventory type itself. "
}

Optional Parameters
{
  "DryRun": "Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the DryRun option.",
  "ClientToken": "User-provided idempotency token.",
  "SchemaDeleteOption": "Use the SchemaDeleteOption to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options: DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the PutInventory action for a version greater than the disabled version. DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want."
}
"""
DeleteInventory(args) = ssm("DeleteInventory", args)

"""
    DeleteParameter()

Delete a parameter from the system.

Required Parameters
{
  "Name": "The name of the parameter to delete."
}
"""
DeleteParameter(args) = ssm("DeleteParameter", args)

"""
    DescribeEffectivePatchesForPatchBaseline()

Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline. Note that this API applies only to Windows patch baselines.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to retrieve the effective patches for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of patches to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeEffectivePatchesForPatchBaseline(args) = ssm("DescribeEffectivePatchesForPatchBaseline", args)

"""
    DescribeDocumentPermission()

Describes the permissions for a Systems Manager document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user's AWS account ID) or publicly (All). 

Required Parameters
{
  "PermissionType": "The permission type for the document. The permission type can be Share.",
  "Name": "The name of the document for which you are the owner."
}
"""
DescribeDocumentPermission(args) = ssm("DescribeDocumentPermission", args)

"""
    ListAssociations()

Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "AssociationFilterList": "One or more filters. Use a filter to return a more specific list of results."
}
"""

ListAssociations() = ssm("ListAssociations")
ListAssociations(args) = ssm("ListAssociations", args)

"""
    ListInventoryEntries()

A list of inventory items returned by the request.

Required Parameters
{
  "InstanceId": "The instance ID for which you want inventory information.",
  "TypeName": "The type of inventory item for which you want information."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters. Use a filter to return a more specific list of results."
}
"""
ListInventoryEntries(args) = ssm("ListInventoryEntries", args)

"""
    AddTagsToResource()

Adds or overwrites one or more tags for the specified resource. Tags are metadata that you can assign to your documents, managed instances, maintenance windows, Parameter Store parameters, and patch baselines. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test. Each resource can have a maximum of 50 tags.  We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to and are interpreted strictly as a string of characters.  For more information about using tags with EC2 instances, see Tagging your Amazon EC2 resources in the Amazon EC2 User Guide.

Required Parameters
{
  "Tags": " One or more tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.   Do not enter personally identifiable information in this field. ",
  "ResourceType": "Specifies the type of resource you are tagging.  The ManagedInstance type for this API action is for on-premises managed instances. You must specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f. ",
  "ResourceId": "The resource ID you want to tag. Use the ID of the resource. Here are some examples: ManagedInstance: mi-012345abcde MaintenanceWindow: mw-012345abcde PatchBaseline: pb-012345abcde For the Document and Parameter values, use the name of the resource.  The ManagedInstance type for this API action is only for on-premises managed instances. You must specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f. "
}
"""
AddTagsToResource(args) = ssm("AddTagsToResource", args)

"""
    SendCommand()

Runs commands on one or more managed instances.

Required Parameters
{
  "DocumentName": "Required. The name of the Systems Manager document to run. This can be a public document or a custom document."
}

Optional Parameters
{
  "Comment": "User-specified information about the command, such as a brief description of what the command should do.",
  "DocumentHashType": "Sha256 or Sha1.  Sha1 hashes have been deprecated. ",
  "OutputS3Region": "(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.",
  "DocumentVersion": "The SSM document version to use in the request. You can specify  DEFAULT,  LATEST, or a specific version number. If you run commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example: --document-version \"  DEFAULT\" --document-version \"  LATEST\" --document-version \"3\"",
  "CloudWatchOutputConfig": "Enables Systems Manager to send Run Command output to Amazon CloudWatch Logs. ",
  "ServiceRoleArn": "The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.",
  "TimeoutSeconds": "If this time is reached and the command has not already started running, it will not run.",
  "InstanceIds": "The IDs of the instances where the command should run. Specifying instance IDs is most useful when you are targeting a limited number of instances, though you can specify up to 50 IDs. To target a larger number of instances, or if you prefer not to list individual instance IDs, we recommend using the Targets option instead. Using Targets, which accepts tag key-value pairs to identify the instances to send commands to, you can a send command to tens, hundreds, or thousands of instances at once. For more information about how to use targets, see Using targets and rate controls to send commands to a fleet in the AWS Systems Manager User Guide.",
  "MaxConcurrency": "(Optional) The maximum number of instances that are allowed to run the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see Using concurrency controls in the AWS Systems Manager User Guide.",
  "MaxErrors": "The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 0. For more information about how to use MaxErrors, see Using error controls in the AWS Systems Manager User Guide.",
  "OutputS3KeyPrefix": "The directory structure within the S3 bucket where the responses should be stored.",
  "Parameters": "The required and optional parameters specified in the document being run.",
  "NotificationConfig": "Configurations for sending notifications.",
  "Targets": "An array of search criteria that targets instances using a Key,Value combination that you specify. Specifying targets is most useful when you want to send a command to a large number of instances at once. Using Targets, which accepts tag key-value pairs to identify instances, you can send a command to tens, hundreds, or thousands of instances at once. To send a command to a smaller number of instances, you can use the InstanceIds option instead. For more information about how to use targets, see Sending commands to a fleet in the AWS Systems Manager User Guide.",
  "DocumentHash": "The Sha256 or Sha1 hash created by the system when the document was created.   Sha1 hashes have been deprecated. ",
  "OutputS3BucketName": "The name of the S3 bucket where command execution responses should be stored."
}
"""
SendCommand(args) = ssm("SendCommand", args)

"""
    RemoveTagsFromResource()

Removes tag keys from the specified resource.

Required Parameters
{
  "ResourceType": "The type of resource from which you want to remove a tag.  The ManagedInstance type for this API action is only for on-premises managed instances. Specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f. ",
  "ResourceId": "The ID of the resource from which you want to remove tags. For example: ManagedInstance: mi-012345abcde MaintenanceWindow: mw-012345abcde PatchBaseline: pb-012345abcde For the Document and Parameter values, use the name of the resource.  The ManagedInstance type for this API action is only for on-premises managed instances. Specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f. ",
  "TagKeys": "Tag keys that you want to remove from the specified resource."
}
"""
RemoveTagsFromResource(args) = ssm("RemoveTagsFromResource", args)

"""
    StartSession()

Initiates a connection to a target (for example, an instance) for a Session Manager session. Returns a URL and token that can be used to open a WebSocket connection for sending input and receiving outputs.  AWS CLI usage: start-session is an interactive command that requires the Session Manager plugin to be installed on the client machine making the call. For information, see Install the Session Manager plugin for the AWS CLI in the AWS Systems Manager User Guide. AWS Tools for PowerShell usage: Start-SSMSession is not currently supported by AWS Tools for PowerShell on Windows local machines. 

Required Parameters
{
  "Target": "The instance to connect to for the session."
}

Optional Parameters
{
  "DocumentName": "The name of the SSM document to define the parameters and plugin settings for the session. For example, SSM-SessionManagerRunShell. You can call the GetDocument API to verify the document exists before attempting to start a session. If no document name is provided, a shell to the instance is launched by default.",
  "Parameters": "Reserved for future use."
}
"""
StartSession(args) = ssm("StartSession", args)

"""
    CancelCommand()

Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.

Required Parameters
{
  "CommandId": "The ID of the command you want to cancel."
}

Optional Parameters
{
  "InstanceIds": "(Optional) A list of instance IDs on which you want to cancel the command. If not provided, the command is canceled on every instance on which it was requested."
}
"""
CancelCommand(args) = ssm("CancelCommand", args)

"""
    DeregisterPatchBaselineForPatchGroup()

Removes a patch group from a patch baseline.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to deregister the patch group from.",
  "PatchGroup": "The name of the patch group that should be deregistered from the patch baseline."
}
"""
DeregisterPatchBaselineForPatchGroup(args) = ssm("DeregisterPatchBaselineForPatchGroup", args)

"""
    DescribeAssociationExecutionTargets()

Use this API action to view information about a specific execution of a specific association.

Required Parameters
{
  "AssociationId": "The association ID that includes the execution for which you want to view details.",
  "ExecutionId": "The execution ID for which you want to view details."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "A token to start the list. Use this token to get the next set of results. ",
  "Filters": "Filters for the request. You can specify the following filters and values. Status (EQUAL) ResourceId (EQUAL) ResourceType (EQUAL)"
}
"""
DescribeAssociationExecutionTargets(args) = ssm("DescribeAssociationExecutionTargets", args)

"""
    DescribePatchProperties()

Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches. You can use the reported properties in the filters you specify in requests for actions such as CreatePatchBaseline, UpdatePatchBaseline, DescribeAvailablePatches, and DescribePatchBaselines. The following section lists the properties that can be used in filters for each major operating system type:  WINDOWS  Valid properties: PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY  AMAZON_LINUX  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  AMAZON_LINUX_2  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  UBUNTU   Valid properties: PRODUCT, PRIORITY  REDHAT_ENTERPRISE_LINUX  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  SUSE  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  CENTOS  Valid properties: PRODUCT, CLASSIFICATION, SEVERITY  

Required Parameters
{
  "OperatingSystem": "The operating system type for which to list patches.",
  "Property": "The patch property for which you want to view patch details. "
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "PatchSet": "Indicates whether to list patches for the Windows operating system or for Microsoft applications. Not applicable for Linux operating systems."
}
"""
DescribePatchProperties(args) = ssm("DescribePatchProperties", args)

"""
    RegisterPatchBaselineForPatchGroup()

Registers a patch baseline for a patch group.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to register the patch group with.",
  "PatchGroup": "The name of the patch group that should be registered with the patch baseline."
}
"""
RegisterPatchBaselineForPatchGroup(args) = ssm("RegisterPatchBaselineForPatchGroup", args)

"""
    DescribeDocument()

Describes the specified Systems Manager document.

Required Parameters
{
  "Name": "The name of the Systems Manager document."
}

Optional Parameters
{
  "DocumentVersion": "The document version for which you want information. Can be a specific version or the default version.",
  "VersionName": "An optional field specifying the version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed."
}
"""
DescribeDocument(args) = ssm("DescribeDocument", args)

"""
    GetDefaultPatchBaseline()

Retrieves the default patch baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system. If you do not specify an operating system value, the default patch baseline for Windows is returned.

Optional Parameters
{
  "OperatingSystem": "Returns the default patch baseline for the specified operating system."
}
"""

GetDefaultPatchBaseline() = ssm("GetDefaultPatchBaseline")
GetDefaultPatchBaseline(args) = ssm("GetDefaultPatchBaseline", args)

"""
    DescribeMaintenanceWindowExecutionTasks()

For a given maintenance window execution, lists the tasks that were run.

Required Parameters
{
  "WindowExecutionId": "The ID of the maintenance window execution whose task executions should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED. "
}
"""
DescribeMaintenanceWindowExecutionTasks(args) = ssm("DescribeMaintenanceWindowExecutionTasks", args)

"""
    CreateMaintenanceWindow()

Creates a new maintenance window.  The value you specify for Duration determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for Cutoff. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for Cutoff is one hour, no maintenance window tasks can start after 5 PM. 

Required Parameters
{
  "Schedule": "The schedule of the maintenance window in the form of a cron or rate expression.",
  "Cutoff": "The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.",
  "Duration": "The duration of the maintenance window in hours.",
  "AllowUnassociatedTargets": "Enables a maintenance window task to run on managed instances, even if you have not registered those instances as targets. If enabled, then you must specify the unregistered instances (by instance ID) when you register a task with the maintenance window. If you don't enable this option, then you must specify previously-registered targets when you register a task with the maintenance window.",
  "Name": "The name of the maintenance window."
}

Optional Parameters
{
  "EndDate": "The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.",
  "Description": "An optional description for the maintenance window. We recommend specifying a description to help you organize your maintenance windows. ",
  "ScheduleOffset": "The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run on the third Tuesday of every month at 11:30 PM.  cron(0 30 23 ? * TUE#3 *)  If the schedule offset is 2, the maintenance window won't run until two days later.",
  "Tags": "Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a maintenance window to identify the type of tasks it will run, the types of targets, and the environment it will run in. In this case, you could specify the following key name/value pairs:    Key=TaskType,Value=AgentUpdate     Key=OS,Value=Windows     Key=Environment,Value=Production     To add tags to an existing maintenance window, use the AddTagsToResource action. ",
  "StartDate": "The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become active. StartDate allows you to delay activation of the maintenance window until the specified future date.",
  "ScheduleTimezone": "The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the Time Zone Database on the IANA website.",
  "ClientToken": "User-provided idempotency token."
}
"""
CreateMaintenanceWindow(args) = ssm("CreateMaintenanceWindow", args)

"""
    UpdateMaintenanceWindowTarget()

Modifies the target of an existing maintenance window. You can change the following:   Name   Description   Owner   IDs for an ID target   Tags for a Tag target   From any supported tag type to another. The three supported tag types are ID target, Tag target, and resource group. For more information, see Target.    If a parameter is null, then the corresponding field is not modified. 

Required Parameters
{
  "WindowId": "The maintenance window ID with which to modify the target.",
  "WindowTargetId": "The target ID to modify."
}

Optional Parameters
{
  "Description": "An optional description for the update.",
  "OwnerInformation": "User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.",
  "Targets": "The targets to add or replace.",
  "Name": "A name for the update.",
  "Replace": "If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null."
}
"""
UpdateMaintenanceWindowTarget(args) = ssm("UpdateMaintenanceWindowTarget", args)

"""
    GetParameterHistory()

Query a list of all parameters used by the AWS account.

Required Parameters
{
  "Name": "The name of a parameter you want to query."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "WithDecryption": "Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types."
}
"""
GetParameterHistory(args) = ssm("GetParameterHistory", args)

"""
    GetParameters()

Get details of a parameter. Don't confuse this API action with the GetParameter API action.

Required Parameters
{
  "Names": "Names of the parameters for which you want to query information."
}

Optional Parameters
{
  "WithDecryption": "Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types."
}
"""
GetParameters(args) = ssm("GetParameters", args)

"""
    CreatePatchBaseline()

Creates a patch baseline.  For information about valid key and value pairs in PatchFilters for each supported operating system type, see PatchFilter. 

Required Parameters
{
  "Name": "The name of the patch baseline."
}

Optional Parameters
{
  "ApprovedPatchesComplianceLevel": "Defines the compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. The default value is UNSPECIFIED.",
  "GlobalFilters": "A set of global filters used to include patches in the baseline.",
  "Tags": "Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a patch baseline to identify the severity level of patches it specifies and the operating system family it applies to. In this case, you could specify the following key name/value pairs:    Key=PatchSeverity,Value=Critical     Key=OS,Value=Windows     To add tags to an existing patch baseline, use the AddTagsToResource action. ",
  "ClientToken": "User-provided idempotency token.",
  "RejectedPatches": "A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see About package name formats for approved and rejected patch lists in the AWS Systems Manager User Guide.",
  "RejectedPatchesAction": "The action for Patch Manager to take on patches included in the RejectedPackages list.    ALLOW_AS_DEPENDENCY: A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as InstalledOther. This is the default action if no option is specified.    BLOCK: Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as InstalledRejected.  ",
  "ApprovedPatchesEnableNonSecurity": "Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.",
  "Description": "A description of the patch baseline.",
  "ApprovalRules": "A set of rules used to include patches in the baseline.",
  "Sources": "Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.",
  "ApprovedPatches": "A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see About package name formats for approved and rejected patch lists in the AWS Systems Manager User Guide.",
  "OperatingSystem": "Defines the operating system the patch baseline applies to. The Default value is WINDOWS."
}
"""
CreatePatchBaseline(args) = ssm("CreatePatchBaseline", args)

"""
    DeleteDocument()

Deletes the Systems Manager document and all instance associations to the document. Before you delete the document, we recommend that you use DeleteAssociation to disassociate all instances that are associated with the document.

Required Parameters
{
  "Name": "The name of the document."
}

Optional Parameters
{
  "DocumentVersion": "The version of the document that you want to delete. If not provided, all versions of the document are deleted.",
  "Force": "Some SSM document types require that you specify a Force flag before you can delete the document. For example, you must specify a Force flag to delete a document of type ApplicationConfigurationSchema. You can restrict access to the Force flag in an AWS Identity and Access Management (IAM) policy.",
  "VersionName": "The version name of the document that you want to delete. If not provided, all versions of the document are deleted."
}
"""
DeleteDocument(args) = ssm("DeleteDocument", args)

"""
    ListCommandInvocations()

An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.

Optional Parameters
{
  "MaxResults": "(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "(Optional) The token for the next set of items to return. (You received this token from a previous call.)",
  "InstanceId": "(Optional) The command execution details for a specific instance ID.",
  "CommandId": "(Optional) The invocations for a specific command ID.",
  "Filters": "(Optional) One or more filters. Use a filter to return a more specific list of results.",
  "Details": "(Optional) If set this returns the response of the command executions and any command output. By default this is set to False. "
}
"""

ListCommandInvocations() = ssm("ListCommandInvocations")
ListCommandInvocations(args) = ssm("ListCommandInvocations", args)

"""
    TerminateSession()

Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the instance. A terminated session cannot be resumed.

Required Parameters
{
  "SessionId": "The ID of the session to terminate."
}
"""
TerminateSession(args) = ssm("TerminateSession", args)

"""
    CreateResourceDataSync()

A resource data sync helps you view data from multiple sources in a single location. Systems Manager offers two types of resource data sync: SyncToDestination and SyncFromSource. You can configure Systems Manager Inventory to use the SyncToDestination type to synchronize Inventory data from multiple AWS Regions to a single S3 bucket. For more information, see Configuring Resource Data Sync for Inventory in the AWS Systems Manager User Guide. You can configure Systems Manager Explorer to use the SyncFromSource type to synchronize operational work items (OpsItems) and operational data (OpsData) from multiple AWS Regions to a single S3 bucket. This type can synchronize OpsItems and OpsData from multiple AWS accounts and Regions or EntireOrganization by using AWS Organizations. For more information, see Setting up Systems Manager Explorer to display data from multiple accounts and Regions in the AWS Systems Manager User Guide. A resource data sync is an asynchronous operation that returns immediately. After a successful initial sync is completed, the system continuously syncs data. To check the status of a sync, use the ListResourceDataSync.  By default, data is not encrypted in Amazon S3. We strongly recommend that you enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you secure access to the Amazon S3 bucket by creating a restrictive bucket policy.  

Required Parameters
{
  "SyncName": "A name for the configuration."
}

Optional Parameters
{
  "SyncSource": "Specify information about the data sources to synchronize. This parameter is required if the SyncType value is SyncFromSource.",
  "S3Destination": "Amazon S3 configuration details for the sync. This parameter is required if the SyncType value is SyncToDestination.",
  "SyncType": "Specify SyncToDestination to create a resource data sync that synchronizes data to an S3 bucket for Inventory. If you specify SyncToDestination, you must provide a value for S3Destination. Specify SyncFromSource to synchronize data from a single account and multiple Regions, or multiple AWS accounts and Regions, as listed in AWS Organizations for Explorer. If you specify SyncFromSource, you must provide a value for SyncSource. The default value is SyncToDestination."
}
"""
CreateResourceDataSync(args) = ssm("CreateResourceDataSync", args)

"""
    UpdateAssociation()

Updates an association. You can update the association name and version, the document version, schedule, parameters, and Amazon S3 output.  In order to call this API action, your IAM user account, group, or role must be configured with permission to call the DescribeAssociation API action. If you don't have permission to call DescribeAssociation, then you receive the following error: An error occurred (AccessDeniedException) when calling the UpdateAssociation operation: User: &lt;user_arn&gt; is not authorized to perform: ssm:DescribeAssociation on resource: &lt;resource_arn&gt;   When you update an association, the association immediately runs against the specified targets. 

Required Parameters
{
  "AssociationId": "The ID of the association you want to update. "
}

Optional Parameters
{
  "AutomationTargetParameterName": "Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.",
  "DocumentVersion": "The document version you want update for the association. ",
  "ScheduleExpression": "The cron expression used to schedule the association that you want to update.",
  "OutputLocation": "An S3 bucket where you want to store the results of this request.",
  "SyncCompliance": "The mode for generating association compliance. You can specify AUTO or MANUAL. In AUTO mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is COMPLIANT. If the association execution doesn't run successfully, the association is NON-COMPLIANT. In MANUAL mode, you must specify the AssociationId as a parameter for the PutComplianceItems API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the PutComplianceItems API action. By default, all associations use AUTO mode.",
  "AssociationVersion": "This parameter is provided for concurrency control purposes. You must specify the latest association version in the service. If you want to ensure that this request succeeds, either specify  LATEST, or omit this parameter.",
  "Name": "The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents. You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account. For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format:  arn:aws:ssm:region:account-id:document/document-name   For example:  arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document  For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, AWS-ApplyPatchBaseline or My-Document.",
  "AssociationName": "The name of the association that you want to update.",
  "MaxConcurrency": "The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time. If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.",
  "MaxErrors": "The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received. Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.",
  "ApplyOnlyAtCronInterval": "By default, when you update an association, the system runs it immediately after it is updated and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you update it. Also, if you specified this option when you created the association, you can reset it. To do so, specify the no-apply-only-at-cron-interval parameter when you update the association from the command line. This parameter forces the association to run immediately after updating it and according to the interval specified.",
  "Parameters": "The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}",
  "ComplianceSeverity": "The severity level to assign to the association.",
  "Targets": "The targets of the association."
}
"""
UpdateAssociation(args) = ssm("UpdateAssociation", args)

"""
    PutInventory()

Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.

Required Parameters
{
  "Items": "The inventory items that you want to add or update on instances.",
  "InstanceId": "An instance ID where you want to add or update inventory items."
}
"""
PutInventory(args) = ssm("PutInventory", args)

"""
    DescribeInstanceAssociationsStatus()

The status of the associations for the instance(s).

Required Parameters
{
  "InstanceId": "The instance IDs for which you want association status information."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeInstanceAssociationsStatus(args) = ssm("DescribeInstanceAssociationsStatus", args)

"""
    GetCommandInvocation()

Returns detailed information about command execution for an invocation or plugin. 

Required Parameters
{
  "InstanceId": "(Required) The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.",
  "CommandId": "(Required) The parent command ID of the invocation plugin."
}

Optional Parameters
{
  "PluginName": "(Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned. Plugin names are also referred to as step names in Systems Manager documents."
}
"""
GetCommandInvocation(args) = ssm("GetCommandInvocation", args)

"""
    DescribeInstancePatchStatesForPatchGroup()

Retrieves the high-level patch state for the instances in the specified patch group.

Required Parameters
{
  "PatchGroup": "The name of the patch group for which the patch state information should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of patches to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Each entry in the array is a structure containing: Key (string between 1 and 200 characters)  Values (array containing a single string)  Type (string \"Equal\", \"NotEqual\", \"LessThan\", \"GreaterThan\")"
}
"""
DescribeInstancePatchStatesForPatchGroup(args) = ssm("DescribeInstancePatchStatesForPatchGroup", args)

"""
    UpdateResourceDataSync()

Update a resource data sync. After you create a resource data sync for a Region, you can't change the account options for that sync. For example, if you create a sync in the us-east-2 (Ohio) Region and you choose the Include only the current account option, you can't edit that sync later and choose the Include all accounts from my AWS Organizations configuration option. Instead, you must delete the first resource data sync, and create a new one.  This API action only supports a resource data sync that was created with a SyncFromSource SyncType. 

Required Parameters
{
  "SyncSource": "Specify information about the data sources to synchronize.",
  "SyncName": "The name of the resource data sync you want to update.",
  "SyncType": "The type of resource data sync. The supported SyncType is SyncFromSource."
}
"""
UpdateResourceDataSync(args) = ssm("UpdateResourceDataSync", args)

"""
    GetMaintenanceWindowExecution()

Retrieves details about a specific a maintenance window execution.

Required Parameters
{
  "WindowExecutionId": "The ID of the maintenance window execution that includes the task."
}
"""
GetMaintenanceWindowExecution(args) = ssm("GetMaintenanceWindowExecution", args)

"""
    CreateActivation()

Generates an activation code and activation ID you can use to register your on-premises server or virtual machine (VM) with Systems Manager. Registering these machines with Systems Manager makes it possible to manage them using Systems Manager capabilities. You use the activation code and ID when installing SSM Agent on machines in your hybrid environment. For more information about requirements for managing on-premises instances and VMs using Systems Manager, see Setting up AWS Systems Manager for hybrid environments in the AWS Systems Manager User Guide.   On-premises servers or VMs that are registered with Systems Manager and EC2 instances that you manage with Systems Manager are all called managed instances. 

Required Parameters
{
  "IamRole": "The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. This IAM role must provide AssumeRole permissions for the Systems Manager service principal ssm.amazonaws.com. For more information, see Create an IAM service role for a hybrid environment in the AWS Systems Manager User Guide."
}

Optional Parameters
{
  "Description": "A user-defined description of the resource that you want to register with Systems Manager.   Do not enter personally identifiable information in this field. ",
  "ExpirationDate": "The date by which this activation request should expire. The default value is 24 hours.",
  "Tags": "Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an activation to identify which servers or virtual machines (VMs) in your on-premises environment you intend to activate. In this case, you could specify the following key name/value pairs:    Key=OS,Value=Windows     Key=Environment,Value=Production     When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID and code. When you specify the activation ID and code, tags assigned to the activation are automatically applied to the on-premises servers or VMs.  You can't add tags to or delete tags from an existing activation. You can tag your on-premises servers and VMs after they connect to Systems Manager for the first time and are assigned a managed instance ID. This means they are listed in the AWS Systems Manager console with an ID that is prefixed with \"mi-\". For information about how to add tags to your managed instances, see AddTagsToResource. For information about how to remove tags from your managed instances, see RemoveTagsFromResource.",
  "DefaultInstanceName": "The name of the registered, managed instance as it will appear in the Systems Manager console or when you use the AWS command line tools to list Systems Manager resources.  Do not enter personally identifiable information in this field. ",
  "RegistrationLimit": "Specify the maximum number of managed instances you want to register. The default value is 1 instance."
}
"""
CreateActivation(args) = ssm("CreateActivation", args)

"""
    RegisterDefaultPatchBaseline()

Defines the default patch baseline for the relevant operating system. To reset the AWS predefined patch baseline as the default, specify the full patch baseline ARN as the baseline ID value. For example, for CentOS, specify arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed instead of pb-0574b43a65ea646ed.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline that should be the default patch baseline."
}
"""
RegisterDefaultPatchBaseline(args) = ssm("RegisterDefaultPatchBaseline", args)

"""
    DescribeMaintenanceWindowsForTarget()

Retrieves information about the maintenance window targets or tasks that an instance is associated with.

Required Parameters
{
  "ResourceType": "The type of resource you want to retrieve information about. For example, \"INSTANCE\".",
  "Targets": "The instance ID or key/value pair to retrieve information about."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
DescribeMaintenanceWindowsForTarget(args) = ssm("DescribeMaintenanceWindowsForTarget", args)

"""
    GetDocument()

Gets the contents of the specified Systems Manager document.

Required Parameters
{
  "Name": "The name of the Systems Manager document."
}

Optional Parameters
{
  "DocumentVersion": "The document version for which you want information.",
  "DocumentFormat": "Returns the document in the specified format. The document format can be either JSON or YAML. JSON is the default format.",
  "VersionName": "An optional field specifying the version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document and can't be changed."
}
"""
GetDocument(args) = ssm("GetDocument", args)

"""
    DescribePatchGroupState()

Returns high-level aggregated patch compliance state for a patch group.

Required Parameters
{
  "PatchGroup": "The name of the patch group whose patch snapshot should be retrieved."
}
"""
DescribePatchGroupState(args) = ssm("DescribePatchGroupState", args)

"""
    ResetServiceSetting()

 ServiceSetting is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature. Services map a SettingId object to a setting value. AWS services teams define the default value for a SettingId. You can't create a new SettingId, but you can overwrite the default value if you have the ssm:UpdateServiceSetting permission for the setting. Use the GetServiceSetting API action to view the current value. Use the UpdateServiceSetting API action to change the default setting.  Reset the service setting for the account to the default value as provisioned by the AWS service team. 

Required Parameters
{
  "SettingId": "The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be /ssm/parameter-store/default-parameter-tier, /ssm/parameter-store/high-throughput-enabled, or /ssm/managed-instance/activation-tier. For example, arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled."
}
"""
ResetServiceSetting(args) = ssm("ResetServiceSetting", args)

"""
    DeleteActivation()

Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.

Required Parameters
{
  "ActivationId": "The ID of the activation that you want to delete."
}
"""
DeleteActivation(args) = ssm("DeleteActivation", args)

"""
    PutParameter()

Add a parameter to the system.

Required Parameters
{
  "Value": "The parameter value that you want to add to the system. Standard parameters have a value limit of 4 KB. Advanced parameters have a value limit of 8 KB.  Parameters can't be referenced or nested in the values of other parameters. You can't include {{}} or {{ssm:parameter-name}} in a parameter value. ",
  "Name": "The fully qualified name of the parameter that you want to add to the system. The fully qualified name includes the complete hierarchy of the parameter path and name. For parameters in a hierarchy, you must include a leading forward slash character (/) when you create or reference a parameter. For example: /Dev/DBServer/MySQL/db-string13  Naming Constraints:   Parameter names are case sensitive.   A parameter name must be unique within an AWS Region   A parameter name can't be prefixed with \"aws\" or \"ssm\" (case-insensitive).   Parameter names can include only the following symbols and letters: a-zA-Z0-9_.-/    A parameter name can't include spaces.   Parameter hierarchies are limited to a maximum depth of fifteen levels.   For additional information about valid values for parameter names, see About requirements and constraints for parameter names in the AWS Systems Manager User Guide.  The maximum length constraint listed below includes capacity for additional system attributes that are not part of the name. The maximum length for a parameter name, including the full length of the parameter ARN, is 1011 characters. For example, the length of the following parameter name is 65 characters, not 20 characters:  arn:aws:ssm:us-east-2:111122223333:parameter/ExampleParameterName  "
}

Optional Parameters
{
  "DataType": "The data type for a String parameter. Supported data types include plain text and Amazon Machine Image IDs.  The following data type values are supported.     text     aws:ec2:image    When you create a String parameter and specify aws:ec2:image, Systems Manager validates the parameter value is in the required format, such as ami-12345abcdeEXAMPLE, and that the specified AMI is available in your AWS account. For more information, see Native parameter support for Amazon Machine Image IDs in the AWS Systems Manager User Guide.",
  "Policies": "One or more policies to apply to a parameter. This action takes a JSON array. Parameter Store supports the following policy types: Expiration: This policy deletes the parameter after it expires. When you create the policy, you specify the expiration date. You can update the expiration date and time by updating the policy. Updating the parameter does not affect the expiration date and time. When the expiration time is reached, Parameter Store deletes the parameter. ExpirationNotification: This policy triggers an event in Amazon CloudWatch Events that notifies you about the expiration. By using this policy, you can receive notification before or after the expiration time is reached, in units of days or hours. NoChangeNotification: This policy triggers a CloudWatch event if a parameter has not been modified for a specified period of time. This policy type is useful when, for example, a secret needs to be changed within a period of time, but it has not been changed. All existing policies are preserved until you send new policies or an empty policy. For more information about parameter policies, see Assigning parameter policies. ",
  "Description": "Information about the parameter that you want to add to the system. Optional but recommended.  Do not enter personally identifiable information in this field. ",
  "Tags": "Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a Systems Manager parameter to identify the type of resource to which it applies, the environment, or the type of configuration data referenced by the parameter. In this case, you could specify the following key name/value pairs:    Key=Resource,Value=S3bucket     Key=OS,Value=Windows     Key=ParameterType,Value=LicenseKey     To add tags to an existing Systems Manager parameter, use the AddTagsToResource action. ",
  "Type": "The type of parameter that you want to add to the system.   SecureString is not currently supported for AWS CloudFormation templates or in the China Regions.  Items in a StringList must be separated by a comma (,). You can't use other punctuation or special character to escape items in the list. If you have a parameter value that requires a comma, then use the String data type.  Specifying a parameter type is not required when updating a parameter. You must specify a parameter type when creating a parameter. ",
  "AllowedPattern": "A regular expression used to validate the parameter value. For example, for String types with values restricted to numbers, you can specify the following: AllowedPattern=^ d+  ",
  "KeyId": "The KMS Key ID that you want to use to encrypt a parameter. Either the default AWS Key Management Service (AWS KMS) key automatically assigned to your AWS account or a custom key. Required for parameters that use the SecureString data type. If you don't specify a key ID, the system uses the default key associated with your AWS account.   To use your default AWS KMS key, choose the SecureString data type, and do not specify the Key ID when you create the parameter. The system automatically populates Key ID with your default KMS key.   To use a custom KMS key, choose the SecureString data type with the Key ID parameter.  ",
  "Tier": "The parameter tier to assign to a parameter. Parameter Store offers a standard tier and an advanced tier for parameters. Standard parameters have a content size limit of 4 KB and can't be configured to use parameter policies. You can create a maximum of 10,000 standard parameters for each Region in an AWS account. Standard parameters are offered at no additional cost.  Advanced parameters have a content size limit of 8 KB and can be configured to use parameter policies. You can create a maximum of 100,000 advanced parameters for each Region in an AWS account. Advanced parameters incur a charge. For more information, see Standard and advanced parameter tiers in the AWS Systems Manager User Guide. You can change a standard parameter to an advanced parameter any time. But you can't revert an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard parameter would result in data loss because the system would truncate the size of the parameter from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly, advanced parameters use a different form of encryption than standard parameters.  If you no longer need an advanced parameter, or if you no longer want to incur charges for an advanced parameter, you must delete it and recreate it as a new standard parameter.   Using the Default Tier Configuration  In PutParameter requests, you can specify the tier to create the parameter in. Whenever you specify a tier in the request, Parameter Store creates or updates the parameter according to that request. However, if you do not specify a tier in a request, Parameter Store assigns the tier based on the current Parameter Store default tier configuration. The default tier when you begin using Parameter Store is the standard-parameter tier. If you use the advanced-parameter tier, you can specify one of the following as the default:    Advanced: With this option, Parameter Store evaluates all requests as advanced parameters.     Intelligent-Tiering: With this option, Parameter Store evaluates each request to determine if the parameter is standard or advanced.  If the request doesn't include any options that require an advanced parameter, the parameter is created in the standard-parameter tier. If one or more options requiring an advanced parameter are included in the request, Parameter Store create a parameter in the advanced-parameter tier. This approach helps control your parameter-related costs by always creating standard parameters unless an advanced parameter is necessary.    Options that require an advanced parameter include the following:   The content size of the parameter is more than 4 KB.   The parameter uses a parameter policy.   More than 10,000 parameters already exist in your AWS account in the current Region.   For more information about configuring the default tier option, see Specifying a default parameter tier in the AWS Systems Manager User Guide.",
  "Overwrite": "Overwrite an existing parameter. If not specified, will default to \"false\"."
}
"""
PutParameter(args) = ssm("PutParameter", args)

"""
    DescribeMaintenanceWindows()

Retrieves the maintenance windows in an AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Optional filters used to narrow down the scope of the returned maintenance windows. Supported filter keys are Name and Enabled."
}
"""

DescribeMaintenanceWindows() = ssm("DescribeMaintenanceWindows")
DescribeMaintenanceWindows(args) = ssm("DescribeMaintenanceWindows", args)

"""
    GetPatchBaselineForPatchGroup()

Retrieves the patch baseline that should be used for the specified patch group.

Required Parameters
{
  "PatchGroup": "The name of the patch group whose patch baseline should be retrieved."
}

Optional Parameters
{
  "OperatingSystem": "Returns he operating system rule specified for patch groups using the patch baseline."
}
"""
GetPatchBaselineForPatchGroup(args) = ssm("GetPatchBaselineForPatchGroup", args)

"""
    DeletePatchBaseline()

Deletes a patch baseline.

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to delete."
}
"""
DeletePatchBaseline(args) = ssm("DeletePatchBaseline", args)

"""
    SendAutomationSignal()

Sends a signal to an Automation execution to change the current behavior or status of the execution. 

Required Parameters
{
  "AutomationExecutionId": "The unique identifier for an existing Automation execution that you want to send the signal to.",
  "SignalType": "The type of signal to send to an Automation execution. "
}

Optional Parameters
{
  "Payload": "The data sent with the signal. The data schema depends on the type of signal used in the request. For Approve and Reject signal types, the payload is an optional comment that you can send with the signal type. For example:  Comment=\"Looks good\"  For StartStep and Resume signal types, you must send the name of the Automation step to start or resume as the payload. For example:  StepName=\"step1\"  For the StopStep signal type, you must send the step execution ID as the payload. For example:  StepExecutionId=\"97fff367-fc5a-4299-aed8-0123456789ab\" "
}
"""
SendAutomationSignal(args) = ssm("SendAutomationSignal", args)

"""
    ListDocumentVersions()

List all versions for a document.

Required Parameters
{
  "Name": "The name of the document. You can specify an Amazon Resource Name (ARN)."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)"
}
"""
ListDocumentVersions(args) = ssm("ListDocumentVersions", args)

"""
    CancelMaintenanceWindowExecution()

Stops a maintenance window execution that is already in progress and cancels any tasks in the window that have not already starting running. (Tasks already in progress will continue to completion.)

Required Parameters
{
  "WindowExecutionId": "The ID of the maintenance window execution to stop."
}
"""
CancelMaintenanceWindowExecution(args) = ssm("CancelMaintenanceWindowExecution", args)

"""
    DescribeMaintenanceWindowExecutions()

Lists the executions of a maintenance window. This includes information about when the maintenance window was scheduled to be active, and information about tasks registered and run with the maintenance window.

Required Parameters
{
  "WindowId": "The ID of the maintenance window whose executions should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "Each entry in the array is a structure containing: Key (string, between 1 and 128 characters) Values (array of strings, each string is between 1 and 256 characters) The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z."
}
"""
DescribeMaintenanceWindowExecutions(args) = ssm("DescribeMaintenanceWindowExecutions", args)

"""
    DescribeInstancePatches()

Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.

Required Parameters
{
  "InstanceId": "The ID of the instance whose patch state information should be retrieved."
}

Optional Parameters
{
  "MaxResults": "The maximum number of patches to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "An array of structures. Each entry in the array is a structure containing a Key, Value combination. Valid values for Key are Classification | KBId | Severity | State."
}
"""
DescribeInstancePatches(args) = ssm("DescribeInstancePatches", args)

"""
    DescribePatchGroups()

Lists all patch groups that have been registered with patch baselines.

Optional Parameters
{
  "MaxResults": "The maximum number of patch groups to return (per page).",
  "NextToken": "The token for the next set of items to return. (You received this token from a previous call.)",
  "Filters": "One or more filters. Use a filter to return a more specific list of results. For DescribePatchGroups,valid filter keys include the following:    NAME_PREFIX: The name of the patch group. Wildcards (*) are accepted.    OPERATING_SYSTEM: The supported operating system type to return results for. For valid operating system values, see GetDefaultPatchBaselineRequest OperatingSystem in CreatePatchBaseline. Examples:    --filters Key=NAME_PREFIX,Values=MyPatchGroup*     --filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2     "
}
"""

DescribePatchGroups() = ssm("DescribePatchGroups")
DescribePatchGroups(args) = ssm("DescribePatchGroups", args)

"""
    UpdateManagedInstanceRole()

Changes the Amazon Identity and Access Management (IAM) role that is assigned to the on-premises instance or virtual machines (VM). IAM roles are first assigned to these hybrid instances during the activation process. For more information, see CreateActivation.

Required Parameters
{
  "InstanceId": "The ID of the managed instance where you want to update the role.",
  "IamRole": "The IAM role you want to assign or change."
}
"""
UpdateManagedInstanceRole(args) = ssm("UpdateManagedInstanceRole", args)

"""
    UpdateDocumentDefaultVersion()

Set the default version of a document. 

Required Parameters
{
  "DocumentVersion": "The version of a custom document that you want to set as the default version.",
  "Name": "The name of a custom document that you want to set as the default version."
}
"""
UpdateDocumentDefaultVersion(args) = ssm("UpdateDocumentDefaultVersion", args)

"""
    UpdatePatchBaseline()

Modifies an existing patch baseline. Fields not specified in the request are left unchanged.  For information about valid key and value pairs in PatchFilters for each supported operating system type, see PatchFilter. 

Required Parameters
{
  "BaselineId": "The ID of the patch baseline to update."
}

Optional Parameters
{
  "ApprovedPatchesComplianceLevel": "Assigns a new compliance severity level to an existing patch baseline.",
  "GlobalFilters": "A set of global filters used to include patches in the baseline.",
  "Name": "The name of the patch baseline.",
  "RejectedPatches": "A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see About package name formats for approved and rejected patch lists in the AWS Systems Manager User Guide.",
  "RejectedPatchesAction": "The action for Patch Manager to take on patches included in the RejectedPackages list.    ALLOW_AS_DEPENDENCY: A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as InstalledOther. This is the default action if no option is specified.    BLOCK: Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as InstalledRejected.  ",
  "ApprovedPatchesEnableNonSecurity": "Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.",
  "Description": "A description of the patch baseline.",
  "ApprovalRules": "A set of rules used to include patches in the baseline.",
  "Sources": "Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.",
  "ApprovedPatches": "A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see About package name formats for approved and rejected patch lists in the AWS Systems Manager User Guide.",
  "Replace": "If True, then all fields that are required by the CreatePatchBaseline action are also required for this API request. Optional fields that are not specified are set to null."
}
"""
UpdatePatchBaseline(args) = ssm("UpdatePatchBaseline", args)