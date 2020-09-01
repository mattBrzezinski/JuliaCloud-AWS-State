include("../AWSCorePrototypeServices.jl")
using .Services: codecommit

"""
    BatchGetCommits()

Returns information about the contents of one or more commits in a repository.

Required Parameters
{
  "commitIds": "The full commit IDs of the commits to get information about.  You must supply the full SHA IDs of each commit. You cannot use shortened SHA IDs. ",
  "repositoryName": "The name of the repository that contains the commits."
}
"""
BatchGetCommits(args) = codecommit("BatchGetCommits", args)

"""
    CreateRepository()

Creates a new, empty repository.

Required Parameters
{
  "repositoryName": "The name of the new repository to be created.  The repository name must be unique across the calling AWS account. Repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For more information about the limits on repository names, see Limits in the AWS CodeCommit User Guide. The suffix .git is prohibited. "
}

Optional Parameters
{
  "repositoryDescription": "A comment or description about the new repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. ",
  "tags": "One or more tag key-value pairs to use when tagging this repository."
}
"""
CreateRepository(args) = codecommit("CreateRepository", args)

"""
    UpdateComment()

Replaces the contents of a comment.

Required Parameters
{
  "content": "The updated content to replace the existing content of the comment.",
  "commentId": "The system-generated ID of the comment you want to update. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest."
}
"""
UpdateComment(args) = codecommit("UpdateComment", args)

"""
    CreateCommit()

Creates a commit for a repository on the tip of a specified branch.

Required Parameters
{
  "repositoryName": "The name of the repository where you create the commit.",
  "branchName": "The name of the branch where you create the commit."
}

Optional Parameters
{
  "deleteFiles": "The files to delete in this commit. These files still exist in earlier commits.",
  "commitMessage": "The commit message you want to include in the commit. Commit messages are limited to 256 KB. If no message is specified, a default message is used.",
  "parentCommitId": "The ID of the commit that is the parent of the commit you create. Not required if this is an empty repository.",
  "setFileModes": "The file modes to update for files in this commit.",
  "putFiles": "The files to add or update in this commit.",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a ..gitkeep file is created for empty folders. The default is false.",
  "authorName": "The name of the author who created the commit. This information is used as both the author and committer for the commit.",
  "email": "The email address of the person who created the commit."
}
"""
CreateCommit(args) = codecommit("CreateCommit", args)

"""
    GetCommentsForPullRequest()

Returns comments made on a pull request.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions. 

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "afterCommitId": "The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.",
  "beforeCommitId": "The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.",
  "repositoryName": "The name of the repository that contains the pull request.",
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
GetCommentsForPullRequest(args) = codecommit("GetCommentsForPullRequest", args)

"""
    DescribePullRequestEvents()

Returns information about one or more pull request events.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "pullRequestEventType": "Optional. The pull request event type about which you want to return information.",
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results. The default is 100 events, which is also the maximum number of events that can be returned in a result.",
  "actorArn": "The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with more commits or changing the status of a pull request.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
DescribePullRequestEvents(args) = codecommit("DescribePullRequestEvents", args)

"""
    GetRepositoryTriggers()

Gets information about triggers configured for a repository.

Required Parameters
{
  "repositoryName": "The name of the repository for which the trigger is configured."
}
"""
GetRepositoryTriggers(args) = codecommit("GetRepositoryTriggers", args)

"""
    CreateBranch()

Creates a branch in a repository and points the branch to a commit.  Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation. 

Required Parameters
{
  "commitId": "The ID of the commit to point the new branch to.",
  "repositoryName": "The name of the repository in which you want to create the new branch.",
  "branchName": "The name of the new branch to create."
}
"""
CreateBranch(args) = codecommit("CreateBranch", args)

"""
    BatchGetRepositories()

Returns information about one or more repositories.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters
{
  "repositoryNames": "The names of the repositories to get information about.  The length constraint limit is for each string in the array. The array itself can be empty. "
}
"""
BatchGetRepositories(args) = codecommit("BatchGetRepositories", args)

"""
    MergePullRequestBySquash()

Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.

Required Parameters
{
  "repositoryName": "The name of the repository where the pull request was created.",
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "authorName": "The name of the author who created the commit. This information is used as both the author and committer for the commit.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.",
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "conflictResolution": "If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.",
  "sourceCommitId": "The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.",
  "commitMessage": "The commit message to include in the commit information for the merge.",
  "email": "The email address of the person merging the branches. This information is used in the commit information for the merge."
}
"""
MergePullRequestBySquash(args) = codecommit("MergePullRequestBySquash", args)

