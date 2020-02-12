include("../AWSCorePrototypeServices.jl")
using .Services: sesv2

"""
    PutDedicatedIpWarmupAttributes



Required Parameters:
{
  "Ip": "The dedicated IP address that you want to update the warm-up attributes for.",
  "WarmupPercentage": "The warm-up percentage that you want to associate with the dedicated IP address."
}


Optional Parameters:
{}

"""

PutDedicatedIpWarmupAttributes(args) = sesv2("PUT", "/v2/email/dedicated-ips/{IP}/warmup", args)
"""
    CreateEmailIdentity

Starts the process of verifying an email identity. An identity is an email address or domain that you use when you send email. Before you can use an identity to send email, you first have to verify it. By verifying an identity, you demonstrate that you're the owner of the identity, and that you've given Amazon SES API v2 permission to send email from the identity. When you verify an email address, Amazon SES sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain without specifying the DkimSigningAttributes object, this operation provides a set of DKIM tokens. You can convert these tokens into CNAME records, which you then add to the DNS configuration for your domain. Your domain is verified when Amazon SES detects these records in the DNS configuration for your domain. This verification method is known as Easy DKIM. Alternatively, you can perform the verification process by providing your own public-private key pair. This verification method is known as Bring Your Own DKIM (BYODKIM). To use BYODKIM, your call to the CreateEmailIdentity operation has to include the DkimSigningAttributes object. When you specify this object, you provide a selector (a component of the DNS record name that identifies the public key that you want to use for DKIM authentication) and a private key.

Required Parameters:
{
  "EmailIdentity": "The email address or domain that you want to verify."
}


Optional Parameters:
{
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the email identity.",
  "DkimSigningAttributes": "If your request includes this object, Amazon SES configures the identity to use Bring Your Own DKIM (BYODKIM) for DKIM authentication purposes, as opposed to the default method, Easy DKIM. You can only specify this object if the email identity is a domain, as opposed to an address."
}

"""

CreateEmailIdentity(args) = sesv2("POST", "/v2/email/identities", args)
"""
    PutAccountSuppressionAttributes

Change the settings for the account-level suppression list.

Required Parameters:
{}


Optional Parameters:
{
  "SuppressedReasons": "A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. This list can contain any or all of the following:    COMPLAINT – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.    BOUNCE – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.  "
}

"""
PutAccountSuppressionAttributes() = sesv2("PUT", "/v2/email/account/suppression")
PutAccountSuppressionAttributes(args) = sesv2("PUT", "/v2/email/account/suppression", args)

"""
    CreateDedicatedIpPool

Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your AWS account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, the message is sent from one of the addresses in the associated pool.

Required Parameters:
{
  "PoolName": "The name of the dedicated IP pool."
}


Optional Parameters:
{
  "Tags": "An object that defines the tags (keys and values) that you want to associate with the pool."
}

"""

CreateDedicatedIpPool(args) = sesv2("POST", "/v2/email/dedicated-ip-pools", args)
"""
    CreateConfigurationSet

Create a configuration set. Configuration sets are groups of rules that you can apply to the emails that you send. You apply a configuration set to an email by specifying the name of the configuration set when you call the Amazon SES API v2. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set."
}


Optional Parameters:
{
  "ReputationOptions": "An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.",
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the configuration set.",
  "SendingOptions": "An object that defines whether or not Amazon SES can send email that you send using the configuration set.",
  "TrackingOptions": "An object that defines the open and click tracking options for emails that you send using the configuration set.",
  "SuppressionOptions": "",
  "DeliveryOptions": "An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set."
}

"""

CreateConfigurationSet(args) = sesv2("POST", "/v2/email/configuration-sets", args)
"""
    TagResource

Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to add one or more tags to.",
  "Tags": "A list of the tags that you want to add to the resource. A tag consists of a required tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
}


Optional Parameters:
{}

"""

TagResource(args) = sesv2("POST", "/v2/email/tags", args)
"""
    GetBlacklistReports

Retrieve a list of the blacklists that your dedicated IP addresses appear on.

Required Parameters:
{
  "BlacklistItemNames": "A list of IP addresses that you want to retrieve blacklist information about. You can only specify the dedicated IP addresses that you use to send email using Amazon SES or Amazon Pinpoint."
}


Optional Parameters:
{}

"""

