include("../AWSCorePrototypeServices.jl")
using .Services: iot_1click_projects

"""
Lists the tags (metadata key/value pairs) which you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot_1click_projects("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = iot_1click_projects("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
"""
DeletePlacement(placementName, projectName) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName")
DeletePlacement(placementName, projectName, args) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName", args)
DeletePlacement(a...; b...) = DeletePlacement(a..., b)

"""
Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
"""
UpdateProject(projectName) = iot_1click_projects("PUT", "/projects/$projectName")
UpdateProject(projectName, args) = iot_1click_projects("PUT", "/projects/$projectName", args)
UpdateProject(a...; b...) = UpdateProject(a..., b)

"""
Associates a physical device with a placement.
"""
AssociateDeviceWithPlacement(projectName, placementName, deviceId, deviceTemplateName) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName")
AssociateDeviceWithPlacement(projectName, placementName, deviceId, deviceTemplateName, args) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName", args)
AssociateDeviceWithPlacement(a...; b...) = AssociateDeviceWithPlacement(a..., b)

"""
Returns an object describing a project.
"""
DescribeProject(projectName) = iot_1click_projects("GET", "/projects/$projectName")
DescribeProject(projectName, args) = iot_1click_projects("GET", "/projects/$projectName", args)
DescribeProject(a...; b...) = DescribeProject(a..., b)

"""
Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
"""
CreateProject(projectName) = iot_1click_projects("POST", "/projects")
CreateProject(projectName, args) = iot_1click_projects("POST", "/projects", args)
CreateProject(a...; b...) = CreateProject(a..., b)

"""
Lists the placement(s) of a project.
"""
ListPlacements(projectName) = iot_1click_projects("GET", "/projects/$projectName/placements")
ListPlacements(projectName, args) = iot_1click_projects("GET", "/projects/$projectName/placements", args)
ListPlacements(a...; b...) = ListPlacements(a..., b)

"""
Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
"""
UpdatePlacement(placementName, projectName) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName")
UpdatePlacement(placementName, projectName, args) = iot_1click_projects("PUT", "/projects/$projectName/placements/$placementName", args)
UpdatePlacement(a...; b...) = UpdatePlacement(a..., b)

"""
Creates an empty placement.
"""
CreatePlacement(placementName, projectName) = iot_1click_projects("POST", "/projects/$projectName/placements")
CreatePlacement(placementName, projectName, args) = iot_1click_projects("POST", "/projects/$projectName/placements", args)
CreatePlacement(a...; b...) = CreatePlacement(a..., b)

"""
Describes a placement in a project.
"""
DescribePlacement(placementName, projectName) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName")
DescribePlacement(placementName, projectName, args) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName", args)
DescribePlacement(a...; b...) = DescribePlacement(a..., b)

"""
Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
"""
ListProjects() = iot_1click_projects("GET", "/projects")
ListProjects(, args) = iot_1click_projects("GET", "/projects", args)
ListProjects(a...; b...) = ListProjects(a..., b)

"""
Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
"""
TagResource(resourceArn, tags) = iot_1click_projects("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = iot_1click_projects("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes one or more tags (metadata key/value pairs) from a resource.
"""
UntagResource(resourceArn, tagKeys) = iot_1click_projects("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = iot_1click_projects("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
"""
DeleteProject(projectName) = iot_1click_projects("DELETE", "/projects/$projectName")
DeleteProject(projectName, args) = iot_1click_projects("DELETE", "/projects/$projectName", args)
DeleteProject(a...; b...) = DeleteProject(a..., b)

"""
Removes a physical device from a placement.
"""
DisassociateDeviceFromPlacement(projectName, placementName, deviceTemplateName) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName")
DisassociateDeviceFromPlacement(projectName, placementName, deviceTemplateName, args) = iot_1click_projects("DELETE", "/projects/$projectName/placements/$placementName/devices/$deviceTemplateName", args)
DisassociateDeviceFromPlacement(a...; b...) = DisassociateDeviceFromPlacement(a..., b)

"""
Returns an object enumerating the devices in a placement.
"""
GetDevicesInPlacement(projectName, placementName) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName/devices")
GetDevicesInPlacement(projectName, placementName, args) = iot_1click_projects("GET", "/projects/$projectName/placements/$placementName/devices", args)
GetDevicesInPlacement(a...; b...) = GetDevicesInPlacement(a..., b)