"""
    UpdatePullRequestTitle()

Replaces the title of a pull request.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests.",
  "title": "The updated title of the pull request. This replaces the existing title."
}
"""
UpdatePullRequestTitle(args) = codecommit("UpdatePullRequestTitle", args)

"""
    TagResource()

Adds or updates tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.",
  "tags": "The key-value pair to use when tagging this repository."
}
"""
TagResource(args) = codecommit("TagResource", args)

"""
    ListPullRequests()

Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.

Required Parameters
{
  "repositoryName": "The name of the repository for which you want to list pull requests."
}

Optional Parameters
{
  "authorArn": "Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.",
  "pullRequestStatus": "Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.",
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
ListPullRequests(args) = codecommit("ListPullRequests", args)

"""
    PostCommentReply()

Posts a comment in reply to an existing comment on a comparison between commits or a pull request.

Required Parameters
{
  "content": "The contents of your reply to a comment.",
  "inReplyTo": "The system-generated ID of the comment to which you want to reply. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest."
}

Optional Parameters
{
  "clientRequestToken": "A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token."
}
"""
PostCommentReply(args) = codecommit("PostCommentReply", args)

"""
    PutFile()

Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.

Required Parameters
{
  "filePath": "The name of the file you want to add or update, including the relative path to the file in the repository.  If the path does not currently exist in the repository, the path is created as part of adding the file. ",
  "repositoryName": "The name of the repository where you want to add or update the file.",
  "branchName": "The name of the branch where you want to add or update the file. If this is an empty repository, this branch is created.",
  "fileContent": "The content of the file, in binary object format. "
}

Optional Parameters
{
  "name": "The name of the person adding or updating the file. Although it is optional, a name makes the commit history for your repository more useful.",
  "fileMode": "The file mode permissions of the blob. Valid file mode permissions are listed here.",
  "parentCommitId": "The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required.  The commit ID must match the ID of the head commit at the time of the operation. Otherwise, an error occurs, and the file is not added or updated.",
  "commitMessage": "A message about why this file was added or updated. Although it is optional, a message makes the commit history for your repository more useful.",
  "email": "An email address for the person adding or updating the file."
}
"""
PutFile(args) = codecommit("PutFile", args)

"""
    GetRepository()

Returns information about a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters
{
  "repositoryName": "The name of the repository to get information about."
}
"""
GetRepository(args) = codecommit("GetRepository", args)

"""
    CreatePullRequestApprovalRule()

Creates an approval rule for a pull request.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request for which you want to create the approval rule.",
  "approvalRuleContent": "The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information about approval pools, see the AWS CodeCommit User Guide.  When you create the content of the approval rule, you can specify approvers in an approval pool in one of two ways:    CodeCommitApprovers: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account 123456789012 and Mary_Major, all of the following would be counted as approvals coming from that user:   An IAM user in the account (arn:aws:iam::123456789012:user/Mary_Major)   A federated user identified in IAM as Mary_Major (arn:aws:sts::123456789012:federated-user/Mary_Major)   This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of Mary_Major (arn:aws:sts::123456789012:assumed-role/CodeCommitReview/Mary_Major) unless you include a wildcard (*Mary_Major).    Fully qualified ARN: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role.    For more information about IAM ARNs, wildcards, and formats, see IAM Identifiers in the IAM User Guide. ",
  "approvalRuleName": "The name for the approval rule."
}
"""
CreatePullRequestApprovalRule(args) = codecommit("CreatePullRequestApprovalRule", args)

"""
    PostCommentForComparedCommit()

Posts a comment on the comparison between two commits.

Required Parameters
{
  "afterCommitId": "To establish the directionality of the comparison, the full commit ID of the after commit.",
  "content": "The content of the comment you want to make.",
  "repositoryName": "The name of the repository where you want to post a comment on the comparison between commits."
}

Optional Parameters
{
  "location": "The location of the comparison where you want to comment.",
  "beforeCommitId": "To establish the directionality of the comparison, the full commit ID of the before commit. Required for commenting on any commit unless that commit is the initial commit.",
  "clientRequestToken": "A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token."
}
"""
PostCommentForComparedCommit(args) = codecommit("PostCommentForComparedCommit", args)

"""
    PutCommentReaction()

Adds or updates a reaction to a specified comment for the user whose identity is used to make the request. You can only add or update a reaction for yourself. You cannot add, modify, or delete a reaction for another user.

