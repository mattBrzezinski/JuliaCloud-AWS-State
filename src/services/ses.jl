include("../AWSCorePrototypeServices.jl")
using .Services: ses

"""
    ReorderReceiptRuleSet()

Reorders the receipt rules within a receipt rule set.  All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleNames": "A list of the specified receipt rule set's receipt rules in the order that you want to put them.",
  "RuleSetName": "The name of the receipt rule set to reorder."
}
"""
ReorderReceiptRuleSet(args) = ses("ReorderReceiptRuleSet", args)

"""
    SendRawEmail()

Composes an email message and immediately queues it for sending. This operation is more flexible than the SendEmail API operation. When you use the SendRawEmail operation, you can specify the headers of the message as well as its content. This flexibility is useful, for example, when you want to send a multipart MIME email (such a message that contains both a text and an HTML version). You can also use this operation to send messages that include attachments. The SendRawEmail operation has the following requirements:   You can only send email from verified email addresses or domains. If you try to send email from an address that isn't verified, the operation results in an "Email address not verified" error.   If your account is still in the Amazon SES sandbox, you can only send email to other verified addresses in your account, or to addresses that are associated with the Amazon SES mailbox simulator.   The maximum message size, including attachments, is 10 MB.   Each message has to include at least one recipient address. A recipient address includes any address on the To:, CC:, or BCC: lines.   If you send a single message to more than one recipient address, and one of the recipient addresses isn't in a valid format (that is, it's not in the format UserName@[SubDomain.]Domain.TopLevelDomain), Amazon SES rejects the entire message, even if the other addresses are valid.   Each message can include up to 50 recipient addresses across the To:, CC:, or BCC: lines. If you need to send a single message to more than 50 recipients, you have to split the list of recipient addresses into groups of less than 50 recipients, and send separate messages to each group.   Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for MIME message parts. However, if Amazon SES has to modify the contents of your message (for example, if you use open and click tracking), 8-bit content isn't preserved. For this reason, we highly recommend that you encode all content that isn't 7-bit ASCII. For more information, see MIME Encoding in the Amazon SES Developer Guide.   Additionally, keep the following considerations in mind when using the SendRawEmail operation:   Although you can customize the message headers when using the SendRawEmail operation, Amazon SES will automatically apply its own Message-ID and Date headers; if you passed these headers when creating the message, they will be overwritten by the values that Amazon SES provides.   If you are using sending authorization to send on behalf of another user, SendRawEmail enables you to specify the cross-account identity for the email's Source, From, and Return-Path parameters in one of two ways: you can pass optional parameters SourceArn, FromArn, and/or ReturnPathArn to the API, or you can include the following X-headers in the header of your raw email:    X-SES-SOURCE-ARN     X-SES-FROM-ARN     X-SES-RETURN-PATH-ARN     Don't include these X-headers in the DKIM signature. Amazon SES removes these before it sends the email.  If you only specify the SourceIdentityArn parameter, Amazon SES sets the From and Return-Path addresses to the same identity that you specified. For more information about sending authorization, see the Using Sending Authorization with Amazon SES in the Amazon SES Developer Guide.    For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your sending quota). For more information about sending quotas in Amazon SES, see Managing Your Amazon SES Sending Limits in the Amazon SES Developer Guide.   

Required Parameters
{
  "RawMessage": "The raw email message itself. The message has to meet the following criteria:   The message has to contain a header and a body, separated by a blank line.   All of the required header fields must be present in the message.   Each part of a multipart MIME message must be formatted properly.   Attachments must be of a content type that Amazon SES supports. For a list on unsupported content types, see Unsupported Attachment Types in the Amazon SES Developer Guide.   The entire message must be base64-encoded.   If any of the MIME parts in your message contain content that is outside of the 7-bit ASCII character range, we highly recommend that you encode that content. For more information, see Sending Raw Email in the Amazon SES Developer Guide.   Per RFC 5321, the maximum length of each line of text, including the &lt;CRLF&gt;, must not exceed 1,000 characters.  "
}

Optional Parameters
{
  "ConfigurationSetName": "The name of the configuration set to use when you send an email using SendRawEmail.",
  "Destinations": "A list of destinations for the message, consisting of To:, CC:, and BCC: addresses.",
  "SourceArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the Source parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to send from user@example.com, then you would specify the SourceArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the Source to be user@example.com. Instead of using this parameter, you can use the X-header X-SES-SOURCE-ARN in the raw message of the email. If you use both the SourceArn parameter and the corresponding X-header, Amazon SES uses the value of the SourceArn parameter.  For information about when to use this parameter, see the description of SendRawEmail in this guide, or see the Amazon SES Developer Guide. ",
  "Source": "The identity's email address. If you do not provide a value for this parameter, you must specify a \"From\" address in the raw text of the message. (You can also specify both.)  Amazon SES does not support the SMTPUTF8 extension, as described inRFC6531. For this reason, the local part of a source email address (the part of the email address that precedes the @ sign) may only contain 7-bit ASCII characters. If the domain part of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in RFC3492. The sender name (also known as the friendly name) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in RFC 2047. MIME encoded-word syntax uses the following form: =?charset?encoding?encoded-text?=.  If you specify the Source parameter and have feedback forwarding enabled, then bounces and complaints will be sent to this email address. This takes precedence over any Return-Path header that you might include in the raw text of the message.",
  "Tags": "A list of tags, in the form of name/value pairs, to apply to an email that you send using SendRawEmail. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.",
  "FromArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to specify a particular \"From\" address in the header of the raw email. Instead of using this parameter, you can use the X-header X-SES-FROM-ARN in the raw message of the email. If you use both the FromArn parameter and the corresponding X-header, Amazon SES uses the value of the FromArn parameter.  For information about when to use this parameter, see the description of SendRawEmail in this guide, or see the Amazon SES Developer Guide. ",
  "ReturnPathArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the ReturnPath parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the ReturnPathArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the ReturnPath to be feedback@example.com. Instead of using this parameter, you can use the X-header X-SES-RETURN-PATH-ARN in the raw message of the email. If you use both the ReturnPathArn parameter and the corresponding X-header, Amazon SES uses the value of the ReturnPathArn parameter.  For information about when to use this parameter, see the description of SendRawEmail in this guide, or see the Amazon SES Developer Guide. "
}
"""
SendRawEmail(args) = ses("SendRawEmail", args)

