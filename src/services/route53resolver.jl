include("../AWSCorePrototypeServices.jl")
using .Services: route53resolver

"""
    ListTagsForResource()

Lists the tags that you associated with the specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource that you want to list tags for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of tags that you want to return in the response to a ListTagsForResource request. If you don't specify a value for MaxResults, Resolver returns up to 100 tags.",
  "NextToken": "For the first ListTagsForResource request, omit this value. If you have more than MaxResults tags, you can submit another ListTagsForResource request to get the next group of tags for the resource. In the next request, specify the value of NextToken from the previous response. "
}
"""
ListTagsForResource(args) = route53resolver("ListTagsForResource", args)

"""
    DisassociateResolverRule()

Removes the association between a specified Resolver rule and a specified VPC.  If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the Resolver rule.  

Required Parameters
{
  "ResolverRuleId": "The ID of the Resolver rule that you want to disassociate from the specified VPC.",
  "VPCId": "The ID of the VPC that you want to disassociate the Resolver rule from."
}
"""
DisassociateResolverRule(args) = route53resolver("DisassociateResolverRule", args)

"""
    GetResolverQueryLogConfigAssociation()

Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC with a query logging configuration, Resolver logs DNS queries that originate in that VPC.

Required Parameters
{
  "ResolverQueryLogConfigAssociationId": "The ID of the Resolver query logging configuration association that you want to get information about."
}
"""
GetResolverQueryLogConfigAssociation(args) = route53resolver("GetResolverQueryLogConfigAssociation", args)

"""
    CreateResolverRule()

For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.

Required Parameters
{
  "DomainName": "DNS queries for this domain name are forwarded to the IP addresses that you specify in TargetIps. If a query matches multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains the most specific domain name (www.example.com).",
  "RuleType": "When you want to forward DNS queries for specified domain name to resolvers on your network, specify FORWARD. When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for a subdomain of that domain, specify SYSTEM. For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify FORWARD for RuleType. To then have Resolver process queries for apex.example.com, you create a rule and specify SYSTEM for RuleType. Currently, only Resolver can create rules that have a value of RECURSIVE for RuleType.",
  "CreatorRequestId": "A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp. "
}

Optional Parameters
{
  "TargetIps": "The IPs that you want Resolver to forward DNS queries to. You can specify only IPv4 addresses. Separate IP addresses with a comma.  TargetIps is available only when the value of Rule type is FORWARD.",
  "Tags": "A list of the tag keys and values that you want to associate with the endpoint.",
  "ResolverEndpointId": "The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in TargetIps.",
  "Name": "A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console."
}
"""
CreateResolverRule(args) = route53resolver("CreateResolverRule", args)

"""
    AssociateResolverQueryLogConfig()

Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one AssociateResolverQueryLogConfig request for each VPC.  The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.  To remove a VPC from a query logging configuration, see DisassociateResolverQueryLogConfig. 

Required Parameters
{
  "ResolverQueryLogConfigId": "The ID of the query logging configuration that you want to associate a VPC with.",
  "ResourceId": "The ID of an Amazon VPC that you want this query logging configuration to log queries for.  The VPCs and the query logging configuration must be in the same Region. "
}
"""
AssociateResolverQueryLogConfig(args) = route53resolver("AssociateResolverQueryLogConfig", args)

"""
    UpdateResolverRule()

Updates settings for a specified Resolver rule. ResolverRuleId is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.

Required Parameters
{
  "ResolverRuleId": "The ID of the Resolver rule that you want to update.",
  "Config": "The new settings for the Resolver rule."
}
"""
UpdateResolverRule(args) = route53resolver("UpdateResolverRule", args)

"""
    CreateResolverQueryLogConfig()

Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs. Resolver can log queries only for VPCs that are in the same Region as the query logging configuration. To specify which VPCs you want to log queries for, you use AssociateResolverQueryLogConfig. For more information, see AssociateResolverQueryLogConfig.  You can optionally use AWS Resource Access Manager (AWS RAM) to share a query logging configuration with other AWS accounts. The other accounts can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all VPCs that are associated with the configuration.

Required Parameters
{
  "DestinationArn": "The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:    S3 bucket:   arn:aws:s3:::examplebucket  You can optionally append a file prefix to the end of the ARN.  arn:aws:s3:::examplebucket/development/     CloudWatch Logs log group:   arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*     Kinesis Data Firehose delivery stream:  arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name   ",
  "Name": "The name that you want to give the query logging configuration",
  "CreatorRequestId": "A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp. "
}

Optional Parameters
{
  "Tags": "A list of the tag keys and values that you want to associate with the query logging configuration."
}
"""
CreateResolverQueryLogConfig(args) = route53resolver("CreateResolverQueryLogConfig", args)

