include("../AWSCorePrototypeServices.jl")
using .Services: cognito_identity_provider

"""
    GetDevice()

Gets the device.

Required Parameters
{
  "DeviceKey": "The device key."
}

Optional Parameters
{
  "AccessToken": "The access token."
}
"""
GetDevice(args) = cognito_identity_provider("GetDevice", args)

"""
    DeleteGroup()

Deletes a group. Currently only groups with no members can be deleted. Calling this action requires developer credentials.

Required Parameters
{
  "GroupName": "The name of the group.",
  "UserPoolId": "The user pool ID for the user pool."
}
"""
DeleteGroup(args) = cognito_identity_provider("DeleteGroup", args)

"""
    GetGroup()

Gets a group. Calling this action requires developer credentials.

Required Parameters
{
  "GroupName": "The name of the group.",
  "UserPoolId": "The user pool ID for the user pool."
}
"""
GetGroup(args) = cognito_identity_provider("GetGroup", args)

"""
    AdminRemoveUserFromGroup()

Removes the specified user from the specified group. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool.",
  "GroupName": "The group name.",
  "Username": "The username for the user."
}
"""
AdminRemoveUserFromGroup(args) = cognito_identity_provider("AdminRemoveUserFromGroup", args)

"""
    SetUserSettings()

 This action is no longer supported. You can use it to configure only SMS MFA. You can't use it to configure TOTP software token MFA. To configure either type of MFA, use SetUserMFAPreference instead.

Required Parameters
{
  "AccessToken": "The access token for the set user settings request.",
  "MFAOptions": "You can use this parameter only to set an SMS configuration that uses SMS for delivery."
}
"""
SetUserSettings(args) = cognito_identity_provider("SetUserSettings", args)

"""
    ListUserPools()

Lists the user pools associated with an AWS account.

Required Parameters
{
  "MaxResults": "The maximum number of results you want the request to return when listing the user pools."
}

Optional Parameters
{
  "NextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list."
}
"""
ListUserPools(args) = cognito_identity_provider("ListUserPools", args)

"""
    RespondToAuthChallenge()

Responds to the authentication challenge.

Required Parameters
{
  "ClientId": "The app client ID.",
  "ChallengeName": "The challenge name. For more information, see InitiateAuth.  ADMIN_NO_SRP_AUTH is not a valid value."
}

Optional Parameters
{
  "ChallengeResponses": "The challenge responses. These are inputs corresponding to the value of ChallengeName, for example:   SECRET_HASH (if app client is configured with client secret) applies to all inputs below (including SOFTWARE_TOKEN_MFA).     SMS_MFA: SMS_MFA_CODE, USERNAME.    PASSWORD_VERIFIER: PASSWORD_CLAIM_SIGNATURE, PASSWORD_CLAIM_SECRET_BLOCK, TIMESTAMP, USERNAME.    NEW_PASSWORD_REQUIRED: NEW_PASSWORD, any other required attributes, USERNAME.     SOFTWARE_TOKEN_MFA: USERNAME and SOFTWARE_TOKEN_MFA_CODE are required attributes.    DEVICE_SRP_AUTH requires USERNAME, DEVICE_KEY, SRP_A (and SECRET_HASH).    DEVICE_PASSWORD_VERIFIER requires everything that PASSWORD_VERIFIER requires plus DEVICE_KEY.  ",
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: post authentication, pre token generation, define auth challenge, create auth challenge, and verify auth challenge. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "Session": "The session which should be passed both ways in challenge-response calls to the service. If InitiateAuth or RespondToAuthChallenge API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next RespondToAuthChallenge API call.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for RespondToAuthChallenge calls."
}
"""
RespondToAuthChallenge(args) = cognito_identity_provider("RespondToAuthChallenge", args)

"""
    GetUserPoolMfaConfig()

Gets the user pool multi-factor authentication (MFA) configuration.

Required Parameters
{
  "UserPoolId": "The user pool ID."
}
"""
GetUserPoolMfaConfig(args) = cognito_identity_provider("GetUserPoolMfaConfig", args)

"""
    ListUserPoolClients()

Lists the clients that have been created for the specified user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to list user pool clients."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results you want the request to return when listing the user pool clients.",
  "NextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list."
}
"""
ListUserPoolClients(args) = cognito_identity_provider("ListUserPoolClients", args)

"""
    DescribeIdentityProvider()

Gets information about a specific identity provider.

Required Parameters
{
  "ProviderName": "The identity provider name.",
  "UserPoolId": "The user pool ID."
}
"""
DescribeIdentityProvider(args) = cognito_identity_provider("DescribeIdentityProvider", args)

"""
    TagResource()

Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria. Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of a user pool, one for testing and another for production, you might assign an Environment tag key to both user pools. The value of this key might be Test for one user pool and Production for the other. Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your user pools. In an IAM policy, you can constrain permissions for user pools based on specific tags or tag values. You can use this action up to 5 times per second, per account. A user pool can have as many as 50 tags.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the user pool to assign the tags to.",
  "Tags": "The tags to assign to the user pool."
}
"""
TagResource(args) = cognito_identity_provider("TagResource", args)

"""
    DeleteUserAttributes()

Deletes the attributes for a user.

Required Parameters
{
  "UserAttributeNames": "An array of strings representing the user attribute names you wish to delete. For custom attributes, you must prepend the custom: prefix to the attribute name.",
  "AccessToken": "The access token used in the request to delete user attributes."
}
"""
DeleteUserAttributes(args) = cognito_identity_provider("DeleteUserAttributes", args)

"""
    ListIdentityProviders()

Lists information about all identity providers for a user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID."
}

Optional Parameters
{
  "MaxResults": "The maximum number of identity providers to return.",
  "NextToken": "A pagination token."
}
"""
ListIdentityProviders(args) = cognito_identity_provider("ListIdentityProviders", args)

"""
    GetIdentityProviderByIdentifier()

Gets the specified identity provider.

Required Parameters
{
  "UserPoolId": "The user pool ID.",
  "IdpIdentifier": "The identity provider ID."
}
"""
GetIdentityProviderByIdentifier(args) = cognito_identity_provider("GetIdentityProviderByIdentifier", args)

"""
    GetSigningCertificate()

This method takes a user pool ID, and returns the signing certificate.

Required Parameters
{
  "UserPoolId": "The user pool ID."
}
"""
GetSigningCertificate(args) = cognito_identity_provider("GetSigningCertificate", args)

"""
    ListResourceServers()

Lists the resource servers for a user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "MaxResults": "The maximum number of resource servers to return.",
  "NextToken": "A pagination token."
}
"""
ListResourceServers(args) = cognito_identity_provider("ListResourceServers", args)

"""
    StopUserImportJob()

Stops the user import job.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool that the users are being imported into.",
  "JobId": "The job ID for the user import job."
}
"""
StopUserImportJob(args) = cognito_identity_provider("StopUserImportJob", args)

"""
    UpdateResourceServer()

Updates the name and scopes of resource server. All other fields are read-only.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters
{
  "Identifier": "The identifier for the resource server.",
  "UserPoolId": "The user pool ID for the user pool.",
  "Name": "The name of the resource server."
}

Optional Parameters
{
  "Scopes": "The scope values to be set for the resource server."
}
"""
UpdateResourceServer(args) = cognito_identity_provider("UpdateResourceServer", args)

"""
    ForgotPassword()

Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the Username parameter, you can use the username or user alias. The method used to send the confirmation code is sent according to the specified AccountRecoverySetting. For more information, see Recovering User Accounts in the Amazon Cognito Developer Guide. If neither a verified phone number nor a verified email exists, an InvalidParameterException is thrown. To use the confirmation code for resetting the password, call ConfirmForgotPassword.

Required Parameters
{
  "ClientId": "The ID of the client associated with the user pool.",
  "Username": "The user name of the user for whom you want to enter a code to reset a forgotten password."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any functions that are assigned to the following triggers: pre sign-up, custom message, and user migration. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your ForgotPassword request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "SecretHash": "A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for ForgotPassword calls."
}
"""
ForgotPassword(args) = cognito_identity_provider("ForgotPassword", args)

"""
    ListUsersInGroup()

Lists the users in the specified group. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool.",
  "GroupName": "The name of the group."
}

Optional Parameters
{
  "NextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.",
  "Limit": "The limit of the request to list users."
}
"""
ListUsersInGroup(args) = cognito_identity_provider("ListUsersInGroup", args)

