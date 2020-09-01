include("../AWSCorePrototypeServices.jl")
using .Services: route_53_domains

"""
    UpdateTagsForDomain()

This operation adds or updates tags for a specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters
{
  "DomainName": "The domain for which you want to add or update tags."
}

Optional Parameters
{
  "TagsToUpdate": "A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced."
}
"""
UpdateTagsForDomain(args) = route_53_domains("UpdateTagsForDomain", args)

"""
    EnableDomainTransferLock()

This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters
{
  "DomainName": "The name of the domain that you want to set the transfer lock for."
}
"""
EnableDomainTransferLock(args) = route_53_domains("EnableDomainTransferLock", args)

"""
    UpdateDomainNameservers()

This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain. If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters
{
  "DomainName": "The name of the domain that you want to change name servers for.",
  "Nameservers": "A list of new name servers for the domain."
}

Optional Parameters
{
  "FIAuthKey": "The authorization key for .fi domains"
}
"""
UpdateDomainNameservers(args) = route_53_domains("UpdateDomainNameservers", args)

"""
    ViewBilling()

Returns all the domain-related billing records for the current AWS account for a specified period

Optional Parameters
{
  "Marker": "For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for MaxItems, you can use Marker to return additional billing records. Get the value of NextPageMarker from the previous response, and submit another request that includes the value of NextPageMarker in the Marker element.  Constraints: The marker must match the value of NextPageMarker that was returned in the previous response.",
  "Start": "The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC).",
  "MaxItems": "The number of billing records to be returned. Default: 20",
  "End": "The end date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC)."
}
"""

ViewBilling() = route_53_domains("ViewBilling")
ViewBilling(args) = route_53_domains("ViewBilling", args)

"""
    RegisterDomain()

This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters. When you register a domain, Amazon Route 53 does the following:   Creates a Route 53 hosted zone that has the same name as the domain. Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.   Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.   Charges your AWS account an amount based on the top-level domain. For more information, see Amazon Route 53 Pricing.  

Required Parameters
{
  "DomainName": "The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. The domain name can contain only the following characters:   Letters a through z. Domain names are not case sensitive.   Numbers 0 through 9.   Hyphen (-). You can't specify a hyphen at the beginning or end of a label.    Period (.) to separate the labels in the name, such as the . in example.com.   Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see Domains that You Can Register with Amazon Route 53. For more information, see Formatting Internationalized Domain Names. ",
  "AdminContact": "Provides detailed contact information. For information about the values that you specify for each element, see ContactDetail.",
  "TechContact": "Provides detailed contact information. For information about the values that you specify for each element, see ContactDetail.",
  "DurationInYears": "The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. Default: 1",
  "RegistrantContact": "Provides detailed contact information. For information about the values that you specify for each element, see ContactDetail."
}

Optional Parameters
{
  "PrivacyProtectAdminContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the admin contact. Default: true ",
  "PrivacyProtectTechContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the technical contact. Default: true ",
  "AutoRenew": "Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged. Default: true ",
  "IdnLangCode": "Reserved for future use.",
  "PrivacyProtectRegistrantContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the registrant contact (the domain owner). Default: true "
}
"""
RegisterDomain(args) = route_53_domains("RegisterDomain", args)

"""
    DeleteTagsForDomain()

This operation deletes the specified tags for a domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters
{
  "DomainName": "The domain for which you want to delete one or more tags.",
  "TagsToDelete": "A list of tag keys to delete."
}
"""
DeleteTagsForDomain(args) = route_53_domains("DeleteTagsForDomain", args)

"""
    GetContactReachabilityStatus()

For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded. If you want us to resend the email, use the ResendContactReachabilityEmail operation.

Optional Parameters
{
  "domainName": "The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid."
}
"""

GetContactReachabilityStatus() = route_53_domains("GetContactReachabilityStatus")
GetContactReachabilityStatus(args) = route_53_domains("GetContactReachabilityStatus", args)

