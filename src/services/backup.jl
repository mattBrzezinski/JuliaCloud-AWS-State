include("../AWSCorePrototypeServices.jl")
using .Services: backup

"""
Returns metadata associated with a restore job that is specified by a job ID.

Required Parameters:
RestoreJobId
"""
DescribeRestoreJob(args) = backup("GET", "/restore-jobs/{restoreJobId}", args)

"""
Deletes the policy document that manages permissions on a backup vault.

Required Parameters:
BackupVaultName
"""
DeleteBackupVaultAccessPolicy(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/access-policy", args)

"""
Returns detailed information about the recovery points stored in a backup vault.

Required Parameters:
BackupVaultName
"""
ListRecoveryPointsByBackupVault(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/", args)

"""
Returns a list of recovery point storage containers along with information about them.
"""
ListBackupVaults() = backup("GET", "/backup-vaults/")

"""
Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).

Required Parameters:
ResourceArn
"""
ListRecoveryPointsByResource(args) = backup("GET", "/resources/{resourceArn}/recovery-points/", args)

"""
Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = backup("POST", "/tags/{resourceArn}", args)

"""
Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
"""
ListProtectedResources() = backup("GET", "/resources/")

"""
Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
"""
ListBackupPlanTemplates() = backup("GET", "/backup/template/plans")

"""
Turns on notifications on a backup vault for the specified topic and events.

Required Parameters:
BackupVaultName, SNSTopicArn, BackupVaultEvents
"""
PutBackupVaultNotifications(args) = backup("PUT", "/backup-vaults/{backupVaultName}/notification-configuration", args)

"""
Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 

Required Parameters:
BackupVaultName
"""
CreateBackupVault(args) = backup("PUT", "/backup-vaults/{backupVaultName}", args)

"""
Deletes event notifications for the specified backup vault.

Required Parameters:
BackupVaultName
"""
DeleteBackupVaultNotifications(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/notification-configuration", args)

"""
Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.

Required Parameters:
BackupPlanId
"""
DeleteBackupPlan(args) = backup("DELETE", "/backup/plans/{backupPlanId}", args)

"""
Returns the template specified by its templateId as a backup plan.

Required Parameters:
BackupPlanTemplateId
"""
GetBackupPlanFromTemplate(args) = backup("GET", "/backup/template/plans/{templateId}/toPlan", args)

"""
Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.

Required Parameters:
BackupVaultName
"""
DeleteBackupVault(args) = backup("DELETE", "/backup-vaults/{backupVaultName}", args)

"""
Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)

Required Parameters:
ResourceArn, TagKeyList
"""
UntagResource(args) = backup("POST", "/untag/{resourceArn}", args)

"""
Returns the backup plan that is specified by the plan ID as a backup template.

Required Parameters:
BackupPlanId
"""
ExportBackupPlanTemplate(args) = backup("GET", "/backup/plans/{backupPlanId}/toTemplate/", args)

"""
Returns the body of a backup plan in JSON format, in addition to plan metadata.

Required Parameters:
BackupPlanId
"""
GetBackupPlan(args) = backup("GET", "/backup/plans/{backupPlanId}/", args)

"""
Returns metadata about a backup vault specified by its name.

Required Parameters:
BackupVaultName
"""
DescribeBackupVault(args) = backup("GET", "/backup-vaults/{backupVaultName}", args)

"""
Deletes the recovery point specified by a recovery point ID.

Required Parameters:
BackupVaultName, RecoveryPointArn
"""
DeleteRecoveryPoint(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)

"""
Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.

Required Parameters:
BackupPlanId
"""
ListBackupPlanVersions(args) = backup("GET", "/backup/plans/{backupPlanId}/versions/", args)

"""
Deletes the resource selection associated with a backup plan that is specified by the SelectionId.

Required Parameters:
BackupPlanId, SelectionId
"""
DeleteBackupSelection(args) = backup("DELETE", "/backup/plans/{backupPlanId}/selections/{selectionId}", args)

"""
Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"STRINGEQUALS"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"STRINGEQUALS"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume Id. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically 'put together using the OR operator. In other words, all patterns that match are selected for backup.

Required Parameters:
BackupPlanId, BackupSelection
"""
CreateBackupSelection(args) = backup("PUT", "/backup/plans/{backupPlanId}/selections/", args)

"""
Returns an array containing metadata of the resources associated with the target backup plan.

Required Parameters:
BackupPlanId
"""
ListBackupSelections(args) = backup("GET", "/backup/plans/{backupPlanId}/selections/", args)

"""
Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
"""
ListRestoreJobs() = backup("GET", "/restore-jobs/")

"""
Returns the AWS resource types supported by AWS Backup.
"""
GetSupportedResourceTypes() = backup("GET", "/supported-resource-types")

"""
Returns the access policy document that is associated with the named backup vault.

Required Parameters:
BackupVaultName
"""
GetBackupVaultAccessPolicy(args) = backup("GET", "/backup-vaults/{backupVaultName}/access-policy", args)

"""
Returns a valid JSON document specifying a backup plan or an error.

Required Parameters:
BackupPlanTemplateJson
"""
GetBackupPlanFromJSON(args) = backup("POST", "/backup/template/json/toPlan", args)

"""
Returns a set of metadata key-value pairs that were used to create the backup.

Required Parameters:
BackupVaultName, RecoveryPointArn
"""
GetRecoveryPointRestoreMetadata(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata", args)

"""
Starts a job to create a one-time copy of the specified resource.

Required Parameters:
RecoveryPointArn, SourceBackupVaultName, DestinationBackupVaultArn, IamRoleArn
"""
StartCopyJob(args) = backup("PUT", "/copy-jobs", args)

"""
Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.

Required Parameters:
BackupVaultName
"""
PutBackupVaultAccessPolicy(args) = backup("PUT", "/backup-vaults/{backupVaultName}/access-policy", args)

"""
Returns event notifications for the specified backup vault.

Required Parameters:
BackupVaultName
"""
GetBackupVaultNotifications(args) = backup("GET", "/backup-vaults/{backupVaultName}/notification-configuration", args)

"""
Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.

Required Parameters:
RecoveryPointArn, Metadata, IamRoleArn
"""
StartRestoreJob(args) = backup("PUT", "/restore-jobs", args)

"""
Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 

Required Parameters:
BackupVaultName, RecoveryPointArn
"""
UpdateRecoveryPointLifecycle(args) = backup("POST", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)

"""
Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.

Required Parameters:
BackupVaultName, RecoveryPointArn
"""
DescribeRecoveryPoint(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)

"""
Attempts to cancel a job to create a one-time backup of a resource.

Required Parameters:
BackupJobId
"""
StopBackupJob(args) = backup("POST", "/backup-jobs/{backupJobId}", args)

"""
Starts a job to create a one-time backup of the specified resource.

Required Parameters:
BackupVaultName, ResourceArn, IamRoleArn
"""
StartBackupJob(args) = backup("PUT", "/backup-jobs", args)

"""
Returns metadata about your copy jobs.
"""
ListCopyJobs() = backup("GET", "/copy-jobs/")

"""
Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.

Required Parameters:
BackupPlanId, SelectionId
"""
GetBackupSelection(args) = backup("GET", "/backup/plans/{backupPlanId}/selections/{selectionId}", args)

"""
Returns metadata about your backup jobs.
"""
ListBackupJobs() = backup("GET", "/backup-jobs/")

"""
Returns metadata associated with creating a copy of a resource.

Required Parameters:
CopyJobId
"""
DescribeCopyJob(args) = backup("GET", "/copy-jobs/{copyJobId}", args)

"""
Returns metadata associated with creating a backup of a resource.

Required Parameters:
BackupJobId
"""
DescribeBackupJob(args) = backup("GET", "/backup-jobs/{backupJobId}", args)

"""
Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.

Required Parameters:
BackupPlanId, BackupPlan
"""
UpdateBackupPlan(args) = backup("POST", "/backup/plans/{backupPlanId}", args)

"""
Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.

Required Parameters:
ResourceArn
"""
ListTags(args) = backup("GET", "/tags/{resourceArn}/", args)

"""
Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.

Required Parameters:
ResourceArn
"""
DescribeProtectedResource(args) = backup("GET", "/resources/{resourceArn}", args)

"""
Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.

Required Parameters:
BackupPlan
"""
CreateBackupPlan(args) = backup("PUT", "/backup/plans/", args)

"""
Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
"""
ListBackupPlans() = backup("GET", "/backup/plans/")