"""
    AddCustomAttributes()

Adds additional user attributes to the user pool schema.

Required Parameters
{
  "CustomAttributes": "An array of custom attributes, such as Mutable and Name.",
  "UserPoolId": "The user pool ID for the user pool where you want to add custom attributes."
}
"""
AddCustomAttributes(args) = cognito_identity_provider("AddCustomAttributes", args)

"""
    GetUserAttributeVerificationCode()

Gets the user attribute verification code for the specified attribute name.

Required Parameters
{
  "AccessToken": "The access token returned by the server response to get the user attribute verification code.",
  "AttributeName": "The attribute name returned by the server response to get the user attribute verification code."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the GetUserAttributeVerificationCode API action, Amazon Cognito invokes the function that is assigned to the custom message trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your GetUserAttributeVerificationCode request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   "
}
"""
GetUserAttributeVerificationCode(args) = cognito_identity_provider("GetUserAttributeVerificationCode", args)

"""
    ResendConfirmationCode()

Resends the confirmation (for confirmation of registration) to a specific user in the user pool.

Required Parameters
{
  "ClientId": "The ID of the client associated with the user pool.",
  "Username": "The user name of the user to whom you wish to resend a confirmation code."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ResendConfirmationCode API action, Amazon Cognito invokes the function that is assigned to the custom message trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your ResendConfirmationCode request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "SecretHash": "A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for ResendConfirmationCode calls."
}
"""
ResendConfirmationCode(args) = cognito_identity_provider("ResendConfirmationCode", args)

"""
    CreateUserPool()

Creates a new Amazon Cognito user pool and sets the password policy for the pool.

Required Parameters
{
  "PoolName": "A string used to name the user pool."
}

Optional Parameters
{
  "SmsVerificationMessage": "A string representing the SMS verification message.",
  "MfaConfiguration": "Specifies MFA configuration details.",
  "SmsAuthenticationMessage": "A string representing the SMS authentication message.",
  "DeviceConfiguration": "The device configuration.",
  "VerificationMessageTemplate": "The template for the verification message that the user sees when the app requests permission to access the user's information.",
  "EmailConfiguration": "The email configuration.",
  "Schema": "An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.",
  "AccountRecoverySetting": "Use this setting to define which verified available method a user can use to recover their password when they call ForgotPassword. It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.",
  "UsernameAttributes": "Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.",
  "SmsConfiguration": "The SMS configuration.",
  "AdminCreateUserConfig": "The configuration for AdminCreateUser requests.",
  "AliasAttributes": "Attributes supported as an alias for this user pool. Possible values: phone_number, email, or preferred_username.",
  "AutoVerifiedAttributes": "The attributes to be auto-verified. Possible values: email, phone_number.",
  "UsernameConfiguration": "You can choose to set case sensitivity on the username input for the selected sign-in option. For example, when this is set to False, users will be able to sign in using either \"username\" or \"Username\". This configuration is immutable once it has been set. For more information, see UsernameConfigurationType.",
  "EmailVerificationMessage": "A string representing the email verification message.",
  "UserPoolTags": "The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.",
  "Policies": "The policies associated with the new user pool.",
  "UserPoolAddOns": "Used to enable advanced security risk detection. Set the key AdvancedSecurityMode to the value \"AUDIT\".",
  "EmailVerificationSubject": "A string representing the email verification subject.",
  "LambdaConfig": "The Lambda trigger configuration information for the new user pool.  In a push model, event sources (such as Amazon S3 and custom applications) need permission to invoke a function. So you will need to make an extra call to add permission for these event sources to invoke your Lambda function.  For more information on using the Lambda API to add permission, see  AddPermission .  For adding permission using the AWS CLI, see  add-permission . "
}
"""
CreateUserPool(args) = cognito_identity_provider("CreateUserPool", args)

"""
    VerifySoftwareToken()

Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.

Required Parameters
{
  "UserCode": "The one time password computed using the secret code returned by AssociateSoftwareToken\"."
}

Optional Parameters
{
  "AccessToken": "The access token.",
  "Session": "The session which should be passed both ways in challenge-response calls to the service.",
  "FriendlyDeviceName": "The friendly device name."
}
"""
VerifySoftwareToken(args) = cognito_identity_provider("VerifySoftwareToken", args)

"""
    DeleteIdentityProvider()

Deletes an identity provider for a user pool.

Required Parameters
{
  "ProviderName": "The identity provider name.",
  "UserPoolId": "The user pool ID."
}
"""
DeleteIdentityProvider(args) = cognito_identity_provider("DeleteIdentityProvider", args)

"""
    AdminUpdateAuthEventFeedback()

Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

Required Parameters
{
  "FeedbackValue": "The authentication event feedback value.",
  "UserPoolId": "The user pool ID.",
  "EventId": "The authentication event ID.",
  "Username": "The user pool username."
}
"""
AdminUpdateAuthEventFeedback(args) = cognito_identity_provider("AdminUpdateAuthEventFeedback", args)

"""
    CreateUserPoolDomain()

Creates a new domain for a user pool.

Required Parameters
{
  "Domain": "The domain string.",
  "UserPoolId": "The user pool ID."
}

Optional Parameters
{
  "CustomDomainConfig": "The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application. Provide this parameter only if you want to use a custom domain for your user pool. Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain instead. For more information about the hosted domain and custom domains, see Configuring a User Pool Domain."
}
"""
CreateUserPoolDomain(args) = cognito_identity_provider("CreateUserPoolDomain", args)

"""
    ForgetDevice()

Forgets the specified device.

Required Parameters
{
  "DeviceKey": "The device key."
}

Optional Parameters
{
  "AccessToken": "The access token for the forgotten device request."
}
"""
ForgetDevice(args) = cognito_identity_provider("ForgetDevice", args)

"""
    ListUserImportJobs()

Lists the user import jobs.

Required Parameters
{
  "MaxResults": "The maximum number of import jobs you want the request to return.",
  "UserPoolId": "The user pool ID for the user pool that the users are being imported into."
}

Optional Parameters
{
  "PaginationToken": "An identifier that was returned from the previous call to ListUserImportJobs, which can be used to return the next set of import jobs in the list."
}
"""
ListUserImportJobs(args) = cognito_identity_provider("ListUserImportJobs", args)

"""
    DeleteUserPoolClient()

Allows the developer to delete the user pool client.

Required Parameters
{
  "ClientId": "The app client ID of the app associated with the user pool.",
  "UserPoolId": "The user pool ID for the user pool where you want to delete the client."
}
"""
DeleteUserPoolClient(args) = cognito_identity_provider("DeleteUserPoolClient", args)

"""
    ListDevices()

Lists the devices.

Required Parameters
{
  "AccessToken": "The access tokens for the request to list devices."
}

Optional Parameters
{
  "PaginationToken": "The pagination token for the list request.",
  "Limit": "The limit of the device request."
}
"""
ListDevices(args) = cognito_identity_provider("ListDevices", args)

"""
    DeleteUserPoolDomain()

Deletes a domain for a user pool.

Required Parameters
{
  "Domain": "The domain string.",
  "UserPoolId": "The user pool ID."
}
"""
DeleteUserPoolDomain(args) = cognito_identity_provider("DeleteUserPoolDomain", args)

"""
    AdminRespondToAuthChallenge()

Responds to an authentication challenge, as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "ClientId": "The app client ID.",
  "UserPoolId": "The ID of the Amazon Cognito user pool.",
  "ChallengeName": "The challenge name. For more information, see AdminInitiateAuth."
}

Optional Parameters
{
  "ChallengeResponses": "The challenge responses. These are inputs corresponding to the value of ChallengeName, for example:    SMS_MFA: SMS_MFA_CODE, USERNAME, SECRET_HASH (if app client is configured with client secret).    PASSWORD_VERIFIER: PASSWORD_CLAIM_SIGNATURE, PASSWORD_CLAIM_SECRET_BLOCK, TIMESTAMP, USERNAME, SECRET_HASH (if app client is configured with client secret).    ADMIN_NO_SRP_AUTH: PASSWORD, USERNAME, SECRET_HASH (if app client is configured with client secret).     NEW_PASSWORD_REQUIRED: NEW_PASSWORD, any other required attributes, USERNAME, SECRET_HASH (if app client is configured with client secret).    The value of the USERNAME attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the AdminInitiateAuth response includes the actual username value in the USERNAMEUSER_ID_FOR_SRP attribute, even if you specified an alias in your call to AdminInitiateAuth.",
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: pre sign-up, custom message, post authentication, user migration, pre token generation, define auth challenge, create auth challenge, and verify auth challenge response. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminRespondToAuthChallenge request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "Session": "The session which should be passed both ways in challenge-response calls to the service. If InitiateAuth or RespondToAuthChallenge API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next RespondToAuthChallenge API call.",
  "ContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The analytics metadata for collecting Amazon Pinpoint metrics for AdminRespondToAuthChallenge calls."
}
"""
AdminRespondToAuthChallenge(args) = cognito_identity_provider("AdminRespondToAuthChallenge", args)