"""
    DeleteReceiptRule()

Deletes the specified receipt rule. For information about managing receipt rules, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the receipt rule set that contains the receipt rule to delete.",
  "RuleName": "The name of the receipt rule to delete."
}
"""
DeleteReceiptRule(args) = ses("DeleteReceiptRule", args)

"""
    CreateTemplate()

Creates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Template": "The content of the email, composed of a subject line, an HTML part, and a text-only part."
}
"""
CreateTemplate(args) = ses("CreateTemplate", args)

"""
    CreateCustomVerificationEmailTemplate()

Creates a new custom verification email template. For more information about custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateContent": "The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see Custom Verification Email Frequently Asked Questions in the Amazon SES Developer Guide.",
  "FailureRedirectionURL": "The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.",
  "FromEmailAddress": "The email address that the custom verification email is sent from.",
  "TemplateSubject": "The subject line of the custom verification email.",
  "SuccessRedirectionURL": "The URL that the recipient of the verification email is sent to if his or her address is successfully verified.",
  "TemplateName": "The name of the custom verification email template."
}
"""
CreateCustomVerificationEmailTemplate(args) = ses("CreateCustomVerificationEmailTemplate", args)

"""
    CreateReceiptFilter()

Creates a new IP address filter. For information about setting up IP address filters, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Filter": "A data structure that describes the IP address filter to create, which consists of a name, an IP address range, and whether to allow or block mail from it."
}
"""
CreateReceiptFilter(args) = ses("CreateReceiptFilter", args)

"""
    CreateConfigurationSet()

Creates a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSet": "A data structure that contains the name of the configuration set."
}
"""
CreateConfigurationSet(args) = ses("CreateConfigurationSet", args)

"""
    PutIdentityPolicy()

Adds or updates a sending authorization policy for the specified identity (an email address or a domain).  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Identity": "The identity that the policy will apply to. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: user@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com. To successfully call this API, you must own the identity.",
  "PolicyName": "The name of the policy. The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.",
  "Policy": "The text of the policy in JSON format. The policy cannot exceed 4 KB. For information about the syntax of sending authorization policies, see the Amazon SES Developer Guide. "
}
"""
PutIdentityPolicy(args) = ses("PutIdentityPolicy", args)

"""
    GetIdentityDkimAttributes()

Returns the current status of Easy DKIM signing for an entity. For domain name identities, this operation also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published. This operation takes a list of identities as input and returns the following information for each:   Whether Easy DKIM signing is enabled or disabled.   A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.   Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.   This operation is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time. For more information about creating DNS records using DKIM tokens, go to the Amazon SES Developer Guide.

Required Parameters
{
  "Identities": "A list of one or more verified identities - email addresses, domains, or both."
}
"""
GetIdentityDkimAttributes(args) = ses("GetIdentityDkimAttributes", args)

"""
    GetIdentityVerificationAttributes()

Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity. The verification status of an email address is "Pending" until the email address owner clicks the link within the verification email that Amazon SES sent to that address. If the email address owner clicks the link within 24 hours, the verification status of the email address changes to "Success". If the link is not clicked within 24 hours, the verification status changes to "Failed." In that case, if you still want to verify the email address, you must restart the verification process from the beginning. For domain identities, the domain's verification status is "Pending" as Amazon SES searches for the required TXT record in the DNS settings of the domain. When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning. This operation is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.

Required Parameters
{
  "Identities": "A list of identities."
}
"""
GetIdentityVerificationAttributes(args) = ses("GetIdentityVerificationAttributes", args)

"""
    ListConfigurationSets()

Provides a list of the configuration sets associated with your Amazon SES account in the current AWS Region. For information about using configuration sets, see Monitoring Your Amazon SES Sending Activity in the Amazon SES Developer Guide.  You can execute this operation no more than once per second. This operation will return up to 1,000 configuration sets each time it is run. If your Amazon SES account has more than 1,000 configuration sets, this operation will also return a NextToken element. You can then execute the ListConfigurationSets operation again, passing the NextToken parameter and the value of the NextToken element to retrieve additional results.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListConfigurationSets to indicate the position of the configuration set in the configuration set list.",
  "MaxItems": "The number of configuration sets to return."
}
"""

ListConfigurationSets() = ses("ListConfigurationSets")
ListConfigurationSets(args) = ses("ListConfigurationSets", args)

"""
    UpdateConfigurationSetEventDestination()

Updates the event destination of a configuration set. Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see Monitoring Your Amazon SES Sending Activity in the Amazon SES Developer Guide.   When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).  You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that contains the event destination that you want to update.",
  "EventDestination": "The event destination object that you want to apply to the specified configuration set."
}
"""
UpdateConfigurationSetEventDestination(args) = ses("UpdateConfigurationSetEventDestination", args)

