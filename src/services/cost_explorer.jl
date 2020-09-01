include("../AWSCorePrototypeServices.jl")
using .Services: cost_explorer

"""
    GetSavingsPlansUtilization()

Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Master accounts in an organization have access to member accounts. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.  You cannot group by any dimension values for GetSavingsPlansUtilization. 

Required Parameters
{
  "TimePeriod": "The time period that you want the usage and costs for. The Start date must be within 13 months. The End date must be after the Start date, and before the current date. Future dates can't be used as an End date."
}

Optional Parameters
{
  "Filter": "Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:    LINKED_ACCOUNT     SAVINGS_PLAN_ARN     SAVINGS_PLANS_TYPE     REGION     PAYMENT_OPTION     INSTANCE_TYPE_FAMILY     GetSavingsPlansUtilization uses the same Expression object as the other operations, but only AND is supported among each dimension.",
  "Granularity": "The granularity of the Amazon Web Services utillization data for your Savings Plans. The GetSavingsPlansUtilization operation supports only DAILY and MONTHLY granularities."
}
"""
GetSavingsPlansUtilization(args) = cost_explorer("GetSavingsPlansUtilization", args)

"""
    GetReservationCoverage()

Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data about reservation usage by the following dimensions:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY   To determine valid values for a dimension, use the GetDimensionValues operation. 

Required Parameters
{
  "TimePeriod": "The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01. "
}

Optional Parameters
{
  "GroupBy": "You can group the data by the following attributes:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   TENANCY  ",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters utilization data by dimensions. You can filter by the following dimensions:   AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY    GetReservationCoverage uses the same Expression object as the other operations, but only AND is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together. If you don't provide a SERVICE filter, Cost Explorer defaults to EC2. Cost category is also supported.",
  "Granularity": "The granularity of the AWS cost data for the reservation. Valid values are MONTHLY and DAILY. If GroupBy is set, Granularity can't be set. If Granularity isn't set, the response object doesn't include Granularity, either MONTHLY or DAILY. The GetReservationCoverage operation supports only DAILY and MONTHLY granularities.",
  "Metrics": "The measurement that you want your reservation coverage reported in. Valid values are Hour, Unit, and Cost. You can use multiple values in a request."
}
"""
GetReservationCoverage(args) = cost_explorer("GetReservationCoverage", args)

"""
    GetTags()

Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. 

Required Parameters
{
  "TimePeriod": "The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01."
}

Optional Parameters
{
  "SearchString": "The value that you want to search for.",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "TagKey": "The key of the tag that you want to return values for."
}
"""
GetTags(args) = cost_explorer("GetTags", args)

"""
    GetCostAndUsageWithResources()

Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.  This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see Controlling Access for Cost Explorer in the AWS Billing and Cost Management User Guide. 

Required Parameters
{
  "TimePeriod": "Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01."
}

Optional Parameters
{
  "GroupBy": "You can group Amazon Web Services costs using up to two different groups: either dimensions, tag keys, or both.",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters Amazon Web Services costs by different dimensions. For example, you can specify SERVICE and LINKED_ACCOUNT and get the costs that are associated with that account's usage of that service. You can nest Expression objects to define any combination of dimension filters. For more information, see Expression.  The GetCostAndUsageWithResources operation requires that you either group by or filter by a ResourceId.",
  "Granularity": "Sets the AWS cost granularity to MONTHLY, DAILY, or HOURLY. If Granularity isn't set, the response object doesn't include the Granularity, MONTHLY, DAILY, or HOURLY. ",
  "Metrics": "Which metrics are returned in the query. For more information about blended and unblended rates, see Why does the \"blended\" annotation appear on some line items in my bill?.  Valid values are AmortizedCost, BlendedCost, NetAmortizedCost, NetUnblendedCost, NormalizedUsageAmount, UnblendedCost, and UsageQuantity.   If you return the UsageQuantity metric, the service aggregates all usage numbers without taking the units into account. For example, if you aggregate usageQuantity across all of Amazon EC2, the results aren't meaningful because Amazon EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful UsageQuantity metrics, filter by UsageType or UsageTypeGroups.    Metrics is required for GetCostAndUsageWithResources requests."
}
"""
GetCostAndUsageWithResources(args) = cost_explorer("GetCostAndUsageWithResources", args)

