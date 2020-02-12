include("../AWSCorePrototypeServices.jl")
using .Services: ec2

"""
    ModifyHosts

Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, any instances that you launch with a tenancy of host but without a specific host ID are placed onto any available Dedicated Host in your account that has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID to have the instance launch onto a specific host. If no host ID is provided, the instance is launched onto a suitable host with auto-placement enabled. You can also use this API action to modify a Dedicated Host to support either multiple instance types in an instance family, or to support a specific instance type only.

Required Parameters:
{
  "HostIds": "The IDs of the Dedicated Hosts to modify."
}


Optional Parameters:
{
  "InstanceFamily": "Specifies the instance family to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support multiple instance types within its current instance family. If you want to modify a Dedicated Host to support a specific instance type only, omit this parameter and specify InstanceType instead. You cannot specify InstanceFamily and InstanceType in the same request.",
  "AutoPlacement": "Specify whether to enable or disable auto-placement.",
  "InstanceType": "Specifies the instance type to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support only a specific instance type. If you want to modify a Dedicated Host to support multiple instance types in its current instance family, omit this parameter and specify InstanceFamily instead. You cannot specify InstanceType and InstanceFamily in the same request.",
  "HostRecovery": "Indicates whether to enable or disable host recovery for the Dedicated Host. For more information, see  Host Recovery in the Amazon Elastic Compute Cloud User Guide."
}

"""

ModifyHosts(args) = ec2("ModifyHosts", args)
"""
    StartInstances

Starts an Amazon EBS-backed instance that you've previously stopped. Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM. Performing this operation on an instance that uses an instance store as its root device returns an error. For more information, see Stopping Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceIds": "The IDs of the instances."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AdditionalInfo": "Reserved."
}

"""

StartInstances(args) = ec2("StartInstances", args)
"""
    DetachInternetGateway

Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.

Required Parameters:
{
  "InternetGatewayId": "The ID of the internet gateway.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DetachInternetGateway(args) = ec2("DetachInternetGateway", args)
"""
    DescribeIamInstanceProfileAssociations

Describes your IAM instance profile associations.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results.",
  "AssociationIds": "The IAM instance profile associations.",
  "Filters": "The filters.    instance-id - The ID of the instance.    state - The state of the association (associating | associated | disassociating | disassociated).  "
}

"""
DescribeIamInstanceProfileAssociations() = ec2("DescribeIamInstanceProfileAssociations")
DescribeIamInstanceProfileAssociations(args) = ec2("DescribeIamInstanceProfileAssociations", args)

"""
    DescribeVolumeAttribute

Describes the specified attribute of the specified volume. You can specify only one attribute at a time. For more information about EBS volumes, see Amazon EBS Volumes in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "VolumeId": "The ID of the volume.",
  "Attribute": "The attribute of the volume. This parameter is required."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeVolumeAttribute(args) = ec2("DescribeVolumeAttribute", args)
"""
    CreateClientVpnRoute

Adds a route to a network to a Client VPN endpoint. Each Client VPN endpoint has a route table that describes the available destination network routes. Each route in the route table specifies the path for traﬃc to speciﬁc resources or networks.

Required Parameters:
{
  "TargetVpcSubnetId": "The ID of the subnet through which you want to route traffic. The specified subnet must be an existing target network of the Client VPN endpoint.",
  "DestinationCidrBlock": "The IPv4 address range, in CIDR notation, of the route destination. For example:   To add a route for Internet access, enter 0.0.0.0/0    To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR range   To add a route for an on-premises network, enter the AWS Site-to-Site VPN connection's IPv4 CIDR range   Route address ranges cannot overlap with the CIDR range specified for client allocation.",
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint to which to add the route."
}


Optional Parameters:
{
  "Description": "A brief description of the route.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

CreateClientVpnRoute(args) = ec2("CreateClientVpnRoute", args)
"""
    GetReservedInstancesExchangeQuote

Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use AcceptReservedInstancesExchangeQuote to perform the exchange.

Required Parameters:
{
  "ReservedInstanceIds": "The IDs of the Convertible Reserved Instances to exchange."
}


Optional Parameters:
{
  "TargetConfigurations": "The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetReservedInstancesExchangeQuote(args) = ec2("GetReservedInstancesExchangeQuote", args)
"""
    ProvisionByoipCidr

Provisions an IPv4 or IPv6 address range for use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using AdvertiseByoipCidr. AWS verifies that you own the address range and are authorized to advertise it. You must ensure that the address range is registered to you and that you created an RPKI ROA to authorize Amazon ASNs 16509 and 14618 to advertise the address range. For more information, see Bring Your Own IP Addresses (BYOIP) in the Amazon Elastic Compute Cloud User Guide. Provisioning an address range is an asynchronous operation, so the call returns immediately, but the address range is not ready to use until its status changes from pending-provision to provisioned. To monitor the status of an address range, use DescribeByoipCidrs. To allocate an Elastic IP address from your IPv4 address pool, use AllocateAddress with either the specific address from the address pool or the ID of the address pool.

Required Parameters:
{
  "Cidr": "The public IPv4 or IPv6 address range, in CIDR notation. The most specific IPv4 prefix that you can specify is /24. The most specific IPv6 prefix you can specify is /56. The address range cannot overlap with another address range that you've brought to this or another Region."
}


Optional Parameters:
{
  "Description": "A description for the address range and the address pool.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "CidrAuthorizationContext": "A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP.",
  "PubliclyAdvertisable": "(IPv6 only) Indicate whether the address range will be publicly advertised to the internet. Default: true"
}

"""

ProvisionByoipCidr(args) = ec2("ProvisionByoipCidr", args)
"""
    ReplaceRoute

Replaces an existing route within a route table in a VPC. You must provide only one of the following: internet gateway, virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, egress-only internet gateway, or transit gateway. For more information, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "RouteTableId": "The ID of the route table."
}


Optional Parameters:
{
  "DestinationIpv6CidrBlock": "The IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "EgressOnlyInternetGatewayId": "[IPv6 traffic only] The ID of an egress-only internet gateway.",
  "TransitGatewayId": "The ID of a transit gateway.",
  "InstanceId": "The ID of a NAT instance in your VPC.",
  "LocalGatewayId": "The ID of the local gateway.",
  "NatGatewayId": "[IPv4 traffic only] The ID of a NAT gateway.",
  "DestinationCidrBlock": "The IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.",
  "LocalTarget": "Specifies whether to reset the local route to its default target (local).",
  "VpcPeeringConnectionId": "The ID of a VPC peering connection.",
  "NetworkInterfaceId": "The ID of a network interface.",
  "GatewayId": "The ID of an internet gateway or virtual private gateway."
}

"""

ReplaceRoute(args) = ec2("ReplaceRoute", args)
"""
    RegisterImage

Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see Creating Your Own AMIs in the Amazon Elastic Compute Cloud User Guide.  For Amazon EBS-backed instances, CreateImage creates and registers the AMI in a single request, so you don't have to register the AMI yourself.  You can also use RegisterImage to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using the block device mapping. For more information, see Launching a Linux Instance from a Backup in the Amazon Elastic Compute Cloud User Guide. You can't register an image where a secondary (non-root) snapshot has AWS Marketplace product codes. Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. To create a new AMI for operating systems that require a billing product code, instead of registering the AMI, do the following to preserve the billing product code association:   Launch an instance from an existing AMI with that billing product code.   Customize the instance.   Create an AMI from the instance using CreateImage.   If you purchase a Reserved Instance to apply to an On-Demand Instance that was launched from an AMI with a billing product code, make sure that the Reserved Instance has the matching billing product code. If you purchase a Reserved Instance without the matching billing product code, the Reserved Instance will not be applied to the On-Demand Instance. For information about how to obtain the platform details and billing information of an AMI, see Obtaining Billing Information in the Amazon Elastic Compute Cloud User Guide. If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.

Required Parameters:
{
  "Name": "A name for your AMI. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)"
}


Optional Parameters:
{
  "BlockDeviceMappings": "The block device mapping entries.",
  "Architecture": "The architecture of the AMI. Default: For Amazon EBS-backed AMIs, i386. For instance store-backed AMIs, the architecture specified in the manifest file.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "RootDeviceName": "The device name of the root device volume (for example, /dev/sda1).",
  "KernelId": "The ID of the kernel.",
  "BillingProducts": "The billing product codes. Your account must be authorized to specify billing product codes. Otherwise, you can use the AWS Marketplace to bill for the use of an AMI.",
  "ImageLocation": "The full path to your AMI manifest in Amazon S3 storage. The specified bucket must have the aws-exec-read canned access control list (ACL) to ensure that it can be accessed by Amazon EC2. For more information, see Canned ACLs in the Amazon S3 Service Developer Guide.",
  "EnaSupport": "Set to true to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.",
  "Description": "A description for your AMI.",
  "SriovNetSupport": "Set to simple to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI. There is no way to disable sriovNetSupport at this time. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.",
  "RamdiskId": "The ID of the RAM disk.",
  "VirtualizationType": "The type of virtualization (hvm | paravirtual). Default: paravirtual "
}

"""

RegisterImage(args) = ec2("RegisterImage", args)
"""
    DescribeNetworkInterfaceAttribute

Describes a network interface attribute. You can specify only one attribute at a time.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Attribute": "The attribute of the network interface. This parameter is required."
}

"""

DescribeNetworkInterfaceAttribute(args) = ec2("DescribeNetworkInterfaceAttribute", args)
"""
    RevokeSecurityGroupIngress

Removes the specified ingress rules from a security group. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly.  [EC2-Classic only] If the values you specify do not match the existing rule's values, no error is returned. Use DescribeSecurityGroups to verify that the rule has been removed.  Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule. Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.

Required Parameters:
{}


Optional Parameters:
{
  "SourceSecurityGroupName": "[EC2-Classic, default VPC] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. For EC2-VPC, the source security group must be in the same VPC. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.",
  "SourceSecurityGroupOwnerId": "[EC2-Classic] The AWS account ID of the source security group, if the source security group is in a different account. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.",
  "CidrIp": "The CIDR IP address range. You can't specify this parameter when specifying a source security group.",
  "GroupId": "The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.",
  "IpProtocol": "The IP protocol name (tcp, udp, icmp) or number (see Protocol Numbers). Use -1 to specify all.",
  "FromPort": "The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, use -1 to specify all ICMP types.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupName": "[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.",
  "ToPort": "The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, use -1 to specify all ICMP codes for the ICMP type.",
  "IpPermissions": "The sets of IP permissions. You can't specify a source security group and a CIDR IP address range in the same set of permissions."
}

"""
RevokeSecurityGroupIngress() = ec2("RevokeSecurityGroupIngress")
RevokeSecurityGroupIngress(args) = ec2("RevokeSecurityGroupIngress", args)

"""
    CreateSpotDatafeedSubscription

Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see Spot Instance Data Feed in the Amazon EC2 User Guide for Linux Instances.

Required Parameters:
{
  "Bucket": "The Amazon S3 bucket in which to store the Spot Instance data feed."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Prefix": "A prefix for the data feed file names."
}

"""

CreateSpotDatafeedSubscription(args) = ec2("CreateSpotDatafeedSubscription", args)
"""
    DeleteNetworkAclEntry

Deletes the specified ingress or egress entry (rule) from the specified network ACL.

Required Parameters:
{
  "Egress": "Indicates whether the rule is an egress rule.",
  "RuleNumber": "The rule number of the entry to delete.",
  "NetworkAclId": "The ID of the network ACL."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteNetworkAclEntry(args) = ec2("DeleteNetworkAclEntry", args)
"""
    DetachClassicLinkVpc

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.

Required Parameters:
{
  "InstanceId": "The ID of the instance to unlink from the VPC.",
  "VpcId": "The ID of the VPC to which the instance is linked."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DetachClassicLinkVpc(args) = ec2("DetachClassicLinkVpc", args)
"""
    CreateKeyPair

Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error. You can have up to five thousand key pairs per Region. The key pair returned to you is available only in the Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using ImportKeyPair. For more information, see Key Pairs in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "KeyName": "A unique name for the key pair. Constraints: Up to 255 ASCII characters"
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateKeyPair(args) = ec2("CreateKeyPair", args)
"""
    ReplaceTransitGatewayRoute

Replaces the specified route in the specified transit gateway route table.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR range used for the destination match. Routing decisions are based on the most specific match.",
  "TransitGatewayRouteTableId": "The ID of the route table."
}


Optional Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "Blackhole": "Indicates whether traffic matching this route is to be dropped.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ReplaceTransitGatewayRoute(args) = ec2("ReplaceTransitGatewayRoute", args)
"""
    DeleteVpcEndpoints

Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.

Required Parameters:
{
  "VpcEndpointIds": "One or more VPC endpoint IDs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpcEndpoints(args) = ec2("DeleteVpcEndpoints", args)
"""
    DescribeTrafficMirrorFilters

Describes one or more Traffic Mirror filters.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TrafficMirrorFilterIds": "The ID of the Traffic Mirror filter.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    description: The Traffic Mirror filter description.    traffic-mirror-filter-id: The ID of the Traffic Mirror filter.  "
}

"""
DescribeTrafficMirrorFilters() = ec2("DescribeTrafficMirrorFilters")
DescribeTrafficMirrorFilters(args) = ec2("DescribeTrafficMirrorFilters", args)

"""
    ReplaceNetworkAclAssociation

Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information, see Network ACLs in the Amazon Virtual Private Cloud User Guide. This is an idempotent operation.

Required Parameters:
{
  "AssociationId": "The ID of the current association between the original network ACL and the subnet.",
  "NetworkAclId": "The ID of the new network ACL to associate with the subnet."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ReplaceNetworkAclAssociation(args) = ec2("ReplaceNetworkAclAssociation", args)
"""
    ModifyVpcEndpointServicePermissions

Modifies the permissions for your VPC endpoint service. You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service. If you grant permissions to all principals, the service is public. Any users who know the name of a public service can send a request to attach an endpoint. If the service does not require manual approval, attachments are automatically approved.

Required Parameters:
{
  "ServiceId": "The ID of the service."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AddAllowedPrincipals": "The Amazon Resource Names (ARN) of one or more principals. Permissions are granted to the principals in this list. To grant permissions to all principals, specify an asterisk (*).",
  "RemoveAllowedPrincipals": "The Amazon Resource Names (ARN) of one or more principals. Permissions are revoked for principals in this list."
}

"""

ModifyVpcEndpointServicePermissions(args) = ec2("ModifyVpcEndpointServicePermissions", args)
"""
    DescribeClientVpnRoutes

Describes the routes for the specified Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    destination-cidr - The CIDR of the route destination.    origin - How the route was associated with the Client VPN endpoint (associate | add-route).    target-subnet - The ID of the subnet through which traffic is routed.  "
}

"""

DescribeClientVpnRoutes(args) = ec2("DescribeClientVpnRoutes", args)
"""
    ReplaceNetworkAclEntry

Replaces an entry (rule) in a network ACL. For more information, see Network ACLs in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "Egress": "Indicates whether to replace the egress rule. Default: If no value is specified, we replace the ingress rule.",
  "RuleNumber": "The rule number of the entry to replace.",
  "NetworkAclId": "The ID of the ACL.",
  "RuleAction": "Indicates whether to allow or deny the traffic that matches the rule.",
  "Protocol": "The protocol number. A value of \"-1\" means all protocols. If you specify \"-1\" or a protocol number other than \"6\" (TCP), \"17\" (UDP), or \"1\" (ICMP), traffic on all ports is allowed, regardless of any ports or ICMP types or codes that you specify. If you specify protocol \"58\" (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol \"58\" (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code."
}


Optional Parameters:
{
  "IcmpTypeCode": "ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR block.",
  "CidrBlock": "The IPv4 network range to allow or deny, in CIDR notation (for example 172.16.0.0/24).",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Ipv6CidrBlock": "The IPv6 network range to allow or deny, in CIDR notation (for example 2001:bd8:1234:1a00::/64).",
  "PortRange": "TCP or UDP protocols: The range of ports the rule applies to. Required if specifying protocol 6 (TCP) or 17 (UDP)."
}

"""

ReplaceNetworkAclEntry(args) = ec2("ReplaceNetworkAclEntry", args)
"""
    DescribeSnapshots

Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you. The snapshots available to you include public snapshots, private snapshots that you own, and private snapshots owned by other AWS accounts for which you have explicit create volume permissions. The create volume permissions fall into the following categories:    public: The owner of the snapshot granted create volume permissions for the snapshot to the all group. All AWS accounts have create volume permissions for these snapshots.    explicit: The owner of the snapshot granted create volume permissions to a specific AWS account.    implicit: An AWS account has implicit create volume permissions for all snapshots it owns.   The list of snapshots returned can be filtered by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions. If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results. If you specify one or more snapshot owners using the OwnerIds option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, amazon for snapshots owned by Amazon, or self for snapshots that you own. If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), self for snapshots for which you own or have explicit permissions, or all for public snapshots. If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The MaxResults parameter sets the maximum number of results returned in a single page. If the list of results exceeds your MaxResults value, then that number of results is returned along with a NextToken value that can be passed to a subsequent DescribeSnapshots request to retrieve the remaining results. To get the state of fast snapshot restores for a snapshot, use DescribeFastSnapshotRestores. For more information about EBS snapshots, see Amazon EBS Snapshots in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of snapshot results returned by DescribeSnapshots in paginated output. When this parameter is used, DescribeSnapshots only returns MaxResults results in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another DescribeSnapshots request with the returned NextToken value. This value can be between 5 and 1000; if MaxResults is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then DescribeSnapshots returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.",
  "OwnerIds": "Describes the snapshots owned by these owners.",
  "SnapshotIds": "The snapshot IDs. Default: Describes the snapshots for which you have create volume permissions.",
  "NextToken": "The NextToken value returned from a previous paginated DescribeSnapshots request where MaxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the NextToken value. This value is null when there are no more results to return.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    description - A description of the snapshot.    encrypted - Indicates whether the snapshot is encrypted (true | false)    owner-alias - Value from an Amazon-maintained list (amazon | self | all | aws-marketplace | microsoft) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.    owner-id - The ID of the AWS account that owns the snapshot.    progress - The progress of the snapshot, as a percentage (for example, 80%).    snapshot-id - The snapshot ID.    start-time - The time stamp when the snapshot was initiated.    status - The status of the snapshot (pending | completed | error).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    volume-id - The ID of the volume the snapshot is for.    volume-size - The size of the volume, in GiB.  ",
  "RestorableByUserIds": "The IDs of the AWS accounts that can create volumes from the snapshot."
}

"""
DescribeSnapshots() = ec2("DescribeSnapshots")
DescribeSnapshots(args) = ec2("DescribeSnapshots", args)

"""
    ResetNetworkInterfaceAttribute

Resets a network interface attribute. You can specify only one attribute at a time.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "SourceDestCheck": "The source/destination checking attribute. Resets the value to true.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ResetNetworkInterfaceAttribute(args) = ec2("ResetNetworkInterfaceAttribute", args)
"""
    ModifyImageAttribute

Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the Attribute parameter to specify the attribute or one of the following parameters: Description, LaunchPermission, or ProductCode. AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public. To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.

Required Parameters:
{
  "ImageId": "The ID of the AMI."
}


Optional Parameters:
{
  "LaunchPermission": "A new launch permission for the AMI.",
  "Description": "A new description for the AMI.",
  "ProductCodes": "The DevPay product codes. After you add a product code to an AMI, it can't be removed.",
  "Value": "The value of the attribute being modified. This parameter can be used only when the Attribute parameter is description or productCodes.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Attribute": "The name of the attribute to modify. The valid values are description, launchPermission, and productCodes.",
  "OperationType": "The operation type. This parameter can be used only when the Attribute parameter is launchPermission.",
  "UserIds": "The AWS account IDs. This parameter can be used only when the Attribute parameter is launchPermission.",
  "UserGroups": "The user groups. This parameter can be used only when the Attribute parameter is launchPermission."
}

"""

ModifyImageAttribute(args) = ec2("ModifyImageAttribute", args)
"""
    AssociateSubnetCidrBlock

Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.

Required Parameters:
{
  "Ipv6CidrBlock": "The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.",
  "SubnetId": "The ID of your subnet."
}


Optional Parameters:
{}

"""

AssociateSubnetCidrBlock(args) = ec2("AssociateSubnetCidrBlock", args)
"""
    RejectTransitGatewayVpcAttachment

Rejects a request to attach a VPC to a transit gateway. The VPC attachment must be in the pendingAcceptance state. Use DescribeTransitGatewayVpcAttachments to view your pending VPC attachment requests. Use AcceptTransitGatewayVpcAttachment to accept a VPC attachment request.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RejectTransitGatewayVpcAttachment(args) = ec2("RejectTransitGatewayVpcAttachment", args)
"""
    DeregisterTransitGatewayMulticastGroupSources

Deregisters the specified sources (network interfaces) from the transit gateway multicast group.

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "GroupIpAddress": "The IP address assigned to the transit gateway multicast group.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkInterfaceIds": "The IDs of the group sources' network interfaces."
}

"""
DeregisterTransitGatewayMulticastGroupSources() = ec2("DeregisterTransitGatewayMulticastGroupSources")
DeregisterTransitGatewayMulticastGroupSources(args) = ec2("DeregisterTransitGatewayMulticastGroupSources", args)

"""
    DeleteSpotDatafeedSubscription

Deletes the data feed for Spot Instances.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DeleteSpotDatafeedSubscription() = ec2("DeleteSpotDatafeedSubscription")
DeleteSpotDatafeedSubscription(args) = ec2("DeleteSpotDatafeedSubscription", args)

"""
    DescribeIdFormat

Describes the ID format settings for your resources on a per-Region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. The following resource types support longer IDs: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway.  These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the ModifyIdFormat command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant Describe command for the resource type.

Required Parameters:
{}


Optional Parameters:
{
  "Resource": "The type of resource: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway "
}

"""
DescribeIdFormat() = ec2("DescribeIdFormat")
DescribeIdFormat(args) = ec2("DescribeIdFormat", args)

"""
    StartVpcEndpointServicePrivateDnsVerification

Initiates the verification process to prove that the service provider owns the private DNS name domain for the endpoint service. The service provider must successfully perform the verification before the consumer can use the name to access the service. Before the service provider runs this command, they must add a record to the DNS server. For more information, see Adding a TXT Record to Your Domain's DNS Server  in the Amazon VPC User Guide.

Required Parameters:
{
  "ServiceId": "The ID of the endpoint service."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

StartVpcEndpointServicePrivateDnsVerification(args) = ec2("StartVpcEndpointServicePrivateDnsVerification", args)
"""
    UnassignIpv6Addresses

Unassigns one or more IPv6 addresses from a network interface.

Required Parameters:
{
  "Ipv6Addresses": "The IPv6 addresses to unassign from the network interface.",
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{}

"""

UnassignIpv6Addresses(args) = ec2("UnassignIpv6Addresses", args)
"""
    ImportInstance

Creates an import instance task using metadata from the specified disk image. ImportInstance only supports single-volume VMs. To import multi-volume VMs, use ImportImage. For more information, see Importing a Virtual Machine Using the Amazon EC2 CLI. For information about the import manifest referenced by this API action, see VM Import Manifest.

Required Parameters:
{
  "Platform": "The instance operating system."
}


Optional Parameters:
{
  "Description": "A description for the instance being imported.",
  "DiskImages": "The disk image.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchSpecification": "The launch specification."
}

"""

ImportInstance(args) = ec2("ImportInstance", args)
"""
    SearchLocalGatewayRoutes

Searches for routes in the specified local gateway route table.

Required Parameters:
{
  "LocalGatewayRouteTableId": "The ID of the local gateway route table.",
  "Filters": "One or more filters."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

SearchLocalGatewayRoutes(args) = ec2("SearchLocalGatewayRoutes", args)
"""
    CancelSpotFleetRequests

Cancels the specified Spot Fleet requests. After you cancel a Spot Fleet request, the Spot Fleet launches no new Spot Instances. You must specify whether the Spot Fleet should also terminate its Spot Instances. If you terminate the instances, the Spot Fleet request enters the cancelled_terminating state. Otherwise, the Spot Fleet request enters the cancelled_running state and the instances continue to run until they are interrupted or you terminate them manually.

Required Parameters:
{
  "TerminateInstances": "Indicates whether to terminate instances for a Spot Fleet request if it is canceled successfully.",
  "SpotFleetRequestIds": "The IDs of the Spot Fleet requests."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CancelSpotFleetRequests(args) = ec2("CancelSpotFleetRequests", args)
"""
    UpdateSecurityGroupRuleDescriptionsEgress

[VPC only] Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously. You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.

Required Parameters:
{
  "IpPermissions": "The IP permissions for the security group rule."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupName": "[Default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.",
  "GroupId": "The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID."
}

"""

UpdateSecurityGroupRuleDescriptionsEgress(args) = ec2("UpdateSecurityGroupRuleDescriptionsEgress", args)
"""
    DeletePlacementGroup

Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see Placement Groups in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "GroupName": "The name of the placement group."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeletePlacementGroup(args) = ec2("DeletePlacementGroup", args)
"""
    GetEbsDefaultKmsKeyId

Describes the default customer master key (CMK) for EBS encryption by default for your account in this Region. You can change the default CMK for encryption by default using ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
GetEbsDefaultKmsKeyId() = ec2("GetEbsDefaultKmsKeyId")
GetEbsDefaultKmsKeyId(args) = ec2("GetEbsDefaultKmsKeyId", args)

"""
    DescribeFleets

Describes the specified EC2 Fleets or all of your EC2 Fleets.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "FleetIds": "The ID of the EC2 Fleets.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    activity-status - The progress of the EC2 Fleet ( error | pending-fulfillment | pending-termination | fulfilled).    excess-capacity-termination-policy - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (true | false).    fleet-state - The state of the EC2 Fleet (submitted | active | deleted | failed | deleted-running | deleted-terminating | modifying).    replace-unhealthy-instances - Indicates whether EC2 Fleet should replace unhealthy instances (true | false).    type - The type of request (instant | request | maintain).  "
}

"""
DescribeFleets() = ec2("DescribeFleets")
DescribeFleets(args) = ec2("DescribeFleets", args)

"""
    DeleteTrafficMirrorTarget

Deletes the specified Traffic Mirror target. You cannot delete a Traffic Mirror target that is in use by a Traffic Mirror session.

Required Parameters:
{
  "TrafficMirrorTargetId": "The ID of the Traffic Mirror target."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTrafficMirrorTarget(args) = ec2("DeleteTrafficMirrorTarget", args)
"""
    CreateImage

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped. If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes. For more information, see Creating Amazon EBS-Backed Linux AMIs in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "Name": "A name for the new image. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)"
}


Optional Parameters:
{
  "BlockDeviceMappings": "The block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the CopyImage action.",
  "Description": "A description for the new image.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NoReboot": "By default, Amazon EC2 attempts to shut down and reboot the instance before creating the image. If the 'No Reboot' option is set, Amazon EC2 doesn't shut down the instance before creating the image. When this option is used, file system integrity on the created image can't be guaranteed."
}

"""

CreateImage(args) = ec2("CreateImage", args)
"""
    DescribeVpcClassicLinkDnsSupport

Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see ClassicLink in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "VpcIds": "One or more VPC IDs."
}

"""
DescribeVpcClassicLinkDnsSupport() = ec2("DescribeVpcClassicLinkDnsSupport")
DescribeVpcClassicLinkDnsSupport(args) = ec2("DescribeVpcClassicLinkDnsSupport", args)

"""
    SearchTransitGatewayRoutes

Searches for routes in the specified transit gateway route table.

Required Parameters:
{
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table.",
  "Filters": "One or more filters. The possible values are:    attachment.transit-gateway-attachment-id- The id of the transit gateway attachment.    attachment.resource-id - The resource id of the transit gateway attachment.    attachment.resource-type - The attachment resource type (vpc | vpn).    route-search.exact-match - The exact match of the specified filter.    route-search.longest-prefix-match - The longest prefix that matches the route.    route-search.subnet-of-match - The routes with a subnet that match the specified CIDR filter.    route-search.supernet-of-match - The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.    state - The state of the route (active | blackhole).    type - The type of route (propagated | static).  "
}


Optional Parameters:
{
  "MaxResults": "The maximum number of routes to return.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

SearchTransitGatewayRoutes(args) = ec2("SearchTransitGatewayRoutes", args)
"""
    DescribeTags

Describes the specified tags for your EC2 resources. For more information about tags, see Tagging Your Resources in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. This value can be between 5 and 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    key - The tag key.    resource-id - The ID of the resource.    resource-type - The resource type (customer-gateway | dedicated-host | dhcp-options | elastic-ip | fleet | fpga-image | image | instance | host-reservation | internet-gateway | launch-template | natgateway | network-acl | network-interface | reserved-instances | route-table | security-group | snapshot | spot-instances-request | subnet | volume | vpc | vpc-peering-connection | vpn-connection | vpn-gateway).    tag:&lt;key&gt; - The key/value combination of the tag. For example, specify \"tag:Owner\" for the filter name and \"TeamA\" for the filter value to find resources with the tag \"Owner=TeamA\".    value - The tag value.  "
}

"""
DescribeTags() = ec2("DescribeTags")
DescribeTags(args) = ec2("DescribeTags", args)

"""
    CreateCustomerGateway

Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway's external interface. The IP address must be static and can be behind a device performing network address translation (NAT). For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN (in the 64512 - 65534 range).  Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the us-east-1 Region, and 9059, which is reserved in the eu-west-1 Region.  For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.  To create more than one customer gateway with the same VPN type, IP address, and BGP ASN, specify a unique device name for each customer gateway. Identical requests return information about the existing customer gateway and do not create new customer gateways. 

Required Parameters:
{
  "Type": "The type of VPN connection that this customer gateway supports (ipsec.1).",
  "BgpAsn": "For devices that support BGP, the customer gateway's BGP ASN. Default: 65000"
}


Optional Parameters:
{
  "DeviceName": "A name for the customer gateway device. Length Constraints: Up to 255 characters.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "CertificateArn": "The Amazon Resource Name (ARN) for the customer gateway certificate.",
  "PublicIp": "The Internet-routable IP address for the customer gateway's outside interface. The address must be static."
}

"""

CreateCustomerGateway(args) = ec2("CreateCustomerGateway", args)
"""
    AcceptTransitGatewayVpcAttachment

Accepts a request to attach a VPC to a transit gateway. The VPC attachment must be in the pendingAcceptance state. Use DescribeTransitGatewayVpcAttachments to view your pending VPC attachment requests. Use RejectTransitGatewayVpcAttachment to reject a VPC attachment request.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AcceptTransitGatewayVpcAttachment(args) = ec2("AcceptTransitGatewayVpcAttachment", args)
"""
    ReleaseHosts

When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into released state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, to modify the host. You must stop or terminate all instances on a host before it can be released. When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again. Released hosts still appear in a DescribeHosts response.

Required Parameters:
{
  "HostIds": "The IDs of the Dedicated Hosts to release."
}


Optional Parameters:
{}

"""

ReleaseHosts(args) = ec2("ReleaseHosts", args)
"""
    ExportTransitGatewayRoutes

Exports routes from the specified transit gateway route table to the specified S3 bucket. By default, all routes are exported. Alternatively, you can filter by CIDR range.

Required Parameters:
{
  "TransitGatewayRouteTableId": "The ID of the route table.",
  "S3Bucket": "The name of the S3 bucket."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    attachment.transit-gateway-attachment-id - The id of the transit gateway attachment.    attachment.resource-id - The resource id of the transit gateway attachment.    route-search.exact-match - The exact match of the specified filter.    route-search.longest-prefix-match - The longest prefix that matches the route.    route-search.subnet-of-match - The routes with a subnet that match the specified CIDR filter.    route-search.supernet-of-match - The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.    state - The state of the attachment (available | deleted | deleting | failed | modifying | pendingAcceptance | pending | rollingBack | rejected | rejecting).    transit-gateway-route-destination-cidr-block - The CIDR range.    type - The type of route (active | blackhole).  "
}

"""

ExportTransitGatewayRoutes(args) = ec2("ExportTransitGatewayRoutes", args)
"""
    CreateVpc

Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). For more information about how large to make your VPC, see Your VPC and Subnets in the Amazon Virtual Private Cloud User Guide. You can optionally request an IPv6 CIDR block for the VPC. You can request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6 addresses, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses (BYOIP). By default, each instance you launch in the VPC has the default DHCP options, which include only a default DNS server that we provide (AmazonProvidedDNS). For more information, see DHCP Options Sets in the Amazon Virtual Private Cloud User Guide. You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see Dedicated Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "CidrBlock": "The IPv4 network range for the VPC, in CIDR notation. For example, 10.0.0.0/16."
}


Optional Parameters:
{
  "Ipv6Pool": "The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.",
  "InstanceTenancy": "The tenancy options for instances launched into the VPC. For default, instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For dedicated, instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of dedicated or host into a dedicated tenancy VPC.   Important: The host value cannot be used with this parameter. Use the default or dedicated values only. Default: default ",
  "AmazonProvidedIpv6CidrBlock": "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Ipv6CidrBlockNetworkBorderGroup": "The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the address to this location.  You must set AmazonProvidedIpv6CidrBlock to true to use this parameter.",
  "Ipv6CidrBlock": "The IPv6 CIDR block from the IPv6 address pool. You must also specify Ipv6Pool in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter."
}

"""

CreateVpc(args) = ec2("CreateVpc", args)
"""
    DeleteSnapshot

Deletes the specified snapshot. When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume. You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot. For more information, see Deleting an Amazon EBS Snapshot in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SnapshotId": "The ID of the EBS snapshot."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteSnapshot(args) = ec2("DeleteSnapshot", args)
"""
    CreateDefaultSubnet

Creates a default subnet with a size /20 IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see Creating a Default Subnet in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "AvailabilityZone": "The Availability Zone in which to create the default subnet."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateDefaultSubnet(args) = ec2("CreateDefaultSubnet", args)
"""
    CreateNetworkAclEntry

Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules. We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules. After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one. For more information about network ACLs, see Network ACLs in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "Egress": "Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet).",
  "RuleNumber": "The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number. Constraints: Positive integer from 1 to 32766. The range 32767 to 65535 is reserved for internal use.",
  "NetworkAclId": "The ID of the network ACL.",
  "RuleAction": "Indicates whether to allow or deny the traffic that matches the rule.",
  "Protocol": "The protocol number. A value of \"-1\" means all protocols. If you specify \"-1\" or a protocol number other than \"6\" (TCP), \"17\" (UDP), or \"1\" (ICMP), traffic on all ports is allowed, regardless of any ports or ICMP types or codes that you specify. If you specify protocol \"58\" (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol \"58\" (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code."
}


Optional Parameters:
{
  "IcmpTypeCode": "ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR block.",
  "CidrBlock": "The IPv4 network range to allow or deny, in CIDR notation (for example 172.16.0.0/24).",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Ipv6CidrBlock": "The IPv6 network range to allow or deny, in CIDR notation (for example 2001:db8:1234:1a00::/64).",
  "PortRange": "TCP or UDP protocols: The range of ports the rule applies to. Required if specifying protocol 6 (TCP) or 17 (UDP)."
}

