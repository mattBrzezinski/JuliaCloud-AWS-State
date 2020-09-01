include("../AWSCorePrototypeServices.jl")
using .Services: networkmanager

"""
    GetDevices()

Gets information about one or more of your devices in a global network.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token for the next page of results.",
  "SiteId": "The ID of the site.",
  "DeviceIds": "One or more device IDs. The maximum is 10."
}
"""
GetDevices(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/devices", args)

"""
    ListTagsForResource()

Lists the tags for a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource."
}
"""
ListTagsForResource(args) = networkmanager("GET", "/tags/{resourceArn}", args)

"""
    DeleteGlobalNetwork()

Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}
"""
DeleteGlobalNetwork(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}", args)

"""
    DeleteLink()

Deletes an existing link. You must first disassociate the link from any devices and customer gateways.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "LinkId": "The ID of the link."
}
"""
DeleteLink(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/links/{linkId}", args)

"""
    AssociateLink()

Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "DeviceId": "The ID of the device.",
  "LinkId": "The ID of the link."
}
"""
AssociateLink(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/link-associations", args)

"""
    CreateDevice()

Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "Description": "A description of the device. Length Constraints: Maximum length of 256 characters.",
  "Tags": "The tags to apply to the resource during creation.",
  "Type": "The type of the device.",
  "Location": "The location of the device.",
  "Model": "The model of the device. Length Constraints: Maximum length of 128 characters.",
  "Vendor": "The vendor of the device. Length Constraints: Maximum length of 128 characters.",
  "SiteId": "The ID of the site.",
  "SerialNumber": "The serial number of the device. Length Constraints: Maximum length of 128 characters."
}
"""
CreateDevice(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/devices", args)

"""
    DeregisterTransitGateway()

Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.

Required Parameters
{
  "TransitGatewayArn": "The Amazon Resource Name (ARN) of the transit gateway.",
  "GlobalNetworkId": "The ID of the global network."
}
"""
DeregisterTransitGateway(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}", args)

"""
    CreateLink()

Creates a new link for a specified site.

Required Parameters
{
  "Bandwidth": " The upload speed and download speed in Mbps. ",
  "GlobalNetworkId": "The ID of the global network.",
  "SiteId": "The ID of the site."
}

Optional Parameters
{
  "Description": "A description of the link. Length Constraints: Maximum length of 256 characters.",
  "Provider": "The provider of the link. Constraints: Cannot include the following characters: |   ^ Length Constraints: Maximum length of 128 characters.",
  "Tags": "The tags to apply to the resource during creation.",
  "Type": "The type of the link. Constraints: Cannot include the following characters: |   ^ Length Constraints: Maximum length of 128 characters."
}
"""
CreateLink(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/links", args)

"""
    CreateGlobalNetwork()

Creates a new, empty global network.

Optional Parameters
{
  "Description": "A description of the global network. Length Constraints: Maximum length of 256 characters.",
  "Tags": "The tags to apply to the resource during creation."
}
"""

CreateGlobalNetwork() = networkmanager("POST", "/global-networks")
CreateGlobalNetwork(args) = networkmanager("POST", "/global-networks", args)

"""
    GetTransitGatewayRegistrations()

Gets information about the transit gateway registrations in a specified global network.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "TransitGatewayArns": "The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is 10.",
  "NextToken": "The token for the next page of results."
}
"""
GetTransitGatewayRegistrations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/transit-gateway-registrations", args)

"""
    GetLinkAssociations()

Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token for the next page of results.",
  "DeviceId": "The ID of the device.",
  "LinkId": "The ID of the link."
}
"""
GetLinkAssociations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/link-associations", args)

"""
    DisassociateLink()

Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "DeviceId": "The ID of the device.",
  "LinkId": "The ID of the link."
}
"""
DisassociateLink(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/link-associations", args)

"""
    GetCustomerGatewayAssociations()

Gets the association information for customer gateways that are associated with devices and links in your global network.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token for the next page of results.",
  "CustomerGatewayArns": "One or more customer gateway Amazon Resource Names (ARNs). For more information, see Resources Defined by Amazon EC2. The maximum is 10."
}
"""
GetCustomerGatewayAssociations(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/customer-gateway-associations", args)

"""
    TagResource()

Tags a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "Tags": "The tags to apply to the specified resource."
}
"""
TagResource(args) = networkmanager("POST", "/tags/{resourceArn}", args)

"""
    CreateSite()

Creates a new site in a global network.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "Description": "A description of your site. Length Constraints: Maximum length of 256 characters.",
  "Tags": "The tags to apply to the resource during creation.",
  "Location": "The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.    Address: The physical address of the site.    Latitude: The latitude of the site.     Longitude: The longitude of the site.  "
}
"""
CreateSite(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/sites", args)

"""
    UntagResource()

Removes tags from a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource.",
  "TagKeys": "The tag keys to remove from the specified resource."
}
"""
UntagResource(args) = networkmanager("DELETE", "/tags/{resourceArn}", args)

"""
    UpdateLink()

Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "LinkId": "The ID of the link."
}

Optional Parameters
{
  "Bandwidth": "The upload and download speed in Mbps. ",
  "Description": "A description of the link. Length Constraints: Maximum length of 256 characters.",
  "Provider": "The provider of the link. Length Constraints: Maximum length of 128 characters.",
  "Type": "The type of the link. Length Constraints: Maximum length of 128 characters."
}
"""
UpdateLink(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/links/{linkId}", args)

"""
    UpdateSite()

Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "SiteId": "The ID of your site."
}

Optional Parameters
{
  "Description": "A description of your site. Length Constraints: Maximum length of 256 characters.",
  "Location": "The site location:    Address: The physical address of the site.    Latitude: The latitude of the site.     Longitude: The longitude of the site.  "
}
"""
UpdateSite(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/sites/{siteId}", args)

"""
    DescribeGlobalNetworks()

Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token for the next page of results.",
  "GlobalNetworkIds": "The IDs of one or more global networks. The maximum is 10."
}
"""

DescribeGlobalNetworks() = networkmanager("GET", "/global-networks")
DescribeGlobalNetworks(args) = networkmanager("GET", "/global-networks", args)

"""
    AssociateCustomerGateway()

Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "CustomerGatewayArn": "The Amazon Resource Name (ARN) of the customer gateway. For more information, see Resources Defined by Amazon EC2.",
  "DeviceId": "The ID of the device."
}

Optional Parameters
{
  "LinkId": "The ID of the link."
}
"""
AssociateCustomerGateway(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/customer-gateway-associations", args)

"""
    UpdateGlobalNetwork()

Updates an existing global network. To remove information for any of the parameters, specify an empty string.

Required Parameters
{
  "GlobalNetworkId": "The ID of your global network."
}

Optional Parameters
{
  "Description": "A description of the global network. Length Constraints: Maximum length of 256 characters."
}
"""
UpdateGlobalNetwork(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}", args)

"""
    GetLinks()

Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "Provider": "The link provider.",
  "NextToken": "The token for the next page of results.",
  "Type": "The link type.",
  "LinkIds": "One or more link IDs. The maximum is 10.",
  "SiteId": "The ID of the site."
}
"""
GetLinks(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/links", args)

"""
    DisassociateCustomerGateway()

Disassociates a customer gateway from a device and a link.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "CustomerGatewayArn": "The Amazon Resource Name (ARN) of the customer gateway. For more information, see Resources Defined by Amazon EC2."
}
"""
DisassociateCustomerGateway(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}", args)

"""
    DeleteDevice()

Deletes an existing device. You must first disassociate the device from any links and customer gateways.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "DeviceId": "The ID of the device."
}
"""
DeleteDevice(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/devices/{deviceId}", args)

"""
    DeleteSite()

Deletes an existing site. The site cannot be associated with any device or link.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "SiteId": "The ID of the site."
}
"""
DeleteSite(args) = networkmanager("DELETE", "/global-networks/{globalNetworkId}/sites/{siteId}", args)

"""
    RegisterTransitGateway()

Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.

Required Parameters
{
  "TransitGatewayArn": "The Amazon Resource Name (ARN) of the transit gateway. For more information, see Resources Defined by Amazon EC2.",
  "GlobalNetworkId": "The ID of the global network."
}
"""
RegisterTransitGateway(args) = networkmanager("POST", "/global-networks/{globalNetworkId}/transit-gateway-registrations", args)

"""
    UpdateDevice()

Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network.",
  "DeviceId": "The ID of the device."
}

Optional Parameters
{
  "Description": "A description of the device. Length Constraints: Maximum length of 256 characters.",
  "Type": "The type of the device.",
  "Location": "",
  "Model": "The model of the device. Length Constraints: Maximum length of 128 characters.",
  "Vendor": "The vendor of the device. Length Constraints: Maximum length of 128 characters.",
  "SiteId": "The ID of the site.",
  "SerialNumber": "The serial number of the device. Length Constraints: Maximum length of 128 characters."
}
"""
UpdateDevice(args) = networkmanager("PATCH", "/global-networks/{globalNetworkId}/devices/{deviceId}", args)

"""
    GetSites()

Gets information about one or more of your sites in a global network.

Required Parameters
{
  "GlobalNetworkId": "The ID of the global network."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "The token for the next page of results.",
  "SiteIds": "One or more site IDs. The maximum is 10."
}
"""
GetSites(args) = networkmanager("GET", "/global-networks/{globalNetworkId}/sites", args)