include("../AWSCorePrototypeServices.jl")
using .Services: macie2

"""
    EnableMacie()

Enables Amazon Macie and specifies the configuration settings for a Macie account.

Optional Parameters
{
  "findingPublishingFrequency": "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).",
  "status": "Specifies the status for the account. To enable Amazon Macie and start all Amazon Macie activities for the account, set this value to ENABLED.",
  "clientToken": "A unique, case-sensitive token that you provide to ensure the idempotency of the request."
}
"""

EnableMacie() = macie2("POST", "/macie")
EnableMacie(args) = macie2("POST", "/macie", args)

"""
    DisableOrganizationAdminAccount()

Disables an account as a delegated administrator of Amazon Macie for an AWS organization.

Required Parameters
{
  "adminAccountId": "The AWS account ID of the delegated administrator account."
}
"""
DisableOrganizationAdminAccount(args) = macie2("DELETE", "/admin", args)

"""
    ListOrganizationAdminAccounts()

Retrieves information about the account that's designated as the delegated administrator of Amazon Macie for an AWS organization.

Optional Parameters
{
  "maxResults": "The maximum number of items to include in each page of a paginated response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListOrganizationAdminAccounts() = macie2("GET", "/admin")
ListOrganizationAdminAccounts(args) = macie2("GET", "/admin", args)

"""
    GetMember()

Retrieves information about a member account that's associated with an Amazon Macie master account.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
GetMember(args) = macie2("GET", "/members/{id}", args)

"""
    UpdateClassificationJob()

Cancels a classification job.

Required Parameters
{
  "jobId": "The unique identifier for the classification job.",
  "jobStatus": "The status to change the job's status to. The only supported value is CANCELLED, which cancels the job completely."
}
"""
UpdateClassificationJob(args) = macie2("PATCH", "/jobs/{jobId}", args)

"""
    GetInvitationsCount()

Retrieves the count of Amazon Macie membership invitations that were received by an account.
"""

GetInvitationsCount() = macie2("GET", "/invitations/count")
GetInvitationsCount(args) = macie2("GET", "/invitations/count", args)

"""
    GetMacieSession()

Retrieves information about the current status and configuration settings for an Amazon Macie account.
"""

GetMacieSession() = macie2("GET", "/macie")
GetMacieSession(args) = macie2("GET", "/macie", args)

"""
    TagResource()

Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.",
  "tags": "A map of key-value pairs that specifies the tags to associate with the resource. A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
}
"""
TagResource(args) = macie2("POST", "/tags/{resourceArn}", args)

"""
    GetFindingsFilter()

Retrieves information about the criteria and other settings for a findings filter.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
GetFindingsFilter(args) = macie2("GET", "/findingsfilters/{id}", args)

"""
    BatchGetCustomDataIdentifiers()

Retrieves information about one or more custom data identifiers.

Optional Parameters
{
  "ids": "An array of strings that lists the unique identifiers for the custom data identifiers to retrieve information about."
}
"""

BatchGetCustomDataIdentifiers() = macie2("POST", "/custom-data-identifiers/get")
BatchGetCustomDataIdentifiers(args) = macie2("POST", "/custom-data-identifiers/get", args)

"""
    UpdateMacieSession()

Suspends or re-enables an Amazon Macie account, or updates the configuration settings for a Macie account.

Optional Parameters
{
  "findingPublishingFrequency": "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).",
  "status": "Specifies whether to change the status of the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account."
}
"""

UpdateMacieSession() = macie2("PATCH", "/macie")
UpdateMacieSession(args) = macie2("PATCH", "/macie", args)

"""
    ListFindings()

 Retrieves a subset of information about one or more findings.