"""

CreateNetworkAclEntry(args) = ec2("CreateNetworkAclEntry", args)
"""
    GetTransitGatewayAttachmentPropagations

Lists the route tables to which the specified resource attachment propagates routes.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    transit-gateway-route-table-id - The ID of the transit gateway route table.  "
}

"""

GetTransitGatewayAttachmentPropagations(args) = ec2("GetTransitGatewayAttachmentPropagations", args)
"""
    DescribePrincipalIdFormat

Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference.  By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings. The following resource types support longer IDs: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. ",
  "NextToken": "The token to request the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Resources": "The type of resource: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway "
}

"""
DescribePrincipalIdFormat() = ec2("DescribePrincipalIdFormat")
DescribePrincipalIdFormat(args) = ec2("DescribePrincipalIdFormat", args)

"""
    DescribeNetworkInterfaces

Describes one or more of your network interfaces.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results. You cannot specify this parameter and the network interface IDs parameter in the same request.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkInterfaceIds": "One or more network interface IDs. Default: Describes all your network interfaces.",
  "Filters": "One or more filters.    addresses.private-ip-address - The private IPv4 addresses associated with the network interface.    addresses.primary - Whether the private IPv4 address is the primary IP address associated with the network interface.     addresses.association.public-ip - The association ID returned when the network interface was associated with the Elastic IP address (IPv4).    addresses.association.owner-id - The owner ID of the addresses associated with the network interface.    association.association-id - The association ID returned when the network interface was associated with an IPv4 address.    association.allocation-id - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.    association.ip-owner-id - The owner of the Elastic IP address (IPv4) associated with the network interface.    association.public-ip - The address of the Elastic IP address (IPv4) bound to the network interface.    association.public-dns-name - The public DNS name for the network interface (IPv4).    attachment.attachment-id - The ID of the interface attachment.    attachment.attach-time - The time that the network interface was attached to an instance.    attachment.delete-on-termination - Indicates whether the attachment is deleted when an instance is terminated.    attachment.device-index - The device index to which the network interface is attached.    attachment.instance-id - The ID of the instance to which the network interface is attached.    attachment.instance-owner-id - The owner ID of the instance to which the network interface is attached.    attachment.nat-gateway-id - The ID of the NAT gateway to which the network interface is attached.    attachment.status - The status of the attachment (attaching | attached | detaching | detached).    availability-zone - The Availability Zone of the network interface.    description - The description of the network interface.    group-id - The ID of a security group associated with the network interface.    group-name - The name of a security group associated with the network interface.    ipv6-addresses.ipv6-address - An IPv6 address associated with the network interface.    mac-address - The MAC address of the network interface.    network-interface-id - The ID of the network interface.    owner-id - The AWS account ID of the network interface owner.    private-ip-address - The private IPv4 address or addresses of the network interface.    private-dns-name - The private DNS name of the network interface (IPv4).    requester-id - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).    requester-managed - Indicates whether the network interface is being managed by an AWS service (for example, AWS Management Console, Auto Scaling, and so on).    source-dest-check - Indicates whether the network interface performs source/destination checking. A value of true means checking is enabled, and false means checking is disabled. The value must be false for the network interface to perform network address translation (NAT) in your VPC.     status - The status of the network interface. If the network interface is not attached to an instance, the status is available; if a network interface is attached to an instance the status is in-use.    subnet-id - The ID of the subnet for the network interface.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC for the network interface.  "
}

"""
DescribeNetworkInterfaces() = ec2("DescribeNetworkInterfaces")
DescribeNetworkInterfaces(args) = ec2("DescribeNetworkInterfaces", args)

"""
    ModifyInstanceMetadataOptions

Modify the instance metadata parameters on a running or stopped instance. When you modify the parameters on a stopped instance, they are applied when the instance is started. When you modify the parameters on a running instance, the API responds with a state of “pending”. After the parameter modifications are successfully applied to the instance, the state of the modifications changes from “pending” to “applied” in subsequent describe-instances API calls. For more information, see Instance Metadata and User Data.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "HttpTokens": "The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is optional. If the state is optional, you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned. If the state is required, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.",
  "HttpPutResponseHopLimit": "The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained. Possible values: Integers from 1 to 64",
  "HttpEndpoint": "This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the existing state is maintained.  If you specify a value of disabled, you will not be able to access your instance metadata. ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyInstanceMetadataOptions(args) = ec2("ModifyInstanceMetadataOptions", args)
"""
    GetConsoleOutput

Gets the console output for the specified instance. For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. For Windows instances, the instance console output includes the last three system event log errors. By default, the console output returns buffered information that was posted shortly after an instance transition state (start, stop, reboot, or terminate). This information is available for at least one hour after the most recent post. Only the most recent 64 KB of console output is available. You can optionally retrieve the latest serial console output at any time during the instance lifecycle. This option is supported on instance types that use the Nitro hypervisor. For more information, see Instance Console Output in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Latest": "When enabled, retrieves the latest console output for the instance. Default: disabled (false)"
}

"""

GetConsoleOutput(args) = ec2("GetConsoleOutput", args)
"""
    SearchTransitGatewayMulticastGroups

Searches one or more transit gateway multicast groups and returns the group membership information.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    group-ip-address - The IP address of the transit gateway multicast group.    is-group-member - The resource is a group member. Valid values are true | false.    is-group-source - The resource is a group source. Valid values are true | false.    member-type - The member type. Valid values are igmp | static.    resource-id - The ID of the resource.    resource-type - The type of resource. Valid values are vpc | vpn | direct-connect-gateway | tgw-peering.    source-type - The source type. Valid values are igmp | static.    state - The state of the subnet association. Valid values are associated | associated | disassociated | disassociating.    subnet-id - The ID of the subnet.    transit-gateway-attachment-id - The id of the transit gateway attachment.  "
}

"""
SearchTransitGatewayMulticastGroups() = ec2("SearchTransitGatewayMulticastGroups")
SearchTransitGatewayMulticastGroups(args) = ec2("SearchTransitGatewayMulticastGroups", args)

"""
    DeleteTrafficMirrorFilter

Deletes the specified Traffic Mirror filter. You cannot delete a Traffic Mirror filter that is in use by a Traffic Mirror session.

Required Parameters:
{
  "TrafficMirrorFilterId": "The ID of the Traffic Mirror filter."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTrafficMirrorFilter(args) = ec2("DeleteTrafficMirrorFilter", args)
"""
    DescribeTransitGatewayMulticastDomains

Describes one or more transit gateway multicast domains.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    state - The state of the transit gateway multicast domain. Valid values are pending | available | deleting | deleted.    transit-gateway-id - The ID of the transit gateway.    transit-gateway-multicast-domain-id - The ID of the transit gateway multicast domain.  ",
  "TransitGatewayMulticastDomainIds": "The ID of the transit gateway multicast domain."
}

"""
DescribeTransitGatewayMulticastDomains() = ec2("DescribeTransitGatewayMulticastDomains")
DescribeTransitGatewayMulticastDomains(args) = ec2("DescribeTransitGatewayMulticastDomains", args)

"""
    ExportClientVpnClientConfiguration

Downloads the contents of the Client VPN endpoint configuration file for the specified Client VPN endpoint. The Client VPN endpoint configuration file includes the Client VPN endpoint and certificate information clients need to establish a connection with the Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ExportClientVpnClientConfiguration(args) = ec2("ExportClientVpnClientConfiguration", args)
"""
    DeleteNetworkInterface

Deletes the specified network interface. You must detach the network interface before you can delete it.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteNetworkInterface(args) = ec2("DeleteNetworkInterface", args)
"""
    CreatePlacementGroup

Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group.  A cluster placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A spread placement group places instances on distinct hardware. A partition placement group places groups of instances in different partitions, where instances in one partition do not share the same hardware with instances in another partition. For more information, see Placement Groups in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "Strategy": "The placement strategy.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "PartitionCount": "The number of partitions. Valid only when Strategy is set to partition.",
  "GroupName": "A name for the placement group. Must be unique within the scope of your account for the Region. Constraints: Up to 255 ASCII characters"
}

"""
CreatePlacementGroup() = ec2("CreatePlacementGroup")
CreatePlacementGroup(args) = ec2("CreatePlacementGroup", args)

"""
    ImportClientVpnClientCertificateRevocationList

Uploads a client certificate revocation list to the specified Client VPN endpoint. Uploading a client certificate revocation list overwrites the existing client certificate revocation list. Uploading a client certificate revocation list resets existing client connections.

Required Parameters:
{
  "CertificateRevocationList": "The client certificate revocation list file. For more information, see Generate a Client Certificate Revocation List in the AWS Client VPN Administrator Guide.",
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint to which the client certificate revocation list applies."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ImportClientVpnClientCertificateRevocationList(args) = ec2("ImportClientVpnClientCertificateRevocationList", args)
"""
    DescribeAccountAttributes

Describes attributes of your AWS account. The following are the supported account attributes:    supported-platforms: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.    default-vpc: The ID of the default VPC for your account, or none.    max-instances: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see On-Demand Instance Limits in the Amazon Elastic Compute Cloud User Guide.    vpc-max-security-groups-per-interface: The maximum number of security groups that you can assign to a network interface.    max-elastic-ips: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic.     vpc-max-elastic-ips: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.  

Required Parameters:
{}


Optional Parameters:
{
  "AttributeNames": "The account attribute names.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DescribeAccountAttributes() = ec2("DescribeAccountAttributes")
DescribeAccountAttributes(args) = ec2("DescribeAccountAttributes", args)

"""
    RequestSpotInstances

Creates a Spot Instance request. For more information, see Spot Instance Requests in the Amazon EC2 User Guide for Linux Instances.

Required Parameters:
{}


Optional Parameters:
{
  "BlockDurationMinutes": "The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360). The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates. You can't specify an Availability Zone group or a launch group if you specify a duration.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "SpotPrice": "The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.",
  "ValidFrom": "The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled. The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.",
  "LaunchGroup": "The instance launch group. Launch groups are Spot Instances that launch together and terminate together. Default: Instances are launched and terminated individually",
  "AvailabilityZoneGroup": "The user-specified name for a logical grouping of requests. When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active. If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group. Default: Instances are launched in any available Availability Zone.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency in the Amazon EC2 User Guide for Linux Instances.",
  "LaunchSpecification": "The launch specification.",
  "ValidUntil": "The end date of the request. If this is a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date is reached. The default end date is 7 days from the current date.",
  "InstanceInterruptionBehavior": "The behavior when a Spot Instance is interrupted. The default is terminate.",
  "Type": "The Spot Instance request type. Default: one-time ",
  "InstanceCount": "The maximum number of Spot Instances to launch. Default: 1"
}

"""
RequestSpotInstances() = ec2("RequestSpotInstances")
RequestSpotInstances(args) = ec2("RequestSpotInstances", args)

"""
    GetCoipPoolUsage

Describes the allocations from the specified customer-owned address pool.

Required Parameters:
{
  "PoolId": "The ID of the address pool."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters. The following are the possible values:    coip-address-usage.allocation-id       coip-address-usage.aws-account-id       coip-address-usage.aws-service       coip-address-usage.co-ip   "
}

"""

GetCoipPoolUsage(args) = ec2("GetCoipPoolUsage", args)
"""
    DeleteFleets

Deletes the specified EC2 Fleet. After you delete an EC2 Fleet, it launches no new instances. You must specify whether an EC2 Fleet should also terminate its instances. If you terminate the instances, the EC2 Fleet enters the deleted_terminating state. Otherwise, the EC2 Fleet enters the deleted_running state, and the instances continue to run until they are interrupted or you terminate them manually. 

Required Parameters:
{
  "TerminateInstances": "Indicates whether to terminate instances for an EC2 Fleet if it is deleted successfully.",
  "FleetIds": "The IDs of the EC2 Fleets."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteFleets(args) = ec2("DeleteFleets", args)
"""
    ModifyIdFormat

Modifies the ID format for the specified resource on a per-Region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created. This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | route-table | route-table-association | security-group | subnet | subnet-cidr-block-association | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway. This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see Resource IDs in the Amazon Elastic Compute Cloud User Guide. Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant Describe command for the resource type.

Required Parameters:
{
  "Resource": "The type of resource: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | route-table | route-table-association | security-group | subnet | subnet-cidr-block-association | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway. Alternatively, use the all-current option to include all resource types that are currently within their opt-in period for longer IDs.",
  "UseLongIds": "Indicate whether the resource should use longer IDs (17-character IDs)."
}


Optional Parameters:
{}

"""

ModifyIdFormat(args) = ec2("ModifyIdFormat", args)
"""
    AssociateDhcpOptions

Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC. After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance. For more information, see DHCP Options Sets in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "DhcpOptionsId": "The ID of the DHCP options set, or default to associate no DHCP options with the VPC.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AssociateDhcpOptions(args) = ec2("AssociateDhcpOptions", args)
"""
    DescribeRouteTables

Describes one or more of your route tables. Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations. For more information, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "RouteTableIds": "One or more route table IDs. Default: Describes all your route tables.",
  "Filters": "One or more filters.    association.route-table-association-id - The ID of an association ID for the route table.    association.route-table-id - The ID of the route table involved in the association.    association.subnet-id - The ID of the subnet involved in the association.    association.main - Indicates whether the route table is the main route table for the VPC (true | false). Route tables that do not have an association ID are not returned in the response.    owner-id - The ID of the AWS account that owns the route table.    route-table-id - The ID of the route table.    route.destination-cidr-block - The IPv4 CIDR range specified in a route in the table.    route.destination-ipv6-cidr-block - The IPv6 CIDR range specified in a route in the route table.    route.destination-prefix-list-id - The ID (prefix) of the AWS service specified in a route in the table.    route.egress-only-internet-gateway-id - The ID of an egress-only Internet gateway specified in a route in the route table.    route.gateway-id - The ID of a gateway specified in a route in the table.    route.instance-id - The ID of an instance specified in a route in the table.    route.nat-gateway-id - The ID of a NAT gateway.    route.transit-gateway-id - The ID of a transit gateway.    route.origin - Describes how the route was created. CreateRouteTable indicates that the route was automatically created when the route table was created; CreateRoute indicates that the route was manually added to the route table; EnableVgwRoutePropagation indicates that the route was propagated by route propagation.    route.state - The state of a route in the route table (active | blackhole). The blackhole state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, the specified NAT instance has been terminated, and so on).    route.vpc-peering-connection-id - The ID of a VPC peering connection specified in a route in the table.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    transit-gateway-id - The ID of a transit gateway.    vpc-id - The ID of the VPC for the route table.  "
}

"""
DescribeRouteTables() = ec2("DescribeRouteTables")
DescribeRouteTables(args) = ec2("DescribeRouteTables", args)

"""
    CreateSnapshots

Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3. Volumes are chosen by specifying an instance. Any attached volumes will produce one snapshot each that is crash-consistent across the instance. Boot volumes can be excluded by changing the parameters. 

Required Parameters:
{
  "InstanceSpecification": "The instance to specify which volumes should be included in the snapshots."
}


Optional Parameters:
{
  "Description": " A description propagated to every snapshot specified by the instance.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "Tags to apply to every snapshot specified by the instance.",
  "CopyTagsFromSource": "Copies the tags from the specified volume to corresponding snapshot."
}

"""

CreateSnapshots(args) = ec2("CreateSnapshots", args)
"""
    DeleteVpnConnection

Deletes the specified VPN connection. If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.

Required Parameters:
{
  "VpnConnectionId": "The ID of the VPN connection."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpnConnection(args) = ec2("DeleteVpnConnection", args)
"""
    DescribeClientVpnConnections

Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    connection-id - The ID of the connection.    username - For Active Directory client authentication, the user name of the client who established the client connection.  "
}

"""

DescribeClientVpnConnections(args) = ec2("DescribeClientVpnConnections", args)
"""
    CreateFlowLogs

Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC.  Flow log data for a monitored network interface is recorded as flow log records, which are log events consisting of fields that describe the traffic flow. For more information, see Flow Log Records in the Amazon Virtual Private Cloud User Guide. When publishing to CloudWatch Logs, flow log records are published to a log group, and each network interface has a unique log stream in the log group. When publishing to Amazon S3, flow log records for all of the monitored network interfaces are published to a single log file object that is stored in the specified bucket. For more information, see VPC Flow Logs in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "TrafficType": "The type of traffic to log. You can log traffic that the resource accepts or rejects, or all traffic.",
  "ResourceType": "The type of resource for which to create the flow log. For example, if you specified a VPC ID for the ResourceId property, specify VPC for this property.",
  "ResourceIds": "The ID of the subnet, network interface, or VPC for which you want to create a flow log. Constraints: Maximum of 1000 resources"
}


Optional Parameters:
{
  "DeliverLogsPermissionArn": "The ARN for the IAM role that permits Amazon EC2 to publish flow logs to a CloudWatch Logs log group in your account. If you specify LogDestinationType as s3, do not specify DeliverLogsPermissionArn or LogGroupName.",
  "LogGroupName": "The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs. If you specify LogDestinationType as s3, do not specify DeliverLogsPermissionArn or LogGroupName.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LogFormat": "The fields to include in the flow log record, in the order in which they should appear. For a list of available fields, see Flow Log Records. If you omit this parameter, the flow log is created using the default format. If you specify this parameter, you must specify at least one field. Specify the fields using the  {field-id} format, separated by spaces. For the AWS CLI, use single quotation marks (' ') to surround the parameter value. Only applicable to flow logs that are published to an Amazon S3 bucket.",
  "LogDestination": "Specifies the destination to which the flow log data is to be published. Flow log data can be published to a CloudWatch Logs log group or an Amazon S3 bucket. The value specified for this parameter depends on the value specified for LogDestinationType. If LogDestinationType is not specified or cloud-watch-logs, specify the Amazon Resource Name (ARN) of the CloudWatch Logs log group. For example, to publish to a log group called my-logs, specify arn:aws:logs:us-east-1:123456789012:log-group:my-logs. Alternatively, use LogGroupName instead. If LogDestinationType is s3, specify the ARN of the Amazon S3 bucket. You can also specify a subfolder in the bucket. To specify a subfolder in the bucket, use the following ARN format: bucket_ARN/subfolder_name/. For example, to specify a subfolder named my-logs in a bucket named my-bucket, use the following ARN: arn:aws:s3:::my-bucket/my-logs/. You cannot use AWSLogs as a subfolder name. This is a reserved term.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "MaxAggregationInterval": "The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. You can specify 60 seconds (1 minute) or 600 seconds (10 minutes). When a network interface is attached to a Nitro-based instance, the aggregation interval is always 60 seconds or less, regardless of the value that you specify. Default: 600",
  "LogDestinationType": "Specifies the type of destination to which the flow log data is to be published. Flow log data can be published to CloudWatch Logs or Amazon S3. To publish flow log data to CloudWatch Logs, specify cloud-watch-logs. To publish flow log data to Amazon S3, specify s3. If you specify LogDestinationType as s3, do not specify DeliverLogsPermissionArn or LogGroupName. Default: cloud-watch-logs "
}

"""

CreateFlowLogs(args) = ec2("CreateFlowLogs", args)
"""
    DeleteTrafficMirrorSession

Deletes the specified Traffic Mirror session.

Required Parameters:
{
  "TrafficMirrorSessionId": "The ID of the Traffic Mirror session."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTrafficMirrorSession(args) = ec2("DeleteTrafficMirrorSession", args)
"""
    RestoreAddressToClassic

Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.

Required Parameters:
{
  "PublicIp": "The Elastic IP address."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RestoreAddressToClassic(args) = ec2("RestoreAddressToClassic", args)
"""
    CreateLocalGatewayRouteTableVpcAssociation

Associates the specified VPC with the specified local gateway route table.

Required Parameters:
{
  "LocalGatewayRouteTableId": "The ID of the local gateway route table.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateLocalGatewayRouteTableVpcAssociation(args) = ec2("CreateLocalGatewayRouteTableVpcAssociation", args)
"""
    DisassociateIamInstanceProfile

Disassociates an IAM instance profile from a running or stopped instance. Use DescribeIamInstanceProfileAssociations to get the association ID.

Required Parameters:
{
  "AssociationId": "The ID of the IAM instance profile association."
}


Optional Parameters:
{}

"""

DisassociateIamInstanceProfile(args) = ec2("DisassociateIamInstanceProfile", args)
"""
    DescribeLaunchTemplates

Describes one or more launch templates.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 1 and 200.",
  "NextToken": "The token to request the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateNames": "One or more launch template names.",
  "Filters": "One or more filters.    create-time - The time the launch template was created.    launch-template-name - The name of the launch template.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  ",
  "LaunchTemplateIds": "One or more launch template IDs."
}

"""
DescribeLaunchTemplates() = ec2("DescribeLaunchTemplates")
DescribeLaunchTemplates(args) = ec2("DescribeLaunchTemplates", args)

"""
    DescribeCustomerGateways

Describes one or more of your VPN customer gateways. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "CustomerGatewayIds": "One or more customer gateway IDs. Default: Describes all your customer gateways.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    bgp-asn - The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).    customer-gateway-id - The ID of the customer gateway.    ip-address - The IP address of the customer gateway's Internet-routable external interface.    state - The state of the customer gateway (pending | available | deleting | deleted).    type - The type of customer gateway. Currently, the only supported type is ipsec.1.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeCustomerGateways() = ec2("DescribeCustomerGateways")
DescribeCustomerGateways(args) = ec2("DescribeCustomerGateways", args)

"""
    DeleteVpnConnectionRoute

Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR block associated with the local subnet of the customer network.",
  "VpnConnectionId": "The ID of the VPN connection."
}


Optional Parameters:
{}

"""

DeleteVpnConnectionRoute(args) = ec2("DeleteVpnConnectionRoute", args)
"""
    DescribePlacementGroups

Describes the specified placement groups or all of your placement groups. For more information, see Placement Groups in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupNames": "The names of the placement groups. Default: Describes all your placement groups, or only those otherwise specified.",
  "Filters": "The filters.    group-name - The name of the placement group.    state - The state of the placement group (pending | available | deleting | deleted).    strategy - The strategy of the placement group (cluster | spread | partition).  ",
  "GroupIds": "The IDs of the placement groups."
}

"""
DescribePlacementGroups() = ec2("DescribePlacementGroups")
DescribePlacementGroups(args) = ec2("DescribePlacementGroups", args)

"""
    DescribeTrafficMirrorSessions

Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TrafficMirrorSessionIds": "The ID of the Traffic Mirror session.",
  "Filters": "One or more filters. The possible values are:    description: The Traffic Mirror session description.    network-interface-id: The ID of the Traffic Mirror session network interface.    owner-id: The ID of the account that owns the Traffic Mirror session.    packet-length: The assigned number of packets to mirror.     session-number: The assigned session number.     traffic-mirror-filter-id: The ID of the Traffic Mirror filter.    traffic-mirror-session-id: The ID of the Traffic Mirror session.    traffic-mirror-target-id: The ID of the Traffic Mirror target.    virtual-network-id: The virtual network ID of the Traffic Mirror session.  "
}

"""
DescribeTrafficMirrorSessions() = ec2("DescribeTrafficMirrorSessions")
DescribeTrafficMirrorSessions(args) = ec2("DescribeTrafficMirrorSessions", args)

"""
    ModifyVpnTunnelOptions

Modifies the options for a VPN tunnel in an AWS Site-to-Site VPN connection. You can modify multiple options for a tunnel in a single request, but you can only modify one tunnel at a time. For more information, see Site-to-Site VPN Tunnel Options for Your Site-to-Site VPN Connection in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{
  "VpnConnectionId": "The ID of the AWS Site-to-Site VPN connection.",
  "VpnTunnelOutsideIpAddress": "The external IP address of the VPN tunnel.",
  "TunnelOptions": "The tunnel options to modify."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyVpnTunnelOptions(args) = ec2("ModifyVpnTunnelOptions", args)
"""
    CreateTransitGatewayPeeringAttachment

Requests a transit gateway peering attachment between the specified transit gateway (requester) and a peer transit gateway (accepter). The transit gateways must be in different Regions. The peer transit gateway can be in your account or a different AWS account.  After you create the peering attachment, the owner of the accepter transit gateway must accept the attachment request.

Required Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway.",
  "PeerTransitGatewayId": "The ID of the peer transit gateway with which to create the peering attachment.",
  "PeerAccountId": "The AWS account ID of the owner of the peer transit gateway.",
  "PeerRegion": "The Region where the peer transit gateway is located."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the transit gateway peering attachment."
}

"""

CreateTransitGatewayPeeringAttachment(args) = ec2("CreateTransitGatewayPeeringAttachment", args)
"""
    EnableVpcClassicLink

Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC route tables have existing routes for address ranges within the 10.0.0.0/8 IP address range, excluding local routes for VPCs in the 10.0.0.0/16 and 10.1.0.0/16 IP address ranges. For more information, see ClassicLink in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

EnableVpcClassicLink(args) = ec2("EnableVpcClassicLink", args)
"""
    CreateTransitGatewayVpcAttachment

Attaches the specified VPC to the specified transit gateway. If you attach a VPC with a CIDR range that overlaps the CIDR range of a VPC that is already attached, the new VPC CIDR range is not propagated to the default propagation route table. To send VPC traffic to an attached transit gateway, add a route to the VPC route table using CreateRoute.

Required Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway.",
  "SubnetIds": "The IDs of one or more subnets. You can specify only one subnet per Availability Zone. You must specify at least one subnet, but we recommend that you specify two subnets for better availability. The transit gateway uses one IP address from each specified subnet.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the VPC attachment.",
  "Options": "The VPC attachment options."
}

"""

CreateTransitGatewayVpcAttachment(args) = ec2("CreateTransitGatewayVpcAttachment", args)
"""
    ModifyClientVpnEndpoint

Modifies the specified Client VPN endpoint. You can only modify an endpoint's server certificate information, client connection logging information, DNS server, and description. Modifying the DNS server resets existing client connections.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint to modify."
}


Optional Parameters:
{
  "VpnPort": "The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: 443 | 1194  Default Value: 443 ",
  "Description": "A brief description of the Client VPN endpoint.",
  "ServerCertificateArn": "The ARN of the server certificate to be used. The server certificate must be provisioned in AWS Certificate Manager (ACM).",
  "ConnectionLogOptions": "Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:   Client connection requests   Client connection results (successful and unsuccessful)   Reasons for unsuccessful client connection requests   Client connection termination time  ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "DnsServers": "Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.",
  "SplitTunnel": "Indicates whether the VPN is split-tunnel. For information about split-tunnel VPN endpoints, see Split-Tunnel AWS Client VPN Endpoint in the AWS Client VPN Administrator Guide."
}

"""

ModifyClientVpnEndpoint(args) = ec2("ModifyClientVpnEndpoint", args)
"""
    ModifyVpcTenancy

Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to default only. You cannot change the instance tenancy attribute to dedicated. After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of default, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected. For more information, see Dedicated Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceTenancy": "The instance tenancy attribute for the VPC. ",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyVpcTenancy(args) = ec2("ModifyVpcTenancy", args)
"""
    DetachVolume

Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the busy state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first. When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance. For more information, see Detaching an Amazon EBS Volume in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "VolumeId": "The ID of the volume."
}


Optional Parameters:
{
  "Force": "Forces detachment if the previous detachment attempt did not occur cleanly (for example, logging into an instance, unmounting the volume, and detaching normally). This option can lead to data loss or a corrupted file system. Use this option only as a last resort to detach a volume from a failed instance. The instance won't have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures.",
  "InstanceId": "The ID of the instance.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Device": "The device name."
}

"""

DetachVolume(args) = ec2("DetachVolume", args)
"""
    DescribeVpcAttribute

Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.

Required Parameters:
{
  "VpcId": "The ID of the VPC.",
  "Attribute": "The VPC attribute."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeVpcAttribute(args) = ec2("DescribeVpcAttribute", args)
"""
    DisassociateTransitGatewayRouteTable

Disassociates a resource attachment from a transit gateway route table.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisassociateTransitGatewayRouteTable(args) = ec2("DisassociateTransitGatewayRouteTable", args)
"""
    DescribeElasticGpus

Describes the Elastic Graphics accelerator associated with your instances. For more information about Elastic Graphics, see Amazon Elastic Graphics.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 5 and 1000.",
  "NextToken": "The token to request the next page of results.",
  "ElasticGpuIds": "The Elastic Graphics accelerator IDs.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    availability-zone - The Availability Zone in which the Elastic Graphics accelerator resides.    elastic-gpu-health - The status of the Elastic Graphics accelerator (OK | IMPAIRED).    elastic-gpu-state - The state of the Elastic Graphics accelerator (ATTACHED).    elastic-gpu-type - The type of Elastic Graphics accelerator; for example, eg1.medium.    instance-id - The ID of the instance to which the Elastic Graphics accelerator is associated.  "
}

"""
DescribeElasticGpus() = ec2("DescribeElasticGpus")
DescribeElasticGpus(args) = ec2("DescribeElasticGpus", args)

"""
    DescribeInstanceCreditSpecifications

Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are standard and unlimited. If you do not specify an instance ID, Amazon EC2 returns burstable performance instances with the unlimited credit option, as well as instances that were previously configured as T2, T3, and T3a with the unlimited credit option. For example, if you resize a T2 instance, while it is configured as unlimited, to an M4 instance, Amazon EC2 returns the M4 instance. If you specify one or more instance IDs, Amazon EC2 returns the credit option (standard or unlimited) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a burstable performance instance, an error is returned. Recently terminated instances might appear in the returned results. This interval is usually less than one hour. If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally. For more information, see Burstable Performance Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "InstanceIds": "The instance IDs. Default: Describes all your instances. Constraints: Maximum 1000 explicitly specified instance IDs.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    instance-id - The ID of the instance.  "
}

"""
DescribeInstanceCreditSpecifications() = ec2("DescribeInstanceCreditSpecifications")
DescribeInstanceCreditSpecifications(args) = ec2("DescribeInstanceCreditSpecifications", args)

"""
    CreateVpcEndpointConnectionNotification

Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see Create a Topic in the Amazon Simple Notification Service Developer Guide. You can create a connection notification for interface endpoints only.

Required Parameters:
{
  "ConnectionNotificationArn": "The ARN of the SNS topic for the notifications.",
  "ConnectionEvents": "One or more endpoint events for which to receive notifications. Valid values are Accept, Connect, Delete, and Reject."
}