"""
    GetIdentityMailFromDomainAttributes()

Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains). This operation is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.

Required Parameters
{
  "Identities": "A list of one or more identities."
}
"""
GetIdentityMailFromDomainAttributes(args) = ses("GetIdentityMailFromDomainAttributes", args)

"""
    SendTemplatedEmail()

Composes an email message using an email template and immediately queues it for sending. In order to send email using the SendTemplatedEmail operation, your call to the API must meet the following requirements:   The call must refer to an existing email template. You can create email templates using the CreateTemplate operation.   The message must be sent from a verified email address or domain.   If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see Verifying Email Addresses and Domains in the Amazon SES Developer Guide.    The maximum message size is 10 MB.   Calls to the SendTemplatedEmail operation may only include one Destination parameter. A destination is a set of recipients who will receive the same version of the email. The Destination parameter can include up to 50 recipients, across the To:, CC: and BCC: fields.   The Destination parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format UserName@[SubDomain.]Domain.TopLevelDomain), the entire message will be rejected, even if the message contains other recipients that are valid.    If your call to the SendTemplatedEmail operation includes all of the required parameters, Amazon SES accepts it and returns a Message ID. However, if Amazon SES can't render the email because the template contains errors, it doesn't send the email. Additionally, because it already accepted the message, Amazon SES doesn't return a message stating that it was unable to send the email. For these reasons, we highly recommend that you set up Amazon SES to send you notifications when Rendering Failure events occur. For more information, see Sending Personalized Email Using the Amazon SES API in the Amazon Simple Email Service Developer Guide. 

Required Parameters
{
  "Source": "The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the Amazon SES Developer Guide. If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the SourceArn parameter. For more information about sending authorization, see the Amazon SES Developer Guide.  Amazon SES does not support the SMTPUTF8 extension, as described in RFC6531. For this reason, the local part of a source email address (the part of the email address that precedes the @ sign) may only contain 7-bit ASCII characters. If the domain part of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in RFC3492. The sender name (also known as the friendly name) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described inRFC 2047. MIME encoded-word syntax uses the following form: =?charset?encoding?encoded-text?=. ",
  "TemplateData": "A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.",
  "Template": "The template to use when sending this email.",
  "Destination": "The destination for this email, composed of To:, CC:, and BCC: fields. A Destination can include up to 50 recipients across these three fields."
}

Optional Parameters
{
  "ConfigurationSetName": "The name of the configuration set to use when you send an email using SendTemplatedEmail.",
  "SourceArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the Source parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to send from user@example.com, then you would specify the SourceArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the Source to be user@example.com. For more information about sending authorization, see the Amazon SES Developer Guide.",
  "ReturnPath": "The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the ReturnPath parameter. The ReturnPath parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. ",
  "Tags": "A list of tags, in the form of name/value pairs, to apply to an email that you send using SendTemplatedEmail. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.",
  "TemplateArn": "The ARN of the template to use when sending this email.",
  "ReplyToAddresses": "The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.",
  "ReturnPathArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the ReturnPath parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the ReturnPathArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the ReturnPath to be feedback@example.com. For more information about sending authorization, see the Amazon SES Developer Guide."
}
"""
SendTemplatedEmail(args) = ses("SendTemplatedEmail", args)

"""
    VerifyEmailAddress()

Deprecated. Use the VerifyEmailIdentity operation to verify a new email address.

Required Parameters
{
  "EmailAddress": "The email address to be verified."
}
"""
VerifyEmailAddress(args) = ses("VerifyEmailAddress", args)

"""
    VerifyDomainDkim()

Returns a set of DKIM tokens for a domain identity.  When you execute the VerifyDomainDkim operation, the domain that you specify is added to the list of identities that are associated with your account. This is true even if you haven't already associated the domain with your account by using the VerifyDomainIdentity operation. However, you can't send email from the domain until you either successfully verify it or you successfully set up DKIM for it.  You use the tokens that are generated by this operation to create CNAME records. When Amazon SES detects that you've added these records to the DNS configuration for a domain, you can start sending email from that domain. You can start sending email even if you haven't added the TXT record provided by the VerifyDomainIdentity operation to the DNS configuration for your domain. All email that you send from the domain is authenticated using DKIM. To create the CNAME records for DKIM authentication, use the following values:    Name: token._domainkey.example.com     Type: CNAME    Value: token.dkim.amazonses.com   In the preceding example, replace token with one of the tokens that are generated when you execute this operation. Replace example.com with your domain. Repeat this process for each token that's generated by this operation. You can execute this operation no more than once per second.

Required Parameters
{
  "Domain": "The name of the domain to be verified for Easy DKIM signing."
}
"""
VerifyDomainDkim(args) = ses("VerifyDomainDkim", args)

"""
    CreateConfigurationSetTrackingOptions()

Creates an association between a configuration set and a custom domain for open and click event tracking.  By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the Amazon SES Developer Guide.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that the tracking options should be associated with.",
  "TrackingOptions": ""
}
"""
CreateConfigurationSetTrackingOptions(args) = ses("CreateConfigurationSetTrackingOptions", args)

"""
    ListIdentityPolicies()

Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use GetIdentityPolicies.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Identity": "The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: user@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com. To successfully call this API, you must own the identity."
}
"""
ListIdentityPolicies(args) = ses("ListIdentityPolicies", args)

"""
    UpdateConfigurationSetTrackingOptions()

Modifies an association between a configuration set and a custom domain for open and click event tracking.  By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the Amazon SES Developer Guide.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set for which you want to update the custom tracking domain.",
  "TrackingOptions": ""
}
"""
UpdateConfigurationSetTrackingOptions(args) = ses("UpdateConfigurationSetTrackingOptions", args)

