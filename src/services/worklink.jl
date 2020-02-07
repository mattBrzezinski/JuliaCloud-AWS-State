include("../AWSCorePrototypeServices.jl")
using .Services: worklink

"""
Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. 
"""
DisassociateDomain(FleetArn, DomainName) = worklink("POST", "/disassociateDomain")
DisassociateDomain(FleetArn, DomainName, args) = worklink("POST", "/disassociateDomain", args)
DisassociateDomain(a...; b...) = DisassociateDomain(a..., b)

"""
Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
"""
AssociateWebsiteCertificateAuthority(FleetArn, Certificate) = worklink("POST", "/associateWebsiteCertificateAuthority")
AssociateWebsiteCertificateAuthority(FleetArn, Certificate, args) = worklink("POST", "/associateWebsiteCertificateAuthority", args)
AssociateWebsiteCertificateAuthority(a...; b...) = AssociateWebsiteCertificateAuthority(a..., b)

"""
Updates the company network configuration for the fleet.
"""
UpdateCompanyNetworkConfiguration(FleetArn, VpcId, SubnetIds, SecurityGroupIds) = worklink("POST", "/updateCompanyNetworkConfiguration")
UpdateCompanyNetworkConfiguration(FleetArn, VpcId, SubnetIds, SecurityGroupIds, args) = worklink("POST", "/updateCompanyNetworkConfiguration", args)
UpdateCompanyNetworkConfiguration(a...; b...) = UpdateCompanyNetworkConfiguration(a..., b)

"""
Retrieves a list of devices registered with the specified fleet.
"""
ListDevices(FleetArn) = worklink("POST", "/listDevices")
ListDevices(FleetArn, args) = worklink("POST", "/listDevices", args)
ListDevices(a...; b...) = ListDevices(a..., b)

"""
Describes the device policy configuration for the specified fleet.
"""
DescribeDevicePolicyConfiguration(FleetArn) = worklink("POST", "/describeDevicePolicyConfiguration")
DescribeDevicePolicyConfiguration(FleetArn, args) = worklink("POST", "/describeDevicePolicyConfiguration", args)
DescribeDevicePolicyConfiguration(a...; b...) = DescribeDevicePolicyConfiguration(a..., b)

"""
Updates the device policy configuration for the fleet.
"""
UpdateDevicePolicyConfiguration(FleetArn) = worklink("POST", "/updateDevicePolicyConfiguration")
UpdateDevicePolicyConfiguration(FleetArn, args) = worklink("POST", "/updateDevicePolicyConfiguration", args)
UpdateDevicePolicyConfiguration(a...; b...) = UpdateDevicePolicyConfiguration(a..., b)

"""
Provides information about the domain.
"""
DescribeDomain(FleetArn, DomainName) = worklink("POST", "/describeDomain")
DescribeDomain(FleetArn, DomainName, args) = worklink("POST", "/describeDomain", args)
DescribeDomain(a...; b...) = DescribeDomain(a..., b)

"""
Moves a domain to ACTIVE status if it was in the INACTIVE status.
"""
RestoreDomainAccess(FleetArn, DomainName) = worklink("POST", "/restoreDomainAccess")
RestoreDomainAccess(FleetArn, DomainName, args) = worklink("POST", "/restoreDomainAccess", args)
RestoreDomainAccess(a...; b...) = RestoreDomainAccess(a..., b)

"""
Removes a certificate authority (CA).
"""
DisassociateWebsiteCertificateAuthority(FleetArn, WebsiteCaId) = worklink("POST", "/disassociateWebsiteCertificateAuthority")
DisassociateWebsiteCertificateAuthority(FleetArn, WebsiteCaId, args) = worklink("POST", "/disassociateWebsiteCertificateAuthority", args)
DisassociateWebsiteCertificateAuthority(a...; b...) = DisassociateWebsiteCertificateAuthority(a..., b)