"""
    SetRiskConfiguration()

Configures actions on detected risks. To delete the risk configuration for UserPoolId or ClientId, pass null values for all four configuration types. To enable Amazon Cognito advanced security features, update the user pool to include the UserPoolAddOns keyAdvancedSecurityMode.

Required Parameters
{
  "UserPoolId": "The user pool ID. "
}

Optional Parameters
{
  "ClientId": "The app client ID. If ClientId is null, then the risk configuration is mapped to userPoolId. When the client ID is null, the same risk configuration is applied to all the clients in the userPool. Otherwise, ClientId is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.",
  "AccountTakeoverRiskConfiguration": "The account takeover risk configuration.",
  "CompromisedCredentialsRiskConfiguration": "The compromised credentials risk configuration.",
  "RiskExceptionConfiguration": "The configuration to override the risk decision."
}
"""
SetRiskConfiguration(args) = cognito_identity_provider("SetRiskConfiguration", args)

"""
    UpdateUserAttributes()

Allows a user to update a specific attribute (one at a time).

Required Parameters
{
  "AccessToken": "The access token for the request to update user attributes.",
  "UserAttributes": "An array of name-value pairs representing user attributes. For custom attributes, you must prepend the custom: prefix to the attribute name."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the custom message trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your UpdateUserAttributes request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   "
}
"""
UpdateUserAttributes(args) = cognito_identity_provider("UpdateUserAttributes", args)

"""
    ChangePassword()

Changes the password for a specified user in a user pool.

Required Parameters
{
  "AccessToken": "The access token.",
  "PreviousPassword": "The old password.",
  "ProposedPassword": "The new password."
}
"""
ChangePassword(args) = cognito_identity_provider("ChangePassword", args)

"""
    AdminAddUserToGroup()

Adds the specified user to the specified group. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool.",
  "GroupName": "The group name.",
  "Username": "The username for the user."
}
"""
AdminAddUserToGroup(args) = cognito_identity_provider("AdminAddUserToGroup", args)

"""
    SetUserPoolMfaConfig()

Set the user pool multi-factor authentication (MFA) configuration.

Required Parameters
{
  "UserPoolId": "The user pool ID."
}

Optional Parameters
{
  "SmsMfaConfiguration": "The SMS text message MFA configuration.",
  "MfaConfiguration": "The MFA configuration. Valid values include:    OFF MFA will not be used for any users.    ON MFA is required for all users to sign in.    OPTIONAL MFA will be required only for individual users who have an MFA factor enabled.  ",
  "SoftwareTokenMfaConfiguration": "The software token MFA configuration."
}
"""
SetUserPoolMfaConfig(args) = cognito_identity_provider("SetUserPoolMfaConfig", args)

"""
    AdminSetUserPassword()

Sets the specified user's password in a user pool as an administrator. Works on any user.  The password can be temporary or permanent. If it is temporary, the user status will be placed into the FORCE_CHANGE_PASSWORD state. When the user next tries to sign in, the InitiateAuth/AdminInitiateAuth response will contain the NEW_PASSWORD_REQUIRED challenge. If the user does not sign in before it expires, the user will not be able to sign in and their password will need to be reset by an administrator.  Once the user has set a new password, or the password is permanent, the user status will be set to Confirmed.

Required Parameters
{
  "Password": "The password for the user.",
  "UserPoolId": "The user pool ID for the user pool where you want to set the user's password.",
  "Username": "The user name of the user whose password you wish to set."
}

Optional Parameters
{
  "Permanent": " True if the password is permanent, False if it is temporary."
}
"""
AdminSetUserPassword(args) = cognito_identity_provider("AdminSetUserPassword", args)

"""
    DeleteUser()

Allows a user to delete himself or herself.

Required Parameters
{
  "AccessToken": "The access token from a request to delete a user."
}
"""
DeleteUser(args) = cognito_identity_provider("DeleteUser", args)

"""
    DescribeUserPoolClient()

Client method for returning the configuration information and metadata of the specified user pool app client.

Required Parameters
{
  "ClientId": "The app client ID of the app associated with the user pool.",
  "UserPoolId": "The user pool ID for the user pool you want to describe."
}
"""
DescribeUserPoolClient(args) = cognito_identity_provider("DescribeUserPoolClient", args)

"""
    DescribeUserPoolDomain()

Gets information about a domain.

Required Parameters
{
  "Domain": "The domain string."
}
"""
DescribeUserPoolDomain(args) = cognito_identity_provider("DescribeUserPoolDomain", args)

"""
    UntagResource()

Removes the specified tags from an Amazon Cognito user pool. You can use this action up to 5 times per second, per account

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.",
  "TagKeys": "The keys of the tags to remove from the user pool."
}
"""
UntagResource(args) = cognito_identity_provider("UntagResource", args)

"""
    GetUser()

Gets the user attributes and metadata for a user.

Required Parameters
{
  "AccessToken": "The access token returned by the server response to get information about the user."
}
"""
GetUser(args) = cognito_identity_provider("GetUser", args)

"""
    GlobalSignOut()

Signs out users from all devices. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued.

Required Parameters
{
  "AccessToken": "The access token."
}
"""
GlobalSignOut(args) = cognito_identity_provider("GlobalSignOut", args)

"""
    DeleteResourceServer()

Deletes a resource server.

Required Parameters
{
  "Identifier": "The identifier for the resource server.",
  "UserPoolId": "The user pool ID for the user pool that hosts the resource server."
}
"""
DeleteResourceServer(args) = cognito_identity_provider("DeleteResourceServer", args)

"""
    UpdateIdentityProvider()

Updates identity provider information for a user pool.

Required Parameters
{
  "ProviderName": "The identity provider name.",
  "UserPoolId": "The user pool ID."
}

Optional Parameters
{
  "AttributeMapping": "The identity provider attribute mapping to be changed.",
  "ProviderDetails": "The identity provider details to be updated, such as MetadataURL and MetadataFile.",
  "IdpIdentifiers": "A list of identity provider identifiers."
}
"""
UpdateIdentityProvider(args) = cognito_identity_provider("UpdateIdentityProvider", args)

