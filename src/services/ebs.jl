include("../AWSCorePrototypeServices.jl")
using .Services: ebs

"""
Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
"""
ListChangedBlocks(SecondSnapshotId) = ebs("GET", "/snapshots/$secondSnapshotId/changedblocks")
ListChangedBlocks(SecondSnapshotId, args) = ebs("GET", "/snapshots/$secondSnapshotId/changedblocks", args)
ListChangedBlocks(a...; b...) = ListChangedBlocks(a..., b)

"""
Returns the data in a block in an Amazon Elastic Block Store snapshot.
"""
GetSnapshotBlock(SnapshotId, BlockIndex, BlockToken) = ebs("GET", "/snapshots/$snapshotId/blocks/$blockIndex")
GetSnapshotBlock(SnapshotId, BlockIndex, BlockToken, args) = ebs("GET", "/snapshots/$snapshotId/blocks/$blockIndex", args)
GetSnapshotBlock(a...; b...) = GetSnapshotBlock(a..., b)

"""
Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.
"""
ListSnapshotBlocks(SnapshotId) = ebs("GET", "/snapshots/$snapshotId/blocks")
ListSnapshotBlocks(SnapshotId, args) = ebs("GET", "/snapshots/$snapshotId/blocks", args)
ListSnapshotBlocks(a...; b...) = ListSnapshotBlocks(a..., b)
