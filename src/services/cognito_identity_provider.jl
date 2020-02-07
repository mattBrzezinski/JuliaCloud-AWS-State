include("../AWSCorePrototypeServices.jl")
using .Services: cognito_identity_provider

"""
Gets the device.

Required Parameters:
DeviceKey
"""
GetDevice(args) = cognito_identity_provider("GetDevice", args)

"""
Deletes a group. Currently only groups with no members can be deleted. Calling this action requires developer credentials.

Required Parameters:
GroupName, UserPoolId
"""
DeleteGroup(args) = cognito_identity_provider("DeleteGroup", args)

"""
Gets a group. Calling this action requires developer credentials.

Required Parameters:
GroupName, UserPoolId
"""
GetGroup(args) = cognito_identity_provider("GetGroup", args)

"""
Removes the specified user from the specified group. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, GroupName
"""
AdminRemoveUserFromGroup(args) = cognito_identity_provider("AdminRemoveUserFromGroup", args)

"""
 This action is no longer supported. You can use it to configure only SMS MFA. You can't use it to configure TOTP software token MFA. To configure either type of MFA, use the SetUserMFAPreference action instead.

Required Parameters:
AccessToken, MFAOptions
"""
SetUserSettings(args) = cognito_identity_provider("SetUserSettings", args)

"""
Lists the user pools associated with an AWS account.

Required Parameters:
MaxResults
"""
ListUserPools(args) = cognito_identity_provider("ListUserPools", args)

"""
Responds to the authentication challenge.

Required Parameters:
ClientId, ChallengeName
"""
RespondToAuthChallenge(args) = cognito_identity_provider("RespondToAuthChallenge", args)

"""
Gets the user pool multi-factor authentication (MFA) configuration.

Required Parameters:
UserPoolId
"""
GetUserPoolMfaConfig(args) = cognito_identity_provider("GetUserPoolMfaConfig", args)

"""
Lists the clients that have been created for the specified user pool.

Required Parameters:
UserPoolId
"""
ListUserPoolClients(args) = cognito_identity_provider("ListUserPoolClients", args)

"""
Gets information about a specific identity provider.

Required Parameters:
UserPoolId, ProviderName
"""
DescribeIdentityProvider(args) = cognito_identity_provider("DescribeIdentityProvider", args)

"""
Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria. Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of a user pool, one for testing and another for production, you might assign an Environment tag key to both user pools. The value of this key might be Test for one user pool and Production for the other. Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your user pools. In an IAM policy, you can constrain permissions for user pools based on specific tags or tag values. You can use this action up to 5 times per second, per account. A user pool can have as many as 50 tags.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = cognito_identity_provider("TagResource", args)

"""
Deletes the attributes for a user.

Required Parameters:
UserAttributeNames, AccessToken
"""
DeleteUserAttributes(args) = cognito_identity_provider("DeleteUserAttributes", args)

"""
Lists information about all identity providers for a user pool.

Required Parameters:
UserPoolId
"""
ListIdentityProviders(args) = cognito_identity_provider("ListIdentityProviders", args)

"""
Gets the specified identity provider.

Required Parameters:
UserPoolId, IdpIdentifier
"""
GetIdentityProviderByIdentifier(args) = cognito_identity_provider("GetIdentityProviderByIdentifier", args)

"""
This method takes a user pool ID, and returns the signing certificate.

Required Parameters:
UserPoolId
"""
GetSigningCertificate(args) = cognito_identity_provider("GetSigningCertificate", args)

"""
Lists the resource servers for a user pool.

Required Parameters:
UserPoolId
"""
ListResourceServers(args) = cognito_identity_provider("ListResourceServers", args)

"""
Stops the user import job.

Required Parameters:
UserPoolId, JobId
"""
StopUserImportJob(args) = cognito_identity_provider("StopUserImportJob", args)

"""
Updates the name and scopes of resource server. All other fields are read-only.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters:
UserPoolId, Identifier, Name
"""
UpdateResourceServer(args) = cognito_identity_provider("UpdateResourceServer", args)

"""
Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the Username parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, InvalidParameterException is thrown. To use the confirmation code for resetting the password, call .