"""
    CreateUserPoolClient()

Creates the user pool client.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to create a user pool client.",
  "ClientName": "The client name for the user pool client you would like to create."
}

Optional Parameters
{
  "RefreshTokenValidity": "The time limit, in days, after which the refresh token is no longer valid and cannot be used.",
  "GenerateSecret": "Boolean to specify whether you want to generate a secret for the user pool client being created.",
  "CallbackURLs": "A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:   Be an absolute URI.   Be registered with the authorization server.   Not include a fragment component.   See OAuth 2.0 - Redirection Endpoint. Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.",
  "IdTokenValidity": "The time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in TokenValidityUnits.",
  "AllowedOAuthFlowsUserPoolClient": "Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.",
  "ReadAttributes": "The read attributes.",
  "AllowedOAuthScopes": "The allowed OAuth scopes. Possible values provided by OAuth are: phone, email, openid, and profile. Possible values provided by AWS are: aws.cognito.signin.user.admin. Custom scopes created in Resource Servers are also supported.",
  "LogoutURLs": "A list of allowed logout URLs for the identity providers.",
  "SupportedIdentityProviders": "A list of provider names for the identity providers that are supported on this client. The following are supported: COGNITO, Facebook, Google and LoginWithAmazon.",
  "DefaultRedirectURI": "The default redirect URI. Must be in the CallbackURLs list. A redirect URI must:   Be an absolute URI.   Be registered with the authorization server.   Not include a fragment component.   See OAuth 2.0 - Redirection Endpoint. Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.",
  "ExplicitAuthFlows": "The authentication flows that are supported by the user pool clients. Flow names without the ALLOW_ prefix are deprecated in favor of new names with the ALLOW_ prefix. Note that values with ALLOW_ prefix cannot be used along with values without ALLOW_ prefix. Valid values include:    ALLOW_ADMIN_USER_PASSWORD_AUTH: Enable admin based user password authentication flow ADMIN_USER_PASSWORD_AUTH. This setting replaces the ADMIN_NO_SRP_AUTH setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.    ALLOW_CUSTOM_AUTH: Enable Lambda trigger based authentication.    ALLOW_USER_PASSWORD_AUTH: Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.    ALLOW_USER_SRP_AUTH: Enable SRP based authentication.    ALLOW_REFRESH_TOKEN_AUTH: Enable authflow to refresh tokens.  ",
  "AnalyticsConfiguration": "The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.  In regions where Pinpoint is not available, Cognito User Pools only supports sending events to Amazon Pinpoint projects in us-east-1. In regions where Pinpoint is available, Cognito User Pools will support sending events to Amazon Pinpoint projects within that same region.  ",
  "TokenValidityUnits": "The units in which the validity times are represented in. Default for RefreshToken is days, and default for ID and access tokens are hours.",
  "AllowedOAuthFlows": "The allowed OAuth flows. Set to code to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to implicit to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to client_credentials to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.",
  "WriteAttributes": "The user pool attributes that the app client can write to. If your app client allows users to sign in through an identity provider, this array must include all attributes that are mapped to identity provider attributes. Amazon Cognito updates mapped attributes when users sign in to your application through an identity provider. If your app client lacks write access to a mapped attribute, Amazon Cognito throws an error when it attempts to update the attribute. For more information, see Specifying Identity Provider Attribute Mappings for Your User Pool.",
  "AccessTokenValidity": "The time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in TokenValidityUnits.",
  "PreventUserExistenceErrors": "Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool. Valid values include:    ENABLED - This prevents user existence-related errors.    LEGACY - This represents the old behavior of Cognito where user existence related errors are not prevented.    After February 15th 2020, the value of PreventUserExistenceErrors will default to ENABLED for newly created user pool clients if no value is provided. "
}
"""
CreateUserPoolClient(args) = cognito_identity_provider("CreateUserPoolClient", args)

"""
    CreateGroup()

Creates a new group in the specified user pool. Calling this action requires developer credentials.

Required Parameters
{
  "GroupName": "The name of the group. Must be unique.",
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "Description": "A string containing the description of the group.",
  "Precedence": "A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower Precedence values take precedence over groups with higher or null Precedence values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the cognito:roles and cognito:preferred_role claims in the user's tokens. Two groups can have the same Precedence value. If this happens, neither group takes precedence over the other. If two groups with the same Precedence have the same role ARN, that role is used in the cognito:preferred_role claim in tokens for users in each group. If the two groups have different role ARNs, the cognito:preferred_role claim is not set in users' tokens. The default Precedence value is null.",
  "RoleArn": "The role ARN for the group."
}
"""
CreateGroup(args) = cognito_identity_provider("CreateGroup", args)

"""
    SignUp()

Registers the user in the specified user pool and creates a user name, password, and user attributes.

Required Parameters
{
  "ClientId": "The ID of the client associated with the user pool.",
  "Password": "The password of the user you wish to register.",
  "Username": "The user name of the user you wish to register."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the following triggers: pre sign-up, custom message, and post confirmation. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your SignUp request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "UserAttributes": "An array of name-value pairs representing user attributes. For custom attributes, you must prepend the custom: prefix to the attribute name.",
  "SecretHash": "A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.",
  "ValidationData": "The validation data in the request to register a user.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for SignUp calls."
}
"""
SignUp(args) = cognito_identity_provider("SignUp", args)

"""
    AdminInitiateAuth()

Initiates the authentication flow, as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "ClientId": "The app client ID.",
  "UserPoolId": "The ID of the Amazon Cognito user pool.",
  "AuthFlow": "The authentication flow for this call to execute. The API action will depend on this value. For example:    REFRESH_TOKEN_AUTH will take in a valid refresh token and return new tokens.    USER_SRP_AUTH will take in USERNAME and SRP_A and return the SRP variables to be used for next challenge execution.    USER_PASSWORD_AUTH will take in USERNAME and PASSWORD and return the next challenge or tokens.   Valid values include:    USER_SRP_AUTH: Authentication flow for the Secure Remote Password (SRP) protocol.    REFRESH_TOKEN_AUTH/REFRESH_TOKEN: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.    CUSTOM_AUTH: Custom authentication flow.    ADMIN_NO_SRP_AUTH: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.    USER_PASSWORD_AUTH: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.     ADMIN_USER_PASSWORD_AUTH: Admin-based user password authentication. This replaces the ADMIN_NO_SRP_AUTH authentication flow. In this flow, Cognito receives the password in the request instead of using the SRP process to verify passwords.  "
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers. You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminInitiateAuth API action, Amazon Cognito invokes the AWS Lambda functions that are specified for various triggers. The ClientMetadata value is passed as input to the functions for only the following triggers:   Pre signup   Pre authentication   User migration   When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which the function receives as input. This payload contains a validationData attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminInitiateAuth request. In your function code in AWS Lambda, you can process the validationData value to enhance your workflow for your specific needs. When you use the AdminInitiateAuth API action, Amazon Cognito also invokes the functions for the following triggers, but it does not provide the ClientMetadata value as input:   Post authentication   Custom message   Pre token generation   Create auth challenge   Define auth challenge   Verify auth challenge   For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "ContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AuthParameters": "The authentication parameters. These are inputs corresponding to the AuthFlow that you are invoking. The required values depend on the value of AuthFlow:   For USER_SRP_AUTH: USERNAME (required), SRP_A (required), SECRET_HASH (required if the app client is configured with a client secret), DEVICE_KEY.   For REFRESH_TOKEN_AUTH/REFRESH_TOKEN: REFRESH_TOKEN (required), SECRET_HASH (required if the app client is configured with a client secret), DEVICE_KEY.   For ADMIN_NO_SRP_AUTH: USERNAME (required), SECRET_HASH (if app client is configured with client secret), PASSWORD (required), DEVICE_KEY.   For CUSTOM_AUTH: USERNAME (required), SECRET_HASH (if app client is configured with client secret), DEVICE_KEY. To start the authentication flow with password verification, include ChallengeName: SRP_A and SRP_A: (The SRP_A Value).  ",
  "AnalyticsMetadata": "The analytics metadata for collecting Amazon Pinpoint metrics for AdminInitiateAuth calls."
}
"""
AdminInitiateAuth(args) = cognito_identity_provider("AdminInitiateAuth", args)

"""
    ConfirmForgotPassword()

Allows a user to enter a confirmation code to reset a forgotten password.

Required Parameters
{
  "ClientId": "The app client ID of the app associated with the user pool.",
  "ConfirmationCode": "The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see ForgotPassword.",
  "Password": "The password sent by a user's request to retrieve a forgotten password.",
  "Username": "The user name of the user for whom you want to enter a code to retrieve a forgotten password."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is assigned to the post confirmation trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "SecretHash": "A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for ConfirmForgotPassword calls."
}
"""
ConfirmForgotPassword(args) = cognito_identity_provider("ConfirmForgotPassword", args)

"""
    AdminUpdateUserAttributes()

Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user. For custom attributes, you must prepend the custom: prefix to the attribute name. In addition to updating user attributes, this API can also be used to mark phone and email as verified. Calling this action requires developer credentials.

Required Parameters
{
  "UserAttributes": "An array of name-value pairs representing user attributes. For custom attributes, you must prepend the custom: prefix to the attribute name.",
  "UserPoolId": "The user pool ID for the user pool where you want to update user attributes.",
  "Username": "The user name of the user for whom you want to update user attributes."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminUpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned to the custom message trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminUpdateUserAttributes request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   "
}
"""
AdminUpdateUserAttributes(args) = cognito_identity_provider("AdminUpdateUserAttributes", args)

