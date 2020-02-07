include("../AWSCorePrototypeServices.jl")
using .Services: pi

"""
For a specific time period, retrieve the top N dimension keys for a metric.

Required Parameters:
ServiceType, Identifier, StartTime, EndTime, Metric, GroupBy
"""
DescribeDimensionKeys(args) = pi("DescribeDimensionKeys", args)

"""
Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.

Required Parameters:
ServiceType, Identifier, MetricQueries, StartTime, EndTime
"""
GetResourceMetrics(args) = pi("GetResourceMetrics", args)
