include("../AWSCorePrototypeServices.jl")
using .Services: serverlessapplicationrepository

"""
Lists versions for the specified application.
"""
ListApplicationVersions(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/versions")
ListApplicationVersions(ApplicationId, args) = serverlessapplicationrepository("GET", "/applications/$applicationId/versions", args)
ListApplicationVersions(a...; b...) = ListApplicationVersions(a..., b)

"""
Gets the specified application.
"""
GetApplication(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId")
GetApplication(ApplicationId, args) = serverlessapplicationrepository("GET", "/applications/$applicationId", args)
GetApplication(a...; b...) = GetApplication(a..., b)

"""
Gets the specified AWS CloudFormation template.
"""
GetCloudFormationTemplate(ApplicationId, TemplateId) = serverlessapplicationrepository("GET", "/applications/$applicationId/templates/$templateId")
GetCloudFormationTemplate(ApplicationId, TemplateId, args) = serverlessapplicationrepository("GET", "/applications/$applicationId/templates/$templateId", args)
GetCloudFormationTemplate(a...; b...) = GetCloudFormationTemplate(a..., b)

"""
Deletes the specified application.
"""
DeleteApplication(ApplicationId) = serverlessapplicationrepository("DELETE", "/applications/$applicationId")
DeleteApplication(ApplicationId, args) = serverlessapplicationrepository("DELETE", "/applications/$applicationId", args)
DeleteApplication(a...; b...) = DeleteApplication(a..., b)

"""
Sets the permission policy for an application. For the list of actions supported for this operation, see
 Application 
 Permissions
 .
"""
PutApplicationPolicy(ApplicationId, Statements) = serverlessapplicationrepository("PUT", "/applications/$applicationId/policy")
PutApplicationPolicy(ApplicationId, Statements, args) = serverlessapplicationrepository("PUT", "/applications/$applicationId/policy", args)
PutApplicationPolicy(a...; b...) = PutApplicationPolicy(a..., b)

"""
Retrieves the list of applications nested in the containing application.
"""
ListApplicationDependencies(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/dependencies")
ListApplicationDependencies(ApplicationId, args) = serverlessapplicationrepository("GET", "/applications/$applicationId/dependencies", args)
ListApplicationDependencies(a...; b...) = ListApplicationDependencies(a..., b)

"""
Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
"""
CreateApplication(Description, Name, Author) = serverlessapplicationrepository("POST", "/applications")
CreateApplication(Description, Name, Author, args) = serverlessapplicationrepository("POST", "/applications", args)
CreateApplication(a...; b...) = CreateApplication(a..., b)

"""
Updates the specified application.
"""
UpdateApplication(ApplicationId) = serverlessapplicationrepository("PATCH", "/applications/$applicationId")
UpdateApplication(ApplicationId, args) = serverlessapplicationrepository("PATCH", "/applications/$applicationId", args)
UpdateApplication(a...; b...) = UpdateApplication(a..., b)

"""
Creates an AWS CloudFormation template.
"""
CreateCloudFormationTemplate(ApplicationId) = serverlessapplicationrepository("POST", "/applications/$applicationId/templates")
CreateCloudFormationTemplate(ApplicationId, args) = serverlessapplicationrepository("POST", "/applications/$applicationId/templates", args)
CreateCloudFormationTemplate(a...; b...) = CreateCloudFormationTemplate(a..., b)

"""
Lists applications owned by the requester.
"""
ListApplications() = serverlessapplicationrepository("GET", "/applications")
ListApplications(, args) = serverlessapplicationrepository("GET", "/applications", args)
ListApplications(a...; b...) = ListApplications(a..., b)

"""
Creates an AWS CloudFormation change set for the given application.
"""
CreateCloudFormationChangeSet(ApplicationId, StackName) = serverlessapplicationrepository("POST", "/applications/$applicationId/changesets")
CreateCloudFormationChangeSet(ApplicationId, StackName, args) = serverlessapplicationrepository("POST", "/applications/$applicationId/changesets", args)
CreateCloudFormationChangeSet(a...; b...) = CreateCloudFormationChangeSet(a..., b)

"""
Retrieves the policy for the application.
"""
GetApplicationPolicy(ApplicationId) = serverlessapplicationrepository("GET", "/applications/$applicationId/policy")
GetApplicationPolicy(ApplicationId, args) = serverlessapplicationrepository("GET", "/applications/$applicationId/policy", args)
GetApplicationPolicy(a...; b...) = GetApplicationPolicy(a..., b)

"""
Creates an application version.
"""
CreateApplicationVersion(ApplicationId, SemanticVersion) = serverlessapplicationrepository("PUT", "/applications/$applicationId/versions/$semanticVersion")
CreateApplicationVersion(ApplicationId, SemanticVersion, args) = serverlessapplicationrepository("PUT", "/applications/$applicationId/versions/$semanticVersion", args)
CreateApplicationVersion(a...; b...) = CreateApplicationVersion(a..., b)
