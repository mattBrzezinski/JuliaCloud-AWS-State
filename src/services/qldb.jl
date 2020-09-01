include("../AWSCorePrototypeServices.jl")
using .Services: qldb

"""
    ListTagsForResource()

Returns all tags for a specified Amazon QLDB resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for which you want to list the tags. For example:  arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger "
}
"""
ListTagsForResource(args) = qldb("GET", "/tags/{resourceArn}", args)

"""
    DescribeJournalS3Export()

Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.

Required Parameters
{
  "ExportId": "The unique ID of the journal export job that you want to describe.",
  "Name": "The name of the ledger."
}
"""
DescribeJournalS3Export(args) = qldb("GET", "/ledgers/{name}/journal-s3-exports/{exportId}", args)

"""
    DescribeLedger()

Returns information about a ledger, including its state and when it was created.

Required Parameters
{
  "Name": "The name of the ledger that you want to describe."
}
"""
DescribeLedger(args) = qldb("GET", "/ledgers/{name}", args)

"""
    ListJournalS3ExportsForLedger()

Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.

Required Parameters
{
  "Name": "The name of the ledger."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single ListJournalS3ExportsForLedger request. (The actual number of results returned might be fewer.)",
  "NextToken": "A pagination token, indicating that you want to retrieve the next page of results. If you received a value for NextToken in the response from a previous ListJournalS3ExportsForLedger call, then you should use that value as input here."
}
"""
ListJournalS3ExportsForLedger(args) = qldb("GET", "/ledgers/{name}/journal-s3-exports", args)

"""
    StreamJournalToKinesis()

Creates a journal stream for a given Amazon QLDB ledger. The stream captures every document revision that is committed to the ledger's journal and delivers the data to a specified Amazon Kinesis Data Streams resource.

Required Parameters
{
  "LedgerName": "The name of the ledger.",
  "StreamName": "The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream. Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in Quotas in Amazon QLDB in the Amazon QLDB Developer Guide.",
  "InclusiveStartTime": "The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: 2019-06-13T21:36:34Z  The InclusiveStartTime cannot be in the future and must be before ExclusiveEndTime. If you provide an InclusiveStartTime that is before the ledger's CreationDateTime, QLDB effectively defaults it to the ledger's CreationDateTime.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.",
  "KinesisConfiguration": "The configuration settings of the Kinesis Data Streams destination for your stream request."
}

Optional Parameters
{
  "Tags": "The key-value pairs to add as tags to the stream that you want to create. Tag keys are case sensitive. Tag values are case sensitive and can be null.",
  "ExclusiveEndTime": "The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. The ExclusiveEndTime must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: 2019-06-13T21:36:34Z "
}
"""
StreamJournalToKinesis(args) = qldb("POST", "/ledgers/{name}/journal-kinesis-streams", args)

"""
    ListJournalKinesisStreamsForLedger()

Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.

Required Parameters
{
  "LedgerName": "The name of the ledger."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single ListJournalKinesisStreamsForLedger request. (The actual number of results returned might be fewer.)",
  "NextToken": "A pagination token, indicating that you want to retrieve the next page of results. If you received a value for NextToken in the response from a previous ListJournalKinesisStreamsForLedger call, you should use that value as input here."
}
"""
ListJournalKinesisStreamsForLedger(args) = qldb("GET", "/ledgers/{name}/journal-kinesis-streams", args)

"""
    UpdateLedger()

Updates properties on a ledger.

Required Parameters
{
  "Name": "The name of the ledger."
}

Optional Parameters
{
  "DeletionProtection": "The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (true) by default. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger."
}
"""
UpdateLedger(args) = qldb("PATCH", "/ledgers/{name}", args)

"""
    CancelJournalKinesisStream()

Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be ACTIVE. You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.

Required Parameters
{
  "LedgerName": "The name of the ledger.",
  "StreamId": "The unique ID that QLDB assigns to each QLDB journal stream."
}
"""
CancelJournalKinesisStream(args) = qldb("DELETE", "/ledgers/{name}/journal-kinesis-streams/{streamId}", args)

"""
    CreateLedger()

Creates a new ledger in your AWS account.

Required Parameters
{
  "PermissionsMode": "The permissions mode to assign to the ledger that you want to create.",
  "Name": "The name of the ledger that you want to create. The name must be unique among all of your ledgers in the current AWS Region. Naming constraints for ledger names are defined in Quotas in Amazon QLDB in the Amazon QLDB Developer Guide."
}

Optional Parameters
{
  "Tags": "The key-value pairs to add as tags to the ledger that you want to create. Tag keys are case sensitive. Tag values are case sensitive and can be null.",
  "DeletionProtection": "The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (true) by default. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger."
}
"""
CreateLedger(args) = qldb("POST", "/ledgers", args)

