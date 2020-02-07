include("../AWSCorePrototypeServices.jl")
using .Services: mediaconnect

"""
List all tags on an AWS Elemental MediaConnect resource
"""
ListTagsForResource(ResourceArn) = mediaconnect("GET", "/tags/$resourceArn")
ListTagsForResource(ResourceArn, args) = mediaconnect("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
"""
DescribeFlow(FlowArn) = mediaconnect("GET", "/v1/flows/$flowArn")
DescribeFlow(FlowArn, args) = mediaconnect("GET", "/v1/flows/$flowArn", args)
DescribeFlow(a...; b...) = DescribeFlow(a..., b)

"""
Adds outputs to an existing flow. You can create up to 20 outputs per flow.
"""
AddFlowOutputs(FlowArn, Outputs) = mediaconnect("POST", "/v1/flows/$flowArn/outputs")
AddFlowOutputs(FlowArn, Outputs, args) = mediaconnect("POST", "/v1/flows/$flowArn/outputs", args)
AddFlowOutputs(a...; b...) = AddFlowOutputs(a..., b)

"""
Updates an existing flow output.
"""
UpdateFlowOutput(FlowArn, OutputArn) = mediaconnect("PUT", "/v1/flows/$flowArn/outputs/$outputArn")
UpdateFlowOutput(FlowArn, OutputArn, args) = mediaconnect("PUT", "/v1/flows/$flowArn/outputs/$outputArn", args)
UpdateFlowOutput(a...; b...) = UpdateFlowOutput(a..., b)

"""
You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
"""
UpdateFlowEntitlement(FlowArn, EntitlementArn) = mediaconnect("PUT", "/v1/flows/$flowArn/entitlements/$entitlementArn")
UpdateFlowEntitlement(FlowArn, EntitlementArn, args) = mediaconnect("PUT", "/v1/flows/$flowArn/entitlements/$entitlementArn", args)
UpdateFlowEntitlement(a...; b...) = UpdateFlowEntitlement(a..., b)

"""
Displays a list of flows that are associated with this account. This request returns a paginated result.
"""
ListFlows() = mediaconnect("GET", "/v1/flows")
ListFlows(, args) = mediaconnect("GET", "/v1/flows", args)
ListFlows(a...; b...) = ListFlows(a..., b)

"""
Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
"""
TagResource(ResourceArn, Tags) = mediaconnect("POST", "/tags/$resourceArn")
TagResource(ResourceArn, Tags, args) = mediaconnect("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Deletes specified tags from a resource.
"""
UntagResource(TagKeys, ResourceArn) = mediaconnect("DELETE", "/tags/$resourceArn")
UntagResource(TagKeys, ResourceArn, args) = mediaconnect("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Stops a flow.
"""
StopFlow(FlowArn) = mediaconnect("POST", "/v1/flows/stop/$flowArn")
StopFlow(FlowArn, args) = mediaconnect("POST", "/v1/flows/stop/$flowArn", args)
StopFlow(a...; b...) = StopFlow(a..., b)

"""
Updates the source of a flow.
"""
UpdateFlowSource(FlowArn, SourceArn) = mediaconnect("PUT", "/v1/flows/$flowArn/source/$sourceArn")
UpdateFlowSource(FlowArn, SourceArn, args) = mediaconnect("PUT", "/v1/flows/$flowArn/source/$sourceArn", args)
UpdateFlowSource(a...; b...) = UpdateFlowSource(a..., b)

"""
Deletes a flow. Before you can delete a flow, you must stop the flow.
"""
DeleteFlow(FlowArn) = mediaconnect("DELETE", "/v1/flows/$flowArn")
DeleteFlow(FlowArn, args) = mediaconnect("DELETE", "/v1/flows/$flowArn", args)
DeleteFlow(a...; b...) = DeleteFlow(a..., b)

"""
Starts a flow.
"""
StartFlow(FlowArn) = mediaconnect("POST", "/v1/flows/start/$flowArn")
StartFlow(FlowArn, args) = mediaconnect("POST", "/v1/flows/start/$flowArn", args)
StartFlow(a...; b...) = StartFlow(a..., b)

"""
Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
"""
RevokeFlowEntitlement(FlowArn, EntitlementArn) = mediaconnect("DELETE", "/v1/flows/$flowArn/entitlements/$entitlementArn")
RevokeFlowEntitlement(FlowArn, EntitlementArn, args) = mediaconnect("DELETE", "/v1/flows/$flowArn/entitlements/$entitlementArn", args)
RevokeFlowEntitlement(a...; b...) = RevokeFlowEntitlement(a..., b)

"""
Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
"""
ListEntitlements() = mediaconnect("GET", "/v1/entitlements")
ListEntitlements(, args) = mediaconnect("GET", "/v1/entitlements", args)
ListEntitlements(a...; b...) = ListEntitlements(a..., b)

"""
Creates a new flow. The request must include one source. The request optionally can include outputs (up to 20) and entitlements (up to 50).
"""
CreateFlow(Source, Name) = mediaconnect("POST", "/v1/flows")
CreateFlow(Source, Name, args) = mediaconnect("POST", "/v1/flows", args)
CreateFlow(a...; b...) = CreateFlow(a..., b)

"""
Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
"""
RemoveFlowOutput(FlowArn, OutputArn) = mediaconnect("DELETE", "/v1/flows/$flowArn/outputs/$outputArn")
RemoveFlowOutput(FlowArn, OutputArn, args) = mediaconnect("DELETE", "/v1/flows/$flowArn/outputs/$outputArn", args)
RemoveFlowOutput(a...; b...) = RemoveFlowOutput(a..., b)

"""
Grants entitlements to an existing flow.
"""
GrantFlowEntitlements(FlowArn, Entitlements) = mediaconnect("POST", "/v1/flows/$flowArn/entitlements")
GrantFlowEntitlements(FlowArn, Entitlements, args) = mediaconnect("POST", "/v1/flows/$flowArn/entitlements", args)
GrantFlowEntitlements(a...; b...) = GrantFlowEntitlements(a..., b)
