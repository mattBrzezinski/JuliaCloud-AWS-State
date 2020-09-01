include("../AWSCorePrototypeServices.jl")
using .Services: pinpoint_email

"""
    GetDeliverabilityDashboardOptions()

Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
"""

GetDeliverabilityDashboardOptions() = pinpoint_email("GET", "/v1/email/deliverability-dashboard")
GetDeliverabilityDashboardOptions(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard", args)

"""
    ListTagsForResource()

Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to retrieve tag information for."
}
"""
ListTagsForResource(args) = pinpoint_email("GET", "/v1/email/tags", args)

"""
    PutDedicatedIpWarmupAttributes()



Required Parameters
{
  "Ip": "The dedicated IP address that you want to update the warm-up attributes for.",
  "WarmupPercentage": "The warm-up percentage that you want to associate with the dedicated IP address."
}
"""
PutDedicatedIpWarmupAttributes(args) = pinpoint_email("PUT", "/v1/email/dedicated-ips/{IP}/warmup", args)

"""
    CreateEmailIdentity()

Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email address or domain that you use when you send email. Before you can use an identity to send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission to send email from the address. When you verify an email address, Amazon Pinpoint sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain. It usually takes around 72 hours to complete the domain verification process.

Required Parameters
{
  "EmailIdentity": "The email address or domain that you want to verify."
}

Optional Parameters
{
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the email identity."
}
"""
CreateEmailIdentity(args) = pinpoint_email("POST", "/v1/email/identities", args)

"""
    DeleteConfigurationSet()

Delete an existing configuration set. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to delete."
}
"""
DeleteConfigurationSet(args) = pinpoint_email("DELETE", "/v1/email/configuration-sets/{ConfigurationSetName}", args)

"""
    PutDeliverabilityDashboardOption()

Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.

Required Parameters
{
  "DashboardEnabled": "Specifies whether to enable the Deliverability dashboard for your Amazon Pinpoint account. To enable the dashboard, set this value to true."
}

Optional Parameters
{
  "SubscribedDomains": "An array of objects, one for each verified domain that you use to send email and enabled the Deliverability dashboard for."
}
"""
PutDeliverabilityDashboardOption(args) = pinpoint_email("PUT", "/v1/email/deliverability-dashboard", args)

"""
    SendEmail()

Sends an email message. You can use the Amazon Pinpoint Email API to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon Pinpoint assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  

Required Parameters
{
  "Content": "An object that contains the body of the message. You can send either a Simple message or a Raw message.",
  "Destination": "An object that contains the recipients of the email message."
}

Optional Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to use when sending the email.",
  "FeedbackForwardingEmailAddress": "The address that Amazon Pinpoint should send bounce and complaint notifications to.",
  "EmailTags": "A list of tags, in the form of name/value pairs, to apply to an email that you send using the SendEmail operation. Tags correspond to characteristics of the email that you define, so that you can publish email sending events. ",
  "FromEmailAddress": "The email address that you want to use as the \"From\" address for the email. The address that you specify has to be verified. ",
  "ReplyToAddresses": "The \"Reply-to\" email addresses for the message. When the recipient replies to the message, each Reply-to address receives the reply."
}
"""
SendEmail(args) = pinpoint_email("POST", "/v1/email/outbound-emails", args)

"""
    PutEmailIdentityFeedbackAttributes()

Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled).

Required Parameters
{
  "EmailIdentity": "The email identity that you want to configure bounce and complaint feedback forwarding for."
}

Optional Parameters
{
  "EmailForwardingEnabled": "Sets the feedback forwarding configuration for the identity. If the value is true, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you set this value to false, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled)."
}
"""
PutEmailIdentityFeedbackAttributes(args) = pinpoint_email("PUT", "/v1/email/identities/{EmailIdentity}/feedback", args)

"""
    GetConfigurationSet()

Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to obtain more information about."
}
"""
GetConfigurationSet(args) = pinpoint_email("GET", "/v1/email/configuration-sets/{ConfigurationSetName}", args)

"""
    CreateDedicatedIpPool()

Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.

Required Parameters
{
  "PoolName": "The name of the dedicated IP pool."
}

Optional Parameters
{
  "Tags": "An object that defines the tags (keys and values) that you want to associate with the pool."
}
"""
CreateDedicatedIpPool(args) = pinpoint_email("POST", "/v1/email/dedicated-ip-pools", args)

"""
    CreateConfigurationSetEventDestination()

Create an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to add an event destination to.",
  "EventDestination": "An object that defines the event destination.",
  "EventDestinationName": "A name that identifies the event destination within the configuration set."
}
"""
CreateConfigurationSetEventDestination(args) = pinpoint_email("POST", "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
    CreateDeliverabilityTestReport()

Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon Pinpoint then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.

Required Parameters
{
  "Content": "The HTML body of the message that you sent when you performed the predictive inbox placement test.",
  "FromEmailAddress": "The email address that the predictive inbox placement test email was sent from."
}

Optional Parameters
{
  "ReportName": "A unique name that helps you to identify the predictive inbox placement test when you retrieve the results.",
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the predictive inbox placement test."
}
"""
CreateDeliverabilityTestReport(args) = pinpoint_email("POST", "/v1/email/deliverability-dashboard/test", args)

"""
    PutDedicatedIpInPool()

Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your Amazon Pinpoint account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 

Required Parameters
{
  "DestinationPoolName": "The name of the IP pool that you want to add the dedicated IP address to. You have to specify an IP pool that already exists.",
  "Ip": "The IP address that you want to move to the dedicated IP pool. The value you specify has to be a dedicated IP address that's associated with your Amazon Pinpoint account."
}
"""
PutDedicatedIpInPool(args) = pinpoint_email("PUT", "/v1/email/dedicated-ips/{IP}/pool", args)

"""
    CreateConfigurationSet()

Create a configuration set. Configuration sets are groups of rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set."
}

Optional Parameters
{
  "ReputationOptions": "An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails that you send that use the configuration set.",
  "Tags": "An array of objects that define the tags (keys and values) that you want to associate with the configuration set.",
  "SendingOptions": "An object that defines whether or not Amazon Pinpoint can send email that you send using the configuration set.",
  "TrackingOptions": "An object that defines the open and click tracking options for emails that you send using the configuration set.",
  "DeliveryOptions": "An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set."
}
"""
CreateConfigurationSet(args) = pinpoint_email("POST", "/v1/email/configuration-sets", args)

"""
    PutEmailIdentityMailFromAttributes()

Used to enable or disable the custom Mail-From domain configuration for an email identity.

Required Parameters
{
  "EmailIdentity": "The verified email identity that you want to set up the custom MAIL FROM domain for."
}

Optional Parameters
{
  "BehaviorOnMxFailure": "The action that you want Amazon Pinpoint to take if it can't read the required MX record when you send an email. When you set this value to UseDefaultValue, Amazon Pinpoint uses amazonses.com as the MAIL FROM domain. When you set this value to RejectMessage, Amazon Pinpoint returns a MailFromDomainNotVerified error, and doesn't attempt to deliver the email. These behaviors are taken when the custom MAIL FROM domain configuration is in the Pending, Failed, and TemporaryFailure states.",
  "MailFromDomain": " The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must meet the following criteria:   It has to be a subdomain of the verified identity.   It can't be used to receive email.   It can't be used in a \"From\" address if the MAIL FROM domain is a destination for feedback forwarding emails.  "
}
"""
PutEmailIdentityMailFromAttributes(args) = pinpoint_email("PUT", "/v1/email/identities/{EmailIdentity}/mail-from", args)

"""
    ListEmailIdentities()

Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListEmailIdentities to indicate the position in the list of identities.",
  "PageSize": "The number of results to show in a single call to ListEmailIdentities. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results. The value you specify has to be at least 0, and can be no more than 1000."
}
"""

ListEmailIdentities() = pinpoint_email("GET", "/v1/email/identities")
ListEmailIdentities(args) = pinpoint_email("GET", "/v1/email/identities", args)

"""
    PutConfigurationSetDeliveryOptions()

Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to associate with a dedicated IP pool."
}