"""
    DisassociateResolverQueryLogConfig()

Disassociates a VPC from a query logging configuration.  Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, VPCs can be disassociated from the configuration in the following ways:   The accounts that you shared the configuration with can disassociate VPCs from the configuration.   You can stop sharing the configuration.   

Required Parameters
{
  "ResolverQueryLogConfigId": "The ID of the query logging configuration that you want to disassociate a specified VPC from.",
  "ResourceId": "The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration."
}
"""
DisassociateResolverQueryLogConfig(args) = route53resolver("DisassociateResolverQueryLogConfig", args)

"""
    GetResolverRule()

Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound Resolver endpoint that the rule is associated with.

Required Parameters
{
  "ResolverRuleId": "The ID of the Resolver rule that you want to get information about."
}
"""
GetResolverRule(args) = route53resolver("GetResolverRule", args)

"""
    ListResolverEndpoints()

Lists all the Resolver endpoints that were created using the current AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of Resolver endpoints that you want to return in the response to a ListResolverEndpoints request. If you don't specify a value for MaxResults, Resolver returns up to 100 Resolver endpoints. ",
  "NextToken": "For the first ListResolverEndpoints request, omit this value. If you have more than MaxResults Resolver endpoints, you can submit another ListResolverEndpoints request to get the next group of Resolver endpoints. In the next request, specify the value of NextToken from the previous response. ",
  "Filters": "An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.  If you submit a second or subsequent ListResolverEndpoints request and specify the NextToken parameter, you must use the same values for Filters, if any, as in the previous request. "
}
"""

ListResolverEndpoints() = route53resolver("ListResolverEndpoints")
ListResolverEndpoints(args) = route53resolver("ListResolverEndpoints", args)

"""
    ListResolverQueryLogConfigs()

Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.

Optional Parameters
{
  "MaxResults": "The maximum number of query logging configurations that you want to return in the response to a ListResolverQueryLogConfigs request. If you don't specify a value for MaxResults, Resolver returns up to 100 query logging configurations. ",
  "NextToken": "For the first ListResolverQueryLogConfigs request, omit this value. If there are more than MaxResults query logging configurations that match the values that you specify for Filters, you can submit another ListResolverQueryLogConfigs request to get the next group of configurations. In the next request, specify the value of NextToken from the previous response. ",
  "SortOrder": "If you specified a value for SortBy, the order that you want query logging configurations to be listed in, ASCENDING or DESCENDING.  If you submit a second or subsequent ListResolverQueryLogConfigs request and specify the NextToken parameter, you must use the same value for SortOrder, if any, as in the previous request. ",
  "Filters": "An optional specification to return a subset of query logging configurations.  If you submit a second or subsequent ListResolverQueryLogConfigs request and specify the NextToken parameter, you must use the same values for Filters, if any, as in the previous request. ",
  "SortBy": "The element that you want Resolver to sort query logging configurations by.   If you submit a second or subsequent ListResolverQueryLogConfigs request and specify the NextToken parameter, you must use the same value for SortBy, if any, as in the previous request.  Valid values include the following elements:    Arn: The ARN of the query logging configuration    AssociationCount: The number of VPCs that are associated with the specified configuration     CreationTime: The date and time that Resolver returned when the configuration was created    CreatorRequestId: The value that was specified for CreatorRequestId when the configuration was created    DestinationArn: The location that logs are sent to    Id: The ID of the configuration    Name: The name of the configuration    OwnerId: The AWS account number of the account that created the configuration    ShareStatus: Whether the configuration is shared with other AWS accounts or shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM).    Status: The current status of the configuration. Valid values include the following:    CREATING: Resolver is creating the query logging configuration.    CREATED: The query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.    DELETING: Resolver is deleting this query logging configuration.    FAILED: Resolver either couldn't create or couldn't delete the query logging configuration. Here are two common causes:   The specified destination (for example, an Amazon S3 bucket) was deleted.   Permissions don't allow sending logs to the destination.      "
}
"""

