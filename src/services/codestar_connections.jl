include("../AWSCorePrototypeServices.jl")
using .Services: codestar_connections

"""
    ListTagsForResource()

Gets the set of key-value pairs (metadata) that are used to manage the resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any."
}
"""
ListTagsForResource(args) = codestar_connections("ListTagsForResource", args)

"""
    ListHosts()

Lists the hosts associated with your account.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "NextToken": "The token that was returned from the previous ListHosts call, which can be used to return the next set of hosts in the list."
}
"""

ListHosts() = codestar_connections("ListHosts")
ListHosts(args) = codestar_connections("ListHosts", args)

"""
    ListConnections()

Lists the connections associated with your account.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.",
  "ProviderTypeFilter": "Filters the list of connections to those associated with a specified provider, such as Bitbucket.",
  "NextToken": "The token that was returned from the previous ListConnections call, which can be used to return the next set of connections in the list.",
  "HostArnFilter": "Filters the list of connections to those associated with a specified host."
}
"""

ListConnections() = codestar_connections("ListConnections")
ListConnections(args) = codestar_connections("ListConnections", args)

"""
    TagResource()

Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.",
  "Tags": "The tags you want to modify or add to the resource."
}
"""
TagResource(args) = codestar_connections("TagResource", args)

"""
    UntagResource()

Removes tags from an AWS resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource to remove tags from.",
  "TagKeys": "The list of keys for the tags to be removed from the resource."
}
"""
UntagResource(args) = codestar_connections("UntagResource", args)

"""
    DeleteHost()

The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.  A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state. 

Required Parameters
{
  "HostArn": "The Amazon Resource Name (ARN) of the host to be deleted."
}
"""
DeleteHost(args) = codestar_connections("DeleteHost", args)

"""
    GetConnection()

Returns the connection ARN and details such as status, owner, and provider type.

Required Parameters
{
  "ConnectionArn": "The Amazon Resource Name (ARN) of a connection."
}
"""
GetConnection(args) = codestar_connections("GetConnection", args)

"""
    CreateConnection()

Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.

Required Parameters
{
  "ConnectionName": "The name of the connection to be created. The name must be unique in the calling AWS account."
}

Optional Parameters
{
  "Tags": "The key-value pair to use when tagging the resource.",
  "HostArn": "The Amazon Resource Name (ARN) of the host associated with the connection to be created.",
  "ProviderType": "The name of the external provider where your third-party code repository is configured. The valid provider type is Bitbucket."
}
"""
CreateConnection(args) = codestar_connections("CreateConnection", args)

"""
    DeleteConnection()

The connection to be deleted.

Required Parameters
{
  "ConnectionArn": "The Amazon Resource Name (ARN) of the connection to be deleted.  The ARN is never reused if the connection is deleted. "
}
"""
DeleteConnection(args) = codestar_connections("DeleteConnection", args)

"""
    GetHost()

Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration.

Required Parameters
{
  "HostArn": "The Amazon Resource Name (ARN) of the requested host."
}
"""
GetHost(args) = codestar_connections("GetHost", args)

"""
    CreateHost()

Creates a resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider.  A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console. 

Required Parameters
{
  "ProviderEndpoint": "The endpoint of the infrastructure to be represented by the host after it is created.",
  "Name": "The name of the host to be created. The name must be unique in the calling AWS account.",
  "ProviderType": "The name of the installed provider to be associated with your connection. The host resource represents the infrastructure where your provider type is installed. The valid provider type is GitHub Enterprise Server."
}

Optional Parameters
{
  "VpcConfiguration": "The VPC configuration to be provisioned for the host. A VPC must be configured and the infrastructure to be represented by the host must already be connected to the VPC."
}
"""
CreateHost(args) = codestar_connections("CreateHost", args)
