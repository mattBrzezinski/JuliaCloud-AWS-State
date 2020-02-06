include("../AWSCorePrototypeServices.jl")
using .Services: sagemaker_a2i_runtime

"""
Returns information about the specified human loop.

Required Parameters:
HumanLoopName
"""
DescribeHumanLoop(args) = sagemaker_a2i_runtime("GET", "/human-loops/{HumanLoopName}", args)

"""
Returns information about human loops, given the specified parameters.
"""
ListHumanLoops() = sagemaker_a2i_runtime("GET", "/human-loops")

"""
Starts a human loop, provided that at least one activation condition is met.

Required Parameters:
HumanLoopName, FlowDefinitionArn, HumanLoopInput
"""
StartHumanLoop(args) = sagemaker_a2i_runtime("POST", "/human-loops", args)

"""
Deletes the specified human loop for a flow definition.

Required Parameters:
HumanLoopName
"""
DeleteHumanLoop(args) = sagemaker_a2i_runtime("DELETE", "/human-loops/{HumanLoopName}", args)

"""
Stops the specified human loop.

Required Parameters:
HumanLoopName
"""
StopHumanLoop(args) = sagemaker_a2i_runtime("POST", "/human-loops/stop", args)
