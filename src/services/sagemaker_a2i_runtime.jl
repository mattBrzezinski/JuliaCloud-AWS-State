include("../AWSCorePrototypeServices.jl")
using .Services: sagemaker_a2i_runtime

"""
Returns information about the specified human loop.
"""
DescribeHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("GET", "/human-loops/$HumanLoopName")
DescribeHumanLoop(HumanLoopName, args) = sagemaker_a2i_runtime("GET", "/human-loops/$HumanLoopName", args)
DescribeHumanLoop(a...; b...) = DescribeHumanLoop(a..., b)

"""
Returns information about human loops, given the specified parameters.
"""
ListHumanLoops() = sagemaker_a2i_runtime("GET", "/human-loops")
ListHumanLoops(, args) = sagemaker_a2i_runtime("GET", "/human-loops", args)
ListHumanLoops(a...; b...) = ListHumanLoops(a..., b)

"""
Starts a human loop, provided that at least one activation condition is met.
"""
StartHumanLoop(HumanLoopName, FlowDefinitionArn, HumanLoopInput) = sagemaker_a2i_runtime("POST", "/human-loops")
StartHumanLoop(HumanLoopName, FlowDefinitionArn, HumanLoopInput, args) = sagemaker_a2i_runtime("POST", "/human-loops", args)
StartHumanLoop(a...; b...) = StartHumanLoop(a..., b)

"""
Deletes the specified human loop for a flow definition.
"""
DeleteHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("DELETE", "/human-loops/$HumanLoopName")
DeleteHumanLoop(HumanLoopName, args) = sagemaker_a2i_runtime("DELETE", "/human-loops/$HumanLoopName", args)
DeleteHumanLoop(a...; b...) = DeleteHumanLoop(a..., b)

"""
Stops the specified human loop.
"""
StopHumanLoop(HumanLoopName) = sagemaker_a2i_runtime("POST", "/human-loops/stop")
StopHumanLoop(HumanLoopName, args) = sagemaker_a2i_runtime("POST", "/human-loops/stop", args)
StopHumanLoop(a...; b...) = StopHumanLoop(a..., b)
