include("../AWSCorePrototypeServices.jl")
using .Services: sso_oidc

"""
Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
"""
CreateToken(clientId, clientSecret, grantType, deviceCode) = sso_oidc("POST", "/token")
CreateToken(clientId, clientSecret, grantType, deviceCode, args) = sso_oidc("POST", "/token", args)
CreateToken(a...; b...) = CreateToken(a..., b)

"""
Initiates device authorization by requesting a pair of verification codes from the authorization service.
"""
StartDeviceAuthorization(clientId, clientSecret, startUrl) = sso_oidc("POST", "/device_authorization")
StartDeviceAuthorization(clientId, clientSecret, startUrl, args) = sso_oidc("POST", "/device_authorization", args)
StartDeviceAuthorization(a...; b...) = StartDeviceAuthorization(a..., b)

"""
Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
"""
RegisterClient(clientName, clientType) = sso_oidc("POST", "/client/register")
RegisterClient(clientName, clientType, args) = sso_oidc("POST", "/client/register", args)
RegisterClient(a...; b...) = RegisterClient(a..., b)