Optional Parameters:
{
  "ServiceId": "The ID of the endpoint service.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "VpcEndpointId": "The ID of the endpoint.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

CreateVpcEndpointConnectionNotification(args) = ec2("CreateVpcEndpointConnectionNotification", args)
"""
    DeleteTransitGatewayPeeringAttachment

Deletes a transit gateway peering attachment.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the transit gateway peering attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGatewayPeeringAttachment(args) = ec2("DeleteTransitGatewayPeeringAttachment", args)
"""
    BundleInstance

Bundles an Amazon instance store-backed Windows instance. During bundling, only the root device volume (C: ) is bundled. Data on other instance store volumes is not preserved.  This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS. 

Required Parameters:
{
  "InstanceId": "The ID of the instance to bundle. Type: String Default: None Required: Yes",
  "Storage": "The bucket in which to store the AMI. You can specify a bucket that you already own or a new bucket that Amazon EC2 creates on your behalf. If you specify a bucket that belongs to someone else, Amazon EC2 returns an error."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

BundleInstance(args) = ec2("BundleInstance", args)
"""
    DescribeVolumes

Describes the specified EBS volumes or all of your EBS volumes. If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The MaxResults parameter sets the maximum number of results returned in a single page. If the list of results exceeds your MaxResults value, then that number of results is returned along with a NextToken value that can be passed to a subsequent DescribeVolumes request to retrieve the remaining results. For more information about EBS volumes, see Amazon EBS Volumes in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of volume results returned by DescribeVolumes in paginated output. When this parameter is used, DescribeVolumes only returns MaxResults results in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another DescribeVolumes request with the returned NextToken value. This value can be between 5 and 500; if MaxResults is given a value larger than 500, only 500 results are returned. If this parameter is not used, then DescribeVolumes returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.",
  "NextToken": "The NextToken value returned from a previous paginated DescribeVolumes request where MaxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the NextToken value. This value is null when there are no more results to return.",
  "VolumeIds": "The volume IDs.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    attachment.attach-time - The time stamp when the attachment initiated.    attachment.delete-on-termination - Whether the volume is deleted on instance termination.    attachment.device - The device name specified in the block device mapping (for example, /dev/sda1).    attachment.instance-id - The ID of the instance the volume is attached to.    attachment.status - The attachment state (attaching | attached | detaching).    availability-zone - The Availability Zone in which the volume was created.    create-time - The time stamp when the volume was created.    encrypted - Indicates whether the volume is encrypted (true | false)    fast-restored - Indicates whether the volume was created from a snapshot that is enabled for fast snapshot restore (true | false).    size - The size of the volume, in GiB.    snapshot-id - The snapshot from which the volume was created.    status - The status of the volume (creating | available | in-use | deleting | deleted | error).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    volume-id - The volume ID.    volume-type - The Amazon EBS volume type. This can be gp2 for General Purpose SSD, io1 for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1 for Cold HDD, or standard for Magnetic volumes.  "
}

"""
DescribeVolumes() = ec2("DescribeVolumes")
DescribeVolumes(args) = ec2("DescribeVolumes", args)

"""
    DescribeByoipCidrs

Describes the IP address ranges that were specified in calls to ProvisionByoipCidr. To describe the address pools that were created when you provisioned the address ranges, use DescribePublicIpv4Pools or DescribeIpv6Pools.

Required Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value."
}


Optional Parameters:
{
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeByoipCidrs(args) = ec2("DescribeByoipCidrs", args)
"""
    CopyFpgaImage

Copies the specified Amazon FPGA Image (AFI) to the current Region.

Required Parameters:
{
  "SourceFpgaImageId": "The ID of the source AFI.",
  "SourceRegion": "The Region that contains the source AFI."
}


Optional Parameters:
{
  "Description": "The description for the new AFI.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency.",
  "Name": "The name for the new AFI. The default is the name of the source AFI."
}

"""

CopyFpgaImage(args) = ec2("CopyFpgaImage", args)
"""
    DescribeTransitGatewayAttachments

Describes one or more attachments between resources and transit gateways. By default, all attachments are described. Alternatively, you can filter the results by attachment ID, attachment state, resource ID, or resource owner.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayAttachmentIds": "The IDs of the attachments.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    association.state - The state of the association (associating | associated | disassociating).    association.transit-gateway-route-table-id - The ID of the route table for the transit gateway.    resource-id - The ID of the resource.    resource-owner-id - The ID of the AWS account that owns the resource.    resource-type - The resource type (vpc | vpn).    state - The state of the attachment (available | deleted | deleting | failed | modifying | pendingAcceptance | pending | rollingBack | rejected | rejecting).    transit-gateway-attachment-id - The ID of the attachment.    transit-gateway-id - The ID of the transit gateway.    transit-gateway-owner-id - The ID of the AWS account that owns the transit gateway.  "
}

"""
DescribeTransitGatewayAttachments() = ec2("DescribeTransitGatewayAttachments")
DescribeTransitGatewayAttachments(args) = ec2("DescribeTransitGatewayAttachments", args)

"""
    DeleteTransitGatewayRoute

Deletes the specified route from the specified transit gateway route table.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR range for the route. This must match the CIDR for the route exactly.",
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGatewayRoute(args) = ec2("DeleteTransitGatewayRoute", args)
"""
    AssociateClientVpnTargetNetwork

Associates a target network with a Client VPN endpoint. A target network is a subnet in a VPC. You can associate multiple subnets from the same VPC with a Client VPN endpoint. You can associate only one subnet in each Availability Zone. We recommend that you associate at least two subnets to provide Availability Zone redundancy.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint.",
  "SubnetId": "The ID of the subnet to associate with the Client VPN endpoint."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

AssociateClientVpnTargetNetwork(args) = ec2("AssociateClientVpnTargetNetwork", args)
"""
    DescribeConversionTasks

Describes the specified conversion tasks or all your conversion tasks. For more information, see the VM Import/Export User Guide. For information about the import manifest referenced by this API action, see VM Import Manifest.

Required Parameters:
{}


Optional Parameters:
{
  "ConversionTaskIds": "The conversion task IDs.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DescribeConversionTasks() = ec2("DescribeConversionTasks")
DescribeConversionTasks(args) = ec2("DescribeConversionTasks", args)

"""
    DescribeSpotFleetRequests

Describes your Spot Fleet requests. Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "SpotFleetRequestIds": "The IDs of the Spot Fleet requests."
}

"""
DescribeSpotFleetRequests() = ec2("DescribeSpotFleetRequests")
DescribeSpotFleetRequests(args) = ec2("DescribeSpotFleetRequests", args)

"""
    DescribeVolumesModifications

Reports the current modification status of EBS volumes. Current-generation EBS volumes support modification of attributes including type, size, and (for io1 volumes) IOPS provisioning while either attached to or detached from an instance. Following an action from the API or the console to modify a volume, the status of the modification may be modifying, optimizing, completed, or failed. If a volume has never been modified, then certain elements of the returned VolumeModification objects are null.   You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the Amazon CloudWatch Events User Guide. For more information, see Monitoring Volume Modifications" in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results (up to a limit of 500) to be returned in a paginated request.",
  "NextToken": "The nextToken value returned by a previous paginated request.",
  "VolumeIds": "The IDs of the volumes for which in-progress modifications will be described.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters. Supported filters: volume-id, modification-state, target-size, target-iops, target-volume-type, original-size, original-iops, original-volume-type, start-time. "
}

"""
DescribeVolumesModifications() = ec2("DescribeVolumesModifications")
DescribeVolumesModifications(args) = ec2("DescribeVolumesModifications", args)

"""
    ModifyVpcEndpoint

Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface or gateway). For more information, see VPC Endpoints in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "VpcEndpointId": "The ID of the endpoint."
}


Optional Parameters:
{
  "ResetPolicy": "(Gateway endpoint) Specify true to reset the policy document to the default policy. The default policy allows full access to the service.",
  "RemoveSecurityGroupIds": "(Interface endpoint) One or more security group IDs to disassociate from the network interface.",
  "RemoveRouteTableIds": "(Gateway endpoint) One or more route table IDs to disassociate from the endpoint.",
  "AddRouteTableIds": "(Gateway endpoint) One or more route tables IDs to associate with the endpoint.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "PrivateDnsEnabled": "(Interface endpoint) Indicates whether a private hosted zone is associated with the VPC.",
  "AddSecurityGroupIds": "(Interface endpoint) One or more security group IDs to associate with the network interface.",
  "AddSubnetIds": "(Interface endpoint) One or more subnet IDs in which to serve the endpoint.",
  "PolicyDocument": "A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format.",
  "RemoveSubnetIds": "(Interface endpoint) One or more subnets IDs in which to remove the endpoint."
}

"""

ModifyVpcEndpoint(args) = ec2("ModifyVpcEndpoint", args)
"""
    CreateLocalGatewayRoute

Creates a static route for the specified local gateway route table.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR range used for destination matches. Routing decisions are based on the most specific match.",
  "LocalGatewayRouteTableId": "The ID of the local gateway route table.",
  "LocalGatewayVirtualInterfaceGroupId": "The ID of the virtual interface group."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateLocalGatewayRoute(args) = ec2("CreateLocalGatewayRoute", args)
"""
    RunScheduledInstances

Launches the specified Scheduled Instances. Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using PurchaseScheduledInstances. You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see Scheduled Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "ScheduledInstanceId": "The Scheduled Instance ID.",
  "LaunchSpecification": "The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "InstanceCount": "The number of instances. Default: 1",
  "ClientToken": "Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see Ensuring Idempotency."
}

"""

RunScheduledInstances(args) = ec2("RunScheduledInstances", args)
"""
    DescribeTransitGateways

Describes one or more transit gateways. By default, all transit gateways are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    options.propagation-default-route-table-id - The ID of the default propagation route table.    options.amazon-side-asn - The private ASN for the Amazon side of a BGP session.    options.association-default-route-table-id - The ID of the default association route table.    options.auto-accept-shared-attachments - Indicates whether there is automatic acceptance of attachment requests (enable | disable).    options.default-route-table-association - Indicates whether resource attachments are automatically associated with the default association route table (enable | disable).    options.default-route-table-propagation - Indicates whether resource attachments automatically propagate routes to the default propagation route table (enable | disable).    options.dns-support - Indicates whether DNS support is enabled (enable | disable).    options.vpn-ecmp-support - Indicates whether Equal Cost Multipath Protocol support is enabled (enable | disable).    owner-id - The ID of the AWS account that owns the transit gateway.    state - The state of the attachment (available | deleted | deleting | failed | modifying | pendingAcceptance | pending | rollingBack | rejected | rejecting).    transit-gateway-id - The ID of the transit gateway.  ",
  "TransitGatewayIds": "The IDs of the transit gateways."
}

"""
DescribeTransitGateways() = ec2("DescribeTransitGateways")
DescribeTransitGateways(args) = ec2("DescribeTransitGateways", args)

"""
    CreateVpcEndpointServiceConfiguration

Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect. Service consumers can create an interface VPC endpoint to connect to your service. To create an endpoint service configuration, you must first create a Network Load Balancer for your service. For more information, see VPC Endpoint Services in the Amazon Virtual Private Cloud User Guide.  If you set the private DNS name, you must prove that you own the private DNS domain name. For more information, see VPC Endpoint Service Private DNS Name Verification in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "NetworkLoadBalancerArns": "The Amazon Resource Names (ARNs) of one or more Network Load Balancers for your service."
}


Optional Parameters:
{
  "AcceptanceRequired": "Indicates whether requests from service consumers to create an endpoint to your service must be accepted. To accept a request, use AcceptVpcEndpointConnections.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to associate with the service.",
  "PrivateDnsName": "The private DNS name to assign to the VPC endpoint service.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

CreateVpcEndpointServiceConfiguration(args) = ec2("CreateVpcEndpointServiceConfiguration", args)
"""
    DescribeFlowLogs

Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filter": "One or more filters.    deliver-log-status - The status of the logs delivery (SUCCESS | FAILED).    log-destination-type - The type of destination to which the flow log publishes data. Possible destination types include cloud-watch-logs and S3.    flow-log-id - The ID of the flow log.    log-group-name - The name of the log group.    resource-id - The ID of the VPC, subnet, or network interface.    traffic-type - The type of traffic (ACCEPT | REJECT | ALL).  ",
  "FlowLogIds": "One or more flow log IDs. Constraint: Maximum of 1000 flow log IDs."
}

"""
DescribeFlowLogs() = ec2("DescribeFlowLogs")
DescribeFlowLogs(args) = ec2("DescribeFlowLogs", args)

"""
    CreateFleet

Launches an EC2 Fleet. You can create a single EC2 Fleet that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet. For more information, see Launching an EC2 Fleet in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "LaunchTemplateConfigs": "The configuration for the EC2 Fleet.",
  "TargetCapacitySpecification": "The number of units to request."
}


Optional Parameters:
{
  "OnDemandOptions": "Describes the configuration of On-Demand Instances in an EC2 Fleet.",
  "TerminateInstancesWithExpiration": "Indicates whether running instances should be terminated when the EC2 Fleet expires.",
  "ReplaceUnhealthyInstances": "Indicates whether EC2 Fleet should replace unhealthy instances.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ExcessCapacityTerminationPolicy": "Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.",
  "ValidFrom": "The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency.",
  "ValidUntil": "The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.",
  "TagSpecifications": "The key-value pair for tagging the EC2 Fleet request on creation. The value for ResourceType must be fleet, otherwise the fleet request fails. To tag instances at launch, specify the tags in the launch template. For information about tagging after launch, see Tagging Your Resources. ",
  "SpotOptions": "Describes the configuration of Spot Instances in an EC2 Fleet.",
  "Type": "The type of the request. By default, the EC2 Fleet places an asynchronous request for your desired capacity, and maintains it by replenishing interrupted Spot Instances (maintain). A value of instant places a synchronous one-time request, and returns errors for any instances that could not be launched. A value of request places an asynchronous one-time request without maintaining capacity or submitting requests in alternative capacity pools if capacity is unavailable. For more information, see EC2 Fleet Request Types in the Amazon Elastic Compute Cloud User Guide."
}

"""

CreateFleet(args) = ec2("CreateFleet", args)
"""
    RequestSpotFleet

Creates a Spot Fleet request. The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity. You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet. By default, the Spot Fleet requests Spot Instances in the Spot Instance pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload. Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet. You can specify tags for the Spot Fleet and Spot Instances. You cannot tag other resource types in a Spot Fleet request because only the spot-fleet-request and instance resource types are supported. For more information, see Spot Fleet Requests in the Amazon EC2 User Guide for Linux Instances.

Required Parameters:
{
  "SpotFleetRequestConfig": "The configuration for the Spot Fleet request."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RequestSpotFleet(args) = ec2("RequestSpotFleet", args)
"""
    DeleteTransitGateway

Deletes the specified transit gateway.

Required Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGateway(args) = ec2("DeleteTransitGateway", args)
"""
    CreateVpnConnection

Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The supported connection type is ipsec.1. The response includes information that you need to give to your network administrator to configure your customer gateway.  We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.  If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call. This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{
  "Type": "The type of VPN connection (ipsec.1).",
  "CustomerGatewayId": "The ID of the customer gateway."
}


Optional Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway. If you specify a transit gateway, you cannot specify a virtual private gateway.",
  "VpnGatewayId": "The ID of the virtual private gateway. If you specify a virtual private gateway, you cannot specify a transit gateway.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Options": "The options for the VPN connection."
}

"""

CreateVpnConnection(args) = ec2("CreateVpnConnection", args)
"""
    CancelReservedInstancesListing

Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace. For more information, see Reserved Instance Marketplace in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "ReservedInstancesListingId": "The ID of the Reserved Instance listing."
}


Optional Parameters:
{}

"""

CancelReservedInstancesListing(args) = ec2("CancelReservedInstancesListing", args)
"""
    ImportVolume

Creates an import volume task using metadata from the specified disk image.For more information, see Importing Disks to Amazon EBS. For information about the import manifest referenced by this API action, see VM Import Manifest.

Required Parameters:
{
  "AvailabilityZone": "The Availability Zone for the resulting EBS volume.",
  "Image": "The disk image.",
  "Volume": "The volume size."
}


Optional Parameters:
{
  "Description": "A description of the volume.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ImportVolume(args) = ec2("ImportVolume", args)
"""
    GetHostReservationPurchasePreview

Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This is a preview of the PurchaseHostReservation action and does not result in the offering being purchased.

Required Parameters:
{
  "HostIdSet": "The IDs of the Dedicated Hosts with which the reservation is associated.",
  "OfferingId": "The offering ID of the reservation."
}


Optional Parameters:
{}

"""

GetHostReservationPurchasePreview(args) = ec2("GetHostReservationPurchasePreview", args)
"""
    DisableTransitGatewayRouteTablePropagation

Disables the specified resource attachment from propagating routes to the specified propagation route table.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "TransitGatewayRouteTableId": "The ID of the propagation route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisableTransitGatewayRouteTablePropagation(args) = ec2("DisableTransitGatewayRouteTablePropagation", args)
"""
    ModifyTrafficMirrorFilterRule

Modifies the specified Traffic Mirror rule.  DestinationCidrBlock and SourceCidrBlock must both be an IPv4 range or an IPv6 range.

Required Parameters:
{
  "TrafficMirrorFilterRuleId": "The ID of the Traffic Mirror rule."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "RuleNumber": "The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.",
  "SourcePortRange": "The port range to assign to the Traffic Mirror rule.",
  "Protocol": "The protocol, for example TCP, to assign to the Traffic Mirror rule.",
  "SourceCidrBlock": "The source CIDR block to assign to the Traffic Mirror rule.",
  "RemoveFields": "The properties that you want to remove from the Traffic Mirror filter rule. When you remove a property from a Traffic Mirror filter rule, the property is set to the default.",
  "DestinationCidrBlock": "The destination CIDR block to assign to the Traffic Mirror rule.",
  "DestinationPortRange": "The destination ports that are associated with the Traffic Mirror rule.",
  "Description": "The description to assign to the Traffic Mirror rule.",
  "RuleAction": "The action to assign to the rule.",
  "TrafficDirection": "The type of traffic (ingress | egress) to assign to the rule."
}

"""

ModifyTrafficMirrorFilterRule(args) = ec2("ModifyTrafficMirrorFilterRule", args)
"""
    DeprovisionByoipCidr

Releases the specified address range that you provisioned for use with your AWS resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. Before you can release an address range, you must stop advertising it using WithdrawByoipCidr and you must not have any IP addresses allocated from its address range.

Required Parameters:
{
  "Cidr": "The address range, in CIDR notation. The prefix must be the same prefix that you specified when you provisioned the address range."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeprovisionByoipCidr(args) = ec2("DeprovisionByoipCidr", args)
"""
    CreateVpcEndpoint

Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace Partner, or another AWS account. For more information, see VPC Endpoints in the Amazon Virtual Private Cloud User Guide. A gateway endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint, which will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint. An interface endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface. Use DescribeVpcEndpointServices to get a list of supported services.

Required Parameters:
{
  "ServiceName": "The service name. To get a list of available services, use the DescribeVpcEndpointServices request, or get the name from the service provider.",
  "VpcId": "The ID of the VPC in which the endpoint will be used."
}


Optional Parameters:
{
  "SecurityGroupIds": "(Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.",
  "SubnetIds": "(Interface endpoint) The ID of one or more subnets in which to create an endpoint network interface.",
  "PrivateDnsEnabled": "(Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, kinesis.us-east-1.amazonaws.com), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service. To use a private hosted zone, you must set the following VPC attributes to true: enableDnsHostnames and enableDnsSupport. Use ModifyVpcAttribute to set the VPC attributes. Default: true ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to associate with the endpoint.",
  "VpcEndpointType": "The type of endpoint. Default: Gateway",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "RouteTableIds": "(Gateway endpoint) One or more route table IDs.",
  "PolicyDocument": "A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service."
}

"""

CreateVpcEndpoint(args) = ec2("CreateVpcEndpoint", args)
"""
    CreateNatGateway

Creates a NAT gateway in the specified public subnet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. Internet-bound traffic from a private subnet can be routed to the NAT gateway, therefore enabling instances in the private subnet to connect to the internet. For more information, see NAT Gateways in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "AllocationId": "The allocation ID of an Elastic IP address to associate with the NAT gateway. If the Elastic IP address is associated with another resource, you must first disassociate it.",
  "SubnetId": "The subnet in which to create the NAT gateway."
}


Optional Parameters:
{
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency. Constraint: Maximum 64 ASCII characters."
}

"""

CreateNatGateway(args) = ec2("CreateNatGateway", args)
"""
    ModifyLaunchTemplate

Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateId": "The ID of the launch template. You must specify either the launch template ID or launch template name in the request.",
  "DefaultVersion": "The version number of the launch template to set as the default version.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency. Constraint: Maximum 128 ASCII characters.",
  "LaunchTemplateName": "The name of the launch template. You must specify either the launch template ID or launch template name in the request."
}

"""
ModifyLaunchTemplate() = ec2("ModifyLaunchTemplate")
ModifyLaunchTemplate(args) = ec2("ModifyLaunchTemplate", args)

"""
    AssociateRouteTable

Associates a subnet in your VPC or an internet gateway or virtual private gateway attached to your VPC with a route table in your VPC. This association causes traffic from the subnet or gateway to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table later. A route table can be associated with multiple subnets. For more information, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "RouteTableId": "The ID of the route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "SubnetId": "The ID of the subnet.",
  "GatewayId": "The ID of the internet gateway or virtual private gateway."
}

"""

AssociateRouteTable(args) = ec2("AssociateRouteTable", args)
"""
    CancelCapacityReservation

Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to cancelled. Instances running in the reserved capacity continue running until you stop them. Stopped instances that target the Capacity Reservation can no longer launch. Modify these instances to either target a different Capacity Reservation, launch On-Demand Instance capacity, or run in any open Capacity Reservation that has matching attributes and sufficient capacity.

Required Parameters:
{
  "CapacityReservationId": "The ID of the Capacity Reservation to be cancelled."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CancelCapacityReservation(args) = ec2("CancelCapacityReservation", args)
"""
    ModifyVpcEndpointServiceConfiguration

Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint. If you set or modify the private DNS name, you must prove that you own the private DNS domain name. For more information, see VPC Endpoint Service Private DNS Name Verification in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "ServiceId": "The ID of the service."
}


Optional Parameters:
{
  "AcceptanceRequired": "Indicates whether requests to create an endpoint to your service must be accepted.",
  "AddNetworkLoadBalancerArns": "The Amazon Resource Names (ARNs) of Network Load Balancers to add to your service configuration.",
  "RemovePrivateDnsName": "Removes the private DNS name of the endpoint service.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "RemoveNetworkLoadBalancerArns": "The Amazon Resource Names (ARNs) of Network Load Balancers to remove from your service configuration.",
  "PrivateDnsName": "The private DNS name to assign to the endpoint service."
}

"""

ModifyVpcEndpointServiceConfiguration(args) = ec2("ModifyVpcEndpointServiceConfiguration", args)
"""
    DisassociateTransitGatewayMulticastDomain

Disassociates the specified subnets from the transit gateway multicast domain. 

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "SubnetIds": "The IDs of the subnets;",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DisassociateTransitGatewayMulticastDomain() = ec2("DisassociateTransitGatewayMulticastDomain")
DisassociateTransitGatewayMulticastDomain(args) = ec2("DisassociateTransitGatewayMulticastDomain", args)

"""
    ModifyVpcPeeringConnectionOptions

Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:   Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.   Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.   Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.   If the peered VPCs are in the same AWS account, you can enable DNS resolution for queries from the local VPC. This ensures that queries from the local VPC resolve to private IP addresses in the peer VPC. This option is not available if the peered VPCs are in different AWS accounts or different Regions. For peered VPCs in different AWS accounts, each AWS account owner must initiate a separate request to modify the peering connection options. For inter-region peering connections, you must use the Region for the requester VPC to modify the requester VPC peering options and the Region for the accepter VPC to modify the accepter VPC peering options. To verify which VPCs are the accepter and the requester for a VPC peering connection, use the DescribeVpcPeeringConnections command.

Required Parameters:
{
  "VpcPeeringConnectionId": "The ID of the VPC peering connection."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "RequesterPeeringConnectionOptions": "The VPC peering connection options for the requester VPC.",
  "AccepterPeeringConnectionOptions": "The VPC peering connection options for the accepter VPC."
}

"""

ModifyVpcPeeringConnectionOptions(args) = ec2("ModifyVpcPeeringConnectionOptions", args)
"""
    ImportImage

Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see Importing a VM as an Image Using VM Import/Export in the VM Import/Export User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "RoleName": "The name of the role to use when not using the default role, 'vmimport'.",
  "Architecture": "The architecture of the virtual machine. Valid values: i386 | x86_64 | arm64 ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientData": "The client-specific data.",
  "ClientToken": "The token to enable idempotency for VM import requests.",
  "Platform": "The operating system of the virtual machine. Valid values: Windows | Linux ",
  "DiskContainers": "Information about the disk containers.",
  "Hypervisor": "The target hypervisor platform. Valid values: xen ",
  "Encrypted": "Specifies whether the destination AMI of the imported image should be encrypted. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using KmsKeyId. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.",
  "Description": "A description string for the import image task.",
  "LicenseType": "The license type to be used for the Amazon Machine Image (AMI) after importing. By default, we detect the source-system operating system (OS) and apply the appropriate license. Specify AWS to replace the source-system license with an AWS license, if appropriate. Specify BYOL to retain the source-system license, if appropriate. To use BYOL, you must have existing licenses with rights to use these licenses in a third party cloud, such as AWS. For more information, see Prerequisites in the VM Import/Export User Guide.",
  "KmsKeyId": "An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted AMI. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.  The CMK identifier may be provided in any of the following formats:    Key ID   Key alias. The alias ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the alias namespace, and then the CMK alias. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.   ARN using key ID. The ID ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the key namespace, and then the CMK ID. For example, arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.   ARN using key alias. The alias ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the alias namespace, and then the CMK alias. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.    AWS parses KmsKeyId asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.  The specified CMK must exist in the Region that the AMI is being copied to. Amazon EBS does not support asymmetric CMKs.",
  "LicenseSpecifications": "The ARNs of the license configurations."
}

"""
ImportImage() = ec2("ImportImage")
ImportImage(args) = ec2("ImportImage", args)

"""
    ModifyVpnConnection

Modifies the target gateway of an AWS Site-to-Site VPN connection. The following migration options are available:   An existing virtual private gateway to a new virtual private gateway   An existing virtual private gateway to a transit gateway   An existing transit gateway to a new transit gateway   An existing transit gateway to a virtual private gateway   Before you perform the migration to the new gateway, you must configure the new gateway. Use CreateVpnGateway to create a virtual private gateway, or CreateTransitGateway to create a transit gateway. This step is required when you migrate from a virtual private gateway with static routes to a transit gateway.  You must delete the static routes before you migrate to the new gateway. Keep a copy of the static route before you delete it. You will need to add back these routes to the transit gateway after the VPN connection migration is complete. After you migrate to the new gateway, you might need to modify your VPC route table. Use CreateRoute and DeleteRoute to make the changes described in VPN Gateway Target Modification Required VPC Route Table Updates in the AWS Site-to-Site VPN User Guide.  When the new gateway is a transit gateway, modify the transit gateway route table to allow traffic between the VPC and the AWS Site-to-Site VPN connection. Use CreateTransitGatewayRoute to add the routes.  If you deleted VPN static routes, you must add the static routes to the transit gateway route table. After you perform this operation, the AWS VPN endpoint's IP addresses on the AWS side and the tunnel options remain intact. Your s2slong; connection will be temporarily unavailable for approximately 10 minutes while we provision the new endpoints 

Required Parameters:
{
  "VpnConnectionId": "The ID of the VPN connection."
}


Optional Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway.",
  "VpnGatewayId": "The ID of the virtual private gateway at the AWS side of the VPN connection.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "CustomerGatewayId": "The ID of the customer gateway at your end of the VPN connection."
}

"""

ModifyVpnConnection(args) = ec2("ModifyVpnConnection", args)
"""
    DeleteLocalGatewayRouteTableVpcAssociation

Deletes the specified association between a VPC and local gateway route table.

Required Parameters:
{
  "LocalGatewayRouteTableVpcAssociationId": "The ID of the association."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteLocalGatewayRouteTableVpcAssociation(args) = ec2("DeleteLocalGatewayRouteTableVpcAssociation", args)
"""
    CreateVpnConnectionRoute

Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR block associated with the local subnet of the customer network.",
  "VpnConnectionId": "The ID of the VPN connection."
}


Optional Parameters:
{}

"""

CreateVpnConnectionRoute(args) = ec2("CreateVpnConnectionRoute", args)
"""
    DescribeVpnGateways

Describes one or more of your virtual private gateways. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    amazon-side-asn - The Autonomous System Number (ASN) for the Amazon side of the gateway.    attachment.state - The current state of the attachment between the gateway and the VPC (attaching | attached | detaching | detached).    attachment.vpc-id - The ID of an attached VPC.    availability-zone - The Availability Zone for the virtual private gateway (if applicable).    state - The state of the virtual private gateway (pending | available | deleting | deleted).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    type - The type of virtual private gateway. Currently the only supported type is ipsec.1.    vpn-gateway-id - The ID of the virtual private gateway.  ",
  "VpnGatewayIds": "One or more virtual private gateway IDs. Default: Describes all your virtual private gateways."
}

"""
DescribeVpnGateways() = ec2("DescribeVpnGateways")
DescribeVpnGateways(args) = ec2("DescribeVpnGateways", args)

"""
    ReportInstanceStatus

Submits feedback about the status of an instance. The instance must be in the running state. If your experience with the instance differs from the instance status returned by DescribeInstanceStatus, use ReportInstanceStatus to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks. Use of this action does not change the value returned by DescribeInstanceStatus.

Required Parameters:
{
  "Instances": "The instances.",
  "Status": "The status of all instances listed.",
  "ReasonCodes": "The reason codes that describe the health state of your instance.    instance-stuck-in-state: My instance is stuck in a state.    unresponsive: My instance is unresponsive.    not-accepting-credentials: My instance is not accepting my credentials.    password-not-available: A password is not available for my instance.    performance-network: My instance is experiencing performance problems that I believe are network related.    performance-instance-store: My instance is experiencing performance problems that I believe are related to the instance stores.    performance-ebs-volume: My instance is experiencing performance problems that I believe are related to an EBS volume.    performance-other: My instance is experiencing performance problems.    other: [explain using the description parameter]  "
}


Optional Parameters:
{
  "StartTime": "The time at which the reported instance health state began.",
  "Description": "Descriptive text about the health state of your instance.",
  "EndTime": "The time at which the reported instance health state ended.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ReportInstanceStatus(args) = ec2("ReportInstanceStatus", args)
"""
    ResetSnapshotAttribute

Resets permission settings for the specified snapshot. For more information about modifying snapshot permissions, see Sharing Snapshots in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SnapshotId": "The ID of the snapshot.",
  "Attribute": "The attribute to reset. Currently, only the attribute for permission to create volumes can be reset."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ResetSnapshotAttribute(args) = ec2("ResetSnapshotAttribute", args)
"""
    DisableVgwRoutePropagation

Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.

Required Parameters:
{
  "RouteTableId": "The ID of the route table.",
  "GatewayId": "The ID of the virtual private gateway."
}


Optional Parameters:
{}

"""

DisableVgwRoutePropagation(args) = ec2("DisableVgwRoutePropagation", args)
"""
    ApplySecurityGroupsToClientVpnTargetNetwork

Applies a security group to the association between the target network and the Client VPN endpoint. This action replaces the existing security groups with the specified security groups.

Required Parameters:
{
  "SecurityGroupIds": "The IDs of the security groups to apply to the associated target network. Up to 5 security groups can be applied to an associated target network.",
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint.",
  "VpcId": "The ID of the VPC in which the associated target network is located."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ApplySecurityGroupsToClientVpnTargetNetwork(args) = ec2("ApplySecurityGroupsToClientVpnTargetNetwork", args)
"""
    DescribeLocalGateways

Describes one or more local gateways. By default, all local gateways are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "LocalGatewayIds": "The IDs of the local gateways.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters."
}

"""
DescribeLocalGateways() = ec2("DescribeLocalGateways")
DescribeLocalGateways(args) = ec2("DescribeLocalGateways", args)

"""
    DescribeTransitGatewayVpcAttachments

Describes one or more VPC attachments. By default, all VPC attachments are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayAttachmentIds": "The IDs of the attachments.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    state - The state of the attachment (available | deleted | deleting | failed | modifying | pendingAcceptance | pending | rollingBack | rejected | rejecting).    transit-gateway-attachment-id - The ID of the attachment.    transit-gateway-id - The ID of the transit gateway.    vpc-id - The ID of the VPC.  "
}

"""
DescribeTransitGatewayVpcAttachments() = ec2("DescribeTransitGatewayVpcAttachments")
DescribeTransitGatewayVpcAttachments(args) = ec2("DescribeTransitGatewayVpcAttachments", args)

"""
    AllocateAddress

Allocates an Elastic IP address to your AWS account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different AWS account. You can allocate an Elastic IP address from an address pool owned by AWS or from an address pool created from a public IPv4 address range that you have brought to AWS for use with your AWS resources using bring your own IP addresses (BYOIP). For more information, see Bring Your Own IP Addresses (BYOIP) in the Amazon Elastic Compute Cloud User Guide. [EC2-VPC] If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another AWS account. You cannot recover an Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP address that you released, specify it in this operation. An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per Region. For more information, see Elastic IP Addresses in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "Address": "[EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address pool.",
  "CustomerOwnedIpv4Pool": "The ID of a customer-owned address pool. Use this parameter to let Amazon EC2 select an address from the address pool. Alternatively, specify a specific address from the address pool.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Domain": "Set to vpc to allocate the address for use with instances in a VPC. Default: The address is for use with instances in EC2-Classic.",
  "NetworkBorderGroup": "The location from which the IP address is advertised. Use this parameter to limit the address to this location. Use DescribeVpcs to view the network border groups.  You cannot use a network border group with EC2 Classic. If you attempt this operation on EC2 classic, you will receive an InvalidParameterCombination error. For more information, see Error Codes. ",
  "PublicIpv4Pool": "The ID of an address pool that you own. Use this parameter to let Amazon EC2 select an address from the address pool. To specify a specific address from the address pool, use the Address parameter instead."
}

"""
AllocateAddress() = ec2("AllocateAddress")
AllocateAddress(args) = ec2("AllocateAddress", args)

"""
    DescribeEgressOnlyInternetGateways

Describes one or more of your egress-only internet gateways.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "EgressOnlyInternetGatewayIds": "One or more egress-only internet gateway IDs.",
  "Filters": "One or more filters.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeEgressOnlyInternetGateways() = ec2("DescribeEgressOnlyInternetGateways")
DescribeEgressOnlyInternetGateways(args) = ec2("DescribeEgressOnlyInternetGateways", args)

"""
    CreateClientVpnEndpoint

Creates a Client VPN endpoint. A Client VPN endpoint is the resource you create and configure to enable and manage client VPN sessions. It is the destination endpoint at which all client VPN sessions are terminated.

Required Parameters:
{
  "ClientCidrBlock": "The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater.",
  "ServerCertificateArn": "The ARN of the server certificate. For more information, see the AWS Certificate Manager User Guide.",
  "ConnectionLogOptions": "Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:   Client connection requests   Client connection results (successful and unsuccessful)   Reasons for unsuccessful client connection requests   Client connection termination time  ",
  "AuthenticationOptions": "Information about the authentication method to be used to authenticate clients."
}


Optional Parameters:
{
  "VpnPort": "The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: 443 | 1194  Default Value: 443 ",
  "Description": "A brief description of the Client VPN endpoint.",
  "TransportProtocol": "The transport protocol to be used by the VPN session. Default value: udp ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the Client VPN endpoint during creation.",
  "SplitTunnel": "Indicates whether split-tunnel is enabled on the AWS Client VPN endpoint. By default, split-tunnel on a VPN endpoint is disabled. For information about split-tunnel VPN endpoints, see Split-Tunnel AWS Client VPN Endpoint in the AWS Client VPN Administrator Guide.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "DnsServers": "Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address configured on the device is used for the DNS server."
}

"""

CreateClientVpnEndpoint(args) = ec2("CreateClientVpnEndpoint", args)
"""
    DescribeClientVpnTargetNetworks

Describes the target networks associated with the specified Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "AssociationIds": "The IDs of the target network associations.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    association-id - The ID of the association.    target-network-id - The ID of the subnet specified as the target network.    vpc-id - The ID of the VPC in which the target network is located.  "
}

"""

DescribeClientVpnTargetNetworks(args) = ec2("DescribeClientVpnTargetNetworks", args)
"""
    DescribeClientVpnAuthorizationRules

Describes the authorization rules for a specified Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    description - The description of the authorization rule.    destination-cidr - The CIDR of the network to which the authorization rule applies.    group-id - The ID of the Active Directory group to which the authorization rule grants access.  "
}

"""

DescribeClientVpnAuthorizationRules(args) = ec2("DescribeClientVpnAuthorizationRules", args)
"""
    DescribeLaunchTemplateVersions

Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions.

Required Parameters:
{}


Optional Parameters:
{
  "Versions": "One or more versions of the launch template.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 1 and 200.",
  "NextToken": "The token to request the next page of results.",
  "MinVersion": "The version number after which to describe launch template versions.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateId": "The ID of the launch template. You must specify either the launch template ID or launch template name in the request.",
  "MaxVersion": "The version number up to which to describe launch template versions.",
  "Filters": "One or more filters.    create-time - The time the launch template version was created.    ebs-optimized - A boolean that indicates whether the instance is optimized for Amazon EBS I/O.    iam-instance-profile - The ARN of the IAM instance profile.    image-id - The ID of the AMI.    instance-type - The instance type.    is-default-version - A boolean that indicates whether the launch template version is the default version.    kernel-id - The kernel ID.    ram-disk-id - The RAM disk ID.  ",
  "LaunchTemplateName": "The name of the launch template. You must specify either the launch template ID or launch template name in the request."
}

"""
DescribeLaunchTemplateVersions() = ec2("DescribeLaunchTemplateVersions")
DescribeLaunchTemplateVersions(args) = ec2("DescribeLaunchTemplateVersions", args)

"""
    DescribeSpotDatafeedSubscription

Describes the data feed for Spot Instances. For more information, see Spot Instance Data Feed in the Amazon EC2 User Guide for Linux Instances.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DescribeSpotDatafeedSubscription() = ec2("DescribeSpotDatafeedSubscription")
DescribeSpotDatafeedSubscription(args) = ec2("DescribeSpotDatafeedSubscription", args)

"""
    DescribeVpcEndpointConnectionNotifications

Describes the connection notifications for VPC endpoints and VPC endpoint services.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned NextToken value.",
  "NextToken": "The token to request the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ConnectionNotificationId": "The ID of the notification.",
  "Filters": "One or more filters.    connection-notification-arn - The ARN of the SNS topic for the notification.    connection-notification-id - The ID of the notification.    connection-notification-state - The state of the notification (Enabled | Disabled).    connection-notification-type - The type of notification (Topic).    service-id - The ID of the endpoint service.    vpc-endpoint-id - The ID of the VPC endpoint.  "
}

"""
DescribeVpcEndpointConnectionNotifications() = ec2("DescribeVpcEndpointConnectionNotifications")
DescribeVpcEndpointConnectionNotifications(args) = ec2("DescribeVpcEndpointConnectionNotifications", args)

"""
    DescribeRegions