"""
    UpdateDomainContactPrivacy()

This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi. This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.  By disabling the privacy service via API, you consent to the publication of the contact information provided for this domain via the public WHOIS database. You certify that you are the registrant of this domain name and have the authority to make this decision. You may withdraw your consent at any time by enabling privacy protection using either UpdateDomainContactPrivacy or the Route 53 console. Enabling privacy protection removes the contact information provided for this domain from the WHOIS database. For more information on our privacy practices, see https://aws.amazon.com/privacy/. 

Required Parameters
{
  "DomainName": "The name of the domain that you want to update the privacy setting for."
}

Optional Parameters
{
  "RegistrantPrivacy": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the registrant contact (domain owner).",
  "AdminPrivacy": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the admin contact.",
  "TechPrivacy": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the technical contact."
}
"""
UpdateDomainContactPrivacy(args) = route_53_domains("UpdateDomainContactPrivacy", args)

"""
    ListDomains()

This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.

Optional Parameters
{
  "Marker": "For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for MaxItems, you can use Marker to return additional domains. Get the value of NextPageMarker from the previous response, and submit another request that includes the value of NextPageMarker in the Marker element. Constraints: The marker must match the value specified in the previous request.",
  "MaxItems": "Number of domains to be returned. Default: 20"
}
"""

ListDomains() = route_53_domains("ListDomains")
ListDomains(args) = route_53_domains("ListDomains", args)

"""
    ResendContactReachabilityEmail()

For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.

Optional Parameters
{
  "domainName": "The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact."
}
"""

ResendContactReachabilityEmail() = route_53_domains("ResendContactReachabilityEmail")
ResendContactReachabilityEmail(args) = route_53_domains("ResendContactReachabilityEmail", args)

"""
    RenewDomain()

This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account. We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see Renewing Registration for a Domain in the Amazon Route 53 Developer Guide.

Required Parameters
{
  "DomainName": "The name of the domain that you want to renew.",
  "CurrentExpiryYear": "The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain."
}

Optional Parameters
{
  "DurationInYears": "The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. Default: 1"
}
"""
RenewDomain(args) = route_53_domains("RenewDomain", args)

"""
    RetrieveDomainAuthCode()

This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.

Required Parameters
{
  "DomainName": "The name of the domain that you want to get an authorization code for."
}
"""
RetrieveDomainAuthCode(args) = route_53_domains("RetrieveDomainAuthCode", args)

"""
    TransferDomain()

Transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs). For more information about transferring domains, see the following topics:   For transfer requirements, a detailed procedure, and information about viewing the status of a domain that you're transferring to Route 53, see Transferring Registration for a Domain to Amazon Route 53 in the Amazon Route 53 Developer Guide.   For information about how to transfer a domain from one AWS account to another, see TransferDomainToAnotherAwsAccount.    For information about how to transfer a domain to another domain registrar, see Transferring a Domain from Amazon Route 53 to Another Registrar in the Amazon Route 53 Developer Guide.   If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you transfer your DNS service to Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.  If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.  If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.

Required Parameters
{
  "DomainName": "The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. The domain name can contain only the following characters:   Letters a through z. Domain names are not case sensitive.   Numbers 0 through 9.   Hyphen (-). You can't specify a hyphen at the beginning or end of a label.    Period (.) to separate the labels in the name, such as the . in example.com.  ",
  "AdminContact": "Provides detailed contact information.",
  "TechContact": "Provides detailed contact information.",
  "DurationInYears": "The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. Default: 1",
  "RegistrantContact": "Provides detailed contact information."
}

Optional Parameters
{
  "PrivacyProtectAdminContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the admin contact. Default: true ",
  "PrivacyProtectTechContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the technical contact. Default: true ",
  "AutoRenew": "Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged. Default: true",
  "IdnLangCode": "Reserved for future use.",
  "Nameservers": "Contains details for the host and glue IP addresses.",
  "PrivacyProtectRegistrantContact": "Whether you want to conceal contact information from WHOIS queries. If you specify true, WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify false, WHOIS queries return the information that you entered for the registrant contact (domain owner). Default: true ",
  "AuthCode": "The authorization code for the domain. You get this value from the current registrar."
}
"""
TransferDomain(args) = route_53_domains("TransferDomain", args)

