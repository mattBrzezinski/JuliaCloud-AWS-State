include("../AWSCorePrototypeServices.jl")
using .Services: mturk

"""
    ListReviewPolicyResultsForHIT()

 The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT. For information about how to specify Review Policies when you call CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both Assignment-level and HIT-level review results. 

Required Parameters
{
  "HITId": "The unique identifier of the HIT to retrieve review results for."
}

Optional Parameters
{
  "MaxResults": "Limit the number of results returned.",
  "NextToken": "Pagination token",
  "PolicyLevels": " The Policy Level(s) to retrieve review results for - HIT or Assignment. If omitted, the default behavior is to retrieve all data for both policy levels. For a list of all the described policies, see Review Policies. ",
  "RetrieveResults": " Specify if the operation should retrieve a list of the results computed by the Review Policies. ",
  "RetrieveActions": " Specify if the operation should retrieve a list of the actions taken executing the Review Policies and their outcomes. "
}
"""
ListReviewPolicyResultsForHIT(args) = mturk("ListReviewPolicyResultsForHIT", args)

"""
    DisassociateQualificationFromWorker()

 The DisassociateQualificationFromWorker revokes a previously granted Qualification from a user.   You can provide a text message explaining why the Qualification was revoked. The user who had the Qualification can see this message. 

Required Parameters
{
  "QualificationTypeId": "The ID of the Qualification type of the Qualification to be revoked.",
  "WorkerId": "The ID of the Worker who possesses the Qualification to be revoked."
}

Optional Parameters
{
  "Reason": "A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message."
}
"""
DisassociateQualificationFromWorker(args) = mturk("DisassociateQualificationFromWorker", args)

"""
    GetQualificationScore()

 The GetQualificationScore operation returns the value of a Worker's Qualification for a given Qualification type.   To get a Worker's Qualification, you must know the Worker's ID. The Worker's ID is included in the assignment data returned by the ListAssignmentsForHIT operation.  Only the owner of a Qualification type can query the value of a Worker's Qualification of that type.

Required Parameters
{
  "QualificationTypeId": "The ID of the QualificationType.",
  "WorkerId": "The ID of the Worker whose Qualification is being updated."
}
"""
GetQualificationScore(args) = mturk("GetQualificationScore", args)

"""
    ListReviewableHITs()

 The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation. 

Optional Parameters
{
  "MaxResults": " Limit the number of results returned. ",
  "NextToken": "Pagination Token",
  "Status": " Can be either Reviewable or Reviewing. Reviewable is the default value. ",
  "HITTypeId": " The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered "
}
"""

ListReviewableHITs() = mturk("ListReviewableHITs")
ListReviewableHITs(args) = mturk("ListReviewableHITs", args)

"""
    ListWorkersWithQualificationType()

 The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type. 

Required Parameters
{
  "QualificationTypeId": "The ID of the Qualification type of the Qualifications to return."
}

Optional Parameters
{
  "MaxResults": " Limit the number of results returned. ",
  "NextToken": "Pagination Token",
  "Status": " The status of the Qualifications to return. Can be Granted | Revoked. "
}
"""
ListWorkersWithQualificationType(args) = mturk("ListWorkersWithQualificationType", args)

"""
    CreateHITType()

 The CreateHITType operation creates a new HIT type. This operation allows you to define a standard set of HIT properties to use when creating HITs. If you register a HIT type with values that match an existing HIT type, the HIT type ID of the existing type will be returned. 

Required Parameters
{
  "Description": " A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. ",
  "AssignmentDurationInSeconds": " The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. ",
  "Reward": " The amount of money the Requester will pay a Worker for successfully completing the HIT. ",
  "Title": " The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. "
}

Optional Parameters
{
  "QualificationRequirements": " Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the ActionsGuarded field on each QualificationRequirement structure. ",
  "AutoApprovalDelayInSeconds": " The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. ",
  "Keywords": " One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. "
}
"""
CreateHITType(args) = mturk("CreateHITType", args)

"""
    CreateWorkerBlock()

The CreateWorkerBlock operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.

Required Parameters
{
  "Reason": "A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.",
  "WorkerId": "The ID of the Worker to block."
}
"""
CreateWorkerBlock(args) = mturk("CreateWorkerBlock", args)