Describes the Regions that are enabled for your account, or all Regions. For a list of the Regions supported by Amazon EC2, see  Regions and Endpoints. For information about enabling and disabling Regions for your account, see Managing AWS Regions in the AWS General Reference.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    endpoint - The endpoint of the Region (for example, ec2.us-east-1.amazonaws.com).    opt-in-status - The opt-in status of the Region (opt-in-not-required | opted-in | not-opted-in).    region-name - The name of the Region (for example, us-east-1).  ",
  "RegionNames": "The names of the Regions. You can specify any Regions, whether they are enabled and disabled for your account.",
  "AllRegions": "Indicates whether to display all Regions, including Regions that are disabled for your account."
}

"""
DescribeRegions() = ec2("DescribeRegions")
DescribeRegions(args) = ec2("DescribeRegions", args)

"""
    AuthorizeClientVpnIngress

Adds an ingress authorization rule to a Client VPN endpoint. Ingress authorization rules act as firewall rules that grant access to networks. You must configure ingress authorization rules to enable clients to access resources in AWS or on-premises networks.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint.",
  "TargetNetworkCidr": "The IPv4 address range, in CIDR notation, of the network for which access is being authorized."
}


Optional Parameters:
{
  "AccessGroupId": "The ID of the Active Directory group to grant access.",
  "Description": "A brief description of the authorization rule.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "AuthorizeAllGroups": "Indicates whether to grant access to all clients. Use true to grant all clients who successfully establish a VPN connection access to the network."
}

"""

AuthorizeClientVpnIngress(args) = ec2("AuthorizeClientVpnIngress", args)
"""
    DeleteRoute

Deletes the specified route from the specified route table.

Required Parameters:
{
  "RouteTableId": "The ID of the route table."
}


Optional Parameters:
{
  "DestinationIpv6CidrBlock": "The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.",
  "DestinationCidrBlock": "The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteRoute(args) = ec2("DeleteRoute", args)
"""
    ModifySubnetAttribute

Modifies a subnet attribute. You can only modify one attribute at a time.

Required Parameters:
{
  "SubnetId": "The ID of the subnet."
}


Optional Parameters:
{
  "MapPublicIpOnLaunch": "Specify true to indicate that ENIs attached to instances created in the specified subnet should be assigned a public IPv4 address.",
  "AssignIpv6AddressOnCreation": "Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. This includes a network interface that's created when launching an instance into the subnet (the instance therefore receives an IPv6 address).  If you enable the IPv6 addressing feature for your subnet, your network interface or instance only receives an IPv6 address if it's created using version 2016-11-15 or later of the Amazon EC2 API."
}

"""

ModifySubnetAttribute(args) = ec2("ModifySubnetAttribute", args)
"""
    ModifyFleet

Modifies the specified EC2 Fleet. You can only modify an EC2 Fleet request of type maintain. While the EC2 Fleet is being modified, it is in the modifying state. To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet launches the additional Spot Instances according to the allocation strategy for the EC2 Fleet request. If the allocation strategy is lowest-price, the EC2 Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is diversified, the EC2 Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is capacity-optimized, EC2 Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching. To scale down your EC2 Fleet, decrease its target capacity. First, the EC2 Fleet cancels any open requests that exceed the new target capacity. You can request that the EC2 Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is lowest-price, the EC2 Fleet terminates the instances with the highest price per unit. If the allocation strategy is capacity-optimized, the EC2 Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is diversified, the EC2 Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the EC2 Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually. If you are finished with your EC2 Fleet for now, but will use it again later, you can set the target capacity to 0.

Required Parameters:
{
  "FleetId": "The ID of the EC2 Fleet.",
  "TargetCapacitySpecification": "The size of the EC2 Fleet."
}


Optional Parameters:
{
  "ExcessCapacityTerminationPolicy": "Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyFleet(args) = ec2("ModifyFleet", args)
"""
    CreateTransitGatewayMulticastDomain

Creates a multicast domain using the specified transit gateway. The transit gateway must be in the available state before you create a domain. Use DescribeTransitGateways to see the state of transit gateway.

Required Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags for the transit gateway multicast domain."
}

"""

CreateTransitGatewayMulticastDomain(args) = ec2("CreateTransitGatewayMulticastDomain", args)
"""
    DeleteKeyPair

Deletes the specified key pair, by removing the public key from Amazon EC2.

Required Parameters:
{
  "KeyName": "The name of the key pair."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteKeyPair(args) = ec2("DeleteKeyPair", args)
"""
    DescribeTransitGatewayPeeringAttachments

Describes your transit gateway peering attachments.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayAttachmentIds": "One or more IDs of the transit gateway peering attachments.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters."
}

"""
DescribeTransitGatewayPeeringAttachments() = ec2("DescribeTransitGatewayPeeringAttachments")
DescribeTransitGatewayPeeringAttachments(args) = ec2("DescribeTransitGatewayPeeringAttachments", args)

"""
    DescribeVpcEndpointServices

Describes available services to which you can create a VPC endpoint.

Required Parameters:
{}


Optional Parameters:
{
  "ServiceNames": "One or more service names.",
  "MaxResults": "The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results. Constraint: If the value is greater than 1,000, we return only 1,000 items.",
  "NextToken": "The token for the next set of items to return. (You received this token from a prior call.)",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    service-name - The name of the service.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeVpcEndpointServices() = ec2("DescribeVpcEndpointServices")
DescribeVpcEndpointServices(args) = ec2("DescribeVpcEndpointServices", args)

"""
    DeleteClientVpnRoute

Deletes a route from a Client VPN endpoint. You can only delete routes that you manually added using the CreateClientVpnRoute action. You cannot delete routes that were automatically added when associating a subnet. To remove routes that have been automatically added, disassociate the target subnet from the Client VPN endpoint.

Required Parameters:
{
  "DestinationCidrBlock": "The IPv4 address range, in CIDR notation, of the route to be deleted.",
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint from which the route is to be deleted."
}


Optional Parameters:
{
  "TargetVpcSubnetId": "The ID of the target subnet used by the route.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteClientVpnRoute(args) = ec2("DeleteClientVpnRoute", args)
"""
    CreateEgressOnlyInternetGateway

[IPv6 only] Creates an egress-only internet gateway for your VPC. An egress-only internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.

Required Parameters:
{
  "VpcId": "The ID of the VPC for which to create the egress-only internet gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

CreateEgressOnlyInternetGateway(args) = ec2("CreateEgressOnlyInternetGateway", args)
"""
    DescribeAvailabilityZones

Describes the Availability Zones and Local Zones that are available to you. If there is an event impacting an Availability Zone or Local Zone, you can use this request to view the state and any provided messages for that Availability Zone or Local Zone. For more information about Availability Zones and Local Zones, see Regions and Availability Zones in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "ZoneNames": "The names of the Availability Zones and Local Zones.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AllAvailabilityZones": "Include all Availability Zones and Local Zones regardless of your opt in status. If you do not use this parameter, the results include only the zones for the Regions where you have chosen the option to opt in.",
  "Filters": "The filters.    group-name - For Availability Zones, use the Region name. For Local Zones, use the name of the group associated with the Local Zone (for example, us-west-2-lax-1).    message - The Availability Zone or Local Zone message.    opt-in-status - The opt in status (opted-in, and not-opted-in | opt-in-not-required).    region-name - The name of the Region for the Availability Zone or Local Zone (for example, us-east-1).    state - The state of the Availability Zone or Local Zone (available | information | impaired | unavailable).    zone-id - The ID of the Availability Zone (for example, use1-az1) or the Local Zone (for example, use usw2-lax1-az1).    zone-name - The name of the Availability Zone (for example, us-east-1a) or the Local Zone (for example, use us-west-2-lax-1a).  ",
  "ZoneIds": "The IDs of the Availability Zones and Local Zones."
}

"""
DescribeAvailabilityZones() = ec2("DescribeAvailabilityZones")
DescribeAvailabilityZones(args) = ec2("DescribeAvailabilityZones", args)

"""
    DescribeFpgaImages

Describes the Amazon FPGA Images (AFIs) available to you. These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "The token to retrieve the next page of results.",
  "Owners": "Filters the AFI by owner. Specify an AWS account ID, self (owner is the sender of the request), or an AWS owner alias (valid values are amazon | aws-marketplace).",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "FpgaImageIds": "The AFI IDs.",
  "Filters": "The filters.    create-time - The creation time of the AFI.    fpga-image-id - The FPGA image identifier (AFI ID).    fpga-image-global-id - The global FPGA image identifier (AGFI ID).    name - The name of the AFI.    owner-id - The AWS account ID of the AFI owner.    product-code - The product code.    shell-version - The version of the AWS Shell that was used to create the bitstream.    state - The state of the AFI (pending | failed | available | unavailable).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    update-time - The time of the most recent update.  "
}

"""
DescribeFpgaImages() = ec2("DescribeFpgaImages")
DescribeFpgaImages(args) = ec2("DescribeFpgaImages", args)

"""
    CreateSubnet

Creates a subnet in an existing VPC. When you create each subnet, you provide the VPC ID and IPv4 CIDR block for the subnet. After you create a subnet, you can't change its CIDR block. The size of the subnet's IPv4 CIDR block can be the same as a VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length.   AWS reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for use.  If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle. If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn't change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available. For more information about subnets, see Your VPC and Subnets in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "CidrBlock": "The IPv4 network range for the subnet, in CIDR notation. For example, 10.0.0.0/24.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "AvailabilityZone": "The Availability Zone or Local Zone for the subnet. Default: AWS selects one for you. If you create more than one subnet in your VPC, we do not necessarily select a different zone for each subnet. To create a subnet in a Local Zone, set this value to the Local Zone ID, for example us-west-2-lax-1a. For information about the Regions that support Local Zones, see Available Regions in the Amazon Elastic Compute Cloud User Guide.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AvailabilityZoneId": "The AZ ID or the Local Zone ID of the subnet.",
  "Ipv6CidrBlock": "The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.",
  "OutpostArn": "The Amazon Resource Name (ARN) of the Outpost."
}

"""

CreateSubnet(args) = ec2("CreateSubnet", args)
"""
    CreateVpnGateway

Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{
  "Type": "The type of VPN connection this virtual private gateway supports."
}


Optional Parameters:
{
  "AvailabilityZone": "The Availability Zone for the virtual private gateway.",
  "AmazonSideAsn": "A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you're using a 16-bit ASN, it must be in the 64512 to 65534 range. If you're using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range. Default: 64512",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateVpnGateway(args) = ec2("CreateVpnGateway", args)
"""
    DescribePrefixLists

Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a gateway VPC endpoint. Currently, the services that support this action are Amazon S3 and Amazon DynamoDB.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    prefix-list-id: The ID of a prefix list.    prefix-list-name: The name of a prefix list.  ",
  "PrefixListIds": "One or more prefix list IDs."
}

"""
DescribePrefixLists() = ec2("DescribePrefixLists")
DescribePrefixLists(args) = ec2("DescribePrefixLists", args)

"""
    CancelExportTask

Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.

Required Parameters:
{
  "ExportTaskId": "The ID of the export task. This is the ID returned by CreateInstanceExportTask."
}


Optional Parameters:
{}

"""

CancelExportTask(args) = ec2("CancelExportTask", args)
"""
    CreateSnapshot

Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance. When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot. You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is pending. To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot. Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected. You can tag your snapshots during creation. For more information, see Tagging Your Amazon EC2 Resources in the Amazon Elastic Compute Cloud User Guide. For more information, see Amazon Elastic Block Store and Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "VolumeId": "The ID of the EBS volume."
}


Optional Parameters:
{
  "Description": "A description for the snapshot.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the snapshot during creation."
}

"""

CreateSnapshot(args) = ec2("CreateSnapshot", args)
"""
    DescribeFpgaImageAttribute

Describes the specified attribute of the specified Amazon FPGA Image (AFI).

Required Parameters:
{
  "FpgaImageId": "The ID of the AFI.",
  "Attribute": "The AFI attribute."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeFpgaImageAttribute(args) = ec2("DescribeFpgaImageAttribute", args)
"""
    AuthorizeSecurityGroupIngress

Adds the specified ingress rules to a security group. An inbound rule permits instances to receive traffic from the specified IPv4 or IPv6 CIDR address ranges, or from the instances associated with the specified destination security groups. You specify a protocol for each rule (for example, TCP). For TCP and UDP, you must also specify the destination port or port range. For ICMP/ICMPv6, you must also specify the ICMP/ICMPv6 type and code. You can use -1 to mean all types or all codes. Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur. For more information about VPC security group limits, see Amazon VPC Limits.

Required Parameters:
{}


Optional Parameters:
{
  "SourceSecurityGroupName": "[EC2-Classic, default VPC] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead. For EC2-VPC, the source security group must be in the same VPC.",
  "SourceSecurityGroupOwnerId": "[nondefault VPC] The AWS account ID for the source security group, if the source security group is in a different account. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead.",
  "CidrIp": "The IPv4 address range, in CIDR format. You can't specify this parameter when specifying a source security group. To specify an IPv6 address range, use a set of IP permissions. Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.",
  "GroupId": "The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.",
  "IpProtocol": "The IP protocol name (tcp, udp, icmp) or number (see Protocol Numbers). To specify icmpv6, use a set of IP permissions. [VPC only] Use -1 to specify all protocols. If you specify -1 or a protocol other than tcp, udp, or icmp, traffic on all ports is allowed, regardless of any ports you specify. Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.",
  "FromPort": "The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, use -1 to specify all types. If you specify all ICMP types, you must specify all codes. Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupName": "[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.",
  "ToPort": "The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, use -1 to specify all codes. If you specify all ICMP types, you must specify all codes. Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.",
  "IpPermissions": "The sets of IP permissions."
}

"""
AuthorizeSecurityGroupIngress() = ec2("AuthorizeSecurityGroupIngress")
AuthorizeSecurityGroupIngress(args) = ec2("AuthorizeSecurityGroupIngress", args)

"""
    ModifyIdentityIdFormat

Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created.  This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | route-table | route-table-association | security-group | subnet | subnet-cidr-block-association | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway.  For more information, see Resource IDs in the Amazon Elastic Compute Cloud User Guide.  This setting applies to the principal specified in the request; it does not apply to the principal that makes the request.  Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant Describe command for the resource type.

Required Parameters:
{
  "Resource": "The type of resource: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | route-table | route-table-association | security-group | subnet | subnet-cidr-block-association | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway. Alternatively, use the all-current option to include all resource types that are currently within their opt-in period for longer IDs.",
  "UseLongIds": "Indicates whether the resource should use longer IDs (17-character IDs)",
  "PrincipalArn": "The ARN of the principal, which can be an IAM user, IAM role, or the root user. Specify all to modify the ID format for all IAM users, IAM roles, and the root user of the account."
}


Optional Parameters:
{}

"""

ModifyIdentityIdFormat(args) = ec2("ModifyIdentityIdFormat", args)
"""
    RejectVpcEndpointConnections

Rejects one or more VPC endpoint connection requests to your VPC endpoint service.

Required Parameters:
{
  "ServiceId": "The ID of the service.",
  "VpcEndpointIds": "The IDs of one or more VPC endpoints."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RejectVpcEndpointConnections(args) = ec2("RejectVpcEndpointConnections", args)
"""
    UpdateSecurityGroupRuleDescriptionsIngress

Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously. You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.

Required Parameters:
{
  "IpPermissions": "The IP permissions for the security group rule. "
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupName": "[EC2-Classic, default VPC] The name of the security group. You must specify either the security group ID or the security group name in the request.",
  "GroupId": "The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID."
}

"""

UpdateSecurityGroupRuleDescriptionsIngress(args) = ec2("UpdateSecurityGroupRuleDescriptionsIngress", args)
"""
    DescribeVpcClassicLink

Describes the ClassicLink status of one or more VPCs.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "VpcIds": "One or more VPCs for which you want to describe the ClassicLink status.",
  "Filters": "One or more filters.    is-classic-link-enabled - Whether the VPC is enabled for ClassicLink (true | false).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeVpcClassicLink() = ec2("DescribeVpcClassicLink")
DescribeVpcClassicLink(args) = ec2("DescribeVpcClassicLink", args)

"""
    DescribeNatGateways

Describes one or more of your NAT gateways.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "NatGatewayIds": "One or more NAT gateway IDs.",
  "Filter": "One or more filters.    nat-gateway-id - The ID of the NAT gateway.    state - The state of the NAT gateway (pending | failed | available | deleting | deleted).    subnet-id - The ID of the subnet in which the NAT gateway resides.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC in which the NAT gateway resides.  "
}

"""
DescribeNatGateways() = ec2("DescribeNatGateways")
DescribeNatGateways(args) = ec2("DescribeNatGateways", args)

"""
    DeleteSecurityGroup

Deletes a security group. If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with InvalidGroup.InUse in EC2-Classic or DependencyViolation in EC2-VPC.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "GroupName": "[EC2-Classic, default VPC] The name of the security group. You can specify either the security group name or the security group ID.",
  "GroupId": "The ID of the security group. Required for a nondefault VPC."
}

"""
DeleteSecurityGroup() = ec2("DeleteSecurityGroup")
DeleteSecurityGroup(args) = ec2("DeleteSecurityGroup", args)

"""
    CreateCapacityReservation

Creates a new Capacity Reservation with the specified attributes. Capacity Reservations enable you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration. This gives you the flexibility to selectively add capacity reservations and still get the Regional RI discounts for that usage. By creating Capacity Reservations, you ensure that you always have access to Amazon EC2 capacity when you need it, for as long as you need it. For more information, see Capacity Reservations in the Amazon Elastic Compute Cloud User Guide. Your request to create a Capacity Reservation could fail if Amazon EC2 does not have sufficient capacity to fulfill the request. If your request fails due to Amazon EC2 capacity constraints, either try again at a later time, try in a different Availability Zone, or request a smaller capacity reservation. If your application is flexible across instance types and sizes, try to create a Capacity Reservation with different instance attributes. Your request could also fail if the requested quantity exceeds your On-Demand Instance limit for the selected instance type. If your request fails due to limit constraints, increase your On-Demand Instance limit for the required instance type and try again. For more information about increasing your instance limits, see Amazon EC2 Service Limits in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceType": "The instance type for which to reserve capacity. For more information, see Instance Types in the Amazon Elastic Compute Cloud User Guide.",
  "InstancePlatform": "The type of operating system for which to reserve capacity.",
  "InstanceCount": "The number of instances for which to reserve capacity."
}


Optional Parameters:
{
  "Tenancy": "Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:    default - The Capacity Reservation is created on hardware that is shared with other AWS accounts.    dedicated - The Capacity Reservation is created on single-tenant hardware that is dedicated to a single AWS account.  ",
  "EndDate": "The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to expired when it reaches its end date and time. You must provide an EndDate value if EndDateType is limited. Omit EndDate if EndDateType is unlimited. If the EndDateType is limited, the Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.",
  "EphemeralStorage": "Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AvailabilityZoneId": "The ID of the Availability Zone in which to create the Capacity Reservation.",
  "InstanceMatchCriteria": "Indicates the type of instance launches that the Capacity Reservation accepts. The options include:    open - The Capacity Reservation automatically matches all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes run in the Capacity Reservation automatically without specifying any additional parameters.    targeted - The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.    Default: open ",
  "EndDateType": "Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:    unlimited - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an EndDate if the EndDateType is unlimited.    limited - The Capacity Reservation expires automatically at a specified date and time. You must provide an EndDate value if the EndDateType value is limited.  ",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency. Constraint: Maximum 64 ASCII characters.",
  "TagSpecifications": "The tags to apply to the Capacity Reservation during launch.",
  "AvailabilityZone": "The Availability Zone in which to create the Capacity Reservation.",
  "EbsOptimized": "Indicates whether the Capacity Reservation supports EBS-optimized instances. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS- optimized instance."
}

"""

CreateCapacityReservation(args) = ec2("CreateCapacityReservation", args)
"""
    ModifyVpnTunnelCertificate

Modifies the VPN tunnel endpoint certificate.

Required Parameters:
{
  "VpnConnectionId": "The ID of the AWS Site-to-Site VPN connection.",
  "VpnTunnelOutsideIpAddress": "The external IP address of the VPN tunnel."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyVpnTunnelCertificate(args) = ec2("ModifyVpnTunnelCertificate", args)
"""
    DisableVpcClassicLinkDnsSupport

Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information, see ClassicLink in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "VpcId": "The ID of the VPC."
}

"""
DisableVpcClassicLinkDnsSupport() = ec2("DisableVpcClassicLinkDnsSupport")
DisableVpcClassicLinkDnsSupport(args) = ec2("DisableVpcClassicLinkDnsSupport", args)

"""
    DescribeStaleSecurityGroups

[VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.",
  "NextToken": "The token for the next set of items to return. (You received this token from a prior call.)",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeStaleSecurityGroups(args) = ec2("DescribeStaleSecurityGroups", args)
"""
    CreateTrafficMirrorFilter

Creates a Traffic Mirror filter. A Traffic Mirror filter is a set of rules that defines the traffic to mirror. By default, no traffic is mirrored. To mirror traffic, use CreateTrafficMirrorFilterRule to add Traffic Mirror rules to the filter. The rules you add define what traffic gets mirrored. You can also use ModifyTrafficMirrorFilterNetworkServices to mirror supported network services.

Required Parameters:
{}


Optional Parameters:
{
  "Description": "The description of the Traffic Mirror filter.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to assign to a Traffic Mirror filter.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""
CreateTrafficMirrorFilter() = ec2("CreateTrafficMirrorFilter")
CreateTrafficMirrorFilter(args) = ec2("CreateTrafficMirrorFilter", args)

"""
    DescribeIpv6Pools

Describes your IPv6 address pools.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  ",
  "PoolIds": "The IDs of the IPv6 address pools."
}

"""
DescribeIpv6Pools() = ec2("DescribeIpv6Pools")
DescribeIpv6Pools(args) = ec2("DescribeIpv6Pools", args)

"""
    DescribeTransitGatewayRouteTables

Describes one or more transit gateway route tables. By default, all transit gateway route tables are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayRouteTableIds": "The IDs of the transit gateway route tables.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    default-association-route-table - Indicates whether this is the default association route table for the transit gateway (true | false).    default-propagation-route-table - Indicates whether this is the default propagation route table for the transit gateway (true | false).    state - The state of the attachment (available | deleted | deleting | failed | modifying | pendingAcceptance | pending | rollingBack | rejected | rejecting).    transit-gateway-id - The ID of the transit gateway.    transit-gateway-route-table-id - The ID of the transit gateway route table.  "
}

"""
DescribeTransitGatewayRouteTables() = ec2("DescribeTransitGatewayRouteTables")
DescribeTransitGatewayRouteTables(args) = ec2("DescribeTransitGatewayRouteTables", args)

"""
    DeleteFlowLogs

Deletes one or more flow logs.

Required Parameters:
{
  "FlowLogIds": "One or more flow log IDs. Constraint: Maximum of 1000 flow log IDs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteFlowLogs(args) = ec2("DeleteFlowLogs", args)
"""
    CopyImage

Initiates the copy of an AMI from the specified source Region to the current Region. You specify the destination Region by using its endpoint when making the request. Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set Encrypted during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot. For more information about the prerequisites and limits when copying an AMI, see Copying an AMI in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SourceRegion": "The name of the Region that contains the AMI to copy.",
  "SourceImageId": "The ID of the AMI to copy.",
  "Name": "The name of the new AMI in the destination Region."
}


Optional Parameters:
{
  "Description": "A description for the new AMI in the destination Region.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Encrypted": "Specifies whether the destination snapshots of the copied image should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot create an unencrypted copy of an encrypted snapshot. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using KmsKeyId. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see How to Ensure Idempotency in the Amazon Elastic Compute Cloud User Guide.",
  "KmsKeyId": "An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.  To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with \"alias/\". For example:   Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab    Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab    Alias name: alias/ExampleAlias    Alias ARN: arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias    AWS parses KmsKeyId asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.  The specified CMK must exist in the Region that the snapshot is being copied to.  Amazon EBS does not support asymmetric CMKs."
}

"""

CopyImage(args) = ec2("CopyImage", args)
"""
    CancelSpotInstanceRequests

Cancels one or more Spot Instance requests.  Canceling a Spot Instance request does not terminate running Spot Instances associated with the request. 

Required Parameters:
{
  "SpotInstanceRequestIds": "One or more Spot Instance request IDs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CancelSpotInstanceRequests(args) = ec2("CancelSpotInstanceRequests", args)
"""
    DescribeInstanceTypes

Returns a list of all instance types offered in your current AWS Region. The results can be filtered by the attributes of the instance types.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the next token value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "InstanceTypes": "The instance types. For more information, see Instance Types in the Amazon Elastic Compute Cloud User Guide.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    auto-recovery-supported - Indicates whether auto recovery is supported. (true | false)    bare-metal - Indicates whether it is a bare metal instance type. (true | false)    burstable-performance-supported - Indicates whether it is a burstable performance instance type. (true | false)    current-generation - Indicates whether this instance type is the latest generation instance type of an instance family. (true | false)    ebs-info.ebs-optimized-support - Indicates whether the instance type is EBS-optimized. (true | false)    ebs-info.encryption-support - Indicates whether EBS encryption is supported. (true | false)    free-tier-eligible - Indicates whether the instance type is eligible to use in the free tier. (true | false)    hibernation-supported - Indicates whether On-Demand hibernation is supported. (true | false)    hypervisor - The hypervisor used. (nitro | xen)    instance-storage-info.disk.count - The number of local disks.    instance-storage-info.disk.size-in-gb - The storage size of each instance storage disk, in GB.    instance-storage-info.disk.type - The storage technology for the local instance storage disks. (hdd | ssd)    instance-storage-info.total-size-in-gb - The total amount of storage available from all local instance storage, in GB.    instance-storage-supported - Indicates whether the instance type has local instance storage. (true | false)    memory-info.size-in-mib - The memory size.    network-info.ena-support - Indicates whether Elastic Network Adapter (ENA) is supported or required. (required | supported | unsupported)    network-info.ipv4-addresses-per-interface - The maximum number of private IPv4 addresses per network interface.    network-info.ipv6-addresses-per-interface - The maximum number of private IPv6 addresses per network interface.    network-info.ipv6-supported - Indicates whether the instance type supports IPv6. (true | false)    network-info.maximum-network-interfaces - The maximum number of network interfaces per instance.    network-info.network-performance - Describes the network performance.    processor-info.sustained-clock-speed-in-ghz - The CPU clock speed, in GHz.    vcpu-info.default-cores - The default number of cores for the instance type.    vcpu-info.default-threads-per-core - The default number of threads per core for the instance type.    vcpu-info.default-vcpus - The default number of vCPUs for the instance type.  "
}

"""
DescribeInstanceTypes() = ec2("DescribeInstanceTypes")
DescribeInstanceTypes(args) = ec2("DescribeInstanceTypes", args)

"""
    DescribePublicIpv4Pools

Describes the specified IPv4 address pools.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "PoolIds": "The IDs of the address pools."
}

"""
DescribePublicIpv4Pools() = ec2("DescribePublicIpv4Pools")
DescribePublicIpv4Pools(args) = ec2("DescribePublicIpv4Pools", args)

"""
    RejectVpcPeeringConnection

Rejects a VPC peering connection request. The VPC peering connection must be in the pending-acceptance state. Use the DescribeVpcPeeringConnections request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use DeleteVpcPeeringConnection.

Required Parameters:
{
  "VpcPeeringConnectionId": "The ID of the VPC peering connection."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RejectVpcPeeringConnection(args) = ec2("RejectVpcPeeringConnection", args)
"""
    DescribeInternetGateways

Describes one or more of your internet gateways.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    attachment.state - The current state of the attachment between the gateway and the VPC (available). Present only if a VPC is attached.    attachment.vpc-id - The ID of an attached VPC.    internet-gateway-id - The ID of the Internet gateway.    owner-id - The ID of the AWS account that owns the internet gateway.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  ",
  "InternetGatewayIds": "One or more internet gateway IDs. Default: Describes all your internet gateways."
}

"""
DescribeInternetGateways() = ec2("DescribeInternetGateways")
DescribeInternetGateways(args) = ec2("DescribeInternetGateways", args)

"""
    AdvertiseByoipCidr

Advertises an IPv4 or IPv6 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP). You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. We recommend that you stop advertising the BYOIP CIDR from other locations when you advertise it from AWS. To minimize down time, you can configure your AWS resources to use an address from a BYOIP CIDR before it is advertised, and then simultaneously stop advertising it from the current location and start advertising it through AWS. It can take a few minutes before traffic to the specified addresses starts routing to AWS because of BGP propagation delays. To stop advertising the BYOIP CIDR, use WithdrawByoipCidr.

Required Parameters:
{
  "Cidr": "The address range, in CIDR notation. This must be the exact range that you provisioned. You can't advertise only a portion of the provisioned range."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AdvertiseByoipCidr(args) = ec2("AdvertiseByoipCidr", args)
"""
    PurchaseScheduledInstances

Purchases the Scheduled Instances with the specified schedule. Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call DescribeScheduledInstanceAvailability to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call RunScheduledInstances during each scheduled time period. After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.

Required Parameters:
{
  "PurchaseRequests": "The purchase requests."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see Ensuring Idempotency."
}

"""

PurchaseScheduledInstances(args) = ec2("PurchaseScheduledInstances", args)
"""
    AssignIpv6Addresses

Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see IP Addresses Per Network Interface Per Instance Type in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "Ipv6AddressCount": "The number of IPv6 addresses to assign to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses.",
  "Ipv6Addresses": "One or more specific IPv6 addresses to be assigned to the network interface. You can't use this option if you're specifying a number of IPv6 addresses."
}

"""

AssignIpv6Addresses(args) = ec2("AssignIpv6Addresses", args)
"""
    DescribeExportImageTasks

Describes the specified export image tasks or all your export image tasks.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "A token that indicates the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "Filter tasks using the task-state filter and one of the following values: active, completed, deleting, or deleted.",
  "ExportImageTaskIds": "The IDs of the export image tasks."
}

"""
DescribeExportImageTasks() = ec2("DescribeExportImageTasks")
DescribeExportImageTasks(args) = ec2("DescribeExportImageTasks", args)

"""
    ModifyInstanceEventStartTime

Modifies the start time for a scheduled Amazon EC2 instance event.

Required Parameters:
{
  "NotBefore": "The new date and time when the event will take place.",
  "InstanceId": "The ID of the instance with the scheduled event.",
  "InstanceEventId": "The ID of the event whose date and time you are modifying."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyInstanceEventStartTime(args) = ec2("ModifyInstanceEventStartTime", args)
"""
    RejectTransitGatewayPeeringAttachment

Rejects a transit gateway peering attachment request.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the transit gateway peering attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RejectTransitGatewayPeeringAttachment(args) = ec2("RejectTransitGatewayPeeringAttachment", args)
"""
    DeleteClientVpnEndpoint

Deletes the specified Client VPN endpoint. You must disassociate all target networks before you can delete a Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN to be deleted."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteClientVpnEndpoint(args) = ec2("DeleteClientVpnEndpoint", args)
"""
    CreateInstanceExportTask

Exports a running or stopped instance to an S3 bucket. For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see Exporting an Instance as a VM Using VM Import/Export in the VM Import/Export User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "Description": "A description for the conversion task or the resource being exported. The maximum length is 255 bytes.",
  "ExportToS3Task": "The format and location for an instance export task.",
  "TargetEnvironment": "The target virtualization environment."
}

"""

CreateInstanceExportTask(args) = ec2("CreateInstanceExportTask", args)
"""
    RebootInstances

Requests a reboot of the specified instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored. If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot. For more information about troubleshooting, see Getting Console Output and Rebooting Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceIds": "The instance IDs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RebootInstances(args) = ec2("RebootInstances", args)
"""
    ResetFpgaImageAttribute

Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.

Required Parameters:
{
  "FpgaImageId": "The ID of the AFI."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Attribute": "The attribute."
}

"""

ResetFpgaImageAttribute(args) = ec2("ResetFpgaImageAttribute", args)
"""
    AttachVolume

Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name. Encrypted EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide. After you attach an EBS volume, you must make it available. For more information, see Making an EBS Volume Available For Use. If a volume has an AWS Marketplace product code:   The volume can be attached only to a stopped instance.   AWS Marketplace product codes are copied from the volume to the instance.   You must be subscribed to the product.   The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.   For more information, see Attaching Amazon EBS Volumes in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "VolumeId": "The ID of the EBS volume. The volume and instance must be within the same Availability Zone.",
  "Device": "The device name (for example, /dev/sdh or xvdh)."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AttachVolume(args) = ec2("AttachVolume", args)
"""
    ModifyVolumeAttribute

Modifies a volume attribute. By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume. You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.

Required Parameters:
{
  "VolumeId": "The ID of the volume."
}


Optional Parameters:
{
  "AutoEnableIO": "Indicates whether the volume should be auto-enabled for I/O operations.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyVolumeAttribute(args) = ec2("ModifyVolumeAttribute", args)
"""
    DeleteNetworkInterfacePermission

Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.

Required Parameters:
{
  "NetworkInterfacePermissionId": "The ID of the network interface permission."
}


Optional Parameters:
{
  "Force": "Specify true to remove the permission even if the network interface is attached to an instance.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteNetworkInterfacePermission(args) = ec2("DeleteNetworkInterfacePermission", args)
"""
    AttachInternetGateway

Attaches an internet gateway or a virtual private gateway to a VPC, enabling connectivity between the internet and the VPC. For more information about your VPC and internet gateway, see the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "InternetGatewayId": "The ID of the internet gateway.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AttachInternetGateway(args) = ec2("AttachInternetGateway", args)
"""
    AcceptVpcEndpointConnections

Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service.

Required Parameters:
{
  "ServiceId": "The ID of the VPC endpoint service.",
  "VpcEndpointIds": "The IDs of one or more interface VPC endpoints."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AcceptVpcEndpointConnections(args) = ec2("AcceptVpcEndpointConnections", args)
"""
    DescribeImportSnapshotTasks

Describes your import snapshot tasks.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "A token that indicates the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ImportTaskIds": "A list of import snapshot task IDs.",
  "Filters": "The filters."
}

