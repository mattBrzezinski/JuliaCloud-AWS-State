include("../AWSCorePrototypeServices.jl")
using .Services: sso_oidc

"""
Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.

Required Parameters:
clientId, clientSecret, grantType, deviceCode
"""
CreateToken(args) = sso_oidc("POST", "/token", args)

"""
Initiates device authorization by requesting a pair of verification codes from the authorization service.

Required Parameters:
clientId, clientSecret, startUrl
"""
StartDeviceAuthorization(args) = sso_oidc("POST", "/device_authorization", args)

"""
Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.

Required Parameters:
clientName, clientType
"""
RegisterClient(args) = sso_oidc("POST", "/client/register", args)
