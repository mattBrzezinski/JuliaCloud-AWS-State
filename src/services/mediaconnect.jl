include("../AWSCorePrototypeServices.jl")
using .Services: mediaconnect

"""
List all tags on an AWS Elemental MediaConnect resource

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = mediaconnect("GET", "/tags/{resourceArn}", args)

"""
Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.

Required Parameters:
FlowArn
"""
DescribeFlow(args) = mediaconnect("GET", "/v1/flows/{flowArn}", args)

"""
Adds outputs to an existing flow. You can create up to 20 outputs per flow.

Required Parameters:
FlowArn, Outputs
"""
AddFlowOutputs(args) = mediaconnect("POST", "/v1/flows/{flowArn}/outputs", args)

"""
Updates an existing flow output.

Required Parameters:
FlowArn, OutputArn
"""
UpdateFlowOutput(args) = mediaconnect("PUT", "/v1/flows/{flowArn}/outputs/{outputArn}", args)

"""
You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.

Required Parameters:
FlowArn, EntitlementArn
"""
UpdateFlowEntitlement(args) = mediaconnect("PUT", "/v1/flows/{flowArn}/entitlements/{entitlementArn}", args)

"""
Displays a list of flows that are associated with this account. This request returns a paginated result.
"""
ListFlows() = mediaconnect("GET", "/v1/flows")

"""
Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = mediaconnect("POST", "/tags/{resourceArn}", args)

"""
Deletes specified tags from a resource.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = mediaconnect("DELETE", "/tags/{resourceArn}", args)

"""
Stops a flow.

Required Parameters:
FlowArn
"""
StopFlow(args) = mediaconnect("POST", "/v1/flows/stop/{flowArn}", args)

"""
Updates the source of a flow.

Required Parameters:
FlowArn, SourceArn
"""
UpdateFlowSource(args) = mediaconnect("PUT", "/v1/flows/{flowArn}/source/{sourceArn}", args)

"""
Deletes a flow. Before you can delete a flow, you must stop the flow.

Required Parameters:
FlowArn
"""
DeleteFlow(args) = mediaconnect("DELETE", "/v1/flows/{flowArn}", args)

"""
Starts a flow.

Required Parameters:
FlowArn
"""
StartFlow(args) = mediaconnect("POST", "/v1/flows/start/{flowArn}", args)

"""
Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.

Required Parameters:
FlowArn, EntitlementArn
"""
RevokeFlowEntitlement(args) = mediaconnect("DELETE", "/v1/flows/{flowArn}/entitlements/{entitlementArn}", args)

"""
Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
"""
ListEntitlements() = mediaconnect("GET", "/v1/entitlements")

"""
Creates a new flow. The request must include one source. The request optionally can include outputs (up to 20) and entitlements (up to 50).

Required Parameters:
Source, Name
"""
CreateFlow(args) = mediaconnect("POST", "/v1/flows", args)

"""
Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.

Required Parameters:
FlowArn, OutputArn
"""
RemoveFlowOutput(args) = mediaconnect("DELETE", "/v1/flows/{flowArn}/outputs/{outputArn}", args)

"""
Grants entitlements to an existing flow.

Required Parameters:
FlowArn, Entitlements
"""
GrantFlowEntitlements(args) = mediaconnect("POST", "/v1/flows/{flowArn}/entitlements", args)