"""
DescribeImportSnapshotTasks() = ec2("DescribeImportSnapshotTasks")
DescribeImportSnapshotTasks(args) = ec2("DescribeImportSnapshotTasks", args)

"""
    CreateDhcpOptions

Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see RFC 2132.    domain-name-servers - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. To have your instance receive a custom DNS hostname as specified in domain-name, you must set domain-name-servers to a custom DNS server.    domain-name - If you're using AmazonProvidedDNS in us-east-1, specify ec2.internal. If you're using AmazonProvidedDNS in another Region, specify region.compute.internal (for example, ap-northeast-1.compute.internal). Otherwise, specify a domain name (for example, MyCompany.com). This value is used to complete unqualified DNS hostnames. Important: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.    ntp-servers - The IP addresses of up to four Network Time Protocol (NTP) servers.    netbios-name-servers - The IP addresses of up to four NetBIOS name servers.    netbios-node-type - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see RFC 2132.   Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an internet gateway, make sure to set the domain-name-servers option either to AmazonProvidedDNS or to a domain name server of your choice. For more information, see DHCP Options Sets in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "DhcpConfigurations": "A DHCP configuration option."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateDhcpOptions(args) = ec2("CreateDhcpOptions", args)
"""
    ImportSnapshot

Imports a disk into an EBS snapshot.

Required Parameters:
{}


Optional Parameters:
{
  "Description": "The description string for the import snapshot task.",
  "RoleName": "The name of the role to use when not using the default role, 'vmimport'.",
  "DiskContainer": "Information about the disk container.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Encrypted": "Specifies whether the destination snapshot of the imported image should be encrypted. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using KmsKeyId. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.",
  "ClientToken": "Token to enable idempotency for VM import requests.",
  "KmsKeyId": "An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.  The CMK identifier may be provided in any of the following formats:    Key ID   Key alias. The alias ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the alias namespace, and then the CMK alias. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.   ARN using key ID. The ID ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the key namespace, and then the CMK ID. For example, arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.   ARN using key alias. The alias ARN contains the arn:aws:kms namespace, followed by the Region of the CMK, the AWS account ID of the CMK owner, the alias namespace, and then the CMK alias. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.    AWS parses KmsKeyId asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.  The specified CMK must exist in the Region that the snapshot is being copied to. Amazon EBS does not support asymmetric CMKs.",
  "ClientData": "The client-specific data."
}

"""
ImportSnapshot() = ec2("ImportSnapshot")
ImportSnapshot(args) = ec2("ImportSnapshot", args)

"""
    AttachNetworkInterface

Attaches a network interface to an instance.

Required Parameters:
{
  "DeviceIndex": "The index of the device for the network interface attachment.",
  "InstanceId": "The ID of the instance.",
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AttachNetworkInterface(args) = ec2("AttachNetworkInterface", args)
"""
    CreateTrafficMirrorFilterRule

Creates a Traffic Mirror filter rule.  A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror. You need the Traffic Mirror filter ID when you create the rule.

Required Parameters:
{
  "SourceCidrBlock": "The source CIDR block to assign to the Traffic Mirror rule.",
  "DestinationCidrBlock": "The destination CIDR block to assign to the Traffic Mirror rule.",
  "RuleNumber": "The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.",
  "RuleAction": "The action to take (accept | reject) on the filtered traffic.",
  "TrafficDirection": "The type of traffic (ingress | egress).",
  "TrafficMirrorFilterId": "The ID of the filter that this rule is associated with."
}


Optional Parameters:
{
  "Description": "The description of the Traffic Mirror rule.",
  "DestinationPortRange": "The destination port range.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "SourcePortRange": "The source port range.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "Protocol": "The protocol, for example UDP, to assign to the Traffic Mirror rule. For information about the protocol value, see Protocol Numbers on the Internet Assigned Numbers Authority (IANA) website."
}

"""

CreateTrafficMirrorFilterRule(args) = ec2("CreateTrafficMirrorFilterRule", args)
"""
    DescribeSecurityGroupReferences

[VPC only] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.

Required Parameters:
{
  "GroupId": "The IDs of the security groups in your account."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeSecurityGroupReferences(args) = ec2("DescribeSecurityGroupReferences", args)
"""
    DescribeVpcs

Describes one or more of your VPCs.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "VpcIds": "One or more VPC IDs. Default: Describes all your VPCs.",
  "Filters": "One or more filters.    cidr - The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, /28).    cidr-block-association.cidr-block - An IPv4 CIDR block associated with the VPC.    cidr-block-association.association-id - The association ID for an IPv4 CIDR block associated with the VPC.    cidr-block-association.state - The state of an IPv4 CIDR block associated with the VPC.    dhcp-options-id - The ID of a set of DHCP options.    ipv6-cidr-block-association.ipv6-cidr-block - An IPv6 CIDR block associated with the VPC.    ipv6-cidr-block-association.ipv6-pool - The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.    ipv6-cidr-block-association.association-id - The association ID for an IPv6 CIDR block associated with the VPC.    ipv6-cidr-block-association.state - The state of an IPv6 CIDR block associated with the VPC.    isDefault - Indicates whether the VPC is the default VPC.    owner-id - The ID of the AWS account that owns the VPC.    state - The state of the VPC (pending | available).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC.  "
}

"""
DescribeVpcs() = ec2("DescribeVpcs")
DescribeVpcs(args) = ec2("DescribeVpcs", args)

"""
    EnableEbsEncryptionByDefault

Enables EBS encryption by default for your account in the current Region. After you enable encryption by default, the EBS volumes that you create are are always encrypted, either using the default CMK or the CMK that you specified when you created each volume. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide. You can specify the default CMK for encryption by default using ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId. Enabling encryption by default has no effect on the encryption status of your existing volumes. After you enable encryption by default, you can no longer launch instances using instance types that do not support encryption. For more information, see Supported Instance Types.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
EnableEbsEncryptionByDefault() = ec2("EnableEbsEncryptionByDefault")
EnableEbsEncryptionByDefault(args) = ec2("EnableEbsEncryptionByDefault", args)

"""
    ModifyInstanceAttribute

Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.  Note: Using this action to change the security groups associated with an elastic network interface (ENI) attached to an instance in a VPC can result in an error if the instance has more than one ENI. To change the security groups associated with an ENI attached to an instance that has multiple ENIs, we recommend that you use the ModifyNetworkInterfaceAttribute action. To modify some attributes, the instance must be stopped. For more information, see Modifying Attributes of a Stopped Instance in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "BlockDeviceMappings": "Modifies the DeleteOnTermination attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for DeleteOnTermination, the default is true and the volume is deleted when the instance is terminated. To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see Updating the Block Device Mapping when Launching an Instance in the Amazon Elastic Compute Cloud User Guide.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Kernel": "Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see PV-GRUB.",
  "InstanceType": "Changes the instance type to the specified value. For more information, see Instance Types. If the instance type is not valid, the error returned is InvalidInstanceAttributeValue.",
  "UserData": "Changes the instance's user data to the specified value. If you are using an AWS SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.",
  "Groups": "[EC2-VPC] Changes the security groups of the instance. You must specify at least one security group, even if it's just the default security group for the VPC. You must specify the security group ID, not the security group name.",
  "Value": "A new value for the attribute. Use only with the kernel, ramdisk, userData, disableApiTermination, or instanceInitiatedShutdownBehavior attribute.",
  "EnaSupport": "Set to true to enable enhanced networking with ENA for the instance. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.",
  "InstanceInitiatedShutdownBehavior": "Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).",
  "SourceDestCheck": "Specifies whether source/destination checking is enabled. A value of true means that checking is enabled, and false means that checking is disabled. This value must be false for a NAT instance to perform NAT.",
  "SriovNetSupport": "Set to simple to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance. There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.",
  "Ramdisk": "Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see PV-GRUB.",
  "Attribute": "The name of the attribute.",
  "EbsOptimized": "Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.",
  "DisableApiTermination": "If the value is true, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances."
}

"""

ModifyInstanceAttribute(args) = ec2("ModifyInstanceAttribute", args)
"""
    ModifyInstancePlacement

Modifies the placement attributes for a specified instance. You can do the following:   Modify the affinity between an instance and a Dedicated Host. When affinity is set to host and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.   Change the Dedicated Host with which an instance is associated.   Change the instance tenancy of an instance from host to dedicated, or from dedicated to host.   Move an instance to or from a placement group.   At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request. To modify the host ID, tenancy, placement group, or partition for an instance, the instance must be in the stopped state.

Required Parameters:
{
  "InstanceId": "The ID of the instance that you are modifying."
}


Optional Parameters:
{
  "Tenancy": "The tenancy for the instance.",
  "PartitionNumber": "Reserved for future use.",
  "HostResourceGroupArn": "The ARN of the host resource group in which to place the instance.",
  "Affinity": "The affinity setting for the instance.",
  "GroupName": "The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of default. For cluster and partition placement groups, the instance must have a tenancy of default or dedicated. To remove an instance from a placement group, specify an empty string (\"\").",
  "HostId": "The ID of the Dedicated Host with which to associate the instance."
}

"""

ModifyInstancePlacement(args) = ec2("ModifyInstancePlacement", args)
"""
    StopInstances

Stops an Amazon EBS-backed instance. You can use the Stop action to hibernate an instance if the instance is enabled for hibernation and it meets the hibernation prerequisites. For more information, see Hibernate Your Instance in the Amazon Elastic Compute Cloud User Guide. We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage. You can't hibernate Spot Instances, and you can't stop or hibernate instance store-backed instances. For information about using hibernation for Spot Instances, see Hibernating Interrupted Spot Instances in the Amazon Elastic Compute Cloud User Guide. When you stop or hibernate an instance, we shut it down. You can restart your instance at any time. Before stopping or hibernating an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM, but hibernating an instance does preserve data stored in RAM. If an instance cannot hibernate successfully, a normal shutdown occurs. Stopping and hibernating an instance is different to rebooting or terminating it. For example, when you stop or hibernate an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, hibernating, and terminating instances, see Instance Lifecycle in the Amazon Elastic Compute Cloud User Guide. When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see Troubleshooting Stopping Your Instance in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceIds": "The IDs of the instances."
}


Optional Parameters:
{
  "Force": "Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances. Default: false ",
  "Hibernate": "Hibernates the instance if the instance was enabled for hibernation at launch. If the instance cannot hibernate successfully, a normal shutdown occurs. For more information, see Hibernate Your Instance in the Amazon Elastic Compute Cloud User Guide.  Default: false ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

StopInstances(args) = ec2("StopInstances", args)
"""
    ModifyVolume

You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you may be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying an EBS volume running Linux, see Modifying the Size, IOPS, or Type of an EBS Volume on Linux. For more information about modifying an EBS volume running Windows, see Modifying the Size, IOPS, or Type of an EBS Volume on Windows.   When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For information about extending a Linux file system, see Extending a Linux File System. For information about extending a Windows file system, see Extending a Windows File System.   You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the Amazon CloudWatch Events User Guide. You can also track the status of a modification using DescribeVolumesModifications. For information about tracking status changes using either method, see Monitoring Volume Modifications.  With previous-generation instance types, resizing an EBS volume may require detaching and reattaching the volume or stopping and restarting the instance. For more information, see Modifying the Size, IOPS, or Type of an EBS Volume on Linux and Modifying the Size, IOPS, or Type of an EBS Volume on Windows. If you reach the maximum volume modification rate per volume limit, you will need to wait at least six hours before applying further modifications to the affected EBS volume.

Required Parameters:
{
  "VolumeId": "The ID of the volume."
}


Optional Parameters:
{
  "VolumeType": "The target EBS volume type of the volume. Default: If no type is specified, the existing type is retained.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Iops": "The target IOPS rate of the volume. This is only valid for Provisioned IOPS SSD (io1) volumes. For more information, see Provisioned IOPS SSD (io1) Volumes. Default: If no IOPS value is specified, the existing value is retained.",
  "Size": "The target size of the volume, in GiB. The target volume size must be greater than or equal to than the existing size of the volume. For information about available EBS volume sizes, see Amazon EBS Volume Types. Default: If no size is specified, the existing size is retained."
}

"""

ModifyVolume(args) = ec2("ModifyVolume", args)
"""
    GetConsoleScreenshot

Retrieve a JPG-format screenshot of a running instance to help with troubleshooting. The returned content is Base64-encoded.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "WakeUp": "When set to true, acts as keystroke input and wakes up an instance that's in standby or \"sleep\" mode."
}

"""

GetConsoleScreenshot(args) = ec2("GetConsoleScreenshot", args)
"""
    GetPasswordData

Retrieves the encrypted administrator password for a running Windows instance. The Windows password is generated at boot by the EC2Config service or EC2Launch scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see EC2Config and EC2Launch in the Amazon Elastic Compute Cloud User Guide. For the EC2Config service, the password is not generated for rebundled AMIs unless Ec2SetPassword is enabled before bundling. The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file. When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.

Required Parameters:
{
  "InstanceId": "The ID of the Windows instance."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetPasswordData(args) = ec2("GetPasswordData", args)
"""
    DeleteNatGateway

Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.

Required Parameters:
{
  "NatGatewayId": "The ID of the NAT gateway."
}


Optional Parameters:
{}

"""

DeleteNatGateway(args) = ec2("DeleteNatGateway", args)
"""
    CreateTransitGatewayRoute

Creates a static route for the specified transit gateway route table.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR range used for destination matches. Routing decisions are based on the most specific match.",
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "Blackhole": "Indicates whether to drop traffic that matches this route.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateTransitGatewayRoute(args) = ec2("CreateTransitGatewayRoute", args)
"""
    DescribeSpotFleetInstances

Describes the running instances for the specified Spot Fleet.

Required Parameters:
{
  "SpotFleetRequestId": "The ID of the Spot Fleet request."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeSpotFleetInstances(args) = ec2("DescribeSpotFleetInstances", args)
"""
    AcceptVpcPeeringConnection

Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the pending-acceptance state, and you must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to view your outstanding VPC peering connection requests. For an inter-Region VPC peering connection request, you must accept the VPC peering connection in the Region of the accepter VPC.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "VpcPeeringConnectionId": "The ID of the VPC peering connection. You must specify this parameter in the request."
}

"""
AcceptVpcPeeringConnection() = ec2("AcceptVpcPeeringConnection")
AcceptVpcPeeringConnection(args) = ec2("AcceptVpcPeeringConnection", args)

"""
    EnableFastSnapshotRestores

Enables fast snapshot restores for the specified snapshots in the specified Availability Zones. You get the full benefit of fast snapshot restores after they enter the enabled state. To get the current state of fast snapshot restores, use DescribeFastSnapshotRestores. To disable fast snapshot restores, use DisableFastSnapshotRestores. For more information, see Amazon EBS Fast Snapshot Restore in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SourceSnapshotIds": "The IDs of one or more snapshots. For example, snap-1234567890abcdef0. You can specify a snapshot that was shared with you from another AWS account.",
  "AvailabilityZones": "One or more Availability Zones. For example, us-east-2a."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

EnableFastSnapshotRestores(args) = ec2("EnableFastSnapshotRestores", args)
"""
    DescribeImageAttribute

Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.

Required Parameters:
{
  "ImageId": "The ID of the AMI.",
  "Attribute": "The AMI attribute.  Note: Depending on your account privileges, the blockDeviceMapping attribute may return a Client.AuthFailure error. If this happens, use DescribeImages to get information about the block device mapping for the AMI."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeImageAttribute(args) = ec2("DescribeImageAttribute", args)
"""
    AuthorizeSecurityGroupEgress

[VPC only] Adds the specified egress rules to a security group for use with a VPC. An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances associated with the specified destination security groups. You specify a protocol for each rule (for example, TCP). For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes. Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur. For more information about VPC security group limits, see Amazon VPC Limits.

Required Parameters:
{
  "GroupId": "The ID of the security group."
}


Optional Parameters:
{
  "SourceSecurityGroupName": "Not supported. Use a set of IP permissions to specify a destination security group.",
  "SourceSecurityGroupOwnerId": "Not supported. Use a set of IP permissions to specify a destination security group.",
  "CidrIp": "Not supported. Use a set of IP permissions to specify the CIDR.",
  "IpProtocol": "Not supported. Use a set of IP permissions to specify the protocol name or number.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "FromPort": "Not supported. Use a set of IP permissions to specify the port.",
  "ToPort": "Not supported. Use a set of IP permissions to specify the port.",
  "IpPermissions": "The sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions."
}

"""

AuthorizeSecurityGroupEgress(args) = ec2("AuthorizeSecurityGroupEgress", args)
"""
    CreateLaunchTemplateVersion

Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version. Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.

Required Parameters:
{
  "LaunchTemplateData": "The information for the launch template."
}


Optional Parameters:
{
  "SourceVersion": "The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in LaunchTemplateData. Snapshots applied to the block device mapping are ignored when creating a new version unless they are explicitly included.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateId": "The ID of the launch template. You must specify either the launch template ID or launch template name in the request.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency. Constraint: Maximum 128 ASCII characters.",
  "VersionDescription": "A description for the version of the launch template.",
  "LaunchTemplateName": "The name of the launch template. You must specify either the launch template ID or launch template name in the request."
}

"""

CreateLaunchTemplateVersion(args) = ec2("CreateLaunchTemplateVersion", args)
"""
    DeleteInternetGateway

Deletes the specified internet gateway. You must detach the internet gateway from the VPC before you can delete it.

