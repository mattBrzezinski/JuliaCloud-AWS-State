include("../AWSCorePrototypeServices.jl")
using .Services: codeguruprofiler

"""
Update a profiling group.

Required Parameters:
agentOrchestrationConfig, profilingGroupName
"""
UpdateProfilingGroup(args) = codeguruprofiler("PUT", "/profilingGroups/{profilingGroupName}", args)

"""
Submit profile collected by an agent belonging to a profiling group for aggregation.

Required Parameters:
agentProfile, contentType, profilingGroupName
"""
PostAgentProfile(args) = codeguruprofiler("POST", "/profilingGroups/{profilingGroupName}/agentProfile", args)

"""
List profiling groups in the account.
"""
ListProfilingGroups() = codeguruprofiler("GET", "/profilingGroups")

"""
Delete a profiling group.

Required Parameters:
profilingGroupName
"""
DeleteProfilingGroup(args) = codeguruprofiler("DELETE", "/profilingGroups/{profilingGroupName}", args)

"""
Create a profiling group.

Required Parameters:
clientToken, profilingGroupName
"""
CreateProfilingGroup(args) = codeguruprofiler("POST", "/profilingGroups", args)

"""
Provides the configuration to use for an agent of the profiling group.

Required Parameters:
profilingGroupName
"""
ConfigureAgent(args) = codeguruprofiler("POST", "/profilingGroups/{profilingGroupName}/configureAgent", args)

"""
List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.

Required Parameters:
endTime, period, profilingGroupName, startTime
"""
ListProfileTimes(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}/profileTimes", args)

"""
Get the aggregated profile of a profiling group for the specified time range. If the requested time range does not align with the available aggregated profiles, it will be expanded to attain alignment. If aggregated profiles are available only for part of the period requested, the profile is returned from the earliest available to the latest within the requested time range. For instance, if the requested time range is from 00:00 to 00:20 and the available profiles are from 00:15 to 00:25, then the returned profile will be from 00:15 to 00:20.

Required Parameters:
profilingGroupName
"""
GetProfile(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}/profile", args)

"""
Describe a profiling group.

Required Parameters:
profilingGroupName
"""
DescribeProfilingGroup(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}", args)
