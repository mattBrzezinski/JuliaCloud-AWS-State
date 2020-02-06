include("../AWSCorePrototypeServices.jl")
using .Services: iot_1click_projects

"""
Lists the tags (metadata key/value pairs) which you have assigned to the resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iot_1click_projects("GET", "/tags/{resourceArn}", args)

"""
Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 

Required Parameters:
placementName, projectName
"""
DeletePlacement(args) = iot_1click_projects("DELETE", "/projects/{projectName}/placements/{placementName}", args)

"""
Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").

Required Parameters:
projectName
"""
UpdateProject(args) = iot_1click_projects("PUT", "/projects/{projectName}", args)

"""
Associates a physical device with a placement.

Required Parameters:
projectName, placementName, deviceId, deviceTemplateName
"""
AssociateDeviceWithPlacement(args) = iot_1click_projects("PUT", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

"""
Returns an object describing a project.

Required Parameters:
projectName
"""
DescribeProject(args) = iot_1click_projects("GET", "/projects/{projectName}", args)

"""
Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.

Required Parameters:
projectName
"""
CreateProject(args) = iot_1click_projects("POST", "/projects", args)

"""
Lists the placement(s) of a project.

Required Parameters:
projectName
"""
ListPlacements(args) = iot_1click_projects("GET", "/projects/{projectName}/placements", args)

"""
Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").

Required Parameters:
placementName, projectName
"""
UpdatePlacement(args) = iot_1click_projects("PUT", "/projects/{projectName}/placements/{placementName}", args)

"""
Creates an empty placement.

Required Parameters:
placementName, projectName
"""
CreatePlacement(args) = iot_1click_projects("POST", "/projects/{projectName}/placements", args)

"""
Describes a placement in a project.

Required Parameters:
placementName, projectName
"""
DescribePlacement(args) = iot_1click_projects("GET", "/projects/{projectName}/placements/{placementName}", args)

"""
Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
"""
ListProjects() = iot_1click_projects("GET", "/projects")

"""
Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iot_1click_projects("POST", "/tags/{resourceArn}", args)

"""
Removes one or more tags (metadata key/value pairs) from a resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iot_1click_projects("DELETE", "/tags/{resourceArn}", args)

"""
Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 

Required Parameters:
projectName
"""
DeleteProject(args) = iot_1click_projects("DELETE", "/projects/{projectName}", args)

"""
Removes a physical device from a placement.

Required Parameters:
projectName, placementName, deviceTemplateName
"""
DisassociateDeviceFromPlacement(args) = iot_1click_projects("DELETE", "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", args)

"""
Returns an object enumerating the devices in a placement.

Required Parameters:
projectName, placementName
"""
GetDevicesInPlacement(args) = iot_1click_projects("GET", "/projects/{projectName}/placements/{placementName}/devices", args)
