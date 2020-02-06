include("../AWSCorePrototypeServices.jl")
using .Services: mobile

"""
 List all available bundles. 
"""
ListBundles() = mobile("GET", "/bundles")

"""
 Creates an AWS Mobile Hub project. 
"""
CreateProject() = mobile("POST", "/projects")

"""
 Get the bundle details for the requested bundle id. 

Required Parameters:
bundleId
"""
DescribeBundle(args) = mobile("GET", "/bundles/{bundleId}", args)

"""
 Delets a project in AWS Mobile Hub. 

Required Parameters:
projectId
"""
DeleteProject(args) = mobile("DELETE", "/projects/{projectId}", args)

"""
 Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 

Required Parameters:
bundleId
"""
ExportBundle(args) = mobile("POST", "/bundles/{bundleId}", args)

"""
 Update an existing project. 

Required Parameters:
projectId
"""
UpdateProject(args) = mobile("POST", "/update", args)

"""
 Lists projects in AWS Mobile Hub. 
"""
ListProjects() = mobile("GET", "/projects")

"""
 Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 

Required Parameters:
projectId
"""
ExportProject(args) = mobile("POST", "/exports/{projectId}", args)

"""
 Gets details about a project in AWS Mobile Hub. 

Required Parameters:
projectId
"""
DescribeProject(args) = mobile("GET", "/project", args)
