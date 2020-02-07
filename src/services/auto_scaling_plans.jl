include("../AWSCorePrototypeServices.jl")
using .Services: auto_scaling_plans

"""
Creates a scaling plan.

Required Parameters:
ScalingPlanName, ApplicationSource, ScalingInstructions
"""
CreateScalingPlan(args) = auto_scaling_plans("CreateScalingPlan", args)

"""
Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.

Required Parameters:
ScalingPlanName, ScalingPlanVersion
"""
DeleteScalingPlan(args) = auto_scaling_plans("DeleteScalingPlan", args)

"""
Describes the scalable resources in the specified scaling plan.

Required Parameters:
ScalingPlanName, ScalingPlanVersion
"""
DescribeScalingPlanResources(args) = auto_scaling_plans("DescribeScalingPlanResources", args)

"""
Describes one or more of your scaling plans.
"""
DescribeScalingPlans() = auto_scaling_plans("DescribeScalingPlans")

"""
Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. 

Required Parameters:
ScalingPlanName, ScalingPlanVersion, ServiceNamespace, ResourceId, ScalableDimension, ForecastDataType, StartTime, EndTime
"""
GetScalingPlanResourceForecastData(args) = auto_scaling_plans("GetScalingPlanResourceForecastData", args)

"""
Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.

Required Parameters:
ScalingPlanName, ScalingPlanVersion
"""
UpdateScalingPlan(args) = auto_scaling_plans("UpdateScalingPlan", args)