"""
    CreateReceiptRuleSet()

Creates an empty receipt rule set. For information about setting up receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the rule set to create. The name must:   This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).   Start and end with a letter or number.   Contain less than 64 characters.  "
}
"""
CreateReceiptRuleSet(args) = ses("CreateReceiptRuleSet", args)

"""
    DeleteConfigurationSet()

Deletes a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set to delete."
}
"""
DeleteConfigurationSet(args) = ses("DeleteConfigurationSet", args)

"""
    SetActiveReceiptRuleSet()

Sets the specified receipt rule set as the active receipt rule set.  To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Optional Parameters
{
  "RuleSetName": "The name of the receipt rule set to make active. Setting this value to null disables all email receiving."
}
"""

SetActiveReceiptRuleSet() = ses("SetActiveReceiptRuleSet")
SetActiveReceiptRuleSet(args) = ses("SetActiveReceiptRuleSet", args)

"""
    SetIdentityNotificationTopic()

Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications. When you use this operation, you specify a verified identity, such as an email address or domain. When you send an email that uses the chosen identity in the Source field, Amazon SES sends notifications to the topic you specified. You can send bounce, complaint, or delivery notifications (or any combination of the three) to the Amazon SNS topic that you specify. You can execute this operation no more than once per second. For more information about feedback notification, see the Amazon SES Developer Guide.

Required Parameters
{
  "Identity": "The identity (email address or domain) that you want to set the Amazon SNS topic for.  You can only specify a verified identity for this parameter.  You can specify an identity by using its name or by using its Amazon Resource Name (ARN). The following examples are all valid identities: sender@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com.",
  "NotificationType": "The type of notifications that will be published to the specified Amazon SNS topic."
}

Optional Parameters
{
  "SnsTopic": "The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from the request or a null value is passed, SnsTopic is cleared and publishing is disabled."
}
"""
SetIdentityNotificationTopic(args) = ses("SetIdentityNotificationTopic", args)

"""
    DescribeReceiptRule()

Returns the details of the specified receipt rule. For information about setting up receipt rules, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the receipt rule set that the receipt rule belongs to.",
  "RuleName": "The name of the receipt rule."
}
"""
DescribeReceiptRule(args) = ses("DescribeReceiptRule", args)

"""
    UpdateTemplate()

Updates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Template": ""
}
"""
UpdateTemplate(args) = ses("UpdateTemplate", args)

"""
    UpdateAccountSendingEnabled()

Enables or disables email sending across your entire Amazon SES account in the current AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending across your Amazon SES account in a given AWS Region when reputation metrics (such as your bounce or complaint rates) reach certain thresholds. You can execute this operation no more than once per second.

Optional Parameters
{
  "Enabled": "Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region."
}
"""

UpdateAccountSendingEnabled() = ses("UpdateAccountSendingEnabled")
UpdateAccountSendingEnabled(args) = ses("UpdateAccountSendingEnabled", args)

"""
    GetSendQuota()

Provides the sending limits for the Amazon SES account.  You can execute this operation no more than once per second.
"""

GetSendQuota() = ses("GetSendQuota")
GetSendQuota(args) = ses("GetSendQuota", args)

"""
    DeleteReceiptRuleSet()

Deletes the specified receipt rule set and all of the receipt rules it contains.  The currently active rule set cannot be deleted.  For information about managing receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the receipt rule set to delete."
}
"""
DeleteReceiptRuleSet(args) = ses("DeleteReceiptRuleSet", args)

"""
    PutConfigurationSetDeliveryOptions()

Adds or updates the delivery options for a configuration set.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to specify the delivery options for."
}

Optional Parameters
{
  "DeliveryOptions": "Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS)."
}
"""
PutConfigurationSetDeliveryOptions(args) = ses("PutConfigurationSetDeliveryOptions", args)

"""
    ListReceiptRuleSets()

Lists the receipt rule sets that exist under your AWS account in the current AWS Region. If there are additional receipt rule sets to be retrieved, you will receive a NextToken that you can provide to the next call to ListReceiptRuleSets to retrieve the additional entries. For information about managing receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListReceiptRuleSets to indicate the position in the receipt rule set list."
}
"""

ListReceiptRuleSets() = ses("ListReceiptRuleSets")
ListReceiptRuleSets(args) = ses("ListReceiptRuleSets", args)

"""
    VerifyDomainIdentity()

Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. For more information about verifying domains, see Verifying Email Addresses and Domains in the Amazon SES Developer Guide.  You can execute this operation no more than once per second.

Required Parameters
{
  "Domain": "The domain to be verified."
}
"""
VerifyDomainIdentity(args) = ses("VerifyDomainIdentity", args)

"""
    UpdateConfigurationSetReputationMetricsEnabled()

Enables or disables the publishing of reputation metrics for emails sent using a specific configuration set in a given AWS Region. Reputation metrics include bounce and complaint rates. These metrics are published to Amazon CloudWatch. By using CloudWatch, you can create alarms when bounce or complaint rates exceed certain thresholds. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to update.",
  "Enabled": "Describes whether or not Amazon SES will publish reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch."
}
"""
UpdateConfigurationSetReputationMetricsEnabled(args) = ses("UpdateConfigurationSetReputationMetricsEnabled", args)

"""
    CloneReceiptRuleSet()

Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set. For information about setting up rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "OriginalRuleSetName": "The name of the rule set to clone.",
  "RuleSetName": "The name of the rule set to create. The name must:   This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).   Start and end with a letter or number.   Contain less than 64 characters.  "
}
"""
CloneReceiptRuleSet(args) = ses("CloneReceiptRuleSet", args)