Required Parameters
{
  "commentId": "The ID of the comment to which you want to add or update a reaction.",
  "reactionValue": "The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none. For information about emoji reaction values supported in AWS CodeCommit, see the AWS CodeCommit User Guide."
}
"""
PutCommentReaction(args) = codecommit("PutCommentReaction", args)

"""
    GetApprovalRuleTemplate()

Returns information about a specified approval rule template.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template for which you want to get information."
}
"""
GetApprovalRuleTemplate(args) = codecommit("GetApprovalRuleTemplate", args)

"""
    DeleteApprovalRuleTemplate()

Deletes a specified approval rule template. Deleting a template does not remove approval rules on pull requests already created with the template.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template to delete."
}
"""
DeleteApprovalRuleTemplate(args) = codecommit("DeleteApprovalRuleTemplate", args)

"""
    ListAssociatedApprovalRuleTemplatesForRepository()

Lists all approval rule templates that are associated with a specified repository.

Required Parameters
{
  "repositoryName": "The name of the repository for which you want to list all associated approval rule templates."
}

Optional Parameters
{
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
ListAssociatedApprovalRuleTemplatesForRepository(args) = codecommit("ListAssociatedApprovalRuleTemplatesForRepository", args)

"""
    CreatePullRequest()

Creates a pull request in the specified repository.

Required Parameters
{
  "targets": "The targets for the pull request, including the source of the code to be reviewed (the source branch) and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).",
  "title": "The title of the pull request. This title is used to identify the pull request to other users in the repository."
}

Optional Parameters
{
  "clientRequestToken": "A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.  The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an idempotency token is created for you. ",
  "description": "A description of the pull request."
}
"""
CreatePullRequest(args) = codecommit("CreatePullRequest", args)

"""
    DeletePullRequestApprovalRule()

Deletes an approval rule from a specified pull request. Approval rules can be deleted from a pull request only if the pull request is open, and if the approval rule was created specifically for a pull request and not generated from an approval rule template associated with the repository where the pull request was created. You cannot delete an approval rule from a merged or closed pull request.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request that contains the approval rule you want to delete.",
  "approvalRuleName": "The name of the approval rule you want to delete."
}
"""
DeletePullRequestApprovalRule(args) = codecommit("DeletePullRequestApprovalRule", args)

"""
    MergePullRequestByFastForward()

Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.

Required Parameters
{
  "repositoryName": "The name of the repository where the pull request was created.",
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "sourceCommitId": "The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID."
}
"""
MergePullRequestByFastForward(args) = codecommit("MergePullRequestByFastForward", args)

"""
    DeleteCommentContent()

Deletes the content of a comment made on a change, file, or commit in a repository.

Required Parameters
{
  "commentId": "The unique, system-generated ID of the comment. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest."
}
"""
DeleteCommentContent(args) = codecommit("DeleteCommentContent", args)

"""
    GetComment()

Returns the content of a comment made on a change, file, or commit in a repository.   Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions. 

Required Parameters
{
  "commentId": "The unique, system-generated ID of the comment. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest."
}
"""
GetComment(args) = codecommit("GetComment", args)

"""
    ListApprovalRuleTemplates()

Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.

Optional Parameters
{
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""

ListApprovalRuleTemplates() = codecommit("ListApprovalRuleTemplates")
ListApprovalRuleTemplates(args) = codecommit("ListApprovalRuleTemplates", args)

"""
    UntagResource()

Removes tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource to which you want to remove tags.",
  "tagKeys": "The tag key for each tag that you want to remove from the resource."
}
"""
UntagResource(args) = codecommit("UntagResource", args)

"""
    DisassociateApprovalRuleTemplateFromRepository()

Removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository. This does not delete any approval rules previously created for pull requests through the template association.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template to disassociate from a specified repository.",
  "repositoryName": "The name of the repository you want to disassociate from the template."
}
"""
DisassociateApprovalRuleTemplateFromRepository(args) = codecommit("DisassociateApprovalRuleTemplateFromRepository", args)

"""
    GetMergeConflicts()

Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository where the pull request was created.",
  "mergeOption": "The merge option or strategy you want to use to merge the code. ",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "maxConflictFiles": "The maximum number of files to include in the output."
}
"""
GetMergeConflicts(args) = codecommit("GetMergeConflicts", args)

"""
    AssociateApprovalRuleTemplateWithRepository()

Creates an association between an approval rule template and a specified repository. Then, the next time a pull request is created in the repository where the destination reference (if specified) matches the destination reference (branch) for the pull request, an approval rule that matches the template conditions is automatically created for that pull request. If no destination references are specified in the template, an approval rule that matches the template contents is created for all pull requests in that repository.

