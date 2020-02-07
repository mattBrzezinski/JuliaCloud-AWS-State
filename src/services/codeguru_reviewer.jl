include("../AWSCorePrototypeServices.jl")
using .Services: codeguru_reviewer

"""
Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
"""
ListRepositoryAssociations() = codeguru_reviewer("GET", "/associations")
ListRepositoryAssociations(, args) = codeguru_reviewer("GET", "/associations", args)
ListRepositoryAssociations(a...; b...) = ListRepositoryAssociations(a..., b)

"""
Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.
"""
AssociateRepository(Repository) = codeguru_reviewer("POST", "/associations")
AssociateRepository(Repository, args) = codeguru_reviewer("POST", "/associations", args)
AssociateRepository(a...; b...) = AssociateRepository(a..., b)

"""
Removes the association between Amazon CodeGuru Reviewer and a repository.
"""
DisassociateRepository(AssociationArn) = codeguru_reviewer("DELETE", "/associations/$AssociationArn")
DisassociateRepository(AssociationArn, args) = codeguru_reviewer("DELETE", "/associations/$AssociationArn", args)
DisassociateRepository(a...; b...) = DisassociateRepository(a..., b)

"""
Describes a repository association.
"""
DescribeRepositoryAssociation(AssociationArn) = codeguru_reviewer("GET", "/associations/$AssociationArn")
DescribeRepositoryAssociation(AssociationArn, args) = codeguru_reviewer("GET", "/associations/$AssociationArn", args)
DescribeRepositoryAssociation(a...; b...) = DescribeRepositoryAssociation(a..., b)
