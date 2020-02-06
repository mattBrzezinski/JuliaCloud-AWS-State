include("../AWSCorePrototypeServices.jl")
using .Services: apigatewaymanagementapi

"""
Get information about the connection with the provided id.

Required Parameters:
ConnectionId
"""
GetConnection(args) = apigatewaymanagementapi("GET", "/@connections/{connectionId}", args)

"""
Sends the provided data to the specified connection.

Required Parameters:
ConnectionId, Data
"""
PostToConnection(args) = apigatewaymanagementapi("POST", "/@connections/{connectionId}", args)

"""
Delete the connection with the provided id.

Required Parameters:
ConnectionId
"""
DeleteConnection(args) = apigatewaymanagementapi("DELETE", "/@connections/{connectionId}", args)
