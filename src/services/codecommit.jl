include("../AWSCorePrototypeServices.jl")
using .Services: codecommit

"""
Returns information about the contents of one or more commits in a repository.

Required Parameters:
commitIds, repositoryName
"""
BatchGetCommits(args) = codecommit("BatchGetCommits", args)

"""
Creates a new, empty repository.

Required Parameters:
repositoryName
"""
CreateRepository(args) = codecommit("CreateRepository", args)

"""
Replaces the contents of a comment.

Required Parameters:
commentId, content
"""
UpdateComment(args) = codecommit("UpdateComment", args)

"""
Creates a commit for a repository on the tip of a specified branch.

Required Parameters:
repositoryName, branchName
"""
CreateCommit(args) = codecommit("CreateCommit", args)

"""
Returns comments made on a pull request.

Required Parameters:
pullRequestId
"""
GetCommentsForPullRequest(args) = codecommit("GetCommentsForPullRequest", args)

"""
Returns information about one or more pull request events.

Required Parameters:
pullRequestId
"""
DescribePullRequestEvents(args) = codecommit("DescribePullRequestEvents", args)

"""
Gets information about triggers configured for a repository.

Required Parameters:
repositoryName
"""
GetRepositoryTriggers(args) = codecommit("GetRepositoryTriggers", args)

"""
Creates a branch in a repository and points the branch to a commit.  Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation. 

Required Parameters:
repositoryName, branchName, commitId
"""
CreateBranch(args) = codecommit("CreateBranch", args)

"""
Returns information about one or more repositories.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters:
repositoryNames
"""
BatchGetRepositories(args) = codecommit("BatchGetRepositories", args)

"""
Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.

Required Parameters:
pullRequestId, repositoryName
"""
MergePullRequestBySquash(args) = codecommit("MergePullRequestBySquash", args)

"""
Replaces the title of a pull request.

Required Parameters:
pullRequestId, title
"""
UpdatePullRequestTitle(args) = codecommit("UpdatePullRequestTitle", args)

"""
Adds or updates tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = codecommit("TagResource", args)

"""
Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.

Required Parameters:
repositoryName
"""
ListPullRequests(args) = codecommit("ListPullRequests", args)

"""
Posts a comment in reply to an existing comment on a comparison between commits or a pull request.

Required Parameters:
inReplyTo, content
"""
PostCommentReply(args) = codecommit("PostCommentReply", args)

"""
Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.

Required Parameters:
repositoryName, branchName, fileContent, filePath
"""
PutFile(args) = codecommit("PutFile", args)

"""
Returns information about a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters:
repositoryName
"""
GetRepository(args) = codecommit("GetRepository", args)

"""
Creates an approval rule for a pull request.

Required Parameters:
pullRequestId, approvalRuleName, approvalRuleContent
"""
CreatePullRequestApprovalRule(args) = codecommit("CreatePullRequestApprovalRule", args)

"""
Posts a comment on the comparison between two commits.

Required Parameters:
repositoryName, afterCommitId, content
"""
PostCommentForComparedCommit(args) = codecommit("PostCommentForComparedCommit", args)

"""
Returns information about a specified approval rule template.

Required Parameters:
approvalRuleTemplateName
"""
GetApprovalRuleTemplate(args) = codecommit("GetApprovalRuleTemplate", args)

"""
Deletes a specified approval rule template. Deleting a template does not remove approval rules on pull requests already created with the template.

Required Parameters:
approvalRuleTemplateName
"""
DeleteApprovalRuleTemplate(args) = codecommit("DeleteApprovalRuleTemplate", args)

"""
Lists all approval rule templates that are associated with a specified repository.

Required Parameters:
repositoryName
"""
ListAssociatedApprovalRuleTemplatesForRepository(args) = codecommit("ListAssociatedApprovalRuleTemplatesForRepository", args)

"""
Creates a pull request in the specified repository.

