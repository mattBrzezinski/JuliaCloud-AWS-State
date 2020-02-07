include("../AWSCorePrototypeServices.jl")
using .Services: backup

"""
Returns metadata associated with a restore job that is specified by a job ID.
"""
DescribeRestoreJob(RestoreJobId) = backup("GET", "/restore-jobs/$restoreJobId")
DescribeRestoreJob(RestoreJobId, args) = backup("GET", "/restore-jobs/$restoreJobId", args)
DescribeRestoreJob(a...; b...) = DescribeRestoreJob(a..., b)

"""
Deletes the policy document that manages permissions on a backup vault.
"""
DeleteBackupVaultAccessPolicy(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName/access-policy")
DeleteBackupVaultAccessPolicy(BackupVaultName, args) = backup("DELETE", "/backup-vaults/$backupVaultName/access-policy", args)
DeleteBackupVaultAccessPolicy(a...; b...) = DeleteBackupVaultAccessPolicy(a..., b)

"""
Returns detailed information about the recovery points stored in a backup vault.
"""
ListRecoveryPointsByBackupVault(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/")
ListRecoveryPointsByBackupVault(BackupVaultName, args) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/", args)
ListRecoveryPointsByBackupVault(a...; b...) = ListRecoveryPointsByBackupVault(a..., b)

"""
Returns a list of recovery point storage containers along with information about them.
"""
ListBackupVaults() = backup("GET", "/backup-vaults/")
ListBackupVaults(, args) = backup("GET", "/backup-vaults/", args)
ListBackupVaults(a...; b...) = ListBackupVaults(a..., b)

"""
Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
"""
ListRecoveryPointsByResource(ResourceArn) = backup("GET", "/resources/$resourceArn/recovery-points/")
ListRecoveryPointsByResource(ResourceArn, args) = backup("GET", "/resources/$resourceArn/recovery-points/", args)
ListRecoveryPointsByResource(a...; b...) = ListRecoveryPointsByResource(a..., b)

"""
Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
"""
TagResource(ResourceArn, Tags) = backup("POST", "/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = backup("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
"""
ListProtectedResources() = backup("GET", "/resources/")
ListProtectedResources(, args) = backup("GET", "/resources/", args)
ListProtectedResources(a...; b...) = ListProtectedResources(a..., b)

"""
Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
"""
ListBackupPlanTemplates() = backup("GET", "/backup/template/plans")
ListBackupPlanTemplates(, args) = backup("GET", "/backup/template/plans", args)
ListBackupPlanTemplates(a...; b...) = ListBackupPlanTemplates(a..., b)

"""
Turns on notifications on a backup vault for the specified topic and events.
"""
PutBackupVaultNotifications(BackupVaultName, SNSTopicArn, BackupVaultEvents) = backup("PUT", "/backup-vaults/$backupVaultName/notification-configuration")
PutBackupVaultNotifications(BackupVaultName, SNSTopicArn, BackupVaultEvents, args) = backup("PUT", "/backup-vaults/$backupVaultName/notification-configuration", args)
PutBackupVaultNotifications(a...; b...) = PutBackupVaultNotifications(a..., b)

"""
Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 
"""
CreateBackupVault(BackupVaultName) = backup("PUT", "/backup-vaults/$backupVaultName")
CreateBackupVault(BackupVaultName, args) = backup("PUT", "/backup-vaults/$backupVaultName", args)
CreateBackupVault(a...; b...) = CreateBackupVault(a..., b)

"""
Deletes event notifications for the specified backup vault.
"""
DeleteBackupVaultNotifications(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName/notification-configuration")
DeleteBackupVaultNotifications(BackupVaultName, args) = backup("DELETE", "/backup-vaults/$backupVaultName/notification-configuration", args)
DeleteBackupVaultNotifications(a...; b...) = DeleteBackupVaultNotifications(a..., b)

"""
Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
"""
DeleteBackupPlan(BackupPlanId) = backup("DELETE", "/backup/plans/$backupPlanId")
DeleteBackupPlan(BackupPlanId, args) = backup("DELETE", "/backup/plans/$backupPlanId", args)
DeleteBackupPlan(a...; b...) = DeleteBackupPlan(a..., b)

"""
Returns the template specified by its templateId as a backup plan.
"""
GetBackupPlanFromTemplate(BackupPlanTemplateId) = backup("GET", "/backup/template/plans/$templateId/toPlan")
GetBackupPlanFromTemplate(BackupPlanTemplateId, args) = backup("GET", "/backup/template/plans/$templateId/toPlan", args)
GetBackupPlanFromTemplate(a...; b...) = GetBackupPlanFromTemplate(a..., b)

"""
Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
"""
DeleteBackupVault(BackupVaultName) = backup("DELETE", "/backup-vaults/$backupVaultName")
DeleteBackupVault(BackupVaultName, args) = backup("DELETE", "/backup-vaults/$backupVaultName", args)
DeleteBackupVault(a...; b...) = DeleteBackupVault(a..., b)

"""
Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
"""
UntagResource(ResourceArn, TagKeyList) = backup("POST", "/untag/$resourceArn")
UntagResource(ResourceArn, TagKeyList, args) = backup("POST", "/untag/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Returns the backup plan that is specified by the plan ID as a backup template.
"""
ExportBackupPlanTemplate(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/toTemplate/")
ExportBackupPlanTemplate(BackupPlanId, args) = backup("GET", "/backup/plans/$backupPlanId/toTemplate/", args)
ExportBackupPlanTemplate(a...; b...) = ExportBackupPlanTemplate(a..., b)

"""
Returns the body of a backup plan in JSON format, in addition to plan metadata.
"""
GetBackupPlan(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/")
GetBackupPlan(BackupPlanId, args) = backup("GET", "/backup/plans/$backupPlanId/", args)
GetBackupPlan(a...; b...) = GetBackupPlan(a..., b)

"""
Returns metadata about a backup vault specified by its name.
"""
DescribeBackupVault(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName")
DescribeBackupVault(BackupVaultName, args) = backup("GET", "/backup-vaults/$backupVaultName", args)
DescribeBackupVault(a...; b...) = DescribeBackupVault(a..., b)

"""
Deletes the recovery point specified by a recovery point ID.
"""
DeleteRecoveryPoint(BackupVaultName, RecoveryPointArn) = backup("DELETE", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")
DeleteRecoveryPoint(BackupVaultName, RecoveryPointArn, args) = backup("DELETE", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn", args)
DeleteRecoveryPoint(a...; b...) = DeleteRecoveryPoint(a..., b)

"""
Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
"""
ListBackupPlanVersions(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/versions/")
ListBackupPlanVersions(BackupPlanId, args) = backup("GET", "/backup/plans/$backupPlanId/versions/", args)
ListBackupPlanVersions(a...; b...) = ListBackupPlanVersions(a..., b)

"""
Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
"""
DeleteBackupSelection(BackupPlanId, SelectionId) = backup("DELETE", "/backup/plans/$backupPlanId/selections/$selectionId")
DeleteBackupSelection(BackupPlanId, SelectionId, args) = backup("DELETE", "/backup/plans/$backupPlanId/selections/$selectionId", args)
DeleteBackupSelection(a...; b...) = DeleteBackupSelection(a..., b)

"""
Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"STRINGEQUALS"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"STRINGEQUALS"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume Id. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically 'put together using the OR operator. In other words, all patterns that match are selected for backup.
"""
CreateBackupSelection(BackupPlanId, BackupSelection) = backup("PUT", "/backup/plans/$backupPlanId/selections/")
CreateBackupSelection(BackupPlanId, BackupSelection, args) = backup("PUT", "/backup/plans/$backupPlanId/selections/", args)
CreateBackupSelection(a...; b...) = CreateBackupSelection(a..., b)

"""
Returns an array containing metadata of the resources associated with the target backup plan.
"""
ListBackupSelections(BackupPlanId) = backup("GET", "/backup/plans/$backupPlanId/selections/")
ListBackupSelections(BackupPlanId, args) = backup("GET", "/backup/plans/$backupPlanId/selections/", args)
ListBackupSelections(a...; b...) = ListBackupSelections(a..., b)

"""
Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
"""
ListRestoreJobs() = backup("GET", "/restore-jobs/")
ListRestoreJobs(, args) = backup("GET", "/restore-jobs/", args)
ListRestoreJobs(a...; b...) = ListRestoreJobs(a..., b)

"""
Returns the AWS resource types supported by AWS Backup.
"""
GetSupportedResourceTypes() = backup("GET", "/supported-resource-types")
GetSupportedResourceTypes(, args) = backup("GET", "/supported-resource-types", args)
GetSupportedResourceTypes(a...; b...) = GetSupportedResourceTypes(a..., b)

"""
Returns the access policy document that is associated with the named backup vault.
"""
GetBackupVaultAccessPolicy(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/access-policy")
GetBackupVaultAccessPolicy(BackupVaultName, args) = backup("GET", "/backup-vaults/$backupVaultName/access-policy", args)
GetBackupVaultAccessPolicy(a...; b...) = GetBackupVaultAccessPolicy(a..., b)

"""
Returns a valid JSON document specifying a backup plan or an error.
"""
GetBackupPlanFromJSON(BackupPlanTemplateJson) = backup("POST", "/backup/template/json/toPlan")
GetBackupPlanFromJSON(BackupPlanTemplateJson, args) = backup("POST", "/backup/template/json/toPlan", args)
GetBackupPlanFromJSON(a...; b...) = GetBackupPlanFromJSON(a..., b)

"""
Returns a set of metadata key-value pairs that were used to create the backup.
"""
GetRecoveryPointRestoreMetadata(BackupVaultName, RecoveryPointArn) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn/restore-metadata")
GetRecoveryPointRestoreMetadata(BackupVaultName, RecoveryPointArn, args) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn/restore-metadata", args)
GetRecoveryPointRestoreMetadata(a...; b...) = GetRecoveryPointRestoreMetadata(a..., b)

"""
Starts a job to create a one-time copy of the specified resource.
"""
StartCopyJob(RecoveryPointArn, SourceBackupVaultName, DestinationBackupVaultArn, IamRoleArn) = backup("PUT", "/copy-jobs")
StartCopyJob(RecoveryPointArn, SourceBackupVaultName, DestinationBackupVaultArn, IamRoleArn, args) = backup("PUT", "/copy-jobs", args)
StartCopyJob(a...; b...) = StartCopyJob(a..., b)

"""
Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
"""
PutBackupVaultAccessPolicy(BackupVaultName) = backup("PUT", "/backup-vaults/$backupVaultName/access-policy")
PutBackupVaultAccessPolicy(BackupVaultName, args) = backup("PUT", "/backup-vaults/$backupVaultName/access-policy", args)
PutBackupVaultAccessPolicy(a...; b...) = PutBackupVaultAccessPolicy(a..., b)

"""
Returns event notifications for the specified backup vault.
"""
GetBackupVaultNotifications(BackupVaultName) = backup("GET", "/backup-vaults/$backupVaultName/notification-configuration")
GetBackupVaultNotifications(BackupVaultName, args) = backup("GET", "/backup-vaults/$backupVaultName/notification-configuration", args)
GetBackupVaultNotifications(a...; b...) = GetBackupVaultNotifications(a..., b)

"""
Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.
"""
StartRestoreJob(RecoveryPointArn, Metadata, IamRoleArn) = backup("PUT", "/restore-jobs")
StartRestoreJob(RecoveryPointArn, Metadata, IamRoleArn, args) = backup("PUT", "/restore-jobs", args)
StartRestoreJob(a...; b...) = StartRestoreJob(a..., b)

"""
Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 
"""
UpdateRecoveryPointLifecycle(BackupVaultName, RecoveryPointArn) = backup("POST", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")
UpdateRecoveryPointLifecycle(BackupVaultName, RecoveryPointArn, args) = backup("POST", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn", args)
UpdateRecoveryPointLifecycle(a...; b...) = UpdateRecoveryPointLifecycle(a..., b)

"""
Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
"""
DescribeRecoveryPoint(BackupVaultName, RecoveryPointArn) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn")
DescribeRecoveryPoint(BackupVaultName, RecoveryPointArn, args) = backup("GET", "/backup-vaults/$backupVaultName/recovery-points/$recoveryPointArn", args)
DescribeRecoveryPoint(a...; b...) = DescribeRecoveryPoint(a..., b)

"""
Attempts to cancel a job to create a one-time backup of a resource.
"""
StopBackupJob(BackupJobId) = backup("POST", "/backup-jobs/$backupJobId")
StopBackupJob(BackupJobId, args) = backup("POST", "/backup-jobs/$backupJobId", args)
StopBackupJob(a...; b...) = StopBackupJob(a..., b)

"""
Starts a job to create a one-time backup of the specified resource.
"""
StartBackupJob(BackupVaultName, ResourceArn, IamRoleArn) = backup("PUT", "/backup-jobs")
StartBackupJob(BackupVaultName, ResourceArn, IamRoleArn, args) = backup("PUT", "/backup-jobs", args)
StartBackupJob(a...; b...) = StartBackupJob(a..., b)

"""
Returns metadata about your copy jobs.
"""
ListCopyJobs() = backup("GET", "/copy-jobs/")
ListCopyJobs(, args) = backup("GET", "/copy-jobs/", args)
ListCopyJobs(a...; b...) = ListCopyJobs(a..., b)

"""
Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
"""
GetBackupSelection(BackupPlanId, SelectionId) = backup("GET", "/backup/plans/$backupPlanId/selections/$selectionId")
GetBackupSelection(BackupPlanId, SelectionId, args) = backup("GET", "/backup/plans/$backupPlanId/selections/$selectionId", args)
GetBackupSelection(a...; b...) = GetBackupSelection(a..., b)

"""
Returns metadata about your backup jobs.
"""
ListBackupJobs() = backup("GET", "/backup-jobs/")
ListBackupJobs(, args) = backup("GET", "/backup-jobs/", args)
ListBackupJobs(a...; b...) = ListBackupJobs(a..., b)

"""
Returns metadata associated with creating a copy of a resource.
"""
DescribeCopyJob(CopyJobId) = backup("GET", "/copy-jobs/$copyJobId")
DescribeCopyJob(CopyJobId, args) = backup("GET", "/copy-jobs/$copyJobId", args)
DescribeCopyJob(a...; b...) = DescribeCopyJob(a..., b)

"""
Returns metadata associated with creating a backup of a resource.
"""
DescribeBackupJob(BackupJobId) = backup("GET", "/backup-jobs/$backupJobId")
DescribeBackupJob(BackupJobId, args) = backup("GET", "/backup-jobs/$backupJobId", args)
DescribeBackupJob(a...; b...) = DescribeBackupJob(a..., b)

"""
Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
"""
UpdateBackupPlan(BackupPlanId, BackupPlan) = backup("POST", "/backup/plans/$backupPlanId")
UpdateBackupPlan(BackupPlanId, BackupPlan, args) = backup("POST", "/backup/plans/$backupPlanId", args)
UpdateBackupPlan(a...; b...) = UpdateBackupPlan(a..., b)

"""
Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.
"""
ListTags(ResourceArn) = backup("GET", "/tags/$resourceArn/")
ListTags(ResourceArn, args) = backup("GET", "/tags/$resourceArn/", args)
ListTags(a...; b...) = ListTags(a..., b)

"""
Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.
"""
DescribeProtectedResource(ResourceArn) = backup("GET", "/resources/$resourceArn")
DescribeProtectedResource(ResourceArn, args) = backup("GET", "/resources/$resourceArn", args)
DescribeProtectedResource(a...; b...) = DescribeProtectedResource(a..., b)

"""
Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.
"""
CreateBackupPlan(BackupPlan) = backup("PUT", "/backup/plans/")
CreateBackupPlan(BackupPlan, args) = backup("PUT", "/backup/plans/", args)
CreateBackupPlan(a...; b...) = CreateBackupPlan(a..., b)

"""
Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
"""
ListBackupPlans() = backup("GET", "/backup/plans/")
ListBackupPlans(, args) = backup("GET", "/backup/plans/", args)
ListBackupPlans(a...; b...) = ListBackupPlans(a..., b)