Required Parameters:
ClientId, Username
"""
ForgotPassword(args) = cognito_identity_provider("ForgotPassword", args)

"""
Lists the users in the specified group. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, GroupName
"""
ListUsersInGroup(args) = cognito_identity_provider("ListUsersInGroup", args)

"""
Adds additional user attributes to the user pool schema.

Required Parameters:
UserPoolId, CustomAttributes
"""
AddCustomAttributes(args) = cognito_identity_provider("AddCustomAttributes", args)

"""
Gets the user attribute verification code for the specified attribute name.

Required Parameters:
AccessToken, AttributeName
"""
GetUserAttributeVerificationCode(args) = cognito_identity_provider("GetUserAttributeVerificationCode", args)

"""
Resends the confirmation (for confirmation of registration) to a specific user in the user pool.

Required Parameters:
ClientId, Username
"""
ResendConfirmationCode(args) = cognito_identity_provider("ResendConfirmationCode", args)

"""
Creates a new Amazon Cognito user pool and sets the password policy for the pool.

Required Parameters:
PoolName
"""
CreateUserPool(args) = cognito_identity_provider("CreateUserPool", args)

"""
Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.

Required Parameters:
UserCode
"""
VerifySoftwareToken(args) = cognito_identity_provider("VerifySoftwareToken", args)

"""
Deletes an identity provider for a user pool.

Required Parameters:
UserPoolId, ProviderName
"""
DeleteIdentityProvider(args) = cognito_identity_provider("DeleteIdentityProvider", args)

"""
Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

Required Parameters:
UserPoolId, Username, EventId, FeedbackValue
"""
AdminUpdateAuthEventFeedback(args) = cognito_identity_provider("AdminUpdateAuthEventFeedback", args)

"""
Creates a new domain for a user pool.

Required Parameters:
Domain, UserPoolId
"""
CreateUserPoolDomain(args) = cognito_identity_provider("CreateUserPoolDomain", args)

"""
Forgets the specified device.

Required Parameters:
DeviceKey
"""
ForgetDevice(args) = cognito_identity_provider("ForgetDevice", args)

"""
Lists the user import jobs.

Required Parameters:
UserPoolId, MaxResults
"""
ListUserImportJobs(args) = cognito_identity_provider("ListUserImportJobs", args)

"""
Allows the developer to delete the user pool client.

Required Parameters:
UserPoolId, ClientId
"""
DeleteUserPoolClient(args) = cognito_identity_provider("DeleteUserPoolClient", args)

"""
Lists the devices.

Required Parameters:
AccessToken
"""
ListDevices(args) = cognito_identity_provider("ListDevices", args)

"""
Deletes a domain for a user pool.

Required Parameters:
Domain, UserPoolId
"""
DeleteUserPoolDomain(args) = cognito_identity_provider("DeleteUserPoolDomain", args)

"""
Responds to an authentication challenge, as an administrator. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, ClientId, ChallengeName
"""
AdminRespondToAuthChallenge(args) = cognito_identity_provider("AdminRespondToAuthChallenge", args)

"""
Configures actions on detected risks. To delete the risk configuration for UserPoolId or ClientId, pass null values for all four configuration types. To enable Amazon Cognito advanced security features, update the user pool to include the UserPoolAddOns keyAdvancedSecurityMode. See .

Required Parameters:
UserPoolId
"""
SetRiskConfiguration(args) = cognito_identity_provider("SetRiskConfiguration", args)

"""
Allows a user to update a specific attribute (one at a time).

Required Parameters:
UserAttributes, AccessToken
"""
UpdateUserAttributes(args) = cognito_identity_provider("UpdateUserAttributes", args)

"""
Changes the password for a specified user in a user pool.