"""
    SendCustomVerificationEmail()

Adds an email address to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. As a result of executing this operation, a customized verification email is sent to the specified address. To use this operation, you must first create a custom verification email template. For more information about creating and using custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "EmailAddress": "The email address to verify.",
  "TemplateName": "The name of the custom verification email template to use when sending the verification email."
}

Optional Parameters
{
  "ConfigurationSetName": "Name of a configuration set to use when sending the verification email."
}
"""
SendCustomVerificationEmail(args) = ses("SendCustomVerificationEmail", args)

"""
    UpdateConfigurationSetSendingEnabled()

Enables or disables email sending for messages sent using a specific configuration set in a given AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending for a configuration set when the reputation metrics for that configuration set (such as your bounce on complaint rate) exceed certain thresholds. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that you want to update.",
  "Enabled": "Describes whether email sending is enabled or disabled for the configuration set. "
}
"""
UpdateConfigurationSetSendingEnabled(args) = ses("UpdateConfigurationSetSendingEnabled", args)

"""
    DeleteReceiptFilter()

Deletes the specified IP address filter. For information about managing IP address filters, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "FilterName": "The name of the IP address filter to delete."
}
"""
DeleteReceiptFilter(args) = ses("DeleteReceiptFilter", args)

"""
    DeleteConfigurationSetTrackingOptions()

Deletes an association between a configuration set and a custom domain for open and click event tracking. By default, images and links used for tracking open and click events are hosted on domains operated by Amazon SES. You can configure a subdomain of your own to handle these events. For information about using custom domains, see the Amazon SES Developer Guide.  Deleting this kind of association will result in emails sent using the specified configuration set to capture open and click events using the standard, Amazon SES-operated domains. 

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set from which you want to delete the tracking options."
}
"""
DeleteConfigurationSetTrackingOptions(args) = ses("DeleteConfigurationSetTrackingOptions", args)

"""
    ListVerifiedEmailAddresses()

Deprecated. Use the ListIdentities operation to list the email addresses and domains associated with your account.
"""

ListVerifiedEmailAddresses() = ses("ListVerifiedEmailAddresses")
ListVerifiedEmailAddresses(args) = ses("ListVerifiedEmailAddresses", args)

"""
    GetSendStatistics()

Provides sending statistics for the current AWS Region. The result is a list of data points, representing the last two weeks of sending activity. Each data point in the list contains statistics for a 15-minute period of time. You can execute this operation no more than once per second.
"""

GetSendStatistics() = ses("GetSendStatistics")
GetSendStatistics(args) = ses("GetSendStatistics", args)

"""
    CreateConfigurationSetEventDestination()

Creates a configuration set event destination.  When you create or update an event destination, you must provide one, and only one, destination. The destination can be CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).  An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set that the event destination should be associated with.",
  "EventDestination": "An object that describes the AWS service that email sending event information will be published to."
}
"""
CreateConfigurationSetEventDestination(args) = ses("CreateConfigurationSetEventDestination", args)

"""
    GetIdentityPolicies()

Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "PolicyNames": "A list of the names of policies to be retrieved. You can retrieve a maximum of 20 policies at a time. If you do not know the names of the policies that are attached to the identity, you can use ListIdentityPolicies.",
  "Identity": "The identity for which the policies will be retrieved. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: user@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com. To successfully call this API, you must own the identity."
}
"""
GetIdentityPolicies(args) = ses("GetIdentityPolicies", args)

"""
    CreateReceiptRule()

Creates a receipt rule. For information about setting up receipt rules, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Rule": "A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.",
  "RuleSetName": "The name of the rule set that the receipt rule will be added to."
}

Optional Parameters
{
  "After": "The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list."
}
"""
CreateReceiptRule(args) = ses("CreateReceiptRule", args)

"""
    SetIdentityMailFromDomain()

Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).  To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the Amazon SES Developer Guide.  You can execute this operation no more than once per second.

Required Parameters
{
  "Identity": "The verified identity for which you want to enable or disable the specified custom MAIL FROM domain."
}

Optional Parameters
{
  "BehaviorOnMXFailure": "The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose UseDefaultValue, Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose RejectMessage, Amazon SES will return a MailFromDomainNotVerified error and not send the email. The action specified in BehaviorOnMXFailure is taken when the custom MAIL FROM domain setup is in the Pending, Failed, and TemporaryFailure states.",
  "MailFromDomain": "The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a \"From\" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the Amazon SES Developer Guide), and 3) not be used to receive emails. A value of null disables the custom MAIL FROM setting for the identity."
}
"""
SetIdentityMailFromDomain(args) = ses("SetIdentityMailFromDomain", args)

"""
    VerifyEmailIdentity()

Adds an email address to the list of identities for your Amazon SES account in the current AWS region and attempts to verify it. As a result of executing this operation, a verification email is sent to the specified address. You can execute this operation no more than once per second.

Required Parameters
{
  "EmailAddress": "The email address to be verified."
}
"""
VerifyEmailIdentity(args) = ses("VerifyEmailIdentity", args)

"""
    DeleteVerifiedEmailAddress()

Deprecated. Use the DeleteIdentity operation to delete email addresses and domains.

Required Parameters
{
  "EmailAddress": "An email address to be removed from the list of verified addresses."
}
"""
DeleteVerifiedEmailAddress(args) = ses("DeleteVerifiedEmailAddress", args)