GetBlacklistReports(args) = sesv2("GET", "/v2/email/deliverability-dashboard/blacklist-report", args)
"""
    PutConfigurationSetSendingOptions

Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to enable or disable email sending for."
}


Optional Parameters:
{
  "SendingEnabled": "If true, email sending is enabled for the configuration set. If false, email sending is disabled for the configuration set."
}

"""

PutConfigurationSetSendingOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/sending", args)
"""
    GetAccount

Obtain information about the email-sending status and capabilities of your Amazon SES account in the current AWS Region.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetAccount() = sesv2("GET", "/v2/email/account")
GetAccount(args) = sesv2("GET", "/v2/email/account", args)

"""
    ListConfigurationSets

List all of the configuration sets associated with your account in the current region.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets.",
  "PageSize": "The number of results to show in a single call to ListConfigurationSets. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results."
}

"""
ListConfigurationSets() = sesv2("GET", "/v2/email/configuration-sets")
ListConfigurationSets(args) = sesv2("GET", "/v2/email/configuration-sets", args)

"""
    UpdateConfigurationSetEventDestination

Update the configuration of an event destination for a configuration set.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination that you want to modify.",
  "EventDestination": "An object that defines the event destination.",
  "EventDestinationName": "The name of the event destination that you want to modify."
}


Optional Parameters:
{}

"""

UpdateConfigurationSetEventDestination(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)
"""
    ListDeliverabilityTestReports

Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to ListDeliverabilityTestReports to indicate the position in the list of predictive inbox placement tests.",
  "PageSize": "The number of results to show in a single call to ListDeliverabilityTestReports. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results. The value you specify has to be at least 0, and can be no more than 1000."
}

"""
ListDeliverabilityTestReports() = sesv2("GET", "/v2/email/deliverability-dashboard/test-reports")
ListDeliverabilityTestReports(args) = sesv2("GET", "/v2/email/deliverability-dashboard/test-reports", args)

"""
    DeleteEmailIdentity

Deletes an email identity. An identity can be either an email address or a domain name.

Required Parameters:
{
  "EmailIdentity": "The identity (that is, the email address or domain) that you want to delete."
}


Optional Parameters:
{}

"""

DeleteEmailIdentity(args) = sesv2("DELETE", "/v2/email/identities/{EmailIdentity}", args)
"""
    GetSuppressedDestination

Retrieves information about a specific email address that's on the suppression list for your account.

Required Parameters:
{
  "EmailAddress": "The email address that's on the account suppression list."
}


Optional Parameters:
{}

"""

GetSuppressedDestination(args) = sesv2("GET", "/v2/email/suppression/addresses/{EmailAddress}", args)
"""
    DeleteSuppressedDestination

Removes an email address from the suppression list for your account.

Required Parameters:
{
  "EmailAddress": "The suppressed email destination to remove from the account suppression list."
}


Optional Parameters:
{}

"""

DeleteSuppressedDestination(args) = sesv2("DELETE", "/v2/email/suppression/addresses/{EmailAddress}", args)
"""
    DeleteConfigurationSet

Delete an existing configuration set.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to delete."
}


Optional Parameters:
{}

"""

DeleteConfigurationSet(args) = sesv2("DELETE", "/v2/email/configuration-sets/{ConfigurationSetName}", args)
"""
    PutDeliverabilityDashboardOption

Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon SES Pricing.

Required Parameters:
{
  "DashboardEnabled": "Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this value to true."
}


Optional Parameters:
{
  "SubscribedDomains": "An array of objects, one for each verified domain that you use to send email and enabled the Deliverability dashboard for."
}

"""

PutDeliverabilityDashboardOption(args) = sesv2("PUT", "/v2/email/deliverability-dashboard", args)
"""
    CreateDeliverabilityTestReport

Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon SES then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.

Required Parameters:
{
  "Content": "The HTML body of the message that you sent when you performed the predictive inbox placement test.",
  "FromEmailAddress": "The email address that the predictive inbox placement test email was sent from."
}


