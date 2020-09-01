include("../AWSCorePrototypeServices.jl")
using .Services: elastic_inference

"""
    ListTagsForResource()

 Returns all tags of an Elastic Inference Accelerator. 

Required Parameters
{
  "resourceArn": " The ARN of the Elastic Inference Accelerator to list the tags for. "
}
"""
ListTagsForResource(args) = elastic_inference("GET", "/tags/{resourceArn}", args)

"""
    DescribeAcceleratorTypes()

 Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput. 
"""

DescribeAcceleratorTypes() = elastic_inference("GET", "/describe-accelerator-types")
DescribeAcceleratorTypes(args) = elastic_inference("GET", "/describe-accelerator-types", args)

"""
    UntagResource()

 Removes the specified tags from an Elastic Inference Accelerator. 

Required Parameters
{
  "resourceArn": " The ARN of the Elastic Inference Accelerator to untag. ",
  "tagKeys": " The list of tags to remove from the Elastic Inference Accelerator. "
}
"""
UntagResource(args) = elastic_inference("DELETE", "/tags/{resourceArn}", args)

"""
    DescribeAccelerators()

 Describes information over a provided set of accelerators belonging to an account. 

Optional Parameters
{
  "filters": " One or more filters. Filter names and values are case-sensitive. Valid filter names are: accelerator-types: can provide a list of accelerator type names to filter for. instance-id: can provide a list of EC2 instance ids to filter for. ",
  "maxResults": " The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output. To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command. Do not use the NextToken response element directly outside of the AWS CLI. ",
  "nextToken": " A token to specify where to start paginating. This is the NextToken from a previously truncated response. ",
  "acceleratorIds": " The IDs of the accelerators to describe. "
}
"""

DescribeAccelerators() = elastic_inference("POST", "/describe-accelerators")
DescribeAccelerators(args) = elastic_inference("POST", "/describe-accelerators", args)

"""
    TagResource()

 Adds the specified tags to an Elastic Inference Accelerator. 

Required Parameters
{
  "resourceArn": " The ARN of the Elastic Inference Accelerator to tag. ",
  "tags": " The tags to add to the Elastic Inference Accelerator. "
}
"""
TagResource(args) = elastic_inference("POST", "/tags/{resourceArn}", args)

"""
    DescribeAcceleratorOfferings()

 Describes the locations in which a given accelerator type or set of types is present in a given region. 

Required Parameters
{
  "locationType": " The location type that you want to describe accelerator type offerings for. It can assume the following values: region: will return the accelerator type offering at the regional level. availability-zone: will return the accelerator type offering at the availability zone level. availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id. "
}

Optional Parameters
{
  "acceleratorTypes": " The list of accelerator types to describe. "
}
"""
DescribeAcceleratorOfferings(args) = elastic_inference("POST", "/describe-accelerator-offerings", args)