"""
    GetDimensionValues()

Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. 

Required Parameters
{
  "TimePeriod": "The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01.",
  "Dimension": "The name of the dimension. Each Dimension is available for a different Context. For more information, see Context. "
}

Optional Parameters
{
  "SearchString": "The value that you want to search the filter values for.",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "Context": "The context for the call to GetDimensionValues. This can be RESERVATIONS or COST_AND_USAGE. The default value is COST_AND_USAGE. If the context is set to RESERVATIONS, the resulting dimension values can be used in the GetReservationUtilization operation. If the context is set to COST_AND_USAGE, the resulting dimension values can be used in the GetCostAndUsage operation. If you set the context to COST_AND_USAGE, you can use the following dimensions for searching:   AZ - The Availability Zone. An example is us-east-1a.   DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.   INSTANCE_TYPE - The type of Amazon EC2 instance. An example is m4.xlarge.   LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.   LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.   OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.   OPERATION - The action performed. Examples include RunInstance and CreateBucket.   PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.   PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.   SERVICE - The AWS service such as Amazon DynamoDB.   USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the GetDimensionValues operation includes a unit attribute. Examples include GB and Hrs.   USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.   RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.   RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.   If you set the context to RESERVATIONS, you can use the following dimensions for searching:   AZ - The Availability Zone. An example is us-east-1a.   CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.   DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are SingleAZ and MultiAZ.   INSTANCE_TYPE - The type of Amazon EC2 instance. An example is m4.xlarge.   LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.   PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.   REGION - The AWS Region.   SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.   TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).   TENANCY - The tenancy of a resource. Examples are shared or dedicated.   If you set the context to SAVINGS_PLANS, you can use the following dimensions for searching:   SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)   PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)   REGION - The AWS Region.   INSTANCE_TYPE_FAMILY - The family of instances (For example, m5)   LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.   SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan  "
}
"""
GetDimensionValues(args) = cost_explorer("GetDimensionValues", args)

"""
    GetReservationUtilization()

Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible dimension values. Currently, you can group only by SUBSCRIPTION_ID. 

Required Parameters
{
  "TimePeriod": "Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01. "
}

Optional Parameters
{
  "GroupBy": "Groups only by SUBSCRIPTION_ID. Metadata is included.",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters utilization data by dimensions. You can filter by the following dimensions:   AZ   CACHE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   SCOPE   TENANCY    GetReservationUtilization uses the same Expression object as the other operations, but only AND is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.",
  "Granularity": "If GroupBy is set, Granularity can't be set. If Granularity isn't set, the response object doesn't include Granularity, either MONTHLY or DAILY. If both GroupBy and Granularity aren't set, GetReservationUtilization defaults to DAILY. The GetReservationUtilization operation supports only DAILY and MONTHLY granularities."
}
"""
GetReservationUtilization(args) = cost_explorer("GetReservationUtilization", args)

"""
    GetSavingsPlansPurchaseRecommendation()

Retrieves your request parameters, Savings Plan Recommendations Summary and Details. 

Required Parameters
{
  "SavingsPlansType": "The Savings Plans recommendation type requested.",
  "TermInYears": "The savings plan recommendation term used to generate these recommendations.",
  "PaymentOption": "The payment option used to generate these recommendations.",
  "LookbackPeriodInDays": "The lookback period used to generate the recommendation."
}

Optional Parameters
{
  "NextPageToken": "The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "You can filter your recommendations by Account ID with the LINKED_ACCOUNT dimension. To filter your recommendations by Account ID, specify Key as LINKED_ACCOUNT and Value as the comma-separated Acount ID(s) for which you want to see Savings Plans purchase recommendations. For GetSavingsPlansPurchaseRecommendation, the Filter does not include CostCategories or Tags. It only includes Dimensions. With Dimensions, Key must be LINKED_ACCOUNT and Value can be a single Account ID or multiple comma-separated Account IDs for which you want to see Savings Plans Purchase Recommendations. AND and OR operators are not supported.",
  "PageSize": "The number of recommendations that you want returned in a single response object.",
  "AccountScope": "The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to PAYER. If the value is LINKED, recommendations are calculated for individual linked accounts only."
}
"""
GetSavingsPlansPurchaseRecommendation(args) = cost_explorer("GetSavingsPlansPurchaseRecommendation", args)

"""
    GetUsageForecast()

Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. 

Required Parameters
{
  "Metric": "Which metric Cost Explorer uses to create your forecast. Valid values for a GetUsageForecast call are the following:   USAGE_QUANTITY   NORMALIZED_USAGE_AMOUNT  ",
  "TimePeriod": "The start and end dates of the period that you want to retrieve usage forecast for. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01.",
  "Granularity": "How granular you want the forecast to be. You can get 3 months of DAILY forecasts or 12 months of MONTHLY forecasts. The GetUsageForecast operation supports only DAILY and MONTHLY granularities."
}

Optional Parameters
{
  "Filter": "The filters that you want to use to filter your forecast. Cost Explorer API supports all of the Cost Explorer filters.",
  "PredictionIntervalLevel": "Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals."
}
"""
GetUsageForecast(args) = cost_explorer("GetUsageForecast", args)

