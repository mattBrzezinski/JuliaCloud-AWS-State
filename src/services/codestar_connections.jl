include("../AWSCorePrototypeServices.jl")
using .Services: codestar_connections

"""
Returns the connection ARN and details such as status, owner, and provider type.

Required Parameters:
ConnectionArn
"""
GetConnection(args) = codestar_connections("GetConnection", args)

"""
Lists the connections associated with your account.
"""
ListConnections() = codestar_connections("ListConnections")

"""
Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.

Required Parameters:
ProviderType, ConnectionName
"""
CreateConnection(args) = codestar_connections("CreateConnection", args)

"""
The connection to be deleted.

Required Parameters:
ConnectionArn
"""
DeleteConnection(args) = codestar_connections("DeleteConnection", args)