Optional Parameters
{
  "TlsPolicy": "Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is Require, messages are only delivered if a TLS connection can be established. If the value is Optional, messages can be delivered in plain text if a TLS connection can't be established.",
  "SendingPoolName": "The name of the dedicated IP pool that you want to associate with the configuration set."
}
"""
PutConfigurationSetDeliveryOptions(args) = pinpoint_email("PUT", "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", args)

"""
    PutConfigurationSetTrackingOptions()

Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to add a custom tracking domain to."
}

Optional Parameters
{
  "CustomRedirectDomain": "The domain that you want to use to track open and click events."
}
"""
PutConfigurationSetTrackingOptions(args) = pinpoint_email("PUT", "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", args)

"""
    PutConfigurationSetReputationOptions()

Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to enable or disable reputation metric tracking for."
}

Optional Parameters
{
  "ReputationMetricsEnabled": "If true, tracking of reputation metrics is enabled for the configuration set. If false, tracking of reputation metrics is disabled for the configuration set."
}
"""
PutConfigurationSetReputationOptions(args) = pinpoint_email("PUT", "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", args)

"""
    DeleteDedicatedIpPool()

Delete a dedicated IP pool.

Required Parameters
{
  "PoolName": "The name of the dedicated IP pool that you want to delete."
}
"""
DeleteDedicatedIpPool(args) = pinpoint_email("DELETE", "/v1/email/dedicated-ip-pools/{PoolName}", args)

"""
    GetBlacklistReports()