Required Parameters:
PreviousPassword, ProposedPassword, AccessToken
"""
ChangePassword(args) = cognito_identity_provider("ChangePassword", args)

"""
Adds the specified user to the specified group. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, GroupName
"""
AdminAddUserToGroup(args) = cognito_identity_provider("AdminAddUserToGroup", args)

"""
Set the user pool multi-factor authentication (MFA) configuration.

Required Parameters:
UserPoolId
"""
SetUserPoolMfaConfig(args) = cognito_identity_provider("SetUserPoolMfaConfig", args)

"""
Sets the specified user's password in a user pool as an administrator. Works on any user.  The password can be temporary or permanent. If it is temporary, the user status will be placed into the FORCE_CHANGE_PASSWORD state. When the user next tries to sign in, the InitiateAuth/AdminInitiateAuth response will contain the NEW_PASSWORD_REQUIRED challenge. If the user does not sign in before it expires, the user will not be able to sign in and their password will need to be reset by an administrator.  Once the user has set a new password, or the password is permanent, the user status will be set to Confirmed.

Required Parameters:
UserPoolId, Username, Password
"""
AdminSetUserPassword(args) = cognito_identity_provider("AdminSetUserPassword", args)

"""
Allows a user to delete himself or herself.

Required Parameters:
AccessToken
"""
DeleteUser(args) = cognito_identity_provider("DeleteUser", args)

"""
Client method for returning the configuration information and metadata of the specified user pool app client.

Required Parameters:
UserPoolId, ClientId
"""
DescribeUserPoolClient(args) = cognito_identity_provider("DescribeUserPoolClient", args)

"""
Gets information about a domain.

Required Parameters:
Domain
"""
DescribeUserPoolDomain(args) = cognito_identity_provider("DescribeUserPoolDomain", args)

"""
Removes the specified tags from an Amazon Cognito user pool. You can use this action up to 5 times per second, per account

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = cognito_identity_provider("UntagResource", args)

"""
Gets the user attributes and metadata for a user.

Required Parameters:
AccessToken
"""
GetUser(args) = cognito_identity_provider("GetUser", args)

"""
Signs out users from all devices. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued.

Required Parameters:
AccessToken
"""
GlobalSignOut(args) = cognito_identity_provider("GlobalSignOut", args)

"""
Deletes a resource server.

Required Parameters:
UserPoolId, Identifier
"""
DeleteResourceServer(args) = cognito_identity_provider("DeleteResourceServer", args)

"""
Updates identity provider information for a user pool.

Required Parameters:
UserPoolId, ProviderName
"""
UpdateIdentityProvider(args) = cognito_identity_provider("UpdateIdentityProvider", args)

"""
Creates the user pool client.

Required Parameters:
UserPoolId, ClientName
"""
CreateUserPoolClient(args) = cognito_identity_provider("CreateUserPoolClient", args)

"""
Creates a new group in the specified user pool. Calling this action requires developer credentials.

Required Parameters:
GroupName, UserPoolId
"""
CreateGroup(args) = cognito_identity_provider("CreateGroup", args)

"""
Registers the user in the specified user pool and creates a user name, password, and user attributes.

Required Parameters:
ClientId, Username, Password
"""
SignUp(args) = cognito_identity_provider("SignUp", args)

"""
Initiates the authentication flow, as an administrator. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, ClientId, AuthFlow
"""
AdminInitiateAuth(args) = cognito_identity_provider("AdminInitiateAuth", args)

"""
Allows a user to enter a confirmation code to reset a forgotten password.

Required Parameters:
ClientId, Username, ConfirmationCode, Password
"""
ConfirmForgotPassword(args) = cognito_identity_provider("ConfirmForgotPassword", args)

"""
Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user. For custom attributes, you must prepend the custom: prefix to the attribute name. In addition to updating user attributes, this API can also be used to mark phone and email as verified. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, UserAttributes
"""
AdminUpdateUserAttributes(args) = cognito_identity_provider("AdminUpdateUserAttributes", args)