Required Parameters
{
  "approvalRuleTemplateName": "The name for the approval rule template. ",
  "repositoryName": "The name of the repository that you want to associate with the template."
}
"""
AssociateApprovalRuleTemplateWithRepository(args) = codecommit("AssociateApprovalRuleTemplateWithRepository", args)

"""
    GetFile()

Returns the base-64 encoded contents of a specified file and its metadata.

Required Parameters
{
  "filePath": "The fully qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully qualified path to a file named file.md in a folder named examples.",
  "repositoryName": "The name of the repository that contains the file."
}

Optional Parameters
{
  "commitSpecifier": "The fully quaified reference that identifies the commit that contains the file. For example, you can specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, the head commit is used."
}
"""
GetFile(args) = codecommit("GetFile", args)

"""
    GetCommentsForComparedCommit()

Returns information about comments made on the comparison between two commits.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions. 

Required Parameters
{
  "afterCommitId": "To establish the directionality of the comparison, the full commit ID of the after commit.",
  "repositoryName": "The name of the repository where you want to compare commits."
}

Optional Parameters
{
  "beforeCommitId": "To establish the directionality of the comparison, the full commit ID of the before commit.",
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments, but you can configure up to 500.",
  "nextToken": "An enumeration token that when provided in a request, returns the next batch of the results. "
}
"""
GetCommentsForComparedCommit(args) = codecommit("GetCommentsForComparedCommit", args)

"""
    DeleteBranch()

Deletes a branch from a repository, unless that branch is the default branch for the repository. 

Required Parameters
{
  "repositoryName": "The name of the repository that contains the branch to be deleted.",
  "branchName": "The name of the branch to delete."
}
"""
DeleteBranch(args) = codecommit("DeleteBranch", args)

"""
    GetMergeCommit()

Returns information about a specified merge commit.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository that contains the merge commit about which you want to get information.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
GetMergeCommit(args) = codecommit("GetMergeCommit", args)

"""
    UpdatePullRequestStatus()

Updates the status of a pull request. 

Required Parameters
{
  "pullRequestStatus": "The status of the pull request. The only valid operations are to update the status from OPEN to OPEN, OPEN to CLOSED or from CLOSED to CLOSED.",
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}
"""
UpdatePullRequestStatus(args) = codecommit("UpdatePullRequestStatus", args)

"""
    DeleteFile()

Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file still exists in the commits earlier to the commit that contains the deletion.

Required Parameters
{
  "filePath": "The fully qualified path to the file that to be deleted, including the full name and extension of that file. For example, /examples/file.md is a fully qualified path to a file named file.md in a folder named examples.",
  "repositoryName": "The name of the repository that contains the file to delete.",
  "parentCommitId": "The ID of the commit that is the tip of the branch where you want to create the commit that deletes the file. This must be the HEAD commit for the branch. The commit that deletes the file is created from this commit ID.",
  "branchName": "The name of the branch where the commit that deletes the file is made."
}

Optional Parameters
{
  "name": "The name of the author of the commit that deletes the file. If no name is specified, the user's ARN is used as the author name and committer name.",
  "keepEmptyFolders": "If a file is the only object in the folder or directory, specifies whether to delete the folder or directory that contains the file. By default, empty folders are deleted. This includes empty folders that are part of the directory structure. For example, if the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the last file in dir4 also deletes the empty folders dir4, dir3, and dir2.",
  "commitMessage": "The commit message you want to include as part of deleting the file. Commit messages are limited to 256 KB. If no message is specified, a default message is used.",
  "email": "The email address for the commit that deletes the file. If no email address is specified, the email address is left blank."
}
"""
DeleteFile(args) = codecommit("DeleteFile", args)

"""
    ListTagsForResource()

Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any."
}

Optional Parameters
{
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
ListTagsForResource(args) = codecommit("ListTagsForResource", args)

"""
    DeleteRepository()

Deletes a repository. If a specified repository was already deleted, a null repository ID is returned.  Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository fail. 

Required Parameters
{
  "repositoryName": "The name of the repository to delete."
}
"""
DeleteRepository(args) = codecommit("DeleteRepository", args)

"""
    GetCommentReactions()

Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.

Required Parameters
{
  "commentId": "The ID of the comment for which you want to get reactions information."
}

Optional Parameters
{
  "reactionUserArn": "Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.",
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results. The default is the same as the allowed maximum, 1,000.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results. "
}
"""
GetCommentReactions(args) = codecommit("GetCommentReactions", args)

"""
    UpdateApprovalRuleTemplateName()

Updates the name of a specified approval rule template.