"""
    CheckDomainTransferability()

Checks whether a domain name can be transferred to Amazon Route 53. 

Required Parameters
{
  "DomainName": "The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. The domain name can contain only the following characters:   Letters a through z. Domain names are not case sensitive.   Numbers 0 through 9.   Hyphen (-). You can't specify a hyphen at the beginning or end of a label.    Period (.) to separate the labels in the name, such as the . in example.com.  "
}

Optional Parameters
{
  "AuthCode": "If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain, the code that you got from the current registrar for the domain."
}
"""
CheckDomainTransferability(args) = route_53_domains("CheckDomainTransferability", args)

"""
    EnableDomainAutoRenew()

This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account. The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see Domains That You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. Route 53 requires that you renew before the end of the renewal period so we can complete processing before the deadline.

Required Parameters
{
  "DomainName": "The name of the domain that you want to enable automatic renewal for."
}
"""
EnableDomainAutoRenew(args) = route_53_domains("EnableDomainAutoRenew", args)

"""
    GetDomainDetail()

This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.

Required Parameters
{
  "DomainName": "The name of the domain that you want to get detailed information about."
}
"""
GetDomainDetail(args) = route_53_domains("GetDomainDetail", args)

"""
    CancelDomainTransferToAnotherAwsAccount()

Cancels the transfer of a domain from the current AWS account to another AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.   You must cancel the transfer before the other AWS account accepts the transfer using AcceptDomainTransferFromAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 

Required Parameters
{
  "DomainName": "The name of the domain for which you want to cancel the transfer to another AWS account."
}
"""
CancelDomainTransferToAnotherAwsAccount(args) = route_53_domains("CancelDomainTransferToAnotherAwsAccount", args)

"""
    TransferDomainToAnotherAwsAccount()

Transfers a domain from the current AWS account to another AWS account. Note the following:   The AWS account that you're transferring the domain to must accept the transfer. If the other account doesn't accept the transfer within 3 days, we cancel the transfer. See AcceptDomainTransferFromAnotherAwsAccount.    You can cancel the transfer before the other account accepts it. See CancelDomainTransferToAnotherAwsAccount.    The other account can reject the transfer. See RejectDomainTransferFromAnotherAwsAccount.     When you transfer a domain from one AWS account to another, Route 53 doesn't transfer the hosted zone that is associated with the domain. DNS resolution isn't affected if the domain and the hosted zone are owned by separate accounts, so transferring the hosted zone is optional. For information about transferring the hosted zone to another AWS account, see Migrating a Hosted Zone to a Different AWS Account in the Amazon Route 53 Developer Guide.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 

Required Parameters
{
  "DomainName": "The name of the domain that you want to transfer from the current AWS account to another account.",
  "AccountId": "The account ID of the AWS account that you want to transfer the domain to, for example, 111122223333."
}
"""
TransferDomainToAnotherAwsAccount(args) = route_53_domains("TransferDomainToAnotherAwsAccount", args)

"""
    GetDomainSuggestions()

The GetDomainSuggestions operation returns a list of suggested domain names.

Required Parameters
{
  "SuggestionCount": "The number of suggested domain names that you want Route 53 to return. Specify a value between 1 and 50.",
  "OnlyAvailable": "If OnlyAvailable is true, Route 53 returns only domain names that are available. If OnlyAvailable is false, Route 53 returns domain names without checking whether they're available to be registered. To determine whether the domain is available, you can call checkDomainAvailability for each suggestion.",
  "DomainName": "A domain name that you want to use as the basis for a list of possible domain names. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. The domain name can contain only the following characters:   Letters a through z. Domain names are not case sensitive.   Numbers 0 through 9.   Hyphen (-). You can't specify a hyphen at the beginning or end of a label.    Period (.) to separate the labels in the name, such as the . in example.com.   Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see Domains that You Can Register with Amazon Route 53. "
}
"""
GetDomainSuggestions(args) = route_53_domains("GetDomainSuggestions", args)

