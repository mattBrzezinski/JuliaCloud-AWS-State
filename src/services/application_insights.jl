include("../AWSCorePrototypeServices.jl")
using .Services: application_insights

"""
    DeleteLogPattern()

Removes the specified log pattern from a LogPatternSet.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "PatternSetName": "The name of the log pattern set.",
  "PatternName": "The name of the log pattern."
}
"""
DeleteLogPattern(args) = application_insights("DeleteLogPattern", args)

"""
    ListTagsForResource()

Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the application that you want to retrieve tag information for."
}
"""
ListTagsForResource(args) = application_insights("ListTagsForResource", args)

"""
    UpdateComponent()

Updates the custom component name and/or the list of resources that make up the component.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ComponentName": "The name of the component."
}

Optional Parameters
{
  "NewComponentName": "The new name of the component.",
  "ResourceList": "The list of resource ARNs that belong to the component."
}
"""
UpdateComponent(args) = application_insights("UpdateComponent", args)

"""
    ListComponents()

Lists the auto-grouped, standalone, and custom components of the application.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results."
}
"""
ListComponents(args) = application_insights("ListComponents", args)

"""
    UpdateLogPattern()

Adds a log pattern to a LogPatternSet.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "PatternSetName": "The name of the log pattern set.",
  "PatternName": "The name of the log pattern."
}

Optional Parameters
{
  "Pattern": "The log pattern.",
  "Rank": "Rank of the log pattern."
}
"""
UpdateLogPattern(args) = application_insights("UpdateLogPattern", args)

"""
    DescribeComponent()

Describes a component and lists the resources that are grouped together in a component.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ComponentName": "The name of the component."
}
"""
DescribeComponent(args) = application_insights("DescribeComponent", args)

"""
    DescribeObservation()

Describes an anomaly or error with the application.

Required Parameters
{
  "ObservationId": "The ID of the observation."
}
"""
DescribeObservation(args) = application_insights("DescribeObservation", args)

"""
    DeleteApplication()

Removes the specified application from monitoring. Does not delete the application.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}
"""
DeleteApplication(args) = application_insights("DeleteApplication", args)

"""
    DescribeProblemObservations()

Describes the anomalies or errors associated with the problem.

Required Parameters
{
  "ProblemId": "The ID of the problem."
}
"""
DescribeProblemObservations(args) = application_insights("DescribeProblemObservations", args)

"""
    CreateApplication()

Adds an application that is created from a resource group.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}

Optional Parameters
{
  "Tags": "List of tags to add to the application. tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.",
  "OpsItemSNSTopicArn": " The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem. ",
  "OpsCenterEnabled": " When set to true, creates opsItems for any problems detected on an application. ",
  "CWEMonitorEnabled": " Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others. "
}
"""
CreateApplication(args) = application_insights("CreateApplication", args)

"""
    UpdateApplication()

Updates the application.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}

Optional Parameters
{
  "RemoveSNSTopic": " Disassociates the SNS topic from the opsItem created for detected problems.",
  "OpsItemSNSTopicArn": " The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.",
  "OpsCenterEnabled": " When set to true, creates opsItems for any problems detected on an application. ",
  "CWEMonitorEnabled": " Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others. "
}
"""
UpdateApplication(args) = application_insights("UpdateApplication", args)

"""
    DescribeLogPattern()

Describe a specific log pattern from a LogPatternSet.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "PatternSetName": "The name of the log pattern set.",
  "PatternName": "The name of the log pattern."
}
"""
DescribeLogPattern(args) = application_insights("DescribeLogPattern", args)

"""
    ListLogPatterns()

Lists the log patterns in the specific log LogPatternSet.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}

Optional Parameters
{
  "PatternSetName": "The name of the log pattern set.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results."
}
"""
ListLogPatterns(args) = application_insights("ListLogPatterns", args)

"""
    ListProblems()

Lists the problems with your application.

Optional Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "StartTime": "The time when the problem was detected, in epoch seconds. If you don't specify a time frame for the request, problems within the past seven days are returned.",
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results.",
  "EndTime": "The time when the problem ended, in epoch seconds. If not specified, problems within the past seven days are returned."
}
"""

ListProblems() = application_insights("ListProblems")
ListProblems(args) = application_insights("ListProblems", args)

"""
    TagResource()

Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the application that you want to add one or more tags to.",
  "Tags": "A list of tags that to add to the application. A tag consists of a required tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters."
}
"""
TagResource(args) = application_insights("TagResource", args)