"""
    ListTagsForResource()

Lists the tags that are assigned to an Amazon Cognito user pool. A tag is a label that you can apply to user pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria. You can use this action up to 10 times per second, per account.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the user pool that the tags are assigned to."
}
"""
ListTagsForResource(args) = cognito_identity_provider("ListTagsForResource", args)

"""
    AdminLinkProviderForUser()

Links an existing user account in a user pool (DestinationUser) to an identity from an external identity provider (SourceUser) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account.   For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account.   The maximum number of federated identities linked to a user is 5.   Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.  This action is enabled only for admin access and requires developer credentials.

Required Parameters
{
  "DestinationUser": "The existing user in the user pool to be linked to the external identity provider user account. Can be a native (Username + Password) Cognito User Pools user or a federated user (for example, a SAML or Facebook user). If the user doesn't exist, an exception is thrown. This is the user that is returned when the new user (with the linked identity provider attribute) signs in. For a native username + password user, the ProviderAttributeValue for the DestinationUser should be the username in the user pool. For a federated user, it should be the provider-specific user_id. The ProviderAttributeName of the DestinationUser is ignored. The ProviderName should be set to Cognito for users in Cognito user pools.",
  "UserPoolId": "The user pool ID for the user pool.",
  "SourceUser": "An external identity provider account for a user who does not currently exist yet in the user pool. This user must be a federated user (for example, a SAML or Facebook user), not another native user. If the SourceUser is a federated social identity provider user (Facebook, Google, or Login with Amazon), you must set the ProviderAttributeName to Cognito_Subject. For social identity providers, the ProviderName will be Facebook, Google, or LoginWithAmazon, and Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for id, sub, and user_id, respectively. The ProviderAttributeValue for the user must be the same value as the id, sub, or user_id value found in the social identity provider token.  For SAML, the ProviderAttributeName can be any value that matches a claim in the SAML assertion. If you wish to link SAML users based on the subject of the SAML assertion, you should map the subject to a claim through the SAML identity provider and submit that claim name as the ProviderAttributeName. If you set ProviderAttributeName to Cognito_Subject, Cognito will automatically parse the default unique identifier found in the subject from the SAML token."
}
"""
AdminLinkProviderForUser(args) = cognito_identity_provider("AdminLinkProviderForUser", args)

"""
    UpdateAuthEventFeedback()

Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.

Required Parameters
{
  "FeedbackValue": "The authentication event feedback value.",
  "FeedbackToken": "The feedback token.",
  "UserPoolId": "The user pool ID.",
  "EventId": "The event ID.",
  "Username": "The user pool username."
}
"""
UpdateAuthEventFeedback(args) = cognito_identity_provider("UpdateAuthEventFeedback", args)

"""
    AdminUserGlobalSignOut()

Signs out users from all devices, as an administrator. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID.",
  "Username": "The user name."
}
"""
AdminUserGlobalSignOut(args) = cognito_identity_provider("AdminUserGlobalSignOut", args)

"""
    InitiateAuth()

Initiates the authentication flow.

Required Parameters
{
  "ClientId": "The app client ID.",
  "AuthFlow": "The authentication flow for this call to execute. The API action will depend on this value. For example:     REFRESH_TOKEN_AUTH will take in a valid refresh token and return new tokens.    USER_SRP_AUTH will take in USERNAME and SRP_A and return the SRP variables to be used for next challenge execution.    USER_PASSWORD_AUTH will take in USERNAME and PASSWORD and return the next challenge or tokens.   Valid values include:    USER_SRP_AUTH: Authentication flow for the Secure Remote Password (SRP) protocol.    REFRESH_TOKEN_AUTH/REFRESH_TOKEN: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.    CUSTOM_AUTH: Custom authentication flow.    USER_PASSWORD_AUTH: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool.     ADMIN_USER_PASSWORD_AUTH: Admin-based user password authentication. This replaces the ADMIN_NO_SRP_AUTH authentication flow. In this flow, Cognito receives the password in the request instead of using the SRP process to verify passwords.    ADMIN_NO_SRP_AUTH is not a valid value."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers. You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the InitiateAuth API action, Amazon Cognito invokes the AWS Lambda functions that are specified for various triggers. The ClientMetadata value is passed as input to the functions for only the following triggers:   Pre signup   Pre authentication   User migration   When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which the function receives as input. This payload contains a validationData attribute, which provides the data that you assigned to the ClientMetadata parameter in your InitiateAuth request. In your function code in AWS Lambda, you can process the validationData value to enhance your workflow for your specific needs. When you use the InitiateAuth API action, Amazon Cognito also invokes the functions for the following triggers, but it does not provide the ClientMetadata value as input:   Post authentication   Custom message   Pre token generation   Create auth challenge   Define auth challenge   Verify auth challenge   For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "AuthParameters": "The authentication parameters. These are inputs corresponding to the AuthFlow that you are invoking. The required values depend on the value of AuthFlow:   For USER_SRP_AUTH: USERNAME (required), SRP_A (required), SECRET_HASH (required if the app client is configured with a client secret), DEVICE_KEY.   For REFRESH_TOKEN_AUTH/REFRESH_TOKEN: REFRESH_TOKEN (required), SECRET_HASH (required if the app client is configured with a client secret), DEVICE_KEY.   For CUSTOM_AUTH: USERNAME (required), SECRET_HASH (if app client is configured with client secret), DEVICE_KEY. To start the authentication flow with password verification, include ChallengeName: SRP_A and SRP_A: (The SRP_A Value).  ",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for InitiateAuth calls."
}
"""
InitiateAuth(args) = cognito_identity_provider("InitiateAuth", args)

"""
    AdminSetUserMFAPreference()

Sets the user's multi-factor authentication (MFA) preference, including which MFA options are enabled and if any are preferred. Only one factor can be set as preferred. The preferred MFA factor will be used to authenticate a user if multiple factors are enabled. If multiple options are enabled and no preference is set, a challenge to choose an MFA option will be returned during sign in.

Required Parameters
{
  "UserPoolId": "The user pool ID.",
  "Username": "The user pool username or alias."
}

Optional Parameters
{
  "SMSMfaSettings": "The SMS text message MFA settings.",
  "SoftwareTokenMfaSettings": "The time-based one-time password software token MFA settings."
}
"""
AdminSetUserMFAPreference(args) = cognito_identity_provider("AdminSetUserMFAPreference", args)

"""
    AdminDisableUser()

Disables the specified user. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to disable the user.",
  "Username": "The user name of the user you wish to disable."
}
"""
AdminDisableUser(args) = cognito_identity_provider("AdminDisableUser", args)

"""
    UpdateUserPoolDomain()

Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool. You can use this operation to provide the Amazon Resource Name (ARN) of a new certificate to Amazon Cognito. You cannot use it to change the domain for a user pool. A custom domain is used to host the Amazon Cognito hosted UI, which provides sign-up and sign-in pages for your application. When you set up a custom domain, you provide a certificate that you manage with AWS Certificate Manager (ACM). When necessary, you can use this operation to change the certificate that you applied to your custom domain. Usually, this is unnecessary following routine certificate renewal with ACM. When you renew your existing certificate in ACM, the ARN for your certificate remains the same, and your custom domain uses the new certificate automatically. However, if you replace your existing certificate with a new one, ACM gives the new certificate a new ARN. To apply the new certificate to your custom domain, you must provide this ARN to Amazon Cognito. When you add your new certificate in ACM, you must choose US East (N. Virginia) as the AWS Region. After you submit your request, Amazon Cognito requires up to 1 hour to distribute your new certificate to your custom domain. For more information about adding a custom domain to your user pool, see Using Your Own Domain for the Hosted UI.

Required Parameters
{
  "Domain": "The domain name for the custom domain that hosts the sign-up and sign-in pages for your application. For example: auth.example.com.  This string can include only lowercase letters, numbers, and hyphens. Do not use a hyphen for the first or last character. Use periods to separate subdomain names.",
  "UserPoolId": "The ID of the user pool that is associated with the custom domain that you are updating the certificate for.",
  "CustomDomainConfig": "The configuration for a custom domain that hosts the sign-up and sign-in pages for your application. Use this object to specify an SSL certificate that is managed by ACM."
}
"""
UpdateUserPoolDomain(args) = cognito_identity_provider("UpdateUserPoolDomain", args)