Optional Parameters:
{
  "ReportName": "A unique name that helps you to identify the predictive inbox placement test when you retrieve the results.",
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the predictive inbox placement test."
}

"""

CreateDeliverabilityTestReport(args) = sesv2("POST", "/v2/email/deliverability-dashboard/test", args)
"""
    PutDedicatedIpInPool

Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your AWS account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 

Required Parameters:
{
  "DestinationPoolName": "The name of the IP pool that you want to add the dedicated IP address to. You have to specify an IP pool that already exists.",
  "Ip": "The IP address that you want to move to the dedicated IP pool. The value you specify has to be a dedicated IP address that's associated with your AWS account."
}


Optional Parameters:
{}

"""

PutDedicatedIpInPool(args) = sesv2("PUT", "/v2/email/dedicated-ips/{IP}/pool", args)
"""
    PutConfigurationSetDeliveryOptions

Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to associate with a dedicated IP pool."
}


Optional Parameters:
{
  "TlsPolicy": "Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is Require, messages are only delivered if a TLS connection can be established. If the value is Optional, messages can be delivered in plain text if a TLS connection can't be established.",
  "SendingPoolName": "The name of the dedicated IP pool that you want to associate with the configuration set."
}

"""

PutConfigurationSetDeliveryOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options", args)
"""
    UntagResource

Remove one or more tags (keys and values) from a specified resource.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to remove one or more tags from.",
  "TagKeys": "The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value. To remove more than one tag from the resource, append the TagKeys parameter and argument for each additional tag to remove, separated by an ampersand. For example: /v2/email/tags?ResourceArn=ResourceArn&amp;TagKeys=Key1&amp;TagKeys=Key2 "
}


Optional Parameters:
{}

"""

UntagResource(args) = sesv2("DELETE", "/v2/email/tags", args)
"""
    PutConfigurationSetReputationOptions

Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to enable or disable reputation metric tracking for."
}


Optional Parameters:
{
  "ReputationMetricsEnabled": "If true, tracking of reputation metrics is enabled for the configuration set. If false, tracking of reputation metrics is disabled for the configuration set."
}

"""

PutConfigurationSetReputationOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options", args)
"""
    PutConfigurationSetSuppressionOptions

Specify the account suppression list preferences for a configuration set.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to change the suppression list preferences for."
}


Optional Parameters:
{
  "SuppressedReasons": "A list that contains the reasons that email addresses are automatically added to the suppression list for your account. This list can contain any or all of the following:    COMPLAINT – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.    BOUNCE – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.  "
}

"""

PutConfigurationSetSuppressionOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options", args)
"""
    GetEmailIdentity

Provides information about a specific identity, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.

Required Parameters:
{
  "EmailIdentity": "The email identity that you want to retrieve details for."
}


Optional Parameters:
{}

"""

GetEmailIdentity(args) = sesv2("GET", "/v2/email/identities/{EmailIdentity}", args)
"""
    ListSuppressedDestinations

Retrieves a list of email addresses that are on the suppression list for your account.

Required Parameters:
{}


Optional Parameters:
{
  "EndDate": "Used to filter the list of suppressed email destinations so that it only includes addresses that were added to the list before a specific date. The date that you specify should be in Unix time format.",
  "NextToken": "A token returned from a previous call to ListSuppressedDestinations to indicate the position in the list of suppressed email addresses.",
  "StartDate": "Used to filter the list of suppressed email destinations so that it only includes addresses that were added to the list after a specific date. The date that you specify should be in Unix time format.",
  "Reasons": "The factors that caused the email address to be added to .",
  "PageSize": "The number of results to show in a single call to ListSuppressedDestinations. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results."
}

"""
ListSuppressedDestinations() = sesv2("GET", "/v2/email/suppression/addresses")
ListSuppressedDestinations(args) = sesv2("GET", "/v2/email/suppression/addresses", args)

"""
    ListDedicatedIpPools

List all of the dedicated IP pools that exist in your AWS account in the current Region.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to ListDedicatedIpPools to indicate the position in the list of dedicated IP pools.",
  "PageSize": "The number of results to show in a single call to ListDedicatedIpPools. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results."
}

