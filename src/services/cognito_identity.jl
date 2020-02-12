include("../AWSCorePrototypeServices.jl")
using .Services: cognito_identity

"""
    ListTagsForResource

Lists the tags that are assigned to an Amazon Cognito identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria. You can use this action up to 10 times per second, per account.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the identity pool that the tags are assigned to."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = cognito_identity("ListTagsForResource", args)
"""
    MergeDeveloperIdentities

Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (SourceUserIdentifier) with the IdentityId of the DestinationUserIdentifier. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown. The number of linked logins is limited to 20. So, the number of linked logins for the source user, SourceUserIdentifier, and the destination user, DestinationUserIdentifier, together should not be larger than 20. Otherwise, an exception will be thrown. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "SourceUserIdentifier": "User identifier for the source user. The value should be a DeveloperUserIdentifier.",
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID.",
  "DeveloperProviderName": "The \"domain\" by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the DeveloperProviderName, you can use letters as well as period (.), underscore (_), and dash (-).",
  "DestinationUserIdentifier": "User identifier for the destination user. The value should be a DeveloperUserIdentifier."
}


Optional Parameters:
{}

"""

MergeDeveloperIdentities(args) = cognito_identity("MergeDeveloperIdentities", args)
"""
    DeleteIdentityPool

Deletes an identity pool. Once a pool is deleted, users will not be able to authenticate with the pool. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{}

"""

DeleteIdentityPool(args) = cognito_identity("DeleteIdentityPool", args)
"""
    ListIdentityPools

Lists all of the Cognito identity pools registered for your account. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "MaxResults": "The maximum number of identities to return."
}


Optional Parameters:
{
  "NextToken": "A pagination token."
}

"""

ListIdentityPools(args) = cognito_identity("ListIdentityPools", args)
"""
    GetCredentialsForIdentity

Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token. This is a public API. You do not need any credentials to call this API.

Required Parameters:
{
  "IdentityId": "A unique identifier in the format REGION:GUID."
}


Optional Parameters:
{
  "CustomRoleArn": "The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.",
  "Logins": "A set of optional name-value pairs that map provider names to provider tokens. The name-value pair will follow the syntax \"provider_name\": \"provider_user_identifier\". Logins should not be specified when trying to get credentials for an unauthenticated identity. The Logins parameter is required when using identities associated with external identity providers such as FaceBook. For examples of Logins maps, see the code examples in the External Identity Providers section of the Amazon Cognito Developer Guide."
}

"""

GetCredentialsForIdentity(args) = cognito_identity("GetCredentialsForIdentity", args)
"""
    GetIdentityPoolRoles

Gets the roles for an identity pool. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{}

"""

GetIdentityPoolRoles(args) = cognito_identity("GetIdentityPoolRoles", args)
"""
    SetIdentityPoolRoles

Sets the roles for an identity pool. These roles are used when making calls to GetCredentialsForIdentity action. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID.",
  "Roles": "The map of roles associated with this pool. For a given role, the key will be either \"authenticated\" or \"unauthenticated\" and the value will be the Role ARN."
}


Optional Parameters:
{
  "RoleMappings": "How users for a specific identity provider are to mapped to roles. This is a string to RoleMapping object map. The string identifies the identity provider, for example, \"graph.facebook.com\" or \"cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id\". Up to 25 rules can be specified per identity provider."
}

"""

SetIdentityPoolRoles(args) = cognito_identity("SetIdentityPoolRoles", args)
"""
    GetOpenIdTokenForDeveloperIdentity

Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the Logins map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users. You can use GetOpenIdTokenForDeveloperIdentity to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the IdentityId should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing IdentityId. This API will create the identity in the specified IdentityPoolId. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID.",
  "Logins": "A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax \"developer_provider_name\": \"developer_user_identifier\". The developer provider is the \"domain\" by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins."
}


