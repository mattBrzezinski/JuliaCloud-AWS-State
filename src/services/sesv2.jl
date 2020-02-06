include("../AWSCorePrototypeServices.jl")
using .Services: sesv2

"""


Required Parameters:
Ip, WarmupPercentage
"""
PutDedicatedIpWarmupAttributes(args) = sesv2("PUT", "/v2/email/dedicated-ips/{IP}/warmup", args)

"""
Starts the process of verifying an email identity. An identity is an email address or domain that you use when you send email. Before you can use an identity to send email, you first have to verify it. By verifying an identity, you demonstrate that you're the owner of the identity, and that you've given Amazon SES API v2 permission to send email from the identity. When you verify an email address, Amazon SES sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain without specifying the DkimSigningAttributes object, this operation provides a set of DKIM tokens. You can convert these tokens into CNAME records, which you then add to the DNS configuration for your domain. Your domain is verified when Amazon SES detects these records in the DNS configuration for your domain. This verification method is known as Easy DKIM. Alternatively, you can perform the verification process by providing your own public-private key pair. This verification method is known as Bring Your Own DKIM (BYODKIM). To use BYODKIM, your call to the CreateEmailIdentity operation has to include the DkimSigningAttributes object. When you specify this object, you provide a selector (a component of the DNS record name that identifies the public key that you want to use for DKIM authentication) and a private key.

Required Parameters:
EmailIdentity
"""
CreateEmailIdentity(args) = sesv2("POST", "/v2/email/identities", args)

"""
Change the settings for the account-level suppression list.
"""
PutAccountSuppressionAttributes() = sesv2("PUT", "/v2/email/account/suppression")

"""
Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your AWS account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, the message is sent from one of the addresses in the associated pool.

Required Parameters:
PoolName
"""
CreateDedicatedIpPool(args) = sesv2("POST", "/v2/email/dedicated-ip-pools", args)

"""
Create a configuration set. Configuration sets are groups of rules that you can apply to the emails that you send. You apply a configuration set to an email by specifying the name of the configuration set when you call the Amazon SES API v2. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 

Required Parameters:
ConfigurationSetName
"""
CreateConfigurationSet(args) = sesv2("POST", "/v2/email/configuration-sets", args)

"""
Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = sesv2("POST", "/v2/email/tags", args)

"""
Retrieve a list of the blacklists that your dedicated IP addresses appear on.

Required Parameters:
BlacklistItemNames
"""
GetBlacklistReports(args) = sesv2("GET", "/v2/email/deliverability-dashboard/blacklist-report", args)

"""
Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.

Required Parameters:
ConfigurationSetName
"""
PutConfigurationSetSendingOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/sending", args)

"""
Obtain information about the email-sending status and capabilities of your Amazon SES account in the current AWS Region.
"""
GetAccount() = sesv2("GET", "/v2/email/account")

"""
List all of the configuration sets associated with your account in the current region.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
"""
ListConfigurationSets() = sesv2("GET", "/v2/email/configuration-sets")

"""
Update the configuration of an event destination for a configuration set.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
ConfigurationSetName, EventDestinationName, EventDestination
"""
UpdateConfigurationSetEventDestination(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)

"""
Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
"""
ListDeliverabilityTestReports() = sesv2("GET", "/v2/email/deliverability-dashboard/test-reports")

"""
Deletes an email identity. An identity can be either an email address or a domain name.

Required Parameters:
EmailIdentity
"""
DeleteEmailIdentity(args) = sesv2("DELETE", "/v2/email/identities/{EmailIdentity}", args)

"""
Retrieves information about a specific email address that's on the suppression list for your account.

Required Parameters:
EmailAddress
"""
GetSuppressedDestination(args) = sesv2("GET", "/v2/email/suppression/addresses/{EmailAddress}", args)

"""
Removes an email address from the suppression list for your account.

Required Parameters:
EmailAddress
"""
DeleteSuppressedDestination(args) = sesv2("DELETE", "/v2/email/suppression/addresses/{EmailAddress}", args)

"""
Delete an existing configuration set.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters:
ConfigurationSetName
"""
DeleteConfigurationSet(args) = sesv2("DELETE", "/v2/email/configuration-sets/{ConfigurationSetName}", args)

"""
Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon SES Pricing.

Required Parameters:
DashboardEnabled
"""
PutDeliverabilityDashboardOption(args) = sesv2("PUT", "/v2/email/deliverability-dashboard", args)

"""
Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon SES then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.

Required Parameters:
FromEmailAddress, Content
"""
CreateDeliverabilityTestReport(args) = sesv2("POST", "/v2/email/deliverability-dashboard/test", args)

"""
Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your AWS account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 

Required Parameters:
Ip, DestinationPoolName
"""
PutDedicatedIpInPool(args) = sesv2("PUT", "/v2/email/dedicated-ips/{IP}/pool", args)

"""
Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.

Required Parameters:
ConfigurationSetName
"""
PutConfigurationSetDeliveryOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options", args)

"""
Remove one or more tags (keys and values) from a specified resource.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = sesv2("DELETE", "/v2/email/tags", args)

"""
Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.

Required Parameters:
ConfigurationSetName
"""
PutConfigurationSetReputationOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options", args)

"""
Specify the account suppression list preferences for a configuration set.

Required Parameters:
ConfigurationSetName
"""
PutConfigurationSetSuppressionOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options", args)

"""
Provides information about a specific identity, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.

Required Parameters:
EmailIdentity
"""
GetEmailIdentity(args) = sesv2("GET", "/v2/email/identities/{EmailIdentity}", args)

