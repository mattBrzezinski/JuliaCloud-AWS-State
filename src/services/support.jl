include("../AWSCorePrototypeServices.jl")
using .Services: support

"""
    ResolveCase()

Resolves a support case. This operation takes a caseId and returns the initial and final state of the case.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Optional Parameters
{
  "caseId": "The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 "
}
"""

ResolveCase() = support("ResolveCase")
ResolveCase(args) = support("ResolveCase", args)

"""
    CreateCase()

Creates a case in the AWS Support Center. This operation is similar to how you create a case in the AWS Support Center Create Case page. The AWS Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways:    Submit a request from the AWS Support Center Create Case page.   Use the Service Quotas RequestServiceQuotaIncrease operation.   A successful CreateCase request returns an AWS Support case number. You can use the DescribeCases operation and specify the case number to get existing AWS Support cases. After you create a case, use the AddCommunicationToCase operation to add additional communication or attachments to an existing case. The caseId is separate from the displayId that appears in the AWS Support Center. Use the DescribeCases operation to get the displayId.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "communicationBody": "The communication body text that describes the issue. This text appears in the Description field on the AWS Support Center Create Case page.",
  "subject": "The title of the AWS Support case. The title appears in the Subject field on the AWS Support Center Create Case page."
}

Optional Parameters
{
  "serviceCode": "The code for the AWS service. You can use the DescribeServices operation to get the possible serviceCode values.",
  "categoryCode": "The category of problem for the AWS Support case. You also use the DescribeServices operation to get the category code for a service. Each AWS service defines its own set of category codes.",
  "ccEmailAddresses": "A list of email addresses that AWS Support copies on case correspondence. AWS Support identifies the account that creates the case when you specify your AWS credentials in an HTTP POST method or use the AWS SDKs. ",
  "attachmentSetId": "The ID of a set of one or more attachments for the case. Create the set by using the AddAttachmentsToSet operation.",
  "severityCode": "A value that indicates the urgency of the case. This value determines the response time according to your service level agreement with AWS Support. You can use the DescribeSeverityLevels operation to get the possible values for severityCode.  For more information, see SeverityLevel and Choosing a Severity in the AWS Support User Guide.  The availability of severity levels depends on the support plan for the AWS account. ",
  "language": "The language in which AWS Support handles the case. You must specify the ISO 639-1 code for the language parameter if you want support in that language. Currently, English (\"en\") and Japanese (\"ja\") are supported.",
  "issueType": "The type of issue for the case. You can specify customer-service or technical. If you don't specify a value, the default is technical."
}
"""
CreateCase(args) = support("CreateCase", args)

"""
    DescribeSeverityLevels()

Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type that you include for a CreateCase request.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Optional Parameters
{
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""

DescribeSeverityLevels() = support("DescribeSeverityLevels")
DescribeSeverityLevels(args) = support("DescribeSeverityLevels", args)

"""
    DescribeTrustedAdvisorCheckResult()

Returns the results of the AWS Trusted Advisor check that has the specified check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status - The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".    timestamp - The time of the last refresh of the check.    checkId - The unique identifier for the check.      You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "checkId": "The unique identifier for the Trusted Advisor check."
}

Optional Parameters
{
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""
DescribeTrustedAdvisorCheckResult(args) = support("DescribeTrustedAdvisorCheckResult", args)

"""
    AddAttachmentsToSet()

Adds one or more attachments to an attachment set.  An attachment set is a temporary container for attachments that you add to a case or case communication. The set is available for 1 hour after it's created. The expiryTime returned in the response is when the set expires.     You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "attachments": "One or more attachments to add to the set. You can add up to three attachments per set. The size limit is 5 MB per attachment. In the Attachment object, use the data parameter to specify the contents of the attachment file. In the previous request syntax, the value for data appear as blob, which is represented as a base64-encoded string. The value for fileName is the name of the attachment, such as troubleshoot-screenshot.png."
}

Optional Parameters
{
  "attachmentSetId": "The ID of the attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists."
}
"""
AddAttachmentsToSet(args) = support("AddAttachmentsToSet", args)

"""
    DescribeCases()

Returns a list of cases that you specify by passing one or more case IDs. You can use the afterTime and beforeTime parameters to filter the cases by date. You can set values for the includeResolvedCases and includeCommunications parameters to specify how much information to return. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.   Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Optional Parameters
{
  "caseIdList": "A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.",
  "beforeTime": "The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "afterTime": "The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "includeCommunications": "Specifies whether to include communications in the DescribeCases response. By default, communications are incuded.",
  "maxResults": "The maximum number of results to return before paginating.",
  "includeResolvedCases": "Specifies whether to include resolved support cases in the DescribeCases response. By default, resolved cases aren't included.",
  "displayId": "The ID displayed for a case in the AWS Support Center user interface.",
  "nextToken": "A resumption point for pagination.",
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""

DescribeCases() = support("DescribeCases")
DescribeCases(args) = support("DescribeCases", args)

"""
    DescribeTrustedAdvisorCheckSummaries()

Returns the results for the AWS Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains an array of TrustedAdvisorCheckSummary objects.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "checkIds": "The IDs of the Trusted Advisor checks."
}
"""
DescribeTrustedAdvisorCheckSummaries(args) = support("DescribeTrustedAdvisorCheckSummaries", args)

"""
    DescribeCommunications()