Optional Parameters
{
  "sortCriteria": "The criteria to use to sort the results.",
  "maxResults": "The maximum number of items to include in each page of the response.",
  "findingCriteria": "The criteria to use to filter the results.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListFindings() = macie2("POST", "/findings")
ListFindings(args) = macie2("POST", "/findings", args)

"""
    ListInvitations()

Retrieves information about all the Amazon Macie membership invitations that were received by an account.

Optional Parameters
{
  "maxResults": "The maximum number of items to include in each page of a paginated response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListInvitations() = macie2("GET", "/invitations")
ListInvitations(args) = macie2("GET", "/invitations", args)

"""
    ListCustomDataIdentifiers()

Retrieves a subset of information about all the custom data identifiers for an account.

Optional Parameters
{
  "maxResults": "The maximum number of items to include in each page of the response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListCustomDataIdentifiers() = macie2("POST", "/custom-data-identifiers/list")
ListCustomDataIdentifiers(args) = macie2("POST", "/custom-data-identifiers/list", args)

"""
    UntagResource()

Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.",
  "tagKeys": "The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;)."
}
"""
UntagResource(args) = macie2("DELETE", "/tags/{resourceArn}", args)

"""
    ListMembers()

Retrieves information about the accounts that are associated with an Amazon Macie master account.

Optional Parameters
{
  "maxResults": "The maximum number of items to include in each page of a paginated response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response.",
  "onlyAssociated": "Specifies which accounts to include in the response, based on the status of an account's relationship with the master account. By default, the response includes only current member accounts. To include all accounts, set the value for this parameter to false."
}
"""

ListMembers() = macie2("GET", "/members")
ListMembers(args) = macie2("GET", "/members", args)

"""
    DeleteInvitations()

Deletes Amazon Macie membership invitations that were received from specific accounts.

Required Parameters
{
  "accountIds": "An array that lists AWS account IDs, one for each account that sent an invitation to delete."
}
"""
DeleteInvitations(args) = macie2("POST", "/invitations/delete", args)

"""
    GetMasterAccount()

Retrieves information about the Amazon Macie master account for an account.
"""

GetMasterAccount() = macie2("GET", "/master")
GetMasterAccount(args) = macie2("GET", "/master", args)

"""
    DeleteFindingsFilter()

Deletes a findings filter.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
DeleteFindingsFilter(args) = macie2("DELETE", "/findingsfilters/{id}", args)

"""
    CreateSampleFindings()

 Creates sample findings.

Optional Parameters
{
  "findingTypes": "An array that lists one or more types of findings to include in the set of sample findings. Currently, the only supported value is Policy:IAMUser/S3BucketEncryptionDisabled. "
}
"""

CreateSampleFindings() = macie2("POST", "/findings/sample")
CreateSampleFindings(args) = macie2("POST", "/findings/sample", args)

"""
    DeleteMember()

Deletes the association between an Amazon Macie master account and an account.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
DeleteMember(args) = macie2("DELETE", "/members/{id}", args)

"""
    DescribeOrganizationConfiguration()

Retrieves information about the Amazon Macie configuration settings for an AWS organization.
"""

DescribeOrganizationConfiguration() = macie2("GET", "/admin/configuration")
DescribeOrganizationConfiguration(args) = macie2("GET", "/admin/configuration", args)

"""
    GetBucketStatistics()

 Retrieves (queries) aggregated statistical data for all the S3 buckets that Amazon Macie monitors and analyzes.

Optional Parameters
{
  "accountId": "The unique identifier for the AWS account."
}
"""

GetBucketStatistics() = macie2("POST", "/datasources/s3/statistics")
GetBucketStatistics(args) = macie2("POST", "/datasources/s3/statistics", args)

"""
    CreateClassificationJob()

 Creates and defines the settings for a classification job.

Required Parameters
{
  "name": "A custom name for the job. The name can contain as many as 500 characters.",
  "clientToken": "A unique, case-sensitive token that you provide to ensure the idempotency of the request.",
  "s3JobDefinition": "The S3 buckets that contain the objects to analyze, and the scope of that analysis.",
  "jobType": "The schedule for running the job. Valid values are: ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property. SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to define the recurrence pattern for the job."
}

Optional Parameters
{
  "samplingPercentage": "The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.",
  "initialRun": "Specifies whether to run the job immediately, after it's created.",
  "customDataIdentifierIds": "The custom data identifiers to use for data analysis and classification.",
  "tags": "A map of key-value pairs that specifies the tags to associate with the job. A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.",
  "description": "A custom description of the job. The description can contain as many as 200 characters.",
  "scheduleFrequency": "The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value of the jobType property to ONE_TIME."
}
"""
CreateClassificationJob(args) = macie2("POST", "/jobs", args)

"""
    ListTagsForResource()

Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account."
}
"""
ListTagsForResource(args) = macie2("GET", "/tags/{resourceArn}", args)

"""
    GetUsageStatistics()

Retrieves (queries) quotas and aggregated usage data for one or more accounts.

Optional Parameters
{
  "sortBy": "The criteria to use to sort the query results.",
  "maxResults": "The maximum number of items to include in each page of the response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response.",
  "filterBy": "An array of objects, one for each condition to use to filter the query results. If the array contains more than one object, Amazon Macie uses an AND operator to join the conditions specified by the objects."
}
"""

GetUsageStatistics() = macie2("POST", "/usage/statistics")
GetUsageStatistics(args) = macie2("POST", "/usage/statistics", args)

"""
    CreateCustomDataIdentifier()

Creates and defines the criteria and other settings for a custom data identifier.

Optional Parameters
{
  "name": "A custom name for the custom data identifier. The name can contain as many as 128 characters. We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see the identifier's name, depending on the actions that they're allowed to perform in Amazon Macie.",
  "regex": "The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.",
  "clientToken": "A unique, case-sensitive token that you provide to ensure the idempotency of the request.",
  "maximumMatchDistance": "The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.",
  "ignoreWords": "An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.",
  "keywords": "An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 4 - 90 characters. Keywords aren't case sensitive.",
  "tags": "A map of key-value pairs that specifies the tags to associate with the custom data identifier. A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.",
  "description": "A custom description of the custom data identifier. The description can contain as many as 512 characters. We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see the identifier's description, depending on the actions that they're allowed to perform in Amazon Macie."
}
"""

CreateCustomDataIdentifier() = macie2("POST", "/custom-data-identifiers")
CreateCustomDataIdentifier(args) = macie2("POST", "/custom-data-identifiers", args)

"""
    DescribeBuckets()

 Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.

Optional Parameters
{
  "criteria": "The criteria to use to filter the query results.",
  "sortCriteria": "The criteria to use to sort the query results.",
  "maxResults": "The maximum number of items to include in each page of the response. The default value is 50.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

DescribeBuckets() = macie2("POST", "/datasources/s3")
DescribeBuckets(args) = macie2("POST", "/datasources/s3", args)

"""
    CreateMember()

 Associates an account with an Amazon Macie master account.

Required Parameters
{
  "account": "The details for the account to associate with the master account."
}

Optional Parameters
{
  "tags": "A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie. An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
}
"""
CreateMember(args) = macie2("POST", "/members", args)

"""
    UpdateFindingsFilter()

Updates the criteria and other settings for a findings filter.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}

Optional Parameters
{
  "name": "A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.",
  "action": "The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.",
  "findingCriteria": "The criteria to use to filter findings.",
  "position": "The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.",
  "description": "A custom description of the filter. The description can contain as many as 512 characters. We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie."
}
"""
UpdateFindingsFilter(args) = macie2("PATCH", "/findingsfilters/{id}", args)

"""
    CreateFindingsFilter()

Creates and defines the criteria and other settings for a findings filter.

Required Parameters
{
  "name": "A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.",
  "action": "The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.",
  "findingCriteria": "The criteria to use to filter findings."
}

Optional Parameters
{
  "clientToken": "A unique, case-sensitive token that you provide to ensure the idempotency of the request.",
  "position": "The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.",
  "tags": "A map of key-value pairs that specifies the tags to associate with the filter. A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.",
  "description": "A custom description of the filter. The description can contain as many as 512 characters. We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie."
}
"""
CreateFindingsFilter(args) = macie2("POST", "/findingsfilters", args)

"""
    AcceptInvitation()

Accepts an Amazon Macie membership invitation that was received from a specific account.

Required Parameters
{
  "masterAccount": "The AWS account ID for the account that sent the invitation.",
  "invitationId": "The unique identifier for the invitation to accept."
}
"""
AcceptInvitation(args) = macie2("POST", "/invitations/accept", args)

"""
    DisassociateFromMasterAccount()

Disassociates a member account from its Amazon Macie master account.
"""

DisassociateFromMasterAccount() = macie2("POST", "/master/disassociate")
DisassociateFromMasterAccount(args) = macie2("POST", "/master/disassociate", args)

"""
    DisassociateMember()

Disassociates an Amazon Macie master account from a member account.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
DisassociateMember(args) = macie2("POST", "/members/disassociate/{id}", args)

"""
    GetFindings()

Retrieves information about one or more findings.

Required Parameters
{
  "findingIds": "An array of strings that lists the unique identifiers for the findings to retrieve information about."
}

Optional Parameters
{
  "sortCriteria": "The criteria for sorting the results of the request."
}
"""
GetFindings(args) = macie2("POST", "/findings/describe", args)

"""
    UpdateMemberSession()

 Enables an Amazon Macie master account to suspend or re-enable a member account.

Required Parameters
{
  "status": "Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.",
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
UpdateMemberSession(args) = macie2("PATCH", "/macie/members/{id}", args)

"""
    ListFindingsFilters()

Retrieves a subset of information about all the findings filters for an account.

Optional Parameters
{
  "maxResults": "The maximum number of items to include in each page of a paginated response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListFindingsFilters() = macie2("GET", "/findingsfilters")
ListFindingsFilters(args) = macie2("GET", "/findingsfilters", args)

"""
    GetClassificationExportConfiguration()

Retrieves the configuration settings for storing data classification results.
"""

GetClassificationExportConfiguration() = macie2("GET", "/classification-export-configuration")
GetClassificationExportConfiguration(args) = macie2("GET", "/classification-export-configuration", args)

"""
    GetFindingStatistics()

 Retrieves (queries) aggregated statistical data about findings.

Required Parameters
{
  "groupBy": "The finding property to use to group the query results. Valid values are: classificationDetails.jobId - The unique identifier for the classification job that produced the finding. resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to. severity.description - The severity of the finding, such as High or Medium. type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal."
}

Optional Parameters
{
  "sortCriteria": "The criteria to use to sort the query results.",
  "findingCriteria": "The criteria to use to filter the query results.",
  "size": "The maximum number of items to include in each page of the response."
}
"""
GetFindingStatistics(args) = macie2("POST", "/findings/statistics", args)

"""
    EnableOrganizationAdminAccount()

Enables an account as a delegated administrator of Amazon Macie for an AWS organization.

Required Parameters
{
  "adminAccountId": "The AWS account ID for the account."
}

Optional Parameters
{
  "clientToken": "A unique, case-sensitive token that you provide to ensure the idempotency of the request."
}
"""
EnableOrganizationAdminAccount(args) = macie2("POST", "/admin", args)

"""
    PutClassificationExportConfiguration()

Creates or updates the configuration settings for storing data classification results.

Required Parameters
{
  "configuration": "The location to store data classification results in, and the encryption settings to use when storing results in that location."
}
"""
PutClassificationExportConfiguration(args) = macie2("PUT", "/classification-export-configuration", args)

"""
    DeclineInvitations()

Declines Amazon Macie membership invitations that were received from specific accounts.

Required Parameters
{
  "accountIds": "An array that lists AWS account IDs, one for each account that sent an invitation to decline."
}
"""
DeclineInvitations(args) = macie2("POST", "/invitations/decline", args)

"""
    UpdateOrganizationConfiguration()

Updates Amazon Macie configuration settings for an AWS organization.

Required Parameters
{
  "autoEnable": "Specifies whether Amazon Macie is enabled automatically for each account, when the account is added to the AWS organization."
}
"""
UpdateOrganizationConfiguration(args) = macie2("PATCH", "/admin/configuration", args)

"""
    CreateInvitations()

 Sends an Amazon Macie membership invitation to one or more accounts.

Required Parameters
{
  "accountIds": "An array that lists AWS account IDs, one for each account to send the invitation to."
}

Optional Parameters
{
  "disableEmailNotification": "Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to true.",
  "message": "A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation."
}
"""
CreateInvitations(args) = macie2("POST", "/invitations", args)

"""
    DeleteCustomDataIdentifier()

Soft deletes a custom data identifier.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
DeleteCustomDataIdentifier(args) = macie2("DELETE", "/custom-data-identifiers/{id}", args)

"""
    GetCustomDataIdentifier()

Retrieves information about the criteria and other settings for a custom data identifier.

Required Parameters
{
  "id": "The unique identifier for the Amazon Macie resource or account that the request applies to."
}
"""
GetCustomDataIdentifier(args) = macie2("GET", "/custom-data-identifiers/{id}", args)

"""
    GetUsageTotals()

Retrieves (queries) aggregated usage data for an account.
"""

GetUsageTotals() = macie2("GET", "/usage")
GetUsageTotals(args) = macie2("GET", "/usage", args)

"""
    TestCustomDataIdentifier()

Tests a custom data identifier.

Required Parameters
{
  "regex": "The regular expression (regex) that defines the pattern to match. The expression can contain as many as 512 characters.",
  "sampleText": "The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters."
}

Optional Parameters
{
  "maximumMatchDistance": "The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.",
  "ignoreWords": "An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.",
  "keywords": "An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 4 - 90 characters. Keywords aren't case sensitive."
}
"""
TestCustomDataIdentifier(args) = macie2("POST", "/custom-data-identifiers/test", args)

"""
    ListClassificationJobs()

Retrieves a subset of information about one or more classification jobs.

Optional Parameters
{
  "sortCriteria": "The criteria to use to sort the results.",
  "filterCriteria": "The criteria to use to filter the results.",
  "maxResults": "The maximum number of items to include in each page of the response.",
  "nextToken": "The nextToken string that specifies which page of results to return in a paginated response."
}
"""

ListClassificationJobs() = macie2("POST", "/jobs/list")
ListClassificationJobs(args) = macie2("POST", "/jobs/list", args)

"""
    DescribeClassificationJob()

Retrieves information about the status and settings for a classification job.

Required Parameters
{
  "jobId": "The unique identifier for the classification job."
}
"""
DescribeClassificationJob(args) = macie2("GET", "/jobs/{jobId}", args)

"""
    DisableMacie()

Disables an Amazon Macie account and deletes Macie resources for the account.
"""

DisableMacie() = macie2("DELETE", "/macie")
DisableMacie(args) = macie2("DELETE", "/macie", args)