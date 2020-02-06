include("../AWSCorePrototypeServices.jl")
using .Services: elastic_inference

"""
Returns all tags of an Elastic Inference Accelerator.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = elastic_inference("GET", "/tags/{resourceArn}", args)

"""
Adds the specified tag(s) to an Elastic Inference Accelerator.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = elastic_inference("POST", "/tags/{resourceArn}", args)

"""
Removes the specified tag(s) from an Elastic Inference Accelerator.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = elastic_inference("DELETE", "/tags/{resourceArn}", args)
