include("../AWSCorePrototypeServices.jl")
using .Services: storage_gateway

"""
Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request. This operation is supported for the stored volume, cached volume and tape gateway types.

Required Parameters:
GatewayARN, BandwidthType
"""
DeleteBandwidthRateLimit(args) = storage_gateway("DeleteBandwidthRateLimit", args)

"""
Lists gateways owned by an AWS account in an AWS Region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN). By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response. If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.
"""
ListGateways() = storage_gateway("ListGateways")

"""
Disconnects a volume from an iSCSI connection and then detaches the volume from the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance. This operation is only supported in the volume gateway type.

Required Parameters:
VolumeARN
"""
DetachVolume(args) = storage_gateway("DetachVolume", args)

"""
Gets a description of a Server Message Block (SMB) file share settings from a file gateway. This operation is only supported for file gateways.

Required Parameters:
GatewayARN
"""
DescribeSMBSettings(args) = storage_gateway("DescribeSMBSettings", args)

"""
Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs. This operation is only supported in stored volume gateway type.

Required Parameters:
VolumeARNs
"""
DescribeStorediSCSIVolumes(args) = storage_gateway("DescribeStorediSCSIVolumes", args)

"""
Creates a virtual tape by using your own barcode. You write data to the virtual tape and then archive the tape. A barcode is unique and can not be reused if it has already been used on a tape . This applies to barcodes used on deleted tapes. This operation is only supported in the tape gateway type.  Cache storage must be allocated to the gateway before you can create a virtual tape. Use the AddCache operation to add cache storage to a gateway. 

Required Parameters:
GatewayARN, TapeSizeInBytes, TapeBarcode
"""
CreateTapeWithBarcode(args) = storage_gateway("CreateTapeWithBarcode", args)

"""
Returns information about the cache of a gateway. This operation is only supported in the cached volume, tape and file gateway types. The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.

Required Parameters:
GatewayARN
"""
DescribeCache(args) = storage_gateway("DescribeCache", args)

"""
Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair. This operation is supported in the volume and tape gateway types.

Required Parameters:
TargetARN
"""
DescribeChapCredentials(args) = storage_gateway("DescribeChapCredentials", args)

"""
Sets the password for the guest user smbguest. The smbguest user is the user when the authentication method for the file share is set to GuestAccess.

Required Parameters:
GatewayARN, Password
"""
SetSMBGuestPassword(args) = storage_gateway("SetSMBGuestPassword", args)

"""
Updates a snapshot schedule configured for a gateway volume. This operation is only supported in the cached volume and stored volume gateway types. The default snapshot schedule for volume is once every 24 hours, starting at the creation time of the volume. You can use this API to change the snapshot schedule configured for the volume. In the request you must identify the gateway volume whose snapshot schedule you want to update, and the schedule information, including when you want the snapshot to begin on a day and the frequency (in hours) of snapshots.

Required Parameters:
VolumeARN, StartAt, RecurrenceInHours
"""
UpdateSnapshotSchedule(args) = storage_gateway("UpdateSnapshotSchedule", args)

"""
Configures one or more gateway local disks as cache for a gateway. This operation is only supported in the cached volume, tape and file gateway type (see Storage Gateway Concepts). In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add cache, and one or more disk IDs that you want to configure as cache.

Required Parameters:
GatewayARN, DiskIds
"""
AddCache(args) = storage_gateway("AddCache", args)

"""
Connects a volume to an iSCSI connection and then attaches the volume to the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.

Required Parameters:
GatewayARN, VolumeARN, NetworkInterfaceId
"""
AttachVolume(args) = storage_gateway("AttachVolume", args)

"""
Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains. This operation is supported for the stored volume, cached volume and tape gateway types.' By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.

Required Parameters:
GatewayARN
"""
UpdateBandwidthRateLimit(args) = storage_gateway("UpdateBandwidthRateLimit", args)

"""
Retrieves the recovery point for the specified virtual tape. This operation is only supported in the tape gateway type. A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.  The virtual tape can be retrieved to only one gateway. The retrieved tape is read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge for retrieving recovery points. 

Required Parameters:
TapeARN, GatewayARN
"""
RetrieveTapeRecoveryPoint(args) = storage_gateway("RetrieveTapeRecoveryPoint", args)