Retrieve a list of the blacklists that your dedicated IP addresses appear on.

Required Parameters
{
  "BlacklistItemNames": "A list of IP addresses that you want to retrieve blacklist information about. You can only specify the dedicated IP addresses that you use to send email using Amazon Pinpoint or Amazon SES."
}
"""
GetBlacklistReports(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/blacklist-report", args)

"""
    GetDeliverabilityTestReport()

Retrieve the results of a predictive inbox placement test.

Required Parameters
{
  "ReportId": "A unique string that identifies the predictive inbox placement test."
}
"""
GetDeliverabilityTestReport(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/test-reports/{ReportId}", args)

"""
    ListDomainDeliverabilityCampaigns()

Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.

Required Parameters
{
  "EndDate": "The last day, in Unix time format, that you want to obtain deliverability data for. This value has to be less than or equal to 30 days after the value of the StartDate parameter.",
  "StartDate": "The first day, in Unix time format, that you want to obtain deliverability data for.",
  "SubscribedDomain": "The domain to obtain deliverability data for."
}

Optional Parameters
{
  "NextToken": "A token that’s returned from a previous call to the ListDomainDeliverabilityCampaigns operation. This token indicates the position of a campaign in the list of campaigns.",
  "PageSize": "The maximum number of results to include in response to a single call to the ListDomainDeliverabilityCampaigns operation. If the number of results is larger than the number that you specify in this parameter, the response includes a NextToken element, which you can use to obtain additional results."
}
"""
ListDomainDeliverabilityCampaigns(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", args)

"""
    PutConfigurationSetSendingOptions()

Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to enable or disable email sending for."
}

Optional Parameters
{
  "SendingEnabled": "If true, email sending is enabled for the configuration set. If false, email sending is disabled for the configuration set."
}
"""
PutConfigurationSetSendingOptions(args) = pinpoint_email("PUT", "/v1/email/configuration-sets/{ConfigurationSetName}/sending", args)

"""
    GetAccount()

Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region.
"""

GetAccount() = pinpoint_email("GET", "/v1/email/account")
GetAccount(args) = pinpoint_email("GET", "/v1/email/account", args)

"""
    TagResource()

Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to add one or more tags to.",
  "Tags": "A list of the tags that you want to add to the resource. A tag consists of a required tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
}
"""
TagResource(args) = pinpoint_email("POST", "/v1/email/tags", args)

"""
    GetEmailIdentity()

Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.

Required Parameters
{
  "EmailIdentity": "The email identity that you want to retrieve details for."
}
"""
GetEmailIdentity(args) = pinpoint_email("GET", "/v1/email/identities/{EmailIdentity}", args)

"""
    UntagResource()

Remove one or more tags (keys and values) from a specified resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to remove one or more tags from.",
  "TagKeys": "The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value. To remove more than one tag from the resource, append the TagKeys parameter and argument for each additional tag to remove, separated by an ampersand. For example: /v1/email/tags?ResourceArn=ResourceArn&amp;TagKeys=Key1&amp;TagKeys=Key2 "
}
"""
UntagResource(args) = pinpoint_email("DELETE", "/v1/email/tags", args)

"""
    GetDomainDeliverabilityCampaign()

Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (PutDeliverabilityDashboardOption operation).

Required Parameters
{
  "CampaignId": "The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this identifier to a campaign. This value is not the same as the campaign identifier that Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the Amazon Pinpoint console."
}
"""
GetDomainDeliverabilityCampaign(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", args)

"""
    ListConfigurationSets()

List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets.",
  "PageSize": "The number of results to show in a single call to ListConfigurationSets. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results."
}
"""

ListConfigurationSets() = pinpoint_email("GET", "/v1/email/configuration-sets")
ListConfigurationSets(args) = pinpoint_email("GET", "/v1/email/configuration-sets", args)

"""
    ListDedicatedIpPools()

List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListDedicatedIpPools to indicate the position in the list of dedicated IP pools.",
  "PageSize": "The number of results to show in a single call to ListDedicatedIpPools. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results."
}
"""

ListDedicatedIpPools() = pinpoint_email("GET", "/v1/email/dedicated-ip-pools")
ListDedicatedIpPools(args) = pinpoint_email("GET", "/v1/email/dedicated-ip-pools", args)

"""
    UpdateConfigurationSetEventDestination()

Update the configuration of an event destination for a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination that you want to modify.",
  "EventDestination": "An object that defines the event destination.",
  "EventDestinationName": "The name of the event destination that you want to modify."
}
"""
UpdateConfigurationSetEventDestination(args) = pinpoint_email("PUT", "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)

"""
    GetDomainStatisticsReport()