Required Parameters:
{
  "InternetGatewayId": "The ID of the internet gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteInternetGateway(args) = ec2("DeleteInternetGateway", args)
"""
    DeleteVpc

Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpc(args) = ec2("DeleteVpc", args)
"""
    CreateTransitGateway

Creates a transit gateway. You can use a transit gateway to interconnect your virtual private clouds (VPC) and on-premises networks. After the transit gateway enters the available state, you can attach your VPCs and VPN connections to the transit gateway. To attach your VPCs, use CreateTransitGatewayVpcAttachment. To attach a VPN connection, use CreateCustomerGateway to create a customer gateway and specify the ID of the customer gateway and the ID of the transit gateway in a call to CreateVpnConnection. When you create a transit gateway, we create a default transit gateway route table and use it as the default association route table and the default propagation route table. You can use CreateTransitGatewayRouteTable to create additional transit gateway route tables. If you disable automatic route propagation, we do not create a default transit gateway route table. You can use EnableTransitGatewayRouteTablePropagation to propagate routes from a resource attachment to a transit gateway route table. If you disable automatic associations, you can use AssociateTransitGatewayRouteTable to associate a resource attachment with a transit gateway route table.

Required Parameters:
{}


Optional Parameters:
{
  "Description": "A description of the transit gateway.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the transit gateway.",
  "Options": "The transit gateway options."
}

"""
CreateTransitGateway() = ec2("CreateTransitGateway")
CreateTransitGateway(args) = ec2("CreateTransitGateway", args)

"""
    DeleteDhcpOptions

Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.

Required Parameters:
{
  "DhcpOptionsId": "The ID of the DHCP options set."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteDhcpOptions(args) = ec2("DeleteDhcpOptions", args)
"""
    DeleteEgressOnlyInternetGateway

Deletes an egress-only internet gateway.

Required Parameters:
{
  "EgressOnlyInternetGatewayId": "The ID of the egress-only internet gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteEgressOnlyInternetGateway(args) = ec2("DeleteEgressOnlyInternetGateway", args)
"""
    DisableVpcClassicLink

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisableVpcClassicLink(args) = ec2("DisableVpcClassicLink", args)
"""
    DescribeInstanceTypeOfferings

Returns a list of all instance types offered. The results can be filtered by location (Region or Availability Zone). If no location is specified, the instance types offered in the current Region are returned.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the next token value.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    location - This depends on the location type. For example, if the location type is region (default), the location is the Region code (for example, us-east-2.)    instance-type - The instance type.  ",
  "LocationType": "The location type."
}

"""
DescribeInstanceTypeOfferings() = ec2("DescribeInstanceTypeOfferings")
DescribeInstanceTypeOfferings(args) = ec2("DescribeInstanceTypeOfferings", args)

"""
    CreateTrafficMirrorSession

Creates a Traffic Mirror session. A Traffic Mirror session actively copies packets from a Traffic Mirror source to a Traffic Mirror target. Create a filter, and then assign it to the session to define a subset of the traffic to mirror, for example all TCP traffic. The Traffic Mirror source and the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in a different VPC connected via VPC peering or a transit gateway.  By default, no traffic is mirrored. Use CreateTrafficMirrorFilter to create filter rules that specify the traffic to mirror.

Required Parameters:
{
  "SessionNumber": "The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets. Valid values are 1-32766.",
  "NetworkInterfaceId": "The ID of the source network interface.",
  "TrafficMirrorTargetId": "The ID of the Traffic Mirror target.",
  "TrafficMirrorFilterId": "The ID of the Traffic Mirror filter."
}


Optional Parameters:
{
  "Description": "The description of the Traffic Mirror session.",
  "PacketLength": "The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target. If you do not want to mirror the entire packet, use the PacketLength parameter to specify the number of bytes in each packet to mirror.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to assign to a Traffic Mirror session.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "VirtualNetworkId": "The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see RFC 7348. If you do not specify a VirtualNetworkId, an account-wide unique id is chosen at random."
}

"""

CreateTrafficMirrorSession(args) = ec2("CreateTrafficMirrorSession", args)
"""
    DescribeInstanceStatus

Describes the status of the specified instances or all of your instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances. Instance status includes the following components:    Status checks - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see Status Checks for Your Instances and Troubleshooting Instances with Failed Status Checks in the Amazon Elastic Compute Cloud User Guide.    Scheduled events - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see Scheduled Events for Your Instances in the Amazon Elastic Compute Cloud User Guide.    Instance state - You can manage your instances from the moment you launch them through their termination. For more information, see Instance Lifecycle in the Amazon Elastic Compute Cloud User Guide.  

Required Parameters:
{}


Optional Parameters:
{
  "InstanceIds": "The instance IDs. Default: Describes all your instances. Constraints: Maximum 100 explicitly specified instance IDs.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.",
  "NextToken": "The token to retrieve the next page of results.",
  "IncludeAllInstances": "When true, includes the health status for all instances. When false, includes the health status for running instances only. Default: false ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    availability-zone - The Availability Zone of the instance.    event.code - The code for the scheduled event (instance-reboot | system-reboot | system-maintenance | instance-retirement | instance-stop).    event.description - A description of the event.    event.instance-event-id - The ID of the event whose date and time you are modifying.    event.not-after - The latest end time for the scheduled event (for example, 2014-09-15T17:15:20.000Z).    event.not-before - The earliest start time for the scheduled event (for example, 2014-09-15T17:15:20.000Z).    event.not-before-deadline - The deadline for starting the event (for example, 2014-09-15T17:15:20.000Z).    instance-state-code - The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).    instance-state-name - The state of the instance (pending | running | shutting-down | terminated | stopping | stopped).    instance-status.reachability - Filters on instance status where the name is reachability (passed | failed | initializing | insufficient-data).    instance-status.status - The status of the instance (ok | impaired | initializing | insufficient-data | not-applicable).    system-status.reachability - Filters on system status where the name is reachability (passed | failed | initializing | insufficient-data).    system-status.status - The system status of the instance (ok | impaired | initializing | insufficient-data | not-applicable).  "
}

"""
DescribeInstanceStatus() = ec2("DescribeInstanceStatus")
DescribeInstanceStatus(args) = ec2("DescribeInstanceStatus", args)

"""
    DeleteLaunchTemplate

Deletes a launch template. Deleting a launch template deletes all of its versions.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateId": "The ID of the launch template. You must specify either the launch template ID or launch template name in the request.",
  "LaunchTemplateName": "The name of the launch template. You must specify either the launch template ID or launch template name in the request."
}

"""
DeleteLaunchTemplate() = ec2("DeleteLaunchTemplate")
DeleteLaunchTemplate(args) = ec2("DeleteLaunchTemplate", args)

"""
    DeleteTrafficMirrorFilterRule

Deletes the specified Traffic Mirror rule.

Required Parameters:
{
  "TrafficMirrorFilterRuleId": "The ID of the Traffic Mirror rule."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTrafficMirrorFilterRule(args) = ec2("DeleteTrafficMirrorFilterRule", args)
"""
    CreateVolume

Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see Regions and Endpoints. You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume. You can create encrypted volumes. Encrypted volumes must be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide. You can tag your volumes during creation. For more information, see Tagging Your Amazon EC2 Resources in the Amazon Elastic Compute Cloud User Guide. For more information, see Creating an Amazon EBS Volume in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "AvailabilityZone": "The Availability Zone in which to create the volume."
}


Optional Parameters:
{
  "SnapshotId": "The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.",
  "VolumeType": "The volume type. This can be gp2 for General Purpose SSD, io1 for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1 for Cold HDD, or standard for Magnetic volumes. Default: gp2 ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the volume during creation.",
  "Encrypted": "Specifies whether the volume should be encrypted. The effect of setting the encryption state to true depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see Encryption by Default in the Amazon Elastic Compute Cloud User Guide. Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see Supported Instance Types.",
  "KmsKeyId": "The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If KmsKeyId is specified, the encrypted state must be true. You can specify the CMK using any of the following:   Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.   Key alias. For example, alias/ExampleAlias.   Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.   Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.   AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.",
  "Iops": "The number of I/O operations per second (IOPS) to provision for the volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 64,000 IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on Nitro-based instances. Other instance families guarantee performance up to 32,000 IOPS. For more information, see Amazon EBS Volume Types in the Amazon Elastic Compute Cloud User Guide. This parameter is valid only for Provisioned IOPS SSD (io1) volumes.",
  "Size": "The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. Constraints: 1-16,384 for gp2, 4-16,384 for io1, 500-16,384 for st1, 500-16,384 for sc1, and 1-1,024 for standard. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size. Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.",
  "OutpostArn": "The Amazon Resource Name (ARN) of the Outpost."
}

"""

CreateVolume(args) = ec2("CreateVolume", args)
"""
    DescribeAddresses

Describes the specified Elastic IP addresses or all of your Elastic IP addresses. An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see Elastic IP Addresses in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "AllocationIds": "[EC2-VPC] Information about the allocation IDs.",
  "PublicIps": "One or more Elastic IP addresses. Default: Describes all your Elastic IP addresses.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    allocation-id - [EC2-VPC] The allocation ID for the address.    association-id - [EC2-VPC] The association ID for the address.    domain - Indicates whether the address is for use in EC2-Classic (standard) or in a VPC (vpc).    instance-id - The ID of the instance the address is associated with, if any.    network-border-group - The location from where the IP address is advertised.    network-interface-id - [EC2-VPC] The ID of the network interface that the address is associated with, if any.    network-interface-owner-id - The AWS account ID of the owner.    private-ip-address - [EC2-VPC] The private IP address associated with the Elastic IP address.    public-ip - The Elastic IP address.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeAddresses() = ec2("DescribeAddresses")
DescribeAddresses(args) = ec2("DescribeAddresses", args)

"""
    ModifyNetworkInterfaceAttribute

Modifies the specified network interface attribute. You can specify only one attribute at a time. You can use this action to attach and detach security groups from an existing EC2 instance.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "SourceDestCheck": "Indicates whether source/destination checking is enabled. A value of true means checking is enabled, and false means checking is disabled. This value must be false for a NAT instance to perform NAT. For more information, see NAT Instances in the Amazon Virtual Private Cloud User Guide.",
  "Description": "A description for the network interface.",
  "Attachment": "Information about the interface attachment. If modifying the 'delete on termination' attribute, you must specify the ID of the interface attachment.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Groups": "Changes the security groups for the network interface. The new set of groups you specify replaces the current set. You must specify at least one group, even if it's just the default security group in the VPC. You must specify the ID of the security group, not the name."
}

"""

ModifyNetworkInterfaceAttribute(args) = ec2("ModifyNetworkInterfaceAttribute", args)
"""
    UnassignPrivateIpAddresses

Unassigns one or more secondary private IP addresses from a network interface.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface.",
  "PrivateIpAddresses": "The secondary private IP addresses to unassign from the network interface. You can specify this option multiple times to unassign more than one IP address."
}


Optional Parameters:
{}

"""

UnassignPrivateIpAddresses(args) = ec2("UnassignPrivateIpAddresses", args)
"""
    CreateReservedInstancesListing

Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the DescribeReservedInstances operation.  Only Standard Reserved Instances can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances cannot be sold.  The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances. To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the DescribeReservedInstancesListings operation. For more information, see Reserved Instance Marketplace in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceCount": "The number of instances that are a part of a Reserved Instance account to be listed in the Reserved Instance Marketplace. This number should be less than or equal to the instance count associated with the Reserved Instance ID specified in this call.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure idempotency of your listings. This helps avoid duplicate listings. For more information, see Ensuring Idempotency.",
  "PriceSchedules": "A list specifying the price of the Standard Reserved Instance for each month remaining in the Reserved Instance term.",
  "ReservedInstancesId": "The ID of the active Standard Reserved Instance."
}


Optional Parameters:
{}

"""

CreateReservedInstancesListing(args) = ec2("CreateReservedInstancesListing", args)
"""
    WithdrawByoipCidr

Stops advertising an address range that is provisioned as an address pool. You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. It can take a few minutes before traffic to the specified addresses stops routing to AWS because of BGP propagation delays.

Required Parameters:
{
  "Cidr": "The address range, in CIDR notation."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

WithdrawByoipCidr(args) = ec2("WithdrawByoipCidr", args)
"""
    CreateNetworkAcl

Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC. For more information, see Network ACLs in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateNetworkAcl(args) = ec2("CreateNetworkAcl", args)
"""
    AssociateTransitGatewayRouteTable

Associates the specified attachment with the specified transit gateway route table. You can associate only one route table with an attachment.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AssociateTransitGatewayRouteTable(args) = ec2("AssociateTransitGatewayRouteTable", args)
"""
    ResetImageAttribute

Resets an attribute of an AMI to its default value.  The productCodes attribute can't be reset. 

Required Parameters:
{
  "ImageId": "The ID of the AMI.",
  "Attribute": "The attribute to reset (currently you can only reset the launch permission attribute)."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ResetImageAttribute(args) = ec2("ResetImageAttribute", args)
"""
    DescribeSnapshotAttribute

Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time. For more information about EBS snapshots, see Amazon EBS Snapshots in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SnapshotId": "The ID of the EBS snapshot.",
  "Attribute": "The snapshot attribute you would like to view."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeSnapshotAttribute(args) = ec2("DescribeSnapshotAttribute", args)
"""
    AssociateAddress

Associates an Elastic IP address with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account. An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see Elastic IP Addresses in the Amazon Elastic Compute Cloud User Guide. [EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account. [VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address. You cannot associate an Elastic IP address with an interface in a different network border group.  This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the Elastic IP Addresses section of Amazon EC2 Pricing. 

Required Parameters:
{}


Optional Parameters:
{
  "PrivateIpAddress": "[EC2-VPC] The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.",
  "InstanceId": "The ID of the instance. This is required for EC2-Classic. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. The operation fails if you specify an instance ID unless exactly one network interface is attached.",
  "NetworkInterfaceId": "[EC2-VPC] The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AllocationId": "[EC2-VPC] The allocation ID. This is required for EC2-VPC.",
  "PublicIp": "The Elastic IP address to associate with the instance. This is required for EC2-Classic.",
  "AllowReassociation": "[EC2-VPC] For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource."
}

"""
AssociateAddress() = ec2("AssociateAddress")
AssociateAddress(args) = ec2("AssociateAddress", args)

"""
    DeleteVpcEndpointConnectionNotifications

Deletes one or more VPC endpoint connection notifications.

Required Parameters:
{
  "ConnectionNotificationIds": "One or more notification IDs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpcEndpointConnectionNotifications(args) = ec2("DeleteVpcEndpointConnectionNotifications", args)
"""
    DisassociateClientVpnTargetNetwork

Disassociates a target network from the specified Client VPN endpoint. When you disassociate the last target network from a Client VPN, the following happens:   The route that was automatically added for the VPC is deleted   All active client connections are terminated   New client connections are disallowed   The Client VPN endpoint's status changes to pending-associate   

Required Parameters:
{
  "AssociationId": "The ID of the target network association.",
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint from which to disassociate the target network."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisassociateClientVpnTargetNetwork(args) = ec2("DisassociateClientVpnTargetNetwork", args)
"""
    EnableVpcClassicLinkDnsSupport

Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see ClassicLink in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "VpcId": "The ID of the VPC."
}

"""
EnableVpcClassicLinkDnsSupport() = ec2("EnableVpcClassicLinkDnsSupport")
EnableVpcClassicLinkDnsSupport(args) = ec2("EnableVpcClassicLinkDnsSupport", args)

"""
    DescribeReservedInstancesModifications

Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned. For more information, see Modifying Reserved Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "ReservedInstancesModificationIds": "IDs for the submitted modification request.",
  "NextToken": "The token to retrieve the next page of results.",
  "Filters": "One or more filters.    client-token - The idempotency token for the modification request.    create-date - The time when the modification request was created.    effective-date - The time when the modification becomes effective.    modification-result.reserved-instances-id - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is fulfilled.    modification-result.target-configuration.availability-zone - The Availability Zone for the new Reserved Instances.    modification-result.target-configuration.instance-count  - The number of new Reserved Instances.    modification-result.target-configuration.instance-type - The instance type of the new Reserved Instances.    modification-result.target-configuration.platform - The network platform of the new Reserved Instances (EC2-Classic | EC2-VPC).    reserved-instances-id - The ID of the Reserved Instances modified.    reserved-instances-modification-id - The ID of the modification request.    status - The status of the Reserved Instances modification request (processing | fulfilled | failed).    status-message - The reason for the status.    update-date - The time when the modification request was last updated.  "
}

"""
DescribeReservedInstancesModifications() = ec2("DescribeReservedInstancesModifications")
DescribeReservedInstancesModifications(args) = ec2("DescribeReservedInstancesModifications", args)

"""
    ExportClientVpnClientCertificateRevocationList

Downloads the client certificate revocation list for the specified Client VPN endpoint.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ExportClientVpnClientCertificateRevocationList(args) = ec2("ExportClientVpnClientCertificateRevocationList", args)
"""
    DescribeVpcEndpointServicePermissions

Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.

Required Parameters:
{
  "ServiceId": "The ID of the service."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. This value can be between 5 and 1,000; if MaxResults is given a value larger than 1,000, only 1,000 results are returned.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    principal - The ARN of the principal.    principal-type - The principal type (All | Service | OrganizationUnit | Account | User | Role).  "
}

"""

DescribeVpcEndpointServicePermissions(args) = ec2("DescribeVpcEndpointServicePermissions", args)
"""
    ModifyEbsDefaultKmsKeyId

Changes the default customer master key (CMK) for EBS encryption by default for your account in this Region. AWS creates a unique AWS managed CMK in each Region for use with encryption by default. If you change the default CMK to a symmetric customer managed CMK, it is used instead of the AWS managed CMK. To reset the default CMK to the AWS managed CMK for EBS, use ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric CMKs. If you delete or disable the customer managed CMK that you specified for use with encryption by default, your instances will fail to launch. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "KmsKeyId": "The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If KmsKeyId is specified, the encrypted state must be true. You can specify the CMK using any of the following:   Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.   Key alias. For example, alias/ExampleAlias.   Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.   Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.   AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails. Amazon EBS does not support asymmetric CMKs."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyEbsDefaultKmsKeyId(args) = ec2("ModifyEbsDefaultKmsKeyId", args)
"""
    ModifyTransitGatewayVpcAttachment

Modifies the specified VPC attachment.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Options": "The new VPC attachment options.  You cannot modify the IPv6 options. ",
  "AddSubnetIds": "The IDs of one or more subnets to add. You can specify at most one subnet per Availability Zone.",
  "RemoveSubnetIds": "The IDs of one or more subnets to remove."
}

"""

ModifyTransitGatewayVpcAttachment(args) = ec2("ModifyTransitGatewayVpcAttachment", args)
"""
    DeleteCustomerGateway

Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.

Required Parameters:
{
  "CustomerGatewayId": "The ID of the customer gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteCustomerGateway(args) = ec2("DeleteCustomerGateway", args)
"""
    DeleteLaunchTemplateVersions

Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using DeleteLaunchTemplate.

Required Parameters:
{
  "Versions": "The version numbers of one or more launch template versions to delete."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LaunchTemplateId": "The ID of the launch template. You must specify either the launch template ID or launch template name in the request.",
  "LaunchTemplateName": "The name of the launch template. You must specify either the launch template ID or launch template name in the request."
}

"""

DeleteLaunchTemplateVersions(args) = ec2("DeleteLaunchTemplateVersions", args)
"""
    DescribeHostReservations

Describes reservations that are associated with Dedicated Hosts in your account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value. This value can be between 5 and 500. If maxResults is given a larger value than 500, you receive an error.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "HostReservationIdSet": "The host reservation IDs.",
  "Filter": "The filters.    instance-family - The instance family (for example, m4).    payment-option - The payment option (NoUpfront | PartialUpfront | AllUpfront).    state - The state of the reservation (payment-pending | payment-failed | active | retired).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeHostReservations() = ec2("DescribeHostReservations")
DescribeHostReservations(args) = ec2("DescribeHostReservations", args)

"""
    EnableTransitGatewayRouteTablePropagation

Enables the specified attachment to propagate routes to the specified propagation route table.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment.",
  "TransitGatewayRouteTableId": "The ID of the propagation route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

EnableTransitGatewayRouteTablePropagation(args) = ec2("EnableTransitGatewayRouteTablePropagation", args)
"""
    DeleteVpnGateway

Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.

Required Parameters:
{
  "VpnGatewayId": "The ID of the virtual private gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpnGateway(args) = ec2("DeleteVpnGateway", args)
"""
    CreateNetworkInterface

Creates a network interface in the specified subnet. For more information about network interfaces, see Elastic Network Interfaces in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "SubnetId": "The ID of the subnet to associate with the network interface."
}


Optional Parameters:
{
  "Ipv6AddressCount": "The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true, you can specify 0 to override this setting.",
  "InterfaceType": "Indicates the type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa. For more information, see  Elastic Fabric Adapter in the Amazon Elastic Compute Cloud User Guide.",
  "Description": "A description for the network interface.",
  "PrivateIpAddress": "The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in privateIpAddresses as primary (only one IP address can be designated as primary).",
  "SecondaryPrivateIpAddressCount": "The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using privateIpAddresses. The number of IP addresses you can assign to a network interface varies by instance type. For more information, see IP Addresses Per ENI Per Instance Type in the Amazon Virtual Private Cloud User Guide.",
  "Ipv6Addresses": "One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can't use this option if you're specifying a number of IPv6 addresses.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Groups": "The IDs of one or more security groups.",
  "PrivateIpAddresses": "One or more private IPv4 addresses."
}

"""

CreateNetworkInterface(args) = ec2("CreateNetworkInterface", args)
"""
    DetachVpnGateway

Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described). You must wait for the attachment's state to switch to detached before you can delete the VPC or attach a different VPC to the virtual private gateway.

Required Parameters:
{
  "VpnGatewayId": "The ID of the virtual private gateway.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DetachVpnGateway(args) = ec2("DetachVpnGateway", args)
"""
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

Describes the associations between virtual interface groups and local gateway route tables.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds": "The IDs of the associations.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters."
}

"""
DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations() = ec2("DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations")
DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(args) = ec2("DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations", args)

"""
    DeregisterTransitGatewayMulticastGroupMembers

Deregisters the specified members (network interfaces) from the transit gateway multicast group.

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "GroupIpAddress": "The IP address assigned to the transit gateway multicast group.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkInterfaceIds": "The IDs of the group members' network interfaces."
}

"""
DeregisterTransitGatewayMulticastGroupMembers() = ec2("DeregisterTransitGatewayMulticastGroupMembers")
DeregisterTransitGatewayMulticastGroupMembers(args) = ec2("DeregisterTransitGatewayMulticastGroupMembers", args)

"""
    MonitorInstances

Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see Monitoring Your Instances and Volumes in the Amazon Elastic Compute Cloud User Guide. To disable detailed monitoring, see .

Required Parameters:
{
  "InstanceIds": "The IDs of the instances."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

MonitorInstances(args) = ec2("MonitorInstances", args)
"""
    AcceptTransitGatewayPeeringAttachment

Accepts a transit gateway peering attachment request. The peering attachment must be in the pendingAcceptance state.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the transit gateway attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AcceptTransitGatewayPeeringAttachment(args) = ec2("AcceptTransitGatewayPeeringAttachment", args)
"""
    DescribeScheduledInstances

Describes the specified Scheduled Instances or all your Scheduled Instances.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "SlotStartTimeRange": "The time period for the first schedule to start.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    availability-zone - The Availability Zone (for example, us-west-2a).    instance-type - The instance type (for example, c4.large).    network-platform - The network platform (EC2-Classic or EC2-VPC).    platform - The platform (Linux/UNIX or Windows).  ",
  "ScheduledInstanceIds": "The Scheduled Instance IDs."
}

"""
DescribeScheduledInstances() = ec2("DescribeScheduledInstances")
DescribeScheduledInstances(args) = ec2("DescribeScheduledInstances", args)

"""
    AssociateIamInstanceProfile

Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "IamInstanceProfile": "The IAM instance profile."
}


Optional Parameters:
{}

"""

AssociateIamInstanceProfile(args) = ec2("AssociateIamInstanceProfile", args)
"""
    DeleteNetworkAcl

Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.

Required Parameters:
{
  "NetworkAclId": "The ID of the network ACL."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteNetworkAcl(args) = ec2("DeleteNetworkAcl", args)
"""
    ExportImage

Exports an Amazon Machine Image (AMI) to a VM file. For more information, see Exporting a VM Directory from an Amazon Machine Image (AMI) in the VM Import/Export User Guide.

Required Parameters:
{
  "DiskImageFormat": "The disk image format.",
  "S3ExportLocation": "Information about the destination S3 bucket. The bucket must exist and grant WRITE and READ_ACP permissions to the AWS account vm-import-export@amazon.com.",
  "ImageId": "The ID of the image."
}


Optional Parameters:
{
  "Description": "A description of the image being exported. The maximum length is 255 bytes.",
  "RoleName": "The name of the role that grants VM Import/Export permission to export images to your S3 bucket. If this parameter is not specified, the default role is named 'vmimport'.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "Token to enable idempotency for export image requests."
}

"""

ExportImage(args) = ec2("ExportImage", args)
"""
    GetTransitGatewayMulticastDomainAssociations

Gets information about the associations for the transit gateway multicast domain.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    resource-id - The ID of the resource.    resource-type - The type of resource. The valid value is: vpc.    state - The state of the subnet association. Valid values are associated | associating | disassociated | disassociating.    subnet-id - The ID of the subnet.    transit-gateway-attachment-id - The id of the transit gateway attachment.  "
}

"""
GetTransitGatewayMulticastDomainAssociations() = ec2("GetTransitGatewayMulticastDomainAssociations")
GetTransitGatewayMulticastDomainAssociations(args) = ec2("GetTransitGatewayMulticastDomainAssociations", args)

"""
    ModifyVpcEndpointConnectionNotification

Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified. 

Required Parameters:
{
  "ConnectionNotificationId": "The ID of the notification."
}


Optional Parameters:
{
  "ConnectionNotificationArn": "The ARN for the SNS topic for the notification.",
  "ConnectionEvents": "One or more events for the endpoint. Valid values are Accept, Connect, Delete, and Reject.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyVpcEndpointConnectionNotification(args) = ec2("ModifyVpcEndpointConnectionNotification", args)
"""
    DescribeLocalGatewayRouteTables

Describes one or more local gateway route tables. By default, all local gateway route tables are described. Alternatively, you can filter the results.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "LocalGatewayRouteTableIds": "The IDs of the local gateway route tables.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters."
}

"""
DescribeLocalGatewayRouteTables() = ec2("DescribeLocalGatewayRouteTables")
DescribeLocalGatewayRouteTables(args) = ec2("DescribeLocalGatewayRouteTables", args)

"""
    DescribeReservedInstances

Describes one or more of the Reserved Instances that you purchased. For more information about Reserved Instances, see Reserved Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "OfferingClass": "Describes whether the Reserved Instance is Standard or Convertible.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ReservedInstancesIds": "One or more Reserved Instance IDs. Default: Describes all your Reserved Instances, or only those otherwise specified.",
  "OfferingType": "The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the Medium Utilization Reserved Instance offering type.",
  "Filters": "One or more filters.    availability-zone - The Availability Zone where the Reserved Instance can be used.    duration - The duration of the Reserved Instance (one year or three years), in seconds (31536000 | 94608000).    end - The time when the Reserved Instance expires (for example, 2015-08-07T11:54:42.000Z).    fixed-price - The purchase price of the Reserved Instance (for example, 9800.0).    instance-type - The instance type that is covered by the reservation.    scope - The scope of the Reserved Instance (Region or Availability Zone).    product-description - The Reserved Instance product platform description. Instances that include (Amazon VPC) in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC (Linux/UNIX | Linux/UNIX (Amazon VPC) | SUSE Linux | SUSE Linux (Amazon VPC) | Red Hat Enterprise Linux | Red Hat Enterprise Linux (Amazon VPC) | Windows | Windows (Amazon VPC) | Windows with SQL Server Standard | Windows with SQL Server Standard (Amazon VPC) | Windows with SQL Server Web | Windows with SQL Server Web (Amazon VPC) | Windows with SQL Server Enterprise | Windows with SQL Server Enterprise (Amazon VPC)).    reserved-instances-id - The ID of the Reserved Instance.    start - The time at which the Reserved Instance purchase request was placed (for example, 2014-08-07T11:54:42.000Z).    state - The state of the Reserved Instance (payment-pending | active | payment-failed | retired).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    usage-price - The usage price of the Reserved Instance, per hour (for example, 0.84).  "
}

"""
DescribeReservedInstances() = ec2("DescribeReservedInstances")
DescribeReservedInstances(args) = ec2("DescribeReservedInstances", args)

"""
    RunInstances

Launches the specified number of instances using an AMI for which you have permissions.  You can specify a number of options, or leave the default options. The following rules apply:   [EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.   [EC2-Classic] If don't specify an Availability Zone, we choose one for you.   Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see Instance Types Available Only in a VPC.   [EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.   Not all instance types support IPv6 addresses. For more information, see Instance Types.   If you don't specify a security group ID, we use the default security group. For more information, see Security Groups.   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.   You can create a launch template, which is a resource that contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify the launch template instead of specifying the launch parameters. To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances. An instance is ready for you to use when it's in the running state. You can check the state of your instance using DescribeInstances. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see CreateTags and Tagging Your Amazon EC2 Resources. Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see Key Pairs in the Amazon Elastic Compute Cloud User Guide. For troubleshooting, see What To Do If An Instance Immediately Terminates, and Troubleshooting Connecting to Your Instance in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "MinCount": "The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances. Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see How many instances can I run in Amazon EC2 in the Amazon EC2 General FAQ.",
  "MaxCount": "The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above MinCount. Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see How many instances can I run in Amazon EC2 in the Amazon EC2 FAQ."
}


Optional Parameters:
{
  "BlockDeviceMappings": "The block device mapping entries.",
  "CpuOptions": "The CPU options for the instance. For more information, see Optimizing CPU Options in the Amazon Elastic Compute Cloud User Guide.",
  "ElasticInferenceAccelerators": "An elastic inference accelerator to associate with the instance. Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning (DL) inference workloads.",
  "Monitoring": "Specifies whether detailed monitoring is enabled for the instance.",
  "Ipv6Addresses": "[EC2-VPC] The IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "IamInstanceProfile": "The IAM instance profile.",
  "MetadataOptions": "The metadata options for the instance. For more information, see Instance Metadata and User Data.",
  "ElasticGpuSpecification": "An elastic GPU to associate with the instance. An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications. For more information, see  Amazon EC2 Elastic GPUs in the Amazon Elastic Compute Cloud User Guide.",
  "InstanceType": "The instance type. For more information, see Instance Types in the Amazon Elastic Compute Cloud User Guide. Default: m1.small ",
  "UserData": "The user data to make available to the instance. For more information, see Running Commands on Your Linux Instance at Launch (Linux) and Adding User Data (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.",
  "CreditSpecification": "The credit option for CPU usage of the burstable performance instance. Valid values are standard and unlimited. To change this attribute after launch, use  ModifyInstanceCreditSpecification. For more information, see Burstable Performance Instances in the Amazon Elastic Compute Cloud User Guide. Default: standard (T2 instances) or unlimited (T3/T3a instances)",
  "KeyName": "The name of the key pair. You can create a key pair using CreateKeyPair or ImportKeyPair.  If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in. ",
  "SecurityGroups": "[EC2-Classic, default VPC] The names of the security groups. For a nondefault VPC, you must use security group IDs instead. If you specify a network interface, you must specify any security groups as part of the network interface. Default: Amazon EC2 uses the default security group.",
  "AdditionalInfo": "Reserved.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency. Constraints: Maximum 64 ASCII characters",
  "LaunchTemplate": "The launch template to use to launch the instances. Any parameters that you specify in RunInstances override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.",
  "KernelId": "The ID of the kernel.  We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see  PV-GRUB in the Amazon Elastic Compute Cloud User Guide. ",
  "InstanceMarketOptions": "The market (purchasing) option for the instances. For RunInstances, persistent Spot Instance requests are only supported when InstanceInterruptionBehavior is set to either hibernate or stop.",
  "PrivateIpAddress": "[EC2-VPC] The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet. Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request. You cannot specify this option and the network interfaces option in the same request.",
  "SecurityGroupIds": "The IDs of the security groups. You can create a security group using CreateSecurityGroup. If you specify a network interface, you must specify any security groups as part of the network interface.",
  "Placement": "The placement for the instance.",
  "TagSpecifications": "The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see CreateTags.",
  "InstanceInitiatedShutdownBehavior": "Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown). Default: stop ",
  "SubnetId": "[EC2-VPC] The ID of the subnet to launch the instance into. If you specify a network interface, you must specify any subnets as part of the network interface.",
  "Ipv6AddressCount": "[EC2-VPC] The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.",
  "CapacityReservationSpecification": "Information about the Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to open, which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).",
  "NetworkInterfaces": "The network interfaces to associate with the instance. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.",
  "RamdiskId": "The ID of the RAM disk to select. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, go to the AWS Resource Center and search for the kernel ID.  We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see  PV-GRUB in the Amazon Elastic Compute Cloud User Guide. ",
  "ImageId": "The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template.",
  "EbsOptimized": "Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance. Default: false ",
  "HibernationOptions": "Indicates whether an instance is enabled for hibernation. For more information, see Hibernate Your Instance in the Amazon Elastic Compute Cloud User Guide.",
  "DisableApiTermination": "If you set this parameter to true, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use ModifyInstanceAttribute. Alternatively, if you set InstanceInitiatedShutdownBehavior to terminate, you can terminate the instance by running the shutdown command from the instance. Default: false ",
  "LicenseSpecifications": "The license configurations."
}

"""

RunInstances(args) = ec2("RunInstances", args)
"""
    CreateVpcPeeringConnection

Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different Region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.  Limitations and rules apply to a VPC peering connection. For more information, see the limitations section in the VPC Peering Guide.  The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected. If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of failed.

Required Parameters:
{}


Optional Parameters:
{
  "PeerOwnerId": "The AWS account ID of the owner of the accepter VPC. Default: Your AWS account ID",
  "PeerVpcId": "The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "PeerRegion": "The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request. Default: The Region in which you make the request.",
  "VpcId": "The ID of the requester VPC. You must specify this parameter in the request."
}

"""
CreateVpcPeeringConnection() = ec2("CreateVpcPeeringConnection")
CreateVpcPeeringConnection(args) = ec2("CreateVpcPeeringConnection", args)

"""
    DescribeLocalGatewayVirtualInterfaces

Describes the specified local gateway virtual interfaces.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LocalGatewayVirtualInterfaceIds": "The IDs of the virtual interfaces.",
  "Filters": "One or more filters."
}

"""
DescribeLocalGatewayVirtualInterfaces() = ec2("DescribeLocalGatewayVirtualInterfaces")
DescribeLocalGatewayVirtualInterfaces(args) = ec2("DescribeLocalGatewayVirtualInterfaces", args)

"""
    DescribeHosts

Describes the specified Dedicated Hosts or all your Dedicated Hosts. The results describe only the Dedicated Hosts in the Region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released are listed with the state released.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value. This value can be between 5 and 500. If maxResults is given a larger value than 500, you receive an error. You cannot specify this parameter and the host IDs parameter in the same request.",
  "HostIds": "The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "Filter": "The filters.    auto-placement - Whether auto-placement is enabled or disabled (on | off).    availability-zone - The Availability Zone of the host.    client-token - The idempotency token that you provided when you allocated the host.    host-reservation-id - The ID of the reservation assigned to this host.    instance-type - The instance type size that the Dedicated Host is configured to support.    state - The allocation state of the Dedicated Host (available | under-assessment | permanent-failure | released | released-permanent-failure).    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeHosts() = ec2("DescribeHosts")
DescribeHosts(args) = ec2("DescribeHosts", args)

"""
    AllocateHosts

Allocates a Dedicated Host to your account. At a minimum, specify the supported instance type or instance family, the Availability Zone in which to allocate the host, and the number of hosts to allocate.

Required Parameters:
{
  "AvailabilityZone": "The Availability Zone in which to allocate the Dedicated Host.",
  "Quantity": "The number of Dedicated Hosts to allocate to your account with these parameters."
}


Optional Parameters:
{
  "InstanceFamily": "Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. If you want the Dedicated Hosts to support a specific instance type only, omit this parameter and specify InstanceType instead. You cannot specify InstanceFamily and InstanceType in the same request.",
  "AutoPlacement": "Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. For more information, see  Understanding Instance Placement and Host Affinity in the Amazon EC2 User Guide for Linux Instances. Default: on ",
  "InstanceType": "Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. If you want the Dedicated Hosts to support multiple instance types in a specific instance family, omit this parameter and specify InstanceFamily instead. You cannot specify InstanceType and InstanceFamily in the same request.",
  "TagSpecifications": "The tags to apply to the Dedicated Host during creation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency.",
  "HostRecovery": "Indicates whether to enable or disable host recovery for the Dedicated Host. Host recovery is disabled by default. For more information, see  Host Recovery in the Amazon Elastic Compute Cloud User Guide. Default: off "
}

"""

AllocateHosts(args) = ec2("AllocateHosts", args)
"""
    DescribeFleetInstances

Describes the running instances for the specified EC2 Fleet.

Required Parameters:
{
  "FleetId": "The ID of the EC2 Fleet."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    instance-type - The instance type.  "
}

"""

DescribeFleetInstances(args) = ec2("DescribeFleetInstances", args)
"""
    CreateInternetGateway

Creates an internet gateway for use with a VPC. After creating the internet gateway, you attach it to a VPC using AttachInternetGateway. For more information about your VPC and internet gateway, see the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
CreateInternetGateway() = ec2("CreateInternetGateway")
CreateInternetGateway(args) = ec2("CreateInternetGateway", args)

"""
    DeleteFpgaImage

Deletes the specified Amazon FPGA Image (AFI).

Required Parameters:
{
  "FpgaImageId": "The ID of the AFI."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteFpgaImage(args) = ec2("DeleteFpgaImage", args)
"""
    DescribeReservedInstancesListings

Describes your account's Reserved Instance listings in the Reserved Instance Marketplace. The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances. As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase. As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase. For more information, see Reserved Instance Marketplace in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "ReservedInstancesListingId": "One or more Reserved Instance listing IDs.",
  "Filters": "One or more filters.    reserved-instances-id - The ID of the Reserved Instances.    reserved-instances-listing-id - The ID of the Reserved Instances listing.    status - The status of the Reserved Instance listing (pending | active | cancelled | closed).    status-message - The reason for the status.  ",
  "ReservedInstancesId": "One or more Reserved Instance IDs."
}

"""
DescribeReservedInstancesListings() = ec2("DescribeReservedInstancesListings")
DescribeReservedInstancesListings(args) = ec2("DescribeReservedInstancesListings", args)

"""
    ModifyCapacityReservation

Modifies a Capacity Reservation's capacity and the conditions under which it is to be released. You cannot change a Capacity Reservation's instance type, EBS optimization, instance store settings, platform, Availability Zone, or instance eligibility. If you need to modify any of these attributes, we recommend that you cancel the Capacity Reservation, and then create a new one with the required attributes.

Required Parameters:
{
  "CapacityReservationId": "The ID of the Capacity Reservation."
}


Optional Parameters:
{
  "EndDate": "The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to expired when it reaches its end date and time. The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019. You must provide an EndDate value if EndDateType is limited. Omit EndDate if EndDateType is unlimited.",
  "EndDateType": "Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:    unlimited - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an EndDate value if EndDateType is unlimited.    limited - The Capacity Reservation expires automatically at a specified date and time. You must provide an EndDate value if EndDateType is limited.  ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "InstanceCount": "The number of instances for which to reserve capacity."
}

"""

ModifyCapacityReservation(args) = ec2("ModifyCapacityReservation", args)
"""
    AcceptReservedInstancesExchangeQuote

Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call.

Required Parameters:
{
  "ReservedInstanceIds": "The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value."
}


Optional Parameters:
{
  "TargetConfigurations": "The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AcceptReservedInstancesExchangeQuote(args) = ec2("AcceptReservedInstancesExchangeQuote", args)
"""
    CreateLaunchTemplate

Creates a launch template. A launch template contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify a launch template instead of providing the launch parameters in the request.

Required Parameters:
{
  "LaunchTemplateData": "The information for the launch template.",
  "LaunchTemplateName": "A name for the launch template."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the launch template during creation.",
  "ClientToken": "Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency. Constraint: Maximum 128 ASCII characters.",
  "VersionDescription": "A description for the first version of the launch template."
}

"""

CreateLaunchTemplate(args) = ec2("CreateLaunchTemplate", args)
"""
    TerminateInstances

Shuts down the specified instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.  If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated. Terminated instances remain visible after termination (for approximately one hour). By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running. You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the DeleteOnTermination block device mapping parameter set to true are automatically deleted. For more information about the differences between stopping and terminating instances, see Instance Lifecycle in the Amazon Elastic Compute Cloud User Guide. For more information about troubleshooting, see Troubleshooting Terminating Your Instance in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceIds": "The IDs of the instances. Constraints: Up to 1000 instance IDs. We recommend breaking up this request into smaller batches."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

TerminateInstances(args) = ec2("TerminateInstances", args)
"""
    DescribeCapacityReservations

Describes one or more of your Capacity Reservations. The results describe only the Capacity Reservations in the AWS Region that you're currently using.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "CapacityReservationIds": "The ID of the Capacity Reservation.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters."
}

"""
DescribeCapacityReservations() = ec2("DescribeCapacityReservations")
DescribeCapacityReservations(args) = ec2("DescribeCapacityReservations", args)

"""
    DescribeVpnConnections

Describes one or more of your VPN connections. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "VpnConnectionIds": "One or more VPN connection IDs. Default: Describes your VPN connections.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    customer-gateway-configuration - The configuration information for the customer gateway.    customer-gateway-id - The ID of a customer gateway associated with the VPN connection.    state - The state of the VPN connection (pending | available | deleting | deleted).    option.static-routes-only - Indicates whether the connection has static routes only. Used for devices that do not support Border Gateway Protocol (BGP).    route.destination-cidr-block - The destination CIDR block. This corresponds to the subnet used in a customer data center.    bgp-asn - The BGP Autonomous System Number (ASN) associated with a BGP device.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    type - The type of VPN connection. Currently the only supported type is ipsec.1.    vpn-connection-id - The ID of the VPN connection.    vpn-gateway-id - The ID of a virtual private gateway associated with the VPN connection.    transit-gateway-id - The ID of a transit gateway associated with the VPN connection.  "
}

"""
DescribeVpnConnections() = ec2("DescribeVpnConnections")
DescribeVpnConnections(args) = ec2("DescribeVpnConnections", args)

"""
    EnableVolumeIO

Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.

