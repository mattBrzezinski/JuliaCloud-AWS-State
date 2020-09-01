include("../AWSCorePrototypeServices.jl")
using .Services: iot_1click_projects

"""
    ListTagsForResource()

Lists the tags (metadata key/value pairs) which you have assigned to the resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource whose tags you want to list."
}
"""
ListTagsForResource(args) = iot_1click_projects("GET", "/tags/{resourceArn}", args)

"""
    DeletePlacement()

Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 

Required Parameters
{
  "projectName": "The project containing the empty placement to delete.",
  "placementName": "The name of the empty placement to delete."
}
"""
DeletePlacement(args) = iot_1click_projects("DELETE", "/projects/{projectName}/placements/{placementName}", args)

"""
    UpdateProject()

Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").

Required Parameters
{
  "projectName": "The name of the project to be updated."
}

Optional Parameters
{
  "placementTemplate": "An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given placementTemplate, you can update the associated callbackOverrides for the device definition using this API.",
  "description": "An optional user-defined description for the project."
}
"""
UpdateProject(args) = iot_1click_projects("PUT", "/projects/{projectName}", args)

"""
    AssociateDeviceWithPlacement()

Associates a physical device with a placement.

Required Parameters
{
  "deviceTemplateName": "The device template name to associate with the device ID.",
  "projectName": "The name of the project containing the placement in which to associate the device.",
  "placementName": "The name of the placement in which to associate the device.",
  "deviceId": "The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all deviceId values."
}
"""
AssociateDeviceWithPlacement(args) = iot_1click_projects("PUT", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

"""
    DescribeProject()

Returns an object describing a project.

Required Parameters
{
  "projectName": "The name of the project to be described."
}
"""
DescribeProject(args) = iot_1click_projects("GET", "/projects/{projectName}", args)

"""
    CreateProject()

Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.

Required Parameters
{
  "projectName": "The name of the project to create."
}

Optional Parameters
{
  "placementTemplate": "The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update callbackOverrides for the device templates using the UpdateProject API.",
  "tags": "Optional tags (metadata key/value pairs) to be associated with the project. For example, { {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see AWS Tagging Strategies.",
  "description": "An optional description for the project."
}
"""
CreateProject(args) = iot_1click_projects("POST", "/projects", args)

"""
    ListPlacements()

Lists the placement(s) of a project.

Required Parameters
{
  "projectName": "The project containing the placements to be listed."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return per request. If not set, a default value of 100 is used.",
  "nextToken": "The token to retrieve the next set of results."
}
"""
ListPlacements(args) = iot_1click_projects("GET", "/projects/{projectName}/placements", args)

"""
    UpdatePlacement()

Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").

Required Parameters
{
  "projectName": "The name of the project containing the placement to be updated.",
  "placementName": "The name of the placement to update."
}

Optional Parameters
{
  "attributes": "The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50."
}
"""
UpdatePlacement(args) = iot_1click_projects("PUT", "/projects/{projectName}/placements/{placementName}", args)

"""
    CreatePlacement()

Creates an empty placement.

Required Parameters
{
  "projectName": "The name of the project in which to create the placement.",
  "placementName": "The name of the placement to be created."
}

Optional Parameters
{
  "attributes": "Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement."
}
"""
CreatePlacement(args) = iot_1click_projects("POST", "/projects/{projectName}/placements", args)

"""
    DescribePlacement()

Describes a placement in a project.

Required Parameters
{
  "projectName": "The project containing the placement to be described.",
  "placementName": "The name of the placement within a project."
}
"""
DescribePlacement(args) = iot_1click_projects("GET", "/projects/{projectName}/placements/{placementName}", args)

"""
    ListProjects()

Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.

Optional Parameters
{
  "maxResults": "The maximum number of results to return per request. If not set, a default value of 100 is used.",
  "nextToken": "The token to retrieve the next set of results."
}
"""

ListProjects() = iot_1click_projects("GET", "/projects")
ListProjects(args) = iot_1click_projects("GET", "/projects", args)

"""
    TagResource()

Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.

Required Parameters
{
  "resourceArn": "The ARN of the resouce for which tag(s) should be added or modified.",
  "tags": "The new or modifying tag(s) for the resource. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per resource."
}
"""
TagResource(args) = iot_1click_projects("POST", "/tags/{resourceArn}", args)

"""
    UntagResource()

Removes one or more tags (metadata key/value pairs) from a resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource whose tag you want to remove.",
  "tagKeys": "The keys of those tags which you want to remove."
}
"""
UntagResource(args) = iot_1click_projects("DELETE", "/tags/{resourceArn}", args)

"""
    DeleteProject()

Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 

Required Parameters
{
  "projectName": "The name of the empty project to delete."
}
"""
DeleteProject(args) = iot_1click_projects("DELETE", "/projects/{projectName}", args)

"""
    DisassociateDeviceFromPlacement()

Removes a physical device from a placement.

Required Parameters
{
  "deviceTemplateName": "The device ID that should be removed from the placement.",
  "projectName": "The name of the project that contains the placement.",
  "placementName": "The name of the placement that the device should be removed from."
}
"""
DisassociateDeviceFromPlacement(args) = iot_1click_projects("DELETE", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

"""
    GetDevicesInPlacement()

Returns an object enumerating the devices in a placement.

Required Parameters
{
  "projectName": "The name of the project containing the placement.",
  "placementName": "The name of the placement to get the devices from."
}
"""
GetDevicesInPlacement(args) = iot_1click_projects("GET", "/projects/{projectName}/placements/{placementName}/devices", args)