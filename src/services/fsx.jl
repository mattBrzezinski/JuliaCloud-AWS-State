include("../AWSCorePrototypeServices.jl")
using .Services: fsx

"""
    ListTagsForResource()

Lists tags for an Amazon FSx file systems and backups in the case of Amazon FSx for Windows File Server. When retrieving all tags, you can optionally specify the MaxResults parameter to limit the number of tags in a response. If more tags remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your tags. ListTagsForResource is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of tags returned in the response of one ListTagsForResource call and the order of tags returned across the responses of a multi-call iteration is unspecified.  

Required Parameters
{
  "ResourceARN": "The ARN of the Amazon FSx resource that will have its tags listed."
}

Optional Parameters
{
  "MaxResults": "Maximum number of tags to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon FSx returns is the minimum of the MaxResults parameter specified in the request and the service's internal maximum number of items per page.",
  "NextToken": "Opaque pagination token returned from a previous ListTagsForResource operation (String). If a token present, the action continues the list from where the returning call left off."
}
"""
ListTagsForResource(args) = fsx("ListTagsForResource", args)

"""
    CreateFileSystemFromBackup()

Creates a new Amazon FSx file system from an existing Amazon FSx backup. If a file system with the specified client request token exists and the parameters match, this operation returns the description of the file system. If a client request token specified by the file system exists and the parameters don't match, this call returns IncompatibleParameterError. If a file system with the specified client request token doesn't exist, this operation does the following:   Creates a new Amazon FSx file system from backup with an assigned ID, and an initial lifecycle state of CREATING.   Returns the description of the file system.   Parameters like Active Directory, default share name, automatic backup, and backup settings default to the parameters of the file system that was backed up, unless overridden. You can explicitly supply other settings. By using the idempotent operation, you can retry a CreateFileSystemFromBackup call without the risk of creating an extra file system. This approach can be useful when an initial call fails in a way that makes it unclear whether a file system was created. Examples are if a transport level timeout occurred, or your connection was reset. If you use the same client request token and the initial call created a file system, the client receives success as long as the parameters are the same.  The CreateFileSystemFromBackup call returns while the file system's lifecycle state is still CREATING. You can check the file-system creation status by calling the DescribeFileSystems operation, which returns the file system state along with other information. 

Required Parameters
{
  "BackupId": "",
  "SubnetIds": "Specifies the IDs of the subnets that the file system will be accessible from. For Windows MULTI_AZ_1 file system deployment types, provide exactly two subnet IDs, one for the preferred file server and one for the standby file server. You specify one of these subnets as the preferred subnet using the WindowsConfiguration &gt; PreferredSubnetID property. For Windows SINGLE_AZ_1 and SINGLE_AZ_2 deployment types and Lustre file systems, provide exactly one subnet ID. The file server is launched in that subnet's Availability Zone."
}

Optional Parameters
{
  "WindowsConfiguration": "The configuration for this Microsoft Windows file system.",
  "ClientRequestToken": "A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent creation. This string is automatically filled on your behalf when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.",
  "SecurityGroupIds": "A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups apply to all network interfaces. This value isn't returned in later DescribeFileSystem requests.",
  "Tags": "The tags to be applied to the file system at file system creation. The key value of the Name tag appears in the console as the file system name.",
  "LustreConfiguration": "",
  "StorageType": "Sets the storage type for the Windows file system you're creating from a backup. Valid values are SSD and HDD.   Set to SSD to use solid state drive storage. Supported on all Windows deployment types.   Set to HDD to use hard disk drive storage. Supported on SINGLE_AZ_2 and MULTI_AZ_1 Windows file system deployment types.     Default value is SSD.   HDD and SSD storage types have different minimum storage capacity requirements. A restored file system's storage capacity is tied to the file system that was backed up. You can create a file system that uses HDD storage from a backup of a file system that used SSD storage only if the original SSD file system had a storage capacity of at least 2000 GiB.  "
}
"""
CreateFileSystemFromBackup(args) = fsx("CreateFileSystemFromBackup", args)

