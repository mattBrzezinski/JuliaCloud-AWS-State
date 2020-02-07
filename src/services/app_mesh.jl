include("../AWSCorePrototypeServices.jl")
using .Services: app_mesh

"""
Describes an existing service mesh.
"""
DescribeMesh(meshName) = app_mesh("GET", "/meshes/$meshName")
DescribeMesh(meshName, args) = app_mesh("GET", "/meshes/$meshName", args)
DescribeMesh(a...; b...) = DescribeMesh(a..., b)

"""
Describes an existing virtual router.
"""
DescribeVirtualRouter(meshName, virtualRouterName) = app_mesh("GET", "/meshes/$meshName/virtualRouters/$virtualRouterName")
DescribeVirtualRouter(meshName, virtualRouterName, args) = app_mesh("GET", "/meshes/$meshName/virtualRouters/$virtualRouterName", args)
DescribeVirtualRouter(a...; b...) = DescribeVirtualRouter(a..., b)

"""
Describes an existing virtual node.
"""
DescribeVirtualNode(meshName, virtualNodeName) = app_mesh("GET", "/meshes/$meshName/virtualNodes/$virtualNodeName")
DescribeVirtualNode(meshName, virtualNodeName, args) = app_mesh("GET", "/meshes/$meshName/virtualNodes/$virtualNodeName", args)
DescribeVirtualNode(a...; b...) = DescribeVirtualNode(a..., b)

"""
Creates a new virtual router within a service mesh.
         Virtual routers handle traffic for one or more service names within your mesh. After you
         create your virtual router, create and associate routes for your virtual router that direct
         incoming requests to different virtual nodes.
"""
CreateVirtualRouter(meshName, spec, virtualRouterName) = app_mesh("PUT", "/meshes/$meshName/virtualRouters")
CreateVirtualRouter(meshName, spec, virtualRouterName, args) = app_mesh("PUT", "/meshes/$meshName/virtualRouters", args)
CreateVirtualRouter(a...; b...) = CreateVirtualRouter(a..., b)

"""
Returns a list of existing service meshes.
"""
ListMeshes() = app_mesh("GET", "/meshes")
ListMeshes(, args) = app_mesh("GET", "/meshes", args)
ListMeshes(a...; b...) = ListMeshes(a..., b)

