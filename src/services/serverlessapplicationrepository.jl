include("../AWSCorePrototypeServices.jl")
using .Services: serverlessapplicationrepository

"""
Lists versions for the specified application.

Required Parameters:
ApplicationId
"""
ListApplicationVersions(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/versions", args)

"""
Gets the specified application.

Required Parameters:
ApplicationId
"""
GetApplication(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}", args)

"""
Gets the specified AWS CloudFormation template.

Required Parameters:
ApplicationId, TemplateId
"""
GetCloudFormationTemplate(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/templates/{templateId}", args)

"""
Deletes the specified application.

Required Parameters:
ApplicationId
"""
DeleteApplication(args) = serverlessapplicationrepository("DELETE", "/applications/{applicationId}", args)

"""
Sets the permission policy for an application. For the list of actions supported for this operation, see
 Application 
 Permissions
 .

Required Parameters:
ApplicationId, Statements
"""
PutApplicationPolicy(args) = serverlessapplicationrepository("PUT", "/applications/{applicationId}/policy", args)

"""
Retrieves the list of applications nested in the containing application.

Required Parameters:
ApplicationId
"""
ListApplicationDependencies(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/dependencies", args)

"""
Creates an application, optionally including an AWS SAM file to create the first application version in the same call.

Required Parameters:
Description, Name, Author
"""
CreateApplication(args) = serverlessapplicationrepository("POST", "/applications", args)

"""
Updates the specified application.

Required Parameters:
ApplicationId
"""
UpdateApplication(args) = serverlessapplicationrepository("PATCH", "/applications/{applicationId}", args)

"""
Creates an AWS CloudFormation template.

Required Parameters:
ApplicationId
"""
CreateCloudFormationTemplate(args) = serverlessapplicationrepository("POST", "/applications/{applicationId}/templates", args)

"""
Lists applications owned by the requester.
"""
ListApplications() = serverlessapplicationrepository("GET", "/applications")

"""
Creates an AWS CloudFormation change set for the given application.

Required Parameters:
ApplicationId, StackName
"""
CreateCloudFormationChangeSet(args) = serverlessapplicationrepository("POST", "/applications/{applicationId}/changesets", args)

"""
Retrieves the policy for the application.

Required Parameters:
ApplicationId
"""
GetApplicationPolicy(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/policy", args)

"""
Creates an application version.

Required Parameters:
ApplicationId, SemanticVersion
"""
CreateApplicationVersion(args) = serverlessapplicationrepository("PUT", "/applications/{applicationId}/versions/{semanticVersion}", args)