"""
Activates the gateway you previously deployed on your host. In the activation process, you specify information such as the AWS Region that you want to use for storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account; for more information, see UpdateGatewayInformation.  You must turn on the gateway VM before you can activate your gateway. 

Required Parameters:
ActivationKey, GatewayName, GatewayTimezone, GatewayRegion
"""
ActivateGateway(args) = storage_gateway("ActivateGateway", args)

"""
Returns information about the working storage of a gateway. This operation is only supported in the stored volumes gateway type. This operation is deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer instead.  Working storage is also referred to as upload buffer. You can also use the DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.  The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.

Required Parameters:
GatewayARN
"""
DescribeWorkingStorage(args) = storage_gateway("DescribeWorkingStorage", args)

"""
Returns a description of the gateway volumes specified in the request. This operation is only supported in the cached volume gateway types. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).

Required Parameters:
VolumeARNs
"""
DescribeCachediSCSIVolumes(args) = storage_gateway("DescribeCachediSCSIVolumes", args)

"""
Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair. This operation is supported in volume and tape gateway types.

Required Parameters:
TargetARN, InitiatorName
"""
DeleteChapCredentials(args) = storage_gateway("DeleteChapCredentials", args)

"""
Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the DescribeStorediSCSIVolumes or the DescribeCachediSCSIVolumes API. The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the Limit field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.
"""
ListVolumes() = storage_gateway("ListVolumes")

"""
Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use ListVolumeRecoveryPoints. In the CreateSnapshotFromVolumeRecoveryPoint request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.  To list or delete a snapshot, you must use the Amazon EC2 API. For more information, in Amazon Elastic Compute Cloud API Reference. 

Required Parameters:
VolumeARN, SnapshotDescription
"""
CreateSnapshotFromVolumeRecoveryPoint(args) = storage_gateway("CreateSnapshotFromVolumeRecoveryPoint", args)

"""
Creates a Network File System (NFS) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using a NFS interface. This operation is only supported for file gateways.  File gateway requires AWS Security Token Service (AWS STS) to be activated to enable you create a file share. Make sure AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in the AWS Region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.  File gateway does not support creating hard or symbolic links on a file share. 

Required Parameters:
ClientToken, GatewayARN, Role, LocationARN
"""
CreateNFSFileShare(args) = storage_gateway("CreateNFSFileShare", args)

"""
Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.

Required Parameters:
GatewayARN, LocalConsolePassword
"""
SetLocalConsolePassword(args) = storage_gateway("SetLocalConsolePassword", args)

"""
Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN
"""
DescribeVTLDevices(args) = storage_gateway("DescribeVTLDevices", args)

"""
Configures one or more gateway local disks as working storage for a gateway. This operation is only supported in the stored volume gateway type. This operation is deprecated in cached volume API version 20120630. Use AddUploadBuffer instead.  Working storage is also referred to as upload buffer. You can also use the AddUploadBuffer operation to add upload buffer to a stored volume gateway.  In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add working storage, and one or more disk IDs that you want to configure as working storage.

Required Parameters:
GatewayARN, DiskIds
"""
AddWorkingStorage(args) = storage_gateway("AddWorkingStorage", args)

"""
Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.

Required Parameters:
GatewayARN
"""
DescribeMaintenanceStartTime(args) = storage_gateway("DescribeMaintenanceStartTime", args)

"""
Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume. This operation is only supported in the cached volume and stored volume types.

Required Parameters:
VolumeARN
"""
DescribeSnapshotSchedule(args) = storage_gateway("DescribeSnapshotSchedule", args)

"""
Start a test that verifies that the specified gateway is configured for High Availability monitoring in your host environment. This request only initiates the test and that a successful response only indicates that the test was started. It doesn't indicate that the test passed. For the status of the test, invoke the DescribeAvailabilityMonitorTest API.   Starting this test will cause your gateway to go offline for a brief period. 

Required Parameters:
GatewayARN
"""
StartAvailabilityMonitorTest(args) = storage_gateway("StartAvailabilityMonitorTest", args)

"""
Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.
"""
ListFileShares() = storage_gateway("ListFileShares")