Returns communications and attachments for one or more support cases. Use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a specific case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the results. Set maxResults to the number of cases that you want to display on each page, and use nextToken to specify the resumption of pagination.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "caseId": "The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 "
}

Optional Parameters
{
  "beforeTime": "The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "afterTime": "The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "maxResults": "The maximum number of results to return before paginating.",
  "nextToken": "A resumption point for pagination."
}
"""
DescribeCommunications(args) = support("DescribeCommunications", args)

"""
    DescribeTrustedAdvisorChecks()

Returns information about all available AWS Trusted Advisor checks, including the name, ID, category, description, and metadata. You must specify a language code. The AWS Support API currently supports English ("en") and Japanese ("ja"). The response contains a TrustedAdvisorCheckDescription object for each check. You must set the AWS Region to us-east-1.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""
DescribeTrustedAdvisorChecks(args) = support("DescribeTrustedAdvisorChecks", args)

"""
    RefreshTrustedAdvisorCheck()

Refreshes the AWS Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation.  Some checks are refreshed automatically. If you call the RefreshTrustedAdvisorCheck operation to refresh them, you might see the InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "checkId": "The unique identifier for the Trusted Advisor check to refresh. Note: Specifying the check ID of a check that is automatically refreshed causes an InvalidParameterValue error."
}
"""
RefreshTrustedAdvisorCheck(args) = support("RefreshTrustedAdvisorCheck", args)

"""
    DescribeServices()

Returns the current list of AWS services and a list of service categories for each service. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories. The service codes and category codes correspond to the values that appear in the Service and Category lists on the AWS Support Center Create Case page. The values in those fields don't necessarily match the service codes and categories returned by the DescribeServices operation. Always use the service codes and categories that the DescribeServices operation returns, so that you have the most recent set of service and category codes.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Optional Parameters
{
  "serviceCodeList": "A JSON-formatted list of service codes available for AWS services.",
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""

DescribeServices() = support("DescribeServices")
DescribeServices(args) = support("DescribeServices", args)

"""
    AddCommunicationToCase()

Adds additional customer communication to an AWS Support case. Use the caseId parameter to identify the case to which to add communication. You can list a set of email addresses to copy on the communication by using the ccEmailAddresses parameter. The communicationBody value contains the text of the communication.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "communicationBody": "The body of an email communication to add to the support case."
}

Optional Parameters
{
  "caseId": "The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 ",
  "ccEmailAddresses": "The email addresses in the CC line of an email to be added to the support case.",
  "attachmentSetId": "The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling AddAttachmentsToSet "
}
"""
AddCommunicationToCase(args) = support("AddCommunicationToCase", args)

"""
    DescribeAttachment()

Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "attachmentId": "The ID of the attachment to return. Attachment IDs are returned by the DescribeCommunications operation."
}
"""
DescribeAttachment(args) = support("DescribeAttachment", args)

"""
    DescribeTrustedAdvisorCheckRefreshStatuses()

Returns the refresh status of the AWS Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. Some checks are refreshed automatically, and you can't return their refresh statuses by using the DescribeTrustedAdvisorCheckRefreshStatuses operation. If you call this operation for these checks, you might see an InvalidParameterValue error.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   

Required Parameters
{
  "checkIds": "The IDs of the Trusted Advisor checks to get the status of.   If you specify the check ID of a check that is automatically refreshed, you might see an InvalidParameterValue error. "
}
"""
DescribeTrustedAdvisorCheckRefreshStatuses(args) = support("DescribeTrustedAdvisorCheckRefreshStatuses", args)
