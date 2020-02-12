include("../AWSCorePrototypeServices.jl")
using .Services: backup

"""
    DescribeRestoreJob

Returns metadata associated with a restore job that is specified by a job ID.

Required Parameters:
{
  "RestoreJobId": "Uniquely identifies the job that restores a recovery point."
}


Optional Parameters:
{}

"""

DescribeRestoreJob(args) = backup("GET", "/restore-jobs/{restoreJobId}", args)
"""
    DeleteBackupVaultAccessPolicy

Deletes the policy document that manages permissions on a backup vault.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

DeleteBackupVaultAccessPolicy(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/access-policy", args)
"""
    ListRecoveryPointsByBackupVault

Returns detailed information about the recovery points stored in a backup vault.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "ByCreatedBefore": "Returns only recovery points that were created before the specified timestamp.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token.",
  "ByBackupPlanId": "Returns only recovery points that match the specified backup plan ID.",
  "ByResourceType": "Returns only recovery points that match the specified resource type.",
  "ByCreatedAfter": "Returns only recovery points that were created after the specified timestamp.",
  "ByResourceArn": "Returns only recovery points that match the specified resource Amazon Resource Name (ARN)."
}

"""

ListRecoveryPointsByBackupVault(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/", args)
"""
    ListBackupVaults

Returns a list of recovery point storage containers along with information about them.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""
ListBackupVaults() = backup("GET", "/backup-vaults/")
ListBackupVaults(args) = backup("GET", "/backup-vaults/", args)

"""
    ListRecoveryPointsByResource

Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).

Required Parameters:
{
  "ResourceArn": "An ARN that uniquely identifies a resource. The format of the ARN depends on the resource type."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""

ListRecoveryPointsByResource(args) = backup("GET", "/resources/{resourceArn}/recovery-points/", args)
"""
    TagResource

Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).

Required Parameters:
{
  "ResourceArn": "An ARN that uniquely identifies a resource. The format of the ARN depends on the type of the tagged resource.",
  "Tags": "Key-value pairs that are used to help organize your resources. You can assign your own metadata to the resources you create. "
}


Optional Parameters:
{}

"""

TagResource(args) = backup("POST", "/tags/{resourceArn}", args)
"""
    ListProtectedResources

Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""
ListProtectedResources() = backup("GET", "/resources/")
ListProtectedResources(args) = backup("GET", "/resources/", args)

"""
    ListBackupPlanTemplates

Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""
ListBackupPlanTemplates() = backup("GET", "/backup/template/plans")
ListBackupPlanTemplates(args) = backup("GET", "/backup/template/plans", args)

"""
    PutBackupVaultNotifications

Turns on notifications on a backup vault for the specified topic and events.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "SNSTopicArn": "The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for example, arn:aws:sns:us-west-2:111122223333:MyVaultTopic.",
  "BackupVaultEvents": "An array of events that indicate the status of jobs to back up resources to the backup vault."
}


Optional Parameters:
{}

"""

PutBackupVaultNotifications(args) = backup("PUT", "/backup-vaults/{backupVaultName}/notification-configuration", args)
"""
    CreateBackupVault

Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{
  "EncryptionKeyArn": "The server-side encryption key that is used to protect your backups; for example, arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab.",
  "BackupVaultTags": "Metadata that you can assign to help organize the resources that you create. Each tag is a key-value pair.",
  "CreatorRequestId": "A unique string that identifies the request and allows failed requests to be retried without the risk of executing the operation twice."
}

"""

CreateBackupVault(args) = backup("PUT", "/backup-vaults/{backupVaultName}", args)
"""
    DeleteBackupVaultNotifications

Deletes event notifications for the specified backup vault.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

DeleteBackupVaultNotifications(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/notification-configuration", args)
"""
    DeleteBackupPlan

Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{}

"""

DeleteBackupPlan(args) = backup("DELETE", "/backup/plans/{backupPlanId}", args)
"""
    GetBackupPlanFromTemplate

Returns the template specified by its templateId as a backup plan.

Required Parameters:
{
  "BackupPlanTemplateId": "Uniquely identifies a stored backup plan template."
}


Optional Parameters:
{}

"""

GetBackupPlanFromTemplate(args) = backup("GET", "/backup/template/plans/{templateId}/toPlan", args)
"""
    DeleteBackupVault

Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and theAWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

DeleteBackupVault(args) = backup("DELETE", "/backup-vaults/{backupVaultName}", args)
"""
    UntagResource

Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)

Required Parameters:
{
  "ResourceArn": "An ARN that uniquely identifies a resource. The format of the ARN depends on the type of the tagged resource.",
  "TagKeyList": "A list of keys to identify which key-value tags to remove from a resource."
}