"""
Sends you notification through CloudWatch Events when all files written to your file share have been uploaded to Amazon S3. AWS Storage Gateway can send a notification through Amazon CloudWatch Events when all files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the file share up to the time that you make a request for notification. When the upload is done, Storage Gateway sends you notification through an Amazon CloudWatch Event. You can configure CloudWatch Events to send the notification through event targets such as Amazon SNS or AWS Lambda function. This operation is only supported for file gateways. For more information, see Getting File Upload Notification in the Storage Gateway User Guide (https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification). 

Required Parameters:
FileShareARN
"""
NotifyWhenUploaded(args) = storage_gateway("NotifyWhenUploaded", args)

"""
Returns a list of virtual tape recovery points that are available for the specified tape gateway. A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN
"""
DescribeTapeRecoveryPoints(args) = storage_gateway("DescribeTapeRecoveryPoints", args)

"""
Lists the recovery points for a specified gateway. This operation is only supported in the cached volume gateway type. Each cache volume has one recovery point. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot or clone a new cached volume from a source volume. To create a snapshot from a volume recovery point use the CreateSnapshotFromVolumeRecoveryPoint operation.

Required Parameters:
GatewayARN
"""
ListVolumeRecoveryPoints(args) = storage_gateway("ListVolumeRecoveryPoints", args)

"""
Assigns a tape to a tape pool for archiving. The tape assigned to a pool is archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the S3 storage class (Glacier or Deep Archive) that corresponds to the pool. Valid values: "GLACIER", "DEEP_ARCHIVE"

Required Parameters:
TapeARN, PoolId
"""
AssignTapePool(args) = storage_gateway("AssignTapePool", args)

"""
Updates a Server Message Block (SMB) file share.  To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported for file gateways.   File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.  File gateways don't support creating hard or symbolic links on a file share. 

Required Parameters:
FileShareARN
"""
UpdateSMBFileShare(args) = storage_gateway("UpdateSMBFileShare", args)

"""
Refreshes the cache for the specified file share. This operation finds objects in the Amazon S3 bucket that were added, removed or replaced since the gateway last listed the bucket's contents and cached the results. This operation is only supported in the file gateway type. You can subscribe to be notified through an Amazon CloudWatch event when your RefreshCache operation completes. For more information, see Getting Notified About File Operations. When this API is called, it only initiates the refresh operation. When the API call completes and returns a success code, it doesn't necessarily mean that the file refresh has completed. You should use the refresh-complete notification to determine that the operation has completed before you check for new files on the gateway file share. You can subscribe to be notified through an CloudWatch event when your RefreshCache operation completes.  Throttle limit: This API is asynchronous so the gateway will accept no more than two refreshes at any time. We recommend using the refresh-complete CloudWatch event notification before issuing additional requests. For more information, see Getting Notified About File Operations. If you invoke the RefreshCache API when two requests are already being processed, any new request will cause an InvalidGatewayRequestException error because too many requests were sent to the server. For more information, see "https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification".

Required Parameters:
FileShareARN
"""
RefreshCache(args) = storage_gateway("RefreshCache", args)

"""
Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS. This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the Limit parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a Marker element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.
"""
ListTapes() = storage_gateway("ListTapes")

"""
Updates the SMB security strategy on a file gateway. This action is only supported in file gateways.  This API is called Security level in the User Guide. A higher security level can affect performance of the gateway. 

Required Parameters:
GatewayARN, SMBSecurityStrategy
"""
UpdateSMBSecurityStrategy(args) = storage_gateway("UpdateSMBSecurityStrategy", args)

"""
Updates a Network File System (NFS) file share. This operation is only supported in the file gateway type.  To leave a file share field unchanged, set the corresponding input field to null.  Updates the following file share setting:   Default storage class for your S3 bucket   Metadata defaults for your S3 bucket   Allowed NFS clients for your file share   Squash settings   Write status of your file share    To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported in file gateways. 

Required Parameters:
FileShareARN
"""
UpdateNFSFileShare(args) = storage_gateway("UpdateNFSFileShare", args)