"""
ListDedicatedIpPools() = sesv2("GET", "/v2/email/dedicated-ip-pools")
ListDedicatedIpPools(args) = sesv2("GET", "/v2/email/dedicated-ip-pools", args)

"""
    GetDedicatedIp

Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.

Required Parameters:
{
  "Ip": "The IP address that you want to obtain more information about. The value you specify has to be a dedicated IP address that's assocaited with your AWS account."
}


Optional Parameters:
{}

"""

GetDedicatedIp(args) = sesv2("GET", "/v2/email/dedicated-ips/{IP}", args)
"""
    PutAccountDedicatedIpWarmupAttributes

Enable or disable the automatic warm-up feature for dedicated IP addresses.

Required Parameters:
{}


Optional Parameters:
{
  "AutoWarmupEnabled": "Enables or disables the automatic warm-up feature for dedicated IP addresses that are associated with your Amazon SES account in the current AWS Region. Set to true to enable the automatic warm-up feature, or set to false to disable it."
}

"""
PutAccountDedicatedIpWarmupAttributes() = sesv2("PUT", "/v2/email/account/dedicated-ips/warmup")
PutAccountDedicatedIpWarmupAttributes(args) = sesv2("PUT", "/v2/email/account/dedicated-ips/warmup", args)

"""
    GetDedicatedIps

List the dedicated IP addresses that are associated with your AWS account.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to GetDedicatedIps to indicate the position of the dedicated IP pool in the list of IP pools.",
  "PageSize": "The number of results to show in a single call to GetDedicatedIpsRequest. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results.",
  "PoolName": "The name of the IP pool that the dedicated IP address is associated with."
}

"""
GetDedicatedIps() = sesv2("GET", "/v2/email/dedicated-ips")
GetDedicatedIps(args) = sesv2("GET", "/v2/email/dedicated-ips", args)

"""
    ListTagsForResource

Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to retrieve tag information for."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = sesv2("GET", "/v2/email/tags", args)
"""
    CreateConfigurationSetEventDestination

Create an event destination. Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to add an event destination to.",
  "EventDestination": "An object that defines the event destination.",
  "EventDestinationName": "A name that identifies the event destination within the configuration set."
}


Optional Parameters:
{}

"""

CreateConfigurationSetEventDestination(args) = sesv2("POST", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)
"""
    PutEmailIdentityMailFromAttributes

Used to enable or disable the custom Mail-From domain configuration for an email identity.

Required Parameters:
{
  "EmailIdentity": "The verified email identity that you want to set up the custom MAIL FROM domain for."
}


Optional Parameters:
{
  "BehaviorOnMxFailure": "The action that you want to take if the required MX record isn't found when you send an email. When you set this value to UseDefaultValue, the mail is sent using amazonses.com as the MAIL FROM domain. When you set this value to RejectMessage, the Amazon SES API v2 returns a MailFromDomainNotVerified error, and doesn't attempt to deliver the email. These behaviors are taken when the custom MAIL FROM domain configuration is in the Pending, Failed, and TemporaryFailure states.",
  "MailFromDomain": " The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must meet the following criteria:   It has to be a subdomain of the verified identity.   It can't be used to receive email.   It can't be used in a \"From\" address if the MAIL FROM domain is a destination for feedback forwarding emails.  "
}

"""

PutEmailIdentityMailFromAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/mail-from", args)
"""
    PutConfigurationSetTrackingOptions

Specify a custom domain to use for open and click tracking elements in email that you send.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to add a custom tracking domain to."
}


Optional Parameters:
{
  "CustomRedirectDomain": "The domain that you want to use to track open and click events."
}

"""

PutConfigurationSetTrackingOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options", args)
"""
    GetDomainDeliverabilityCampaign

Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for.

Required Parameters:
{
  "CampaignId": "The unique identifier for the campaign. The Deliverability dashboard automatically generates and assigns this identifier to a campaign."
}


Optional Parameters:
{}

"""

