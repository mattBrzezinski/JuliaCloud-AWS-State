include("../AWSCorePrototypeServices.jl")
using .Services: cost_explorer

"""
Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Master accounts in an organization have access to member accounts. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.  You cannot group by any dimension values for GetSavingsPlansUtilization. 

Required Parameters:
TimePeriod
"""
GetSavingsPlansUtilization(args) = cost_explorer("GetSavingsPlansUtilization", args)

"""
Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY   To determine valid values for a dimension, use the GetDimensionValues operation. 

Required Parameters:
TimePeriod
"""
GetReservationCoverage(args) = cost_explorer("GetReservationCoverage", args)

"""
Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. 

Required Parameters:
TimePeriod
"""
GetTags(args) = cost_explorer("GetTags", args)

"""
Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.  This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see Controlling Access for Cost Explorer in the AWS Billing and Cost Management User Guide. 

Required Parameters:
TimePeriod
"""
GetCostAndUsageWithResources(args) = cost_explorer("GetCostAndUsageWithResources", args)

"""
Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. 

Required Parameters:
TimePeriod, Dimension
"""
GetDimensionValues(args) = cost_explorer("GetDimensionValues", args)

"""
Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible dimension values. Currently, you can group only by SUBSCRIPTION_ID. 

Required Parameters:
TimePeriod
"""
GetReservationUtilization(args) = cost_explorer("GetReservationUtilization", args)

"""
Retrieves your request parameters, Savings Plan Recommendations Summary and Details.

Required Parameters:
SavingsPlansType, TermInYears, PaymentOption, LookbackPeriodInDays
"""
GetSavingsPlansPurchaseRecommendation(args) = cost_explorer("GetSavingsPlansPurchaseRecommendation", args)

"""
Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. 

Required Parameters:
TimePeriod, Metric, Granularity
"""
GetUsageForecast(args) = cost_explorer("GetUsageForecast", args)

"""
   Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Creates a new Cost Category with the requested name and rules.

Required Parameters:
Name, RuleVersion, Rules
"""
CreateCostCategoryDefinition(args) = cost_explorer("CreateCostCategoryDefinition", args)

"""
Creates recommendations that helps you save cost by identifying idle and underutilized Amazon EC2 instances. Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see Optimizing Your Cost with Rightsizing Recommendations.

Required Parameters:
Service
"""
GetRightsizingRecommendation(args) = cost_explorer("GetRightsizingRecommendation", args)

"""
Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.

Required Parameters:
TimePeriod
"""
GetSavingsPlansCoverage(args) = cost_explorer("GetSavingsPlansCoverage", args)

"""
Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 

Required Parameters:
TimePeriod
"""
GetSavingsPlansUtilizationDetails(args) = cost_explorer("GetSavingsPlansUtilizationDetails", args)

"""
Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. 

Required Parameters:
TimePeriod, Metric, Granularity
"""
GetCostForecast(args) = cost_explorer("GetCostForecast", args)

"""
   Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account. You have the option to use EffectiveOn to return a Cost Category that is active on a specific date. If there is no EffectiveOn specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 

Required Parameters:
CostCategoryArn
"""
DescribeCostCategoryDefinition(args) = cost_explorer("DescribeCostCategoryDefinition", args)

"""
Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts.

Required Parameters:
TimePeriod
"""
GetCostAndUsage(args) = cost_explorer("GetCostAndUsage", args)

"""
Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing. AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.  For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large because that is the smallest size instance in the c4 instance family.

Required Parameters:
Service
"""
GetReservationPurchaseRecommendation(args) = cost_explorer("GetReservationPurchaseRecommendation", args)

"""
   Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.

Required Parameters:
CostCategoryArn
"""
DeleteCostCategoryDefinition(args) = cost_explorer("DeleteCostCategoryDefinition", args)

"""
   Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.

Required Parameters:
CostCategoryArn, RuleVersion, Rules
"""
UpdateCostCategoryDefinition(args) = cost_explorer("UpdateCostCategoryDefinition", args)

"""
   Cost Category is in public beta for AWS Billing and Cost Management and is subject to change. Your use of Cost Categories is subject to the Beta Service Participation terms of the AWS Service Terms (Section 1.10).    Returns the name, ARN and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 
"""
ListCostCategoryDefinitions() = cost_explorer("ListCostCategoryDefinitions")