"""
    DeleteQualificationType()

 The DeleteQualificationType deletes a Qualification type and deletes any HIT types that are associated with the Qualification type.  This operation does not revoke Qualifications already assigned to Workers because the Qualifications might be needed for active HITs. If there are any pending requests for the Qualification type, Amazon Mechanical Turk rejects those requests. After you delete a Qualification type, you can no longer use it to create HITs or HIT types.  DeleteQualificationType must wait for all the HITs that use the deleted Qualification type to be deleted before completing. It may take up to 48 hours before DeleteQualificationType completes and the unique name of the Qualification type is available for reuse with CreateQualificationType. 

Required Parameters
{
  "QualificationTypeId": "The ID of the QualificationType to dispose."
}
"""
DeleteQualificationType(args) = mturk("DeleteQualificationType", args)

"""
    GetAssignment()

 The GetAssignment operation retrieves the details of the specified Assignment. 

Required Parameters
{
  "AssignmentId": "The ID of the Assignment to be retrieved."
}
"""
GetAssignment(args) = mturk("GetAssignment", args)

"""
    ListAssignmentsForHIT()

 The ListAssignmentsForHIT operation retrieves completed assignments for a HIT. You can use this operation to retrieve the results for a HIT.   You can get assignments for a HIT at any time, even if the HIT is not yet Reviewable. If a HIT requested multiple assignments, and has received some results but has not yet become Reviewable, you can still retrieve the partial results with this operation.   Use the AssignmentStatus parameter to control which set of assignments for a HIT are returned. The ListAssignmentsForHIT operation can return submitted assignments awaiting approval, or it can return assignments that have already been approved or rejected. You can set AssignmentStatus=Approved,Rejected to get assignments that have already been approved and rejected together in one result set.   Only the Requester who created the HIT can retrieve the assignments for that HIT.   Results are sorted and divided into numbered pages and the operation returns a single page of results. You can use the parameters of the operation to control sorting and pagination. 

Required Parameters
{
  "HITId": "The ID of the HIT."
}

Optional Parameters
{
  "MaxResults": "",
  "NextToken": "Pagination token",
  "AssignmentStatuses": "The status of the assignments to return: Submitted | Approved | Rejected"
}
"""
ListAssignmentsForHIT(args) = mturk("ListAssignmentsForHIT", args)

"""
    ListQualificationRequests()

 The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type. The owner of the Qualification type calls this operation to poll for pending requests, and accepts them using the AcceptQualification operation. 

Optional Parameters
{
  "MaxResults": " The maximum number of results to return in a single call. ",
  "NextToken": "",
  "QualificationTypeId": "The ID of the QualificationType."
}
"""

ListQualificationRequests() = mturk("ListQualificationRequests")
ListQualificationRequests(args) = mturk("ListQualificationRequests", args)

"""
    GetHIT()

 The GetHIT operation retrieves the details of the specified HIT. 

Required Parameters
{
  "HITId": "The ID of the HIT to be retrieved."
}
"""
GetHIT(args) = mturk("GetHIT", args)

"""
    ListQualificationTypes()

 The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term. 

Required Parameters
{
  "MustBeRequestable": "Specifies that only Qualification types that a user can request through the Amazon Mechanical Turk web site, such as by taking a Qualification test, are returned as results of the search. Some Qualification types, such as those assigned automatically by the system, cannot be requested directly by users. If false, all Qualification types, including those managed by the system, are considered. Valid values are True | False. "
}

Optional Parameters
{
  "Query": " A text query against all of the searchable attributes of Qualification types. ",
  "MaxResults": " The maximum number of results to return in a single call. ",
  "NextToken": "",
  "MustBeOwnedByCaller": " Specifies that only Qualification types that the Requester created are returned. If false, the operation returns all Qualification types. "
}
"""
ListQualificationTypes(args) = mturk("ListQualificationTypes", args)

"""
    RejectAssignment()

 The RejectAssignment operation rejects the results of a completed assignment.   You can include an optional feedback message with the rejection, which the Worker can see in the Status section of the web site. When you include a feedback message with the rejection, it helps the Worker understand why the assignment was rejected, and can improve the quality of the results the Worker submits in the future.   Only the Requester who created the HIT can reject an assignment for the HIT. 

Required Parameters
{
  "RequesterFeedback": " A message for the Worker, which the Worker can see in the Status section of the web site. ",
  "AssignmentId": " The ID of the assignment. The assignment must correspond to a HIT created by the Requester. "
}
"""
RejectAssignment(args) = mturk("RejectAssignment", args)

