include("../AWSCorePrototypeServices.jl")
using .Services: dlm

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(ResourceArn) = dlm("GET", "/tags/$resourceArn")
ListTagsForResource(ResourceArn, args) = dlm("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Removes the specified tags from the specified resource.
"""
UntagResource(ResourceArn, TagKeys) = dlm("DELETE", "/tags/$resourceArn")
UntagResource(ResourceArn, TagKeys, args) = dlm("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Gets detailed information about the specified lifecycle policy.
"""
GetLifecyclePolicy(PolicyId) = dlm("GET", "/policies/$policyId/")
GetLifecyclePolicy(PolicyId, args) = dlm("GET", "/policies/$policyId/", args)
GetLifecyclePolicy(a...; b...) = GetLifecyclePolicy(a..., b)

"""
Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.
"""
CreateLifecyclePolicy(ExecutionRoleArn, Description, State, PolicyDetails) = dlm("POST", "/policies")
CreateLifecyclePolicy(ExecutionRoleArn, Description, State, PolicyDetails, args) = dlm("POST", "/policies", args)
CreateLifecyclePolicy(a...; b...) = CreateLifecyclePolicy(a..., b)

"""
Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use GetLifecyclePolicy.
"""
GetLifecyclePolicies() = dlm("GET", "/policies")
GetLifecyclePolicies(, args) = dlm("GET", "/policies", args)
GetLifecyclePolicies(a...; b...) = GetLifecyclePolicies(a..., b)

"""
Updates the specified lifecycle policy.
"""
UpdateLifecyclePolicy(PolicyId) = dlm("PATCH", "/policies/$policyId")
UpdateLifecyclePolicy(PolicyId, args) = dlm("PATCH", "/policies/$policyId", args)
UpdateLifecyclePolicy(a...; b...) = UpdateLifecyclePolicy(a..., b)

"""
Deletes the specified lifecycle policy and halts the automated operations that the policy specified.
"""
DeleteLifecyclePolicy(PolicyId) = dlm("DELETE", "/policies/$policyId/")
DeleteLifecyclePolicy(PolicyId, args) = dlm("DELETE", "/policies/$policyId/", args)
DeleteLifecyclePolicy(a...; b...) = DeleteLifecyclePolicy(a..., b)

"""
Adds the specified tags to the specified resource.
"""
TagResource(ResourceArn, Tags) = dlm("POST", "/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = dlm("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)
