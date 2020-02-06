include("../AWSCorePrototypeServices.jl")
using .Services: dlm

"""
Lists the tags for the specified resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = dlm("GET", "/tags/{resourceArn}", args)

"""
Removes the specified tags from the specified resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = dlm("DELETE", "/tags/{resourceArn}", args)

"""
Gets detailed information about the specified lifecycle policy.

Required Parameters:
PolicyId
"""
GetLifecyclePolicy(args) = dlm("GET", "/policies/{policyId}/", args)

"""
Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.

Required Parameters:
ExecutionRoleArn, Description, State, PolicyDetails
"""
CreateLifecyclePolicy(args) = dlm("POST", "/policies", args)

"""
Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use GetLifecyclePolicy.
"""
GetLifecyclePolicies() = dlm("GET", "/policies")

"""
Updates the specified lifecycle policy.

Required Parameters:
PolicyId
"""
UpdateLifecyclePolicy(args) = dlm("PATCH", "/policies/{policyId}", args)

"""
Deletes the specified lifecycle policy and halts the automated operations that the policy specified.

Required Parameters:
PolicyId
"""
DeleteLifecyclePolicy(args) = dlm("DELETE", "/policies/{policyId}/", args)

"""
Adds the specified tags to the specified resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = dlm("POST", "/tags/{resourceArn}", args)
