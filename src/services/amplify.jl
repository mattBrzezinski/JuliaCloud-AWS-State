include("../AWSCorePrototypeServices.jl")
using .Services: amplify

"""
 List tags for resource. 

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = amplify("GET", "/tags/{resourceArn}", args)

"""
 Stop a job that is in progress, for an Amplify branch, part of Amplify App. 

Required Parameters:
appId, branchName, jobId
"""
StopJob(args) = amplify("DELETE", "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", args)

"""
 Create a new DomainAssociation on an App 

Required Parameters:
appId, domainName, subDomainSettings
"""
UpdateDomainAssociation(args) = amplify("POST", "/apps/{appId}/domains/{domainName}", args)

"""
 Start a deployment for manual deploy apps. (Apps are not connected to repository) 

Required Parameters:
appId, branchName
"""
StartDeployment(args) = amplify("POST", "/apps/{appId}/branches/{branchName}/deployments/start", args)

"""
 Create a deployment for manual deploy apps. (Apps are not connected to repository) 

Required Parameters:
appId, branchName
"""
CreateDeployment(args) = amplify("POST", "/apps/{appId}/branches/{branchName}/deployments", args)

"""
 Retrieves webhook info that corresponds to a webhookId. 

Required Parameters:
webhookId
"""
GetWebhook(args) = amplify("GET", "/webhooks/{webhookId}", args)

"""
 Delete an existing Amplify App by appId. 

Required Parameters:
appId
"""
DeleteApp(args) = amplify("DELETE", "/apps/{appId}", args)

"""
 Retrieves a backend environment for an Amplify App. 

Required Parameters:
appId, environmentName
"""
GetBackendEnvironment(args) = amplify("GET", "/apps/{appId}/backendenvironments/{environmentName}", args)

"""
 Starts a new job for a branch, part of an Amplify App. 

Required Parameters:
appId, branchName, jobType
"""
StartJob(args) = amplify("POST", "/apps/{appId}/branches/{branchName}/jobs", args)

"""
 Lists existing Amplify Apps. 
"""
ListApps() = amplify("GET", "/apps")

"""
 Creates a new Branch for an Amplify App. 

Required Parameters:
appId, branchName
"""
CreateBranch(args) = amplify("POST", "/apps/{appId}/branches", args)

"""
 List webhooks with an app. 

Required Parameters:
appId
"""
ListWebhooks(args) = amplify("GET", "/apps/{appId}/webhooks", args)

"""
 Tag resource with tag key and value. 

Required Parameters:
resourceArn, tags
"""
TagResource(args) = amplify("POST", "/tags/{resourceArn}", args)

"""
 Delete backend environment for an Amplify App. 

Required Parameters:
appId, environmentName
"""
DeleteBackendEnvironment(args) = amplify("DELETE", "/apps/{appId}/backendenvironments/{environmentName}", args)

"""
 Create a new webhook on an App. 

Required Parameters:
appId, branchName
"""
CreateWebhook(args) = amplify("POST", "/apps/{appId}/webhooks", args)

"""
 Deletes a webhook. 

Required Parameters:
webhookId
"""
DeleteWebhook(args) = amplify("DELETE", "/webhooks/{webhookId}", args)

"""
 Retrieve website access logs for a specific time range via a pre-signed URL. 

Required Parameters:
domainName, appId
"""
GenerateAccessLogs(args) = amplify("POST", "/apps/{appId}/accesslogs", args)

"""
 Get a job for a branch, part of an Amplify App. 

Required Parameters:
appId, branchName, jobId
"""
GetJob(args) = amplify("GET", "/apps/{appId}/branches/{branchName}/jobs/{jobId}", args)

"""
 Untag resource with resourceArn. 

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = amplify("DELETE", "/tags/{resourceArn}", args)

"""
 Updates an existing Amplify App. 

Required Parameters:
appId
"""
UpdateApp(args) = amplify("POST", "/apps/{appId}", args)

"""
 Updates a branch for an Amplify App. 

Required Parameters:
appId, branchName
"""
UpdateBranch(args) = amplify("POST", "/apps/{appId}/branches/{branchName}", args)

"""
 Creates a new backend environment for an Amplify App. 

Required Parameters:
appId, environmentName
"""
CreateBackendEnvironment(args) = amplify("POST", "/apps/{appId}/backendenvironments", args)

"""
 Retrieves a branch for an Amplify App. 

Required Parameters:
appId, branchName
"""
GetBranch(args) = amplify("GET", "/apps/{appId}/branches/{branchName}", args)

"""
 List domains with an app 

Required Parameters:
appId
"""
ListDomainAssociations(args) = amplify("GET", "/apps/{appId}/domains", args)

"""
 Creates a new Amplify App. 

Required Parameters:
name
"""
CreateApp(args) = amplify("POST", "/apps", args)

"""
 Update a webhook. 

Required Parameters:
webhookId
"""
UpdateWebhook(args) = amplify("POST", "/webhooks/{webhookId}", args)

"""
 Retrieves domain info that corresponds to an appId and domainName. 

Required Parameters:
appId, domainName
"""
GetDomainAssociation(args) = amplify("GET", "/apps/{appId}/domains/{domainName}", args)

"""
 Retrieves artifact info that corresponds to a artifactId. 

Required Parameters:
artifactId
"""
GetArtifactUrl(args) = amplify("GET", "/artifacts/{artifactId}", args)

"""
 Deletes a DomainAssociation. 

Required Parameters:
appId, domainName
"""
DeleteDomainAssociation(args) = amplify("DELETE", "/apps/{appId}/domains/{domainName}", args)

"""
 Lists branches for an Amplify App. 

Required Parameters:
appId
"""
ListBranches(args) = amplify("GET", "/apps/{appId}/branches", args)

"""
 Delete a job, for an Amplify branch, part of Amplify App. 

Required Parameters:
appId, branchName, jobId
"""
DeleteJob(args) = amplify("DELETE", "/apps/{appId}/branches/{branchName}/jobs/{jobId}", args)

"""
 Retrieves an existing Amplify App by appId. 

Required Parameters:
appId
"""
GetApp(args) = amplify("GET", "/apps/{appId}", args)

"""
 Deletes a branch for an Amplify App. 

Required Parameters:
appId, branchName
"""
DeleteBranch(args) = amplify("DELETE", "/apps/{appId}/branches/{branchName}", args)

"""
 List artifacts with an app, a branch, a job and an artifact type. 

Required Parameters:
appId, branchName, jobId
"""
ListArtifacts(args) = amplify("GET", "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", args)

"""
 Lists backend environments for an Amplify App. 

Required Parameters:
appId
"""
ListBackendEnvironments(args) = amplify("GET", "/apps/{appId}/backendenvironments", args)

"""
 List Jobs for a branch, part of an Amplify App. 

Required Parameters:
appId, branchName
"""
ListJobs(args) = amplify("GET", "/apps/{appId}/branches/{branchName}/jobs", args)

"""
 Create a new DomainAssociation on an App 

Required Parameters:
appId, domainName, subDomainSettings
"""
CreateDomainAssociation(args) = amplify("POST", "/apps/{appId}/domains", args)