"""
    AcceptQualificationRequest()

 The AcceptQualificationRequest operation approves a Worker's request for a Qualification.   Only the owner of the Qualification type can grant a Qualification request for that type.   A successful request for the AcceptQualificationRequest operation returns with no errors and an empty body. 

Required Parameters
{
  "QualificationRequestId": "The ID of the Qualification request, as returned by the GetQualificationRequests operation."
}

Optional Parameters
{
  "IntegerValue": " The value of the Qualification. You can omit this value if you are using the presence or absence of the Qualification as the basis for a HIT requirement. "
}
"""
AcceptQualificationRequest(args) = mturk("AcceptQualificationRequest", args)

"""
    CreateAdditionalAssignmentsForHIT()

 The CreateAdditionalAssignmentsForHIT operation increases the maximum number of assignments of an existing HIT.   To extend the maximum number of assignments, specify the number of additional assignments.    HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more assignments will result in an AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease exception.   HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an AWS.MechanicalTurk.HITTooOldForExtension exception.    

Required Parameters
{
  "NumberOfAdditionalAssignments": "The number of additional assignments to request for this HIT.",
  "HITId": "The ID of the HIT to extend."
}

Optional Parameters
{
  "UniqueRequestToken": " A unique identifier for this request, which allows you to retry the call on error without extending the HIT multiple times. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the extend HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID. "
}
"""
CreateAdditionalAssignmentsForHIT(args) = mturk("CreateAdditionalAssignmentsForHIT", args)

"""
    DeleteHIT()

 The DeleteHIT operation is used to delete HIT that is no longer needed. Only the Requester who created the HIT can delete it.   You can only dispose of HITs that are in the Reviewable state, with all of their submitted assignments already either approved or rejected. If you call the DeleteHIT operation on a HIT that is not in the Reviewable state (for example, that has not expired, or still has active assignments), or on a HIT that is Reviewable but without all of its submitted assignments already approved or rejected, the service will return an error.      HITs are automatically disposed of after 120 days.     After you dispose of a HIT, you can no longer approve the HIT's rejected assignments.     Disposed HITs are not returned in results for the ListHITs operation.     Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs.    

Required Parameters
{
  "HITId": "The ID of the HIT to be deleted."
}
"""
DeleteHIT(args) = mturk("DeleteHIT", args)

"""
    SendBonus()

 The SendBonus operation issues a payment of money from your account to a Worker. This payment happens separately from the reward you pay to the Worker when you approve the Worker's assignment. The SendBonus operation requires the Worker's ID and the assignment ID as parameters to initiate payment of the bonus. You must include a message that explains the reason for the bonus payment, as the Worker may not be expecting the payment. Amazon Mechanical Turk collects a fee for bonus payments, similar to the HIT listing fee. This operation fails if your account does not have enough funds to pay for both the bonus and the fees. 

Required Parameters
{
  "Reason": "A message that explains the reason for the bonus payment. The Worker receiving the bonus can see this message.",
  "BonusAmount": " The Bonus amount is a US Dollar amount specified using a string (for example, \"5\" represents  5.00 USD and \"101.42\" represents  101.42 USD). Do not include currency symbols or currency codes. ",
  "AssignmentId": "The ID of the assignment for which this bonus is paid.",
  "WorkerId": "The ID of the Worker being paid the bonus."
}

Optional Parameters
{
  "UniqueRequestToken": "A unique identifier for this request, which allows you to retry the call on error without granting multiple bonuses. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the bonus already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return an error with a message containing the request ID."
}
"""
SendBonus(args) = mturk("SendBonus", args)

"""
    SendTestEventNotification()

 The SendTestEventNotification operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification. This allows you to test notifications without setting up notifications for a real HIT type and trying to trigger them using the website. When you call this operation, the service attempts to send the test notification immediately. 

Required Parameters
{
  "Notification": " The notification specification to test. This value is identical to the value you would provide to the UpdateNotificationSettings operation when you establish the notification specification for a HIT type. ",
  "TestEventType": " The event to simulate to test the notification specification. This event is included in the test message even if the notification specification does not include the event type. The notification specification does not filter out the test event. "
}
"""
SendTestEventNotification(args) = mturk("SendTestEventNotification", args)