GetDomainDeliverabilityCampaign(args) = sesv2("GET", "/v2/email/deliverability-dashboard/campaigns/{CampaignId}", args)
"""
    GetDomainStatisticsReport

Retrieve inbox placement and engagement rates for the domains that you use to send email.

Required Parameters:
{
  "EndDate": "The last day (in Unix time) that you want to obtain domain deliverability metrics for. The EndDate that you specify has to be less than or equal to 30 days after the StartDate.",
  "StartDate": "The first day (in Unix time) that you want to obtain domain deliverability metrics for.",
  "Domain": "The domain that you want to obtain deliverability metrics for."
}


Optional Parameters:
{}

"""

GetDomainStatisticsReport(args) = sesv2("GET", "/v2/email/deliverability-dashboard/statistics-report/{Domain}", args)
"""
    PutEmailIdentityDkimAttributes

Used to enable or disable DKIM authentication for an email identity.

Required Parameters:
{
  "EmailIdentity": "The email identity that you want to change the DKIM settings for."
}


Optional Parameters:
{
  "SigningEnabled": "Sets the DKIM signing configuration for the identity. When you set this value true, then the messages that are sent from the identity are signed using DKIM. If you set this value to false, your messages are sent without DKIM signing."
}

"""

PutEmailIdentityDkimAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/dkim", args)
"""
    GetDeliverabilityDashboardOptions

Retrieve information about the status of the Deliverability dashboard for your account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon SES Pricing.

Required Parameters:
{}


Optional Parameters:
{}

"""
GetDeliverabilityDashboardOptions() = sesv2("GET", "/v2/email/deliverability-dashboard")
GetDeliverabilityDashboardOptions(args) = sesv2("GET", "/v2/email/deliverability-dashboard", args)

"""
    DeleteConfigurationSetEventDestination

Delete an event destination.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination that you want to delete.",
  "EventDestinationName": "The name of the event destination that you want to delete."
}


Optional Parameters:
{}

"""

DeleteConfigurationSetEventDestination(args) = sesv2("DELETE", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)
"""
    SendEmail

Sends an email message. You can use the Amazon SES API v2 to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon SES assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  

Required Parameters:
{
  "Content": "An object that contains the body of the message. You can send either a Simple message or a Raw message.",
  "Destination": "An object that contains the recipients of the email message."
}


Optional Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to use when sending the email.",
  "FeedbackForwardingEmailAddress": "The address that you want bounce and complaint notifications to be sent to.",
  "EmailTags": "A list of tags, in the form of name/value pairs, to apply to an email that you send using the SendEmail operation. Tags correspond to characteristics of the email that you define, so that you can publish email sending events. ",
  "FromEmailAddress": "The email address that you want to use as the \"From\" address for the email. The address that you specify has to be verified. ",
  "ReplyToAddresses": "The \"Reply-to\" email addresses for the message. When the recipient replies to the message, each Reply-to address receives the reply."
}

"""

SendEmail(args) = sesv2("POST", "/v2/email/outbound-emails", args)
"""
    PutEmailIdentityFeedbackAttributes

Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. If the value is true, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the Return-Path header of the original email. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled).

Required Parameters:
{
  "EmailIdentity": "The email identity that you want to configure bounce and complaint feedback forwarding for."
}


Optional Parameters:
{
  "EmailForwardingEnabled": "Sets the feedback forwarding configuration for the identity. If the value is true, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the Return-Path header of the original email. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled)."
}

"""

PutEmailIdentityFeedbackAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/feedback", args)
"""
    GetConfigurationSet

Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that you want to obtain more information about."
}


Optional Parameters:
{}

"""

GetConfigurationSet(args) = sesv2("GET", "/v2/email/configuration-sets/{ConfigurationSetName}", args)
"""
    ListEmailIdentities

Returns a list of all of the email identities that are associated with your AWS account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't. This operation returns identities that are associated with Amazon SES and Amazon Pinpoint.

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token returned from a previous call to ListEmailIdentities to indicate the position in the list of identities.",
  "PageSize": "The number of results to show in a single call to ListEmailIdentities. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results. The value you specify has to be at least 0, and can be no more than 1000."
}

"""
ListEmailIdentities() = sesv2("GET", "/v2/email/identities")
ListEmailIdentities(args) = sesv2("GET", "/v2/email/identities", args)