"""
Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage. If your cache disk encounters a error, the gateway prevents read and write operations on virtual tapes in the gateway. For example, an error can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the gateway loses its cache storage. At this point you can reconfigure the disks as cache disks. This operation is only supported in the cached volume and tape types.  If the cache disk you are resetting contains data that has not been uploaded to Amazon S3 yet, that data can be lost. After you reset cache disks, there will be no configured cache disks left in the gateway, so you must configure at least one new cache disk for your gateway to function properly. 

Required Parameters:
GatewayARN
"""
ResetCache(args) = storage_gateway("ResetCache", args)

"""
Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource Name (ARN) of the gateway in the body of your request. The operation shuts down the gateway service component running in the gateway's virtual machine (VM) and not the host VM.  If you want to shut down the VM, it is recommended that you first shut down the gateway component in the VM to avoid unpredictable conditions.  After the gateway is shutdown, you cannot call any other API except StartGateway, DescribeGatewayInformation, and ListGateways. For more information, see ActivateGateway. Your applications cannot read from or write to the gateway's storage volumes, and there are no snapshots taken.  When you make a shutdown request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to shut down. You can call the DescribeGatewayInformation API to check the status. For more information, see ActivateGateway.  If do not intend to use the gateway again, you must delete the gateway (using DeleteGateway) to no longer pay software charges associated with the gateway.

Required Parameters:
GatewayARN
"""
ShutdownGateway(args) = storage_gateway("ShutdownGateway", args)

"""
Lists the tags that have been added to the specified resource. This operation is supported in storage gateways of all types.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = storage_gateway("ListTagsForResource", args)

"""
Deletes a snapshot of a volume. You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see Working with Snapshots. In the DeleteSnapshotSchedule request, you identify the volume by providing its Amazon Resource Name (ARN). This operation is only supported in stored and cached volume gateway types.  To list or delete a snapshot, you must use the Amazon EC2 API. in Amazon Elastic Compute Cloud API Reference. 

Required Parameters:
VolumeARN
"""
DeleteSnapshotSchedule(args) = storage_gateway("DeleteSnapshotSchedule", args)

"""
Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN
"""
DescribeTapes(args) = storage_gateway("DescribeTapes", args)

"""
Creates a Server Message Block (SMB) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway expose file shares using a SMB interface. This operation is only supported for file gateways.  File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.  File gateways don't support creating hard or symbolic links on a file share. 

Required Parameters:
ClientToken, GatewayARN, Role, LocationARN
"""
CreateSMBFileShare(args) = storage_gateway("CreateSMBFileShare", args)

"""
Deletes the specified virtual tape. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN, TapeARN
"""
DeleteTape(args) = storage_gateway("DeleteTape", args)

"""
Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS, that is, archive. This operation is only supported in the tape gateway type. Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway. This operation is only supported in the tape gateway type.

Required Parameters:
TapeARN, GatewayARN
"""
RetrieveTapeArchive(args) = storage_gateway("RetrieveTapeArchive", args)

"""
Adds one or more tags to the specified resource. You use tags to add metadata to resources, which you can use to categorize these resources. For example, you can categorize resources by purpose, owner, environment, or team. Each tag consists of a key and a value, which you define. You can add tags to the following AWS Storage Gateway resources:   Storage gateways of all types   Storage volumes   Virtual tapes   NFS and SMB file shares   You can create a maximum of 50 tags for each resource. Virtual tapes and storage volumes that are recovered to a new gateway maintain their tags.

Required Parameters:
ResourceARN, Tags
"""
AddTagsToResource(args) = storage_gateway("AddTagsToResource", args)

"""
Removes one or more tags from the specified resource. This operation is supported in storage gateways of all types.

Required Parameters:
ResourceARN, TagKeys
"""
RemoveTagsFromResource(args) = storage_gateway("RemoveTagsFromResource", args)

"""
Starts a gateway that you previously shut down (see ShutdownGateway). After the gateway starts, you can then make other API calls, your applications can read from or write to the gateway's storage volumes and you will be able to take snapshot backups.  When you make a request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to be ready. You should call DescribeGatewayInformation and check the status before making any additional API calls. For more information, see ActivateGateway.  To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in your request.

