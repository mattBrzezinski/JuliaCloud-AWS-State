include("../AWSCorePrototypeServices.jl")
using .Services: codeguru_reviewer

"""
Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
"""
ListRepositoryAssociations() = codeguru_reviewer("GET", "/associations")

"""
Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.

Required Parameters:
Repository
"""
AssociateRepository(args) = codeguru_reviewer("POST", "/associations", args)

"""
Removes the association between Amazon CodeGuru Reviewer and a repository.

Required Parameters:
AssociationArn
"""
DisassociateRepository(args) = codeguru_reviewer("DELETE", "/associations/{AssociationArn}", args)

"""
Describes a repository association.

Required Parameters:
AssociationArn
"""
DescribeRepositoryAssociation(args) = codeguru_reviewer("GET", "/associations/{AssociationArn}", args)
