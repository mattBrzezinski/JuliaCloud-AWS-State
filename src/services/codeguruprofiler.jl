include("../AWSCorePrototypeServices.jl")
using .Services: codeguruprofiler

"""
Update a profiling group.
"""
UpdateProfilingGroup(agentOrchestrationConfig, profilingGroupName) = codeguruprofiler("PUT", "/profilingGroups/$profilingGroupName")
UpdateProfilingGroup(agentOrchestrationConfig, profilingGroupName, args) = codeguruprofiler("PUT", "/profilingGroups/$profilingGroupName", args)
UpdateProfilingGroup(a...; b...) = UpdateProfilingGroup(a..., b)

"""
Submit profile collected by an agent belonging to a profiling group for aggregation.
"""
PostAgentProfile(agentProfile, contentType, profilingGroupName) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/agentProfile")
PostAgentProfile(agentProfile, contentType, profilingGroupName, args) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/agentProfile", args)
PostAgentProfile(a...; b...) = PostAgentProfile(a..., b)

"""
List profiling groups in the account.
"""
ListProfilingGroups() = codeguruprofiler("GET", "/profilingGroups")
ListProfilingGroups(, args) = codeguruprofiler("GET", "/profilingGroups", args)
ListProfilingGroups(a...; b...) = ListProfilingGroups(a..., b)

"""
Delete a profiling group.
"""
DeleteProfilingGroup(profilingGroupName) = codeguruprofiler("DELETE", "/profilingGroups/$profilingGroupName")
DeleteProfilingGroup(profilingGroupName, args) = codeguruprofiler("DELETE", "/profilingGroups/$profilingGroupName", args)
DeleteProfilingGroup(a...; b...) = DeleteProfilingGroup(a..., b)

"""
Create a profiling group.
"""
CreateProfilingGroup(clientToken, profilingGroupName) = codeguruprofiler("POST", "/profilingGroups")
CreateProfilingGroup(clientToken, profilingGroupName, args) = codeguruprofiler("POST", "/profilingGroups", args)
CreateProfilingGroup(a...; b...) = CreateProfilingGroup(a..., b)

"""
Provides the configuration to use for an agent of the profiling group.
"""
ConfigureAgent(profilingGroupName) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/configureAgent")
ConfigureAgent(profilingGroupName, args) = codeguruprofiler("POST", "/profilingGroups/$profilingGroupName/configureAgent", args)
ConfigureAgent(a...; b...) = ConfigureAgent(a..., b)

"""
List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
"""
ListProfileTimes(endTime, period, profilingGroupName, startTime) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profileTimes")
ListProfileTimes(endTime, period, profilingGroupName, startTime, args) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profileTimes", args)
ListProfileTimes(a...; b...) = ListProfileTimes(a..., b)

"""
Get the aggregated profile of a profiling group for the specified time range. If the requested time range does not align with the available aggregated profiles, it will be expanded to attain alignment. If aggregated profiles are available only for part of the period requested, the profile is returned from the earliest available to the latest within the requested time range. For instance, if the requested time range is from 00:00 to 00:20 and the available profiles are from 00:15 to 00:25, then the returned profile will be from 00:15 to 00:20.
"""
GetProfile(profilingGroupName) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profile")
GetProfile(profilingGroupName, args) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName/profile", args)
GetProfile(a...; b...) = GetProfile(a..., b)

"""
Describe a profiling group.
"""
DescribeProfilingGroup(profilingGroupName) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName")
DescribeProfilingGroup(profilingGroupName, args) = codeguruprofiler("GET", "/profilingGroups/$profilingGroupName", args)
DescribeProfilingGroup(a...; b...) = DescribeProfilingGroup(a..., b)