Optional Parameters:
{}

"""

UntagResource(args) = backup("POST", "/untag/{resourceArn}", args)
"""
    ExportBackupPlanTemplate

Returns the backup plan that is specified by the plan ID as a backup template.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{}

"""

ExportBackupPlanTemplate(args) = backup("GET", "/backup/plans/{backupPlanId}/toTemplate/", args)
"""
    GetBackupPlan

Returns the body of a backup plan in JSON format, in addition to plan metadata.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{
  "VersionId": "Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes long. Version IDs cannot be edited."
}

"""

GetBackupPlan(args) = backup("GET", "/backup/plans/{backupPlanId}/", args)
"""
    DescribeBackupVault

Returns metadata about a backup vault specified by its name.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

DescribeBackupVault(args) = backup("GET", "/backup-vaults/{backupVaultName}", args)
"""
    DeleteRecoveryPoint

Deletes the recovery point specified by a recovery point ID.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "RecoveryPointArn": "An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45."
}


Optional Parameters:
{}

"""

DeleteRecoveryPoint(args) = backup("DELETE", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)
"""
    ListBackupPlanVersions

Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""

ListBackupPlanVersions(args) = backup("GET", "/backup/plans/{backupPlanId}/versions/", args)
"""
    DeleteBackupSelection

Deletes the resource selection associated with a backup plan that is specified by the SelectionId.

Required Parameters:
{
  "SelectionId": "Uniquely identifies the body of a request to assign a set of resources to a backup plan.",
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{}

"""

DeleteBackupSelection(args) = backup("DELETE", "/backup/plans/{backupPlanId}/selections/{selectionId}", args)
"""
    CreateBackupSelection

Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"STRINGEQUALS"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"STRINGEQUALS"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume Id. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically 'put together using the OR operator. In other words, all patterns that match are selected for backup.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies the backup plan to be associated with the selection of resources.",
  "BackupSelection": "Specifies the body of a request to assign a set of resources to a backup plan."
}


Optional Parameters:
{
  "CreatorRequestId": "A unique string that identifies the request and allows failed requests to be retried without the risk of executing the operation twice."
}

"""

CreateBackupSelection(args) = backup("PUT", "/backup/plans/{backupPlanId}/selections/", args)
"""
    ListBackupSelections

Returns an array containing metadata of the resources associated with the target backup plan.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""

ListBackupSelections(args) = backup("GET", "/backup/plans/{backupPlanId}/selections/", args)
"""
    ListRestoreJobs

Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""
ListRestoreJobs() = backup("GET", "/restore-jobs/")
ListRestoreJobs(args) = backup("GET", "/restore-jobs/", args)

"""
    GetSupportedResourceTypes

Returns the AWS resource types supported by AWS Backup.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetSupportedResourceTypes() = backup("GET", "/supported-resource-types")
GetSupportedResourceTypes(args) = backup("GET", "/supported-resource-types", args)

"""
    GetBackupVaultAccessPolicy

Returns the access policy document that is associated with the named backup vault.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

GetBackupVaultAccessPolicy(args) = backup("GET", "/backup-vaults/{backupVaultName}/access-policy", args)
"""
    GetBackupPlanFromJSON

Returns a valid JSON document specifying a backup plan or an error.

Required Parameters:
{
  "BackupPlanTemplateJson": "A customer-supplied backup plan document in JSON format."
}


Optional Parameters:
{}

"""

GetBackupPlanFromJSON(args) = backup("POST", "/backup/template/json/toPlan", args)
"""
    GetRecoveryPointRestoreMetadata

Returns a set of metadata key-value pairs that were used to create the backup.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "RecoveryPointArn": "An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45."
}


Optional Parameters:
{}

"""

GetRecoveryPointRestoreMetadata(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata", args)
"""
    StartCopyJob

Starts a job to create a one-time copy of the specified resource.

Required Parameters:
{
  "SourceBackupVaultName": "The name of a logical source container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens. &gt;",
  "RecoveryPointArn": "An ARN that uniquely identifies a recovery point to use for the copy job; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45. ",
  "DestinationBackupVaultArn": "An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to copy to; for example, arn:aws:backup:us-east-1:123456789012:vault:aBackupVault.",
  "IamRoleArn": "Specifies the IAM role ARN used to copy the target recovery point; for example, arn:aws:iam::123456789012:role/S3Access."
}


Optional Parameters:
{
  "IdempotencyToken": "A customer chosen string that can be used to distinguish between calls to StartCopyJob.",
  "Lifecycle": ""
}

"""

StartCopyJob(args) = backup("PUT", "/copy-jobs", args)
"""
    PutBackupVaultAccessPolicy

Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{
  "Policy": "The backup vault access policy document in JSON format."
}