"""
    AdminDeleteUser()

Deletes a user as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to delete the user.",
  "Username": "The user name of the user you wish to delete."
}
"""
AdminDeleteUser(args) = cognito_identity_provider("AdminDeleteUser", args)

"""
    ListUsers()

Lists the users in the Amazon Cognito user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool on which the search should be performed."
}

Optional Parameters
{
  "PaginationToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.",
  "Filter": "A filter string of the form \"AttributeName Filter-Type \"AttributeValue\"\". Quotation marks within the filter string must be escaped using the backslash ( ) character. For example, \"family_name =  \"Reddy \"\".    AttributeName: The name of the attribute to search for. You can only search for one attribute at a time.    Filter-Type: For an exact match, use =, for example, \"given_name =  \"Jon \"\". For a prefix (\"starts with\") match, use ^=, for example, \"given_name ^=  \"Jon \"\".     AttributeValue: The attribute value that must be matched for each user.   If the filter string is empty, ListUsers returns all users in the user pool. You can only search for the following standard attributes:    username (case-sensitive)    email     phone_number     name     given_name     family_name     preferred_username     cognito:user_status (called Status in the Console) (case-insensitive)    status (called Enabled in the Console) (case-sensitive)     sub    Custom attributes are not searchable. For more information, see Searching for Users Using the ListUsers API and Examples of Using the ListUsers API in the Amazon Cognito Developer Guide.",
  "AttributesToGet": "An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.",
  "Limit": "Maximum number of users to be returned."
}
"""
ListUsers(args) = cognito_identity_provider("ListUsers", args)

"""
    ListGroups()

Lists the groups associated with a user pool. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "NextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.",
  "Limit": "The limit of the request to list groups."
}
"""
ListGroups(args) = cognito_identity_provider("ListGroups", args)

"""
    AdminForgetDevice()

Forgets the device, as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "DeviceKey": "The device key.",
  "UserPoolId": "The user pool ID.",
  "Username": "The user name."
}
"""
AdminForgetDevice(args) = cognito_identity_provider("AdminForgetDevice", args)

"""
    ConfirmDevice()

Confirms tracking of the device. This API call is the call that begins device tracking.

Required Parameters
{
  "DeviceKey": "The device key.",
  "AccessToken": "The access token."
}

Optional Parameters
{
  "DeviceName": "The device name.",
  "DeviceSecretVerifierConfig": "The configuration of the device secret verifier."
}
"""
ConfirmDevice(args) = cognito_identity_provider("ConfirmDevice", args)

"""
    GetCSVHeader()

Gets the header information for the .csv file to be used as input for the user import job.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool that the users are to be imported into."
}
"""
GetCSVHeader(args) = cognito_identity_provider("GetCSVHeader", args)

"""
    StartUserImportJob()

Starts the user import.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool that the users are being imported into.",
  "JobId": "The job ID for the user import job."
}
"""
StartUserImportJob(args) = cognito_identity_provider("StartUserImportJob", args)

"""
    AdminSetUserSettings()

 This action is no longer supported. You can use it to configure only SMS MFA. You can't use it to configure TOTP software token MFA. To configure either type of MFA, use AdminSetUserMFAPreference instead.

Required Parameters
{
  "MFAOptions": "You can use this parameter only to set an SMS configuration that uses SMS for delivery.",
  "UserPoolId": "The ID of the user pool that contains the user that you are setting options for.",
  "Username": "The user name of the user that you are setting options for."
}
"""
AdminSetUserSettings(args) = cognito_identity_provider("AdminSetUserSettings", args)

"""
    DescribeUserImportJob()

Describes the user import job.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool that the users are being imported into.",
  "JobId": "The job ID for the user import job."
}
"""
DescribeUserImportJob(args) = cognito_identity_provider("DescribeUserImportJob", args)

"""
    AdminListGroupsForUser()

Lists the groups that the user belongs to. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool.",
  "Username": "The username for the user."
}

Optional Parameters
{
  "NextToken": "An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.",
  "Limit": "The limit of the request to list groups."
}
"""
AdminListGroupsForUser(args) = cognito_identity_provider("AdminListGroupsForUser", args)

"""
    AdminResetUserPassword()

Resets the specified user's password in a user pool as an administrator. Works on any user. When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to reset the user's password.",
  "Username": "The user name of the user whose password you wish to reset."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminResetUserPassword API action, Amazon Cognito invokes the function that is assigned to the custom message trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminResetUserPassword request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   "
}
"""
AdminResetUserPassword(args) = cognito_identity_provider("AdminResetUserPassword", args)

"""
    GetUICustomization()

Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app clientId will be ALL), then that is returned. If nothing is present, then an empty shape is returned.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "ClientId": "The client ID for the client app."
}
"""
GetUICustomization(args) = cognito_identity_provider("GetUICustomization", args)

"""
    AdminConfirmSignUp()

Confirms user registration as an admin without using a confirmation code. Works on any user. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for which you want to confirm user registration.",
  "Username": "The user name for which you want to confirm user registration."
}

Optional Parameters
{
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  If your user pool configuration includes triggers, the AdminConfirmSignUp API action invokes the AWS Lambda function that is specified for the post confirmation trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. In this payload, the clientMetadata attribute provides the data that you assigned to the ClientMetadata parameter in your AdminConfirmSignUp request. In your function code in AWS Lambda, you can process the ClientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   "
}
"""
AdminConfirmSignUp(args) = cognito_identity_provider("AdminConfirmSignUp", args)

"""
    SetUICustomization()

Sets the UI customization information for a user pool's built-in app UI. You can specify app UI customization settings for a single client (with a specific clientId) or for all clients (by setting the clientId to ALL). If you specify ALL, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the ALL configuration.   To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error. 

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "ClientId": "The client ID for the client app.",
  "ImageFile": "The uploaded logo image for the UI customization.",
  "CSS": "The CSS values in the UI customization."
}
"""
SetUICustomization(args) = cognito_identity_provider("SetUICustomization", args)

"""
    DescribeUserPool()

Returns the configuration information and metadata of the specified user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool you want to describe."
}
"""
DescribeUserPool(args) = cognito_identity_provider("DescribeUserPool", args)

"""
    AdminGetDevice()

Gets the device, as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "DeviceKey": "The device key.",
  "UserPoolId": "The user pool ID.",
  "Username": "The user name."
}
"""
AdminGetDevice(args) = cognito_identity_provider("AdminGetDevice", args)

"""
    AdminListDevices()

Lists devices, as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID.",
  "Username": "The user name."
}

Optional Parameters
{
  "PaginationToken": "The pagination token.",
  "Limit": "The limit of the devices request."
}
"""
AdminListDevices(args) = cognito_identity_provider("AdminListDevices", args)

"""
    SetUserMFAPreference()

Set the user's multi-factor authentication (MFA) method preference, including which MFA factors are enabled and if any are preferred. Only one factor can be set as preferred. The preferred MFA factor will be used to authenticate a user if multiple factors are enabled. If multiple options are enabled and no preference is set, a challenge to choose an MFA option will be returned during sign in.

Required Parameters
{
  "AccessToken": "The access token for the user."
}

Optional Parameters
{
  "SMSMfaSettings": "The SMS text message multi-factor authentication (MFA) settings.",
  "SoftwareTokenMfaSettings": "The time-based one-time password software token MFA settings."
}
"""
SetUserMFAPreference(args) = cognito_identity_provider("SetUserMFAPreference", args)

"""
    DeleteUserPool()

Deletes the specified Amazon Cognito user pool.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool you want to delete."
}
"""
DeleteUserPool(args) = cognito_identity_provider("DeleteUserPool", args)

