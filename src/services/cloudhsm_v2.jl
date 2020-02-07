include("../AWSCorePrototypeServices.jl")
using .Services: cloudhsm_v2

"""
Creates a new AWS CloudHSM cluster.

Required Parameters:
SubnetIds, HsmType
"""
CreateCluster(args) = cloudhsm_v2("CreateCluster", args)

"""
Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
"""
DescribeBackups() = cloudhsm_v2("DescribeBackups")

"""
Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.

Required Parameters:
ResourceId, TagList
"""
TagResource(args) = cloudhsm_v2("TagResource", args)

"""
Removes the specified tag or tags from the specified AWS CloudHSM cluster.

Required Parameters:
ResourceId, TagKeyList
"""
UntagResource(args) = cloudhsm_v2("UntagResource", args)

"""
Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use DescribeClusters.

Required Parameters:
ClusterId, SignedCert, TrustAnchor
"""
InitializeCluster(args) = cloudhsm_v2("InitializeCluster", args)

"""
Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.

Required Parameters:
ClusterId, AvailabilityZone
"""
CreateHsm(args) = cloudhsm_v2("CreateHsm", args)

"""
Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use DescribeClusters.

Required Parameters:
ClusterId
"""
DeleteHsm(args) = cloudhsm_v2("DeleteHsm", args)

"""
Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state. For mor information on deleting a backup, see DeleteBackup.

Required Parameters:
BackupId
"""
RestoreBackup(args) = cloudhsm_v2("RestoreBackup", args)

"""
Copy an AWS CloudHSM cluster backup to a different region.

Required Parameters:
DestinationRegion, BackupId
"""
CopyBackupToRegion(args) = cloudhsm_v2("CopyBackupToRegion", args)

"""
Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see RestoreBackup.

Required Parameters:
BackupId
"""
DeleteBackup(args) = cloudhsm_v2("DeleteBackup", args)

"""
Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.

Required Parameters:
ResourceId
"""
ListTags(args) = cloudhsm_v2("ListTags", args)

"""
Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use DescribeClusters. To delete an HSM, use DeleteHsm.

Required Parameters:
ClusterId
"""
DeleteCluster(args) = cloudhsm_v2("DeleteCluster", args)

"""
Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
"""
DescribeClusters() = cloudhsm_v2("DescribeClusters")
