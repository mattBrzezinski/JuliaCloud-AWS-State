include("../AWSCorePrototypeServices.jl")
using .Services: dynamodb_streams

"""
    GetRecords()

Retrieves the stream records from a given shard. Specify a shard iterator using the ShardIterator parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, GetRecords returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.   GetRecords can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first. 

Required Parameters
{
  "ShardIterator": "A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard."
}

Optional Parameters
{
  "Limit": "The maximum number of records to return from the shard. The upper limit is 1000."
}
"""
GetRecords(args) = dynamodb_streams("GetRecords", args)

"""
    GetShardIterator()

Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent GetRecords request to read the stream records from the shard.  A shard iterator expires 15 minutes after it is returned to the requester. 

Required Parameters
{
  "ShardId": "The identifier of the shard. The iterator will be returned for this shard ID.",
  "ShardIteratorType": "Determines how the shard iterator is used to start reading stream records from the shard:    AT_SEQUENCE_NUMBER - Start reading exactly from the position denoted by a specific sequence number.    AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number.    TRIM_HORIZON - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.    LATEST - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.  ",
  "StreamArn": "The Amazon Resource Name (ARN) for the stream."
}

Optional Parameters
{
  "SequenceNumber": "The sequence number of a stream record in the shard from which to start reading."
}
"""
GetShardIterator(args) = dynamodb_streams("GetShardIterator", args)

"""
    ListStreams()

Returns an array of stream ARNs associated with the current account and endpoint. If the TableName parameter is present, then ListStreams will return only the streams ARNs for that table.  You can call ListStreams at a maximum rate of 5 times per second. 

Optional Parameters
{
  "ExclusiveStartStreamArn": "The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedStreamArn in the previous operation. ",
  "TableName": "If this parameter is provided, then only the streams associated with this table name are returned.",
  "Limit": "The maximum number of streams to return. The upper limit is 100."
}
"""

ListStreams() = dynamodb_streams("ListStreams")
ListStreams(args) = dynamodb_streams("ListStreams", args)

"""
    DescribeStream()

Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.  You can call DescribeStream at a maximum rate of 10 times per second.  Each shard in the stream has a SequenceNumberRange associated with it. If the SequenceNumberRange has a StartingSequenceNumber but no EndingSequenceNumber, then the shard is still open (able to receive more stream records). If both StartingSequenceNumber and EndingSequenceNumber are present, then that shard is closed and can no longer receive more data.

Required Parameters
{
  "StreamArn": "The Amazon Resource Name (ARN) for the stream."
}

Optional Parameters
{
  "ExclusiveStartShardId": "The shard ID of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedShardId in the previous operation. ",
  "Limit": "The maximum number of shard objects to return. The upper limit is 100."
}
"""
DescribeStream(args) = dynamodb_streams("DescribeStream", args)