"""
    DeleteDedicatedIpPool

Delete a dedicated IP pool.

Required Parameters:
{
  "PoolName": "The name of the dedicated IP pool that you want to delete."
}


Optional Parameters:
{}

"""

DeleteDedicatedIpPool(args) = sesv2("DELETE", "/v2/email/dedicated-ip-pools/{PoolName}", args)
"""
    GetDeliverabilityTestReport

Retrieve the results of a predictive inbox placement test.

Required Parameters:
{
  "ReportId": "A unique string that identifies the predictive inbox placement test."
}


Optional Parameters:
{}

"""

GetDeliverabilityTestReport(args) = sesv2("GET", "/v2/email/deliverability-dashboard/test-reports/{ReportId}", args)
"""
    ListDomainDeliverabilityCampaigns

Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.

Required Parameters:
{
  "EndDate": "The last day, in Unix time format, that you want to obtain deliverability data for. This value has to be less than or equal to 30 days after the value of the StartDate parameter.",
  "StartDate": "The first day, in Unix time format, that you want to obtain deliverability data for.",
  "SubscribedDomain": "The domain to obtain deliverability data for."
}


Optional Parameters:
{
  "NextToken": "A token that’s returned from a previous call to the ListDomainDeliverabilityCampaigns operation. This token indicates the position of a campaign in the list of campaigns.",
  "PageSize": "The maximum number of results to include in response to a single call to the ListDomainDeliverabilityCampaigns operation. If the number of results is larger than the number that you specify in this parameter, the response includes a NextToken element, which you can use to obtain additional results."
}

"""

ListDomainDeliverabilityCampaigns(args) = sesv2("GET", "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", args)
"""
    PutEmailIdentityDkimSigningAttributes

Used to configure or change the DKIM authentication settings for an email domain identity. You can use this operation to do any of the following:   Update the signing attributes for an identity that uses Bring Your Own DKIM (BYODKIM).   Change from using no DKIM authentication to using Easy DKIM.   Change from using no DKIM authentication to using BYODKIM.   Change from using Easy DKIM to using BYODKIM.   Change from using BYODKIM to using Easy DKIM.  

Required Parameters:
{
  "EmailIdentity": "The email identity that you want to configure DKIM for.",
  "SigningAttributesOrigin": "The method that you want to use to configure DKIM for the identity. There are two possible values:    AWS_SES – Configure DKIM for the identity by using Easy DKIM.    EXTERNAL – Configure DKIM for the identity by using Bring Your Own DKIM (BYODKIM).  "
}


Optional Parameters:
{
  "SigningAttributes": "An object that contains information about the private key and selector that you want to use to configure DKIM for the identity. This object is only required if you want to configure Bring Your Own DKIM (BYODKIM) for the identity."
}

"""

PutEmailIdentityDkimSigningAttributes(args) = sesv2("PUT", "/v1/email/identities/{EmailIdentity}/dkim/signing", args)
"""
    PutSuppressedDestination

Adds an email address to the suppression list for your account.

Required Parameters:
{
  "Reason": "The factors that should cause the email address to be added to the suppression list for your account.",
  "EmailAddress": "The email address that should be added to the suppression list for your account."
}


Optional Parameters:
{}

"""

PutSuppressedDestination(args) = sesv2("PUT", "/v2/email/suppression/addresses", args)
"""
    GetConfigurationSetEventDestinations

Retrieve a list of event destinations that are associated with a configuration set.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination."
}


Optional Parameters:
{}

"""

GetConfigurationSetEventDestinations(args) = sesv2("GET", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)
"""
    PutAccountSendingAttributes

Enable or disable the ability of your account to send email.

Required Parameters:
{}


Optional Parameters:
{
  "SendingEnabled": "Enables or disables your account's ability to send email. Set to true to enable email sending, or set to false to disable email sending.  If AWS paused your account's ability to send email, you can't use this operation to resume your account's ability to send email. "
}

"""
PutAccountSendingAttributes() = sesv2("PUT", "/v2/email/account/sending")
PutAccountSendingAttributes(args) = sesv2("PUT", "/v2/email/account/sending", args)
