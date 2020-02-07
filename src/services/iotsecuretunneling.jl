include("../AWSCorePrototypeServices.jl")
using .Services: iotsecuretunneling

"""
Lists the tags for the specified resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iotsecuretunneling("ListTagsForResource", args)

"""
Creates a new tunnel, and returns two client access tokens for clients to use to connect to the AWS IoT Secure Tunneling proxy server. .
"""
OpenTunnel() = iotsecuretunneling("OpenTunnel")

"""
Gets information about a tunnel identified by the unique tunnel id.

Required Parameters:
tunnelId
"""
DescribeTunnel(args) = iotsecuretunneling("DescribeTunnel", args)

"""
List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.
"""
ListTunnels() = iotsecuretunneling("ListTunnels")

"""
Closes a tunnel identified by the unique tunnel id. When a CloseTunnel request is received, we close the WebSocket connections between the client and proxy server so no data can be transmitted.

Required Parameters:
tunnelId
"""
CloseTunnel(args) = iotsecuretunneling("CloseTunnel", args)

"""
A resource tag.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iotsecuretunneling("TagResource", args)

"""
Removes a tag from a resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iotsecuretunneling("UntagResource", args)
