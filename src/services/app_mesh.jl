include("../AWSCorePrototypeServices.jl")
using .Services: app_mesh

"""
    DescribeMesh()

Describes an existing service mesh.

Required Parameters
{
  "meshName": "The name of the service mesh to describe."
}
"""
DescribeMesh(args) = app_mesh("GET", "/meshes/{meshName}", args)

"""
    DescribeVirtualRouter()

Describes an existing virtual router.

Required Parameters
{
  "meshName": "The name of the service mesh in which the virtual router resides.",
  "virtualRouterName": "The name of the virtual router to describe."
}
"""
DescribeVirtualRouter(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
    DescribeVirtualNode()

Describes an existing virtual node.

Required Parameters
{
  "virtualNodeName": "The name of the virtual node to describe.",
  "meshName": "The name of the service mesh in which the virtual node resides."
}
"""
DescribeVirtualNode(args) = app_mesh("GET", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
    CreateVirtualRouter()

Creates a new virtual router within a service mesh.
         Virtual routers handle traffic for one or more service names within your mesh. After you
         create your virtual router, create and associate routes for your virtual router that direct
         incoming requests to different virtual nodes.

Required Parameters
{
  "spec": "The virtual router specification to apply.",
  "meshName": "The name of the service mesh in which to create the virtual router.",
  "virtualRouterName": "The name to use for the virtual router."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
CreateVirtualRouter(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouters", args)

"""
    ListMeshes()

Returns a list of existing service meshes.

Optional Parameters
{
  "nextToken": "The nextToken value returned from a previous paginated\n         ListMeshes request where limit was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the nextToken value.\n         \n            This token should be treated as an opaque identifier that is only used to\n                retrieve the next items in a list and not for other programmatic purposes.\n        ",
  "limit": "The maximum number of mesh results returned by ListMeshes in paginated\n         output. When this parameter is used, ListMeshes only returns\n            limit results in a single page along with a nextToken response\n         element. The remaining results of the initial request can be seen by sending another\n            ListMeshes request with the returned nextToken value. This\n         value can be between 1 and 100. If this parameter is not\n         used, then ListMeshes returns up to 100 results and a\n            nextToken value if applicable."
}
"""
ListMeshes() = app_mesh("GET", "/meshes")
ListMeshes(args) = app_mesh("GET", "/meshes", args)

"""
    DescribeRoute()

Describes an existing route.

Required Parameters
{
  "routeName": "The name of the route to describe.",
  "meshName": "The name of the service mesh in which the route resides.",
  "virtualRouterName": "The name of the virtual router with which the route is associated."
}
"""
DescribeRoute(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
    UpdateVirtualNode()

Updates an existing virtual node in a specified service mesh.

Required Parameters
{
  "spec": "The new virtual node specification to apply. This overwrites the existing data.",
  "virtualNodeName": "The name of the virtual node to update.",
  "meshName": "The name of the service mesh in which the virtual node resides."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
UpdateVirtualNode(args) = app_mesh("PUT", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
    DeleteVirtualRouter()

Deletes an existing virtual router.
         You must delete any routes associated with the virtual router before you can delete the
         router itself.

Required Parameters
{
  "meshName": "The name of the service mesh in which to delete the virtual router.",
  "virtualRouterName": "The name of the virtual router to delete."
}
"""
DeleteVirtualRouter(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
    UpdateVirtualRouter()

Updates an existing virtual router in a specified service mesh.

Required Parameters
{
  "spec": "The new virtual router specification to apply. This overwrites the existing data.",
  "meshName": "The name of the service mesh in which the virtual router resides.",
  "virtualRouterName": "The name of the virtual router to update."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
UpdateVirtualRouter(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
    CreateVirtualNode()

Creates a new virtual node within a service mesh.
         A virtual node acts as logical pointer to a particular task group, such as an Amazon ECS
         service or a Kubernetes deployment. When you create a virtual node, you must specify the
         DNS service discovery name for your task group.
         Any inbound traffic that your virtual node expects should be specified as a
            listener. Any outbound traffic that your virtual node expects to reach
         should be specified as a backend.
         The response metadata for your new virtual node contains the arn that is
         associated with the virtual node. Set this value (either the full ARN or the truncated
         resource name, for example, mesh/default/virtualNode/simpleapp, as the
            APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
         proxy container in your task definition or pod spec. This is then mapped to the
            node.id and node.cluster Envoy parameters.
         
            If you require your Envoy stats or tracing to use a different name, you can override
            the node.cluster value that is set by
               APPMESH_VIRTUAL_NODE_NAME with the
               APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
         

Required Parameters
{
  "spec": "The virtual node specification to apply.",
  "virtualNodeName": "The name to use for the virtual node.",
  "meshName": "The name of the service mesh in which to create the virtual node."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
CreateVirtualNode(args) = app_mesh("PUT", "/meshes/{meshName}/virtualNodes", args)

"""
    CreateMesh()

Creates a new service mesh. A service mesh is a logical boundary for network traffic
         between the services that reside within it.
         After you create your service mesh, you can create virtual nodes, virtual routers, and
         routes to distribute traffic between the applications in your mesh.

Required Parameters
{
  "meshName": "The name to use for the service mesh."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
CreateMesh(args) = app_mesh("PUT", "/meshes", args)

"""
    DeleteMesh()

Deletes an existing service mesh.
         You must delete all resources (routes, virtual routers, virtual nodes) in the service
         mesh before you can delete the mesh itself.

Required Parameters
{
  "meshName": "The name of the service mesh to delete."
}
"""
DeleteMesh(args) = app_mesh("DELETE", "/meshes/{meshName}", args)

"""
    DeleteRoute()

Deletes an existing route.

Required Parameters
{
  "routeName": "The name of the route to delete.",
  "meshName": "The name of the service mesh in which to delete the route.",
  "virtualRouterName": "The name of the virtual router in which to delete the route."
}
"""
DeleteRoute(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
    UpdateRoute()

Updates an existing route for a specified service mesh and virtual router.

Required Parameters
{
  "routeName": "The name of the route to update.",
  "spec": "The new route specification to apply. This overwrites the existing data.",
  "meshName": "The name of the service mesh in which the route resides.",
  "virtualRouterName": "The name of the virtual router with which the route is associated."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
UpdateRoute(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
    DeleteVirtualNode()

Deletes an existing virtual node.

Required Parameters
{
  "virtualNodeName": "The name of the virtual node to delete.",
  "meshName": "The name of the service mesh in which to delete the virtual node."
}
"""
DeleteVirtualNode(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
    CreateRoute()

Creates a new route that is associated with a virtual router.
         You can use the prefix parameter in your route specification for path-based
         routing of requests. For example, if your virtual router service name is
            my-service.local, and you want the route to match requests to
            my-service.local/metrics, then your prefix should be
         /metrics.
         If your route matches a request, you can distribute traffic to one or more target
         virtual nodes with relative weighting.

Required Parameters
{
  "routeName": "The name to use for the route.",
  "spec": "The route specification to apply.",
  "meshName": "The name of the service mesh in which to create the route.",
  "virtualRouterName": "The name of the virtual router in which to create the route."
}

Optional Parameters
{
  "clientToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the\nrequest. Up to 36 letters, numbers, hyphens, and underscores are allowed."
}
"""
CreateRoute(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", args)

"""
    ListVirtualNodes()

Returns a list of existing virtual nodes.

Required Parameters
{
  "meshName": "The name of the service mesh in which to list virtual nodes."
}

Optional Parameters
{
  "nextToken": "The nextToken value returned from a previous paginated\n         ListVirtualNodes request where limit was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the nextToken value.",
  "limit": "The maximum number of mesh results returned by ListVirtualNodes in\n         paginated output. When this parameter is used, ListVirtualNodes only returns\n         limit results in a single page along with a nextToken\n         response element. The remaining results of the initial request can be seen by sending\n         another ListVirtualNodes request with the returned nextToken\n         value. This value can be between 1 and 100. If this\n         parameter is not used, then ListVirtualNodes returns up to\n         100 results and a nextToken value if applicable."
}
"""
ListVirtualNodes(args) = app_mesh("GET", "/meshes/{meshName}/virtualNodes", args)

"""
    ListRoutes()

Returns a list of existing routes in a service mesh.

Required Parameters
{
  "meshName": "The name of the service mesh in which to list routes.",
  "virtualRouterName": "The name of the virtual router in which to list routes."
}

Optional Parameters
{
  "nextToken": "The nextToken value returned from a previous paginated\n         ListRoutes request where limit was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the nextToken value.",
  "limit": "The maximum number of mesh results returned by ListRoutes in paginated\n         output. When this parameter is used, ListRoutes only returns\n            limit results in a single page along with a nextToken response\n         element. The remaining results of the initial request can be seen by sending another\n            ListRoutes request with the returned nextToken value. This\n         value can be between 1 and 100. If this parameter is not\n         used, then ListRoutes returns up to 100 results and a\n            nextToken value if applicable."
}
"""
ListRoutes(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", args)

"""
    ListVirtualRouters()

Returns a list of existing virtual routers in a service mesh.

Required Parameters
{
  "meshName": "The name of the service mesh in which to list virtual routers."
}

Optional Parameters
{
  "nextToken": "The nextToken value returned from a previous paginated\n         ListVirtualRouters request where limit was used and the\n         results exceeded the value of that parameter. Pagination continues from the end of the\n         previous results that returned the nextToken value.",
  "limit": "The maximum number of mesh results returned by ListVirtualRouters in\n         paginated output. When this parameter is used, ListVirtualRouters only returns\n         limit results in a single page along with a nextToken\n         response element. The remaining results of the initial request can be seen by sending\n         another ListVirtualRouters request with the returned nextToken\n         value. This value can be between 1 and 100. If this\n         parameter is not used, then ListVirtualRouters returns up to\n         100 results and a nextToken value if applicable."
}
"""
ListVirtualRouters(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouters", args)