"""
Lists the tags that are assigned to an Amazon Cognito user pool. A tag is a label that you can apply to user pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria. You can use this action up to 10 times per second, per account.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = cognito_identity_provider("ListTagsForResource", args)

"""
Links an existing user account in a user pool (DestinationUser) to an identity from an external identity provider (SourceUser) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account.   For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account.   Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.  See also . This action is enabled only for admin access and requires developer credentials.

Required Parameters:
UserPoolId, DestinationUser, SourceUser
"""
AdminLinkProviderForUser(args) = cognito_identity_provider("AdminLinkProviderForUser", args)

"""
Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

Required Parameters:
UserPoolId, Username, EventId, FeedbackToken, FeedbackValue
"""
UpdateAuthEventFeedback(args) = cognito_identity_provider("UpdateAuthEventFeedback", args)

"""
Signs out users from all devices, as an administrator. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminUserGlobalSignOut(args) = cognito_identity_provider("AdminUserGlobalSignOut", args)

"""
Initiates the authentication flow.

Required Parameters:
AuthFlow, ClientId
"""
InitiateAuth(args) = cognito_identity_provider("InitiateAuth", args)

"""
Sets the user's multi-factor authentication (MFA) preference, including which MFA options are enabled and if any are preferred. Only one factor can be set as preferred. The preferred MFA factor will be used to authenticate a user if multiple factors are enabled. If multiple options are enabled and no preference is set, a challenge to choose an MFA option will be returned during sign in.

Required Parameters:
Username, UserPoolId
"""
AdminSetUserMFAPreference(args) = cognito_identity_provider("AdminSetUserMFAPreference", args)

"""
Disables the specified user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminDisableUser(args) = cognito_identity_provider("AdminDisableUser", args)

"""
Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool. You can use this operation to provide the Amazon Resource Name (ARN) of a new certificate to Amazon Cognito. You cannot use it to change the domain for a user pool. A custom domain is used to host the Amazon Cognito hosted UI, which provides sign-up and sign-in pages for your application. When you set up a custom domain, you provide a certificate that you manage with AWS Certificate Manager (ACM). When necessary, you can use this operation to change the certificate that you applied to your custom domain. Usually, this is unnecessary following routine certificate renewal with ACM. When you renew your existing certificate in ACM, the ARN for your certificate remains the same, and your custom domain uses the new certificate automatically. However, if you replace your existing certificate with a new one, ACM gives the new certificate a new ARN. To apply the new certificate to your custom domain, you must provide this ARN to Amazon Cognito. When you add your new certificate in ACM, you must choose US East (N. Virginia) as the AWS Region. After you submit your request, Amazon Cognito requires up to 1 hour to distribute your new certificate to your custom domain. For more information about adding a custom domain to your user pool, see Using Your Own Domain for the Hosted UI.

Required Parameters:
Domain, UserPoolId, CustomDomainConfig
"""
UpdateUserPoolDomain(args) = cognito_identity_provider("UpdateUserPoolDomain", args)

"""
Deletes a user as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminDeleteUser(args) = cognito_identity_provider("AdminDeleteUser", args)

"""
Lists the users in the Amazon Cognito user pool.

Required Parameters:
UserPoolId
"""
ListUsers(args) = cognito_identity_provider("ListUsers", args)

"""
Lists the groups associated with a user pool. Calling this action requires developer credentials.

Required Parameters:
UserPoolId
"""
ListGroups(args) = cognito_identity_provider("ListGroups", args)

"""
Forgets the device, as an administrator. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, DeviceKey
"""
AdminForgetDevice(args) = cognito_identity_provider("AdminForgetDevice", args)

"""
Confirms tracking of the device. This API call is the call that begins device tracking.

Required Parameters:
AccessToken, DeviceKey
"""
ConfirmDevice(args) = cognito_identity_provider("ConfirmDevice", args)

"""
Gets the header information for the .csv file to be used as input for the user import job.

Required Parameters:
UserPoolId
"""
GetCSVHeader(args) = cognito_identity_provider("GetCSVHeader", args)