Optional Parameters:
{
  "IdentityId": "A unique identifier in the format REGION:GUID.",
  "TokenDuration": "The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don't provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.  Please provide for a small grace period, usually no more than 5 minutes, to account for clock skew. "
}

"""

GetOpenIdTokenForDeveloperIdentity(args) = cognito_identity("GetOpenIdTokenForDeveloperIdentity", args)
"""
    UnlinkDeveloperIdentity

Unlinks a DeveloperUserIdentifier from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID.",
  "DeveloperUserIdentifier": "A unique ID used by your backend authentication process to identify a user.",
  "IdentityId": "A unique identifier in the format REGION:GUID.",
  "DeveloperProviderName": "The \"domain\" by which Cognito will refer to your users."
}


Optional Parameters:
{}

"""

UnlinkDeveloperIdentity(args) = cognito_identity("UnlinkDeveloperIdentity", args)
"""
    LookupDeveloperIdentity

Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity. Either IdentityID or DeveloperUserIdentifier must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, DeveloperUserIdentifier will be matched against IdentityID. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a ResourceConflictException is thrown.  LookupDeveloperIdentity is intended for low-throughput control plane operations: for example, to enable customer service to locate an identity ID by username. If you are using it for higher-volume operations such as user authentication, your requests are likely to be throttled. GetOpenIdTokenForDeveloperIdentity is a better option for higher-volume operations for user authentication. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{
  "MaxResults": "The maximum number of identities to return.",
  "NextToken": "A pagination token. The first call you make will have NextToken set to null. After that the service will return NextToken values as needed. For example, let's say you make a request with MaxResults set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.",
  "DeveloperUserIdentifier": "A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.",
  "IdentityId": "A unique identifier in the format REGION:GUID."
}

"""

LookupDeveloperIdentity(args) = cognito_identity("LookupDeveloperIdentity", args)
"""
    GetOpenIdToken

Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by GetId. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link. The OpenId token is valid for 10 minutes. This is a public API. You do not need any credentials to call this API.

Required Parameters:
{
  "IdentityId": "A unique identifier in the format REGION:GUID."
}


Optional Parameters:
{
  "Logins": "A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any other OpenId Connect provider, always include the id_token."
}

"""

GetOpenIdToken(args) = cognito_identity("GetOpenIdToken", args)
"""
    TagResource

Assigns a set of tags to an Amazon Cognito identity pool. A tag is a label that you can use to categorize and manage identity pools in different ways, such as by purpose, owner, environment, or other criteria. Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of an identity pool, one for testing and another for production, you might assign an Environment tag key to both identity pools. The value of this key might be Test for one identity pool and Production for the other. Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your identity pools. In an IAM policy, you can constrain permissions for identity pools based on specific tags or tag values. You can use this action up to 5 times per second, per account. An identity pool can have as many as 50 tags.

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the identity pool to assign the tags to.",
  "Tags": "The tags to assign to the identity pool."
}


Optional Parameters:
{}

"""

TagResource(args) = cognito_identity("TagResource", args)
"""
    UnlinkIdentity

Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible. This is a public API. You do not need any credentials to call this API.

Required Parameters:
{
  "LoginsToRemove": "Provider names to unlink from this identity.",
  "IdentityId": "A unique identifier in the format REGION:GUID.",
  "Logins": "A set of optional name-value pairs that map provider names to provider tokens."
}


Optional Parameters:
{}

"""

UnlinkIdentity(args) = cognito_identity("UnlinkIdentity", args)
"""
    UntagResource

Removes the specified tags from an Amazon Cognito identity pool. You can use this action up to 5 times per second, per account

Required Parameters:
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the identity pool that the tags are assigned to.",
  "TagKeys": "The keys of the tags to remove from the user pool."
}


Optional Parameters:
{}

