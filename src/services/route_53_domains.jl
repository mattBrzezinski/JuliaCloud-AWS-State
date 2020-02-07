include("../AWSCorePrototypeServices.jl")
using .Services: route_53_domains

"""
This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName
"""
EnableDomainTransferLock(args) = route_53_domains("EnableDomainTransferLock", args)

"""
This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain. If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName, Nameservers
"""
UpdateDomainNameservers(args) = route_53_domains("UpdateDomainNameservers", args)

"""
Returns all the domain-related billing records for the current AWS account for a specified period
"""
ViewBilling() = route_53_domains("ViewBilling")

"""
This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters. When you register a domain, Amazon Route 53 does the following:   Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.   Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.   Charges your AWS account an amount based on the top-level domain. For more information, see Amazon Route 53 Pricing.  

Required Parameters:
DomainName, DurationInYears, AdminContact, RegistrantContact, TechContact
"""
RegisterDomain(args) = route_53_domains("RegisterDomain", args)

"""
This operation deletes the specified tags for a domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters:
DomainName, TagsToDelete
"""
DeleteTagsForDomain(args) = route_53_domains("DeleteTagsForDomain", args)

"""
For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded. If you want us to resend the email, use the ResendContactReachabilityEmail operation.
"""
GetContactReachabilityStatus() = route_53_domains("GetContactReachabilityStatus")

"""
This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi. This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName
"""
UpdateDomainContactPrivacy(args) = route_53_domains("UpdateDomainContactPrivacy", args)

"""
This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
"""
ListDomains() = route_53_domains("ListDomains")

"""
For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
"""
ResendContactReachabilityEmail() = route_53_domains("ResendContactReachabilityEmail")

"""
This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account. We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see Renewing Registration for a Domain in the Amazon Route 53 Developer Guide.

Required Parameters:
DomainName, CurrentExpiryYear
"""
RenewDomain(args) = route_53_domains("RenewDomain", args)

"""
This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.

Required Parameters:
DomainName
"""
RetrieveDomainAuthCode(args) = route_53_domains("RetrieveDomainAuthCode", args)

"""
This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs). For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see Transferring Registration for a Domain to Amazon Route 53 in the Amazon Route 53 Developer Guide. If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.  If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.  If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName, DurationInYears, AdminContact, RegistrantContact, TechContact
"""
TransferDomain(args) = route_53_domains("TransferDomain", args)

"""
Checks whether a domain name can be transferred to Amazon Route 53. 

Required Parameters:
DomainName
"""
CheckDomainTransferability(args) = route_53_domains("CheckDomainTransferability", args)

"""
This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account. The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see "Renewal, restoration, and deletion times" on the website for our registrar associate, Gandi. Amazon Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.

Required Parameters:
DomainName
"""
EnableDomainAutoRenew(args) = route_53_domains("EnableDomainAutoRenew", args)

"""
This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.

Required Parameters:
DomainName
"""
GetDomainDetail(args) = route_53_domains("GetDomainDetail", args)

"""
The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).

Required Parameters:
DomainName, SuggestionCount, OnlyAvailable
"""
GetDomainSuggestions(args) = route_53_domains("GetDomainSuggestions", args)

"""
This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical. If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName
"""
UpdateDomainContact(args) = route_53_domains("UpdateDomainContact", args)

"""
This operation disables automatic renewal of domain registration for the specified domain.

Required Parameters:
DomainName
"""
DisableDomainAutoRenew(args) = route_53_domains("DisableDomainAutoRenew", args)

"""
This operation returns all of the tags that are associated with the specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters:
DomainName
"""
ListTagsForDomain(args) = route_53_domains("ListTagsForDomain", args)

"""
This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.

Required Parameters:
DomainName
"""
CheckDomainAvailability(args) = route_53_domains("CheckDomainAvailability", args)

"""
This operation removes the transfer lock on the domain (specifically the clientTransferProhibited status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters:
DomainName
"""
DisableDomainTransferLock(args) = route_53_domains("DisableDomainTransferLock", args)

"""
This operation returns the current status of an operation that is not completed.

Required Parameters:
OperationId
"""
GetOperationDetail(args) = route_53_domains("GetOperationDetail", args)

"""
This operation returns the operation IDs of operations that are not yet complete.
"""
ListOperations() = route_53_domains("ListOperations")

"""
This operation adds or updates tags for a specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters:
DomainName
"""
UpdateTagsForDomain(args) = route_53_domains("UpdateTagsForDomain", args)