"""
Starts the user import.

Required Parameters:
UserPoolId, JobId
"""
StartUserImportJob(args) = cognito_identity_provider("StartUserImportJob", args)

"""
 This action is no longer supported. You can use it to configure only SMS MFA. You can't use it to configure TOTP software token MFA. To configure either type of MFA, use the AdminSetUserMFAPreference action instead.

Required Parameters:
UserPoolId, Username, MFAOptions
"""
AdminSetUserSettings(args) = cognito_identity_provider("AdminSetUserSettings", args)

"""
Describes the user import job.

Required Parameters:
UserPoolId, JobId
"""
DescribeUserImportJob(args) = cognito_identity_provider("DescribeUserImportJob", args)

"""
Lists the groups that the user belongs to. Calling this action requires developer credentials.

Required Parameters:
Username, UserPoolId
"""
AdminListGroupsForUser(args) = cognito_identity_provider("AdminListGroupsForUser", args)

"""
Resets the specified user's password in a user pool as an administrator. Works on any user. When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminResetUserPassword(args) = cognito_identity_provider("AdminResetUserPassword", args)

"""
Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app clientId will be ALL), then that is returned. If nothing is present, then an empty shape is returned.

Required Parameters:
UserPoolId
"""
GetUICustomization(args) = cognito_identity_provider("GetUICustomization", args)

"""
Confirms user registration as an admin without using a confirmation code. Works on any user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminConfirmSignUp(args) = cognito_identity_provider("AdminConfirmSignUp", args)

"""
Sets the UI customization information for a user pool's built-in app UI. You can specify app UI customization settings for a single client (with a specific clientId) or for all clients (by setting the clientId to ALL). If you specify ALL, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the ALL configuration.   To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error. 

Required Parameters:
UserPoolId
"""
SetUICustomization(args) = cognito_identity_provider("SetUICustomization", args)

"""
Returns the configuration information and metadata of the specified user pool.

Required Parameters:
UserPoolId
"""
DescribeUserPool(args) = cognito_identity_provider("DescribeUserPool", args)

"""
Gets the device, as an administrator. Calling this action requires developer credentials.

Required Parameters:
DeviceKey, UserPoolId, Username
"""
AdminGetDevice(args) = cognito_identity_provider("AdminGetDevice", args)

"""
Lists devices, as an administrator. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminListDevices(args) = cognito_identity_provider("AdminListDevices", args)

"""
Set the user's multi-factor authentication (MFA) method preference, including which MFA factors are enabled and if any are preferred. Only one factor can be set as preferred. The preferred MFA factor will be used to authenticate a user if multiple factors are enabled. If multiple options are enabled and no preference is set, a challenge to choose an MFA option will be returned during sign in.

Required Parameters:
AccessToken
"""
SetUserMFAPreference(args) = cognito_identity_provider("SetUserMFAPreference", args)

"""
Deletes the specified Amazon Cognito user pool.

Required Parameters:
UserPoolId
"""
DeleteUserPool(args) = cognito_identity_provider("DeleteUserPool", args)

"""
Updates the specified user pool app client with the specified attributes. You can get a list of the current user pool app client settings with .  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters:
UserPoolId, ClientId
"""
UpdateUserPoolClient(args) = cognito_identity_provider("UpdateUserPoolClient", args)

"""
Updates the device status.

Required Parameters:
AccessToken, DeviceKey
"""
UpdateDeviceStatus(args) = cognito_identity_provider("UpdateDeviceStatus", args)

"""
Verifies the specified user attributes in the user pool.

Required Parameters:
AccessToken, AttributeName, Code
"""
VerifyUserAttribute(args) = cognito_identity_provider("VerifyUserAttribute", args)

"""
Gets the specified user by user name in a user pool as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminGetUser(args) = cognito_identity_provider("AdminGetUser", args)

"""
Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.
"""
AssociateSoftwareToken() = cognito_identity_provider("AssociateSoftwareToken")