"""

PutBackupVaultAccessPolicy(args) = backup("PUT", "/backup-vaults/{backupVaultName}/access-policy", args)
"""
    GetBackupVaultNotifications

Returns event notifications for the specified backup vault.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens."
}


Optional Parameters:
{}

"""

GetBackupVaultNotifications(args) = backup("GET", "/backup-vaults/{backupVaultName}/notification-configuration", args)
"""
    StartRestoreJob

Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.

Required Parameters:
{
  "RecoveryPointArn": "An ARN that uniquely identifies a recovery point; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.",
  "Metadata": "A set of metadata key-value pairs. Contains information, such as a resource name, required to restore a recovery point.  You can get configuration metadata about a resource at the time it was backed-up by calling GetRecoveryPointRestoreMetadata. However, values in addition to those provided by GetRecoveryPointRestoreMetadata might be required to restore a resource. For example, you might need to provide a new resource name if the original already exists. You need to specify specific metadata to restore an Amazon Elastic File System (Amazon EFS) instance:    file-system-id: ID of the Amazon EFS file system that is backed up by AWS Backup. Returned in GetRecoveryPointRestoreMetadata.    Encrypted: A Boolean value that, if true, specifies that the file system is encrypted. If KmsKeyId is specified, Encrypted must be set to true.    KmsKeyId: Specifies the AWS KMS key that is used to encrypt the restored file system.    PerformanceMode: Specifies the throughput mode of the file system.    CreationToken: A user-supplied value that ensures the uniqueness (idempotency) of the request.    newFileSystem: A Boolean value that, if true, specifies that the recovery point is restored to a new Amazon EFS file system.  ",
  "IamRoleArn": "The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses to create the target recovery point; for example, arn:aws:iam::123456789012:role/S3Access."
}


Optional Parameters:
{
  "IdempotencyToken": "A customer chosen string that can be used to distinguish between calls to StartRestoreJob.",
  "ResourceType": "Starts a job to restore a recovery point for one of the following resources:    EBS for Amazon Elastic Block Store    Storage Gateway for AWS Storage Gateway    RDS for Amazon Relational Database Service    DDB for Amazon DynamoDB    EFS for Amazon Elastic File System  "
}

"""

StartRestoreJob(args) = backup("PUT", "/restore-jobs", args)
"""
    UpdateRecoveryPointLifecycle

Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "RecoveryPointArn": "An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45."
}


Optional Parameters:
{
  "Lifecycle": "The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. "
}

"""

UpdateRecoveryPointLifecycle(args) = backup("POST", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)
"""
    DescribeRecoveryPoint

Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "RecoveryPointArn": "An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example, arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45."
}


Optional Parameters:
{}

"""

DescribeRecoveryPoint(args) = backup("GET", "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", args)
"""
    StopBackupJob

Attempts to cancel a job to create a one-time backup of a resource.

Required Parameters:
{
  "BackupJobId": "Uniquely identifies a request to AWS Backup to back up a resource."
}


Optional Parameters:
{}

"""

StopBackupJob(args) = backup("POST", "/backup-jobs/{backupJobId}", args)
"""
    StartBackupJob

Starts a job to create a one-time backup of the specified resource.

Required Parameters:
{
  "BackupVaultName": "The name of a logical container where backups are stored. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "ResourceArn": "An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN depends on the resource type.",
  "IamRoleArn": "Specifies the IAM role ARN used to create the target recovery point; for example, arn:aws:iam::123456789012:role/S3Access."
}


Optional Parameters:
{
  "CompleteWindowMinutes": "The amount of time AWS Backup attempts a backup before canceling the job and returning an error.",
  "IdempotencyToken": "A customer chosen string that can be used to distinguish between calls to StartBackupJob.",
  "StartWindowMinutes": "The amount of time in minutes before beginning a backup.",
  "RecoveryPointTags": "To help organize your resources, you can assign your own metadata to the resources that you create. Each tag is a key-value pair.",
  "Lifecycle": "The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup will transition and expire backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. "
}

"""

StartBackupJob(args) = backup("PUT", "/backup-jobs", args)
"""
    ListCopyJobs

Returns metadata about your copy jobs.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "ByCreatedBefore": "Returns only copy jobs that were created before the specified date.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token. ",
  "ByCreatedAfter": "Returns only copy jobs that were created after the specified date.",
  "ByResourceType": "Returns only backup jobs for the specified resources:    DynamoDB for Amazon DynamoDB    EBS for Amazon Elastic Block Store    EFS for Amazon Elastic File System    RDS for Amazon Relational Database Service    Storage Gateway for AWS Storage Gateway  ",
  "ByDestinationVaultArn": "An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy from; for example, arn:aws:backup:us-east-1:123456789012:vault:aBackupVault. ",
  "ByResourceArn": "Returns only copy jobs that match the specified resource Amazon Resource Name (ARN). ",
  "ByState": "Returns only copy jobs that are in the specified state."
}