"""
    UpdateFileSystem()

Use this operation to update the configuration of an existing Amazon FSx file system. You can update multiple properties in a single request. For Amazon FSx for Windows File Server file systems, you can update the following properties:   AutomaticBackupRetentionDays   DailyAutomaticBackupStartTime   SelfManagedActiveDirectoryConfiguration   StorageCapacity   ThroughputCapacity   WeeklyMaintenanceStartTime   For Amazon FSx for Lustre file systems, you can update the following properties:   AutoImportPolicy   AutomaticBackupRetentionDays   DailyAutomaticBackupStartTime   WeeklyMaintenanceStartTime  

Required Parameters
{
  "FileSystemId": "Identifies the file system that you are updating."
}

Optional Parameters
{
  "StorageCapacity": "Use this parameter to increase the storage capacity of an Amazon FSx for Windows File Server file system. Specifies the storage capacity target value, GiB, for the file system you're updating. The storage capacity target value must be at least 10 percent (%) greater than the current storage capacity value. In order to increase storage capacity, the file system needs to have at least 16 MB/s of throughput capacity. You cannot make a storage capacity increase request if there is an existing storage capacity increase request in progress. For more information, see Managing Storage Capacity.",
  "WindowsConfiguration": "The configuration updates for an Amazon FSx for Windows File Server file system.",
  "ClientRequestToken": "A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent updates. This string is automatically filled on your behalf when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.",
  "LustreConfiguration": ""
}
"""
UpdateFileSystem(args) = fsx("UpdateFileSystem", args)

"""
    DescribeBackups()

Returns the description of specific Amazon FSx backups, if a BackupIds value is provided for that backup. Otherwise, it returns all backups owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all backups, you can optionally specify the MaxResults parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your backups. DescribeBackups is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of backups returned in the response of one DescribeBackups call and the order of backups returned across the responses of a multi-call iteration is unspecified.  

Optional Parameters
{
  "MaxResults": "Maximum number of backups to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon FSx returns is the minimum of the MaxResults parameter specified in the request and the service's internal maximum number of items per page.",
  "NextToken": "Opaque pagination token returned from a previous DescribeBackups operation (String). If a token present, the action continues the list from where the returning call left off.",
  "BackupIds": "IDs of the backups you want to retrieve (String). This overrides any filters. If any IDs are not found, BackupNotFound will be thrown.",
  "Filters": "Filters structure. Supported names are file-system-id and backup-type."
}
"""

DescribeBackups() = fsx("DescribeBackups")
DescribeBackups(args) = fsx("DescribeBackups", args)

"""
    CreateBackup()

Creates a backup of an existing Amazon FSx file system. Creating regular backups for your file system is a best practice, enabling you to restore a file system from a backup if an issue arises with the original file system. For Amazon FSx for Lustre file systems, you can create a backup only for file systems with the following configuration:   a Persistent deployment type   is not linked to a data respository.   For more information about backing up Amazon FSx for Lustre file systems, see Working with FSx for Lustre backups. For more information about backing up Amazon FSx for Lustre file systems, see Working with FSx for Windows backups. If a backup with the specified client request token exists, and the parameters match, this operation returns the description of the existing backup. If a backup specified client request token exists, and the parameters don't match, this operation returns IncompatibleParameterError. If a backup with the specified client request token doesn't exist, CreateBackup does the following:    Creates a new Amazon FSx backup with an assigned ID, and an initial lifecycle state of CREATING.   Returns the description of the backup.   By using the idempotent operation, you can retry a CreateBackup operation without the risk of creating an extra backup. This approach can be useful when an initial call fails in a way that makes it unclear whether a backup was created. If you use the same client request token and the initial call created a backup, the operation returns a successful result because all the parameters are the same. The CreateBackup operation returns while the backup's lifecycle state is still CREATING. You can check the backup creation status by calling the DescribeBackups operation, which returns the backup state along with other information.

Required Parameters
{
  "FileSystemId": "The ID of the file system to back up."
}

Optional Parameters
{
  "ClientRequestToken": "(Optional) A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent creation. This string is automatically filled on your behalf when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.",
  "Tags": "(Optional) The tags to apply to the backup at backup creation. The key value of the Name tag appears in the console as the backup name. If you have set CopyTagsToBackups to true, and you specify one or more tags using the CreateBackup action, no existing file system tags are copied from the file system to the backup."
}
"""
CreateBackup(args) = fsx("CreateBackup", args)

"""
    TagResource()

Tags an Amazon FSx resource.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the Amazon FSx resource that you want to tag.",
  "Tags": "A list of tags for the resource. If a tag with a given key already exists, the value is replaced by the one specified in this parameter."
}
"""
TagResource(args) = fsx("TagResource", args)

"""
    UntagResource()

This action removes a tag from an Amazon FSx resource.

Required Parameters
{
  "ResourceARN": "The ARN of the Amazon FSx resource to untag.",
  "TagKeys": "A list of keys of tags on the resource to untag. In case the tag key doesn't exist, the call will still succeed to be idempotent."
}
"""
UntagResource(args) = fsx("UntagResource", args)