"""
Creates a new OAuth2.0 resource server and defines custom scopes in it.

Required Parameters:
UserPoolId, Identifier, Name
"""
CreateResourceServer(args) = cognito_identity_provider("CreateResourceServer", args)

"""
Describes the risk configuration.

Required Parameters:
UserPoolId
"""
DescribeRiskConfiguration(args) = cognito_identity_provider("DescribeRiskConfiguration", args)

"""
Deletes the user attributes in a user pool as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, UserAttributeNames
"""
AdminDeleteUserAttributes(args) = cognito_identity_provider("AdminDeleteUserAttributes", args)

"""
Creates a new user in the specified user pool. If MessageAction is not set, the default is to send a welcome message via email or phone (SMS).  This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.  Alternatively, you can call AdminCreateUser with “SUPPRESS” for the MessageAction parameter, and Amazon Cognito will not send any email.  In either case, the user will be in the FORCE_CHANGE_PASSWORD state until they sign in and change their password. AdminCreateUser requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminCreateUser(args) = cognito_identity_provider("AdminCreateUser", args)

"""
Creates the user import job.

Required Parameters:
JobName, UserPoolId, CloudWatchLogsRoleArn
"""
CreateUserImportJob(args) = cognito_identity_provider("CreateUserImportJob", args)

"""
Describes a resource server.

Required Parameters:
UserPoolId, Identifier
"""
DescribeResourceServer(args) = cognito_identity_provider("DescribeResourceServer", args)

"""
Updates the device status as an administrator. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username, DeviceKey
"""
AdminUpdateDeviceStatus(args) = cognito_identity_provider("AdminUpdateDeviceStatus", args)

"""
Confirms registration of a user and handles the existing alias from a previous user.

Required Parameters:
ClientId, Username, ConfirmationCode
"""
ConfirmSignUp(args) = cognito_identity_provider("ConfirmSignUp", args)

"""
Enables the specified user as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters:
UserPoolId, Username
"""
AdminEnableUser(args) = cognito_identity_provider("AdminEnableUser", args)

"""
Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked DestinationUser) signs in, they must create a new user account. See . This action is enabled only for admin access and requires developer credentials. The ProviderName must match the value specified when creating an IdP for the pool.  To disable a native username + password user, the ProviderName value must be Cognito and the ProviderAttributeName must be Cognito_Subject, with the ProviderAttributeValue being the name that is used in the user pool for the user. The ProviderAttributeName must always be Cognito_Subject for social identity providers. The ProviderAttributeValue must always be the exact subject that was used when the user was originally linked as a source user. For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the ProviderAttributeName and ProviderAttributeValue must be the same values that were used for the SourceUser when the identities were originally linked in the call. (If the linking was done with ProviderAttributeName set to Cognito_Subject, the same applies here). However, if the user has already signed in, the ProviderAttributeName must be Cognito_Subject and ProviderAttributeValue must be the subject of the SAML assertion.

Required Parameters:
UserPoolId, User
"""
AdminDisableProviderForUser(args) = cognito_identity_provider("AdminDisableProviderForUser", args)

"""
Creates an identity provider for a user pool.

Required Parameters:
UserPoolId, ProviderName, ProviderType, ProviderDetails
"""
CreateIdentityProvider(args) = cognito_identity_provider("CreateIdentityProvider", args)

"""
Updates the specified group with the specified attributes. Calling this action requires developer credentials.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters:
GroupName, UserPoolId
"""
UpdateGroup(args) = cognito_identity_provider("UpdateGroup", args)

"""
Updates the specified user pool with the specified attributes. You can get a list of the current user pool settings with .  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters:
UserPoolId
"""
UpdateUserPool(args) = cognito_identity_provider("UpdateUserPool", args)

"""
Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.

Required Parameters:
UserPoolId, Username
"""
AdminListUserAuthEvents(args) = cognito_identity_provider("AdminListUserAuthEvents", args)