"""
    UpdateUserPoolClient()

Updates the specified user pool app client with the specified attributes. You can get a list of the current user pool app client settings using DescribeUserPoolClient.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters
{
  "ClientId": "The ID of the client associated with the user pool.",
  "UserPoolId": "The user pool ID for the user pool where you want to update the user pool client."
}

Optional Parameters
{
  "RefreshTokenValidity": "The time limit, in days, after which the refresh token is no longer valid and cannot be used.",
  "CallbackURLs": "A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:   Be an absolute URI.   Be registered with the authorization server.   Not include a fragment component.   See OAuth 2.0 - Redirection Endpoint. Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.",
  "IdTokenValidity": "The time limit, after which the ID token is no longer valid and cannot be used.",
  "AllowedOAuthFlowsUserPoolClient": "Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.",
  "ReadAttributes": "The read-only attributes of the user pool.",
  "AllowedOAuthScopes": "The allowed OAuth scopes. Possible values provided by OAuth are: phone, email, openid, and profile. Possible values provided by AWS are: aws.cognito.signin.user.admin. Custom scopes created in Resource Servers are also supported.",
  "LogoutURLs": "A list of allowed logout URLs for the identity providers.",
  "SupportedIdentityProviders": "A list of provider names for the identity providers that are supported on this client.",
  "DefaultRedirectURI": "The default redirect URI. Must be in the CallbackURLs list. A redirect URI must:   Be an absolute URI.   Be registered with the authorization server.   Not include a fragment component.   See OAuth 2.0 - Redirection Endpoint. Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.",
  "ExplicitAuthFlows": "The authentication flows that are supported by the user pool clients. Flow names without the ALLOW_ prefix are deprecated in favor of new names with the ALLOW_ prefix. Note that values with ALLOW_ prefix cannot be used along with values without ALLOW_ prefix. Valid values include:    ALLOW_ADMIN_USER_PASSWORD_AUTH: Enable admin based user password authentication flow ADMIN_USER_PASSWORD_AUTH. This setting replaces the ADMIN_NO_SRP_AUTH setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.    ALLOW_CUSTOM_AUTH: Enable Lambda trigger based authentication.    ALLOW_USER_PASSWORD_AUTH: Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.    ALLOW_USER_SRP_AUTH: Enable SRP based authentication.    ALLOW_REFRESH_TOKEN_AUTH: Enable authflow to refresh tokens.  ",
  "AnalyticsConfiguration": "The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.  In regions where Pinpoint is not available, Cognito User Pools only supports sending events to Amazon Pinpoint projects in us-east-1. In regions where Pinpoint is available, Cognito User Pools will support sending events to Amazon Pinpoint projects within that same region.  ",
  "TokenValidityUnits": "The units in which the validity times are represented in. Default for RefreshToken is days, and default for ID and access tokens are hours.",
  "AllowedOAuthFlows": "The allowed OAuth flows. Set to code to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to implicit to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to client_credentials to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.",
  "WriteAttributes": "The writeable attributes of the user pool.",
  "AccessTokenValidity": "The time limit, after which the access token is no longer valid and cannot be used.",
  "ClientName": "The client name from the update user pool client request.",
  "PreventUserExistenceErrors": "Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to ENABLED and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to LEGACY, those APIs will return a UserNotFoundException exception if the user does not exist in the user pool. Valid values include:    ENABLED - This prevents user existence-related errors.    LEGACY - This represents the old behavior of Cognito where user existence related errors are not prevented.    After February 15th 2020, the value of PreventUserExistenceErrors will default to ENABLED for newly created user pool clients if no value is provided. "
}
"""
UpdateUserPoolClient(args) = cognito_identity_provider("UpdateUserPoolClient", args)

"""
    UpdateDeviceStatus()

Updates the device status.

Required Parameters
{
  "DeviceKey": "The device key.",
  "AccessToken": "The access token."
}

Optional Parameters
{
  "DeviceRememberedStatus": "The status of whether a device is remembered."
}
"""
UpdateDeviceStatus(args) = cognito_identity_provider("UpdateDeviceStatus", args)

"""
    VerifyUserAttribute()

Verifies the specified user attributes in the user pool.

Required Parameters
{
  "AccessToken": "Represents the access token of the request to verify user attributes.",
  "AttributeName": "The attribute name in the request to verify user attributes.",
  "Code": "The verification code in the request to verify user attributes."
}
"""
VerifyUserAttribute(args) = cognito_identity_provider("VerifyUserAttribute", args)

"""
    AdminGetUser()

Gets the specified user by user name in a user pool as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to get information about the user.",
  "Username": "The user name of the user you wish to retrieve."
}
"""
AdminGetUser(args) = cognito_identity_provider("AdminGetUser", args)

"""
    AssociateSoftwareToken()

Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.

Optional Parameters
{
  "AccessToken": "The access token.",
  "Session": "The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process."
}
"""

AssociateSoftwareToken() = cognito_identity_provider("AssociateSoftwareToken")
AssociateSoftwareToken(args) = cognito_identity_provider("AssociateSoftwareToken", args)

"""
    CreateResourceServer()

Creates a new OAuth2.0 resource server and defines custom scopes in it.

Required Parameters
{
  "Identifier": "A unique resource server identifier for the resource server. This could be an HTTPS endpoint where the resource server is located. For example, https://my-weather-api.example.com.",
  "UserPoolId": "The user pool ID for the user pool.",
  "Name": "A friendly name for the resource server."
}

Optional Parameters
{
  "Scopes": "A list of scopes. Each scope is map, where the keys are name and description."
}
"""
CreateResourceServer(args) = cognito_identity_provider("CreateResourceServer", args)

"""
    DescribeRiskConfiguration()

Describes the risk configuration.

Required Parameters
{
  "UserPoolId": "The user pool ID."
}

Optional Parameters
{
  "ClientId": "The app client ID."
}
"""
DescribeRiskConfiguration(args) = cognito_identity_provider("DescribeRiskConfiguration", args)

"""
    AdminDeleteUserAttributes()

Deletes the user attributes in a user pool as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters
{
  "UserAttributeNames": "An array of strings representing the user attribute names you wish to delete. For custom attributes, you must prepend the custom: prefix to the attribute name.",
  "UserPoolId": "The user pool ID for the user pool where you want to delete user attributes.",
  "Username": "The user name of the user from which you would like to delete attributes."
}
"""
AdminDeleteUserAttributes(args) = cognito_identity_provider("AdminDeleteUserAttributes", args)

"""
    AdminCreateUser()

Creates a new user in the specified user pool. If MessageAction is not set, the default is to send a welcome message via email or phone (SMS). This message is based on a template that you configured in your call to create or update a user pool. This template includes your custom sign-up instructions and placeholders for user name and temporary password. Alternatively, you can call AdminCreateUser with “SUPPRESS” for the MessageAction parameter, and Amazon Cognito will not send any email.  In either case, the user will be in the FORCE_CHANGE_PASSWORD state until they sign in and change their password.  AdminCreateUser requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where the user will be created.",
  "Username": "The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed."
}

Optional Parameters
{
  "ForceAliasCreation": "This parameter is only used if the phone_number_verified or email_verified attribute is set to True. Otherwise, it is ignored. If this parameter is set to True and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. If this parameter is set to False, the API throws an AliasExistsException error if the alias already exists. The default value is False.",
  "MessageAction": "Set to \"RESEND\" to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to \"SUPPRESS\" to suppress sending the message. Only one value can be specified.",
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminCreateUser API action, Amazon Cognito invokes the function that is assigned to the pre sign-up trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminCreateUser request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "UserAttributes": "An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than Username. However, any attributes that you specify as required (when creating a user pool or in the Attributes tab of the console) must be supplied either by you (in your call to AdminCreateUser) or by the user (when he or she signs up in response to your welcome message). For custom attributes, you must prepend the custom: prefix to the attribute name. To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the Users tab of the Amazon Cognito console for managing your user pools. In your call to AdminCreateUser, you can set the email_verified attribute to True, and you can set the phone_number_verified attribute to True. (You can also do this by calling AdminUpdateUserAttributes.)    email: The email address of the user to whom the message that contains the code and username will be sent. Required if the email_verified attribute is set to True, or if \"EMAIL\" is specified in the DesiredDeliveryMediums parameter.    phone_number: The phone number of the user to whom the message that contains the code and username will be sent. Required if the phone_number_verified attribute is set to True, or if \"SMS\" is specified in the DesiredDeliveryMediums parameter.  ",
  "ValidationData": "The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user's domain. To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process. The user's validation data is not persisted.",
  "TemporaryPassword": "The user's temporary password. This password must conform to the password policy that you specified when you created the user pool. The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins. This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you. The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call AdminCreateUser again, specifying \"RESEND\" for the MessageAction parameter.",
  "DesiredDeliveryMediums": "Specify \"EMAIL\" if email will be used to send the welcome message. Specify \"SMS\" if the phone number will be used. The default value is \"SMS\". More than one value can be specified."
}
"""
AdminCreateUser(args) = cognito_identity_provider("AdminCreateUser", args)

