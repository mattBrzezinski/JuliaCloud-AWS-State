include("../AWSCorePrototypeServices.jl")
using .Services: macie

"""
Removes specified S3 resources from being monitored by Amazon Macie. If memberAccountId isn't specified, the action removes specified S3 resources from Macie for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie for the specified member account.

Required Parameters:
associatedS3Resources
"""
DisassociateS3Resources(args) = macie("DisassociateS3Resources", args)

"""
Associates a specified AWS account with Amazon Macie as a member account.

Required Parameters:
memberAccountId
"""
AssociateMemberAccount(args) = macie("AssociateMemberAccount", args)

"""
Lists all Amazon Macie member accounts for the current Amazon Macie master account.
"""
ListMemberAccounts() = macie("ListMemberAccounts")

"""
Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account. 
"""
ListS3Resources() = macie("ListS3Resources")

"""
Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the specified member account. 

Required Parameters:
s3ResourcesUpdate
"""
UpdateS3Resources(args) = macie("UpdateS3Resources", args)

"""
Associates specified S3 resources with Amazon Macie for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie for the specified member account. 

Required Parameters:
s3Resources
"""
AssociateS3Resources(args) = macie("AssociateS3Resources", args)

"""
Removes the specified member account from Amazon Macie.

Required Parameters:
memberAccountId
"""
DisassociateMemberAccount(args) = macie("DisassociateMemberAccount", args)