Required Parameters:
GatewayARN
"""
StartGateway(args) = storage_gateway("StartGateway", args)

"""
Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated. The virtual tape is returned to the VTS. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN, TapeARN
"""
CancelRetrieval(args) = storage_gateway("CancelRetrieval", args)

"""
Disables a tape gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes. Use this operation for a tape gateway that is not reachable or not functioning. This operation is only supported in the tape gateway type.  Once a gateway is disabled it cannot be enabled. 

Required Parameters:
GatewayARN
"""
DisableGateway(args) = storage_gateway("DisableGateway", args)

"""
Creates a volume on a specified gateway. This operation is only supported in the stored volume gateway type. The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased. In the request you must specify the gateway and the disk information on which you are creating the volume. In response, the gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.

Required Parameters:
GatewayARN, DiskId, PreserveExistingData, TargetName, NetworkInterfaceId
"""
CreateStorediSCSIVolume(args) = storage_gateway("CreateStorediSCSIVolume", args)

"""
Updates a gateway's metadata, which includes the gateway's name and time zone. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.  For Gateways activated after September 2, 2015, the gateway's ARN contains the gateway ID rather than the gateway name. However, changing the name of the gateway has no effect on the gateway's ARN. 

Required Parameters:
GatewayARN
"""
UpdateGatewayInformation(args) = storage_gateway("UpdateGatewayInformation", args)

"""
Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.  When you make this request, you get a 200 OK success response immediately. However, it might take some time for the update to complete. You can call DescribeGatewayInformation to verify the gateway is in the STATE_RUNNING state.   A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see Customizing Your Windows iSCSI Settings and Customizing Your Linux iSCSI Settings, respectively. 

Required Parameters:
GatewayARN
"""
UpdateGatewaySoftwareNow(args) = storage_gateway("UpdateGatewaySoftwareNow", args)

"""
Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated. This operation is only supported in the tape gateway type.

Required Parameters:
GatewayARN, TapeARN
"""
CancelArchival(args) = storage_gateway("CancelArchival", args)

"""
Adds a file gateway to an Active Directory domain. This operation is only supported for file gateways that support the SMB file protocol.

Required Parameters:
GatewayARN, DomainName, UserName, Password
"""
JoinDomain(args) = storage_gateway("JoinDomain", args)

"""
Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request. The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a DiskStatus field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted).

Required Parameters:
GatewayARN
"""
ListLocalDisks(args) = storage_gateway("ListLocalDisks", args)

"""
Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it. This operation is supported in the volume and tape gateway types.  When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials. 

Required Parameters:
TargetARN, SecretToAuthenticateInitiator, InitiatorName
"""
UpdateChapCredentials(args) = storage_gateway("UpdateChapCredentials", args)

"""
Returns information about the upload buffer of a gateway. This operation is supported for the stored volume, cached volume and tape gateway types. The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.

Required Parameters:
GatewayARN
"""
DescribeUploadBuffer(args) = storage_gateway("DescribeUploadBuffer", args)

"""
Returns information about the most recent High Availability monitoring test that was performed on the host in a cluster. If a test isn't performed, the status and start time in the response would be null.

Required Parameters:
GatewayARN
"""
DescribeAvailabilityMonitorTest(args) = storage_gateway("DescribeAvailabilityMonitorTest", args)

"""
Creates one or more virtual tapes. You write data to the virtual tapes and then archive the tapes. This operation is only supported in the tape gateway type.  Cache storage must be allocated to the gateway before you can create virtual tapes. Use the AddCache operation to add cache storage to a gateway.  

Required Parameters:
GatewayARN, TapeSizeInBytes, ClientToken, NumTapesToCreate, TapeBarcodePrefix
"""
CreateTapes(args) = storage_gateway("CreateTapes", args)

"""
Updates the type of medium changer in a tape gateway. When you activate a tape gateway, you select a medium changer type for the tape gateway. This operation enables you to select a different type of medium changer after a tape gateway is activated. This operation is only supported in the tape gateway type.

Required Parameters:
VTLDeviceARN, DeviceType
"""
UpdateVTLDeviceType(args) = storage_gateway("UpdateVTLDeviceType", args)

"""
Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect. This operation is supported for the stored volume, cached volume and tape gateway types.' This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.