"""
    UpdateDomainContact()

This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical. If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters
{
  "DomainName": "The name of the domain that you want to update contact information for."
}

Optional Parameters
{
  "AdminContact": "Provides detailed contact information.",
  "TechContact": "Provides detailed contact information.",
  "RegistrantContact": "Provides detailed contact information."
}
"""
UpdateDomainContact(args) = route_53_domains("UpdateDomainContact", args)

"""
    DisableDomainAutoRenew()

This operation disables automatic renewal of domain registration for the specified domain.

Required Parameters
{
  "DomainName": "The name of the domain that you want to disable automatic renewal for."
}
"""
DisableDomainAutoRenew(args) = route_53_domains("DisableDomainAutoRenew", args)

"""
    ListTagsForDomain()

This operation returns all of the tags that are associated with the specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.

Required Parameters
{
  "DomainName": "The domain for which you want to get a list of tags."
}
"""
ListTagsForDomain(args) = route_53_domains("ListTagsForDomain", args)

"""
    CheckDomainAvailability()

This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.

Required Parameters
{
  "DomainName": "The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see Domains that You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. The domain name can contain only the following characters:   Letters a through z. Domain names are not case sensitive.   Numbers 0 through 9.   Hyphen (-). You can't specify a hyphen at the beginning or end of a label.    Period (.) to separate the labels in the name, such as the . in example.com.   Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see Domains that You Can Register with Amazon Route 53. For more information, see Formatting Internationalized Domain Names. "
}

Optional Parameters
{
  "IdnLangCode": "Reserved for future use."
}
"""
CheckDomainAvailability(args) = route_53_domains("CheckDomainAvailability", args)

"""
    DisableDomainTransferLock()

This operation removes the transfer lock on the domain (specifically the clientTransferProhibited status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.

Required Parameters
{
  "DomainName": "The name of the domain that you want to remove the transfer lock for."
}
"""
DisableDomainTransferLock(args) = route_53_domains("DisableDomainTransferLock", args)

"""
    AcceptDomainTransferFromAnotherAwsAccount()

Accepts the transfer of a domain from another AWS account to the current AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 

Required Parameters
{
  "Password": "The password that was returned by the TransferDomainToAnotherAwsAccount request. ",
  "DomainName": "The name of the domain that was specified when another AWS account submitted a TransferDomainToAnotherAwsAccount request. "
}
"""
AcceptDomainTransferFromAnotherAwsAccount(args) = route_53_domains("AcceptDomainTransferFromAnotherAwsAccount", args)

"""
    GetOperationDetail()

This operation returns the current status of an operation that is not completed.

Required Parameters
{
  "OperationId": "The identifier for the operation for which you want to get the status. Route 53 returned the identifier in the response to the original request."
}
"""
GetOperationDetail(args) = route_53_domains("GetOperationDetail", args)

"""
    ListOperations()

Returns information about all of the operations that return an operation ID and that have ever been performed on domains that were registered by the current account. 

Optional Parameters
{
  "Marker": "For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for MaxItems, you can use Marker to return additional operations. Get the value of NextPageMarker from the previous response, and submit another request that includes the value of NextPageMarker in the Marker element.",
  "MaxItems": "Number of domains to be returned. Default: 20",
  "SubmittedSince": "An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Unix time format and Coordinated Universal time (UTC)."
}
"""

ListOperations() = route_53_domains("ListOperations")
ListOperations(args) = route_53_domains("ListOperations", args)

"""
    RejectDomainTransferFromAnotherAwsAccount()

Rejects the transfer of a domain from another AWS account to the current AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 

Required Parameters
{
  "DomainName": "The name of the domain that was specified when another AWS account submitted a TransferDomainToAnotherAwsAccount request. "
}
"""
RejectDomainTransferFromAnotherAwsAccount(args) = route_53_domains("RejectDomainTransferFromAnotherAwsAccount", args)