include("../AWSCorePrototypeServices.jl")
using .Services: transfer

"""
Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.

Required Parameters:
Arn
"""
ListTagsForResource(args) = transfer("ListTagsForResource", args)

"""
Instantiates an autoscaling virtual server based on Secure File Transfer Protocol (SFTP) in AWS. When you make updates to your server or when you work with users, use the service-generated ServerId property that is assigned to the newly created server.
"""
CreateServer() = transfer("CreateServer")

"""
Creates a user and associates them with an existing Secure File Transfer Protocol (SFTP) server. You can only create and associate users with SFTP servers that have the IdentityProviderType set to SERVICE_MANAGED. Using parameters for CreateUser, you can specify the user name, set the home directory, store the user's public key, and assign the user's AWS Identity and Access Management (IAM) role. You can also optionally add a scope-down policy, and assign metadata with tags that can be used to group and search for users.

Required Parameters:
Role, ServerId, UserName
"""
CreateUser(args) = transfer("CreateUser", args)

"""
Deletes a user's Secure Shell (SSH) public key. No response is returned from this operation.

Required Parameters:
ServerId, SshPublicKeyId, UserName
"""
DeleteSshPublicKey(args) = transfer("DeleteSshPublicKey", args)

"""
Updates the server properties after that server has been created. The UpdateServer call returns the ServerId of the Secure File Transfer Protocol (SFTP) server you updated.

Required Parameters:
ServerId
"""
UpdateServer(args) = transfer("UpdateServer", args)

"""
Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the UserName and ServerId you specify. The response returns the ServerId and the UserName for the updated user.

Required Parameters:
ServerId, UserName
"""
UpdateUser(args) = transfer("UpdateUser", args)

"""
If the IdentityProviderType of the server is API_Gateway, tests whether your API Gateway is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the API Gateway integration to ensure that your users can successfully use the service.

Required Parameters:
ServerId, UserName
"""
TestIdentityProvider(args) = transfer("TestIdentityProvider", args)

"""
Deletes the user belonging to the server you specify. No response returns from this operation.  When you delete a user from a server, the user's information is lost. 

Required Parameters:
ServerId, UserName
"""
DeleteUser(args) = transfer("DeleteUser", args)

"""
Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. There is no response returned from this call.

Required Parameters:
Arn, Tags
"""
TagResource(args) = transfer("TagResource", args)

"""
Adds a Secure Shell (SSH) public key to a user account identified by a UserName value assigned to a specific server, identified by ServerId. The response returns the UserName value, the ServerId value, and the name of the SshPublicKeyId.

Required Parameters:
ServerId, SshPublicKeyBody, UserName
"""
ImportSshPublicKey(args) = transfer("ImportSshPublicKey", args)

"""
Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. No response is returned from this call.

Required Parameters:
Arn, TagKeys
"""
UntagResource(args) = transfer("UntagResource", args)

"""
Describes the server that you specify by passing the ServerId parameter. The response contains a description of the server's properties. When you set EndpointType to VPC, the response will contain the EndpointDetails.

Required Parameters:
ServerId
"""
DescribeServer(args) = transfer("DescribeServer", args)

"""
Lists the Secure File Transfer Protocol (SFTP) servers that are associated with your AWS account.
"""
ListServers() = transfer("ListServers")

"""
Lists the users for the server that you specify by passing the ServerId parameter.

Required Parameters:
ServerId
"""
ListUsers(args) = transfer("ListUsers", args)

"""
Deletes the Secure File Transfer Protocol (SFTP) server that you specify. No response returns from this operation.

Required Parameters:
ServerId
"""
DeleteServer(args) = transfer("DeleteServer", args)

"""
Changes the state of a Secure File Transfer Protocol (SFTP) server from OFFLINE to ONLINE. It has no impact on an SFTP server that is already ONLINE. An ONLINE server can accept and process file transfer jobs. The state of STARTING indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of START_FAILED can indicate an error condition.  No response is returned from this call.

Required Parameters:
ServerId
"""
StartServer(args) = transfer("StartServer", args)

"""
Changes the state of an SFTP server from ONLINE to OFFLINE. An OFFLINE server cannot accept and process file transfer jobs. Information tied to your server such as server and user properties are not affected by stopping your server. Stopping a server will not reduce or impact your Secure File Transfer Protocol (SFTP) endpoint billing. The state of STOPPING indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of STOP_FAILED can indicate an error condition. No response is returned from this call.

Required Parameters:
ServerId
"""
StopServer(args) = transfer("StopServer", args)

"""
Describes the user assigned to a specific server, as identified by its ServerId property. The response from this call returns the properties of the user associated with the ServerId value that was specified.

Required Parameters:
ServerId, UserName
"""
DescribeUser(args) = transfer("DescribeUser", args)