"""
    DescribeFileSystems()

Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system. Otherwise, it returns descriptions of all file systems owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxResults parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your file system descriptions. DescribeFileSystems is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multicall iteration is unspecified.  

Optional Parameters
{
  "MaxResults": "Maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon FSx returns is the minimum of the MaxResults parameter specified in the request and the service's internal maximum number of items per page.",
  "NextToken": "Opaque pagination token returned from a previous DescribeFileSystems operation (String). If a token present, the action continues the list from where the returning call left off.",
  "FileSystemIds": "IDs of the file systems whose descriptions you want to retrieve (String)."
}
"""

DescribeFileSystems() = fsx("DescribeFileSystems")
DescribeFileSystems(args) = fsx("DescribeFileSystems", args)

"""
    CreateDataRepositoryTask()

Creates an Amazon FSx for Lustre data repository task. You use data repository tasks to perform bulk operations between your Amazon FSx file system and its linked data repository. An example of a data repository task is exporting any data and metadata changes, including POSIX metadata, to files, directories, and symbolic links (symlinks) from your FSx file system to its linked data repository. A CreateDataRepositoryTask operation will fail if a data repository is not linked to the FSx file system. To learn more about data repository tasks, see Using Data Repository Tasks. To learn more about linking a data repository to your file system, see Setting the Export Prefix.

Required Parameters
{
  "Report": "Defines whether or not Amazon FSx provides a CompletionReport once the task has completed. A CompletionReport provides a detailed report on the files that Amazon FSx processed that meet the criteria specified by the Scope parameter. For more information, see Working with Task Completion Reports.",
  "Type": "Specifies the type of data repository task to create.",
  "FileSystemId": ""
}

Optional Parameters
{
  "ClientRequestToken": "",
  "Tags": "",
  "Paths": "(Optional) The path or paths on the Amazon FSx file system to use when the data repository task is processed. The default path is the file system root directory. The paths you provide need to be relative to the mount point of the file system. If the mount point is /mnt/fsx and /mnt/fsx/path1 is a directory or file on the file system you want to export, then the path to provide is path1. If a path that you provide isn't valid, the task fails."
}
"""
CreateDataRepositoryTask(args) = fsx("CreateDataRepositoryTask", args)

"""
    CreateFileSystem()

Creates a new, empty Amazon FSx file system. If a file system with the specified client request token exists and the parameters match, CreateFileSystem returns the description of the existing file system. If a file system specified client request token exists and the parameters don't match, this call returns IncompatibleParameterError. If a file system with the specified client request token doesn't exist, CreateFileSystem does the following:    Creates a new, empty Amazon FSx file system with an assigned ID, and an initial lifecycle state of CREATING.   Returns the description of the file system.   This operation requires a client request token in the request that Amazon FSx uses to ensure idempotent creation. This means that calling the operation multiple times with the same client request token has no effect. By using the idempotent operation, you can retry a CreateFileSystem operation without the risk of creating an extra file system. This approach can be useful when an initial call fails in a way that makes it unclear whether a file system was created. Examples are if a transport level timeout occurred, or your connection was reset. If you use the same client request token and the initial call created a file system, the client receives success as long as the parameters are the same.  The CreateFileSystem call returns while the file system's lifecycle state is still CREATING. You can check the file-system creation status by calling the DescribeFileSystems operation, which returns the file system state along with other information. 

Required Parameters
{
  "StorageCapacity": "Sets the storage capacity of the file system that you're creating. For Lustre file systems:   For SCRATCH_2 and PERSISTENT_1 SSD deployment types, valid values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.   For PERSISTENT HDD file systems, valid values are increments of 6000 GiB for 12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.   For SCRATCH_1 deployment type, valid values are 1200 GiB, 2400 GiB, and increments of 3600 GiB.   For Windows file systems:   If StorageType=SSD, valid values are 32 GiB - 65,536 GiB (64 TiB).   If StorageType=HDD, valid values are 2000 GiB - 65,536 GiB (64 TiB).  ",
  "SubnetIds": "Specifies the IDs of the subnets that the file system will be accessible from. For Windows MULTI_AZ_1 file system deployment types, provide exactly two subnet IDs, one for the preferred file server and one for the standby file server. You specify one of these subnets as the preferred subnet using the WindowsConfiguration &gt; PreferredSubnetID property. For Windows SINGLE_AZ_1 and SINGLE_AZ_2 file system deployment types and Lustre file systems, provide exactly one subnet ID. The file server is launched in that subnet's Availability Zone.",
  "FileSystemType": "The type of Amazon FSx file system to create, either WINDOWS or LUSTRE."
}

Optional Parameters
{
  "WindowsConfiguration": "The Microsoft Windows configuration for the file system being created. ",
  "ClientRequestToken": "A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent creation. This string is automatically filled on your behalf when you use the AWS Command Line Interface (AWS CLI) or an AWS SDK.",
  "SecurityGroupIds": "A list of IDs specifying the security groups to apply to all network interfaces created for file system access. This list isn't returned in later requests to describe the file system.",
  "Tags": "The tags to apply to the file system being created. The key value of the Name tag appears in the console as the file system name.",
  "LustreConfiguration": "",
  "StorageType": "Sets the storage type for the file system you're creating. Valid values are SSD and HDD.   Set to SSD to use solid state drive storage. SSD is supported on all Windows and Lustre deployment types.   Set to HDD to use hard disk drive storage. HDD is supported on SINGLE_AZ_2 and MULTI_AZ_1 Windows file system deployment types, and on PERSISTENT Lustre file system deployment types.     Default value is SSD. For more information, see  Storage Type Options in the Amazon FSx for Windows User Guide and Multiple Storage Options in the Amazon FSx for Lustre User Guide. ",
  "KmsKeyId": ""
}
"""
CreateFileSystem(args) = fsx("CreateFileSystem", args)