"""
    DeleteWorkerBlock()

The DeleteWorkerBlock operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.

Required Parameters
{
  "WorkerId": "The ID of the Worker to unblock."
}

Optional Parameters
{
  "Reason": "A message that explains the reason for unblocking the Worker. The Worker does not see this message."
}
"""
DeleteWorkerBlock(args) = mturk("DeleteWorkerBlock", args)

"""
    UpdateNotificationSettings()

 The UpdateNotificationSettings operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to UpdateNotificationSettings. 

Required Parameters
{
  "HITTypeId": " The ID of the HIT type whose notification specification is being updated. "
}

Optional Parameters
{
  "Active": " Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed. ",
  "Notification": " The notification specification for the HIT type. "
}
"""
UpdateNotificationSettings(args) = mturk("UpdateNotificationSettings", args)

"""
    GetFileUploadURL()

 The GetFileUploadURL operation generates and returns a temporary URL. You use the temporary URL to retrieve a file uploaded by a Worker as an answer to a FileUploadAnswer question for a HIT. The temporary URL is generated the instant the GetFileUploadURL operation is called, and is valid for 60 seconds. You can get a temporary file upload URL any time until the HIT is disposed. After the HIT is disposed, any uploaded files are deleted, and cannot be retrieved. Pending Deprecation on December 12, 2017. The Answer Specification structure will no longer support the FileUploadAnswer element to be used for the QuestionForm data structure. Instead, we recommend that Requesters who want to create HITs asking Workers to upload files to use Amazon S3. 

Required Parameters
{
  "QuestionIdentifier": "The identifier of the question with a FileUploadAnswer, as specified in the QuestionForm of the HIT.",
  "AssignmentId": "The ID of the assignment that contains the question with a FileUploadAnswer."
}
"""
GetFileUploadURL(args) = mturk("GetFileUploadURL", args)

"""
    GetAccountBalance()

The GetAccountBalance operation retrieves the amount of money in your Amazon Mechanical Turk account.
"""

GetAccountBalance() = mturk("GetAccountBalance")
GetAccountBalance(args) = mturk("GetAccountBalance", args)

"""
    GetQualificationType()

 The GetQualificationTypeoperation retrieves information about a Qualification type using its ID. 

Required Parameters
{
  "QualificationTypeId": "The ID of the QualificationType."
}
"""
GetQualificationType(args) = mturk("GetQualificationType", args)

"""
    ListHITsForQualificationType()

 The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement. The operation returns HITs of any status, except for HITs that have been deleted with the DeleteHIT operation or that have been auto-deleted. 

Required Parameters
{
  "QualificationTypeId": " The ID of the Qualification type to use when querying HITs. "
}

Optional Parameters
{
  "MaxResults": " Limit the number of results returned. ",
  "NextToken": "Pagination Token"
}
"""
ListHITsForQualificationType(args) = mturk("ListHITsForQualificationType", args)

"""
    UpdateHITReviewStatus()

 The UpdateHITReviewStatus operation updates the status of a HIT. If the status is Reviewable, this operation can update the status to Reviewing, or it can revert a Reviewing HIT back to the Reviewable status. 

Required Parameters
{
  "HITId": " The ID of the HIT to update. "
}

Optional Parameters
{
  "Revert": " Specifies how to update the HIT status. Default is False.     Setting this to false will only transition a HIT from Reviewable to Reviewing     Setting this to true will only transition a HIT from Reviewing to Reviewable   "
}
"""
UpdateHITReviewStatus(args) = mturk("UpdateHITReviewStatus", args)

"""
    CreateHITWithHITType()

 The CreateHITWithHITType operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the CreateHITType operation.   This is an alternative way to create HITs from the CreateHIT operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.  CreateHITWithHITType also supports several ways to provide question data: by providing a value for the Question parameter that fully specifies the contents of the HIT, or by providing a HitLayoutId and associated HitLayoutParameters.    If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see Amazon Mechanical Turk Pricing.  

Required Parameters
{
  "LifetimeInSeconds": " An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. ",
  "HITTypeId": "The HIT type ID you want to create this HIT with."
}

Optional Parameters
{
  "RequesterAnnotation": " An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.   The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.   The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. ",
  "UniqueRequestToken": " A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.    Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs.  ",
  "AssignmentReviewPolicy": " The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. ",
  "HITReviewPolicy": " The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. ",
  "MaxAssignments": " The number of times the HIT can be accepted and completed before the HIT becomes unavailable. ",
  "Question": " The data the person completing the HIT uses to produce the results.   Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.  Either a Question parameter or a HITLayoutId parameter must be provided.",
  "HITLayoutParameters": " If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. ",
  "HITLayoutId": " The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.   Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. "
}
"""
CreateHITWithHITType(args) = mturk("CreateHITWithHITType", args)

