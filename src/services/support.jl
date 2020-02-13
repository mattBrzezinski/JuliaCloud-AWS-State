include("../AWSCorePrototypeServices.jl")
using .Services: support

"""
    ResolveCase()

Takes a caseId and returns the initial state of the case along with the state of the case after the call to ResolveCase completed.

Optional Parameters
{
  "caseId": "The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 "
}
"""
ResolveCase() = support("ResolveCase")
ResolveCase(args) = support("ResolveCase", args)

"""
    CreateCase()

Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center Create Case page. Its parameters require you to specify the following information:    issueType. The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."  Service limit increases are not supported by the Support API; you must submit service limit increase requests in Support Center. The caseId is not the displayId that appears in Support Center. You can use the DescribeCases API to get the displayId.     serviceCode. The code for an AWS service. You can get the possible serviceCode values by calling DescribeServices.    categoryCode. The category for the service defined for the serviceCode value. You also get the category code for a service by calling DescribeServices. Each AWS service defines its own set of category codes.    severityCode. A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You can get the possible severityCode values by calling DescribeSeverityLevels. For more information about the meaning of the codes, see SeverityLevel and Choosing a Severity.    subject. The Subject field on the AWS Support Center Create Case page.    communicationBody. The Description field on the AWS Support Center Create Case page.    attachmentSetId. The ID of a set of attachments that has been created by using AddAttachmentsToSet.    language. The human language in which AWS Support handles the case. English and Japanese are currently supported.    ccEmailAddresses. The AWS Support Center CC field on the Create Case page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an AWS SDK.     To add additional communication or attachments to an existing case, use AddCommunicationToCase.  A successful CreateCase request returns an AWS Support case number. Case numbers are used by the DescribeCases operation to retrieve existing AWS Support cases.

Required Parameters
{
  "communicationBody": "The communication body text when you create an AWS Support case by calling CreateCase.",
  "subject": "The title of the AWS Support case."
}

Optional Parameters
{
  "serviceCode": "The code for the AWS service returned by the call to DescribeServices.",
  "categoryCode": "The category of problem for the AWS Support case.",
  "ccEmailAddresses": "A list of email addresses that AWS Support copies on case correspondence.",
  "attachmentSetId": "The ID of a set of one or more attachments for the case. Create the set by using AddAttachmentsToSet.",
  "severityCode": "The code for the severity level returned by the call to DescribeSeverityLevels.  The availability of severity levels depends on the support plan for the account. ",
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.",
  "issueType": "The type of issue for the case. You can specify either \"customer-service\" or \"technical.\" If you do not indicate a value, the default is \"technical.\"  Service limit increases are not supported by the Support API; you must submit service limit increase requests in Support Center. "
}
"""
CreateCase(args) = support("CreateCase", args)

"""
    DescribeSeverityLevels()

Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type included in any CreateCase request.

Optional Parameters
{
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""
DescribeSeverityLevels() = support("DescribeSeverityLevels")
DescribeSeverityLevels(args) = support("DescribeSeverityLevels", args)

"""
    DescribeTrustedAdvisorCheckResult()

Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status. The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".    timestamp. The time of the last refresh of the check.    checkId. The unique identifier for the check.  

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

Adds one or more attachments to an attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists. An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the expiryTime returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.

Required Parameters
{
  "attachments": "One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment."
}

Optional Parameters
{
  "attachmentSetId": "The ID of the attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists."
}
"""
AddAttachmentsToSet(args) = support("AddAttachmentsToSet", args)

"""
    DescribeCases()

Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the afterTime and beforeTime request parameters. You can set values for the includeResolvedCases and includeCommunications request parameters to control how much information is returned. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.  

Optional Parameters
{
  "caseIdList": "A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.",
  "beforeTime": "The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "afterTime": "The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.",
  "includeCommunications": "Specifies whether communications should be included in the DescribeCases results. The default is true.",
  "maxResults": "The maximum number of results to return before paginating.",
  "includeResolvedCases": "Specifies whether resolved support cases should be included in the DescribeCases results. The default is false.",
  "displayId": "The ID displayed for a case in the AWS Support Center user interface.",
  "nextToken": "A resumption point for pagination.",
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""
DescribeCases() = support("DescribeCases")
DescribeCases(args) = support("DescribeCases", args)

"""
    DescribeTrustedAdvisorCheckSummaries()

Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains an array of TrustedAdvisorCheckSummary objects.

Required Parameters
{
  "checkIds": "The IDs of the Trusted Advisor checks."
}
"""
DescribeTrustedAdvisorCheckSummaries(args) = support("DescribeTrustedAdvisorCheckSummaries", args)

"""
    DescribeCommunications()

Returns communications (and attachments) for one or more support cases. You can use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a particular case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the result set. Set maxResults to the number of cases you want displayed on each page, and use nextToken to specify the resumption of pagination.

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

Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a TrustedAdvisorCheckDescription for each check. The region must be set to us-east-1.

Required Parameters
{
  "language": "The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them."
}
"""
DescribeTrustedAdvisorChecks(args) = support("DescribeTrustedAdvisorChecks", args)

"""
    RefreshTrustedAdvisorCheck()

Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the RefreshTrustedAdvisorCheck operation for these checks causes an InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object, which contains these fields:    status. The refresh status of the check:     none: The check is not refreshed or the non-success status exceeds the timeout    enqueued: The check refresh requests has entered the refresh queue    processing: The check refresh request is picked up by the rule processing engine    success: The check is successfully refreshed    abandoned: The check refresh has failed      millisUntilNextRefreshable. The amount of time, in milliseconds, until the check is eligible for refresh.    checkId. The unique identifier for the check.  

Required Parameters
{
  "checkId": "The unique identifier for the Trusted Advisor check to refresh. Note: Specifying the check ID of a check that is automatically refreshed causes an InvalidParameterValue error."
}
"""
RefreshTrustedAdvisorCheck(args) = support("RefreshTrustedAdvisorCheck", args)

"""
    DescribeServices()

Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories. The service codes and category codes correspond to the values that are displayed in the Service and Category drop-down lists on the AWS Support Center Create Case page. The values in those fields, however, do not necessarily match the service codes and categories returned by the DescribeServices request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.

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

Adds additional customer communication to an AWS Support case. You use the caseId value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the ccEmailAddresses value. The communicationBody value contains the text of the communication. The response indicates the success or failure of the request. This operation implements a subset of the features of the AWS Support Center.

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

Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.

Required Parameters
{
  "attachmentId": "The ID of the attachment to return. Attachment IDs are returned by the DescribeCommunications operation."
}
"""
DescribeAttachment(args) = support("DescribeAttachment", args)

"""
    DescribeTrustedAdvisorCheckRefreshStatuses()

Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the DescribeTrustedAdvisorCheckRefreshStatuses operation for these checks causes an InvalidParameterValue error. 

Required Parameters
{
  "checkIds": "The IDs of the Trusted Advisor checks to get the status of. Note: Specifying the check ID of a check that is automatically refreshed causes an InvalidParameterValue error."
}
"""
DescribeTrustedAdvisorCheckRefreshStatuses(args) = support("DescribeTrustedAdvisorCheckRefreshStatuses", args)
