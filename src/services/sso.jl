include("../AWSCorePrototypeServices.jl")
using .Services: sso

"""
    Logout()

Removes the client- and server-side session that is associated with the user.

Required Parameters
{
  "accessToken": "The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide."
}
"""
Logout(args) = sso("POST", "/logout", args)

"""
    GetRoleCredentials()

Returns the STS short-term credentials for a given role name that is assigned to the user.

Required Parameters
{
  "roleName": "The friendly name of the role that is assigned to the user.",
  "accessToken": "The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.",
  "accountId": "The identifier for the AWS account that is assigned to the user."
}
"""
GetRoleCredentials(args) = sso("GET", "/federation/credentials", args)

"""
    ListAccounts()

Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.

Required Parameters
{
  "accessToken": "The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide."
}

Optional Parameters
{
  "maxResults": "This is the number of items clients can request per page.",
  "nextToken": "(Optional) When requesting subsequent pages, this is the page token from the previous response output."
}
"""
ListAccounts(args) = sso("GET", "/assignment/accounts", args)

"""
    ListAccountRoles()

Lists all roles that are assigned to the user for a given AWS account.

Required Parameters
{
  "accessToken": "The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.",
  "accountId": "The identifier for the AWS account that is assigned to the user."
}

Optional Parameters
{
  "maxResults": "The number of items that clients can request per page.",
  "nextToken": "The page token from the previous response output when you request subsequent pages."
}
"""
ListAccountRoles(args) = sso("GET", "/assignment/roles", args)