"""
    UntagResource()

Remove one or more tags (keys and values) from a specified application.

Required Parameters
{
  "ResourceARN": "The Amazon Resource Name (ARN) of the application that you want to remove one or more tags from.",
  "TagKeys": "The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value. To remove more than one tag from the application, append the TagKeys parameter and argument for each additional tag to remove, separated by an ampersand. "
}
"""
UntagResource(args) = application_insights("UntagResource", args)

"""
    ListApplications()

Lists the IDs of the applications that you are monitoring. 

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results."
}
"""

ListApplications() = application_insights("ListApplications")
ListApplications(args) = application_insights("ListApplications", args)

"""
    DescribeProblem()

Describes an application problem.

Required Parameters
{
  "ProblemId": "The ID of the problem."
}
"""
DescribeProblem(args) = application_insights("DescribeProblem", args)

"""
    ListLogPatternSets()

Lists the log pattern sets in the specific application.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.",
  "NextToken": "The token to request the next page of results."
}
"""
ListLogPatternSets(args) = application_insights("ListLogPatternSets", args)

"""
    CreateLogPattern()

Adds an log pattern to a LogPatternSet.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "PatternSetName": "The name of the log pattern set.",
  "PatternName": "The name of the log pattern.",
  "Pattern": "The log pattern.",
  "Rank": "Rank of the log pattern."
}
"""
CreateLogPattern(args) = application_insights("CreateLogPattern", args)

"""
    DeleteComponent()

Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ComponentName": "The name of the component."
}
"""
DeleteComponent(args) = application_insights("DeleteComponent", args)

"""
    DescribeComponentConfiguration()

Describes the monitoring configuration of the component.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ComponentName": "The name of the component."
}
"""
DescribeComponentConfiguration(args) = application_insights("DescribeComponentConfiguration", args)

"""
    DescribeComponentConfigurationRecommendation()

Describes the recommended monitoring configuration of the component.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "Tier": "The tier of the application component. Supported tiers include DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB, SQL_SERVER, and DEFAULT.",
  "ComponentName": "The name of the component."
}
"""
DescribeComponentConfigurationRecommendation(args) = application_insights("DescribeComponentConfigurationRecommendation", args)

"""
    DescribeApplication()

Describes the application.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group."
}
"""
DescribeApplication(args) = application_insights("DescribeApplication", args)

"""
    CreateComponent()

Creates a custom component by grouping similar standalone instances to monitor.

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ResourceList": "The list of resource ARNs that belong to the component.",
  "ComponentName": "The name of the component."
}
"""
CreateComponent(args) = application_insights("CreateComponent", args)

"""
    ListConfigurationHistory()

 Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.   

Optional Parameters
{
  "ResourceGroupName": "Resource group to which the application belongs. ",
  "StartTime": "The start time of the event. ",
  "MaxResults": " The maximum number of results returned by ListConfigurationHistory in paginated output. When this parameter is used, ListConfigurationHistory returns only MaxResults in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another ListConfigurationHistory request with the returned NextToken value. If this parameter is not used, then ListConfigurationHistory returns all results. ",
  "NextToken": "The NextToken value returned from a previous paginated ListConfigurationHistory request where MaxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the NextToken value. This value is null when there are no more results to return.",
  "EndTime": "The end time of the event.",
  "EventStatus": "The status of the configuration update event. Possible values include INFO, WARN, and ERROR."
}
"""

ListConfigurationHistory() = application_insights("ListConfigurationHistory")
ListConfigurationHistory(args) = application_insights("ListConfigurationHistory", args)

"""
    UpdateComponentConfiguration()

Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation. 

Required Parameters
{
  "ResourceGroupName": "The name of the resource group.",
  "ComponentName": "The name of the component."
}

Optional Parameters
{
  "Tier": "The tier of the application component. Supported tiers include DOT_NET_WORKER, DOT_NET_WEB, DOT_NET_CORE, SQL_SERVER, and DEFAULT.",
  "Monitor": "Indicates whether the application component is monitored.",
  "ComponentConfiguration": "The configuration settings of the component. The value is the escaped JSON of the configuration. For more information about the JSON format, see Working with JSON. You can send a request to DescribeComponentConfigurationRecommendation to see the recommended configuration for a component. For the complete format of the component configuration file, see Component Configuration."
}
"""
UpdateComponentConfiguration(args) = application_insights("UpdateComponentConfiguration", args)