ListResolverQueryLogConfigs() = route53resolver("ListResolverQueryLogConfigs")
ListResolverQueryLogConfigs(args) = route53resolver("ListResolverQueryLogConfigs", args)

"""
    DisassociateResolverEndpointIpAddress()

Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address, submit one DisassociateResolverEndpointIpAddress request for each IP address. To add an IP address to an endpoint, see AssociateResolverEndpointIpAddress. 

Required Parameters
{
  "IpAddress": "The IPv4 address that you want to remove from a Resolver endpoint.",
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to disassociate an IP address from."
}
"""
DisassociateResolverEndpointIpAddress(args) = route53resolver("DisassociateResolverEndpointIpAddress", args)

"""
    GetResolverQueryLogConfigPolicy()

Gets information about a query logging policy. A query logging policy specifies the Resolver query logging operations and resources that you want to allow another AWS account to be able to use.

Required Parameters
{
  "Arn": "The ARN of the query logging configuration that you want to get the query logging policy for."
}
"""
GetResolverQueryLogConfigPolicy(args) = route53resolver("GetResolverQueryLogConfigPolicy", args)

"""
    TagResource()

Adds one or more tags to a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable Get or List command:     GetResolverEndpoint     GetResolverRule     GetResolverRuleAssociation     ListResolverEndpoints     ListResolverRuleAssociations     ListResolverRules   ",
  "Tags": "The tags that you want to add to the specified resource."
}
"""
TagResource(args) = route53resolver("TagResource", args)

"""
    UntagResource()

Removes one or more tags from a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable Get or List command:     GetResolverEndpoint     GetResolverRule     GetResolverRuleAssociation     ListResolverEndpoints     ListResolverRuleAssociations     ListResolverRules   ",
  "TagKeys": "The tags that you want to remove to the specified resource."
}
"""
UntagResource(args) = route53resolver("UntagResource", args)

"""
    GetResolverEndpoint()

Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the current status of the endpoint.

Required Parameters
{
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to get information about."
}
"""
GetResolverEndpoint(args) = route53resolver("GetResolverEndpoint", args)

"""
    AssociateResolverEndpointIpAddress()

Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address, submit one AssociateResolverEndpointIpAddress request for each IP address. To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress. 

Required Parameters
{
  "IpAddress": "Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID, Resolver chooses an IP address for you from the available IPs in the specified subnet.",
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to associate IP addresses with."
}
"""
AssociateResolverEndpointIpAddress(args) = route53resolver("AssociateResolverEndpointIpAddress", args)

"""
    PutResolverQueryLogConfigPolicy()

Specifies an AWS account that you want to share a query logging configuration with, the query logging configuration that you want to share, and the operations that you want the account to be able to perform on the configuration.

Required Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the account that you want to share rules with.",
  "ResolverQueryLogConfigPolicy": "An AWS Identity and Access Management policy statement that lists the query logging configurations that you want to share with another AWS account and the operations that you want the account to be able to perform. You can specify the following operations in the Actions section of the statement:    route53resolver:AssociateResolverQueryLogConfig     route53resolver:DisassociateResolverQueryLogConfig     route53resolver:ListResolverQueryLogConfigAssociations     route53resolver:ListResolverQueryLogConfigs    In the Resource section of the statement, you specify the ARNs for the query logging configurations that you want to share with the account that you specified in Arn. "
}
"""
PutResolverQueryLogConfigPolicy(args) = route53resolver("PutResolverQueryLogConfigPolicy", args)

"""
    GetResolverQueryLogConfig()

Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration is logging queries for and the location that logs are sent to. 

Required Parameters
{
  "ResolverQueryLogConfigId": "The ID of the Resolver query logging configuration that you want to get information about."
}
"""
GetResolverQueryLogConfig(args) = route53resolver("GetResolverQueryLogConfig", args)

"""
    UpdateResolverEndpoint()

Updates the name of an inbound or an outbound Resolver endpoint. 

Required Parameters
{
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to update."
}

Optional Parameters
{
  "Name": "The name of the Resolver endpoint that you want to update."
}
"""
UpdateResolverEndpoint(args) = route53resolver("UpdateResolverEndpoint", args)

"""
    DeleteResolverQueryLogConfig()

Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are associated with the configuration. This also applies if the query logging configuration is shared with other AWS accounts, and the other accounts have associated VPCs with the shared configuration. Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See DisassociateResolverQueryLogConfig. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically disassociated from the configuration.

Required Parameters
{
  "ResolverQueryLogConfigId": "The ID of the query logging configuration that you want to delete."
}
"""
DeleteResolverQueryLogConfig(args) = route53resolver("DeleteResolverQueryLogConfig", args)

