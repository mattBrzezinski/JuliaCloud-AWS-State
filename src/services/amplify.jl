include("../AWSCorePrototypeServices.jl")
using .Services: amplify

"""
 List tags for resource. 
"""
ListTagsForResource(resourceArn) = amplify("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = amplify("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
 Stop a job that is in progress, for an Amplify branch, part of Amplify App. 
"""
StopJob(appId, branchName, jobId) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId/stop")
StopJob(appId, branchName, jobId, args) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId/stop", args)
StopJob(a...; b...) = StopJob(a..., b)

"""
 Create a new DomainAssociation on an App 
"""
UpdateDomainAssociation(appId, domainName, subDomainSettings) = amplify("POST", "/apps/$appId/domains/$domainName")
UpdateDomainAssociation(appId, domainName, subDomainSettings, args) = amplify("POST", "/apps/$appId/domains/$domainName", args)
UpdateDomainAssociation(a...; b...) = UpdateDomainAssociation(a..., b)

"""
 Start a deployment for manual deploy apps. (Apps are not connected to repository) 
"""
StartDeployment(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName/deployments/start")
StartDeployment(appId, branchName, args) = amplify("POST", "/apps/$appId/branches/$branchName/deployments/start", args)
StartDeployment(a...; b...) = StartDeployment(a..., b)

"""
 Create a deployment for manual deploy apps. (Apps are not connected to repository) 
"""
CreateDeployment(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName/deployments")
CreateDeployment(appId, branchName, args) = amplify("POST", "/apps/$appId/branches/$branchName/deployments", args)
CreateDeployment(a...; b...) = CreateDeployment(a..., b)

"""
 Retrieves webhook info that corresponds to a webhookId. 
"""
GetWebhook(webhookId) = amplify("GET", "/webhooks/$webhookId")
GetWebhook(webhookId, args) = amplify("GET", "/webhooks/$webhookId", args)
GetWebhook(a...; b...) = GetWebhook(a..., b)

"""
 Delete an existing Amplify App by appId. 
"""
DeleteApp(appId) = amplify("DELETE", "/apps/$appId")
DeleteApp(appId, args) = amplify("DELETE", "/apps/$appId", args)
DeleteApp(a...; b...) = DeleteApp(a..., b)

"""
 Retrieves a backend environment for an Amplify App. 
"""
GetBackendEnvironment(appId, environmentName) = amplify("GET", "/apps/$appId/backendenvironments/$environmentName")
GetBackendEnvironment(appId, environmentName, args) = amplify("GET", "/apps/$appId/backendenvironments/$environmentName", args)
GetBackendEnvironment(a...; b...) = GetBackendEnvironment(a..., b)

"""
 Starts a new job for a branch, part of an Amplify App. 
"""
StartJob(appId, branchName, jobType) = amplify("POST", "/apps/$appId/branches/$branchName/jobs")
StartJob(appId, branchName, jobType, args) = amplify("POST", "/apps/$appId/branches/$branchName/jobs", args)
StartJob(a...; b...) = StartJob(a..., b)

"""
 Lists existing Amplify Apps. 
"""
ListApps() = amplify("GET", "/apps")
ListApps(, args) = amplify("GET", "/apps", args)
ListApps(a...; b...) = ListApps(a..., b)

"""
 Creates a new Branch for an Amplify App. 
"""
CreateBranch(appId, branchName) = amplify("POST", "/apps/$appId/branches")
CreateBranch(appId, branchName, args) = amplify("POST", "/apps/$appId/branches", args)
CreateBranch(a...; b...) = CreateBranch(a..., b)

"""
 List webhooks with an app. 
"""
ListWebhooks(appId) = amplify("GET", "/apps/$appId/webhooks")
ListWebhooks(appId, args) = amplify("GET", "/apps/$appId/webhooks", args)
ListWebhooks(a...; b...) = ListWebhooks(a..., b)

"""
 Tag resource with tag key and value. 
"""
TagResource(resourceArn, tags) = amplify("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = amplify("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
 Delete backend environment for an Amplify App. 
"""
DeleteBackendEnvironment(appId, environmentName) = amplify("DELETE", "/apps/$appId/backendenvironments/$environmentName")
DeleteBackendEnvironment(appId, environmentName, args) = amplify("DELETE", "/apps/$appId/backendenvironments/$environmentName", args)
DeleteBackendEnvironment(a...; b...) = DeleteBackendEnvironment(a..., b)

"""
 Create a new webhook on an App. 
"""
CreateWebhook(appId, branchName) = amplify("POST", "/apps/$appId/webhooks")
CreateWebhook(appId, branchName, args) = amplify("POST", "/apps/$appId/webhooks", args)
CreateWebhook(a...; b...) = CreateWebhook(a..., b)

"""
 Deletes a webhook. 
"""
DeleteWebhook(webhookId) = amplify("DELETE", "/webhooks/$webhookId")
DeleteWebhook(webhookId, args) = amplify("DELETE", "/webhooks/$webhookId", args)
DeleteWebhook(a...; b...) = DeleteWebhook(a..., b)

"""
 Retrieve website access logs for a specific time range via a pre-signed URL. 
"""
GenerateAccessLogs(domainName, appId) = amplify("POST", "/apps/$appId/accesslogs")
GenerateAccessLogs(domainName, appId, args) = amplify("POST", "/apps/$appId/accesslogs", args)
GenerateAccessLogs(a...; b...) = GenerateAccessLogs(a..., b)

"""
 Get a job for a branch, part of an Amplify App. 
"""
GetJob(appId, branchName, jobId) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId")
GetJob(appId, branchName, jobId, args) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId", args)
GetJob(a...; b...) = GetJob(a..., b)

"""
 Untag resource with resourceArn. 
"""
UntagResource(resourceArn, tagKeys) = amplify("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = amplify("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
 Updates an existing Amplify App. 
"""
UpdateApp(appId) = amplify("POST", "/apps/$appId")
UpdateApp(appId, args) = amplify("POST", "/apps/$appId", args)
UpdateApp(a...; b...) = UpdateApp(a..., b)

"""
 Updates a branch for an Amplify App. 
"""
UpdateBranch(appId, branchName) = amplify("POST", "/apps/$appId/branches/$branchName")
UpdateBranch(appId, branchName, args) = amplify("POST", "/apps/$appId/branches/$branchName", args)
UpdateBranch(a...; b...) = UpdateBranch(a..., b)

"""
 Creates a new backend environment for an Amplify App. 
"""
CreateBackendEnvironment(appId, environmentName) = amplify("POST", "/apps/$appId/backendenvironments")
CreateBackendEnvironment(appId, environmentName, args) = amplify("POST", "/apps/$appId/backendenvironments", args)
CreateBackendEnvironment(a...; b...) = CreateBackendEnvironment(a..., b)

"""
 Retrieves a branch for an Amplify App. 
"""
GetBranch(appId, branchName) = amplify("GET", "/apps/$appId/branches/$branchName")
GetBranch(appId, branchName, args) = amplify("GET", "/apps/$appId/branches/$branchName", args)
GetBranch(a...; b...) = GetBranch(a..., b)

"""
 List domains with an app 
"""
ListDomainAssociations(appId) = amplify("GET", "/apps/$appId/domains")
ListDomainAssociations(appId, args) = amplify("GET", "/apps/$appId/domains", args)
ListDomainAssociations(a...; b...) = ListDomainAssociations(a..., b)

"""
 Creates a new Amplify App. 
"""
CreateApp(name) = amplify("POST", "/apps")
CreateApp(name, args) = amplify("POST", "/apps", args)
CreateApp(a...; b...) = CreateApp(a..., b)

"""
 Update a webhook. 
"""
UpdateWebhook(webhookId) = amplify("POST", "/webhooks/$webhookId")
UpdateWebhook(webhookId, args) = amplify("POST", "/webhooks/$webhookId", args)
UpdateWebhook(a...; b...) = UpdateWebhook(a..., b)

"""
 Retrieves domain info that corresponds to an appId and domainName. 
"""
GetDomainAssociation(appId, domainName) = amplify("GET", "/apps/$appId/domains/$domainName")
GetDomainAssociation(appId, domainName, args) = amplify("GET", "/apps/$appId/domains/$domainName", args)
GetDomainAssociation(a...; b...) = GetDomainAssociation(a..., b)

"""
 Retrieves artifact info that corresponds to a artifactId. 
"""
GetArtifactUrl(artifactId) = amplify("GET", "/artifacts/$artifactId")
GetArtifactUrl(artifactId, args) = amplify("GET", "/artifacts/$artifactId", args)
GetArtifactUrl(a...; b...) = GetArtifactUrl(a..., b)

"""
 Deletes a DomainAssociation. 
"""
DeleteDomainAssociation(appId, domainName) = amplify("DELETE", "/apps/$appId/domains/$domainName")
DeleteDomainAssociation(appId, domainName, args) = amplify("DELETE", "/apps/$appId/domains/$domainName", args)
DeleteDomainAssociation(a...; b...) = DeleteDomainAssociation(a..., b)

"""
 Lists branches for an Amplify App. 
"""
ListBranches(appId) = amplify("GET", "/apps/$appId/branches")
ListBranches(appId, args) = amplify("GET", "/apps/$appId/branches", args)
ListBranches(a...; b...) = ListBranches(a..., b)

"""
 Delete a job, for an Amplify branch, part of Amplify App. 
"""
DeleteJob(appId, branchName, jobId) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId")
DeleteJob(appId, branchName, jobId, args) = amplify("DELETE", "/apps/$appId/branches/$branchName/jobs/$jobId", args)
DeleteJob(a...; b...) = DeleteJob(a..., b)

"""
 Retrieves an existing Amplify App by appId. 
"""
GetApp(appId) = amplify("GET", "/apps/$appId")
GetApp(appId, args) = amplify("GET", "/apps/$appId", args)
GetApp(a...; b...) = GetApp(a..., b)

"""
 Deletes a branch for an Amplify App. 
"""
DeleteBranch(appId, branchName) = amplify("DELETE", "/apps/$appId/branches/$branchName")
DeleteBranch(appId, branchName, args) = amplify("DELETE", "/apps/$appId/branches/$branchName", args)
DeleteBranch(a...; b...) = DeleteBranch(a..., b)

"""
 List artifacts with an app, a branch, a job and an artifact type. 
"""
ListArtifacts(appId, branchName, jobId) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId/artifacts")
ListArtifacts(appId, branchName, jobId, args) = amplify("GET", "/apps/$appId/branches/$branchName/jobs/$jobId/artifacts", args)
ListArtifacts(a...; b...) = ListArtifacts(a..., b)

"""
 Lists backend environments for an Amplify App. 
"""
ListBackendEnvironments(appId) = amplify("GET", "/apps/$appId/backendenvironments")
ListBackendEnvironments(appId, args) = amplify("GET", "/apps/$appId/backendenvironments", args)
ListBackendEnvironments(a...; b...) = ListBackendEnvironments(a..., b)

"""
 List Jobs for a branch, part of an Amplify App. 
"""
ListJobs(appId, branchName) = amplify("GET", "/apps/$appId/branches/$branchName/jobs")
ListJobs(appId, branchName, args) = amplify("GET", "/apps/$appId/branches/$branchName/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
 Create a new DomainAssociation on an App 
"""
CreateDomainAssociation(appId, domainName, subDomainSettings) = amplify("POST", "/apps/$appId/domains")
CreateDomainAssociation(appId, domainName, subDomainSettings, args) = amplify("POST", "/apps/$appId/domains", args)
CreateDomainAssociation(a...; b...) = CreateDomainAssociation(a..., b)