"""
    DeleteBackup()

Deletes an Amazon FSx backup, deleting its contents. After deletion, the backup no longer exists, and its data is gone. The DeleteBackup call returns instantly. The backup will not show up in later DescribeBackups calls.  The data in a deleted backup is also deleted and can't be recovered by any means. 

Required Parameters
{
  "BackupId": "The ID of the backup you want to delete."
}

Optional Parameters
{
  "ClientRequestToken": "A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent deletion. This is automatically filled on your behalf when using the AWS CLI or SDK."
}
"""
DeleteBackup(args) = fsx("DeleteBackup", args)

"""
    DescribeDataRepositoryTasks()

Returns the description of specific Amazon FSx for Lustre data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request. You can use filters to narrow the response to include just tasks for specific file systems, or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all tasks, you can paginate the response by using the optional MaxResults parameter to limit the number of tasks returned in a response. If more tasks remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response.

Optional Parameters
{
  "MaxResults": "",
  "NextToken": "",
  "TaskIds": "(Optional) IDs of the tasks whose descriptions you want to retrieve (String).",
  "Filters": "(Optional) You can use filters to narrow the DescribeDataRepositoryTasks response to include just tasks for specific file systems, or tasks in a specific lifecycle state."
}
"""

DescribeDataRepositoryTasks() = fsx("DescribeDataRepositoryTasks")
DescribeDataRepositoryTasks(args) = fsx("DescribeDataRepositoryTasks", args)

"""
    DeleteFileSystem()

Deletes a file system, deleting its contents. After deletion, the file system no longer exists, and its data is gone. Any existing automatic backups will also be deleted. By default, when you delete an Amazon FSx for Windows File Server file system, a final backup is created upon deletion. This final backup is not subject to the file system's retention policy, and must be manually deleted. The DeleteFileSystem action returns while the file system has the DELETING status. You can check the file system deletion status by calling the DescribeFileSystems action, which returns a list of file systems in your account. If you pass the file system ID for a deleted file system, the DescribeFileSystems returns a FileSystemNotFound error.  Deleting an Amazon FSx for Lustre file system will fail with a 400 BadRequest if a data repository task is in a PENDING or EXECUTING state.   The data in a deleted file system is also deleted and can't be recovered by any means. 

Required Parameters
{
  "FileSystemId": "The ID of the file system you want to delete."
}

Optional Parameters
{
  "WindowsConfiguration": "",
  "ClientRequestToken": "A string of up to 64 ASCII characters that Amazon FSx uses to ensure idempotent deletion. This is automatically filled on your behalf when using the AWS CLI or SDK.",
  "LustreConfiguration": ""
}
"""
DeleteFileSystem(args) = fsx("DeleteFileSystem", args)

"""
    CancelDataRepositoryTask()

Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the PENDING or EXECUTING state. When you cancel a task, Amazon FSx does the following.   Any files that FSx has already exported are not reverted.   FSx continues to export any files that are "in-flight" when the cancel operation is received.   FSx does not export any files that have not yet been exported.  

Required Parameters
{
  "TaskId": "Specifies the data repository task to cancel."
}
"""
CancelDataRepositoryTask(args) = fsx("CancelDataRepositoryTask", args)