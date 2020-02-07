include("../AWSCorePrototypeServices.jl")
using .Services: application_insights

"""
Removes the specified log pattern from a LogPatternSet.

Required Parameters:
ResourceGroupName, PatternSetName, PatternName
"""
DeleteLogPattern(args) = application_insights("DeleteLogPattern", args)

"""
Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = application_insights("ListTagsForResource", args)

"""
Updates the custom component name and/or the list of resources that make up the component.

Required Parameters:
ResourceGroupName, ComponentName
"""
UpdateComponent(args) = application_insights("UpdateComponent", args)

"""
Lists the auto-grouped, standalone, and custom components of the application.

Required Parameters:
ResourceGroupName
"""
ListComponents(args) = application_insights("ListComponents", args)

"""
Adds a log pattern to a LogPatternSet.

Required Parameters:
ResourceGroupName, PatternSetName, PatternName
"""
UpdateLogPattern(args) = application_insights("UpdateLogPattern", args)

"""
Describes a component and lists the resources that are grouped together in a component.

Required Parameters:
ResourceGroupName, ComponentName
"""
DescribeComponent(args) = application_insights("DescribeComponent", args)

"""
Describes an anomaly or error with the application.

Required Parameters:
ObservationId
"""
DescribeObservation(args) = application_insights("DescribeObservation", args)

"""
Removes the specified application from monitoring. Does not delete the application.

Required Parameters:
ResourceGroupName
"""
DeleteApplication(args) = application_insights("DeleteApplication", args)

"""
Describes the anomalies or errors associated with the problem.

Required Parameters:
ProblemId
"""
DescribeProblemObservations(args) = application_insights("DescribeProblemObservations", args)

"""
Adds an application that is created from a resource group.

Required Parameters:
ResourceGroupName
"""
CreateApplication(args) = application_insights("CreateApplication", args)

"""
Updates the application.

Required Parameters:
ResourceGroupName
"""
UpdateApplication(args) = application_insights("UpdateApplication", args)

"""
Describe a specific log pattern from a LogPatternSet.

Required Parameters:
ResourceGroupName, PatternSetName, PatternName
"""
DescribeLogPattern(args) = application_insights("DescribeLogPattern", args)

"""
Lists the log patterns in the specific log LogPatternSet.

Required Parameters:
ResourceGroupName
"""
ListLogPatterns(args) = application_insights("ListLogPatterns", args)

"""
Lists the problems with your application.
"""
ListProblems() = application_insights("ListProblems")

"""
Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = application_insights("TagResource", args)

"""
Remove one or more tags (keys and values) from a specified application.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = application_insights("UntagResource", args)

"""
Lists the IDs of the applications that you are monitoring. 
"""
ListApplications() = application_insights("ListApplications")

"""
Describes an application problem.

Required Parameters:
ProblemId
"""
DescribeProblem(args) = application_insights("DescribeProblem", args)

"""
Lists the log pattern sets in the specific application.

Required Parameters:
ResourceGroupName
"""
ListLogPatternSets(args) = application_insights("ListLogPatternSets", args)

"""
Adds an log pattern to a LogPatternSet.

Required Parameters:
ResourceGroupName, PatternSetName, PatternName, Pattern, Rank
"""
CreateLogPattern(args) = application_insights("CreateLogPattern", args)

"""
Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.

Required Parameters:
ResourceGroupName, ComponentName
"""
DeleteComponent(args) = application_insights("DeleteComponent", args)

"""
Describes the monitoring configuration of the component.

Required Parameters:
ResourceGroupName, ComponentName
"""
DescribeComponentConfiguration(args) = application_insights("DescribeComponentConfiguration", args)

"""
Describes the recommended monitoring configuration of the component.

Required Parameters:
ResourceGroupName, ComponentName, Tier
"""
DescribeComponentConfigurationRecommendation(args) = application_insights("DescribeComponentConfigurationRecommendation", args)

"""
Describes the application.

Required Parameters:
ResourceGroupName
"""
DescribeApplication(args) = application_insights("DescribeApplication", args)

"""
Creates a custom component by grouping similar standalone instances to monitor.

Required Parameters:
ResourceGroupName, ComponentName, ResourceList
"""
CreateComponent(args) = application_insights("CreateComponent", args)

"""
 Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.   
"""
ListConfigurationHistory() = application_insights("ListConfigurationHistory")

"""
Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation. 

Required Parameters:
ResourceGroupName, ComponentName
"""
UpdateComponentConfiguration(args) = application_insights("UpdateComponentConfiguration", args)