"""
Moves a domain to INACTIVE status if it was in the ACTIVE status.
"""
RevokeDomainAccess(FleetArn, DomainName) = worklink("POST", "/revokeDomainAccess")
RevokeDomainAccess(FleetArn, DomainName, args) = worklink("POST", "/revokeDomainAccess", args)
RevokeDomainAccess(a...; b...) = RevokeDomainAccess(a..., b)

"""
Retrieves a list of domains associated to a specified fleet.
"""
ListDomains(FleetArn) = worklink("POST", "/listDomains")
ListDomains(FleetArn, args) = worklink("POST", "/listDomains", args)
ListDomains(a...; b...) = ListDomains(a..., b)

"""
Updates domain metadata, such as DisplayName.
"""
UpdateDomainMetadata(FleetArn, DomainName) = worklink("POST", "/updateDomainMetadata")
UpdateDomainMetadata(FleetArn, DomainName, args) = worklink("POST", "/updateDomainMetadata", args)
UpdateDomainMetadata(a...; b...) = UpdateDomainMetadata(a..., b)

"""
Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
"""
DescribeFleetMetadata(FleetArn) = worklink("POST", "/describeFleetMetadata")
DescribeFleetMetadata(FleetArn, args) = worklink("POST", "/describeFleetMetadata", args)
DescribeFleetMetadata(a...; b...) = DescribeFleetMetadata(a..., b)

"""
Retrieves a list of fleets for the current account and Region.
"""
ListFleets() = worklink("POST", "/listFleets")
ListFleets(, args) = worklink("POST", "/listFleets", args)
ListFleets(a...; b...) = ListFleets(a..., b)

"""
Provides information about the certificate authority.
"""
DescribeWebsiteCertificateAuthority(FleetArn, WebsiteCaId) = worklink("POST", "/describeWebsiteCertificateAuthority")
DescribeWebsiteCertificateAuthority(FleetArn, WebsiteCaId, args) = worklink("POST", "/describeWebsiteCertificateAuthority", args)
DescribeWebsiteCertificateAuthority(a...; b...) = DescribeWebsiteCertificateAuthority(a..., b)

"""
Specifies a domain to be associated to Amazon WorkLink.
"""
AssociateDomain(FleetArn, DomainName, AcmCertificateArn) = worklink("POST", "/associateDomain")
AssociateDomain(FleetArn, DomainName, AcmCertificateArn, args) = worklink("POST", "/associateDomain", args)
AssociateDomain(a...; b...) = AssociateDomain(a..., b)

"""
Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
"""
DisassociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderId) = worklink("POST", "/disassociateWebsiteAuthorizationProvider")
DisassociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderId, args) = worklink("POST", "/disassociateWebsiteAuthorizationProvider", args)
DisassociateWebsiteAuthorizationProvider(a...; b...) = DisassociateWebsiteAuthorizationProvider(a..., b)

"""
Updates the audit stream configuration for the fleet.
"""
UpdateAuditStreamConfiguration(FleetArn) = worklink("POST", "/updateAuditStreamConfiguration")
UpdateAuditStreamConfiguration(FleetArn, args) = worklink("POST", "/updateAuditStreamConfiguration", args)
UpdateAuditStreamConfiguration(a...; b...) = UpdateAuditStreamConfiguration(a..., b)

"""
Updates fleet metadata, such as DisplayName.
"""
UpdateFleetMetadata(FleetArn) = worklink("POST", "/UpdateFleetMetadata")
UpdateFleetMetadata(FleetArn, args) = worklink("POST", "/UpdateFleetMetadata", args)
UpdateFleetMetadata(a...; b...) = UpdateFleetMetadata(a..., b)

"""
Retrieves a list of certificate authorities added for the current account and Region.
"""
ListWebsiteCertificateAuthorities(FleetArn) = worklink("POST", "/listWebsiteCertificateAuthorities")
ListWebsiteCertificateAuthorities(FleetArn, args) = worklink("POST", "/listWebsiteCertificateAuthorities", args)
ListWebsiteCertificateAuthorities(a...; b...) = ListWebsiteCertificateAuthorities(a..., b)

