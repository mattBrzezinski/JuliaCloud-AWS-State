include("../AWSCorePrototypeServices.jl")
using .Services: sso

"""
Removes the client- and server-side session that is associated with the user.
"""
Logout(accessToken) = sso("POST", "/logout")
Logout(accessToken, args) = sso("POST", "/logout", args)
Logout(a...; b...) = Logout(a..., b)

"""
Returns the STS short-term credentials for a given role name that is assigned to the user.
"""
GetRoleCredentials(roleName, accountId, accessToken) = sso("GET", "/federation/credentials")
GetRoleCredentials(roleName, accountId, accessToken, args) = sso("GET", "/federation/credentials", args)
GetRoleCredentials(a...; b...) = GetRoleCredentials(a..., b)

"""
Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.
"""
ListAccounts(accessToken) = sso("GET", "/assignment/accounts")
ListAccounts(accessToken, args) = sso("GET", "/assignment/accounts", args)
ListAccounts(a...; b...) = ListAccounts(a..., b)

"""
Lists all roles that are assigned to the user for a given AWS account.
"""
ListAccountRoles(accessToken, accountId) = sso("GET", "/assignment/roles")
ListAccountRoles(accessToken, accountId, args) = sso("GET", "/assignment/roles", args)
ListAccountRoles(a...; b...) = ListAccountRoles(a..., b)
