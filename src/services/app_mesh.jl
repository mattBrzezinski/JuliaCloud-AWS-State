include("../AWSCorePrototypeServices.jl")
using .Services: app_mesh

"""
Describes an existing service mesh.

Required Parameters:
meshName
"""
DescribeMesh(args) = app_mesh("GET", "/meshes/{meshName}", args)

"""
Describes an existing virtual router.

Required Parameters:
meshName, virtualRouterName
"""
DescribeVirtualRouter(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
Describes an existing virtual node.

Required Parameters:
meshName, virtualNodeName
"""
DescribeVirtualNode(args) = app_mesh("GET", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
Creates a new virtual router within a service mesh.
         Virtual routers handle traffic for one or more service names within your mesh. After you
         create your virtual router, create and associate routes for your virtual router that direct
         incoming requests to different virtual nodes.

Required Parameters:
meshName, spec, virtualRouterName
"""
CreateVirtualRouter(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouters", args)

"""
Returns a list of existing service meshes.
"""
ListMeshes() = app_mesh("GET", "/meshes")

"""
Describes an existing route.

Required Parameters:
meshName, routeName, virtualRouterName
"""
DescribeRoute(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
Updates an existing virtual node in a specified service mesh.

Required Parameters:
meshName, spec, virtualNodeName
"""
UpdateVirtualNode(args) = app_mesh("PUT", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
Deletes an existing virtual router.
         You must delete any routes associated with the virtual router before you can delete the
         router itself.

Required Parameters:
meshName, virtualRouterName
"""
DeleteVirtualRouter(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
Updates an existing virtual router in a specified service mesh.

Required Parameters:
meshName, spec, virtualRouterName
"""
UpdateVirtualRouter(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouters/{virtualRouterName}", args)

"""
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
         

Required Parameters:
meshName, spec, virtualNodeName
"""
CreateVirtualNode(args) = app_mesh("PUT", "/meshes/{meshName}/virtualNodes", args)

"""
Creates a new service mesh. A service mesh is a logical boundary for network traffic
         between the services that reside within it.
         After you create your service mesh, you can create virtual nodes, virtual routers, and
         routes to distribute traffic between the applications in your mesh.

Required Parameters:
meshName
"""
CreateMesh(args) = app_mesh("PUT", "/meshes", args)

"""
Deletes an existing service mesh.
         You must delete all resources (routes, virtual routers, virtual nodes) in the service
         mesh before you can delete the mesh itself.

Required Parameters:
meshName
"""
DeleteMesh(args) = app_mesh("DELETE", "/meshes/{meshName}", args)

"""
Deletes an existing route.

Required Parameters:
meshName, routeName, virtualRouterName
"""
DeleteRoute(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
Updates an existing route for a specified service mesh and virtual router.

Required Parameters:
meshName, routeName, spec, virtualRouterName
"""
UpdateRoute(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", args)

"""
Deletes an existing virtual node.

Required Parameters:
meshName, virtualNodeName
"""
DeleteVirtualNode(args) = app_mesh("DELETE", "/meshes/{meshName}/virtualNodes/{virtualNodeName}", args)

"""
Creates a new route that is associated with a virtual router.
         You can use the prefix parameter in your route specification for path-based
         routing of requests. For example, if your virtual router service name is
            my-service.local, and you want the route to match requests to
            my-service.local/metrics, then your prefix should be
         /metrics.
         If your route matches a request, you can distribute traffic to one or more target
         virtual nodes with relative weighting.

Required Parameters:
meshName, routeName, spec, virtualRouterName
"""
CreateRoute(args) = app_mesh("PUT", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", args)

"""
Returns a list of existing virtual nodes.

Required Parameters:
meshName
"""
ListVirtualNodes(args) = app_mesh("GET", "/meshes/{meshName}/virtualNodes", args)

"""
Returns a list of existing routes in a service mesh.

Required Parameters:
meshName, virtualRouterName
"""
ListRoutes(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", args)

"""
Returns a list of existing virtual routers in a service mesh.

Required Parameters:
meshName
"""
ListVirtualRouters(args) = app_mesh("GET", "/meshes/{meshName}/virtualRouters", args)