"""
    UpdateHITTypeOfHIT()

 The UpdateHITTypeOfHIT operation allows you to change the HITType properties of a HIT. This operation disassociates the HIT from its old HITType properties and associates it with the new HITType properties. The HIT takes on the properties of the new HITType in place of the old ones. 

Required Parameters
{
  "HITTypeId": "The ID of the new HIT type.",
  "HITId": "The HIT to update."
}
"""
UpdateHITTypeOfHIT(args) = mturk("UpdateHITTypeOfHIT", args)

"""
    ListBonusPayments()

 The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment. 

Optional Parameters
{
  "MaxResults": "",
  "NextToken": "Pagination token",
  "AssignmentId": "The ID of the assignment associated with the bonus payments to retrieve. If specified, only bonus payments for the given assignment are returned. Either the HITId parameter or the AssignmentId parameter must be specified",
  "HITId": "The ID of the HIT associated with the bonus payments to retrieve. If not specified, all bonus payments for all assignments for the given HIT are returned. Either the HITId parameter or the AssignmentId parameter must be specified"
}
"""

ListBonusPayments() = mturk("ListBonusPayments")
ListBonusPayments(args) = mturk("ListBonusPayments", args)

"""
    CreateQualificationType()

 The CreateQualificationType operation creates a new Qualification type, which is represented by a QualificationType data structure. 

Required Parameters
{
  "Description": "A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.",
  "Name": " The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.",
  "QualificationTypeStatus": "The initial status of the Qualification type. Constraints: Valid values are: Active | Inactive"
}

Optional Parameters
{
  "RetryDelayInSeconds": "The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request. Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.",
  "TestDurationInSeconds": "The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.",
  "Test": " The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, TestDurationInSeconds must also be specified.  Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true. Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.",
  "AnswerKey": "The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure. Constraints: Must not be longer than 65535 bytes. Constraints: None. If not specified, you must process Qualification requests manually.",
  "AutoGrantedValue": "The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.",
  "Keywords": "One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.",
  "AutoGranted": "Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Constraints: If the Test parameter is specified, this parameter cannot be true."
}
"""
CreateQualificationType(args) = mturk("CreateQualificationType", args)