Required Parameters
{
  "oldApprovalRuleTemplateName": "The current name of the approval rule template.",
  "newApprovalRuleTemplateName": "The new name you want to apply to the approval rule template."
}
"""
UpdateApprovalRuleTemplateName(args) = codecommit("UpdateApprovalRuleTemplateName", args)

"""
    UpdateApprovalRuleTemplateContent()

Updates the content of an approval rule template. You can change the number of required approvals, the membership of the approval rule, and whether an approval pool is defined.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template where you want to update the content of the rule. ",
  "newRuleContent": "The content that replaces the existing content of the rule. Content statements must be complete. You cannot provide only the changes."
}

Optional Parameters
{
  "existingRuleContentSha256": "The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using GetPullRequest."
}
"""
UpdateApprovalRuleTemplateContent(args) = codecommit("UpdateApprovalRuleTemplateContent", args)

"""
    UpdatePullRequestApprovalRuleContent()

Updates the structure of an approval rule created specifically for a pull request. For example, you can change the number of required approvers and the approval pool for approvers. 

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request.",
  "approvalRuleName": "The name of the approval rule you want to update.",
  "newRuleContent": "The updated content for the approval rule.  When you update the content of the approval rule, you can specify approvers in an approval pool in one of two ways:    CodeCommitApprovers: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account 123456789012 and Mary_Major, all of the following are counted as approvals coming from that user:   An IAM user in the account (arn:aws:iam::123456789012:user/Mary_Major)   A federated user identified in IAM as Mary_Major (arn:aws:sts::123456789012:federated-user/Mary_Major)   This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of Mary_Major (arn:aws:sts::123456789012:assumed-role/CodeCommitReview/Mary_Major) unless you include a wildcard (*Mary_Major).    Fully qualified ARN: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role.    For more information about IAM ARNs, wildcards, and formats, see IAM Identifiers in the IAM User Guide. "
}

Optional Parameters
{
  "existingRuleContentSha256": "The SHA-256 hash signature for the content of the approval rule. You can retrieve this information by using GetPullRequest."
}
"""
UpdatePullRequestApprovalRuleContent(args) = codecommit("UpdatePullRequestApprovalRuleContent", args)

"""
    GetMergeOptions()

Returns information about the merge options available for merging two specified branches. For details about why a merge option is not available, use GetMergeConflicts or DescribeMergeConflicts.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository that contains the commits about which you want to get merge options.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
GetMergeOptions(args) = codecommit("GetMergeOptions", args)

"""
    UpdateRepositoryName()

Renames a repository. The repository name must be unique across the calling AWS account. Repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix .git is prohibited. For more information about the limits on repository names, see Limits in the AWS CodeCommit User Guide.

Required Parameters
{
  "oldName": "The current name of the repository.",
  "newName": "The new name for the repository."
}
"""
UpdateRepositoryName(args) = codecommit("UpdateRepositoryName", args)

"""
    UpdateRepositoryDescription()

Sets or changes the comment or description for a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters
{
  "repositoryName": "The name of the repository to set or change the comment or description for."
}

Optional Parameters
{
  "repositoryDescription": "The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters."
}
"""
UpdateRepositoryDescription(args) = codecommit("UpdateRepositoryDescription", args)

"""
    TestRepositoryTriggers()

Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test sends data from the last commit. If no data is available, sample data is generated.

Required Parameters
{
  "repositoryName": "The name of the repository in which to test the triggers.",
  "triggers": "The list of triggers to test."
}
"""
TestRepositoryTriggers(args) = codecommit("TestRepositoryTriggers", args)

"""
    GetFolder()

Returns the contents of a specified folder in a repository.

Required Parameters
{
  "folderPath": "The fully qualified path to the folder whose contents are returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository. ",
  "repositoryName": "The name of the repository."
}

Optional Parameters
{
  "commitSpecifier": "A fully qualified reference used to identify a commit that contains the version of the folder's content to return. A fully qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content is returned as it exists in the HEAD commit."
}
"""
GetFolder(args) = codecommit("GetFolder", args)

"""
    GetCommit()

Returns information about a commit, including commit message and committer information.

Required Parameters
{
  "commitId": "The commit ID. Commit IDs are the full SHA ID of the commit.",
  "repositoryName": "The name of the repository to which the commit was made."
}
"""
GetCommit(args) = codecommit("GetCommit", args)

