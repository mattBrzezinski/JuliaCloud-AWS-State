include("../AWSCorePrototypeServices.jl")
using .Services: global_accelerator

"""
Delete a listener from an accelerator.

Required Parameters:
ListenerArn
"""
DeleteListener(args) = global_accelerator("DeleteListener", args)

"""
Describe an accelerator. To see an AWS CLI example of describing an accelerator, scroll down to Example.

Required Parameters:
AcceleratorArn
"""
DescribeAccelerator(args) = global_accelerator("DescribeAccelerator", args)

"""
Update an accelerator. To see an AWS CLI example of updating an accelerator, scroll down to Example.  You must specify the US-West-2 (Oregon) Region to create or update accelerators. 

Required Parameters:
AcceleratorArn
"""
UpdateAccelerator(args) = global_accelerator("UpdateAccelerator", args)

"""
Describe a listener.

Required Parameters:
ListenerArn
"""
DescribeListener(args) = global_accelerator("DescribeListener", args)

"""
Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify. To see an AWS CLI example of creating a listener, scroll down to Example.

Required Parameters:
AcceleratorArn, PortRanges, Protocol, IdempotencyToken
"""
CreateListener(args) = global_accelerator("CreateListener", args)

"""
Delete an accelerator. Note: before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups).

Required Parameters:
AcceleratorArn
"""
DeleteAccelerator(args) = global_accelerator("DeleteAccelerator", args)

"""
Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS Region. To see an AWS CLI example of creating an endpoint group, scroll down to Example.

Required Parameters:
ListenerArn, EndpointGroupRegion, IdempotencyToken
"""
CreateEndpointGroup(args) = global_accelerator("CreateEndpointGroup", args)

"""
List the accelerators for an AWS account.
"""
ListAccelerators() = global_accelerator("ListAccelerators")

"""
Delete an endpoint group from a listener.

Required Parameters:
EndpointGroupArn
"""
DeleteEndpointGroup(args) = global_accelerator("DeleteEndpointGroup", args)

"""
Update a listener.

Required Parameters:
ListenerArn
"""
UpdateListener(args) = global_accelerator("UpdateListener", args)

"""
List the endpoint groups that are associated with a listener.

Required Parameters:
ListenerArn
"""
ListEndpointGroups(args) = global_accelerator("ListEndpointGroups", args)

"""
Describe the attributes of an accelerator.

Required Parameters:
AcceleratorArn
"""
DescribeAcceleratorAttributes(args) = global_accelerator("DescribeAcceleratorAttributes", args)

"""
Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. To see an AWS CLI example of creating an accelerator, scroll down to Example.  You must specify the US-West-2 (Oregon) Region to create or update accelerators. 

Required Parameters:
Name, IdempotencyToken
"""
CreateAccelerator(args) = global_accelerator("CreateAccelerator", args)

"""
Describe an endpoint group.

Required Parameters:
EndpointGroupArn
"""
DescribeEndpointGroup(args) = global_accelerator("DescribeEndpointGroup", args)

"""
List the listeners for an accelerator.

Required Parameters:
AcceleratorArn
"""
ListListeners(args) = global_accelerator("ListListeners", args)

"""
Update an endpoint group. To see an AWS CLI example of updating an endpoint group, scroll down to Example.

Required Parameters:
EndpointGroupArn
"""
UpdateEndpointGroup(args) = global_accelerator("UpdateEndpointGroup", args)

"""
Update the attributes for an accelerator. To see an AWS CLI example of updating an accelerator to enable flow logs, scroll down to Example.

Required Parameters:
AcceleratorArn
"""
UpdateAcceleratorAttributes(args) = global_accelerator("UpdateAcceleratorAttributes", args)
