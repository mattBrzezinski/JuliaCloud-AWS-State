include("../AWSCorePrototypeServices.jl")
using .Services: codeguru_reviewer

"""
    PutRecommendationFeedback()

 Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten. 

Required Parameters
{
  "Reactions": " List for storing reactions. Reactions are utf-8 text code for emojis. If you send an empty list it clears all your feedback. ",
  "CodeReviewArn": "The Amazon Resource Name (ARN) of the  CodeReview  object. ",
  "RecommendationId": " The recommendation ID that can be used to track the provided recommendations and then to collect the feedback. "
}
"""
PutRecommendationFeedback(args) = codeguru_reviewer("PUT", "/feedback", args)

"""
    ListRepositoryAssociations()

 Returns a list of  RepositoryAssociationSummary  objects that contain summary information about a repository association. You can filter the returned list by  ProviderType ,  Name ,  State , and  Owner . 

Optional Parameters
{
  "MaxResults": "The maximum number of repository association results returned by ListRepositoryAssociations in paginated output. When this parameter is used, ListRepositoryAssociations only returns maxResults results in a single page with a nextToken response element. The remaining results of the initial request can be seen by sending another ListRepositoryAssociations request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, ListRepositoryAssociations returns up to 100 results and a nextToken value if applicable. ",
  "Names": "List of repository names to use as a filter.",
  "NextToken": "The nextToken value returned from a previous paginated ListRepositoryAssociations request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.   Treat this token as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. ",
  "States": "List of repository association states to use as a filter. The valid repository association states are:    Associated: The repository association is complete.     Associating: CodeGuru Reviewer is:     Setting up pull request notifications. This is required for pull requests to trigger a CodeGuru Reviewer review.    If your repository ProviderType is GitHub or Bitbucket, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered.      Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository.       Failed: The repository failed to associate or disassociate.     Disassociating: CodeGuru Reviewer is removing the repository's pull request notifications and source code access.   ",
  "ProviderTypes": "List of provider types to use as a filter.",
  "Owners": "List of owners to use as a filter. For AWS CodeCommit, it is the name of the CodeCommit account that was used to associate the repository. For other repository source providers, such as Bitbucket, this is name of the account that was used to associate the repository. "
}
"""

ListRepositoryAssociations() = codeguru_reviewer("GET", "/associations")
ListRepositoryAssociations(args) = codeguru_reviewer("GET", "/associations", args)

"""
    ListRecommendations()

 Returns the list of all recommendations for a completed code review. 

Required Parameters
{
  "CodeReviewArn": "The Amazon Resource Name (ARN) of the  CodeReview  object. "
}

Optional Parameters
{
  "MaxResults": " The maximum number of results that are returned per call. The default is 100. ",
  "NextToken": " Pagination token. "
}
"""
ListRecommendations(args) = codeguru_reviewer("GET", "/codereviews/{CodeReviewArn}/Recommendations", args)

"""
    AssociateRepository()

 Use to associate an AWS CodeCommit repository or a repostory managed by AWS CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see Recommendations in Amazon CodeGuru Reviewer in the Amazon CodeGuru Reviewer User Guide.  If you associate a CodeCommit repository, it must be in the same AWS Region and AWS account where its CodeGuru Reviewer code reviews are configured.  Bitbucket and GitHub Enterprise Server repositories are managed by AWS CodeStar Connections to connect to CodeGuru Reviewer. For more information, see Connect to a repository source provider in the Amazon CodeGuru Reviewer User Guide.    You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see Getting started with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.  

Required Parameters
{
  "Repository": "The repository to associate."
}

Optional Parameters
{
  "ClientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. To add a new repository association, this parameter specifies a unique identifier for the new repository association that helps ensure idempotency. If you use the AWS CLI or one of the AWS SDKs to call this operation, you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, you must generate a ClientRequestToken yourself for new versions and include that value in the request. You typically interact with this value if you implement your own retry logic and want to ensure that a given repository association is not created twice. We recommend that you generate a UUID-type value to ensure uniqueness within the specified repository association. Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository associations if there are failures and retries. "
}
"""
AssociateRepository(args) = codeguru_reviewer("POST", "/associations", args)