"""
Describes an existing route.
"""
DescribeRoute(meshName, routeName, virtualRouterName) = app_mesh("GET", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")
DescribeRoute(meshName, routeName, virtualRouterName, args) = app_mesh("GET", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName", args)
DescribeRoute(a...; b...) = DescribeRoute(a..., b)

"""
Updates an existing virtual node in a specified service mesh.
"""
UpdateVirtualNode(meshName, spec, virtualNodeName) = app_mesh("PUT", "/meshes/$meshName/virtualNodes/$virtualNodeName")
UpdateVirtualNode(meshName, spec, virtualNodeName, args) = app_mesh("PUT", "/meshes/$meshName/virtualNodes/$virtualNodeName", args)
UpdateVirtualNode(a...; b...) = UpdateVirtualNode(a..., b)

"""
Deletes an existing virtual router.
         You must delete any routes associated with the virtual router before you can delete the
         router itself.
"""
DeleteVirtualRouter(meshName, virtualRouterName) = app_mesh("DELETE", "/meshes/$meshName/virtualRouters/$virtualRouterName")
DeleteVirtualRouter(meshName, virtualRouterName, args) = app_mesh("DELETE", "/meshes/$meshName/virtualRouters/$virtualRouterName", args)
DeleteVirtualRouter(a...; b...) = DeleteVirtualRouter(a..., b)

"""
Updates an existing virtual router in a specified service mesh.
"""
UpdateVirtualRouter(meshName, spec, virtualRouterName) = app_mesh("PUT", "/meshes/$meshName/virtualRouters/$virtualRouterName")
UpdateVirtualRouter(meshName, spec, virtualRouterName, args) = app_mesh("PUT", "/meshes/$meshName/virtualRouters/$virtualRouterName", args)
UpdateVirtualRouter(a...; b...) = UpdateVirtualRouter(a..., b)

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
         
"""
CreateVirtualNode(meshName, spec, virtualNodeName) = app_mesh("PUT", "/meshes/$meshName/virtualNodes")
CreateVirtualNode(meshName, spec, virtualNodeName, args) = app_mesh("PUT", "/meshes/$meshName/virtualNodes", args)
CreateVirtualNode(a...; b...) = CreateVirtualNode(a..., b)

"""
Creates a new service mesh. A service mesh is a logical boundary for network traffic
         between the services that reside within it.
         After you create your service mesh, you can create virtual nodes, virtual routers, and
         routes to distribute traffic between the applications in your mesh.
"""
CreateMesh(meshName) = app_mesh("PUT", "/meshes")
CreateMesh(meshName, args) = app_mesh("PUT", "/meshes", args)
CreateMesh(a...; b...) = CreateMesh(a..., b)

"""
Deletes an existing service mesh.
         You must delete all resources (routes, virtual routers, virtual nodes) in the service
         mesh before you can delete the mesh itself.
"""
DeleteMesh(meshName) = app_mesh("DELETE", "/meshes/$meshName")
DeleteMesh(meshName, args) = app_mesh("DELETE", "/meshes/$meshName", args)
DeleteMesh(a...; b...) = DeleteMesh(a..., b)

"""
Deletes an existing route.
"""
DeleteRoute(meshName, routeName, virtualRouterName) = app_mesh("DELETE", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")
DeleteRoute(meshName, routeName, virtualRouterName, args) = app_mesh("DELETE", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName", args)
DeleteRoute(a...; b...) = DeleteRoute(a..., b)

"""
Updates an existing route for a specified service mesh and virtual router.
"""
UpdateRoute(meshName, routeName, spec, virtualRouterName) = app_mesh("PUT", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName")
UpdateRoute(meshName, routeName, spec, virtualRouterName, args) = app_mesh("PUT", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes/$routeName", args)
UpdateRoute(a...; b...) = UpdateRoute(a..., b)

"""
Deletes an existing virtual node.
"""
DeleteVirtualNode(meshName, virtualNodeName) = app_mesh("DELETE", "/meshes/$meshName/virtualNodes/$virtualNodeName")
DeleteVirtualNode(meshName, virtualNodeName, args) = app_mesh("DELETE", "/meshes/$meshName/virtualNodes/$virtualNodeName", args)
DeleteVirtualNode(a...; b...) = DeleteVirtualNode(a..., b)

"""
Creates a new route that is associated with a virtual router.
         You can use the prefix parameter in your route specification for path-based
         routing of requests. For example, if your virtual router service name is
            my-service.local, and you want the route to match requests to
            my-service.local/metrics, then your prefix should be
         /metrics.
         If your route matches a request, you can distribute traffic to one or more target
         virtual nodes with relative weighting.
"""
CreateRoute(meshName, routeName, spec, virtualRouterName) = app_mesh("PUT", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes")
CreateRoute(meshName, routeName, spec, virtualRouterName, args) = app_mesh("PUT", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes", args)
CreateRoute(a...; b...) = CreateRoute(a..., b)

"""
Returns a list of existing virtual nodes.
"""
ListVirtualNodes(meshName) = app_mesh("GET", "/meshes/$meshName/virtualNodes")
ListVirtualNodes(meshName, args) = app_mesh("GET", "/meshes/$meshName/virtualNodes", args)
ListVirtualNodes(a...; b...) = ListVirtualNodes(a..., b)

"""
Returns a list of existing routes in a service mesh.
"""
ListRoutes(meshName, virtualRouterName) = app_mesh("GET", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes")
ListRoutes(meshName, virtualRouterName, args) = app_mesh("GET", "/meshes/$meshName/virtualRouter/$virtualRouterName/routes", args)
ListRoutes(a...; b...) = ListRoutes(a..., b)

"""
Returns a list of existing virtual routers in a service mesh.
"""
ListVirtualRouters(meshName) = app_mesh("GET", "/meshes/$meshName/virtualRouters")
ListVirtualRouters(meshName, args) = app_mesh("GET", "/meshes/$meshName/virtualRouters", args)
ListVirtualRouters(a...; b...) = ListVirtualRouters(a..., b)