Required Parameters:
title, targets
"""
CreatePullRequest(args) = codecommit("CreatePullRequest", args)

"""
Deletes an approval rule from a specified pull request. Approval rules can be deleted from a pull request only if the pull request is open, and if the approval rule was created specifically for a pull request and not generated from an approval rule template associated with the repository where the pull request was created. You cannot delete an approval rule from a merged or closed pull request.

Required Parameters:
pullRequestId, approvalRuleName
"""
DeletePullRequestApprovalRule(args) = codecommit("DeletePullRequestApprovalRule", args)

"""
Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.

Required Parameters:
pullRequestId, repositoryName
"""
MergePullRequestByFastForward(args) = codecommit("MergePullRequestByFastForward", args)

"""
Deletes the content of a comment made on a change, file, or commit in a repository.

Required Parameters:
commentId
"""
DeleteCommentContent(args) = codecommit("DeleteCommentContent", args)

"""
Returns the content of a comment made on a change, file, or commit in a repository.

Required Parameters:
commentId
"""
GetComment(args) = codecommit("GetComment", args)

"""
Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.
"""
ListApprovalRuleTemplates() = codecommit("ListApprovalRuleTemplates")

"""
Removes tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = codecommit("UntagResource", args)

"""
Removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository. This does not delete any approval rules previously created for pull requests through the template association.

Required Parameters:
approvalRuleTemplateName, repositoryName
"""
DisassociateApprovalRuleTemplateFromRepository(args) = codecommit("DisassociateApprovalRuleTemplateFromRepository", args)

"""
Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.

Required Parameters:
repositoryName, destinationCommitSpecifier, sourceCommitSpecifier, mergeOption
"""
GetMergeConflicts(args) = codecommit("GetMergeConflicts", args)

"""
Creates an association between an approval rule template and a specified repository. Then, the next time a pull request is created in the repository where the destination reference (if specified) matches the destination reference (branch) for the pull request, an approval rule that matches the template conditions is automatically created for that pull request. If no destination references are specified in the template, an approval rule that matches the template contents is created for all pull requests in that repository.

Required Parameters:
approvalRuleTemplateName, repositoryName
"""
AssociateApprovalRuleTemplateWithRepository(args) = codecommit("AssociateApprovalRuleTemplateWithRepository", args)

"""
Returns the base-64 encoded contents of a specified file and its metadata.

Required Parameters:
repositoryName, filePath
"""
GetFile(args) = codecommit("GetFile", args)

"""
Returns information about comments made on the comparison between two commits.

Required Parameters:
repositoryName, afterCommitId
"""
GetCommentsForComparedCommit(args) = codecommit("GetCommentsForComparedCommit", args)

"""
Deletes a branch from a repository, unless that branch is the default branch for the repository. 

Required Parameters:
repositoryName, branchName
"""
DeleteBranch(args) = codecommit("DeleteBranch", args)

"""
Returns information about a specified merge commit.

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier
"""
GetMergeCommit(args) = codecommit("GetMergeCommit", args)

"""
Updates the status of a pull request. 

Required Parameters:
pullRequestId, pullRequestStatus
"""
UpdatePullRequestStatus(args) = codecommit("UpdatePullRequestStatus", args)

"""
Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file still exists in the commits earlier to the commit that contains the deletion.

Required Parameters:
repositoryName, branchName, filePath, parentCommitId
"""
DeleteFile(args) = codecommit("DeleteFile", args)

"""
Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see CodeCommit Resources and Operations in the AWS CodeCommit User Guide.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = codecommit("ListTagsForResource", args)

"""
Deletes a repository. If a specified repository was already deleted, a null repository ID is returned.  Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository fail. 

Required Parameters:
repositoryName
"""
DeleteRepository(args) = codecommit("DeleteRepository", args)

"""
Updates the name of a specified approval rule template.

Required Parameters:
oldApprovalRuleTemplateName, newApprovalRuleTemplateName
"""
UpdateApprovalRuleTemplateName(args) = codecommit("UpdateApprovalRuleTemplateName", args)

"""
Updates the content of an approval rule template. You can change the number of required approvals, the membership of the approval rule, and whether an approval pool is defined.

