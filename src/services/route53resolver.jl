include("../AWSCorePrototypeServices.jl")
using .Services: route53resolver

"""
Lists the tags that you associated with the specified resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = route53resolver("ListTagsForResource", args)

"""
Removes the association between a specified resolver rule and a specified VPC.  If you disassociate a resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the resolver rule.  

Required Parameters:
VPCId, ResolverRuleId
"""
DisassociateResolverRule(args) = route53resolver("DisassociateResolverRule", args)

"""
For DNS queries that originate in your VPCs, specifies which resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.

Required Parameters:
CreatorRequestId, RuleType, DomainName
"""
CreateResolverRule(args) = route53resolver("CreateResolverRule", args)

"""
Updates settings for a specified resolver rule. ResolverRuleId is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.

Required Parameters:
ResolverRuleId, Config
"""
UpdateResolverRule(args) = route53resolver("UpdateResolverRule", args)

"""
Gets information about a specified resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound resolver endpoint that the rule is associated with.

Required Parameters:
ResolverRuleId
"""
GetResolverRule(args) = route53resolver("GetResolverRule", args)

"""
Lists all the resolver endpoints that were created using the current AWS account.
"""
ListResolverEndpoints() = route53resolver("ListResolverEndpoints")

"""
Removes IP addresses from an inbound or an outbound resolver endpoint. If you want to remove more than one IP address, submit one DisassociateResolverEndpointIpAddress request for each IP address. To add an IP address to an endpoint, see AssociateResolverEndpointIpAddress.

Required Parameters:
ResolverEndpointId, IpAddress
"""
DisassociateResolverEndpointIpAddress(args) = route53resolver("DisassociateResolverEndpointIpAddress", args)

"""
Adds one or more tags to a specified resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = route53resolver("TagResource", args)

"""
Removes one or more tags from a specified resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = route53resolver("UntagResource", args)

"""
Gets information about a specified resolver endpoint, such as whether it's an inbound or an outbound resolver endpoint, and the current status of the endpoint.

Required Parameters:
ResolverEndpointId
"""
GetResolverEndpoint(args) = route53resolver("GetResolverEndpoint", args)

"""
Adds IP addresses to an inbound or an outbound resolver endpoint. If you want to adding more than one IP address, submit one AssociateResolverEndpointIpAddress request for each IP address. To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress.

Required Parameters:
ResolverEndpointId, IpAddress
"""
AssociateResolverEndpointIpAddress(args) = route53resolver("AssociateResolverEndpointIpAddress", args)

"""
Updates the name of an inbound or an outbound resolver endpoint. 

Required Parameters:
ResolverEndpointId
"""
UpdateResolverEndpoint(args) = route53resolver("UpdateResolverEndpoint", args)

"""
Creates a resolver endpoint. There are two types of resolver endpoints, inbound and outbound:   An inbound resolver endpoint forwards DNS queries to the DNS service for a VPC from your network or another VPC.   An outbound resolver endpoint forwards DNS queries from the DNS service for a VPC to your network or another VPC.  

Required Parameters:
CreatorRequestId, SecurityGroupIds, Direction, IpAddresses
"""
CreateResolverEndpoint(args) = route53resolver("CreateResolverEndpoint", args)

"""
Lists the associations that were created between resolver rules and VPCs using the current AWS account.
"""
ListResolverRuleAssociations() = route53resolver("ListResolverRuleAssociations")

"""
Gets information about an association between a specified resolver rule and a VPC. You associate a resolver rule and a VPC using AssociateResolverRule. 

Required Parameters:
ResolverRuleAssociationId
"""
GetResolverRuleAssociation(args) = route53resolver("GetResolverRuleAssociation", args)

"""
Deletes a resolver rule. Before you can delete a resolver rule, you must disassociate it from all the VPCs that you associated the resolver rule with. For more infomation, see DisassociateResolverRule.

Required Parameters:
ResolverRuleId
"""
DeleteResolverRule(args) = route53resolver("DeleteResolverRule", args)

"""
Gets the IP addresses for a specified resolver endpoint.

Required Parameters:
ResolverEndpointId
"""
ListResolverEndpointIpAddresses(args) = route53resolver("ListResolverEndpointIpAddresses", args)

"""
Lists the resolver rules that were created using the current AWS account.
"""
ListResolverRules() = route53resolver("ListResolverRules")

"""
Associates a resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule. 

Required Parameters:
ResolverRuleId, VPCId
"""
AssociateResolverRule(args) = route53resolver("AssociateResolverRule", args)

"""
Gets information about a resolver rule policy. A resolver rule policy specifies the Resolver operations and resources that you want to allow another AWS account to be able to use. 

Required Parameters:
Arn
"""
GetResolverRulePolicy(args) = route53resolver("GetResolverRulePolicy", args)

"""
Specifies the Resolver operations and resources that you want to allow another AWS account to be able to use.

Required Parameters:
Arn, ResolverRulePolicy
"""
PutResolverRulePolicy(args) = route53resolver("PutResolverRulePolicy", args)

"""
Deletes a resolver endpoint. The effect of deleting a resolver endpoint depends on whether it's an inbound or an outbound resolver endpoint:    Inbound: DNS queries from your network or another VPC are no longer routed to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network or to another VPC.  

Required Parameters:
ResolverEndpointId
"""
DeleteResolverEndpoint(args) = route53resolver("DeleteResolverEndpoint", args)
