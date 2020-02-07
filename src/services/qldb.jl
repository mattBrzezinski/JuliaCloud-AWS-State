include("../AWSCorePrototypeServices.jl")
using .Services: qldb

"""
Returns all tags for a specified Amazon QLDB resource.
"""
ListTagsForResource(ResourceArn) = qldb("GET", "/tags/$resourceArn")
ListTagsForResource(ResourceArn, args) = qldb("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
"""
DescribeJournalS3Export(Name, ExportId) = qldb("GET", "/ledgers/$name/journal-s3-exports/$exportId")
DescribeJournalS3Export(Name, ExportId, args) = qldb("GET", "/ledgers/$name/journal-s3-exports/$exportId", args)
DescribeJournalS3Export(a...; b...) = DescribeJournalS3Export(a..., b)

"""
Returns information about a ledger, including its state and when it was created.
"""
DescribeLedger(Name) = qldb("GET", "/ledgers/$name")
DescribeLedger(Name, args) = qldb("GET", "/ledgers/$name", args)
DescribeLedger(a...; b...) = DescribeLedger(a..., b)

"""
Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times.
"""
ListJournalS3ExportsForLedger(Name) = qldb("GET", "/ledgers/$name/journal-s3-exports")
ListJournalS3ExportsForLedger(Name, args) = qldb("GET", "/ledgers/$name/journal-s3-exports", args)
ListJournalS3ExportsForLedger(a...; b...) = ListJournalS3ExportsForLedger(a..., b)

"""
Updates properties on a ledger.
"""
UpdateLedger(Name) = qldb("PATCH", "/ledgers/$name")
UpdateLedger(Name, args) = qldb("PATCH", "/ledgers/$name", args)
UpdateLedger(a...; b...) = UpdateLedger(a..., b)

"""
Creates a new ledger in your AWS account.
"""
CreateLedger(Name, PermissionsMode) = qldb("POST", "/ledgers")
CreateLedger(Name, PermissionsMode, args) = qldb("POST", "/ledgers", args)
CreateLedger(a...; b...) = CreateLedger(a..., b)

"""
Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
"""
GetRevision(Name, BlockAddress, DocumentId) = qldb("POST", "/ledgers/$name/revision")
GetRevision(Name, BlockAddress, DocumentId, args) = qldb("POST", "/ledgers/$name/revision", args)
GetRevision(a...; b...) = GetRevision(a..., b)

"""
Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
"""
GetDigest(Name) = qldb("POST", "/ledgers/$name/digest")
GetDigest(Name, args) = qldb("POST", "/ledgers/$name/digest", args)
GetDigest(a...; b...) = GetDigest(a..., b)

"""
Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.
"""
DeleteLedger(Name) = qldb("DELETE", "/ledgers/$name")
DeleteLedger(Name, args) = qldb("DELETE", "/ledgers/$name", args)
DeleteLedger(a...; b...) = DeleteLedger(a..., b)

"""
Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
"""
ExportJournalToS3(Name, InclusiveStartTime, ExclusiveEndTime, S3ExportConfiguration, RoleArn) = qldb("POST", "/ledgers/$name/journal-s3-exports")
ExportJournalToS3(Name, InclusiveStartTime, ExclusiveEndTime, S3ExportConfiguration, RoleArn, args) = qldb("POST", "/ledgers/$name/journal-s3-exports", args)
ExportJournalToS3(a...; b...) = ExportJournalToS3(a..., b)

"""
Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
"""
TagResource(ResourceArn, Tags) = qldb("POST", "/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = qldb("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
"""
UntagResource(ResourceArn, TagKeys) = qldb("DELETE", "/tags/$resourceArn")
UntagResource(ResourceArn, TagKeys, args) = qldb("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Returns a journal block object at a specified address in a ledger. Also returns a proof of the specified block for verification if DigestTipAddress is provided. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
"""
GetBlock(Name, BlockAddress) = qldb("POST", "/ledgers/$name/block")
GetBlock(Name, BlockAddress, args) = qldb("POST", "/ledgers/$name/block", args)
GetBlock(a...; b...) = GetBlock(a..., b)

"""
Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times.
"""
ListJournalS3Exports() = qldb("GET", "/journal-s3-exports")
ListJournalS3Exports(, args) = qldb("GET", "/journal-s3-exports", args)
ListJournalS3Exports(a...; b...) = ListJournalS3Exports(a..., b)

"""
Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
"""
ListLedgers() = qldb("GET", "/ledgers")
ListLedgers(, args) = qldb("GET", "/ledgers", args)
ListLedgers(a...; b...) = ListLedgers(a..., b)
