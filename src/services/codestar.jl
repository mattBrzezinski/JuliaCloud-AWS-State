include("../AWSCorePrototypeServices.jl")
using .Services: codestar

"""
Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.

Required Parameters:
projectId, userArn
"""
UpdateTeamMember(args) = codestar("UpdateTeamMember", args)

"""
Lists all the user profiles configured for your AWS account in AWS CodeStar.
"""
ListUserProfiles() = codestar("ListUserProfiles")

"""
Updates a project in AWS CodeStar.

Required Parameters:
id
"""
UpdateProject(args) = codestar("UpdateProject", args)

"""
Adds an IAM user to the team for an AWS CodeStar project.

Required Parameters:
projectId, userArn, projectRole
"""
AssociateTeamMember(args) = codestar("AssociateTeamMember", args)

"""
Describes a project and its resources.

Required Parameters:
id
"""
DescribeProject(args) = codestar("DescribeProject", args)

"""
Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.

Required Parameters:
userArn
"""
DeleteUserProfile(args) = codestar("DeleteUserProfile", args)

"""
Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.

Required Parameters:
name, id
"""
CreateProject(args) = codestar("CreateProject", args)

"""
Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.

Required Parameters:
projectId, userArn
"""
DisassociateTeamMember(args) = codestar("DisassociateTeamMember", args)

"""
Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.

Required Parameters:
userArn, displayName, emailAddress
"""
CreateUserProfile(args) = codestar("CreateUserProfile", args)

"""
Gets the tags for a project.

Required Parameters:
id
"""
ListTagsForProject(args) = codestar("ListTagsForProject", args)

"""
Lists all projects in AWS CodeStar associated with your AWS account.
"""
ListProjects() = codestar("ListProjects")

"""
Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.

Required Parameters:
id
"""
DeleteProject(args) = codestar("DeleteProject", args)

"""
Removes tags from a project.

Required Parameters:
id, tags
"""
UntagProject(args) = codestar("UntagProject", args)

"""
Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar. 

Required Parameters:
userArn
"""
UpdateUserProfile(args) = codestar("UpdateUserProfile", args)

"""
Adds tags to a project.

Required Parameters:
id, tags
"""
TagProject(args) = codestar("TagProject", args)

"""
Describes a user in AWS CodeStar and the user attributes across all projects.

Required Parameters:
userArn
"""
DescribeUserProfile(args) = codestar("DescribeUserProfile", args)

"""
Lists resources associated with a project in AWS CodeStar.

Required Parameters:
projectId
"""
ListResources(args) = codestar("ListResources", args)

"""
Lists all team members associated with a project.

Required Parameters:
projectId
"""
ListTeamMembers(args) = codestar("ListTeamMembers", args)