"""
    DescribeMergeConflicts()

Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "filePath": "The path of the target files used to describe the conflicts. ",
  "repositoryName": "The name of the repository where you want to get information about a merge conflict.",
  "mergeOption": "The merge option or strategy you want to use to merge the code.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "maxMergeHunks": "The maximum number of merge hunks to include in the output.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
DescribeMergeConflicts(args) = codecommit("DescribeMergeConflicts", args)

"""
    GetPullRequest()

Gets information about a pull request in a specified repository.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}
"""
GetPullRequest(args) = codecommit("GetPullRequest", args)

"""
    MergeBranchesBySquash()

Merges two branches using the squash merge strategy.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository where you want to merge two branches.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "commitMessage": "The commit message for the merge.",
  "authorName": "The name of the author who created the commit. This information is used as both the author and committer for the commit.",
  "conflictResolution": "If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.",
  "targetBranch": "The branch where the merge is applied. ",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.",
  "email": "The email address of the person merging the branches. This information is used in the commit information for the merge.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
MergeBranchesBySquash(args) = codecommit("MergeBranchesBySquash", args)

"""
    MergeBranchesByThreeWay()

Merges two specified branches using the three-way merge strategy.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository where you want to merge two branches.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "commitMessage": "The commit message to include in the commit information for the merge.",
  "authorName": "The name of the author who created the commit. This information is used as both the author and committer for the commit.",
  "conflictResolution": "If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.",
  "targetBranch": "The branch where the merge is applied. ",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.",
  "email": "The email address of the person merging the branches. This information is used in the commit information for the merge.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
MergeBranchesByThreeWay(args) = codecommit("MergeBranchesByThreeWay", args)

"""
    BatchDisassociateApprovalRuleTemplateFromRepositories()

Removes the association between an approval rule template and one or more specified repositories. 

Required Parameters
{
  "approvalRuleTemplateName": "The name of the template that you want to disassociate from one or more repositories.",
  "repositoryNames": "The repository names that you want to disassociate from the approval rule template.  The length constraint limit is for each string in the array. The array itself can be empty. "
}
"""
BatchDisassociateApprovalRuleTemplateFromRepositories(args) = codecommit("BatchDisassociateApprovalRuleTemplateFromRepositories", args)

"""
    UpdatePullRequestApprovalState()

Updates the state of a user's approval on a pull request. The user is derived from the signed-in account when the request is made.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request.",
  "approvalState": "The approval state to associate with the user on the pull request.",
  "revisionId": "The system-generated ID of the revision."
}
"""
UpdatePullRequestApprovalState(args) = codecommit("UpdatePullRequestApprovalState", args)

"""
    CreateUnreferencedMergeCommit()

Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy. This can help you determine the outcome of a potential merge. This API cannot be used with the fast-forward merge strategy because that strategy does not create a merge commit.  This unreferenced merge commit can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it. 

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository where you want to create the unreferenced merge commit.",
  "mergeOption": "The merge option or strategy you want to use to merge the code.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "commitMessage": "The commit message for the unreferenced commit.",
  "authorName": "The name of the author who created the unreferenced commit. This information is used as both the author and committer for the commit.",
  "conflictResolution": "If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.",
  "email": "The email address for the person who created the unreferenced commit.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line."
}
"""
CreateUnreferencedMergeCommit(args) = codecommit("CreateUnreferencedMergeCommit", args)

"""
    UpdateApprovalRuleTemplateDescription()

Updates the description for a specified approval rule template.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the template for which you want to update the description.",
  "approvalRuleTemplateDescription": "The updated description of the approval rule template."
}
"""
UpdateApprovalRuleTemplateDescription(args) = codecommit("UpdateApprovalRuleTemplateDescription", args)

"""
    BatchDescribeMergeConflicts()

Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository that contains the merge conflicts you want to review.",
  "mergeOption": "The merge option or strategy you want to use to merge the code.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "maxConflictFiles": "The maximum number of files to include in the output.",
  "maxMergeHunks": "The maximum number of merge hunks to include in the output.",
  "filePaths": "The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.",
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful."
}
"""
BatchDescribeMergeConflicts(args) = codecommit("BatchDescribeMergeConflicts", args)

"""
    EvaluatePullRequestApprovalRules()

Evaluates whether a pull request has met all the conditions specified in its associated approval rules.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request you want to evaluate.",
  "revisionId": "The system-generated ID for the pull request revision. To retrieve the most recent revision ID for a pull request, use GetPullRequest."
}
"""
EvaluatePullRequestApprovalRules(args) = codecommit("EvaluatePullRequestApprovalRules", args)

"""
    GetDifferences()

Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.

Required Parameters
{
  "repositoryName": "The name of the repository where you want to get differences.",
  "afterCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit."
}