"""
    GetRevision()

Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.

Required Parameters
{
  "BlockAddress": "The block location of the document revision to be verified. An address is an Amazon Ion structure that has two fields: strandId and sequenceNo. For example: {strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14} ",
  "DocumentId": "The unique ID of the document to be verified.",
  "Name": "The name of the ledger."
}

Optional Parameters
{
  "DigestTipAddress": "The latest block location covered by the digest for which to request a proof. An address is an Amazon Ion structure that has two fields: strandId and sequenceNo. For example: {strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49} "
}
"""
GetRevision(args) = qldb("POST", "/ledgers/{name}/revision", args)

"""
    GetDigest()

Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.

Required Parameters
{
  "Name": "The name of the ledger."
}
"""
GetDigest(args) = qldb("POST", "/ledgers/{name}/digest", args)

"""
    DeleteLedger()

Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.

Required Parameters
{
  "Name": "The name of the ledger that you want to delete."
}
"""
DeleteLedger(args) = qldb("DELETE", "/ledgers/{name}", args)

"""
    ExportJournalToS3()

Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.

Required Parameters
{
  "S3ExportConfiguration": "The configuration settings of the Amazon S3 bucket destination for your export request.",
  "InclusiveStartTime": "The inclusive start date and time for the range of journal contents that you want to export. The InclusiveStartTime must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: 2019-06-13T21:36:34Z  The InclusiveStartTime must be before ExclusiveEndTime. If you provide an InclusiveStartTime that is before the ledger's CreationDateTime, Amazon QLDB defaults it to the ledger's CreationDateTime.",
  "Name": "The name of the ledger.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal export job to do the following:   Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.   (Optional) Use your customer master key (CMK) in AWS Key Management Service (AWS KMS) for server-side encryption of your exported data.  ",
  "ExclusiveEndTime": "The exclusive end date and time for the range of journal contents that you want to export. The ExclusiveEndTime must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: 2019-06-13T21:36:34Z  The ExclusiveEndTime must be less than or equal to the current UTC date and time."
}
"""
ExportJournalToS3(args) = qldb("POST", "/ledgers/{name}/journal-s3-exports", args)

"""
    TagResource()

Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) to which you want to add the tags. For example:  arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger ",
  "Tags": "The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case sensitive. If you specify a key that already exists for the resource, your request fails and returns an error. Tag values are case sensitive and can be null."
}
"""
TagResource(args) = qldb("POST", "/tags/{resourceArn}", args)

"""
    UntagResource()

Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) from which you want to remove the tags. For example:  arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger ",
  "TagKeys": "The list of tag keys that you want to remove."
}
"""
UntagResource(args) = qldb("DELETE", "/tags/{resourceArn}", args)

"""
    GetBlock()

Returns a block object at a specified address in a journal. Also returns a proof of the specified block for verification if DigestTipAddress is provided. For information about the data contents in a block, see Journal contents in the Amazon QLDB Developer Guide. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.

Required Parameters
{
  "BlockAddress": "The location of the block that you want to request. An address is an Amazon Ion structure that has two fields: strandId and sequenceNo. For example: {strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14} ",
  "Name": "The name of the ledger."
}

Optional Parameters
{
  "DigestTipAddress": "The latest block location covered by the digest for which to request a proof. An address is an Amazon Ion structure that has two fields: strandId and sequenceNo. For example: {strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49} "
}
"""
GetBlock(args) = qldb("POST", "/ledgers/{name}/block", args)

"""
    ListJournalS3Exports()

Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single ListJournalS3Exports request. (The actual number of results returned might be fewer.)",
  "NextToken": "A pagination token, indicating that you want to retrieve the next page of results. If you received a value for NextToken in the response from a previous ListJournalS3Exports call, then you should use that value as input here."
}
"""

ListJournalS3Exports() = qldb("GET", "/journal-s3-exports")
ListJournalS3Exports(args) = qldb("GET", "/journal-s3-exports", args)

"""
    ListLedgers()

Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single ListLedgers request. (The actual number of results returned might be fewer.)",
  "NextToken": "A pagination token, indicating that you want to retrieve the next page of results. If you received a value for NextToken in the response from a previous ListLedgers call, then you should use that value as input here."
}
"""

ListLedgers() = qldb("GET", "/ledgers")
ListLedgers(args) = qldb("GET", "/ledgers", args)

"""
    DescribeJournalKinesisStream()

Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of your original stream creation request.

Required Parameters
{
  "LedgerName": "The name of the ledger.",
  "StreamId": "The unique ID that QLDB assigns to each QLDB journal stream."
}
"""
DescribeJournalKinesisStream(args) = qldb("GET", "/ledgers/{name}/journal-kinesis-streams/{streamId}", args)