"""
    ListCodeReviews()

 Lists all the code reviews that the customer has created in the past 90 days. 

Required Parameters
{
  "Type": " The type of code reviews to list in the response. "
}

Optional Parameters
{
  "MaxResults": " The maximum number of results that are returned per call. The default is 100. ",
  "NextToken": " If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. ",
  "States": " List of states for filtering that needs to be applied before displaying the result. For example, states=[Pending] lists code reviews in the Pending state.  The valid code review states are:    Completed: The code review is complete.     Pending: The code review started and has not completed or failed.     Failed: The code review failed.     Deleting: The code review is being deleted.   ",
  "ProviderTypes": " List of provider types for filtering that needs to be applied before displaying the result. For example, providerTypes=[GitHub] lists code reviews from GitHub. ",
  "RepositoryNames": " List of repository names for filtering that needs to be applied before displaying the result. "
}
"""
ListCodeReviews(args) = codeguru_reviewer("GET", "/codereviews", args)

"""
    DescribeCodeReview()

 Returns the metadata associated with the code review along with its status.

Required Parameters
{
  "CodeReviewArn": "The Amazon Resource Name (ARN) of the  CodeReview  object. "
}
"""
DescribeCodeReview(args) = codeguru_reviewer("GET", "/codereviews/{CodeReviewArn}", args)

"""
    DescribeRecommendationFeedback()

 Describes the customer feedback for a CodeGuru Reviewer recommendation. 

Required Parameters
{
  "CodeReviewArn": "The Amazon Resource Name (ARN) of the  CodeReview  object. ",
  "RecommendationId": " The recommendation ID that can be used to track the provided recommendations and then to collect the feedback. "
}

Optional Parameters
{
  "UserId": " Optional parameter to describe the feedback for a given user. If this is not supplied, it defaults to the user making the request.   The UserId is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see  Specifying a Principal in the AWS Identity and Access Management User Guide. "
}
"""
DescribeRecommendationFeedback(args) = codeguru_reviewer("GET", "/feedback/{CodeReviewArn}", args)

"""
    DisassociateRepository()

Removes the association between Amazon CodeGuru Reviewer and a repository.

Required Parameters
{
  "AssociationArn": "The Amazon Resource Name (ARN) of the  RepositoryAssociation  object. "
}
"""
DisassociateRepository(args) = codeguru_reviewer("DELETE", "/associations/{AssociationArn}", args)

"""
    ListRecommendationFeedback()

 Returns a list of  RecommendationFeedbackSummary  objects that contain customer recommendation feedback for all CodeGuru Reviewer users. 

Required Parameters
{
  "CodeReviewArn": "The Amazon Resource Name (ARN) of the  CodeReview  object. "
}

Optional Parameters
{
  "MaxResults": " The maximum number of results that are returned per call. The default is 100. ",
  "RecommendationIds": " Used to query the recommendation feedback for a given recommendation. ",
  "NextToken": " If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. ",
  "UserIds": " An AWS user's account ID or Amazon Resource Name (ARN). Use this ID to query the recommendation feedback for a code review from that user.   The UserId is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see  Specifying a Principal in the AWS Identity and Access Management User Guide. "
}
"""
ListRecommendationFeedback(args) = codeguru_reviewer("GET", "/feedback/{CodeReviewArn}/RecommendationFeedback", args)

"""
    DescribeRepositoryAssociation()

 Returns a  RepositoryAssociation  object that contains information about the requested repository association. 

Required Parameters
{
  "AssociationArn": "The Amazon Resource Name (ARN) of the  RepositoryAssociation  object. You can retrieve this ARN by calling ListRepositories."
}
"""
DescribeRepositoryAssociation(args) = codeguru_reviewer("GET", "/associations/{AssociationArn}", args)