"""
    DeleteTemplate()

Deletes an email template. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateName": "The name of the template to be deleted."
}
"""
DeleteTemplate(args) = ses("DeleteTemplate", args)

"""
    UpdateCustomVerificationEmailTemplate()

Updates an existing custom verification email template. For more information about custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateName": "The name of the custom verification email template that you want to update."
}

Optional Parameters
{
  "TemplateContent": "The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see Custom Verification Email Frequently Asked Questions in the Amazon SES Developer Guide.",
  "FailureRedirectionURL": "The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.",
  "FromEmailAddress": "The email address that the custom verification email is sent from.",
  "TemplateSubject": "The subject line of the custom verification email.",
  "SuccessRedirectionURL": "The URL that the recipient of the verification email is sent to if his or her address is successfully verified."
}
"""
UpdateCustomVerificationEmailTemplate(args) = ses("UpdateCustomVerificationEmailTemplate", args)

"""
    SetIdentityFeedbackForwardingEnabled()

Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.  Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.  You can execute this operation no more than once per second. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.

Required Parameters
{
  "ForwardingEnabled": "Sets whether Amazon SES will forward bounce and complaint notifications as email. true specifies that Amazon SES will forward bounce and complaint notifications as email, in addition to any Amazon SNS topic publishing otherwise specified. false specifies that Amazon SES will publish bounce and complaint notifications only through Amazon SNS. This value can only be set to false when Amazon SNS topics are set for both Bounce and Complaint notification types.",
  "Identity": "The identity for which to set bounce and complaint notification forwarding. Examples: user@example.com, example.com."
}
"""
SetIdentityFeedbackForwardingEnabled(args) = ses("SetIdentityFeedbackForwardingEnabled", args)

"""
    TestRenderTemplate()

Creates a preview of the MIME content of an email when provided with a template and a set of replacement data. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateData": "A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.",
  "TemplateName": "The name of the template that you want to render."
}
"""
TestRenderTemplate(args) = ses("TestRenderTemplate", args)

"""
    DescribeActiveReceiptRuleSet()

Returns the metadata and receipt rules for the receipt rule set that is currently active. For information about setting up receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.
"""

DescribeActiveReceiptRuleSet() = ses("DescribeActiveReceiptRuleSet")
DescribeActiveReceiptRuleSet(args) = ses("DescribeActiveReceiptRuleSet", args)

"""
    SendBounce()

Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.  You cannot use this API to send generic bounces for mail that was not received by Amazon SES.  For information about receiving email through Amazon SES, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "OriginalMessageId": "The message ID of the message to be bounced.",
  "BounceSender": "The address to use in the \"From\" header of the bounce message. This must be an identity that you have verified with Amazon SES.",
  "BouncedRecipientInfoList": "A list of recipients of the bounced message, including the information required to create the Delivery Status Notifications (DSNs) for the recipients. You must specify at least one BouncedRecipientInfo in the list."
}

Optional Parameters
{
  "MessageDsn": "Message-related DSN fields. If not specified, Amazon SES will choose the values.",
  "Explanation": "Human-readable text for the bounce message to explain the failure. If not specified, the text will be auto-generated based on the bounced recipient information.",
  "BounceSenderArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the address in the \"From\" header of the bounce. For more information about sending authorization, see the Amazon SES Developer Guide."
}
"""
SendBounce(args) = ses("SendBounce", args)

"""
    SendBulkTemplatedEmail()

Composes an email message to multiple destinations. The message body is created using an email template. In order to send email using the SendBulkTemplatedEmail operation, your call to the API must meet the following requirements:   The call must refer to an existing email template. You can create email templates using the CreateTemplate operation.   The message must be sent from a verified email address or domain.   If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see Verifying Email Addresses and Domains in the Amazon SES Developer Guide.    The maximum message size is 10 MB.   Each Destination parameter must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format UserName@[SubDomain.]Domain.TopLevelDomain), the entire message will be rejected, even if the message contains other recipients that are valid.   The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the SendBulkTemplatedEmail operation several times to send the message to each group.   The number of destinations you can contact in a single call to the API may be limited by your account's maximum sending rate.  

Required Parameters
{
  "Destinations": "One or more Destination objects. All of the recipients in a Destination will receive the same version of the email. You can specify up to 50 Destination objects within a Destinations array.",
  "Source": "The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the Amazon SES Developer Guide. If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the SourceArn parameter. For more information about sending authorization, see the Amazon SES Developer Guide.  Amazon SES does not support the SMTPUTF8 extension, as described in RFC6531. For this reason, the local part of a source email address (the part of the email address that precedes the @ sign) may only contain 7-bit ASCII characters. If the domain part of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in RFC3492. The sender name (also known as the friendly name) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in RFC 2047. MIME encoded-word syntax uses the following form: =?charset?encoding?encoded-text?=. ",
  "Template": "The template to use when sending this email."
}

Optional Parameters
{
  "ConfigurationSetName": "The name of the configuration set to use when you send an email using SendBulkTemplatedEmail.",
  "SourceArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the Source parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to send from user@example.com, then you would specify the SourceArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the Source to be user@example.com. For more information about sending authorization, see the Amazon SES Developer Guide.",
  "ReturnPath": "The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the ReturnPath parameter. The ReturnPath parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. ",
  "TemplateArn": "The ARN of the template to use when sending this email.",
  "DefaultTemplateData": "A list of replacement values to apply to the template when replacement data is not specified in a Destination object. These values act as a default or fallback option when no other data is available. The template data is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.",
  "DefaultTags": "A list of tags, in the form of name/value pairs, to apply to an email that you send to a destination using SendBulkTemplatedEmail.",
  "ReplyToAddresses": "The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.",
  "ReturnPathArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the ReturnPath parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the ReturnPathArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the ReturnPath to be feedback@example.com. For more information about sending authorization, see the Amazon SES Developer Guide."
}
"""
SendBulkTemplatedEmail(args) = ses("SendBulkTemplatedEmail", args)