"""

UntagResource(args) = cognito_identity("UntagResource", args)
"""
    CreateIdentityPool

Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The keys for SupportedLoginProviders are as follows:   Facebook: graph.facebook.com    Google: accounts.google.com    Amazon: www.amazon.com    Twitter: api.twitter.com    Digits: www.digits.com    You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolName": "A string that you provide.",
  "AllowUnauthenticatedIdentities": "TRUE if the identity pool supports unauthenticated logins."
}


Optional Parameters:
{
  "SupportedLoginProviders": "Optional key:value pairs mapping provider names to provider app IDs.",
  "SamlProviderARNs": "An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.",
  "AllowClassicFlow": "Enables or disables the Basic (Classic) authentication flow. For more information, see Identity Pools (Federated Identities) Authentication Flow in the Amazon Cognito Developer Guide.",
  "DeveloperProviderName": "The \"domain\" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the DeveloperProviderName, you can use letters as well as period (.), underscore (_), and dash (-). Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.",
  "OpenIdConnectProviderARNs": "A list of OpendID Connect provider ARNs.",
  "CognitoIdentityProviders": "An array of Amazon Cognito user pools and their client IDs.",
  "IdentityPoolTags": "Tags to assign to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria."
}

"""

CreateIdentityPool(args) = cognito_identity("CreateIdentityPool", args)
"""
    DeleteIdentities

Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityIdsToDelete": "A list of 1-60 identities that you want to delete."
}


Optional Parameters:
{}

"""

DeleteIdentities(args) = cognito_identity("DeleteIdentities", args)
"""
    ListIdentities

Lists the identities in an identity pool. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "MaxResults": "The maximum number of identities to return.",
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{
  "NextToken": "A pagination token.",
  "HideDisabled": "An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response."
}

"""

ListIdentities(args) = cognito_identity("ListIdentities", args)
"""
    DescribeIdentity

Returns metadata related to the given identity, including when the identity was created and any associated linked logins. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityId": "A unique identifier in the format REGION:GUID."
}


Optional Parameters:
{}

"""

DescribeIdentity(args) = cognito_identity("DescribeIdentity", args)
"""
    GetId

Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account. This is a public API. You do not need any credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{
  "AccountId": "A standard AWS account ID (9+ digits).",
  "Logins": "A set of optional name-value pairs that map provider names to provider tokens. The available provider names for Logins are as follows:   Facebook: graph.facebook.com    Amazon Cognito user pool: cognito-idp.&lt;region&gt;.amazonaws.com/&lt;YOUR_USER_POOL_ID&gt;, for example, cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789.    Google: accounts.google.com    Amazon: www.amazon.com    Twitter: api.twitter.com    Digits: www.digits.com   "
}

"""

GetId(args) = cognito_identity("GetId", args)
"""
    UpdateIdentityPool

Updates an identity pool. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolName": "A string that you provide.",
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID.",
  "AllowUnauthenticatedIdentities": "TRUE if the identity pool supports unauthenticated logins."
}


Optional Parameters:
{
  "SupportedLoginProviders": "Optional key:value pairs mapping provider names to provider app IDs.",
  "SamlProviderARNs": "An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.",
  "AllowClassicFlow": "Enables or disables the Basic (Classic) authentication flow. For more information, see Identity Pools (Federated Identities) Authentication Flow in the Amazon Cognito Developer Guide.",
  "DeveloperProviderName": "The \"domain\" by which Cognito will refer to your users.",
  "OpenIdConnectProviderARNs": "A list of OpendID Connect provider ARNs.",
  "CognitoIdentityProviders": "A list representing an Amazon Cognito user pool and its client ID.",
  "IdentityPoolTags": "The tags that are assigned to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria."
}

"""

UpdateIdentityPool(args) = cognito_identity("UpdateIdentityPool", args)
"""
    DescribeIdentityPool

Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users. You must use AWS Developer credentials to call this API.

Required Parameters:
{
  "IdentityPoolId": "An identity pool ID in the format REGION:GUID."
}


Optional Parameters:
{}

"""

DescribeIdentityPool(args) = cognito_identity("DescribeIdentityPool", args)