Required Parameters:
GatewayARN
"""
DescribeBandwidthRateLimit(args) = storage_gateway("DescribeBandwidthRateLimit", args)

"""
Initiates a snapshot of a volume. AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad hoc basis. This API enables you to take ad-hoc snapshot. For more information, see Editing a Snapshot Schedule. In the CreateSnapshot request you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway Console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot. This operation is only supported in stored and cached volume gateway type.  To list or delete a snapshot, you must use the Amazon EC2 API. For more information, see DescribeSnapshots or DeleteSnapshot in the EC2 API reference.   Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the Welcome page. 

Required Parameters:
VolumeARN, SnapshotDescription
"""
CreateSnapshot(args) = storage_gateway("CreateSnapshot", args)

"""
Configures one or more gateway local disks as upload buffer for a specified gateway. This operation is supported for the stored volume, cached volume and tape gateway types. In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add upload buffer, and one or more disk IDs that you want to configure as upload buffer.

Required Parameters:
GatewayARN, DiskIds
"""
AddUploadBuffer(args) = storage_gateway("AddUploadBuffer", args)

"""
Gets a description for one or more Network File System (NFS) file shares from a file gateway. This operation is only supported for file gateways.

Required Parameters:
FileShareARNList
"""
DescribeNFSFileShares(args) = storage_gateway("DescribeNFSFileShares", args)

"""
Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type. If a specific TapeARN is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.
"""
DescribeTapeArchives() = storage_gateway("DescribeTapeArchives")

"""
Deletes a file share from a file gateway. This operation is only supported for file gateways.

Required Parameters:
FileShareARN
"""
DeleteFileShare(args) = storage_gateway("DeleteFileShare", args)

"""
Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.

Required Parameters:
TapeARN
"""
DeleteTapeArchive(args) = storage_gateway("DeleteTapeArchive", args)

"""
Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone.

Required Parameters:
GatewayARN, HourOfDay, MinuteOfHour
"""
UpdateMaintenanceStartTime(args) = storage_gateway("UpdateMaintenanceStartTime", args)

"""
Gets a description for one or more Server Message Block (SMB) file shares from a file gateway. This operation is only supported for file gateways.

Required Parameters:
FileShareARNList
"""
DescribeSMBFileShares(args) = storage_gateway("DescribeSMBFileShares", args)

"""
Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer. After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.  You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the  AWS Storage Gateway Detail Page.  

Required Parameters:
GatewayARN
"""
DeleteGateway(args) = storage_gateway("DeleteGateway", args)

"""
Deletes the specified storage volume that you previously created using the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. This operation is only supported in the cached volume and stored volume types. For stored volume gateways, the local disk that was configured as the storage volume is not deleted. You can reuse the local disk to create another storage volume.  Before you delete a volume, make sure there are no iSCSI connections to the volume you are deleting. You should also make sure there is no snapshot in progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are deleting and check the snapshot status. For more information, go to DescribeSnapshots in the Amazon Elastic Compute Cloud API Reference. In the request, you must provide the Amazon Resource Name (ARN) of the storage volume you want to delete.

Required Parameters:
VolumeARN
"""
DeleteVolume(args) = storage_gateway("DeleteVolume", args)

"""
Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.

Required Parameters:
GatewayARN
"""
DescribeGatewayInformation(args) = storage_gateway("DescribeGatewayInformation", args)

"""
Creates a cached volume on a specified cached volume gateway. This operation is only supported in the cached volume gateway type.  Cache storage must be allocated to the gateway before you can create a cached volume. Use the AddCache operation to add cache storage to a gateway.   In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, the gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target. Optionally, you can provide the ARN for an existing volume as the SourceVolumeARN for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The VolumeSizeInBytes value must be equal to or larger than the size of the copied volume, in bytes.

Required Parameters:
GatewayARN, VolumeSizeInBytes, TargetName, NetworkInterfaceId, ClientToken
"""
CreateCachediSCSIVolume(args) = storage_gateway("CreateCachediSCSIVolume", args)

"""
Lists iSCSI initiators that are connected to a volume. You can use this operation to determine whether a volume is being used or not. This operation is only supported in the cached volume and stored volume gateway types.

Required Parameters:
VolumeARN
"""
ListVolumeInitiators(args) = storage_gateway("ListVolumeInitiators", args)
