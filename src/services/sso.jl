include("../AWSCorePrototypeServices.jl")
using .Services: sso

"""
Removes the client- and server-side session that is associated with the user.

Required Parameters:
accessToken
"""
Logout(args) = sso("POST", "/logout", args)

"""
Returns the STS short-term credentials for a given role name that is assigned to the user.

Required Parameters:
roleName, accountId, accessToken
"""
GetRoleCredentials(args) = sso("GET", "/federation/credentials", args)

"""
Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.

Required Parameters:
accessToken
"""
ListAccounts(args) = sso("GET", "/assignment/accounts", args)

"""
Lists all roles that are assigned to the user for a given AWS account.

Required Parameters:
accessToken, accountId
"""
ListAccountRoles(args) = sso("GET", "/assignment/roles", args)