"""
    CreateHIT()

The CreateHIT operation creates a new Human Intelligence Task (HIT). The new HIT is made available for Workers to find and accept on the Amazon Mechanical Turk website.   This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to CreateHIT, a new HIT is created for you, with a new HITTypeID. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.  An alternative way to create HITs is to first generate a HITTypeID using the CreateHITType operation and then call the CreateHITWithHITType operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.  CreateHIT also supports several ways to provide question data: by providing a value for the Question parameter that fully specifies the contents of the HIT, or by providing a HitLayoutId and associated HitLayoutParameters.    If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see Amazon Mechanical Turk Pricing. 

Required Parameters
{
  "Description": " A general description of the HIT. A description includes detailed information about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded view of search results, and in the HIT and assignment screens. A good description gives the user enough information to evaluate the HIT before accepting it. ",
  "LifetimeInSeconds": " An amount of time, in seconds, after which the HIT is no longer available for users to accept. After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches, even if not all of the assignments for the HIT have been accepted. ",
  "AssignmentDurationInSeconds": " The amount of time, in seconds, that a Worker has to complete the HIT after accepting it. If a Worker does not complete the assignment within the specified duration, the assignment is considered abandoned. If the HIT is still active (that is, its lifetime has not elapsed), the assignment becomes available for other users to find and accept. ",
  "Reward": " The amount of money the Requester will pay a Worker for successfully completing the HIT. ",
  "Title": " The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains. On the Amazon Mechanical Turk web site, the HIT title appears in search results, and everywhere the HIT is mentioned. "
}

Optional Parameters
{
  "Question": " The data the person completing the HIT uses to produce the results.   Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure, or an HTMLQuestion data structure. The XML question data must not be larger than 64 kilobytes (65,535 bytes) in size, including whitespace.  Either a Question parameter or a HITLayoutId parameter must be provided.",
  "Keywords": " One or more words or phrases that describe the HIT, separated by commas. These words are used in searches to find HITs. ",
  "AssignmentReviewPolicy": " The Assignment-level Review Policy applies to the assignments under the HIT. You can specify for Mechanical Turk to take various actions based on the policy. ",
  "HITReviewPolicy": " The HIT-level Review Policy applies to the HIT. You can specify for Mechanical Turk to take various actions based on the policy. ",
  "RequesterAnnotation": " An arbitrary data field. The RequesterAnnotation parameter lets your application attach arbitrary data to the HIT for tracking purposes. For example, this parameter could be an identifier internal to the Requester's application that corresponds with the HIT.   The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT. It is not shown to the Worker, or any other Requester.   The RequesterAnnotation parameter may be different for each HIT you submit. It does not affect how your HITs are grouped. ",
  "HITLayoutParameters": " If the HITLayoutId is provided, any placeholder values must be filled in with values using the HITLayoutParameter structure. For more information, see HITLayout. ",
  "MaxAssignments": " The number of times the HIT can be accepted and completed before the HIT becomes unavailable. ",
  "AutoApprovalDelayInSeconds": " The number of seconds after an assignment for the HIT has been submitted, after which the assignment is considered Approved automatically unless the Requester explicitly rejects it. ",
  "QualificationRequirements": " Conditions that a Worker's Qualifications must meet in order to accept the HIT. A HIT can have between zero and ten Qualification requirements. All requirements must be met in order for a Worker to accept the HIT. Additionally, other actions can be restricted using the ActionsGuarded field on each QualificationRequirement structure. ",
  "UniqueRequestToken": " A unique identifier for this request which allows you to retry the call on error without creating duplicate HITs. This is useful in cases such as network timeouts where it is unclear whether or not the call succeeded on the server. If the HIT already exists in the system from a previous call using the same UniqueRequestToken, subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error with a message containing the HITId.    Note: It is your responsibility to ensure uniqueness of the token. The unique token expires after 24 hours. Subsequent calls using the same UniqueRequestToken made after the 24 hour limit could create duplicate HITs.  ",
  "HITLayoutId": " The HITLayoutId allows you to use a pre-existing HIT design with placeholder values and create an additional HIT by providing those values as HITLayoutParameters.   Constraints: Either a Question parameter or a HITLayoutId parameter must be provided. "
}
"""
CreateHIT(args) = mturk("CreateHIT", args)

"""
    UpdateQualificationType()

 The UpdateQualificationType operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure. Only the owner of a Qualification type can modify its attributes.   Most attributes of a Qualification type can be changed after the type has been created. However, the Name and Keywords fields cannot be modified. The RetryDelayInSeconds parameter can be modified or added to change the delay or to enable retries, but RetryDelayInSeconds cannot be used to disable retries.   You can use this operation to update the test for a Qualification type. The test is updated based on the values specified for the Test, TestDurationInSeconds and AnswerKey parameters. All three parameters specify the updated test. If you are updating the test for a type, you must specify the Test and TestDurationInSeconds parameters. The AnswerKey parameter is optional; omitting it specifies that the updated test does not have an answer key.   If you omit the Test parameter, the test for the Qualification type is unchanged. There is no way to remove a test from a Qualification type that has one. If the type already has a test, you cannot update it to be AutoGranted. If the Qualification type does not have a test and one is provided by an update, the type will henceforth have a test.   If you want to update the test duration or answer key for an existing test without changing the questions, you must specify a Test parameter with the original questions, along with the updated values.   If you provide an updated Test but no AnswerKey, the new test will not have an answer key. Requests for such Qualifications must be granted manually.   You can also update the AutoGranted and AutoGrantedValue attributes of the Qualification type.

Required Parameters
{
  "QualificationTypeId": "The ID of the Qualification type to update."
}

Optional Parameters
{
  "Description": "The new description of the Qualification type.",
  "TestDurationInSeconds": "The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.",
  "RetryDelayInSeconds": "The amount of time, in seconds, that Workers must wait after requesting a Qualification of the specified Qualification type before they can retry the Qualification request. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must dispose of the existing retry-enabled Qualification type using DisposeQualificationType and then create a new Qualification type with retries disabled using CreateQualificationType.",
  "Test": "The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, TestDurationInSeconds must also be specified. Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true. Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.",
  "AnswerKey": "The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.",
  "AutoGrantedValue": "The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.",
  "AutoGranted": "Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test. Constraints: If the Test parameter is specified, this parameter cannot be true.",
  "QualificationTypeStatus": "The new status of the Qualification type - Active | Inactive"
}
"""
UpdateQualificationType(args) = mturk("UpdateQualificationType", args)