"""
    DeleteCustomVerificationEmailTemplate()

Deletes an existing custom verification email template.  For more information about custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateName": "The name of the custom verification email template that you want to delete."
}
"""
DeleteCustomVerificationEmailTemplate(args) = ses("DeleteCustomVerificationEmailTemplate", args)

"""
    GetCustomVerificationEmailTemplate()

Returns the custom email verification template for the template name you specify. For more information about custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateName": "The name of the custom verification email template that you want to retrieve."
}
"""
GetCustomVerificationEmailTemplate(args) = ses("GetCustomVerificationEmailTemplate", args)

"""
    ListTemplates()

Lists the email templates present in your Amazon SES account in the current AWS Region. You can execute this operation no more than once per second.

Optional Parameters
{
  "NextToken": "A token returned from a previous call to ListTemplates to indicate the position in the list of email templates.",
  "MaxItems": "The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results."
}
"""

ListTemplates() = ses("ListTemplates")
ListTemplates(args) = ses("ListTemplates", args)

"""
    DeleteConfigurationSetEventDestination()

Deletes a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set from which to delete the event destination.",
  "EventDestinationName": "The name of the event destination to delete."
}
"""
DeleteConfigurationSetEventDestination(args) = ses("DeleteConfigurationSetEventDestination", args)

"""
    GetIdentityNotificationAttributes()

Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes. This operation is throttled at one request per second and can only get notification attributes for up to 100 identities at a time. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.

Required Parameters
{
  "Identities": "A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: user@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com."
}
"""
GetIdentityNotificationAttributes(args) = ses("GetIdentityNotificationAttributes", args)

"""
    GetAccountSendingEnabled()

Returns the email sending status of the Amazon SES account for the current region. You can execute this operation no more than once per second.
"""

GetAccountSendingEnabled() = ses("GetAccountSendingEnabled")
GetAccountSendingEnabled(args) = ses("GetAccountSendingEnabled", args)

"""
    SendEmail()

Composes an email message and immediately queues it for sending. In order to send email using the SendEmail operation, your message must meet the following requirements:   The message must be sent from a verified email address or domain. If you attempt to send email using a non-verified address or domain, the operation will result in an "Email address not verified" error.    If your account is still in the Amazon SES sandbox, you may only send to verified addresses or domains, or to email addresses associated with the Amazon SES Mailbox Simulator. For more information, see Verifying Email Addresses and Domains in the Amazon SES Developer Guide.    The maximum message size is 10 MB.   The message must include at least one recipient email address. The recipient address can be a To: address, a CC: address, or a BCC: address. If a recipient email address is invalid (that is, it is not in the format UserName@[SubDomain.]Domain.TopLevelDomain), the entire message will be rejected, even if the message contains other recipients that are valid.   The message may not include more than 50 recipients, across the To:, CC: and BCC: fields. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call the SendEmail operation several times to send the message to each group.    For every message that you send, the total number of recipients (including each recipient in the To:, CC: and BCC: fields) is counted against the maximum number of emails you can send in a 24-hour period (your sending quota). For more information about sending quotas in Amazon SES, see Managing Your Amazon SES Sending Limits in the Amazon SES Developer Guide.  

Required Parameters
{
  "Source": "The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the Amazon SES Developer Guide. If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the SourceArn parameter. For more information about sending authorization, see the Amazon SES Developer Guide.  Amazon SES does not support the SMTPUTF8 extension, as described in RFC6531. For this reason, the local part of a source email address (the part of the email address that precedes the @ sign) may only contain 7-bit ASCII characters. If the domain part of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in RFC3492. The sender name (also known as the friendly name) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in RFC 2047. MIME encoded-word syntax uses the following form: =?charset?encoding?encoded-text?=. ",
  "Message": "The message to be sent.",
  "Destination": "The destination for this email, composed of To:, CC:, and BCC: fields."
}

Optional Parameters
{
  "ConfigurationSetName": "The name of the configuration set to use when you send an email using SendEmail.",
  "SourceArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the Source parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to send from user@example.com, then you would specify the SourceArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the Source to be user@example.com. For more information about sending authorization, see the Amazon SES Developer Guide.",
  "ReturnPath": "The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the ReturnPath parameter. The ReturnPath parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. ",
  "Tags": "A list of tags, in the form of name/value pairs, to apply to an email that you send using SendEmail. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.",
  "ReplyToAddresses": "The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.",
  "ReturnPathArn": "This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the ReturnPath parameter. For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the ReturnPathArn to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the ReturnPath to be feedback@example.com. For more information about sending authorization, see the Amazon SES Developer Guide."
}
"""
SendEmail(args) = ses("SendEmail", args)

"""
    DescribeReceiptRuleSet()

Returns the details of the specified receipt rule set. For information about managing receipt rule sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the receipt rule set to describe."
}
"""
DescribeReceiptRuleSet(args) = ses("DescribeReceiptRuleSet", args)

"""
    UpdateReceiptRule()

Updates a receipt rule. For information about managing receipt rules, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Rule": "A data structure that contains the updated receipt rule information.",
  "RuleSetName": "The name of the receipt rule set that the receipt rule belongs to."
}
"""
UpdateReceiptRule(args) = ses("UpdateReceiptRule", args)

