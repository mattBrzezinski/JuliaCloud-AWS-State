include("../AWSCorePrototypeServices.jl")
using .Services: cloud9

"""
    ListTagsForResource()

Gets a list of the tags associated with an AWS Cloud9 development environment.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to get the tags for."
}
"""
ListTagsForResource(args) = cloud9("ListTagsForResource", args)

"""
    CreateEnvironmentEC2()

Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.

Required Parameters
{
  "name": "The name of the environment to create. This name is visible to other AWS IAM users in the same AWS account.",
  "instanceType": "The type of instance to connect to the environment (for example, t2.micro)."
}

Optional Parameters
{
  "automaticStopTimeMinutes": "The number of minutes until the running instance is shut down after the environment has last been used.",
  "ownerArn": "The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.",
  "clientRequestToken": "A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time. For more information, see Client Tokens in the Amazon EC2 API Reference.",
  "connectionType": "The connection type used for connecting to an Amazon EC2 environment.",
  "tags": "An array of key-value pairs that will be associated with the new AWS Cloud9 development environment.",
  "description": "The description of the environment to create.",
  "subnetId": "The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance."
}
"""
CreateEnvironmentEC2(args) = cloud9("CreateEnvironmentEC2", args)

"""
    DescribeEnvironmentMemberships()

Gets information about environment members for an AWS Cloud9 development environment.

Optional Parameters
{
  "userArn": "The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.",
  "maxResults": "The maximum number of environment members to get information about.",
  "permissions": "The type of environment member permissions to get information about. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.   If no value is specified, information about all environment members are returned.",
  "environmentId": "The ID of the environment to get environment member information about.",
  "nextToken": "During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned."
}
"""

DescribeEnvironmentMemberships() = cloud9("DescribeEnvironmentMemberships")
DescribeEnvironmentMemberships(args) = cloud9("DescribeEnvironmentMemberships", args)

"""
    CreateEnvironmentMembership()

Adds an environment member to an AWS Cloud9 development environment.

Required Parameters
{
  "userArn": "The Amazon Resource Name (ARN) of the environment member you want to add.",
  "permissions": "The type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  ",
  "environmentId": "The ID of the environment that contains the environment member you want to add."
}
"""
CreateEnvironmentMembership(args) = cloud9("CreateEnvironmentMembership", args)

"""
    DescribeEnvironments()

Gets information about AWS Cloud9 development environments.

Required Parameters
{
  "environmentIds": "The IDs of individual environments to get information about."
}
"""
DescribeEnvironments(args) = cloud9("DescribeEnvironments", args)

"""
    UntagResource()

Removes tags from an AWS Cloud9 development environment.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to remove tags from.",
  "TagKeys": "The tag names of the tags to remove from the given AWS Cloud9 development environment."
}
"""
UntagResource(args) = cloud9("UntagResource", args)

"""
    DescribeEnvironmentStatus()

Gets status information for an AWS Cloud9 development environment.

Required Parameters
{
  "environmentId": "The ID of the environment to get status information about."
}
"""
DescribeEnvironmentStatus(args) = cloud9("DescribeEnvironmentStatus", args)

"""
    TagResource()

Adds tags to an AWS Cloud9 development environment.  Tags that you add to an AWS Cloud9 environment by using this method will NOT be automatically propagated to underlying resources. 

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to add tags to.",
  "Tags": "The list of tags to add to the given AWS Cloud9 development environment."
}
"""
TagResource(args) = cloud9("TagResource", args)

"""
    DeleteEnvironment()

Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.

Required Parameters
{
  "environmentId": "The ID of the environment to delete."
}
"""
DeleteEnvironment(args) = cloud9("DeleteEnvironment", args)

"""
    ListEnvironments()

Gets a list of AWS Cloud9 development environment identifiers.

Optional Parameters
{
  "maxResults": "The maximum number of environments to get identifiers for.",
  "nextToken": "During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned."
}
"""

ListEnvironments() = cloud9("ListEnvironments")
ListEnvironments(args) = cloud9("ListEnvironments", args)

"""
    UpdateEnvironment()

Changes the settings of an existing AWS Cloud9 development environment.

Required Parameters
{
  "environmentId": "The ID of the environment to change settings."
}

Optional Parameters
{
  "name": "A replacement name for the environment.",
  "description": "Any new or replacement description for the environment."
}
"""
UpdateEnvironment(args) = cloud9("UpdateEnvironment", args)

"""
    UpdateEnvironmentMembership()

Changes the settings of an existing environment member for an AWS Cloud9 development environment.

Required Parameters
{
  "userArn": "The Amazon Resource Name (ARN) of the environment member whose settings you want to change.",
  "permissions": "The replacement type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  ",
  "environmentId": "The ID of the environment for the environment member whose settings you want to change."
}
"""
UpdateEnvironmentMembership(args) = cloud9("UpdateEnvironmentMembership", args)

"""
    DeleteEnvironmentMembership()

Deletes an environment member from an AWS Cloud9 development environment.

Required Parameters
{
  "userArn": "The Amazon Resource Name (ARN) of the environment member to delete from the environment.",
  "environmentId": "The ID of the environment to delete the environment member from."
}
"""
DeleteEnvironmentMembership(args) = cloud9("DeleteEnvironmentMembership", args)