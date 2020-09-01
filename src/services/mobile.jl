include("../AWSCorePrototypeServices.jl")
using .Services: mobile

"""
    ListBundles()

 List all available bundles. 

Optional Parameters
{
  "maxResults": " Maximum number of records to list in a single response. ",
  "nextToken": " Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles. "
}
"""

ListBundles() = mobile("GET", "/bundles")
ListBundles(args) = mobile("GET", "/bundles", args)

"""
    CreateProject()

 Creates an AWS Mobile Hub project. 

Optional Parameters
{
  "name": " Name of the project. ",
  "snapshotId": " Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported. ",
  "contents": " ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation. ",
  "region": " Default region where project resources should be created. "
}
"""

CreateProject() = mobile("POST", "/projects")
CreateProject(args) = mobile("POST", "/projects", args)

"""
    DescribeBundle()

 Get the bundle details for the requested bundle id. 

Required Parameters
{
  "bundleId": " Unique bundle identifier. "
}
"""
DescribeBundle(args) = mobile("GET", "/bundles/{bundleId}", args)

"""
    DeleteProject()

 Delets a project in AWS Mobile Hub. 

Required Parameters
{
  "projectId": " Unique project identifier. "
}
"""
DeleteProject(args) = mobile("DELETE", "/projects/{projectId}", args)

"""
    ExportBundle()

 Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 

Required Parameters
{
  "bundleId": " Unique bundle identifier. "
}

Optional Parameters
{
  "projectId": " Unique project identifier. ",
  "platform": " Developer desktop or target application platform. "
}
"""
ExportBundle(args) = mobile("POST", "/bundles/{bundleId}", args)

"""
    UpdateProject()

 Update an existing project. 

Required Parameters
{
  "projectId": " Unique project identifier. "
}

Optional Parameters
{
  "contents": " ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation. "
}
"""
UpdateProject(args) = mobile("POST", "/update", args)

"""
    ListProjects()

 Lists projects in AWS Mobile Hub. 

Optional Parameters
{
  "maxResults": " Maximum number of records to list in a single response. ",
  "nextToken": " Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects. "
}
"""

ListProjects() = mobile("GET", "/projects")
ListProjects(args) = mobile("GET", "/projects", args)

"""
    ExportProject()

 Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 

Required Parameters
{
  "projectId": " Unique project identifier. "
}
"""
ExportProject(args) = mobile("POST", "/exports/{projectId}", args)

"""
    DescribeProject()

 Gets details about a project in AWS Mobile Hub. 

Required Parameters
{
  "projectId": " Unique project identifier. "
}

Optional Parameters
{
  "syncFromResources": " If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project. "
}
"""
DescribeProject(args) = mobile("GET", "/project", args)