"""
Retrieves a list of email addresses that are on the suppression list for your account.
"""
ListSuppressedDestinations() = sesv2("GET", "/v2/email/suppression/addresses")

"""
List all of the dedicated IP pools that exist in your AWS account in the current Region.
"""
ListDedicatedIpPools() = sesv2("GET", "/v2/email/dedicated-ip-pools")

"""
Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.

Required Parameters:
Ip
"""
GetDedicatedIp(args) = sesv2("GET", "/v2/email/dedicated-ips/{IP}", args)

"""
Enable or disable the automatic warm-up feature for dedicated IP addresses.
"""
PutAccountDedicatedIpWarmupAttributes() = sesv2("PUT", "/v2/email/account/dedicated-ips/warmup")

"""
List the dedicated IP addresses that are associated with your AWS account.
"""
GetDedicatedIps() = sesv2("GET", "/v2/email/dedicated-ips")

"""
Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = sesv2("GET", "/v2/email/tags", args)

"""
Create an event destination. Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.

Required Parameters:
ConfigurationSetName, EventDestinationName, EventDestination
"""
CreateConfigurationSetEventDestination(args) = sesv2("POST", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
Used to enable or disable the custom Mail-From domain configuration for an email identity.

Required Parameters:
EmailIdentity
"""
PutEmailIdentityMailFromAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/mail-from", args)

"""
Specify a custom domain to use for open and click tracking elements in email that you send.

Required Parameters:
ConfigurationSetName
"""
PutConfigurationSetTrackingOptions(args) = sesv2("PUT", "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options", args)

"""
Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for.

Required Parameters:
CampaignId
"""
GetDomainDeliverabilityCampaign(args) = sesv2("GET", "/v2/email/deliverability-dashboard/campaigns/{CampaignId}", args)

"""
Retrieve inbox placement and engagement rates for the domains that you use to send email.

Required Parameters:
Domain, StartDate, EndDate
"""
GetDomainStatisticsReport(args) = sesv2("GET", "/v2/email/deliverability-dashboard/statistics-report/{Domain}", args)

"""
Used to enable or disable DKIM authentication for an email identity.

Required Parameters:
EmailIdentity
"""
PutEmailIdentityDkimAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/dkim", args)

"""
Retrieve information about the status of the Deliverability dashboard for your account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon SES Pricing.
"""
GetDeliverabilityDashboardOptions() = sesv2("GET", "/v2/email/deliverability-dashboard")

"""
Delete an event destination.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
ConfigurationSetName, EventDestinationName
"""
DeleteConfigurationSetEventDestination(args) = sesv2("DELETE", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", args)

"""
Sends an email message. You can use the Amazon SES API v2 to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon SES assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  

Required Parameters:
Destination, Content
"""
SendEmail(args) = sesv2("POST", "/v2/email/outbound-emails", args)

"""
Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. If the value is true, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the Return-Path header of the original email. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled).

Required Parameters:
EmailIdentity
"""
PutEmailIdentityFeedbackAttributes(args) = sesv2("PUT", "/v2/email/identities/{EmailIdentity}/feedback", args)

"""
Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more.  Configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.

Required Parameters:
ConfigurationSetName
"""
GetConfigurationSet(args) = sesv2("GET", "/v2/email/configuration-sets/{ConfigurationSetName}", args)

"""
Returns a list of all of the email identities that are associated with your AWS account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't. This operation returns identities that are associated with Amazon SES and Amazon Pinpoint.
"""
ListEmailIdentities() = sesv2("GET", "/v2/email/identities")

"""
Delete a dedicated IP pool.

Required Parameters:
PoolName
"""
DeleteDedicatedIpPool(args) = sesv2("DELETE", "/v2/email/dedicated-ip-pools/{PoolName}", args)

"""
Retrieve the results of a predictive inbox placement test.

Required Parameters:
ReportId
"""
GetDeliverabilityTestReport(args) = sesv2("GET", "/v2/email/deliverability-dashboard/test-reports/{ReportId}", args)

"""
Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.

Required Parameters:
StartDate, EndDate, SubscribedDomain
"""
ListDomainDeliverabilityCampaigns(args) = sesv2("GET", "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", args)

"""
Used to configure or change the DKIM authentication settings for an email domain identity. You can use this operation to do any of the following:   Update the signing attributes for an identity that uses Bring Your Own DKIM (BYODKIM).   Change from using no DKIM authentication to using Easy DKIM.   Change from using no DKIM authentication to using BYODKIM.   Change from using Easy DKIM to using BYODKIM.   Change from using BYODKIM to using Easy DKIM.  

Required Parameters:
EmailIdentity, SigningAttributesOrigin
"""
PutEmailIdentityDkimSigningAttributes(args) = sesv2("PUT", "/v1/email/identities/{EmailIdentity}/dkim/signing", args)

"""
Adds an email address to the suppression list for your account.

Required Parameters:
EmailAddress, Reason
"""
PutSuppressedDestination(args) = sesv2("PUT", "/v2/email/suppression/addresses", args)

"""
Retrieve a list of event destinations that are associated with a configuration set.  Events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

Required Parameters:
ConfigurationSetName
"""
GetConfigurationSetEventDestinations(args) = sesv2("GET", "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", args)

"""
Enable or disable the ability of your account to send email.
"""
PutAccountSendingAttributes() = sesv2("PUT", "/v2/email/account/sending")
