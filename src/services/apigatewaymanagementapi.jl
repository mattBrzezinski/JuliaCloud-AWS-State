include("../AWSCorePrototypeServices.jl")
using .Services: apigatewaymanagementapi

"""
Get information about the connection with the provided id.
"""
GetConnection(ConnectionId) = apigatewaymanagementapi("GET", "/@connections/$connectionId")
GetConnection(ConnectionId, args) = apigatewaymanagementapi("GET", "/@connections/$connectionId", args)
GetConnection(a...; b...) = GetConnection(a..., b)

"""
Sends the provided data to the specified connection.
"""
PostToConnection(ConnectionId, Data) = apigatewaymanagementapi("POST", "/@connections/$connectionId")
PostToConnection(ConnectionId, Data, args) = apigatewaymanagementapi("POST", "/@connections/$connectionId", args)
PostToConnection(a...; b...) = PostToConnection(a..., b)

"""
Delete the connection with the provided id.
"""
DeleteConnection(ConnectionId) = apigatewaymanagementapi("DELETE", "/@connections/$connectionId")
DeleteConnection(ConnectionId, args) = apigatewaymanagementapi("DELETE", "/@connections/$connectionId", args)
DeleteConnection(a...; b...) = DeleteConnection(a..., b)