"""
    CreateResolverEndpoint()

Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:   An inbound Resolver endpoint forwards DNS queries to the DNS service for a VPC from your network.   An outbound Resolver endpoint forwards DNS queries from the DNS service for a VPC to your network.  

Required Parameters
{
  "SecurityGroupIds": "The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints). Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.",
  "IpAddresses": "The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. ",
  "Direction": "Specify the applicable value:    INBOUND: Resolver forwards DNS queries to the DNS service for a VPC from your network    OUTBOUND: Resolver forwards DNS queries from the DNS service for a VPC to your network  ",
  "CreatorRequestId": "A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. CreatorRequestId can be any unique string, for example, a date/time stamp. "
}

Optional Parameters
{
  "Tags": "A list of the tag keys and values that you want to associate with the endpoint.",
  "Name": "A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console."
}
"""
CreateResolverEndpoint(args) = route53resolver("CreateResolverEndpoint", args)

"""
    ListResolverRuleAssociations()

Lists the associations that were created between Resolver rules and VPCs using the current AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of rule associations that you want to return in the response to a ListResolverRuleAssociations request. If you don't specify a value for MaxResults, Resolver returns up to 100 rule associations. ",
  "NextToken": "For the first ListResolverRuleAssociation request, omit this value. If you have more than MaxResults rule associations, you can submit another ListResolverRuleAssociation request to get the next group of rule associations. In the next request, specify the value of NextToken from the previous response. ",
  "Filters": "An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.  If you submit a second or subsequent ListResolverRuleAssociations request and specify the NextToken parameter, you must use the same values for Filters, if any, as in the previous request. "
}
"""

ListResolverRuleAssociations() = route53resolver("ListResolverRuleAssociations")
ListResolverRuleAssociations(args) = route53resolver("ListResolverRuleAssociations", args)

"""
    GetResolverRuleAssociation()

Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using AssociateResolverRule. 

Required Parameters
{
  "ResolverRuleAssociationId": "The ID of the Resolver rule association that you want to get information about."
}
"""
GetResolverRuleAssociation(args) = route53resolver("GetResolverRuleAssociation", args)

"""
    DeleteResolverRule()

Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you associated the Resolver rule with. For more information, see DisassociateResolverRule.

Required Parameters
{
  "ResolverRuleId": "The ID of the Resolver rule that you want to delete."
}
"""
DeleteResolverRule(args) = route53resolver("DeleteResolverRule", args)

"""
    ListResolverEndpointIpAddresses()

Gets the IP addresses for a specified Resolver endpoint.

Required Parameters
{
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to get IP addresses for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of IP addresses that you want to return in the response to a ListResolverEndpointIpAddresses request. If you don't specify a value for MaxResults, Resolver returns up to 100 IP addresses. ",
  "NextToken": "For the first ListResolverEndpointIpAddresses request, omit this value. If the specified Resolver endpoint has more than MaxResults IP addresses, you can submit another ListResolverEndpointIpAddresses request to get the next group of IP addresses. In the next request, specify the value of NextToken from the previous response. "
}
"""
ListResolverEndpointIpAddresses(args) = route53resolver("ListResolverEndpointIpAddresses", args)