"""
Retrieves a list of website authorization providers associated with a specified fleet.
"""
ListWebsiteAuthorizationProviders(FleetArn) = worklink("POST", "/listWebsiteAuthorizationProviders")
ListWebsiteAuthorizationProviders(FleetArn, args) = worklink("POST", "/listWebsiteAuthorizationProviders", args)
ListWebsiteAuthorizationProviders(a...; b...) = ListWebsiteAuthorizationProviders(a..., b)

"""
Deletes a fleet. Prevents users from accessing previously associated websites. 
"""
DeleteFleet(FleetArn) = worklink("POST", "/deleteFleet")
DeleteFleet(FleetArn, args) = worklink("POST", "/deleteFleet", args)
DeleteFleet(a...; b...) = DeleteFleet(a..., b)

"""
Provides information about a user's device.
"""
DescribeDevice(FleetArn, DeviceId) = worklink("POST", "/describeDevice")
DescribeDevice(FleetArn, DeviceId, args) = worklink("POST", "/describeDevice", args)
DescribeDevice(a...; b...) = DescribeDevice(a..., b)

"""
Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
"""
AssociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderType) = worklink("POST", "/associateWebsiteAuthorizationProvider")
AssociateWebsiteAuthorizationProvider(FleetArn, AuthorizationProviderType, args) = worklink("POST", "/associateWebsiteAuthorizationProvider", args)
AssociateWebsiteAuthorizationProvider(a...; b...) = AssociateWebsiteAuthorizationProvider(a..., b)

"""
Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
"""
SignOutUser(FleetArn, Username) = worklink("POST", "/signOutUser")
SignOutUser(FleetArn, Username, args) = worklink("POST", "/signOutUser", args)
SignOutUser(a...; b...) = SignOutUser(a..., b)

"""
Updates the identity provider configuration for the fleet.
"""
UpdateIdentityProviderConfiguration(FleetArn, IdentityProviderType) = worklink("POST", "/updateIdentityProviderConfiguration")
UpdateIdentityProviderConfiguration(FleetArn, IdentityProviderType, args) = worklink("POST", "/updateIdentityProviderConfiguration", args)
UpdateIdentityProviderConfiguration(a...; b...) = UpdateIdentityProviderConfiguration(a..., b)

"""
Describes the configuration for delivering audit streams to the customer account.
"""
DescribeAuditStreamConfiguration(FleetArn) = worklink("POST", "/describeAuditStreamConfiguration")
DescribeAuditStreamConfiguration(FleetArn, args) = worklink("POST", "/describeAuditStreamConfiguration", args)
DescribeAuditStreamConfiguration(a...; b...) = DescribeAuditStreamConfiguration(a..., b)

"""
Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
"""
CreateFleet(FleetName) = worklink("POST", "/createFleet")
CreateFleet(FleetName, args) = worklink("POST", "/createFleet", args)
CreateFleet(a...; b...) = CreateFleet(a..., b)

"""
Describes the networking configuration to access the internal websites associated with the specified fleet.
"""
DescribeCompanyNetworkConfiguration(FleetArn) = worklink("POST", "/describeCompanyNetworkConfiguration")
DescribeCompanyNetworkConfiguration(FleetArn, args) = worklink("POST", "/describeCompanyNetworkConfiguration", args)
DescribeCompanyNetworkConfiguration(a...; b...) = DescribeCompanyNetworkConfiguration(a..., b)

"""
Describes the identity provider configuration of the specified fleet.
"""
DescribeIdentityProviderConfiguration(FleetArn) = worklink("POST", "/describeIdentityProviderConfiguration")
DescribeIdentityProviderConfiguration(FleetArn, args) = worklink("POST", "/describeIdentityProviderConfiguration", args)
DescribeIdentityProviderConfiguration(a...; b...) = DescribeIdentityProviderConfiguration(a..., b)