Retrieve inbox placement and engagement rates for the domains that you use to send email.

Required Parameters
{
  "EndDate": "The last day (in Unix time) that you want to obtain domain deliverability metrics for. The EndDate that you specify has to be less than or equal to 30 days after the StartDate.",
  "StartDate": "The first day (in Unix time) that you want to obtain domain deliverability metrics for.",
  "Domain": "The domain that you want to obtain deliverability metrics for."
}
"""
GetDomainStatisticsReport(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/statistics-report/{Domain}", args)

"""
    ListDeliverabilityTestReports()

Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListDeliverabilityTestReports to indicate the position in the list of predictive inbox placement tests.",
  "PageSize": "The number of results to show in a single call to ListDeliverabilityTestReports. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results. The value you specify has to be at least 0, and can be no more than 1000."
}
"""

ListDeliverabilityTestReports() = pinpoint_email("GET", "/v1/email/deliverability-dashboard/test-reports")
ListDeliverabilityTestReports(args) = pinpoint_email("GET", "/v1/email/deliverability-dashboard/test-reports", args)

"""
    GetConfigurationSetEventDestinations()

Retrieve a list of event destinations that are associated with a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination."
}
"""
GetConfigurationSetEventDestinations(args) = pinpoint_email("GET", "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
    GetDedicatedIp()

Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.

Required Parameters
{
  "Ip": "The IP address that you want to obtain more information about. The value you specify has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account."
}
"""
GetDedicatedIp(args) = pinpoint_email("GET", "/v1/email/dedicated-ips/{IP}", args)

"""
    PutEmailIdentityDkimAttributes()

Used to enable or disable DKIM authentication for an email identity.

Required Parameters
{
  "EmailIdentity": "The email identity that you want to change the DKIM settings for."
}

Optional Parameters
{
  "SigningEnabled": "Sets the DKIM signing configuration for the identity. When you set this value true, then the messages that Amazon Pinpoint sends from the identity are DKIM-signed. When you set this value to false, then the messages that Amazon Pinpoint sends from the identity aren't DKIM-signed."
}
"""
PutEmailIdentityDkimAttributes(args) = pinpoint_email("PUT", "/v1/email/identities/{EmailIdentity}/dkim", args)

"""
    DeleteEmailIdentity()

Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity can be either an email address or a domain name.

Required Parameters
{
  "EmailIdentity": "The identity (that is, the email address or domain) that you want to delete from your Amazon Pinpoint account."
}
"""
DeleteEmailIdentity(args) = pinpoint_email("DELETE", "/v1/email/identities/{EmailIdentity}", args)

"""
    PutAccountSendingAttributes()

Enable or disable the ability of your account to send email.

Optional Parameters
{
  "SendingEnabled": "Enables or disables your account's ability to send email. Set to true to enable email sending, or set to false to disable email sending.  If AWS paused your account's ability to send email, you can't use this operation to resume your account's ability to send email. "
}
"""

PutAccountSendingAttributes() = pinpoint_email("PUT", "/v1/email/account/sending")
PutAccountSendingAttributes(args) = pinpoint_email("PUT", "/v1/email/account/sending", args)

"""
    PutAccountDedicatedIpWarmupAttributes()

Enable or disable the automatic warm-up feature for dedicated IP addresses.

Optional Parameters
{
  "AutoWarmupEnabled": "Enables or disables the automatic warm-up feature for dedicated IP addresses that are associated with your Amazon Pinpoint account in the current AWS Region. Set to true to enable the automatic warm-up feature, or set to false to disable it."
}
"""

PutAccountDedicatedIpWarmupAttributes() = pinpoint_email("PUT", "/v1/email/account/dedicated-ips/warmup")
PutAccountDedicatedIpWarmupAttributes(args) = pinpoint_email("PUT", "/v1/email/account/dedicated-ips/warmup", args)

"""
    DeleteConfigurationSetEventDestination()

Delete an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination that you want to delete.",
  "EventDestinationName": "The name of the event destination that you want to delete."
}
"""
DeleteConfigurationSetEventDestination(args) = pinpoint_email("DELETE", "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)

"""
    GetDedicatedIps()

List the dedicated IP addresses that are associated with your Amazon Pinpoint account.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to GetDedicatedIps to indicate the position of the dedicated IP pool in the list of IP pools.",
  "PageSize": "The number of results to show in a single call to GetDedicatedIpsRequest. If the number of results is larger than the number you specified in this parameter, then the response includes a NextToken element, which you can use to obtain additional results.",
  "PoolName": "The name of the IP pool that the dedicated IP address is associated with."
}
"""

GetDedicatedIps() = pinpoint_email("GET", "/v1/email/dedicated-ips")
GetDedicatedIps(args) = pinpoint_email("GET", "/v1/email/dedicated-ips", args)