"""
    CreateCostCategoryDefinition()

Creates a new Cost Category with the requested name and rules.

Required Parameters
{
  "Rules": "The Cost Category rules used to categorize costs. For more information, see CostCategoryRule.",
  "Name": "",
  "RuleVersion": ""
}
"""
CreateCostCategoryDefinition(args) = cost_explorer("CreateCostCategoryDefinition", args)

"""
    GetRightsizingRecommendation()

Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances. Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see Optimizing Your Cost with Rightsizing Recommendations in the AWS Billing and Cost Management User Guide.

Required Parameters
{
  "Service": "The specific service that you want recommendations for. The only valid value for GetRightsizingRecommendation is \"AmazonEC2\"."
}

Optional Parameters
{
  "Configuration": " Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither. ",
  "NextPageToken": "The pagination token that indicates the next set of results that you want to retrieve.",
  "Filter": "",
  "PageSize": "The number of recommendations that you want returned in a single response object."
}
"""
GetRightsizingRecommendation(args) = cost_explorer("GetRightsizingRecommendation", args)

"""
    GetSavingsPlansCoverage()

Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.

Required Parameters
{
  "TimePeriod": "The time period that you want the usage and costs for. The Start date must be within 13 months. The End date must be after the Start date, and before the current date. Future dates can't be used as an End date."
}

Optional Parameters
{
  "GroupBy": "You can group the data using the attributes INSTANCE_FAMILY, REGION, or SERVICE.",
  "MaxResults": "The number of items to be returned in a response. The default is 20, with a minimum value of 1.",
  "NextToken": "The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY     GetSavingsPlansCoverage uses the same Expression object as the other operations, but only AND is supported among each dimension. If there are multiple values for a dimension, they are OR'd together. Cost category is also supported.",
  "Granularity": "The granularity of the Amazon Web Services cost data for your Savings Plans. Granularity can't be set if GroupBy is set. The GetSavingsPlansCoverage operation supports only DAILY and MONTHLY granularities.",
  "Metrics": "The measurement that you want your Savings Plans coverage reported in. The only valid value is SpendCoveredBySavingsPlans."
}
"""
GetSavingsPlansCoverage(args) = cost_explorer("GetSavingsPlansCoverage", args)

"""
    GetSavingsPlansUtilizationDetails()

Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 

Required Parameters
{
  "TimePeriod": "The time period that you want the usage and costs for. The Start date must be within 13 months. The End date must be after the Start date, and before the current date. Future dates can't be used as an End date."
}

Optional Parameters
{
  "MaxResults": "The number of items to be returned in a response. The default is 20, with a minimum value of 1.",
  "NextToken": "The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:    LINKED_ACCOUNT     SAVINGS_PLAN_ARN     REGION     PAYMENT_OPTION     INSTANCE_TYPE_FAMILY     GetSavingsPlansUtilizationDetails uses the same Expression object as the other operations, but only AND is supported among each dimension."
}
"""
GetSavingsPlansUtilizationDetails(args) = cost_explorer("GetSavingsPlansUtilizationDetails", args)

"""
    GetCostForecast()

Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. 

Required Parameters
{
  "Metric": "Which metric Cost Explorer uses to create your forecast. For more information about blended and unblended rates, see Why does the \"blended\" annotation appear on some line items in my bill?.  Valid values for a GetCostForecast call are the following:   AMORTIZED_COST   BLENDED_COST   NET_AMORTIZED_COST   NET_UNBLENDED_COST   UNBLENDED_COST  ",
  "TimePeriod": "The period of time that you want the forecast to cover.",
  "Granularity": "How granular you want the forecast to be. You can get 3 months of DAILY forecasts or 12 months of MONTHLY forecasts. The GetCostForecast operation supports only DAILY and MONTHLY granularities."
}

Optional Parameters
{
  "Filter": "The filters that you want to use to filter your forecast. Cost Explorer API supports all of the Cost Explorer filters.",
  "PredictionIntervalLevel": "Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals."
}
"""
GetCostForecast(args) = cost_explorer("GetCostForecast", args)

"""
    DescribeCostCategoryDefinition()

Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account. You have the option to use EffectiveOn to return a Cost Category that is active on a specific date. If there is no EffectiveOn specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 

Required Parameters
{
  "CostCategoryArn": " The unique identifier for your Cost Category. "
}

Optional Parameters
{
  "EffectiveOn": " The date when the Cost Category was effective. "
}
"""
DescribeCostCategoryDefinition(args) = cost_explorer("DescribeCostCategoryDefinition", args)

