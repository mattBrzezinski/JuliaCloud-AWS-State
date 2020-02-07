include("../AWSCorePrototypeServices.jl")
using .Services: mobile

"""
 List all available bundles. 
"""
ListBundles() = mobile("GET", "/bundles")
ListBundles(, args) = mobile("GET", "/bundles", args)
ListBundles(a...; b...) = ListBundles(a..., b)

"""
 Creates an AWS Mobile Hub project. 
"""
CreateProject() = mobile("POST", "/projects")
CreateProject(, args) = mobile("POST", "/projects", args)
CreateProject(a...; b...) = CreateProject(a..., b)

"""
 Get the bundle details for the requested bundle id. 
"""
DescribeBundle(bundleId) = mobile("GET", "/bundles/$bundleId")
DescribeBundle(bundleId, args) = mobile("GET", "/bundles/$bundleId", args)
DescribeBundle(a...; b...) = DescribeBundle(a..., b)

"""
 Delets a project in AWS Mobile Hub. 
"""
DeleteProject(projectId) = mobile("DELETE", "/projects/$projectId")
DeleteProject(projectId, args) = mobile("DELETE", "/projects/$projectId", args)
DeleteProject(a...; b...) = DeleteProject(a..., b)

"""
 Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 
"""
ExportBundle(bundleId) = mobile("POST", "/bundles/$bundleId")
ExportBundle(bundleId, args) = mobile("POST", "/bundles/$bundleId", args)
ExportBundle(a...; b...) = ExportBundle(a..., b)

"""
 Update an existing project. 
"""
UpdateProject(projectId) = mobile("POST", "/update")
UpdateProject(projectId, args) = mobile("POST", "/update", args)
UpdateProject(a...; b...) = UpdateProject(a..., b)

"""
 Lists projects in AWS Mobile Hub. 
"""
ListProjects() = mobile("GET", "/projects")
ListProjects(, args) = mobile("GET", "/projects", args)
ListProjects(a...; b...) = ListProjects(a..., b)

"""
 Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 
"""
ExportProject(projectId) = mobile("POST", "/exports/$projectId")
ExportProject(projectId, args) = mobile("POST", "/exports/$projectId", args)
ExportProject(a...; b...) = ExportProject(a..., b)

"""
 Gets details about a project in AWS Mobile Hub. 
"""
DescribeProject(projectId) = mobile("GET", "/project")
DescribeProject(projectId, args) = mobile("GET", "/project", args)
DescribeProject(a...; b...) = DescribeProject(a..., b)