Optional Parameters
{
  "afterPath": "The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences are shown for all paths.",
  "MaxResults": "A non-zero, non-negative integer used to limit the number of returned results.",
  "beforePath": "The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If beforePath and afterPath are not specified, differences are shown for all paths.",
  "NextToken": "An enumeration token that, when provided in a request, returns the next batch of the results.",
  "beforeCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, the full commit ID). Optional. If not specified, all changes before the afterCommitSpecifier value are shown. If you do not use beforeCommitSpecifier in your request, consider limiting the results with maxResults."
}
"""
GetDifferences(args) = codecommit("GetDifferences", args)

"""
    PutRepositoryTriggers()

Replaces all triggers for a repository. Used to create or delete triggers.

Required Parameters
{
  "repositoryName": "The name of the repository where you want to create or update the trigger.",
  "triggers": "The JSON block of configuration information for each trigger."
}
"""
PutRepositoryTriggers(args) = codecommit("PutRepositoryTriggers", args)

"""
    PostCommentForPullRequest()

Posts a comment on a pull request.

Required Parameters
{
  "afterCommitId": "The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.",
  "content": "The content of your comment on the change.",
  "beforeCommitId": "The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.",
  "repositoryName": "The name of the repository where you want to post a comment on a pull request.",
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "location": "The location of the change where you want to post your comment. If no location is provided, the comment is posted as a general comment on the pull request difference between the before commit ID and the after commit ID.",
  "clientRequestToken": "A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token."
}
"""
PostCommentForPullRequest(args) = codecommit("PostCommentForPullRequest", args)

"""
    GetBlob()

Returns the base-64 encoded content of an individual blob in a repository.

Required Parameters
{
  "blobId": "The ID of the blob, which is its SHA-1 pointer.",
  "repositoryName": "The name of the repository that contains the blob."
}
"""
GetBlob(args) = codecommit("GetBlob", args)

"""
    UpdatePullRequestDescription()

Replaces the contents of the description of a pull request.

Required Parameters
{
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests.",
  "description": "The updated content of the description for the pull request. This content replaces the existing description."
}
"""
UpdatePullRequestDescription(args) = codecommit("UpdatePullRequestDescription", args)

"""
    MergePullRequestByThreeWay()

Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.

Required Parameters
{
  "repositoryName": "The name of the repository where the pull request was created.",
  "pullRequestId": "The system-generated ID of the pull request. To get this ID, use ListPullRequests."
}

Optional Parameters
{
  "authorName": "The name of the author who created the commit. This information is used as both the author and committer for the commit.",
  "conflictDetailLevel": "The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.",
  "conflictResolutionStrategy": "Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.",
  "conflictResolution": "If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.",
  "sourceCommitId": "The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.",
  "keepEmptyFolders": "If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If true, a .gitkeep file is created for empty folders. The default is false.",
  "commitMessage": "The commit message to include in the commit information for the merge.",
  "email": "The email address of the person merging the branches. This information is used in the commit information for the merge."
}
"""
MergePullRequestByThreeWay(args) = codecommit("MergePullRequestByThreeWay", args)

"""
    OverridePullRequestApprovalRules()

Sets aside (overrides) all approval rule requirements for a specified pull request.

Required Parameters
{
  "overrideStatus": "Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply approval rule requirements (REVOKE). REVOKE status is not stored.",
  "pullRequestId": "The system-generated ID of the pull request for which you want to override all approval rule requirements. To get this information, use GetPullRequest.",
  "revisionId": "The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request. To get the revision ID, use GetPullRequest."
}
"""
OverridePullRequestApprovalRules(args) = codecommit("OverridePullRequestApprovalRules", args)

"""
    BatchAssociateApprovalRuleTemplateWithRepositories()

Creates an association between an approval rule template and one or more specified repositories. 

Required Parameters
{
  "approvalRuleTemplateName": "The name of the template you want to associate with one or more repositories.",
  "repositoryNames": "The names of the repositories you want to associate with the template.  The length constraint limit is for each string in the array. The array itself can be empty. "
}
"""
BatchAssociateApprovalRuleTemplateWithRepositories(args) = codecommit("BatchAssociateApprovalRuleTemplateWithRepositories", args)

"""
    CreateApprovalRuleTemplate()