"""
ListCopyJobs() = backup("GET", "/copy-jobs/")
ListCopyJobs(args) = backup("GET", "/copy-jobs/", args)

"""
    GetBackupSelection

Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.

Required Parameters:
{
  "SelectionId": "Uniquely identifies the body of a request to assign a set of resources to a backup plan.",
  "BackupPlanId": "Uniquely identifies a backup plan."
}


Optional Parameters:
{}

"""

GetBackupSelection(args) = backup("GET", "/backup/plans/{backupPlanId}/selections/{selectionId}", args)
"""
    ListBackupJobs

Returns metadata about your backup jobs.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "ByCreatedBefore": "Returns only backup jobs that were created before the specified date.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token.",
  "ByCreatedAfter": "Returns only backup jobs that were created after the specified date.",
  "ByResourceType": "Returns only backup jobs for the specified resources:    DynamoDB for Amazon DynamoDB    EBS for Amazon Elastic Block Store    EFS for Amazon Elastic File System    RDS for Amazon Relational Database Service    Storage Gateway for AWS Storage Gateway  ",
  "ByBackupVaultName": "Returns only backup jobs that will be stored in the specified backup vault. Backup vaults are identified by names that are unique to the account used to create them and the AWS Region where they are created. They consist of lowercase letters, numbers, and hyphens.",
  "ByResourceArn": "Returns only backup jobs that match the specified resource Amazon Resource Name (ARN).",
  "ByState": "Returns only backup jobs that are in the specified state."
}

"""
ListBackupJobs() = backup("GET", "/backup-jobs/")
ListBackupJobs(args) = backup("GET", "/backup-jobs/", args)

"""
    DescribeCopyJob

Returns metadata associated with creating a copy of a resource.

Required Parameters:
{
  "CopyJobId": "Uniquely identifies a request to AWS Backup to copy a resource."
}


Optional Parameters:
{}

"""

DescribeCopyJob(args) = backup("GET", "/copy-jobs/{copyJobId}", args)
"""
    DescribeBackupJob

Returns metadata associated with creating a backup of a resource.

Required Parameters:
{
  "BackupJobId": "Uniquely identifies a request to AWS Backup to back up a resource."
}


Optional Parameters:
{}

"""

DescribeBackupJob(args) = backup("GET", "/backup-jobs/{backupJobId}", args)
"""
    UpdateBackupPlan

Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.

Required Parameters:
{
  "BackupPlanId": "Uniquely identifies a backup plan.",
  "BackupPlan": "Specifies the body of a backup plan. Includes a BackupPlanName and one or more sets of Rules."
}


Optional Parameters:
{}

"""

UpdateBackupPlan(args) = backup("POST", "/backup/plans/{backupPlanId}", args)
"""
    ListTags

Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.

Required Parameters:
{
  "ResourceArn": "An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN depends on the type of resource. Valid targets for ListTags are recovery points, backup plans, and backup vaults."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token."
}

"""

ListTags(args) = backup("GET", "/tags/{resourceArn}/", args)
"""
    DescribeProtectedResource

Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.

Required Parameters:
{
  "ResourceArn": "An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN depends on the resource type."
}


Optional Parameters:
{}

"""

DescribeProtectedResource(args) = backup("GET", "/resources/{resourceArn}", args)
"""
    CreateBackupPlan

Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.

Required Parameters:
{
  "BackupPlan": "Specifies the body of a backup plan. Includes a BackupPlanName and one or more sets of Rules."
}


Optional Parameters:
{
  "BackupPlanTags": "To help organize your resources, you can assign your own metadata to the resources that you create. Each tag is a key-value pair. The specified tags are assigned to all backups created with this plan.",
  "CreatorRequestId": "Identifies the request and allows failed requests to be retried without the risk of executing the operation twice. If the request includes a CreatorRequestId that matches an existing backup plan, that plan is returned. This parameter is optional."
}

"""

CreateBackupPlan(args) = backup("PUT", "/backup/plans/", args)
"""
    ListBackupPlans

Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to be returned.",
  "NextToken": "The next item following a partial list of returned items. For example, if a request is made to return maxResults number of items, NextToken allows you to return more items in your list starting at the location pointed to by the next token.",
  "IncludeDeleted": "A Boolean value with a default value of FALSE that returns deleted backup plans when set to TRUE."
}

"""
ListBackupPlans() = backup("GET", "/backup/plans/")
ListBackupPlans(args) = backup("GET", "/backup/plans/", args)
