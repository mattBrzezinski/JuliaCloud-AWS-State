include("../AWSCorePrototypeServices.jl")
using .Services: codeguruprofiler

"""
    UpdateProfilingGroup()

Update a profiling group.

Required Parameters
{
  "profilingGroupName": "",
  "agentOrchestrationConfig": "Remote configuration to configure the agents of the profiling group."
}
"""
UpdateProfilingGroup(args) = codeguruprofiler("PUT", "/profilingGroups/{profilingGroupName}", args)

"""
    PostAgentProfile()

Submit profile collected by an agent belonging to a profiling group for aggregation.

Required Parameters
{
  "profilingGroupName": "",
  "agentProfile": "",
  "contentType": "The content type of the agent profile in the payload. Recommended to send the profile gzipped with content-type application/octet-stream. Other accepted values are application/x-amzn-ion and application/json for unzipped Ion and JSON respectively."
}

Optional Parameters
{
  "profileToken": "Client generated token to deduplicate the agent profile during aggregation."
}
"""
PostAgentProfile(args) = codeguruprofiler("POST", "/profilingGroups/{profilingGroupName}/agentProfile", args)

"""
    ListProfilingGroups()

List profiling groups in the account.

Optional Parameters
{
  "maxResults": "",
  "nextToken": "",
  "includeDescription": "If set to true, returns the full description of the profiling groups instead of the names. Defaults to false."
}
"""
ListProfilingGroups() = codeguruprofiler("GET", "/profilingGroups")
ListProfilingGroups(args) = codeguruprofiler("GET", "/profilingGroups", args)

"""
    DeleteProfilingGroup()

Delete a profiling group.

Required Parameters
{
  "profilingGroupName": ""
}
"""
DeleteProfilingGroup(args) = codeguruprofiler("DELETE", "/profilingGroups/{profilingGroupName}", args)

"""
    CreateProfilingGroup()

Create a profiling group.

Required Parameters
{
  "profilingGroupName": "",
  "clientToken": ""
}

Optional Parameters
{
  "agentOrchestrationConfig": ""
}
"""
CreateProfilingGroup(args) = codeguruprofiler("POST", "/profilingGroups", args)

"""
    ConfigureAgent()

Provides the configuration to use for an agent of the profiling group.

Required Parameters
{
  "profilingGroupName": ""
}

Optional Parameters
{
  "fleetInstanceId": ""
}
"""
ConfigureAgent(args) = codeguruprofiler("POST", "/profilingGroups/{profilingGroupName}/configureAgent", args)

"""
    ListProfileTimes()

List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.

Required Parameters
{
  "profilingGroupName": "",
  "startTime": "The start time of the time range to list the profiles from.",
  "period": "The aggregation period to list the profiles for.",
  "endTime": "The end time of the time range to list profiles until."
}

Optional Parameters
{
  "maxResults": "",
  "nextToken": "",
  "orderBy": "The order (ascending or descending by start time of the profile) to list the profiles by. Defaults to TIMESTAMP_DESCENDING."
}
"""
ListProfileTimes(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}/profileTimes", args)

"""
    GetProfile()

Get the aggregated profile of a profiling group for the specified time range. If the requested time range does not align with the available aggregated profiles, it will be expanded to attain alignment. If aggregated profiles are available only for part of the period requested, the profile is returned from the earliest available to the latest within the requested time range. For instance, if the requested time range is from 00:00 to 00:20 and the available profiles are from 00:15 to 00:25, then the returned profile will be from 00:15 to 00:20.

Required Parameters
{
  "profilingGroupName": ""
}

Optional Parameters
{
  "accept": "The format of the profile to return. Supports application/json or application/x-amzn-ion. Defaults to application/x-amzn-ion.",
  "startTime": "The start time of the profile to get.",
  "period": "The period of the profile to get. Exactly two of startTime, period and endTime must be specified. Must be positive and the overall time range to be in the past and not larger than a week.",
  "maxDepth": "",
  "endTime": "The end time of the profile to get. Either period or endTime must be specified. Must be greater than start and the overall time range to be in the past and not larger than a week."
}
"""
GetProfile(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}/profile", args)

"""
    DescribeProfilingGroup()

Describe a profiling group.

Required Parameters
{
  "profilingGroupName": ""
}
"""
DescribeProfilingGroup(args) = codeguruprofiler("GET", "/profilingGroups/{profilingGroupName}", args)
