include("../AWSCorePrototypeServices.jl")
using .Services: elastic_inference

"""
Returns all tags of an Elastic Inference Accelerator.
"""
ListTagsForResource(resourceArn) = elastic_inference("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = elastic_inference("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Adds the specified tag(s) to an Elastic Inference Accelerator.
"""
TagResource(resourceArn, tags) = elastic_inference("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = elastic_inference("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the specified tag(s) from an Elastic Inference Accelerator.
"""
UntagResource(resourceArn, tagKeys) = elastic_inference("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = elastic_inference("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)