"""
    ListResolverQueryLogConfigAssociations()

Lists information about associations between Amazon VPCs and query logging configurations.

Optional Parameters
{
  "MaxResults": "The maximum number of query logging associations that you want to return in the response to a ListResolverQueryLogConfigAssociations request. If you don't specify a value for MaxResults, Resolver returns up to 100 query logging associations. ",
  "NextToken": "For the first ListResolverQueryLogConfigAssociations request, omit this value. If there are more than MaxResults query logging associations that match the values that you specify for Filters, you can submit another ListResolverQueryLogConfigAssociations request to get the next group of associations. In the next request, specify the value of NextToken from the previous response. ",
  "SortOrder": "If you specified a value for SortBy, the order that you want query logging associations to be listed in, ASCENDING or DESCENDING.  If you submit a second or subsequent ListResolverQueryLogConfigAssociations request and specify the NextToken parameter, you must use the same value for SortOrder, if any, as in the previous request. ",
  "Filters": "An optional specification to return a subset of query logging associations.  If you submit a second or subsequent ListResolverQueryLogConfigAssociations request and specify the NextToken parameter, you must use the same values for Filters, if any, as in the previous request. ",
  "SortBy": "The element that you want Resolver to sort query logging associations by.   If you submit a second or subsequent ListResolverQueryLogConfigAssociations request and specify the NextToken parameter, you must use the same value for SortBy, if any, as in the previous request.  Valid values include the following elements:    CreationTime: The ID of the query logging association.    Error: If the value of Status is FAILED, the value of Error indicates the cause:     DESTINATION_NOT_FOUND: The specified destination (for example, an Amazon S3 bucket) was deleted.    ACCESS_DENIED: Permissions don't allow sending logs to the destination.   If Status is a value other than FAILED, ERROR is null.    Id: The ID of the query logging association    ResolverQueryLogConfigId: The ID of the query logging configuration    ResourceId: The ID of the VPC that is associated with the query logging configuration    Status: The current status of the configuration. Valid values include the following:    CREATING: Resolver is creating an association between an Amazon VPC and a query logging configuration.    CREATED: The association between an Amazon VPC and a query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.    DELETING: Resolver is deleting this query logging association.    FAILED: Resolver either couldn't create or couldn't delete the query logging association. Here are two common causes:   The specified destination (for example, an Amazon S3 bucket) was deleted.   Permissions don't allow sending logs to the destination.      "
}
"""

ListResolverQueryLogConfigAssociations() = route53resolver("ListResolverQueryLogConfigAssociations")
ListResolverQueryLogConfigAssociations(args) = route53resolver("ListResolverQueryLogConfigAssociations", args)

"""
    ListResolverRules()

Lists the Resolver rules that were created using the current AWS account.

Optional Parameters
{
  "MaxResults": "The maximum number of Resolver rules that you want to return in the response to a ListResolverRules request. If you don't specify a value for MaxResults, Resolver returns up to 100 Resolver rules.",
  "NextToken": "For the first ListResolverRules request, omit this value. If you have more than MaxResults Resolver rules, you can submit another ListResolverRules request to get the next group of Resolver rules. In the next request, specify the value of NextToken from the previous response. ",
  "Filters": "An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.  If you submit a second or subsequent ListResolverRules request and specify the NextToken parameter, you must use the same values for Filters, if any, as in the previous request. "
}
"""

ListResolverRules() = route53resolver("ListResolverRules")
ListResolverRules(args) = route53resolver("ListResolverRules", args)

"""
    AssociateResolverRule()

Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule. 

Required Parameters
{
  "ResolverRuleId": "The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use ListResolverRules.",
  "VPCId": "The ID of the VPC that you want to associate the Resolver rule with."
}

Optional Parameters
{
  "Name": "A name for the association that you're creating between a Resolver rule and a VPC."
}
"""
AssociateResolverRule(args) = route53resolver("AssociateResolverRule", args)

"""
    GetResolverRulePolicy()

Gets information about a Resolver rule policy. A Resolver rule policy specifies the Resolver operations and resources that you want to allow another AWS account to be able to use. 

Required Parameters
{
  "Arn": "The ID of the Resolver rule policy that you want to get information about."
}
"""
GetResolverRulePolicy(args) = route53resolver("GetResolverRulePolicy", args)

"""
    PutResolverRulePolicy()

Specifies an AWS account that you want to share rules with, the Resolver rules that you want to share, and the operations that you want the account to be able to perform on those rules.

Required Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the account that you want to share rules with.",
  "ResolverRulePolicy": "An AWS Identity and Access Management policy statement that lists the rules that you want to share with another AWS account and the operations that you want the account to be able to perform. You can specify the following operations in the Actions section of the statement:    route53resolver:GetResolverRule     route53resolver:AssociateResolverRule     route53resolver:DisassociateResolverRule     route53resolver:ListResolverRules     route53resolver:ListResolverRuleAssociations    In the Resource section of the statement, you specify the ARNs for the rules that you want to share with the account that you specified in Arn. "
}
"""
PutResolverRulePolicy(args) = route53resolver("PutResolverRulePolicy", args)

"""
    DeleteResolverEndpoint()

Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound Resolver endpoint:    Inbound: DNS queries from your network are no longer routed to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network.  

Required Parameters
{
  "ResolverEndpointId": "The ID of the Resolver endpoint that you want to delete."
}
"""
DeleteResolverEndpoint(args) = route53resolver("DeleteResolverEndpoint", args)