"""
    ListWorkerBlocks()

The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs.

Optional Parameters
{
  "MaxResults": "",
  "NextToken": "Pagination token"
}
"""

ListWorkerBlocks() = mturk("ListWorkerBlocks")
ListWorkerBlocks(args) = mturk("ListWorkerBlocks", args)

"""
    AssociateQualificationWithWorker()

 The AssociateQualificationWithWorker operation gives a Worker a Qualification. AssociateQualificationWithWorker does not require that the Worker submit a Qualification request. It gives the Qualification directly to the Worker.   You can only assign a Qualification of a Qualification type that you created (using the CreateQualificationType operation).    Note: AssociateQualificationWithWorker does not affect any pending Qualification requests for the Qualification by the Worker. If you assign a Qualification to a Worker, then later grant a Qualification request made by the Worker, the granting of the request may modify the Qualification score. To resolve a pending Qualification request without affecting the Qualification the Worker already has, reject the request with the RejectQualificationRequest operation.  

Required Parameters
{
  "QualificationTypeId": "The ID of the Qualification type to use for the assigned Qualification.",
  "WorkerId": " The ID of the Worker to whom the Qualification is being assigned. Worker IDs are included with submitted HIT assignments and Qualification requests. "
}

Optional Parameters
{
  "IntegerValue": "The value of the Qualification to assign.",
  "SendNotification": " Specifies whether to send a notification email message to the Worker saying that the qualification was assigned to the Worker. Note: this is true by default. "
}
"""
AssociateQualificationWithWorker(args) = mturk("AssociateQualificationWithWorker", args)

"""
    NotifyWorkers()

 The NotifyWorkers operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker. 

Required Parameters
{
  "Subject": "The subject line of the email message to send. Can include up to 200 characters.",
  "MessageText": "The text of the email message to send. Can include up to 4,096 characters",
  "WorkerIds": "A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time."
}
"""
NotifyWorkers(args) = mturk("NotifyWorkers", args)

"""
    RejectQualificationRequest()

 The RejectQualificationRequest operation rejects a user's request for a Qualification.   You can provide a text message explaining why the request was rejected. The Worker who made the request can see this message.

Required Parameters
{
  "QualificationRequestId": " The ID of the Qualification request, as returned by the ListQualificationRequests operation. "
}

Optional Parameters
{
  "Reason": "A text message explaining why the request was rejected, to be shown to the Worker who made the request."
}
"""
RejectQualificationRequest(args) = mturk("RejectQualificationRequest", args)

"""
    UpdateExpirationForHIT()

 The UpdateExpirationForHIT operation allows you update the expiration time of a HIT. If you update it to a time in the past, the HIT will be immediately expired. 

Required Parameters
{
  "ExpireAt": " The date and time at which you want the HIT to expire ",
  "HITId": " The HIT to update. "
}
"""
UpdateExpirationForHIT(args) = mturk("UpdateExpirationForHIT", args)

"""
    ListHITs()

 The ListHITs operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted. 

Optional Parameters
{
  "MaxResults": "",
  "NextToken": "Pagination token"
}
"""

ListHITs() = mturk("ListHITs")
ListHITs(args) = mturk("ListHITs", args)

"""
    ApproveAssignment()

 The ApproveAssignment operation approves the results of a completed assignment.   Approving an assignment initiates two payments from the Requester's Amazon.com account     The Worker who submitted the results is paid the reward specified in the HIT.     Amazon Mechanical Turk fees are debited.     If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site.   You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted. 

Required Parameters
{
  "AssignmentId": " The ID of the assignment. The assignment must correspond to a HIT created by the Requester. "
}

Optional Parameters
{
  "RequesterFeedback": " A message for the Worker, which the Worker can see in the Status section of the web site. ",
  "OverrideRejection": " A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to False. "
}
"""
ApproveAssignment(args) = mturk("ApproveAssignment", args)