"""
    CreateUserImportJob()

Creates the user import job.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool that the users are being imported into.",
  "JobName": "The job name for the user import job.",
  "CloudWatchLogsRoleArn": "The role ARN for the Amazon CloudWatch Logging role for the user import job."
}
"""
CreateUserImportJob(args) = cognito_identity_provider("CreateUserImportJob", args)

"""
    DescribeResourceServer()

Describes a resource server.

Required Parameters
{
  "Identifier": "The identifier for the resource server",
  "UserPoolId": "The user pool ID for the user pool that hosts the resource server."
}
"""
DescribeResourceServer(args) = cognito_identity_provider("DescribeResourceServer", args)

"""
    AdminUpdateDeviceStatus()

Updates the device status as an administrator. Calling this action requires developer credentials.

Required Parameters
{
  "DeviceKey": "The device key.",
  "UserPoolId": "The user pool ID.",
  "Username": "The user name."
}

Optional Parameters
{
  "DeviceRememberedStatus": "The status indicating whether a device has been remembered or not."
}
"""
AdminUpdateDeviceStatus(args) = cognito_identity_provider("AdminUpdateDeviceStatus", args)

"""
    ConfirmSignUp()

Confirms registration of a user and handles the existing alias from a previous user.

Required Parameters
{
  "ClientId": "The ID of the app client associated with the user pool.",
  "ConfirmationCode": "The confirmation code sent by a user's request to confirm registration.",
  "Username": "The user name of the user whose registration you wish to confirm."
}

Optional Parameters
{
  "ForceAliasCreation": "Boolean to be specified to force user confirmation irrespective of existing alias. By default set to False. If this parameter is set to True and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to False, the API will throw an AliasExistsException error.",
  "ClientMetadata": "A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is assigned to the post confirmation trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a clientMetadata attribute, which provides the data that you assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function code in AWS Lambda, you can process the clientMetadata value to enhance your workflow for your specific needs. For more information, see Customizing User Pool Workflows with Lambda Triggers in the Amazon Cognito Developer Guide.  Take the following limitations into consideration when you use the ClientMetadata parameter:   Amazon Cognito does not store the ClientMetadata value. This data is available only to AWS Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose.   Amazon Cognito does not validate the ClientMetadata value.   Amazon Cognito does not encrypt the the ClientMetadata value, so don't use it to provide sensitive information.   ",
  "SecretHash": "A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.",
  "UserContextData": "Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.",
  "AnalyticsMetadata": "The Amazon Pinpoint analytics metadata for collecting metrics for ConfirmSignUp calls."
}
"""
ConfirmSignUp(args) = cognito_identity_provider("ConfirmSignUp", args)

"""
    AdminEnableUser()

Enables the specified user as an administrator. Works on any user. Calling this action requires developer credentials.

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool where you want to enable the user.",
  "Username": "The user name of the user you wish to enable."
}
"""
AdminEnableUser(args) = cognito_identity_provider("AdminEnableUser", args)

"""
    AdminDisableProviderForUser()

Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked DestinationUser) signs in, they must create a new user account. See AdminLinkProviderForUser. This action is enabled only for admin access and requires developer credentials. The ProviderName must match the value specified when creating an IdP for the pool.  To disable a native username + password user, the ProviderName value must be Cognito and the ProviderAttributeName must be Cognito_Subject, with the ProviderAttributeValue being the name that is used in the user pool for the user. The ProviderAttributeName must always be Cognito_Subject for social identity providers. The ProviderAttributeValue must always be the exact subject that was used when the user was originally linked as a source user. For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the ProviderAttributeName and ProviderAttributeValue must be the same values that were used for the SourceUser when the identities were originally linked using  AdminLinkProviderForUser call. (If the linking was done with ProviderAttributeName set to Cognito_Subject, the same applies here). However, if the user has already signed in, the ProviderAttributeName must be Cognito_Subject and ProviderAttributeValue must be the subject of the SAML assertion.

Required Parameters
{
  "User": "The user to be disabled.",
  "UserPoolId": "The user pool ID for the user pool."
}
"""
AdminDisableProviderForUser(args) = cognito_identity_provider("AdminDisableProviderForUser", args)

"""
    CreateIdentityProvider()

Creates an identity provider for a user pool.

Required Parameters
{
  "ProviderName": "The identity provider name.",
  "ProviderDetails": "The identity provider details. The following list describes the provider detail keys for each identity provider type.   For Google and Login with Amazon:   client_id   client_secret   authorize_scopes     For Facebook:   client_id   client_secret   authorize_scopes   api_version     For Sign in with Apple:   client_id   team_id   key_id   private_key   authorize_scopes     For OIDC providers:   client_id   client_secret   attributes_request_method   oidc_issuer   authorize_scopes   authorize_url if not available from discovery URL specified by oidc_issuer key    token_url if not available from discovery URL specified by oidc_issuer key    attributes_url if not available from discovery URL specified by oidc_issuer key    jwks_uri if not available from discovery URL specified by oidc_issuer key      For SAML providers:   MetadataFile OR MetadataURL   IDPSignout optional     ",
  "UserPoolId": "The user pool ID.",
  "ProviderType": "The identity provider type."
}

Optional Parameters
{
  "AttributeMapping": "A mapping of identity provider attributes to standard and custom user pool attributes.",
  "IdpIdentifiers": "A list of identity provider identifiers."
}
"""
CreateIdentityProvider(args) = cognito_identity_provider("CreateIdentityProvider", args)

"""
    UpdateGroup()

Updates the specified group with the specified attributes. Calling this action requires developer credentials.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters
{
  "GroupName": "The name of the group.",
  "UserPoolId": "The user pool ID for the user pool."
}

Optional Parameters
{
  "Description": "A string containing the new description of the group.",
  "Precedence": "The new precedence value for the group. For more information about this parameter, see CreateGroup.",
  "RoleArn": "The new role ARN for the group. This is used for setting the cognito:roles and cognito:preferred_role claims in the token."
}
"""
UpdateGroup(args) = cognito_identity_provider("UpdateGroup", args)

"""
    UpdateUserPool()

Updates the specified user pool with the specified attributes. You can get a list of the current user pool settings using DescribeUserPool.  If you don't provide a value for an attribute, it will be set to the default value. 

Required Parameters
{
  "UserPoolId": "The user pool ID for the user pool you want to update."
}

Optional Parameters
{
  "SmsVerificationMessage": "A container with information about the SMS verification message.",
  "MfaConfiguration": "Can be one of the following values:    OFF - MFA tokens are not required and cannot be specified during user registration.    ON - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.    OPTIONAL - Users have the option when registering to create an MFA token.  ",
  "SmsAuthenticationMessage": "The contents of the SMS authentication message.",
  "DeviceConfiguration": "Device configuration.",
  "VerificationMessageTemplate": "The template for verification messages.",
  "EmailConfiguration": "Email configuration.",
  "AccountRecoverySetting": "Use this setting to define which verified available method a user can use to recover their password when they call ForgotPassword. It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.",
  "SmsConfiguration": "SMS configuration.",
  "AdminCreateUserConfig": "The configuration for AdminCreateUser requests.",
  "AutoVerifiedAttributes": "The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.",
  "EmailVerificationMessage": "The contents of the email verification message.",
  "UserPoolTags": "The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.",
  "Policies": "A container with the policies you wish to update in a user pool.",
  "UserPoolAddOns": "Used to enable advanced security risk detection. Set the key AdvancedSecurityMode to the value \"AUDIT\".",
  "EmailVerificationSubject": "The subject of the email verification message.",
  "LambdaConfig": "The AWS Lambda configuration information from the request to update the user pool."
}
"""
UpdateUserPool(args) = cognito_identity_provider("UpdateUserPool", args)

"""
    AdminListUserAuthEvents()

Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.

Required Parameters
{
  "UserPoolId": "The user pool ID.",
  "Username": "The user pool username or an alias."
}

Optional Parameters
{
  "MaxResults": "The maximum number of authentication events to return.",
  "NextToken": "A pagination token."
}
"""
AdminListUserAuthEvents(args) = cognito_identity_provider("AdminListUserAuthEvents", args)