Required Parameters:
{
  "VolumeId": "The ID of the volume."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

EnableVolumeIO(args) = ec2("EnableVolumeIO", args)
"""
    DescribeMovingAddresses

Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. This value can be between 5 and 1000; if MaxResults is given a value outside of this range, an error is returned. Default: If no value is provided, the default is 1000.",
  "NextToken": "The token for the next page of results.",
  "PublicIps": "One or more Elastic IP addresses.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    moving-status - The status of the Elastic IP address (MovingToVpc | RestoringToClassic).  "
}

"""
DescribeMovingAddresses() = ec2("DescribeMovingAddresses")
DescribeMovingAddresses(args) = ec2("DescribeMovingAddresses", args)

"""
    CreateRouteTable

Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet. For more information, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateRouteTable(args) = ec2("CreateRouteTable", args)
"""
    GetDefaultCreditSpecification

Describes the default credit option for CPU usage of a burstable performance instance family. For more information, see Burstable Performance Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceFamily": "The instance family."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetDefaultCreditSpecification(args) = ec2("GetDefaultCreditSpecification", args)
"""
    UnmonitorInstances

Disables detailed monitoring for a running instance. For more information, see Monitoring Your Instances and Volumes in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceIds": "The IDs of the instances."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

UnmonitorInstances(args) = ec2("UnmonitorInstances", args)
"""
    GetCapacityReservationUsage

Gets usage information about a Capacity Reservation. If the Capacity Reservation is shared, it shows usage information for the Capacity Reservation owner and each AWS account that is currently using the shared capacity. If the Capacity Reservation is not shared, it shows only the Capacity Reservation owner's usage.

Required Parameters:
{
  "CapacityReservationId": "The ID of the Capacity Reservation."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value. Valid range: Minimum value of 1. Maximum value of 1000.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetCapacityReservationUsage(args) = ec2("GetCapacityReservationUsage", args)
"""
    DeleteSubnet

Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.

Required Parameters:
{
  "SubnetId": "The ID of the subnet."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteSubnet(args) = ec2("DeleteSubnet", args)
"""
    DeleteVolume

Deletes the specified EBS volume. The volume must be in the available state (not attached to an instance). The volume can remain in the deleting state for several minutes. For more information, see Deleting an Amazon EBS Volume in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "VolumeId": "The ID of the volume."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVolume(args) = ec2("DeleteVolume", args)
"""
    DescribeKeyPairs

Describes the specified key pairs or all of your key pairs. For more information about key pairs, see Key Pairs in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "KeyNames": "The key pair names. Default: Describes all your key pairs.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    fingerprint - The fingerprint of the key pair.    key-name - The name of the key pair.  ",
  "KeyPairIds": "The IDs of the key pairs."
}

"""
DescribeKeyPairs() = ec2("DescribeKeyPairs")
DescribeKeyPairs(args) = ec2("DescribeKeyPairs", args)

"""
    CreateSecurityGroup

Creates a security group. A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. For more information, see Amazon EC2 Security Groups in the Amazon Elastic Compute Cloud User Guide and Security Groups for Your VPC in the Amazon Virtual Private Cloud User Guide. When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can't have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name. You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other. You can add or remove rules from your security groups using AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress, RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress. For more information about VPC security group limits, see Amazon VPC Limits.

Required Parameters:
{
  "Description": "A description for the security group. This is informational only. Constraints: Up to 255 characters in length Constraints for EC2-Classic: ASCII characters Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}! *",
  "GroupName": "The name of the security group. Constraints: Up to 255 characters in length. Cannot start with sg-. Constraints for EC2-Classic: ASCII characters Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&amp;;{}! *"
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "VpcId": "[EC2-VPC] The ID of the VPC. Required for EC2-VPC."
}

"""

CreateSecurityGroup(args) = ec2("CreateSecurityGroup", args)
"""
    RegisterTransitGatewayMulticastGroupMembers

Registers members (network interfaces) with the transit gateway multicast group. A member is a network interface associated with a supported EC2 instance that receives multicast traffic. For information about supported instances, see Multicast Consideration in Amazon VPC Transit Gateways. After you add the members, use SearchTransitGatewayMulticastGroups to verify that the members were added to the transit gateway multicast group.

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "GroupIpAddress": "The IP address assigned to the transit gateway multicast group.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkInterfaceIds": "The group members' network interface IDs to register with the transit gateway multicast group."
}

"""
RegisterTransitGatewayMulticastGroupMembers() = ec2("RegisterTransitGatewayMulticastGroupMembers")
RegisterTransitGatewayMulticastGroupMembers(args) = ec2("RegisterTransitGatewayMulticastGroupMembers", args)

"""
    RevokeClientVpnIngress

Removes an ingress authorization rule from a Client VPN endpoint. 

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint with which the authorization rule is associated.",
  "TargetNetworkCidr": "The IPv4 address range, in CIDR notation, of the network for which access is being removed."
}


Optional Parameters:
{
  "AccessGroupId": "The ID of the Active Directory group for which to revoke access. ",
  "RevokeAllGroups": "Indicates whether access should be revoked for all clients.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

RevokeClientVpnIngress(args) = ec2("RevokeClientVpnIngress", args)
"""
    DescribeSpotFleetRequestHistory

Describes the events for the specified Spot Fleet request during the specified time. Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. Spot Fleet events are available for 48 hours.

Required Parameters:
{
  "StartTime": "The starting date and time for the events, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).",
  "SpotFleetRequestId": "The ID of the Spot Fleet request."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "EventType": "The type of events to describe. By default, all events are described."
}

"""

DescribeSpotFleetRequestHistory(args) = ec2("DescribeSpotFleetRequestHistory", args)
"""
    DescribeFastSnapshotRestores

Describes the state of fast snapshot restores for your snapshots.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters. The possible values are:    availability-zone: The Availability Zone of the snapshot.    owner-id: The ID of the AWS account that owns the snapshot.    snapshot-id: The ID of the snapshot.    state: The state of fast snapshot restores for the snapshot (enabling | optimizing | enabled | disabling | disabled).  "
}

"""
DescribeFastSnapshotRestores() = ec2("DescribeFastSnapshotRestores")
DescribeFastSnapshotRestores(args) = ec2("DescribeFastSnapshotRestores", args)

"""
    ModifySpotFleetRequest

Modifies the specified Spot Fleet request. You can only modify a Spot Fleet request of type maintain. While the Spot Fleet request is being modified, it is in the modifying state. To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is lowestPrice, the Spot Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is diversified, the Spot Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is capacityOptimized, Spot Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching. To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is lowestPrice, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is capacityOptimized, the Spot Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is diversified, the Spot Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually. If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.

Required Parameters:
{
  "SpotFleetRequestId": "The ID of the Spot Fleet request."
}


Optional Parameters:
{
  "ExcessCapacityTerminationPolicy": "Indicates whether running Spot Instances should be terminated if the target capacity of the Spot Fleet request is decreased below the current size of the Spot Fleet.",
  "TargetCapacity": "The size of the fleet.",
  "OnDemandTargetCapacity": "The number of On-Demand Instances in the fleet."
}

"""

ModifySpotFleetRequest(args) = ec2("ModifySpotFleetRequest", args)
"""
    ImportKeyPair

Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with CreateKeyPair, in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS. For more information about key pairs, see Key Pairs in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "PublicKeyMaterial": "The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.",
  "KeyName": "A unique name for the key pair."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ImportKeyPair(args) = ec2("ImportKeyPair", args)
"""
    DisassociateAddress

Disassociates an Elastic IP address from the instance or network interface it's associated with. An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see Elastic IP Addresses in the Amazon Elastic Compute Cloud User Guide. This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.

Required Parameters:
{}


Optional Parameters:
{
  "AssociationId": "[EC2-VPC] The association ID. Required for EC2-VPC.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "PublicIp": "[EC2-Classic] The Elastic IP address. Required for EC2-Classic."
}

"""
DisassociateAddress() = ec2("DisassociateAddress")
DisassociateAddress(args) = ec2("DisassociateAddress", args)

"""
    DescribeSecurityGroups

Describes the specified security groups or all of your security groups. A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see Amazon EC2 Security Groups in the Amazon Elastic Compute Cloud User Guide and Security Groups for Your VPC in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned NextToken value. This value can be between 5 and 1000. If this parameter is not specified, then all results are returned.",
  "NextToken": "The token to request the next page of results.",
  "GroupNames": "[EC2-Classic and default VPC only] The names of the security groups. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, use the group-name filter to describe security groups by name. Default: Describes all your security groups.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.    description - The description of the security group.    egress.ip-permission.cidr - An IPv4 CIDR block for an outbound security group rule.    egress.ip-permission.from-port - For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.    egress.ip-permission.group-id - The ID of a security group that has been referenced in an outbound security group rule.    egress.ip-permission.group-name - The name of a security group that has been referenced in an outbound security group rule.    egress.ip-permission.ipv6-cidr - An IPv6 CIDR block for an outbound security group rule.    egress.ip-permission.prefix-list-id - The ID (prefix) of the AWS service to which a security group rule allows outbound access.    egress.ip-permission.protocol - The IP protocol for an outbound security group rule (tcp | udp | icmp or a protocol number).    egress.ip-permission.to-port - For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.    egress.ip-permission.user-id - The ID of an AWS account that has been referenced in an outbound security group rule.    group-id - The ID of the security group.     group-name - The name of the security group.    ip-permission.cidr - An IPv4 CIDR block for an inbound security group rule.    ip-permission.from-port - For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.    ip-permission.group-id - The ID of a security group that has been referenced in an inbound security group rule.    ip-permission.group-name - The name of a security group that has been referenced in an inbound security group rule.    ip-permission.ipv6-cidr - An IPv6 CIDR block for an inbound security group rule.    ip-permission.prefix-list-id - The ID (prefix) of the AWS service from which a security group rule allows inbound access.    ip-permission.protocol - The IP protocol for an inbound security group rule (tcp | udp | icmp or a protocol number).    ip-permission.to-port - For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.    ip-permission.user-id - The ID of an AWS account that has been referenced in an inbound security group rule.    owner-id - The AWS account ID of the owner of the security group.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC specified when the security group was created.  ",
  "GroupIds": "The IDs of the security groups. Required for security groups in a nondefault VPC. Default: Describes all your security groups."
}

"""
DescribeSecurityGroups() = ec2("DescribeSecurityGroups")
DescribeSecurityGroups(args) = ec2("DescribeSecurityGroups", args)

"""
    DisassociateRouteTable

Disassociates a subnet from a route table. After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "AssociationId": "The association ID representing the current association between the route table and subnet."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisassociateRouteTable(args) = ec2("DisassociateRouteTable", args)
"""
    ConfirmProductInstance

Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user's instance is eligible for support.

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "ProductCode": "The product code. This must be a product code that you own."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ConfirmProductInstance(args) = ec2("ConfirmProductInstance", args)
"""
    AssociateTransitGatewayMulticastDomain

Associates the specified subnets and transit gateway attachments with the specified transit gateway multicast domain. The transit gateway attachment must be in the available state before you can add a resource. Use DescribeTransitGatewayAttachments to see the state of the attachment.

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "TransitGatewayAttachmentId": "The ID of the transit gateway attachment to associate with the transit gateway multicast domain.",
  "SubnetIds": "The IDs of the subnets to associate with the transit gateway multicast domain.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
AssociateTransitGatewayMulticastDomain() = ec2("AssociateTransitGatewayMulticastDomain")
AssociateTransitGatewayMulticastDomain(args) = ec2("AssociateTransitGatewayMulticastDomain", args)

"""
    DescribeInstanceAttribute

Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: instanceType | kernel | ramdisk | userData | disableApiTermination | instanceInitiatedShutdownBehavior | rootDeviceName | blockDeviceMapping | productCodes | sourceDestCheck | groupSet | ebsOptimized | sriovNetSupport 

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "Attribute": "The instance attribute. Note: The enaSupport attribute is not supported at this time."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DescribeInstanceAttribute(args) = ec2("DescribeInstanceAttribute", args)
"""
    ModifySnapshotAttribute

Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single operation. If you need to both add and remove account IDs for a snapshot, you must use multiple operations. You can make up to 500 modifications to a snapshot in a single operation. Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts. For more information about modifying snapshot permissions, see Sharing Snapshots in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SnapshotId": "The ID of the snapshot."
}


Optional Parameters:
{
  "GroupNames": "The group to modify for the snapshot.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Attribute": "The snapshot attribute to modify. Only volume creation permissions can be modified.",
  "OperationType": "The type of operation to perform to the attribute.",
  "UserIds": "The account ID to modify for the snapshot.",
  "CreateVolumePermission": "A JSON representation of the snapshot attribute modification."
}

"""

ModifySnapshotAttribute(args) = ec2("ModifySnapshotAttribute", args)
"""
    AssignPrivateIpAddresses

Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see Instance Types in the Amazon Elastic Compute Cloud User Guide. For more information about Elastic IP addresses, see Elastic IP Addresses in the Amazon Elastic Compute Cloud User Guide. When you move a secondary private IP address to another network interface, any Elastic IP address that is associated with the IP address is also moved. Remapping an IP address is an asynchronous operation. When you move an IP address from one network interface to another, check network/interfaces/macs/mac/local-ipv4s in the instance metadata to confirm that the remapping is complete.

Required Parameters:
{
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "AllowReassignment": "Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.",
  "SecondaryPrivateIpAddressCount": "The number of secondary IP addresses to assign to the network interface. You can't specify this parameter when also specifying private IP addresses.",
  "PrivateIpAddresses": "One or more IP addresses to be assigned as a secondary private IP address to the network interface. You can't specify this parameter when also specifying a number of secondary IP addresses. If you don't specify an IP address, Amazon EC2 automatically selects an IP address within the subnet range."
}

"""

AssignPrivateIpAddresses(args) = ec2("AssignPrivateIpAddresses", args)
"""
    DescribeNetworkAcls

Describes one or more of your network ACLs. For more information, see Network ACLs in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkAclIds": "One or more network ACL IDs. Default: Describes all your network ACLs.",
  "Filters": "One or more filters.    association.association-id - The ID of an association ID for the ACL.    association.network-acl-id - The ID of the network ACL involved in the association.    association.subnet-id - The ID of the subnet involved in the association.    default - Indicates whether the ACL is the default network ACL for the VPC.    entry.cidr - The IPv4 CIDR range specified in the entry.    entry.icmp.code - The ICMP code specified in the entry, if any.    entry.icmp.type - The ICMP type specified in the entry, if any.    entry.ipv6-cidr - The IPv6 CIDR range specified in the entry.    entry.port-range.from - The start of the port range specified in the entry.     entry.port-range.to - The end of the port range specified in the entry.     entry.protocol - The protocol specified in the entry (tcp | udp | icmp or a protocol number).    entry.rule-action - Allows or denies the matching traffic (allow | deny).    entry.rule-number - The number of an entry (in other words, rule) in the set of ACL entries.    network-acl-id - The ID of the network ACL.    owner-id - The ID of the AWS account that owns the network ACL.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC for the network ACL.  "
}

"""
DescribeNetworkAcls() = ec2("DescribeNetworkAcls")
DescribeNetworkAcls(args) = ec2("DescribeNetworkAcls", args)

"""
    DescribeVpcEndpointConnections

Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. This value can be between 5 and 1,000; if MaxResults is given a value larger than 1,000, only 1,000 results are returned.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    service-id - The ID of the service.    vpc-endpoint-owner - The AWS account number of the owner of the endpoint.    vpc-endpoint-state - The state of the endpoint (pendingAcceptance | pending | available | deleting | deleted | rejected | failed).    vpc-endpoint-id - The ID of the endpoint.  "
}

"""
DescribeVpcEndpointConnections() = ec2("DescribeVpcEndpointConnections")
DescribeVpcEndpointConnections(args) = ec2("DescribeVpcEndpointConnections", args)

"""
    ModifyTrafficMirrorFilterNetworkServices

Allows or restricts mirroring network services.  By default, Amazon DNS network services are not eligible for Traffic Mirror. Use AddNetworkServices to add network services to a Traffic Mirror filter. When a network service is added to the Traffic Mirror filter, all traffic related to that network service will be mirrored. When you no longer want to mirror network services, use RemoveNetworkServices to remove the network services from the Traffic Mirror filter.  For information about filter rule properties, see Network Services in the Traffic Mirroring User Guide .

Required Parameters:
{
  "TrafficMirrorFilterId": "The ID of the Traffic Mirror filter."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AddNetworkServices": "The network service, for example Amazon DNS, that you want to mirror.",
  "RemoveNetworkServices": "The network service, for example Amazon DNS, that you no longer want to mirror."
}

"""

ModifyTrafficMirrorFilterNetworkServices(args) = ec2("ModifyTrafficMirrorFilterNetworkServices", args)
"""
    DescribeVpcEndpoints

Describes one or more of your VPC endpoints.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results. Constraint: If the value is greater than 1,000, we return only 1,000 items.",
  "NextToken": "The token for the next set of items to return. (You received this token from a prior call.)",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    service-name - The name of the service.    vpc-id - The ID of the VPC in which the endpoint resides.    vpc-endpoint-id - The ID of the endpoint.    vpc-endpoint-state - The state of the endpoint (pendingAcceptance | pending | available | deleting | deleted | rejected | failed).    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  ",
  "VpcEndpointIds": "One or more endpoint IDs."
}

"""
DescribeVpcEndpoints() = ec2("DescribeVpcEndpoints")
DescribeVpcEndpoints(args) = ec2("DescribeVpcEndpoints", args)

"""
    AttachClassicLinkVpc

Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the running state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it. After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again. Linking your instance to a VPC is sometimes referred to as attaching your instance.

Required Parameters:
{
  "InstanceId": "The ID of an EC2-Classic instance to link to the ClassicLink-enabled VPC.",
  "VpcId": "The ID of a ClassicLink-enabled VPC.",
  "Groups": "The ID of one or more of the VPC's security groups. You cannot specify security groups from a different VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AttachClassicLinkVpc(args) = ec2("AttachClassicLinkVpc", args)
"""
    DisableEbsEncryptionByDefault

Disables EBS encryption by default for your account in the current Region. After you disable encryption by default, you can still create encrypted volumes by enabling encryption when you create each volume. Disabling encryption by default does not change the encryption status of your existing volumes. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DisableEbsEncryptionByDefault() = ec2("DisableEbsEncryptionByDefault")
DisableEbsEncryptionByDefault(args) = ec2("DisableEbsEncryptionByDefault", args)

"""
    AssociateVpcCidrBlock

Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses (BYOIP). The IPv6 CIDR block size is fixed at /56. For more information about associating CIDR blocks with your VPC and applicable restrictions, see VPC and Subnet Sizing in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "Ipv6Pool": "The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.",
  "CidrBlock": "An IPv4 CIDR block to associate with the VPC.",
  "AmazonProvidedIpv6CidrBlock": "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.",
  "Ipv6CidrBlockNetworkBorderGroup": "The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the CiDR block to this location.  You must set AmazonProvidedIpv6CidrBlock to true to use this parameter.  You can have one IPv6 CIDR block association per network border group.",
  "Ipv6CidrBlock": "An IPv6 CIDR block from the IPv6 address pool. You must also specify Ipv6Pool in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter."
}

"""

AssociateVpcCidrBlock(args) = ec2("AssociateVpcCidrBlock", args)
"""
    DescribeNetworkInterfacePermissions

Describes the permissions for your network interfaces. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. If this parameter is not specified, up to 50 results are returned by default.",
  "NextToken": "The token to request the next page of results.",
  "NetworkInterfacePermissionIds": "One or more network interface permission IDs.",
  "Filters": "One or more filters.    network-interface-permission.network-interface-permission-id - The ID of the permission.    network-interface-permission.network-interface-id - The ID of the network interface.    network-interface-permission.aws-account-id - The AWS account ID.    network-interface-permission.aws-service - The AWS service.    network-interface-permission.permission - The type of permission (INSTANCE-ATTACH | EIP-ASSOCIATE).  "
}

"""
DescribeNetworkInterfacePermissions() = ec2("DescribeNetworkInterfacePermissions")
DescribeNetworkInterfacePermissions(args) = ec2("DescribeNetworkInterfacePermissions", args)

"""
    TerminateClientVpnConnections

Terminates active Client VPN endpoint connections. This action can be used to terminate a specific client connection, or up to five connections established by a specific user.

Required Parameters:
{
  "ClientVpnEndpointId": "The ID of the Client VPN endpoint to which the client is connected."
}


Optional Parameters:
{
  "ConnectionId": "The ID of the client connection to be terminated.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Username": "The name of the user who initiated the connection. Use this option to terminate all active connections for the specified user. This option can only be used if the user has established up to five connections."
}

"""

TerminateClientVpnConnections(args) = ec2("TerminateClientVpnConnections", args)
"""
    ReleaseAddress

Releases the specified Elastic IP address. [EC2-Classic, default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use DisassociateAddress. [Nondefault VPC] You must use DisassociateAddress to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (InvalidIPAddress.InUse). After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an AuthFailure error if the address is already allocated to another AWS account. [EC2-VPC] After you release an Elastic IP address for use in a VPC, you might be able to recover it. For more information, see AllocateAddress.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AllocationId": "[EC2-VPC] The allocation ID. Required for EC2-VPC.",
  "PublicIp": "[EC2-Classic] The Elastic IP address. Required for EC2-Classic.",
  "NetworkBorderGroup": "The location that the IP address is released from. If you provide an incorrect network border group, you will receive an InvalidAddress.NotFound error. For more information, see Error Codes.  You cannot use a network border group with EC2 Classic. If you attempt this operation on EC2 classic, you will receive an InvalidParameterCombination error. For more information, see Error Codes. "
}

"""
ReleaseAddress() = ec2("ReleaseAddress")
ReleaseAddress(args) = ec2("ReleaseAddress", args)

"""
    CreateRoute

Creates a route in a route table within a VPC. You must specify one of the following targets: internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, egress-only internet gateway, or transit gateway. When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address 192.0.2.3, and the route table includes the following two IPv4 routes:    192.0.2.0/24 (goes to some target A)    192.0.2.0/28 (goes to some target B)   Both routes apply to the traffic destined for 192.0.2.3. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic. For more information about route tables, see Route Tables in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "RouteTableId": "The ID of the route table for the route."
}


Optional Parameters:
{
  "DestinationIpv6CidrBlock": "The IPv6 CIDR block used for the destination match. Routing decisions are based on the most specific match.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "EgressOnlyInternetGatewayId": "[IPv6 traffic only] The ID of an egress-only internet gateway.",
  "TransitGatewayId": "The ID of a transit gateway.",
  "InstanceId": "The ID of a NAT instance in your VPC. The operation fails if you specify an instance ID unless exactly one network interface is attached.",
  "LocalGatewayId": "The ID of the local gateway.",
  "NatGatewayId": "[IPv4 traffic only] The ID of a NAT gateway.",
  "DestinationCidrBlock": "The IPv4 CIDR address block used for the destination match. Routing decisions are based on the most specific match.",
  "VpcPeeringConnectionId": "The ID of a VPC peering connection.",
  "NetworkInterfaceId": "The ID of a network interface.",
  "GatewayId": "The ID of an internet gateway or virtual private gateway attached to your VPC."
}

"""

CreateRoute(args) = ec2("CreateRoute", args)
"""
    DeleteQueuedReservedInstances

Deletes the queued purchases for the specified Reserved Instances.

Required Parameters:
{
  "ReservedInstancesIds": "The IDs of the Reserved Instances."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteQueuedReservedInstances(args) = ec2("DeleteQueuedReservedInstances", args)
"""
    DescribeVpcEndpointServiceConfigurations

Describes the VPC endpoint service configurations in your account (your services).

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. This value can be between 5 and 1,000; if MaxResults is given a value larger than 1,000, only 1,000 results are returned.",
  "ServiceIds": "The IDs of one or more services.",
  "NextToken": "The token to retrieve the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    service-name - The name of the service.    service-id - The ID of the service.    service-state - The state of the service (Pending | Available | Deleting | Deleted | Failed).     tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeVpcEndpointServiceConfigurations() = ec2("DescribeVpcEndpointServiceConfigurations")
DescribeVpcEndpointServiceConfigurations(args) = ec2("DescribeVpcEndpointServiceConfigurations", args)

"""
    CancelImportTask

Cancels an in-process import virtual machine or import snapshot task.

Required Parameters:
{}


Optional Parameters:
{
  "CancelReason": "The reason for canceling the task.",
  "ImportTaskId": "The ID of the import image or import snapshot task to be canceled.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
CancelImportTask() = ec2("CancelImportTask")
CancelImportTask(args) = ec2("CancelImportTask", args)

"""
    MoveAddressToVpc

Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the RestoreAddressToClassic request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform. 

Required Parameters:
{
  "PublicIp": "The Elastic IP address."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

MoveAddressToVpc(args) = ec2("MoveAddressToVpc", args)
"""
    DescribeSpotPriceHistory

Describes the Spot price history. For more information, see Spot Instance Pricing History in the Amazon EC2 User Guide for Linux Instances. When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "StartTime": "The date and time, up to the past 90 days, from which to start retrieving the price history data, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).",
  "NextToken": "The token for the next set of results.",
  "EndTime": "The date and time, up to the current date, from which to stop retrieving the price history data, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).",
  "AvailabilityZone": "Filters the results by the specified Availability Zone.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "InstanceTypes": "Filters the results by the specified instance types.",
  "ProductDescriptions": "Filters the results by the specified basic product descriptions.",
  "Filters": "One or more filters.    availability-zone - The Availability Zone for which prices should be returned.    instance-type - The type of instance (for example, m3.medium).    product-description - The product description for the Spot price (Linux/UNIX | SUSE Linux | Windows | Linux/UNIX (Amazon VPC) | SUSE Linux (Amazon VPC) | Windows (Amazon VPC)).    spot-price - The Spot price. The value must match exactly (or use wildcards; greater than or less than comparison is not supported).    timestamp - The time stamp of the Spot price history, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). You can use wildcards (* and ?). Greater than or less than comparison is not supported.  "
}

"""
DescribeSpotPriceHistory() = ec2("DescribeSpotPriceHistory")
DescribeSpotPriceHistory(args) = ec2("DescribeSpotPriceHistory", args)

"""
    DisassociateVpcCidrBlock

Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using DescribeVpcs. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.  You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).

Required Parameters:
{
  "AssociationId": "The association ID for the CIDR block."
}


Optional Parameters:
{}

"""

DisassociateVpcCidrBlock(args) = ec2("DisassociateVpcCidrBlock", args)
"""
    ResetEbsDefaultKmsKeyId

Resets the default customer master key (CMK) for EBS encryption for your account in this Region to the AWS managed CMK for EBS. After resetting the default CMK to the AWS managed CMK, you can continue to encrypt by a customer managed CMK by specifying it when you create the volume. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
ResetEbsDefaultKmsKeyId() = ec2("ResetEbsDefaultKmsKeyId")
ResetEbsDefaultKmsKeyId(args) = ec2("ResetEbsDefaultKmsKeyId", args)

"""
    DeleteTransitGatewayVpcAttachment

Deletes the specified VPC attachment.

Required Parameters:
{
  "TransitGatewayAttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGatewayVpcAttachment(args) = ec2("DeleteTransitGatewayVpcAttachment", args)
"""
    DeregisterImage

Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances; however, it doesn't affect any instances that you've already launched from the AMI. You'll continue to incur usage costs for those instances until you terminate them. When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn't affect the files that you uploaded to Amazon S3 when you created the AMI.

Required Parameters:
{
  "ImageId": "The ID of the AMI."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeregisterImage(args) = ec2("DeregisterImage", args)
"""
    DescribeCoipPools

Describes the specified customer-owned address pools or all of your customer-owned address pools.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters. The following are the possible values:    coip-pool.pool-id       coip-pool.local-gateway-route-table-id   ",
  "PoolIds": "The IDs of the address pools."
}

"""
DescribeCoipPools() = ec2("DescribeCoipPools")
DescribeCoipPools(args) = ec2("DescribeCoipPools", args)

"""
    DescribeClassicLinkInstances

Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink. You cannot use this request to return information about other instances.

Required Parameters:
{}


Optional Parameters:
{
  "InstanceIds": "One or more instance IDs. Must be instances linked to a VPC through ClassicLink.",
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value. Constraint: If the value is greater than 1000, we return only 1000 items.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    group-id - The ID of a VPC security group that's associated with the instance.    instance-id - The ID of the instance.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC to which the instance is linked.  vpc-id - The ID of the VPC that the instance is linked to.  "
}

"""
DescribeClassicLinkInstances() = ec2("DescribeClassicLinkInstances")
DescribeClassicLinkInstances(args) = ec2("DescribeClassicLinkInstances", args)

"""
    DescribeDhcpOptions

Describes one or more of your DHCP options sets. For more information, see DHCP Options Sets in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DhcpOptionsIds": "The IDs of one or more DHCP options sets. Default: Describes all your DHCP options sets.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    dhcp-options-id - The ID of a DHCP options set.    key - The key for one of the options (for example, domain-name).    value - The value for one of the options.    owner-id - The ID of the AWS account that owns the DHCP options set.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.  "
}

"""
DescribeDhcpOptions() = ec2("DescribeDhcpOptions")
DescribeDhcpOptions(args) = ec2("DescribeDhcpOptions", args)

"""
    DescribeReservedInstancesOfferings

Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used. If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances. For more information, see Reserved Instance Marketplace in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxInstanceCount": "The maximum number of instances to filter when searching for offerings. Default: 20",
  "InstanceTenancy": "The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of dedicated is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).  Important: The host value cannot be used with this parameter. Use the default or dedicated values only. Default: default ",
  "ProductDescription": "The Reserved Instance product platform description. Instances that include (Amazon VPC) in the description are for use with Amazon VPC.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "InstanceType": "The instance type that the reservation will cover (for example, m1.small). For more information, see Instance Types in the Amazon Elastic Compute Cloud User Guide.",
  "IncludeMarketplace": "Include Reserved Instance Marketplace offerings in the response.",
  "OfferingType": "The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the Medium Utilization Reserved Instance offering type. ",
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. The maximum is 100. Default: 100",
  "MaxDuration": "The maximum duration (in seconds) to filter when searching for offerings. Default: 94608000 (3 years)",
  "OfferingClass": "The offering class of the Reserved Instance. Can be standard or convertible.",
  "MinDuration": "The minimum duration (in seconds) to filter when searching for offerings. Default: 2592000 (1 month)",
  "ReservedInstancesOfferingIds": "One or more Reserved Instances offering IDs.",
  "NextToken": "The token to retrieve the next page of results.",
  "AvailabilityZone": "The Availability Zone in which the Reserved Instance can be used.",
  "Filters": "One or more filters.    availability-zone - The Availability Zone where the Reserved Instance can be used.    duration - The duration of the Reserved Instance (for example, one year or three years), in seconds (31536000 | 94608000).    fixed-price - The purchase price of the Reserved Instance (for example, 9800.0).    instance-type - The instance type that is covered by the reservation.    marketplace - Set to true to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both AWS and the Reserved Instance Marketplace are listed.    product-description - The Reserved Instance product platform description. Instances that include (Amazon VPC) in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (Linux/UNIX | Linux/UNIX (Amazon VPC) | SUSE Linux | SUSE Linux (Amazon VPC) | Red Hat Enterprise Linux | Red Hat Enterprise Linux (Amazon VPC) | Windows | Windows (Amazon VPC) | Windows with SQL Server Standard | Windows with SQL Server Standard (Amazon VPC) | Windows with SQL Server Web |  Windows with SQL Server Web (Amazon VPC) | Windows with SQL Server Enterprise | Windows with SQL Server Enterprise (Amazon VPC))     reserved-instances-offering-id - The Reserved Instances offering ID.    scope - The scope of the Reserved Instance (Availability Zone or Region).    usage-price - The usage price of the Reserved Instance, per hour (for example, 0.84).  "
}

"""
DescribeReservedInstancesOfferings() = ec2("DescribeReservedInstancesOfferings")
DescribeReservedInstancesOfferings(args) = ec2("DescribeReservedInstancesOfferings", args)

"""
    EnableVgwRoutePropagation

Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.

Required Parameters:
{
  "RouteTableId": "The ID of the route table. The routing table must be associated with the same VPC that the virtual private gateway is attached to. ",
  "GatewayId": "The ID of the virtual private gateway that is attached to a VPC. The virtual private gateway must be attached to the same VPC that the routing tables are associated with. "
}


Optional Parameters:
{}

"""

EnableVgwRoutePropagation(args) = ec2("EnableVgwRoutePropagation", args)
"""
    DeleteTransitGatewayMulticastDomain

Deletes the specified transit gateway multicast domain.

Required Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGatewayMulticastDomain(args) = ec2("DeleteTransitGatewayMulticastDomain", args)
"""
    ReplaceIamInstanceProfileAssociation

Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that's associated with an instance without having to disassociate the existing IAM instance profile first. Use DescribeIamInstanceProfileAssociations to get the association ID.

Required Parameters:
{
  "AssociationId": "The ID of the existing IAM instance profile association.",
  "IamInstanceProfile": "The IAM instance profile."
}


Optional Parameters:
{}

"""

ReplaceIamInstanceProfileAssociation(args) = ec2("ReplaceIamInstanceProfileAssociation", args)
"""
    DescribeSpotInstanceRequests

Describes the specified Spot Instance requests. You can use DescribeSpotInstanceRequests to find a running Spot Instance by examining the response. If the status of the Spot Instance is fulfilled, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use DescribeInstances with a filter to look for instances where the instance lifecycle is spot. We recommend that you set MaxResults to a value between 5 and 1000 to limit the number of results returned. This paginates the output, which makes the list more manageable and returns the results faster. If the list of results exceeds your MaxResults value, then that number of results is returned along with a NextToken value that can be passed to a subsequent DescribeSpotInstanceRequests request to retrieve the remaining results. Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 5 and 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next set of results. This value is null when there are no more results to return.",
  "SpotInstanceRequestIds": "One or more Spot Instance request IDs.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    availability-zone-group - The Availability Zone group.    create-time - The time stamp when the Spot Instance request was created.    fault-code - The fault code related to the request.    fault-message - The fault message related to the request.    instance-id - The ID of the instance that fulfilled the request.    launch-group - The Spot Instance launch group.    launch.block-device-mapping.delete-on-termination - Indicates whether the EBS volume is deleted on instance termination.    launch.block-device-mapping.device-name - The device name for the volume in the block device mapping (for example, /dev/sdh or xvdh).    launch.block-device-mapping.snapshot-id - The ID of the snapshot for the EBS volume.    launch.block-device-mapping.volume-size - The size of the EBS volume, in GiB.    launch.block-device-mapping.volume-type - The type of EBS volume: gp2 for General Purpose SSD, io1 for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1for Cold HDD, or standard for Magnetic.    launch.group-id - The ID of the security group for the instance.    launch.group-name - The name of the security group for the instance.    launch.image-id - The ID of the AMI.    launch.instance-type - The type of instance (for example, m3.medium).    launch.kernel-id - The kernel ID.    launch.key-name - The name of the key pair the instance launched with.    launch.monitoring-enabled - Whether detailed monitoring is enabled for the Spot Instance.    launch.ramdisk-id - The RAM disk ID.    launched-availability-zone - The Availability Zone in which the request is launched.    network-interface.addresses.primary - Indicates whether the IP address is the primary private IP address.    network-interface.delete-on-termination - Indicates whether the network interface is deleted when the instance is terminated.    network-interface.description - A description of the network interface.    network-interface.device-index - The index of the device for the network interface attachment on the instance.    network-interface.group-id - The ID of the security group associated with the network interface.    network-interface.network-interface-id - The ID of the network interface.    network-interface.private-ip-address - The primary private IP address of the network interface.    network-interface.subnet-id - The ID of the subnet for the instance.    product-description - The product description associated with the instance (Linux/UNIX | Windows).    spot-instance-request-id - The Spot Instance request ID.    spot-price - The maximum hourly price for any Spot Instance launched to fulfill the request.    state - The state of the Spot Instance request (open | active | closed | cancelled | failed). Spot request status information can help you track your Amazon EC2 Spot Instance requests. For more information, see Spot Request Status in the Amazon EC2 User Guide for Linux Instances.    status-code - The short code describing the most recent evaluation of your Spot Instance request.    status-message - The message explaining the status of the Spot Instance request.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    type - The type of Spot Instance request (one-time | persistent).    valid-from - The start date of the request.    valid-until - The end date of the request.  "
}

"""
DescribeSpotInstanceRequests() = ec2("DescribeSpotInstanceRequests")
DescribeSpotInstanceRequests(args) = ec2("DescribeSpotInstanceRequests", args)

"""
    DescribeVolumeStatus

Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event. The DescribeVolumeStatus operation provides the following information about the specified volumes:  Status: Reflects the current status of the volume. The possible values are ok, impaired , warning, or insufficient-data. If all checks pass, the overall status of the volume is ok. If the check fails, the overall status is impaired. If the status is insufficient-data, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see Monitoring the Status of Your Volumes in the Amazon Elastic Compute Cloud User Guide.  Events: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an impaired status, then the volume event might be potential-data-inconsistency. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.  Actions: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is impaired and the volume event shows potential-data-inconsistency, then the action shows enable-volume-io. This means that you may want to enable the I/O operations for the volume by calling the EnableVolumeIO action and then check the volume for data consistency. Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the error state (for example, when a volume is incapable of accepting I/O.)

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of volume results returned by DescribeVolumeStatus in paginated output. When this parameter is used, the request only returns MaxResults results in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another request with the returned NextToken value. This value can be between 5 and 1000; if MaxResults is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then DescribeVolumeStatus returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.",
  "NextToken": "The NextToken value to include in a future DescribeVolumeStatus request. When the results of the request exceed MaxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.",
  "VolumeIds": "The IDs of the volumes. Default: Describes all your volumes.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    action.code - The action code for the event (for example, enable-volume-io).    action.description - A description of the action.    action.event-id - The event ID associated with the action.    availability-zone - The Availability Zone of the instance.    event.description - A description of the event.    event.event-id - The event ID.    event.event-type - The event type (for io-enabled: passed | failed; for io-performance: io-performance:degraded | io-performance:severely-degraded | io-performance:stalled).    event.not-after - The latest end time for the event.    event.not-before - The earliest start time for the event.    volume-status.details-name - The cause for volume-status.status (io-enabled | io-performance).    volume-status.details-status - The status of volume-status.details-name (for io-enabled: passed | failed; for io-performance: normal | degraded | severely-degraded | stalled).    volume-status.status - The status of the volume (ok | impaired | warning | insufficient-data).  "
}

"""
DescribeVolumeStatus() = ec2("DescribeVolumeStatus")
DescribeVolumeStatus(args) = ec2("DescribeVolumeStatus", args)

"""
    DeleteRouteTable

Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.

Required Parameters:
{
  "RouteTableId": "The ID of the route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteRouteTable(args) = ec2("DeleteRouteTable", args)
"""
    ModifyInstanceCapacityReservationAttributes

Modifies the Capacity Reservation settings for a stopped instance. Use this action to configure an instance to target a specific Capacity Reservation, run in any open Capacity Reservation with matching attributes, or run On-Demand Instance capacity.

