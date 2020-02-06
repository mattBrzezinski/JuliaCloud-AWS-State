include("../AWSCorePrototypeServices.jl")
using .Services: qldb

"""
Returns all tags for a specified Amazon QLDB resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = qldb("GET", "/tags/{resourceArn}", args)

"""
Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.

Required Parameters:
Name, ExportId
"""
DescribeJournalS3Export(args) = qldb("GET", "/ledgers/{name}/journal-s3-exports/{exportId}", args)

"""
Returns information about a ledger, including its state and when it was created.

Required Parameters:
Name
"""
DescribeLedger(args) = qldb("GET", "/ledgers/{name}", args)

"""
Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times.

Required Parameters:
Name
"""
ListJournalS3ExportsForLedger(args) = qldb("GET", "/ledgers/{name}/journal-s3-exports", args)

"""
Updates properties on a ledger.

Required Parameters:
Name
"""
UpdateLedger(args) = qldb("PATCH", "/ledgers/{name}", args)

"""
Creates a new ledger in your AWS account.

Required Parameters:
Name, PermissionsMode
"""
CreateLedger(args) = qldb("POST", "/ledgers", args)

"""
Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.

Required Parameters:
Name, BlockAddress, DocumentId
"""
GetRevision(args) = qldb("POST", "/ledgers/{name}/revision", args)

"""
Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.

Required Parameters:
Name
"""
GetDigest(args) = qldb("POST", "/ledgers/{name}/digest", args)

"""
Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.

Required Parameters:
Name
"""
DeleteLedger(args) = qldb("DELETE", "/ledgers/{name}", args)

"""
Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.

Required Parameters:
Name, InclusiveStartTime, ExclusiveEndTime, S3ExportConfiguration, RoleArn
"""
ExportJournalToS3(args) = qldb("POST", "/ledgers/{name}/journal-s3-exports", args)

"""
Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = qldb("POST", "/tags/{resourceArn}", args)

"""
Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = qldb("DELETE", "/tags/{resourceArn}", args)

"""
Returns a journal block object at a specified address in a ledger. Also returns a proof of the specified block for verification if DigestTipAddress is provided. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.

Required Parameters:
Name, BlockAddress
"""
GetBlock(args) = qldb("POST", "/ledgers/{name}/block", args)

"""
Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times.
"""
ListJournalS3Exports() = qldb("GET", "/journal-s3-exports")

"""
Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
"""
ListLedgers() = qldb("GET", "/ledgers")