Required Parameters:
approvalRuleTemplateName, newRuleContent
"""
UpdateApprovalRuleTemplateContent(args) = codecommit("UpdateApprovalRuleTemplateContent", args)

"""
Updates the structure of an approval rule created specifically for a pull request. For example, you can change the number of required approvers and the approval pool for approvers. 

Required Parameters:
pullRequestId, approvalRuleName, newRuleContent
"""
UpdatePullRequestApprovalRuleContent(args) = codecommit("UpdatePullRequestApprovalRuleContent", args)

"""
Returns information about the merge options available for merging two specified branches. For details about why a merge option is not available, use GetMergeConflicts or DescribeMergeConflicts.

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier
"""
GetMergeOptions(args) = codecommit("GetMergeOptions", args)

"""
Renames a repository. The repository name must be unique across the calling AWS account. Repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix .git is prohibited. For more information about the limits on repository names, see Limits in the AWS CodeCommit User Guide.

Required Parameters:
oldName, newName
"""
UpdateRepositoryName(args) = codecommit("UpdateRepositoryName", args)

"""
Sets or changes the comment or description for a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a webpage can expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a webpage. 

Required Parameters:
repositoryName
"""
UpdateRepositoryDescription(args) = codecommit("UpdateRepositoryDescription", args)

"""
Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test sends data from the last commit. If no data is available, sample data is generated.

Required Parameters:
repositoryName, triggers
"""
TestRepositoryTriggers(args) = codecommit("TestRepositoryTriggers", args)

"""
Returns the contents of a specified folder in a repository.

Required Parameters:
repositoryName, folderPath
"""
GetFolder(args) = codecommit("GetFolder", args)

"""
Returns information about a commit, including commit message and committer information.

Required Parameters:
repositoryName, commitId
"""
GetCommit(args) = codecommit("GetCommit", args)

"""
Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.

Required Parameters:
repositoryName, destinationCommitSpecifier, sourceCommitSpecifier, mergeOption, filePath
"""
DescribeMergeConflicts(args) = codecommit("DescribeMergeConflicts", args)

"""
Gets information about a pull request in a specified repository.

Required Parameters:
pullRequestId
"""
GetPullRequest(args) = codecommit("GetPullRequest", args)

"""
Merges two branches using the squash merge strategy.

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier
"""
MergeBranchesBySquash(args) = codecommit("MergeBranchesBySquash", args)

"""
Merges two specified branches using the three-way merge strategy.

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier
"""
MergeBranchesByThreeWay(args) = codecommit("MergeBranchesByThreeWay", args)

"""
Removes the association between an approval rule template and one or more specified repositories. 

Required Parameters:
approvalRuleTemplateName, repositoryNames
"""
BatchDisassociateApprovalRuleTemplateFromRepositories(args) = codecommit("BatchDisassociateApprovalRuleTemplateFromRepositories", args)

"""
Updates the state of a user's approval on a pull request. The user is derived from the signed-in account when the request is made.

Required Parameters:
pullRequestId, revisionId, approvalState
"""
UpdatePullRequestApprovalState(args) = codecommit("UpdatePullRequestApprovalState", args)

"""
Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy. This can help you determine the outcome of a potential merge. This API cannot be used with the fast-forward merge strategy because that strategy does not create a merge commit.  This unreferenced merge commit can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it. 

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier, mergeOption
"""
CreateUnreferencedMergeCommit(args) = codecommit("CreateUnreferencedMergeCommit", args)

"""
Updates the description for a specified approval rule template.

Required Parameters:
approvalRuleTemplateName, approvalRuleTemplateDescription
"""
UpdateApprovalRuleTemplateDescription(args) = codecommit("UpdateApprovalRuleTemplateDescription", args)

"""
Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.

Required Parameters:
repositoryName, destinationCommitSpecifier, sourceCommitSpecifier, mergeOption
"""
BatchDescribeMergeConflicts(args) = codecommit("BatchDescribeMergeConflicts", args)

"""
Evaluates whether a pull request has met all the conditions specified in its associated approval rules.