"""
    DeleteIdentity()

Deletes the specified identity (an email address or a domain) from the list of verified identities. You can execute this operation no more than once per second.

Required Parameters
{
  "Identity": "The identity to be removed from the list of identities for the AWS Account."
}
"""
DeleteIdentity(args) = ses("DeleteIdentity", args)

"""
    DescribeConfigurationSet()

Returns the details of the specified configuration set. For information about using configuration sets, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "ConfigurationSetName": "The name of the configuration set to describe."
}

Optional Parameters
{
  "ConfigurationSetAttributeNames": "A list of configuration set attributes to return."
}
"""
DescribeConfigurationSet(args) = ses("DescribeConfigurationSet", args)

"""
    GetTemplate()

Displays the template object (which includes the Subject line, HTML part and text part) for the template you specify. You can execute this operation no more than once per second.

Required Parameters
{
  "TemplateName": "The name of the template you want to retrieve."
}
"""
GetTemplate(args) = ses("GetTemplate", args)

"""
    ListIdentities()

Returns a list containing all of the identities (email addresses and domains) for your AWS account in the current AWS Region, regardless of verification status. You can execute this operation no more than once per second.

Optional Parameters
{
  "IdentityType": "The type of the identities to list. Possible values are \"EmailAddress\" and \"Domain\". If this parameter is omitted, then all identities will be listed.",
  "NextToken": "The token to use for pagination.",
  "MaxItems": "The maximum number of identities per page. Possible values are 1-1000 inclusive."
}
"""

ListIdentities() = ses("ListIdentities")
ListIdentities(args) = ses("ListIdentities", args)

"""
    SetIdentityHeadersInNotificationsEnabled()

Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type. You can execute this operation no more than once per second. For more information about using notifications with Amazon SES, see the Amazon SES Developer Guide.

Required Parameters
{
  "Identity": "The identity for which to enable or disable headers in notifications. Examples: user@example.com, example.com.",
  "NotificationType": "The notification type for which to enable or disable headers in notifications. ",
  "Enabled": "Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the specified notification type. A value of true specifies that Amazon SES will include headers in notifications, and a value of false specifies that Amazon SES will not include headers in notifications. This value can only be set when NotificationType is already set to use a particular Amazon SNS topic."
}
"""
SetIdentityHeadersInNotificationsEnabled(args) = ses("SetIdentityHeadersInNotificationsEnabled", args)

"""
    SetIdentityDkimEnabled()

Enables or disables Easy DKIM signing of email sent from an identity. If Easy DKIM signing is enabled for a domain, then Amazon SES uses DKIM to sign all email that it sends from addresses on that domain. If Easy DKIM signing is enabled for an email address, then Amazon SES uses DKIM to sign all email it sends from that address.  For email addresses (for example, user@example.com), you can only enable DKIM signing if the corresponding domain (in this case, example.com) has been set up to use Easy DKIM.  You can enable DKIM signing for an identity at any time after you start the verification process for the identity, even if the verification process isn't complete.  You can execute this operation no more than once per second. For more information about Easy DKIM signing, go to the Amazon SES Developer Guide.

Required Parameters
{
  "Identity": "The identity for which DKIM signing should be enabled or disabled.",
  "DkimEnabled": "Sets whether DKIM signing is enabled for an identity. Set to true to enable DKIM signing for this identity; false to disable it. "
}
"""
SetIdentityDkimEnabled(args) = ses("SetIdentityDkimEnabled", args)

"""
    ListCustomVerificationEmailTemplates()

Lists the existing custom verification email templates for your account in the current AWS Region. For more information about custom verification email templates, see Using Custom Verification Email Templates in the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Optional Parameters
{
  "MaxResults": "The maximum number of custom verification email templates to return. This value must be at least 1 and less than or equal to 50. If you do not specify a value, or if you specify a value less than 1 or greater than 50, the operation will return up to 50 results.",
  "NextToken": "An array the contains the name and creation time stamp for each template in your Amazon SES account."
}
"""

ListCustomVerificationEmailTemplates() = ses("ListCustomVerificationEmailTemplates")
ListCustomVerificationEmailTemplates(args) = ses("ListCustomVerificationEmailTemplates", args)

"""
    DeleteIdentityPolicy()

Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.  This API is for the identity owner only. If you have not verified the identity, this API will return an error.  Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "Identity": "The identity that is associated with the policy that you want to delete. You can specify the identity by using its name or by using its Amazon Resource Name (ARN). Examples: user@example.com, example.com, arn:aws:ses:us-east-1:123456789012:identity/example.com. To successfully call this API, you must own the identity.",
  "PolicyName": "The name of the policy to be deleted."
}
"""
DeleteIdentityPolicy(args) = ses("DeleteIdentityPolicy", args)

"""
    ListReceiptFilters()

Lists the IP address filters associated with your AWS account in the current AWS Region. For information about managing IP address filters, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.
"""

ListReceiptFilters() = ses("ListReceiptFilters")
ListReceiptFilters(args) = ses("ListReceiptFilters", args)

"""
    SetReceiptRulePosition()

Sets the position of the specified receipt rule in the receipt rule set. For information about managing receipt rules, see the Amazon SES Developer Guide. You can execute this operation no more than once per second.

Required Parameters
{
  "RuleSetName": "The name of the receipt rule set that contains the receipt rule to reposition.",
  "RuleName": "The name of the receipt rule to reposition."
}

Optional Parameters
{
  "After": "The name of the receipt rule after which to place the specified receipt rule."
}
"""
SetReceiptRulePosition(args) = ses("SetReceiptRulePosition", args)