Creates a template for approval rules that can then be associated with one or more repositories in your AWS account. When you associate a template with a repository, AWS CodeCommit creates an approval rule that matches the conditions of the template for all pull requests that meet the conditions of the template. For more information, see AssociateApprovalRuleTemplateWithRepository.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.",
  "approvalRuleTemplateContent": "The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.  When you create the content of the approval rule template, you can specify approvers in an approval pool in one of two ways:    CodeCommitApprovers: This option only requires an AWS account and a resource. It can be used for both IAM users and federated access users whose name matches the provided resource name. This is a very powerful option that offers a great deal of flexibility. For example, if you specify the AWS account 123456789012 and Mary_Major, all of the following are counted as approvals coming from that user:   An IAM user in the account (arn:aws:iam::123456789012:user/Mary_Major)   A federated user identified in IAM as Mary_Major (arn:aws:sts::123456789012:federated-user/Mary_Major)   This option does not recognize an active session of someone assuming the role of CodeCommitReview with a role session name of Mary_Major (arn:aws:sts::123456789012:assumed-role/CodeCommitReview/Mary_Major) unless you include a wildcard (*Mary_Major).    Fully qualified ARN: This option allows you to specify the fully qualified Amazon Resource Name (ARN) of the IAM user or role.    For more information about IAM ARNs, wildcards, and formats, see IAM Identifiers in the IAM User Guide. "
}

Optional Parameters
{
  "approvalRuleTemplateDescription": "The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories."
}
"""
CreateApprovalRuleTemplate(args) = codecommit("CreateApprovalRuleTemplate", args)

"""
    GetBranch()

Returns information about a repository branch, including its name and the last commit ID.

Optional Parameters
{
  "repositoryName": "The name of the repository that contains the branch for which you want to retrieve information.",
  "branchName": "The name of the branch for which you want to retrieve information."
}
"""

GetBranch() = codecommit("GetBranch")
GetBranch(args) = codecommit("GetBranch", args)

"""
    GetPullRequestApprovalStates()

Gets information about the approval states for a specified pull request. Approval states only apply to pull requests that have one or more approval rules applied to them.

Required Parameters
{
  "pullRequestId": "The system-generated ID for the pull request.",
  "revisionId": "The system-generated ID for the pull request revision."
}
"""
GetPullRequestApprovalStates(args) = codecommit("GetPullRequestApprovalStates", args)

"""
    ListRepositoriesForApprovalRuleTemplate()

Lists all repositories associated with the specified approval rule template.

Required Parameters
{
  "approvalRuleTemplateName": "The name of the approval rule template for which you want to list repositories that are associated with that template."
}

Optional Parameters
{
  "maxResults": "A non-zero, non-negative integer used to limit the number of returned results.",
  "nextToken": "An enumeration token that, when provided in a request, returns the next batch of the results."
}
"""
ListRepositoriesForApprovalRuleTemplate(args) = codecommit("ListRepositoriesForApprovalRuleTemplate", args)

"""
    UpdateDefaultBranch()

Sets or changes the default branch name for the specified repository.  If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change. 

Required Parameters
{
  "repositoryName": "The name of the repository to set or change the default branch for.",
  "defaultBranchName": "The name of the branch to set as the default."
}
"""
UpdateDefaultBranch(args) = codecommit("UpdateDefaultBranch", args)

"""
    ListRepositories()

Gets information about one or more repositories.

Optional Parameters
{
  "sortBy": "The criteria used to sort the results of a list repositories operation.",
  "order": "The order in which to sort the results of a list repositories operation.",
  "nextToken": "An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved."
}
"""

ListRepositories() = codecommit("ListRepositories")
ListRepositories(args) = codecommit("ListRepositories", args)

"""
    ListBranches()

Gets information about one or more branches in a repository.

Required Parameters
{
  "repositoryName": "The name of the repository that contains the branches."
}

Optional Parameters
{
  "nextToken": "An enumeration token that allows the operation to batch the results."
}
"""
ListBranches(args) = codecommit("ListBranches", args)

"""
    MergeBranchesByFastForward()

Merges two branches using the fast-forward merge strategy.

Required Parameters
{
  "destinationCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).",
  "repositoryName": "The name of the repository where you want to merge two branches.",
  "sourceCommitSpecifier": "The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID)."
}

Optional Parameters
{
  "targetBranch": "The branch where the merge is applied."
}
"""
MergeBranchesByFastForward(args) = codecommit("MergeBranchesByFastForward", args)

"""
    GetPullRequestOverrideState()

Returns information about whether approval rules have been set aside (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.

Required Parameters
{
  "pullRequestId": "The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).",
  "revisionId": "The system-generated ID of the revision for the pull request. To retrieve the most recent revision ID, use GetPullRequest."
}
"""
GetPullRequestOverrideState(args) = codecommit("GetPullRequestOverrideState", args)