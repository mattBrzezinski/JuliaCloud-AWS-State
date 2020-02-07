include("../AWSCorePrototypeServices.jl")
using .Services: codebuild

"""
 Deletes a resource policy that is identified by its resource ARN. 

Required Parameters:
resourceArn
"""
DeleteResourcePolicy(args) = codebuild("DeleteResourcePolicy", args)

"""
Changes the settings of a build project.

Required Parameters:
name
"""
UpdateProject(args) = codebuild("UpdateProject", args)

"""
Gets information about one or more builds.

Required Parameters:
ids
"""
BatchGetBuilds(args) = codebuild("BatchGetBuilds", args)

"""
 Deletes a report. 

Required Parameters:
arn
"""
DeleteReport(args) = codebuild("DeleteReport", args)

"""
Gets information about Docker images that are managed by AWS CodeBuild.
"""
ListCuratedEnvironmentImages() = codebuild("ListCuratedEnvironmentImages")

"""
Gets a list of build IDs, with each build ID representing a single build.
"""
ListBuilds() = codebuild("ListBuilds")

"""
 Gets a resource policy that is identified by its resource ARN. 

Required Parameters:
resourceArn
"""
GetResourcePolicy(args) = codebuild("GetResourcePolicy", args)

"""
 Stores a resource policy for the ARN of a Project or ReportGroup object. 

Required Parameters:
policy, resourceArn
"""
PutResourcePolicy(args) = codebuild("PutResourcePolicy", args)

"""
 Returns an array of report groups. 

Required Parameters:
reportGroupArns
"""
BatchGetReportGroups(args) = codebuild("BatchGetReportGroups", args)

"""
Creates a build project.

Required Parameters:
name, source, artifacts, environment, serviceRole
"""
CreateProject(args) = codebuild("CreateProject", args)

"""
 Gets a list of report groups that are shared with other AWS accounts or users. 
"""
ListSharedReportGroups() = codebuild("ListSharedReportGroups")

"""
 Gets a list ARNs for the report groups in the current AWS account. 
"""
ListReportGroups() = codebuild("ListReportGroups")

"""
 Returns a list of ARNs for the reports in the current AWS account. 
"""
ListReports() = codebuild("ListReports")

"""
Starts running a build.

Required Parameters:
projectName
"""
StartBuild(args) = codebuild("StartBuild", args)

"""
Gets a list of build project names, with each build project name representing a single build project.
"""
ListProjects() = codebuild("ListProjects")

"""
 Gets a list of projects that are shared with other AWS accounts or users. 
"""
ListSharedProjects() = codebuild("ListSharedProjects")

"""
Gets information about one or more build projects.

Required Parameters:
names
"""
BatchGetProjects(args) = codebuild("BatchGetProjects", args)

"""
For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings. 

Required Parameters:
projectName
"""
CreateWebhook(args) = codebuild("CreateWebhook", args)

"""
For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.

Required Parameters:
projectName
"""
DeleteWebhook(args) = codebuild("DeleteWebhook", args)

"""
 Updates the webhook associated with an AWS CodeBuild build project.    If you use Bitbucket for your repository, rotateSecret is ignored.  

Required Parameters:
projectName
"""
UpdateWebhook(args) = codebuild("UpdateWebhook", args)

"""
 Deletes a build project. When you delete a project, its builds are not deleted. 

Required Parameters:
name
"""
DeleteProject(args) = codebuild("DeleteProject", args)

"""
 Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. 

Required Parameters:
arn
"""
DeleteSourceCredentials(args) = codebuild("DeleteSourceCredentials", args)

"""
 DeleteReportGroup: Deletes a report group. Before you delete a report group, you must delete its reports. Use ListReportsForReportGroup to get the reports in a report group. Use DeleteReport to delete the reports. If you call DeleteReportGroup for a report group that contains one or more reports, an exception is thrown. 

Required Parameters:
arn
"""
DeleteReportGroup(args) = codebuild("DeleteReportGroup", args)

"""
 Updates a report group. 

Required Parameters:
arn
"""
UpdateReportGroup(args) = codebuild("UpdateReportGroup", args)

"""
Gets a list of build IDs for the specified build project, with each build ID representing a single build.

Required Parameters:
projectName
"""
ListBuildsForProject(args) = codebuild("ListBuildsForProject", args)

"""
Resets the cache for a project.

Required Parameters:
projectName
"""
InvalidateProjectCache(args) = codebuild("InvalidateProjectCache", args)

"""
Attempts to stop running a build.

Required Parameters:
id
"""
StopBuild(args) = codebuild("StopBuild", args)

"""
 Returns a list of ARNs for the reports that belong to a ReportGroup. 

Required Parameters:
reportGroupArn
"""
ListReportsForReportGroup(args) = codebuild("ListReportsForReportGroup", args)

"""
 Creates a report group. A report group contains a collection of reports. 

Required Parameters:
name, type, exportConfig
"""
CreateReportGroup(args) = codebuild("CreateReportGroup", args)

"""
 Returns an array of reports. 

Required Parameters:
reportArns
"""
BatchGetReports(args) = codebuild("BatchGetReports", args)

"""
 Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. 

Required Parameters:
token, serverType, authType
"""
ImportSourceCredentials(args) = codebuild("ImportSourceCredentials", args)

"""
Deletes one or more builds.

Required Parameters:
ids
"""
BatchDeleteBuilds(args) = codebuild("BatchDeleteBuilds", args)

"""
 Returns a list of details about test cases for a report. 

Required Parameters:
reportArn
"""
DescribeTestCases(args) = codebuild("DescribeTestCases", args)

"""
 Returns a list of SourceCredentialsInfo objects. 
"""
ListSourceCredentials() = codebuild("ListSourceCredentials")
