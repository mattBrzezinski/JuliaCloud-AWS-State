include("../AWSCorePrototypeServices.jl")
using .Services: cloud9

"""
Adds an environment member to an AWS Cloud9 development environment.

Required Parameters:
environmentId, userArn, permissions
"""
CreateEnvironmentMembership(args) = cloud9("CreateEnvironmentMembership", args)

"""
Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.

Required Parameters:
name, instanceType
"""
CreateEnvironmentEC2(args) = cloud9("CreateEnvironmentEC2", args)

"""
Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.

Required Parameters:
environmentId
"""
DeleteEnvironment(args) = cloud9("DeleteEnvironment", args)

"""
Gets information about AWS Cloud9 development environments.

Required Parameters:
environmentIds
"""
DescribeEnvironments(args) = cloud9("DescribeEnvironments", args)

"""
Gets a list of AWS Cloud9 development environment identifiers.
"""
ListEnvironments() = cloud9("ListEnvironments")

"""
Deletes an environment member from an AWS Cloud9 development environment.

Required Parameters:
environmentId, userArn
"""
DeleteEnvironmentMembership(args) = cloud9("DeleteEnvironmentMembership", args)

"""
Changes the settings of an existing AWS Cloud9 development environment.

Required Parameters:
environmentId
"""
UpdateEnvironment(args) = cloud9("UpdateEnvironment", args)

"""
Gets information about environment members for an AWS Cloud9 development environment.
"""
DescribeEnvironmentMemberships() = cloud9("DescribeEnvironmentMemberships")

"""
Changes the settings of an existing environment member for an AWS Cloud9 development environment.

Required Parameters:
environmentId, userArn, permissions
"""
UpdateEnvironmentMembership(args) = cloud9("UpdateEnvironmentMembership", args)

"""
Gets status information for an AWS Cloud9 development environment.

Required Parameters:
environmentId
"""
DescribeEnvironmentStatus(args) = cloud9("DescribeEnvironmentStatus", args)
