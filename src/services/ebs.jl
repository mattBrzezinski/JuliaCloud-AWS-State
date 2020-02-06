include("../AWSCorePrototypeServices.jl")
using .Services: ebs

"""
Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.

Required Parameters:
SecondSnapshotId
"""
ListChangedBlocks(args) = ebs("GET", "/snapshots/{secondSnapshotId}/changedblocks", args)

"""
Returns the data in a block in an Amazon Elastic Block Store snapshot.

Required Parameters:
SnapshotId, BlockIndex, BlockToken
"""
GetSnapshotBlock(args) = ebs("GET", "/snapshots/{snapshotId}/blocks/{blockIndex}", args)

"""
Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.

Required Parameters:
SnapshotId
"""
ListSnapshotBlocks(args) = ebs("GET", "/snapshots/{snapshotId}/blocks", args)