"""
    GetCostAndUsage()

Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list of valid dimensions, see the GetDimensionValues operation. Master accounts in an organization in AWS Organizations have access to all member accounts.

Required Parameters
{
  "TimePeriod": "Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if start is 2017-01-01 and end is 2017-05-01, then the cost and usage data is retrieved from 2017-01-01 up to and including 2017-04-30 but not including 2017-05-01."
}

Optional Parameters
{
  "GroupBy": "You can group AWS costs using up to two different groups, either dimensions, tag keys, or both. When you group by tag key, you get all tag values, including empty strings. Valid values are AZ, INSTANCE_TYPE, LEGAL_ENTITY_NAME, LINKED_ACCOUNT, OPERATION, PLATFORM, PURCHASE_TYPE, SERVICE, TAGS, TENANCY, RECORD_TYPE, and USAGE_TYPE.",
  "NextPageToken": "The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.",
  "Filter": "Filters AWS costs by different dimensions. For example, you can specify SERVICE and LINKED_ACCOUNT and get the costs that are associated with that account's usage of that service. You can nest Expression objects to define any combination of dimension filters. For more information, see Expression. ",
  "Granularity": "Sets the AWS cost granularity to MONTHLY or DAILY, or HOURLY. If Granularity isn't set, the response object doesn't include the Granularity, either MONTHLY or DAILY, or HOURLY. ",
  "Metrics": "Which metrics are returned in the query. For more information about blended and unblended rates, see Why does the \"blended\" annotation appear on some line items in my bill?.  Valid values are AmortizedCost, BlendedCost, NetAmortizedCost, NetUnblendedCost, NormalizedUsageAmount, UnblendedCost, and UsageQuantity.   If you return the UsageQuantity metric, the service aggregates all usage numbers without taking into account the units. For example, if you aggregate usageQuantity across all of Amazon EC2, the results aren't meaningful because Amazon EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful UsageQuantity metrics, filter by UsageType or UsageTypeGroups.    Metrics is required for GetCostAndUsage requests."
}
"""
GetCostAndUsage(args) = cost_explorer("GetCostAndUsage", args)

"""
    GetReservationPurchaseRecommendation()

Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing. AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.  For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large because that is the smallest size instance in the c4 instance family.

Required Parameters
{
  "Service": "The specific service that you want recommendations for."
}

Optional Parameters
{
  "ServiceSpecification": "The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.",
  "NextPageToken": "The pagination token that indicates the next set of results that you want to retrieve.",
  "TermInYears": "The reservation term that you want recommendations for.",
  "AccountId": "The account ID that is associated with the recommendation. ",
  "PageSize": "The number of recommendations that you want returned in a single response object.",
  "PaymentOption": "The reservation purchase option that you want recommendations for.",
  "LookbackPeriodInDays": "The number of previous days that you want AWS to consider when it calculates your recommendations.",
  "AccountScope": "The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to PAYER. If the value is LINKED, recommendations are calculated for individual linked accounts only."
}
"""
GetReservationPurchaseRecommendation(args) = cost_explorer("GetReservationPurchaseRecommendation", args)

"""
    DeleteCostCategoryDefinition()

Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.

Required Parameters
{
  "CostCategoryArn": " The unique identifier for your Cost Category. "
}
"""
DeleteCostCategoryDefinition(args) = cost_explorer("DeleteCostCategoryDefinition", args)

"""
    UpdateCostCategoryDefinition()

Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.

Required Parameters
{
  "Rules": "The Expression object used to categorize costs. For more information, see CostCategoryRule . ",
  "CostCategoryArn": "The unique identifier for your Cost Category.",
  "RuleVersion": ""
}
"""
UpdateCostCategoryDefinition(args) = cost_explorer("UpdateCostCategoryDefinition", args)

"""
    ListCostCategoryDefinitions()

Returns the name, ARN, NumberOfRules and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. ListCostCategoryDefinitions supports pagination. The request can have a MaxResults range up to 100.

Optional Parameters
{
  "EffectiveOn": " The date when the Cost Category was effective. ",
  "MaxResults": " The number of entries a paginated response contains. ",
  "NextToken": " The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size. "
}
"""

ListCostCategoryDefinitions() = cost_explorer("ListCostCategoryDefinitions")
ListCostCategoryDefinitions(args) = cost_explorer("ListCostCategoryDefinitions", args)
