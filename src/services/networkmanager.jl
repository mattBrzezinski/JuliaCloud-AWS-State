include("../AWSCorePrototypeServices.jl")
using .Services: networkmanager

"""
Gets information about one or more of your devices in a global network.

Required Parameters:
GlobalNetworkId
"""
GetDevices(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/devices", args)

"""
Lists the tags for a specified resource.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = networkmanager("GET", "/tags/{resourceArn}", args)

"""
Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.

Required Parameters:
GlobalNetworkId
"""
DeleteGlobalNetwork(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}", args)

"""
Deletes an existing link. You must first disassociate the link from any devices and customer gateways.

Required Parameters:
GlobalNetworkId, LinkId
"""
DeleteLink(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/links/{linkId}", args)

"""
Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.

Required Parameters:
GlobalNetworkId, DeviceId, LinkId
"""
AssociateLink(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/link-associations", args)

"""
Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.

Required Parameters:
GlobalNetworkId
"""
CreateDevice(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/devices", args)

"""
Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.

Required Parameters:
GlobalNetworkId, TransitGatewayArn
"""
DeregisterTransitGateway(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}", args)

"""
Creates a new link for a specified site.

Required Parameters:
GlobalNetworkId, Bandwidth, SiteId
"""
CreateLink(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/links", args)

"""
Creates a new, empty global network.
"""
CreateGlobalNetwork() = networkmanager("POST", "/global-networks")

"""
Gets information about the transit gateway registrations in a specified global network.

Required Parameters:
GlobalNetworkId
"""
GetTransitGatewayRegistrations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/transit-gateway-registrations", args)

"""
Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.

Required Parameters:
GlobalNetworkId
"""
GetLinkAssociations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/link-associations", args)

"""
Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.

Required Parameters:
GlobalNetworkId, DeviceId, LinkId
"""
DisassociateLink(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/link-associations", args)

"""
Gets the association information for customer gateways that are associated with devices and links in your global network.

Required Parameters:
GlobalNetworkId
"""
GetCustomerGatewayAssociations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/customer-gateway-associations", args)

"""
Tags a specified resource.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = networkmanager("POST", "/tags/{resourceArn}", args)

"""
Creates a new site in a global network.

Required Parameters:
GlobalNetworkId
"""
CreateSite(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/sites", args)

"""
Removes tags from a specified resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = networkmanager("DELETE", "/tags/{resourceArn}", args)

"""
Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.

Required Parameters:
GlobalNetworkId, LinkId
"""
UpdateLink(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/links/{linkId}", args)

"""
Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.

Required Parameters:
GlobalNetworkId, SiteId
"""
UpdateSite(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/sites/{siteId}", args)

"""
Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
"""
DescribeGlobalNetworks() = networkmanager("GET", "/global-networks")

"""
Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 

Required Parameters:
CustomerGatewayArn, GlobalNetworkId, DeviceId
"""
AssociateCustomerGateway(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/customer-gateway-associations", args)

"""
Updates an existing global network. To remove information for any of the parameters, specify an empty string.

Required Parameters:
GlobalNetworkId
"""
UpdateGlobalNetwork(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}", args)

"""
Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.

Required Parameters:
GlobalNetworkId
"""
GetLinks(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/links", args)

"""
Disassociates a customer gateway from a device and a link.

Required Parameters:
GlobalNetworkId, CustomerGatewayArn
"""
DisassociateCustomerGateway(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}", args)

"""
Deletes an existing device. You must first disassociate the device from any links and customer gateways.

Required Parameters:
GlobalNetworkId, DeviceId
"""
DeleteDevice(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/devices/{deviceId}", args)

"""
Deletes an existing site. The site cannot be associated with any device or link.

Required Parameters:
GlobalNetworkId, SiteId
"""
DeleteSite(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/sites/{siteId}", args)

"""
Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.

Required Parameters:
GlobalNetworkId, TransitGatewayArn
"""
RegisterTransitGateway(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/transit-gateway-registrations", args)

"""
Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.

Required Parameters:
GlobalNetworkId, DeviceId
"""
UpdateDevice(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/devices/{deviceId}", args)

"""
Gets information about one or more of your sites in a global network.

Required Parameters:
GlobalNetworkId
"""
GetSites(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/sites", args)