Required Parameters:
{
  "CapacityReservationSpecification": "Information about the Capacity Reservation targeting option.",
  "InstanceId": "The ID of the instance to be modified."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyInstanceCapacityReservationAttributes(args) = ec2("ModifyInstanceCapacityReservationAttributes", args)
"""
    DescribeExportTasks

Describes the specified export instance tasks or all your export instance tasks.

Required Parameters:
{}


Optional Parameters:
{
  "ExportTaskIds": "The export task IDs.",
  "Filters": "the filters for the export tasks."
}

"""
DescribeExportTasks() = ec2("DescribeExportTasks")
DescribeExportTasks(args) = ec2("DescribeExportTasks", args)

"""
    AttachVpnGateway

Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time. For more information, see AWS Site-to-Site VPN in the AWS Site-to-Site VPN User Guide.

Required Parameters:
{
  "VpnGatewayId": "The ID of the virtual private gateway.",
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

AttachVpnGateway(args) = ec2("AttachVpnGateway", args)
"""
    DescribeFleetHistory

Describes the events for the specified EC2 Fleet during the specified time. EC2 Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. EC2 Fleet events are available for 48 hours.

Required Parameters:
{
  "StartTime": "The start date and time for the events, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).",
  "FleetId": "The ID of the EC2 Fleet."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "EventType": "The type of events to describe. By default, all events are described."
}

"""

DescribeFleetHistory(args) = ec2("DescribeFleetHistory", args)
"""
    GetAssociatedIpv6PoolCidrs

Gets information about the IPv6 CIDR block associations for a specified IPv6 address pool.

Required Parameters:
{
  "PoolId": "The ID of the IPv6 address pool."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetAssociatedIpv6PoolCidrs(args) = ec2("GetAssociatedIpv6PoolCidrs", args)
"""
    DeleteTags

Deletes the specified set of tags from the specified set of resources. To list the current tags, use DescribeTags. For more information about tags, see Tagging Your Resources in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "Resources": "The IDs of the resources, separated by spaces. Constraints: Up to 1000 resource IDs. We recommend breaking up this request into smaller batches."
}


Optional Parameters:
{
  "Tags": "The tags to delete. Specify a tag key and an optional tag value to delete specific tags. If you specify a tag key without a tag value, we delete any tag with this key regardless of its value. If you specify a tag key with an empty string as the tag value, we delete the tag only if its value is an empty string. If you omit this parameter, we delete all user-defined tags for the specified resources. We do not delete AWS-generated tags (tags that have the aws: prefix).",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTags(args) = ec2("DeleteTags", args)
"""
    CreateTags

Adds or overwrites the specified tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource. For more information about tags, see Tagging Your Resources in the Amazon Elastic Compute Cloud User Guide. For more information about creating IAM policies that control users' access to resources based on tags, see Supported Resource-Level Permissions for Amazon EC2 API Actions in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "Tags": "The tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.",
  "Resources": "The IDs of the resources, separated by spaces. Constraints: Up to 1000 resource IDs. We recommend breaking up this request into smaller batches."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CreateTags(args) = ec2("CreateTags", args)
"""
    CreateFpgaImage

Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP). The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs. An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on multiple FPGA-accelerated instances. For more information, see the AWS FPGA Hardware Development Kit.

Required Parameters:
{
  "InputStorageLocation": "The location of the encrypted design checkpoint in Amazon S3. The input must be a tarball."
}


Optional Parameters:
{
  "LogsStorageLocation": "The location in Amazon S3 for the output logs.",
  "Description": "A description for the AFI.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the FPGA image during creation.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see Ensuring Idempotency.",
  "Name": "A name for the AFI."
}

"""

CreateFpgaImage(args) = ec2("CreateFpgaImage", args)
"""
    CreateDefaultVpc

Creates a default VPC with a size /16 IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see Default VPC and Default Subnets in the Amazon Virtual Private Cloud User Guide. You cannot specify the components of the default VPC yourself. If you deleted your previous default VPC, you can create a default VPC. You cannot have more than one default VPC per Region. If your account supports EC2-Classic, you cannot use this action to create a default VPC in a Region that supports EC2-Classic. If you want a default VPC in a Region that supports EC2-Classic, see "I really want a default VPC for my existing EC2 account. Is that possible?" in the Default VPCs FAQ.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
CreateDefaultVpc() = ec2("CreateDefaultVpc")
CreateDefaultVpc(args) = ec2("CreateDefaultVpc", args)

"""
    GetLaunchTemplateData

Retrieves the configuration data of the specified instance. You can use this data to create a launch template.

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

GetLaunchTemplateData(args) = ec2("GetLaunchTemplateData", args)
"""
    DescribeImportImageTasks

Displays details about an import virtual machine or import snapshot tasks that are already created.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call.",
  "NextToken": "A token that indicates the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ImportTaskIds": "The IDs of the import image tasks.",
  "Filters": "Filter tasks using the task-state filter and one of the following values: active, completed, deleting, or deleted."
}

"""
DescribeImportImageTasks() = ec2("DescribeImportImageTasks")
DescribeImportImageTasks(args) = ec2("DescribeImportImageTasks", args)

"""
    ModifyReservedInstances

Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type. For more information, see Modifying Reserved Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "TargetConfigurations": "The configuration settings for the Reserved Instances to modify.",
  "ReservedInstancesIds": "The IDs of the Reserved Instances to modify."
}


Optional Parameters:
{
  "ClientToken": "A unique, case-sensitive token you provide to ensure idempotency of your modification request. For more information, see Ensuring Idempotency."
}

"""

ModifyReservedInstances(args) = ec2("ModifyReservedInstances", args)
"""
    DescribeHostReservationOfferings

Describes the Dedicated Host reservations that are available to purchase. The results describe all of the Dedicated Host reservation offerings, including offerings that might not match the instance family and Region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated. For more information about supported instance types, see Dedicated Hosts Overview in the Amazon Elastic Compute Cloud User Guide. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value. This value can be between 5 and 500. If maxResults is given a larger value than 500, you receive an error.",
  "MaxDuration": "This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.",
  "MinDuration": "This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.",
  "NextToken": "The token to use to retrieve the next page of results.",
  "Filter": "The filters.    instance-family - The instance family of the offering (for example, m4).    payment-option - The payment option (NoUpfront | PartialUpfront | AllUpfront).  ",
  "OfferingId": "The ID of the reservation offering."
}

"""
DescribeHostReservationOfferings() = ec2("DescribeHostReservationOfferings")
DescribeHostReservationOfferings(args) = ec2("DescribeHostReservationOfferings", args)

"""
    PurchaseReservedInstancesOffering

Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing. Use DescribeReservedInstancesOfferings to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with DescribeReservedInstances. To queue a purchase for a future date and time, specify a purchase time. If you do not specify a purchase time, the default is the current time. For more information, see Reserved Instances and Reserved Instance Marketplace in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "ReservedInstancesOfferingId": "The ID of the Reserved Instance offering to purchase.",
  "InstanceCount": "The number of Reserved Instances to purchase."
}


Optional Parameters:
{
  "PurchaseTime": "The time at which to purchase the Reserved Instance, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ).",
  "LimitPrice": "Specified for Reserved Instance Marketplace offerings to limit the total order and ensure that the Reserved Instances are not purchased at unexpected prices.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

PurchaseReservedInstancesOffering(args) = ec2("PurchaseReservedInstancesOffering", args)
"""
    ModifyInstanceCreditSpecification

Modifies the credit option for CPU usage on a running or stopped burstable performance instance. The credit options are standard and unlimited. For more information, see Burstable Performance Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceCreditSpecifications": "Information about the credit option for CPU usage."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ClientToken": "A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see Ensuring Idempotency."
}

"""

ModifyInstanceCreditSpecification(args) = ec2("ModifyInstanceCreditSpecification", args)
"""
    GetTransitGatewayRouteTableAssociations

Gets information about the associations for the specified transit gateway route table.

Required Parameters:
{
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    resource-id - The ID of the resource.    resource-type - The resource type (vpc | vpn).    transit-gateway-attachment-id - The ID of the attachment.  "
}

"""

GetTransitGatewayRouteTableAssociations(args) = ec2("GetTransitGatewayRouteTableAssociations", args)
"""
    DescribeInstances

Describes the specified instances or all of AWS account's instances. If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results. Recently terminated instances might appear in the returned results. This interval is usually less than one hour. If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.

Required Parameters:
{}


Optional Parameters:
{
  "InstanceIds": "The instance IDs. Default: Describes all your instances.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.",
  "NextToken": "The token to request the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    affinity - The affinity setting for an instance running on a Dedicated Host (default | host).    architecture - The instance architecture (i386 | x86_64 | arm64).    availability-zone - The Availability Zone of the instance.    block-device-mapping.attach-time - The attach time for an EBS volume mapped to the instance, for example, 2010-09-15T17:15:20.000Z.    block-device-mapping.delete-on-termination - A Boolean that indicates whether the EBS volume is deleted on instance termination.    block-device-mapping.device-name - The device name specified in the block device mapping (for example, /dev/sdh or xvdh).    block-device-mapping.status - The status for the EBS volume (attaching | attached | detaching | detached).    block-device-mapping.volume-id - The volume ID of the EBS volume.    client-token - The idempotency token you provided when you launched the instance.    dns-name - The public DNS name of the instance.    group-id - The ID of the security group for the instance. EC2-Classic only.    group-name - The name of the security group for the instance. EC2-Classic only.    hibernation-options.configured - A Boolean that indicates whether the instance is enabled for hibernation. A value of true means that the instance is enabled for hibernation.     host-id - The ID of the Dedicated Host on which the instance is running, if applicable.    hypervisor - The hypervisor type of the instance (ovm | xen).    iam-instance-profile.arn - The instance profile associated with the instance. Specified as an ARN.    image-id - The ID of the image used to launch the instance.    instance-id - The ID of the instance.    instance-lifecycle - Indicates whether this is a Spot Instance or a Scheduled Instance (spot | scheduled).    instance-state-code - The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).    instance-state-name - The state of the instance (pending | running | shutting-down | terminated | stopping | stopped).    instance-type - The type of instance (for example, t2.micro).    instance.group-id - The ID of the security group for the instance.     instance.group-name - The name of the security group for the instance.     ip-address - The public IPv4 address of the instance.    kernel-id - The kernel ID.    key-name - The name of the key pair used when the instance was launched.    launch-index - When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).     launch-time - The time when the instance was launched.    metadata-options.http-tokens - The metadata request authorization state (optional | required)    metadata-options.http-put-response-hop-limit - The http metadata request put response hop limit (integer, possible values 1 to 64)    metadata-options.http-endpoint - Enable or disable metadata access on http endpoint (enabled | disabled)    monitoring-state - Indicates whether detailed monitoring is enabled (disabled | enabled).    network-interface.addresses.private-ip-address - The private IPv4 address associated with the network interface.    network-interface.addresses.primary - Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.    network-interface.addresses.association.public-ip - The ID of the association of an Elastic IP address (IPv4) with a network interface.    network-interface.addresses.association.ip-owner-id - The owner ID of the private IPv4 address associated with the network interface.    network-interface.association.public-ip - The address of the Elastic IP address (IPv4) bound to the network interface.    network-interface.association.ip-owner-id - The owner of the Elastic IP address (IPv4) associated with the network interface.    network-interface.association.allocation-id - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.    network-interface.association.association-id - The association ID returned when the network interface was associated with an IPv4 address.    network-interface.attachment.attachment-id - The ID of the interface attachment.    network-interface.attachment.instance-id - The ID of the instance to which the network interface is attached.    network-interface.attachment.instance-owner-id - The owner ID of the instance to which the network interface is attached.    network-interface.attachment.device-index - The device index to which the network interface is attached.    network-interface.attachment.status - The status of the attachment (attaching | attached | detaching | detached).    network-interface.attachment.attach-time - The time that the network interface was attached to an instance.    network-interface.attachment.delete-on-termination - Specifies whether the attachment is deleted when an instance is terminated.    network-interface.availability-zone - The Availability Zone for the network interface.    network-interface.description - The description of the network interface.    network-interface.group-id - The ID of a security group associated with the network interface.    network-interface.group-name - The name of a security group associated with the network interface.    network-interface.ipv6-addresses.ipv6-address - The IPv6 address associated with the network interface.    network-interface.mac-address - The MAC address of the network interface.    network-interface.network-interface-id - The ID of the network interface.    network-interface.owner-id - The ID of the owner of the network interface.    network-interface.private-dns-name - The private DNS name of the network interface.    network-interface.requester-id - The requester ID for the network interface.    network-interface.requester-managed - Indicates whether the network interface is being managed by AWS.    network-interface.status - The status of the network interface (available) | in-use).    network-interface.source-dest-check - Whether the network interface performs source/destination checking. A value of true means that checking is enabled, and false means that checking is disabled. The value must be false for the network interface to perform network address translation (NAT) in your VPC.    network-interface.subnet-id - The ID of the subnet for the network interface.    network-interface.vpc-id - The ID of the VPC for the network interface.    owner-id - The AWS account ID of the instance owner.    placement-group-name - The name of the placement group for the instance.    placement-partition-number - The partition in which the instance is located.    platform - The platform. To list only Windows instances, use windows.    private-dns-name - The private IPv4 DNS name of the instance.    private-ip-address - The private IPv4 address of the instance.    product-code - The product code associated with the AMI used to launch the instance.    product-code.type - The type of product code (devpay | marketplace).    ramdisk-id - The RAM disk ID.    reason - The reason for the current state of the instance (for example, shows \"User Initiated [date]\" when you stop or terminate the instance). Similar to the state-reason-code filter.    requester-id - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).    reservation-id - The ID of the instance's reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.    root-device-name - The device name of the root device volume (for example, /dev/sda1).    root-device-type - The type of the root device volume (ebs | instance-store).    source-dest-check - Indicates whether the instance performs source/destination checking. A value of true means that checking is enabled, and false means that checking is disabled. The value must be false for the instance to perform network address translation (NAT) in your VPC.     spot-instance-request-id - The ID of the Spot Instance request.    state-reason-code - The reason code for the state change.    state-reason-message - A message that describes the state change.    subnet-id - The ID of the subnet for the instance.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.    tenancy - The tenancy of an instance (dedicated | default | host).    virtualization-type - The virtualization type of the instance (paravirtual | hvm).    vpc-id - The ID of the VPC that the instance is running in.  "
}

"""
DescribeInstances() = ec2("DescribeInstances")
DescribeInstances(args) = ec2("DescribeInstances", args)

"""
    CreateTransitGatewayRouteTable

Creates a route table for the specified transit gateway.

Required Parameters:
{
  "TransitGatewayId": "The ID of the transit gateway."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the transit gateway route table."
}

"""

CreateTransitGatewayRouteTable(args) = ec2("CreateTransitGatewayRouteTable", args)
"""
    PurchaseHostReservation

Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.

Required Parameters:
{
  "HostIdSet": "The IDs of the Dedicated Hosts with which the reservation will be associated.",
  "OfferingId": "The ID of the offering."
}


Optional Parameters:
{
  "LimitPrice": "The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is USD. For example, to indicate a limit price of USD 100, specify 100.00.",
  "CurrencyCode": "The currency in which the totalUpfrontPrice, LimitPrice, and totalHourlyPrice amounts are specified. At this time, the only supported currency is USD.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""

PurchaseHostReservation(args) = ec2("PurchaseHostReservation", args)
"""
    DeleteVpcPeeringConnection

Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the active state. The owner of the requester VPC can delete a VPC peering connection in the pending-acceptance state. You cannot delete a VPC peering connection that's in the failed state.

Required Parameters:
{
  "VpcPeeringConnectionId": "The ID of the VPC peering connection."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpcPeeringConnection(args) = ec2("DeleteVpcPeeringConnection", args)
"""
    DescribeLocalGatewayVirtualInterfaceGroups

Describes the specified local gateway virtual interface groups.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.",
  "LocalGatewayVirtualInterfaceGroupIds": "The IDs of the virtual interface groups."
}

"""
DescribeLocalGatewayVirtualInterfaceGroups() = ec2("DescribeLocalGatewayVirtualInterfaceGroups")
DescribeLocalGatewayVirtualInterfaceGroups(args) = ec2("DescribeLocalGatewayVirtualInterfaceGroups", args)

"""
    ModifyDefaultCreditSpecification

Modifies the default credit option for CPU usage of burstable performance instances. The default credit option is set at the account level per AWS Region, and is specified per instance family. All new burstable performance instances in the account launch using the default credit option.  ModifyDefaultCreditSpecification is an asynchronous operation, which works at an AWS Region level and modifies the credit option for each Availability Zone. All zones in a Region are updated within five minutes. But if instances are launched during this operation, they might not get the new credit option until the zone is updated. To verify whether the update has occurred, you can call GetDefaultCreditSpecification and check DefaultCreditSpecification for updates. For more information, see Burstable Performance Instances in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "InstanceFamily": "The instance family.",
  "CpuCredits": "The credit option for CPU usage of the instance family. Valid Values: standard | unlimited "
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ModifyDefaultCreditSpecification(args) = ec2("ModifyDefaultCreditSpecification", args)
"""
    DescribeClientVpnEndpoints

Describes one or more Client VPN endpoints in the account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.",
  "NextToken": "The token to retrieve the next page of results.",
  "ClientVpnEndpointIds": "The ID of the Client VPN endpoint.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. Filter names and values are case-sensitive.    endpoint-id - The ID of the Client VPN endpoint.    transport-protocol - The transport protocol (tcp | udp).  "
}

"""
DescribeClientVpnEndpoints() = ec2("DescribeClientVpnEndpoints")
DescribeClientVpnEndpoints(args) = ec2("DescribeClientVpnEndpoints", args)

"""
    CancelConversionTask

Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception. For more information, see Importing a Virtual Machine Using the Amazon EC2 CLI.

Required Parameters:
{
  "ConversionTaskId": "The ID of the conversion task."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "ReasonMessage": "The reason for canceling the conversion task."
}

"""

CancelConversionTask(args) = ec2("CancelConversionTask", args)
"""
    GetTransitGatewayRouteTablePropagations

Gets information about the route table propagations for the specified transit gateway route table.

Required Parameters:
{
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    resource-id - The ID of the resource.    resource-type - The resource type (vpc | vpn).    transit-gateway-attachment-id - The ID of the attachment.  "
}

"""

GetTransitGatewayRouteTablePropagations(args) = ec2("GetTransitGatewayRouteTablePropagations", args)
"""
    DescribeTrafficMirrorTargets

Information about one or more Traffic Mirror targets.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters. The possible values are:    description: The Traffic Mirror target description.    network-interface-id: The ID of the Traffic Mirror session network interface.    network-load-balancer-arn: The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the session.    owner-id: The ID of the account that owns the Traffic Mirror session.    traffic-mirror-target-id: The ID of the Traffic Mirror target.  ",
  "TrafficMirrorTargetIds": "The ID of the Traffic Mirror targets."
}

"""
DescribeTrafficMirrorTargets() = ec2("DescribeTrafficMirrorTargets")
DescribeTrafficMirrorTargets(args) = ec2("DescribeTrafficMirrorTargets", args)

"""
    RevokeSecurityGroupEgress

[VPC only] Removes the specified egress rules from a security group for EC2-VPC. This action doesn't apply to security groups for use in EC2-Classic. To remove a rule, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule. Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.

Required Parameters:
{
  "GroupId": "The ID of the security group."
}


Optional Parameters:
{
  "SourceSecurityGroupName": "Not supported. Use a set of IP permissions to specify a destination security group.",
  "SourceSecurityGroupOwnerId": "Not supported. Use a set of IP permissions to specify a destination security group.",
  "CidrIp": "Not supported. Use a set of IP permissions to specify the CIDR.",
  "IpProtocol": "Not supported. Use a set of IP permissions to specify the protocol name or number.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "FromPort": "Not supported. Use a set of IP permissions to specify the port.",
  "ToPort": "Not supported. Use a set of IP permissions to specify the port.",
  "IpPermissions": "The sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions."
}

"""

RevokeSecurityGroupEgress(args) = ec2("RevokeSecurityGroupEgress", args)
"""
    DescribeSubnets

Describes one or more of your subnets. For more information, see Your VPC and Subnets in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "SubnetIds": "One or more subnet IDs. Default: Describes all your subnets.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    availability-zone - The Availability Zone for the subnet. You can also use availabilityZone as the filter name.    availability-zone-id - The ID of the Availability Zone for the subnet. You can also use availabilityZoneId as the filter name.    available-ip-address-count - The number of IPv4 addresses in the subnet that are available.    cidr-block - The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet's CIDR block for information to be returned for the subnet. You can also use cidr or cidrBlock as the filter names.    default-for-az - Indicates whether this is the default subnet for the Availability Zone. You can also use defaultForAz as the filter name.    ipv6-cidr-block-association.ipv6-cidr-block - An IPv6 CIDR block associated with the subnet.    ipv6-cidr-block-association.association-id - An association ID for an IPv6 CIDR block associated with the subnet.    ipv6-cidr-block-association.state - The state of an IPv6 CIDR block associated with the subnet.    owner-id - The ID of the AWS account that owns the subnet.    state - The state of the subnet (pending | available).    subnet-arn - The Amazon Resource Name (ARN) of the subnet.    subnet-id - The ID of the subnet.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-id - The ID of the VPC for the subnet.  "
}

"""
DescribeSubnets() = ec2("DescribeSubnets")
DescribeSubnets(args) = ec2("DescribeSubnets", args)

"""
    CreateNetworkInterfacePermission

Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account. You can grant permission to a single AWS account only, and only one account at a time.

Required Parameters:
{
  "Permission": "The type of permission to grant.",
  "NetworkInterfaceId": "The ID of the network interface."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "AwsAccountId": "The AWS account ID.",
  "AwsService": "The AWS service. Currently not supported."
}

"""

CreateNetworkInterfacePermission(args) = ec2("CreateNetworkInterfacePermission", args)
"""
    DescribeLocalGatewayRouteTableVpcAssociations

Describes the specified associations between VPCs and local gateway route tables.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "LocalGatewayRouteTableVpcAssociationIds": "The IDs of the associations.",
  "Filters": "One or more filters."
}

"""
DescribeLocalGatewayRouteTableVpcAssociations() = ec2("DescribeLocalGatewayRouteTableVpcAssociations")
DescribeLocalGatewayRouteTableVpcAssociations(args) = ec2("DescribeLocalGatewayRouteTableVpcAssociations", args)

"""
    GetEbsEncryptionByDefault

Describes whether EBS encryption by default is enabled for your account in the current Region. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
GetEbsEncryptionByDefault() = ec2("GetEbsEncryptionByDefault")
GetEbsEncryptionByDefault(args) = ec2("GetEbsEncryptionByDefault", args)

"""
    ModifyVpcAttribute

Modifies the specified attribute of the specified VPC.

Required Parameters:
{
  "VpcId": "The ID of the VPC."
}


Optional Parameters:
{
  "EnableDnsHostnames": "Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not. You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute. You can only enable DNS hostnames if you've enabled DNS support.",
  "EnableDnsSupport": "Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range \"plus two\" succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled. You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute."
}

"""

ModifyVpcAttribute(args) = ec2("ModifyVpcAttribute", args)
"""
    CreateTrafficMirrorTarget

Creates a target for your Traffic Mirror session. A Traffic Mirror target is the destination for mirrored traffic. The Traffic Mirror source and the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in different VPCs connected via VPC peering or a transit gateway. A Traffic Mirror target can be a network interface, or a Network Load Balancer. To use the target in a Traffic Mirror session, use CreateTrafficMirrorSession.

Required Parameters:
{}


Optional Parameters:
{
  "Description": "The description of the Traffic Mirror target.",
  "NetworkInterfaceId": "The network interface ID that is associated with the target.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkLoadBalancerArn": "The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.",
  "TagSpecifications": "The tags to assign to the Traffic Mirror target.",
  "ClientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see How to Ensure Idempotency."
}

"""
CreateTrafficMirrorTarget() = ec2("CreateTrafficMirrorTarget")
CreateTrafficMirrorTarget(args) = ec2("CreateTrafficMirrorTarget", args)

"""
    SendDiagnosticInterrupt

Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a kernel panic (on Linux instances), or a blue screen/stop error (on Windows instances). For instances based on Intel and AMD processors, the interrupt is received as a non-maskable interrupt (NMI). In general, the operating system crashes and reboots when a kernel panic or stop error is triggered. The operating system can also be configured to perform diagnostic tasks, such as generating a memory dump file, loading a secondary kernel, or obtaining a call trace. Before sending a diagnostic interrupt to your instance, ensure that its operating system is configured to perform the required diagnostic tasks. For more information about configuring your operating system to generate a crash dump when a kernel panic or stop error occurs, see Send a Diagnostic Interrupt (Linux instances) or Send a Diagnostic Interrupt (Windows instances).

Required Parameters:
{
  "InstanceId": "The ID of the instance."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

SendDiagnosticInterrupt(args) = ec2("SendDiagnosticInterrupt", args)
"""
    DetachNetworkInterface

Detaches a network interface from an instance.

Required Parameters:
{
  "AttachmentId": "The ID of the attachment."
}


Optional Parameters:
{
  "Force": "Specifies whether to force a detachment.    Use the Force parameter only as a last resort to detach a network interface from a failed instance.    If you use the Force parameter to detach a network interface, you might not be able to attach a different network interface to the same index on the instance without first stopping and starting the instance.   If you force the detachment of a network interface, the instance metadata might not get updated. This means that the attributes associated with the detached network interface might still be visible. The instance metadata will get updated when you stop and start the instance.   ",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DetachNetworkInterface(args) = ec2("DetachNetworkInterface", args)
"""
    ModifyFpgaImageAttribute

Modifies the specified attribute of the specified Amazon FPGA Image (AFI).

Required Parameters:
{
  "FpgaImageId": "The ID of the AFI."
}


Optional Parameters:
{
  "ProductCodes": "The product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the productCodes attribute.",
  "Description": "A description for the AFI.",
  "LoadPermission": "The load permission for the AFI.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Attribute": "The name of the attribute.",
  "OperationType": "The operation type.",
  "UserIds": "The AWS account IDs. This parameter is valid only when modifying the loadPermission attribute.",
  "UserGroups": "The user groups. This parameter is valid only when modifying the loadPermission attribute.",
  "Name": "A name for the AFI."
}

"""

ModifyFpgaImageAttribute(args) = ec2("ModifyFpgaImageAttribute", args)
"""
    DisassociateSubnetCidrBlock

Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. 

Required Parameters:
{
  "AssociationId": "The association ID for the CIDR block."
}


Optional Parameters:
{}

"""

DisassociateSubnetCidrBlock(args) = ec2("DisassociateSubnetCidrBlock", args)
"""
    DescribeVpcPeeringConnections

Describes one or more of your VPC peering connections.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token for the next page of results.",
  "VpcPeeringConnectionIds": "One or more VPC peering connection IDs. Default: Describes all your VPC peering connections.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "One or more filters.    accepter-vpc-info.cidr-block - The IPv4 CIDR block of the accepter VPC.    accepter-vpc-info.owner-id - The AWS account ID of the owner of the accepter VPC.    accepter-vpc-info.vpc-id - The ID of the accepter VPC.    expiration-time - The expiration date and time for the VPC peering connection.    requester-vpc-info.cidr-block - The IPv4 CIDR block of the requester's VPC.    requester-vpc-info.owner-id - The AWS account ID of the owner of the requester VPC.    requester-vpc-info.vpc-id - The ID of the requester VPC.    status-code - The status of the VPC peering connection (pending-acceptance | failed | expired | provisioning | active | deleting | deleted | rejected).    status-message - A message that provides more information about the status of the VPC peering connection, if applicable.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    vpc-peering-connection-id - The ID of the VPC peering connection.  "
}

"""
DescribeVpcPeeringConnections() = ec2("DescribeVpcPeeringConnections")
DescribeVpcPeeringConnections(args) = ec2("DescribeVpcPeeringConnections", args)

"""
    DescribeImages

Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the images available to you. The images available to you include public images, private images that you own, and private images owned by other AWS accounts for which you have explicit launch permissions. Recently deregistered images appear in the returned results for a short interval and then return empty results. After all instances that reference a deregistered AMI are terminated, specifying the ID of the image results in an error indicating that the AMI ID cannot be found.

Required Parameters:
{}


Optional Parameters:
{
  "ImageIds": "The image IDs. Default: Describes all images available to you.",
  "Owners": "Filters the images by the owner. Specify an AWS account ID, self (owner is the sender of the request), or an AWS owner alias (valid values are amazon | aws-marketplace | microsoft). Omitting this option returns all images for which you have launch permissions, regardless of ownership.",
  "ExecutableUsers": "Scopes the images by users with explicit launch permissions. Specify an AWS account ID, self (the sender of the request), or all (public AMIs).",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    architecture - The image architecture (i386 | x86_64 | arm64).    block-device-mapping.delete-on-termination - A Boolean value that indicates whether the Amazon EBS volume is deleted on instance termination.    block-device-mapping.device-name - The device name specified in the block device mapping (for example, /dev/sdh or xvdh).    block-device-mapping.snapshot-id - The ID of the snapshot used for the EBS volume.    block-device-mapping.volume-size - The volume size of the EBS volume, in GiB.    block-device-mapping.volume-type - The volume type of the EBS volume (gp2 | io1 | st1 | sc1 | standard).    block-device-mapping.encrypted - A Boolean that indicates whether the EBS volume is encrypted.    description - The description of the image (provided during image creation).    ena-support - A Boolean that indicates whether enhanced networking with ENA is enabled.    hypervisor - The hypervisor type (ovm | xen).    image-id - The ID of the image.    image-type - The image type (machine | kernel | ramdisk).    is-public - A Boolean that indicates whether the image is public.    kernel-id - The kernel ID.    manifest-location - The location of the image manifest.    name - The name of the AMI (provided during image creation).    owner-alias - String value from an Amazon-maintained list (amazon | aws-marketplace | microsoft) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.    owner-id - The AWS account ID of the image owner.    platform - The platform. To only list Windows-based AMIs, use windows.    product-code - The product code.    product-code.type - The type of the product code (devpay | marketplace).    ramdisk-id - The RAM disk ID.    root-device-name - The device name of the root device volume (for example, /dev/sda1).    root-device-type - The type of the root device volume (ebs | instance-store).    state - The state of the image (available | pending | failed).    state-reason-code - The reason code for the state change.    state-reason-message - The message for the state change.    sriov-net-support - A value of simple indicates that enhanced networking with the Intel 82599 VF interface is enabled.    tag:&lt;key&gt; - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key Owner and the value TeamA, specify tag:Owner for the filter name and TeamA for the filter value.    tag-key - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.    virtualization-type - The virtualization type (paravirtual | hvm).  "
}

"""
DescribeImages() = ec2("DescribeImages")
DescribeImages(args) = ec2("DescribeImages", args)

"""
    DescribeBundleTasks

Describes the specified bundle tasks or all of your bundle tasks.  Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use RegisterImage with the Amazon S3 bucket name and image manifest name you provided to the bundle task. 

Required Parameters:
{}


Optional Parameters:
{
  "BundleIds": "The bundle task IDs. Default: Describes all your bundle tasks.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "Filters": "The filters.    bundle-id - The ID of the bundle task.    error-code - If the task failed, the error code returned.    error-message - If the task failed, the error message returned.    instance-id - The ID of the instance.    progress - The level of task completion, as a percentage (for example, 20%).    s3-bucket - The Amazon S3 bucket to store the AMI.    s3-prefix - The beginning of the AMI name.    start-time - The time the task started (for example, 2013-09-15T17:15:20.000Z).    state - The state of the task (pending | waiting-for-shutdown | bundling | storing | cancelling | complete | failed).    update-time - The time of the most recent update for the task.  "
}

"""
DescribeBundleTasks() = ec2("DescribeBundleTasks")
DescribeBundleTasks(args) = ec2("DescribeBundleTasks", args)

"""
    CopySnapshot

Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same Region or from one Region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless you enable encryption for the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a different CMK. To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot. Snapshots created by copying another snapshot have an arbitrary volume ID that should not be used for any purpose. For more information, see Copying an Amazon EBS Snapshot in the Amazon Elastic Compute Cloud User Guide.

Required Parameters:
{
  "SourceRegion": "The ID of the Region that contains the snapshot to be copied.",
  "SourceSnapshotId": "The ID of the EBS snapshot to copy."
}


Optional Parameters:
{
  "PresignedUrl": "When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see Query Requests. The PresignedUrl should use the snapshot source endpoint, the CopySnapshot action, and include the SourceRegion, SourceSnapshotId, and DestinationRegion parameters. The PresignedUrl must be signed using AWS Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in Authenticating Requests by Using Query Parameters (AWS Signature Version 4) in the Amazon Simple Storage Service API Reference. An invalid or improperly signed PresignedUrl will cause the copy operation to fail asynchronously, and the snapshot will move to an error state.",
  "Description": "A description for the EBS snapshot.",
  "DestinationRegion": "The destination Region to use in the PresignedUrl parameter of a snapshot copy operation. This parameter is only valid for specifying the destination Region in a PresignedUrl parameter, where it is required. The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, ec2.us-east-1.amazonaws.com). With the AWS CLI, this is specified using the --region parameter or the default Region in your AWS configuration file.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TagSpecifications": "The tags to apply to the new snapshot.",
  "Encrypted": "To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled, enable encryption using this parameter. Otherwise, omit this parameter. Encrypted snapshots are encrypted, even if you omit this parameter and encryption by default is not enabled. You cannot set this parameter to false. For more information, see Amazon EBS Encryption in the Amazon Elastic Compute Cloud User Guide.",
  "KmsKeyId": "The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If KmsKeyId is specified, the encrypted state must be true. You can specify the CMK using any of the following:   Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.   Key alias. For example, alias/ExampleAlias.   Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.   Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.   AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails."
}

"""

CopySnapshot(args) = ec2("CopySnapshot", args)
"""
    ModifyTrafficMirrorSession

Modifies a Traffic Mirror session.

Required Parameters:
{
  "TrafficMirrorSessionId": "The ID of the Traffic Mirror session."
}


Optional Parameters:
{
  "Description": "The description to assign to the Traffic Mirror session.",
  "PacketLength": "The number of bytes in each packet to mirror. These are bytes after the VXLAN header. To mirror a subset, set this to the length (in bytes) to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target. Do not specify this parameter when you want to mirror the entire packet.",
  "SessionNumber": "The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets. Valid values are 1-32766.",
  "RemoveFields": "The properties that you want to remove from the Traffic Mirror session. When you remove a property from a Traffic Mirror session, the property is set to the default.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "TrafficMirrorTargetId": "The Traffic Mirror target. The target must be in the same VPC as the source, or have a VPC peering connection with the source.",
  "VirtualNetworkId": "The virtual network ID of the Traffic Mirror session.",
  "TrafficMirrorFilterId": "The ID of the Traffic Mirror filter."
}

"""

ModifyTrafficMirrorSession(args) = ec2("ModifyTrafficMirrorSession", args)
"""
    ResetInstanceAttribute

Resets an attribute of an instance to its default value. To reset the kernel or ramdisk, the instance must be in a stopped state. To reset the sourceDestCheck, the instance can be either running or stopped. The sourceDestCheck attribute controls whether source/destination checking is enabled. The default value is true, which means checking is enabled. This value must be false for a NAT instance to perform NAT. For more information, see NAT Instances in the Amazon Virtual Private Cloud User Guide.

Required Parameters:
{
  "InstanceId": "The ID of the instance.",
  "Attribute": "The attribute to reset.  You can only reset the following attributes: kernel | ramdisk | sourceDestCheck. To change an instance attribute, use ModifyInstanceAttribute. "
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ResetInstanceAttribute(args) = ec2("ResetInstanceAttribute", args)
"""
    ReplaceRouteTableAssociation

Changes the route table associated with a given subnet, internet gateway, or virtual private gateway in a VPC. After the operation completes, the subnet or gateway uses the routes in the new route table. For more information about route tables, see Route Tables in the Amazon Virtual Private Cloud User Guide. You can also use this operation to change which table is the main route table in the VPC. Specify the main route table's association ID and the route table ID of the new main route table.

Required Parameters:
{
  "AssociationId": "The association ID.",
  "RouteTableId": "The ID of the new route table to associate with the subnet."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

ReplaceRouteTableAssociation(args) = ec2("ReplaceRouteTableAssociation", args)
"""
    DescribeScheduledInstanceAvailability

Finds available schedules that meet the specified criteria. You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours. After you find a schedule that meets your needs, call PurchaseScheduledInstances to purchase Scheduled Instances with that schedule.

Required Parameters:
{
  "Recurrence": "The schedule recurrence.",
  "FirstSlotStartTimeRange": "The time period for the first schedule to start."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token for the next set of results.",
  "MinSlotDurationInHours": "The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "MaxSlotDurationInHours": "The maximum available duration, in hours. This value must be greater than MinSlotDurationInHours and less than 1,720.",
  "Filters": "The filters.    availability-zone - The Availability Zone (for example, us-west-2a).    instance-type - The instance type (for example, c4.large).    network-platform - The network platform (EC2-Classic or EC2-VPC).    platform - The platform (Linux/UNIX or Windows).  "
}

"""

DescribeScheduledInstanceAvailability(args) = ec2("DescribeScheduledInstanceAvailability", args)
"""
    DeleteVpcEndpointServiceConfigurations

Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any Available or PendingAcceptance interface endpoint connections that are attached to the service.

Required Parameters:
{
  "ServiceIds": "The IDs of one or more services."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteVpcEndpointServiceConfigurations(args) = ec2("DeleteVpcEndpointServiceConfigurations", args)
"""
    DescribeAggregateIdFormat

Describes the longer ID format settings for all resource types in a specific Region. This request is useful for performing a quick audit to determine whether a specific Region is fully opted in for longer IDs (17-character IDs). This request only returns information about resource types that support longer IDs. The following resource types support longer IDs: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway.

Required Parameters:
{}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""
DescribeAggregateIdFormat() = ec2("DescribeAggregateIdFormat")
DescribeAggregateIdFormat(args) = ec2("DescribeAggregateIdFormat", args)

"""
    DeleteLocalGatewayRoute

Deletes the specified route from the specified local gateway route table.

Required Parameters:
{
  "DestinationCidrBlock": "The CIDR range for the route. This must match the CIDR for the route exactly.",
  "LocalGatewayRouteTableId": "The ID of the local gateway route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteLocalGatewayRoute(args) = ec2("DeleteLocalGatewayRoute", args)
"""
    DisableFastSnapshotRestores

Disables fast snapshot restores for the specified snapshots in the specified Availability Zones.

Required Parameters:
{
  "SourceSnapshotIds": "The IDs of one or more snapshots. For example, snap-1234567890abcdef0.",
  "AvailabilityZones": "One or more Availability Zones. For example, us-east-2a."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DisableFastSnapshotRestores(args) = ec2("DisableFastSnapshotRestores", args)
"""
    CancelBundleTask

Cancels a bundling operation for an instance store-backed Windows instance.

Required Parameters:
{
  "BundleId": "The ID of the bundle task."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

CancelBundleTask(args) = ec2("CancelBundleTask", args)
"""
    DescribeIdentityIdFormat

Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see Resource IDs in the Amazon Elastic Compute Cloud User Guide.  The following resource types support longer IDs: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway.  These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.

Required Parameters:
{
  "PrincipalArn": "The ARN of the principal, which can be an IAM role, IAM user, or the root user."
}


Optional Parameters:
{
  "Resource": "The type of resource: bundle | conversion-task | customer-gateway | dhcp-options | elastic-ip-allocation | elastic-ip-association | export-task | flow-log | image | import-task | instance | internet-gateway | network-acl | network-acl-association | network-interface | network-interface-attachment | prefix-list | reservation | route-table | route-table-association | security-group | snapshot | subnet | subnet-cidr-block-association | volume | vpc | vpc-cidr-block-association | vpc-endpoint | vpc-peering-connection | vpn-connection | vpn-gateway "
}

"""

DescribeIdentityIdFormat(args) = ec2("DescribeIdentityIdFormat", args)
"""
    RegisterTransitGatewayMulticastGroupSources

Registers sources (network interfaces) with the specified transit gateway multicast group. A multicast source is a network interface attached to a supported instance that sends multicast traffic. For information about supported instances, see Multicast Considerations in Amazon VPC Transit Gateways. After you add the source, use SearchTransitGatewayMulticastGroups to verify that the source was added to the multicast group.

Required Parameters:
{}


Optional Parameters:
{
  "TransitGatewayMulticastDomainId": "The ID of the transit gateway multicast domain.",
  "GroupIpAddress": "The IP address assigned to the transit gateway multicast group.",
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.",
  "NetworkInterfaceIds": "The group sources' network interface IDs to register with the transit gateway multicast group."
}

"""
RegisterTransitGatewayMulticastGroupSources() = ec2("RegisterTransitGatewayMulticastGroupSources")
RegisterTransitGatewayMulticastGroupSources(args) = ec2("RegisterTransitGatewayMulticastGroupSources", args)

"""
    DeleteTransitGatewayRouteTable

Deletes the specified transit gateway route table. You must disassociate the route table from any transit gateway route tables before you can delete it.

Required Parameters:
{
  "TransitGatewayRouteTableId": "The ID of the transit gateway route table."
}


Optional Parameters:
{
  "DryRun": "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation."
}

"""

DeleteTransitGatewayRouteTable(args) = ec2("DeleteTransitGatewayRouteTable", args)