Required Parameters:
pullRequestId, revisionId
"""
EvaluatePullRequestApprovalRules(args) = codecommit("EvaluatePullRequestApprovalRules", args)

"""
Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.

Required Parameters:
repositoryName, afterCommitSpecifier
"""
GetDifferences(args) = codecommit("GetDifferences", args)

"""
Replaces all triggers for a repository. Used to create or delete triggers.

Required Parameters:
repositoryName, triggers
"""
PutRepositoryTriggers(args) = codecommit("PutRepositoryTriggers", args)

"""
Posts a comment on a pull request.

Required Parameters:
pullRequestId, repositoryName, beforeCommitId, afterCommitId, content
"""
PostCommentForPullRequest(args) = codecommit("PostCommentForPullRequest", args)

"""
Returns the base-64 encoded content of an individual blob in a repository.

Required Parameters:
repositoryName, blobId
"""
GetBlob(args) = codecommit("GetBlob", args)

"""
Replaces the contents of the description of a pull request.

Required Parameters:
pullRequestId, description
"""
UpdatePullRequestDescription(args) = codecommit("UpdatePullRequestDescription", args)

"""
Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.

Required Parameters:
pullRequestId, repositoryName
"""
MergePullRequestByThreeWay(args) = codecommit("MergePullRequestByThreeWay", args)

"""
Sets aside (overrides) all approval rule requirements for a specified pull request.

Required Parameters:
pullRequestId, revisionId, overrideStatus
"""
OverridePullRequestApprovalRules(args) = codecommit("OverridePullRequestApprovalRules", args)

"""
Creates an association between an approval rule template and one or more specified repositories. 

Required Parameters:
approvalRuleTemplateName, repositoryNames
"""
BatchAssociateApprovalRuleTemplateWithRepositories(args) = codecommit("BatchAssociateApprovalRuleTemplateWithRepositories", args)

"""
Creates a template for approval rules that can then be associated with one or more repositories in your AWS account. When you associate a template with a repository, AWS CodeCommit creates an approval rule that matches the conditions of the template for all pull requests that meet the conditions of the template. For more information, see AssociateApprovalRuleTemplateWithRepository.

Required Parameters:
approvalRuleTemplateName, approvalRuleTemplateContent
"""
CreateApprovalRuleTemplate(args) = codecommit("CreateApprovalRuleTemplate", args)

"""
Returns information about a repository branch, including its name and the last commit ID.
"""
GetBranch() = codecommit("GetBranch")

"""
Gets information about the approval states for a specified pull request. Approval states only apply to pull requests that have one or more approval rules applied to them.

Required Parameters:
pullRequestId, revisionId
"""
GetPullRequestApprovalStates(args) = codecommit("GetPullRequestApprovalStates", args)

"""
Lists all repositories associated with the specified approval rule template.

Required Parameters:
approvalRuleTemplateName
"""
ListRepositoriesForApprovalRuleTemplate(args) = codecommit("ListRepositoriesForApprovalRuleTemplate", args)

"""
Sets or changes the default branch name for the specified repository.  If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change. 

Required Parameters:
repositoryName, defaultBranchName
"""
UpdateDefaultBranch(args) = codecommit("UpdateDefaultBranch", args)

"""
Gets information about one or more repositories.
"""
ListRepositories() = codecommit("ListRepositories")

"""
Gets information about one or more branches in a repository.

Required Parameters:
repositoryName
"""
ListBranches(args) = codecommit("ListBranches", args)

"""
Merges two branches using the fast-forward merge strategy.

Required Parameters:
repositoryName, sourceCommitSpecifier, destinationCommitSpecifier
"""
MergeBranchesByFastForward(args) = codecommit("MergeBranchesByFastForward", args)

"""
Returns information about whether approval rules have been set aside (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.

Required Parameters:
pullRequestId, revisionId
"""
GetPullRequestOverrideState(args) = codecommit("GetPullRequestOverrideState", args)
