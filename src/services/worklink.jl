include("../AWSCorePrototypeServices.jl")
using .Services: worklink

"""
Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. 

Required Parameters:
FleetArn, DomainName
"""
DisassociateDomain(args) = worklink("POST", "/disassociateDomain", args)

"""
Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.

Required Parameters:
FleetArn, Certificate
"""
AssociateWebsiteCertificateAuthority(args) = worklink("POST", "/associateWebsiteCertificateAuthority", args)

"""
Updates the company network configuration for the fleet.

Required Parameters:
FleetArn, VpcId, SubnetIds, SecurityGroupIds
"""
UpdateCompanyNetworkConfiguration(args) = worklink("POST", "/updateCompanyNetworkConfiguration", args)

"""
Retrieves a list of devices registered with the specified fleet.

Required Parameters:
FleetArn
"""
ListDevices(args) = worklink("POST", "/listDevices", args)

"""
Describes the device policy configuration for the specified fleet.

Required Parameters:
FleetArn
"""
DescribeDevicePolicyConfiguration(args) = worklink("POST", "/describeDevicePolicyConfiguration", args)

"""
Updates the device policy configuration for the fleet.

Required Parameters:
FleetArn
"""
UpdateDevicePolicyConfiguration(args) = worklink("POST", "/updateDevicePolicyConfiguration", args)

"""
Provides information about the domain.

Required Parameters:
FleetArn, DomainName
"""
DescribeDomain(args) = worklink("POST", "/describeDomain", args)

"""
Moves a domain to ACTIVE status if it was in the INACTIVE status.

Required Parameters:
FleetArn, DomainName
"""
RestoreDomainAccess(args) = worklink("POST", "/restoreDomainAccess", args)

"""
Removes a certificate authority (CA).

Required Parameters:
FleetArn, WebsiteCaId
"""
DisassociateWebsiteCertificateAuthority(args) = worklink("POST", "/disassociateWebsiteCertificateAuthority", args)

"""
Moves a domain to INACTIVE status if it was in the ACTIVE status.

Required Parameters:
FleetArn, DomainName
"""
RevokeDomainAccess(args) = worklink("POST", "/revokeDomainAccess", args)

"""
Retrieves a list of domains associated to a specified fleet.

Required Parameters:
FleetArn
"""
ListDomains(args) = worklink("POST", "/listDomains", args)

"""
Updates domain metadata, such as DisplayName.

Required Parameters:
FleetArn, DomainName
"""
UpdateDomainMetadata(args) = worklink("POST", "/updateDomainMetadata", args)

"""
Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.

Required Parameters:
FleetArn
"""
DescribeFleetMetadata(args) = worklink("POST", "/describeFleetMetadata", args)

"""
Retrieves a list of fleets for the current account and Region.
"""
ListFleets() = worklink("POST", "/listFleets")

"""
Provides information about the certificate authority.

Required Parameters:
FleetArn, WebsiteCaId
"""
DescribeWebsiteCertificateAuthority(args) = worklink("POST", "/describeWebsiteCertificateAuthority", args)

"""
Specifies a domain to be associated to Amazon WorkLink.

Required Parameters:
FleetArn, DomainName, AcmCertificateArn
"""
AssociateDomain(args) = worklink("POST", "/associateDomain", args)

"""
Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.

Required Parameters:
FleetArn, AuthorizationProviderId
"""
DisassociateWebsiteAuthorizationProvider(args) = worklink("POST", "/disassociateWebsiteAuthorizationProvider", args)

"""
Updates the audit stream configuration for the fleet.

Required Parameters:
FleetArn
"""
UpdateAuditStreamConfiguration(args) = worklink("POST", "/updateAuditStreamConfiguration", args)

"""
Updates fleet metadata, such as DisplayName.

Required Parameters:
FleetArn
"""
UpdateFleetMetadata(args) = worklink("POST", "/UpdateFleetMetadata", args)

"""
Retrieves a list of certificate authorities added for the current account and Region.

Required Parameters:
FleetArn
"""
ListWebsiteCertificateAuthorities(args) = worklink("POST", "/listWebsiteCertificateAuthorities", args)

"""
Retrieves a list of website authorization providers associated with a specified fleet.

Required Parameters:
FleetArn
"""
ListWebsiteAuthorizationProviders(args) = worklink("POST", "/listWebsiteAuthorizationProviders", args)

"""
Deletes a fleet. Prevents users from accessing previously associated websites. 

Required Parameters:
FleetArn
"""
DeleteFleet(args) = worklink("POST", "/deleteFleet", args)

"""
Provides information about a user's device.

Required Parameters:
FleetArn, DeviceId
"""
DescribeDevice(args) = worklink("POST", "/describeDevice", args)

"""
Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.

Required Parameters:
FleetArn, AuthorizationProviderType
"""
AssociateWebsiteAuthorizationProvider(args) = worklink("POST", "/associateWebsiteAuthorizationProvider", args)

"""
Signs the user out from all of their devices. The user can sign in again if they have valid credentials.

Required Parameters:
FleetArn, Username
"""
SignOutUser(args) = worklink("POST", "/signOutUser", args)

"""
Updates the identity provider configuration for the fleet.

Required Parameters:
FleetArn, IdentityProviderType
"""
UpdateIdentityProviderConfiguration(args) = worklink("POST", "/updateIdentityProviderConfiguration", args)

"""
Describes the configuration for delivering audit streams to the customer account.

Required Parameters:
FleetArn
"""
DescribeAuditStreamConfiguration(args) = worklink("POST", "/describeAuditStreamConfiguration", args)

"""
Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.

Required Parameters:
FleetName
"""
CreateFleet(args) = worklink("POST", "/createFleet", args)

"""
Describes the networking configuration to access the internal websites associated with the specified fleet.

Required Parameters:
FleetArn
"""
DescribeCompanyNetworkConfiguration(args) = worklink("POST", "/describeCompanyNetworkConfiguration", args)

"""
Describes the identity provider configuration of the specified fleet.

Required Parameters:
FleetArn
"""
DescribeIdentityProviderConfiguration(args) = worklink("POST", "/describeIdentityProviderConfiguration", args)
