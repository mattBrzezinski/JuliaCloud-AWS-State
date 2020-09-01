include("../AWSCorePrototypeServices.jl")
using .Services: config_service

"""
    GetConformancePackComplianceDetails()

Returns compliance details of a conformance pack for all AWS resources that are monitered by conformance pack.

Required Parameters
{
  "ConformancePackName": "Name of the conformance pack."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.",
  "Filters": "A ConformancePackEvaluationFilters object.",
  "Limit": "The maximum number of evaluation results returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100."
}
"""
GetConformancePackComplianceDetails(args) = config_service("GetConformancePackComplianceDetails", args)

"""
    PutConfigurationAggregator()

Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.  AWS Config should be enabled in source accounts and regions you want to aggregate. If your source type is an organization, you must be signed in to the master account and all features must be enabled in your organization. AWS Config calls EnableAwsServiceAccess API to enable integration between AWS Config and AWS Organizations.  

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "OrganizationAggregationSource": "An OrganizationAggregationSource object.",
  "Tags": "An array of tag object.",
  "AccountAggregationSources": "A list of AccountAggregationSource object. "
}
"""
PutConfigurationAggregator(args) = config_service("PutConfigurationAggregator", args)

"""
    DeleteConfigurationRecorder()

Deletes the configuration recorder. After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder. This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the GetResourceConfigHistory action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.

Required Parameters
{
  "ConfigurationRecorderName": "The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the DescribeConfigurationRecorders action."
}
"""
DeleteConfigurationRecorder(args) = config_service("DeleteConfigurationRecorder", args)

"""
    DescribeConfigurationAggregatorSourcesStatus()

Returns status information for sources within an aggregator. The status includes information about the last time AWS Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message. 

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "UpdateStatus": "Filters the status type.   Valid value FAILED indicates errors while moving data.   Valid value SUCCEEDED indicates the data was successfully moved.   Valid value OUTDATED indicates the data is not the most recent.  ",
  "Limit": "The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default."
}
"""
DescribeConfigurationAggregatorSourcesStatus(args) = config_service("DescribeConfigurationAggregatorSourcesStatus", args)

"""
    DescribeConformancePacks()

Returns a list of one or more conformance packs.

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.",
  "Limit": "The maximum number of conformance packs returned on each page.",
  "ConformancePackNames": "Comma-separated list of conformance pack names for which you want details. If you do not specify any names, AWS Config returns details for all your conformance packs. "
}
"""

DescribeConformancePacks() = config_service("DescribeConformancePacks")
DescribeConformancePacks(args) = config_service("DescribeConformancePacks", args)

"""
    DescribeComplianceByConfigRule()

Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule. A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply. If AWS Config has no current evaluation results for the rule, it returns INSUFFICIENT_DATA. This result might indicate one of the following conditions:   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the config:PutEvaluations permission.   The rule's AWS Lambda function has returned NOT_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.  

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ComplianceTypes": "Filters the results by compliance. The allowed values are COMPLIANT and NON_COMPLIANT.",
  "ConfigRuleNames": "Specify one or more AWS Config rule names to filter the results by rule."
}
"""

DescribeComplianceByConfigRule() = config_service("DescribeComplianceByConfigRule")
DescribeComplianceByConfigRule(args) = config_service("DescribeComplianceByConfigRule", args)

"""
    BatchGetResourceConfig()

Returns the current configuration for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.     The API does not return results for deleted resources.    The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.   

Required Parameters
{
  "resourceKeys": "A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID."
}
"""
BatchGetResourceConfig(args) = config_service("BatchGetResourceConfig", args)

"""
    DeleteOrganizationConfigRule()

Deletes the specified organization config rule and all of its evaluation results from all member accounts in that organization.  Only a master account and a delegated administrator account can delete an organization config rule. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added. AWS Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is complete. You cannot update a rule while it is in this state.

Required Parameters
{
  "OrganizationConfigRuleName": "The name of organization config rule that you want to delete."
}
"""
DeleteOrganizationConfigRule(args) = config_service("DeleteOrganizationConfigRule", args)

"""
    ListDiscoveredResources()

Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.  You can specify either resource IDs or a resource name, but not both, in the same request.  The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.

Required Parameters
{
  "resourceType": "The type of resources that you want AWS Config to list in the response."
}

Optional Parameters
{
  "includeDeletedResources": "Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.",
  "resourceIds": "The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.",
  "nextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "resourceName": "The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.",
  "limit": "The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""
ListDiscoveredResources(args) = config_service("ListDiscoveredResources", args)

"""
    DescribeOrganizationConformancePacks()

Returns a list of organization conformance packs.  Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.  When you specify the limit and the next token, you receive a paginated response.  Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable, when you request all the organization conformance packs.  

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "OrganizationConformancePackNames": "The name that you assign to an organization conformance pack.",
  "Limit": "The maximum number of organization config packs returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100."
}
"""

DescribeOrganizationConformancePacks() = config_service("DescribeOrganizationConformancePacks")
DescribeOrganizationConformancePacks(args) = config_service("DescribeOrganizationConformancePacks", args)

"""
    ListAggregateDiscoveredResources()

Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region. For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type AWS::EC2::Instance then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.

Required Parameters
{
  "ResourceType": "The type of resources that you want AWS Config to list in the response.",
  "ConfigurationAggregatorName": "The name of the configuration aggregator. "
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Filters": "Filters the results based on the ResourceFilters object.",
  "Limit": "The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""
ListAggregateDiscoveredResources(args) = config_service("ListAggregateDiscoveredResources", args)

"""
    DeleteConformancePack()

Deletes the specified conformance pack and all the AWS Config rules, remediation actions, and all evaluation results within that conformance pack. AWS Config sets the conformance pack to DELETE_IN_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state.

Required Parameters
{
  "ConformancePackName": "Name of the conformance pack you want to delete."
}
"""
DeleteConformancePack(args) = config_service("DeleteConformancePack", args)

"""
    TagResource()

Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are ConfigRule, ConfigurationAggregator and AggregatorAuthorization.",
  "Tags": "An array of tag object."
}
"""
TagResource(args) = config_service("TagResource", args)

"""
    PutConformancePack()

Creates or updates a conformance pack. A conformance pack is a collection of AWS Config rules that can be easily deployed in an account and a region and across AWS Organization. This API creates a service linked role AWSServiceRoleForConfigConforms in your account. The service linked role is created only when the role does not exist in your account.   You must specify either the TemplateS3Uri or the TemplateBody parameter, but not both. If you provide both AWS Config uses the TemplateS3Uri parameter and ignores the TemplateBody parameter. 

Required Parameters
{
  "DeliveryS3Bucket": "AWS Config stores intermediate files while processing conformance pack template.",
  "ConformancePackName": "Name of the conformance pack you want to create."
}

Optional Parameters
{
  "ConformancePackInputParameters": "A list of ConformancePackInputParameter objects.",
  "TemplateBody": "A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.  You can only use a YAML template with one resource type, that is, config rule and a remediation action.  ",
  "TemplateS3Uri": "Location of file containing the template body (s3://bucketname/prefix). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack.   You must have access to read Amazon S3 bucket. ",
  "DeliveryS3KeyPrefix": "The prefix for the Amazon S3 bucket. "
}
"""
PutConformancePack(args) = config_service("PutConformancePack", args)

"""
    DescribeOrganizationConformancePackStatuses()

Provides organization conformance pack deployment status for an organization.   Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.  The status is not considered successful until organization conformance pack is successfully deployed in all the member accounts with an exception of excluded accounts. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization conformance pack names. They are only applicable, when you request all the organization conformance packs. 

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "OrganizationConformancePackNames": "The names of organization conformance packs for which you want status details. If you do not specify any names, AWS Config returns details for all your organization conformance packs. ",
  "Limit": "The maximum number of OrganizationConformancePackStatuses returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100. "
}
"""

DescribeOrganizationConformancePackStatuses() = config_service("DescribeOrganizationConformancePackStatuses")
DescribeOrganizationConformancePackStatuses(args) = config_service("DescribeOrganizationConformancePackStatuses", args)

"""
    DeleteConfigurationAggregator()

Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}
"""
DeleteConfigurationAggregator(args) = config_service("DeleteConfigurationAggregator", args)

"""
    DescribeConfigurationRecorderStatus()

Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.  Currently, you can specify only one configuration recorder per region in your account. 

Optional Parameters
{
  "ConfigurationRecorderNames": "The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account."
}
"""

DescribeConfigurationRecorderStatus() = config_service("DescribeConfigurationRecorderStatus")
DescribeConfigurationRecorderStatus(args) = config_service("DescribeConfigurationRecorderStatus", args)

"""
    SelectResourceConfig()

Accepts a structured query language (SQL) SELECT command, performs the corresponding search, and returns resource configurations matching the properties. For more information about query components, see the  Query Components  section in the AWS Config Developer Guide.

Required Parameters
{
  "Expression": "The SQL query SELECT command."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. ",
  "Limit": "The maximum number of query results returned on each page. "
}
"""
SelectResourceConfig(args) = config_service("SelectResourceConfig", args)

"""
    DescribeConfigurationRecorders()

Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.  Currently, you can specify only one configuration recorder per region in your account. 

Optional Parameters
{
  "ConfigurationRecorderNames": "A list of configuration recorder names."
}
"""

DescribeConfigurationRecorders() = config_service("DescribeConfigurationRecorders")
DescribeConfigurationRecorders(args) = config_service("DescribeConfigurationRecorders", args)

"""
    GetDiscoveredResourceCounts()

Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account.   Example    AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.   You make a call to the GetDiscoveredResourceCounts action and specify that you want all resource types.    AWS Config returns the following:   The resource types (EC2 instances, IAM users, and S3 buckets).   The number of each resource type (25, 20, and 15).   The total number of all resources (60).     The response is paginated. By default, AWS Config lists 100 ResourceCount objects on each page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.  If you make a call to the GetDiscoveredResourceCounts action, you might not immediately receive resource counts in the following situations:   You are a new AWS Config customer.   You just enabled resource recording.   It might take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the GetDiscoveredResourceCounts action.  

Optional Parameters
{
  "resourceTypes": "The comma-separated list that specifies the resource types that you want AWS Config to return (for example, \"AWS::EC2::Instance\", \"AWS::IAM::User\"). If a value for resourceTypes is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.  If the configuration recorder is turned off, AWS Config returns an empty list of ResourceCount objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of ResourceCount objects. ",
  "nextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "limit": "The maximum number of ResourceCount objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""

GetDiscoveredResourceCounts() = config_service("GetDiscoveredResourceCounts")
GetDiscoveredResourceCounts(args) = config_service("GetDiscoveredResourceCounts", args)

"""
    GetAggregateResourceConfig()

Returns configuration item that is aggregated for your specific resource in a specific source account and region.

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator.",
  "ResourceIdentifier": "An object that identifies aggregate resource."
}
"""
GetAggregateResourceConfig(args) = config_service("GetAggregateResourceConfig", args)

"""
    DescribeDeliveryChannelStatus()

Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.  Currently, you can specify only one delivery channel per region in your account. 

Optional Parameters
{
  "DeliveryChannelNames": "A list of delivery channel names."
}
"""

DescribeDeliveryChannelStatus() = config_service("DescribeDeliveryChannelStatus")
DescribeDeliveryChannelStatus(args) = config_service("DescribeDeliveryChannelStatus", args)

"""
    DescribeAggregateComplianceByConfigRules()

Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules.   The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page. 

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Filters": "Filters the results by ConfigRuleComplianceFilters object. ",
  "Limit": "The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default."
}
"""
DescribeAggregateComplianceByConfigRules(args) = config_service("DescribeAggregateComplianceByConfigRules", args)

"""
    DescribeDeliveryChannels()

Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.  Currently, you can specify only one delivery channel per region in your account. 

Optional Parameters
{
  "DeliveryChannelNames": "A list of delivery channel names."
}
"""

DescribeDeliveryChannels() = config_service("DescribeDeliveryChannels")
DescribeDeliveryChannels(args) = config_service("DescribeDeliveryChannels", args)

"""
    PutOrganizationConformancePack()

Deploys conformance packs across member accounts in an AWS Organization. Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added. This API enables organization service access for config-multiaccountsetup.amazonaws.com through the EnableAWSServiceAccess action and creates a service linked role AWSServiceRoleForConfigMultiAccountSetup in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling AWS Organization register-delegate-admin for config-multiaccountsetup.amazonaws.com.  Prerequisite: Ensure you call EnableAllFeatures API to enable all features in an organization. You must specify either the TemplateS3Uri or the TemplateBody parameter, but not both. If you provide both AWS Config uses the TemplateS3Uri parameter and ignores the TemplateBody parameter. AWS Config sets the state of a conformance pack to CREATE_IN_PROGRESS and UPDATE_IN_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state. You can create 6 conformance packs with 25 AWS Config rules in each pack and 3 delegated administrator per organization.  

Required Parameters
{
  "OrganizationConformancePackName": "Name of the organization conformance pack you want to create.",
  "DeliveryS3Bucket": "Location of an Amazon S3 bucket where AWS Config can deliver evaluation results. AWS Config stores intermediate files while processing conformance pack template.  The delivery bucket name should start with awsconfigconforms. For example: \"Resource\": \"arn:aws:s3:::your_bucket_name/*\". For more information, see Permissions for cross account bucket access."
}

Optional Parameters
{
  "ConformancePackInputParameters": "A list of ConformancePackInputParameter objects.",
  "TemplateBody": "A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.",
  "TemplateS3Uri": "Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).  You must have access to read Amazon S3 bucket. ",
  "DeliveryS3KeyPrefix": "The prefix for the Amazon S3 bucket.",
  "ExcludedAccounts": "A list of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack."
}
"""
PutOrganizationConformancePack(args) = config_service("PutOrganizationConformancePack", args)

"""
    GetComplianceSummaryByConfigRule()

Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
"""

GetComplianceSummaryByConfigRule() = config_service("GetComplianceSummaryByConfigRule")
GetComplianceSummaryByConfigRule(args) = config_service("GetComplianceSummaryByConfigRule", args)

"""
    StartRemediationExecution()

Runs an on-demand remediation for the specified AWS Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous. You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.

Required Parameters
{
  "ConfigRuleName": "The list of names of AWS Config rules that you want to run remediation execution for.",
  "ResourceKeys": "A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. "
}
"""
StartRemediationExecution(args) = config_service("StartRemediationExecution", args)

"""
    DescribeOrganizationConfigRules()

Returns a list of organization config rules.  Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.&#x2028;  When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules. 

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "OrganizationConfigRuleNames": "The names of organization config rules for which you want details. If you do not specify any names, AWS Config returns details for all your organization config rules.",
  "Limit": "The maximum number of organization config rules returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100."
}
"""

DescribeOrganizationConfigRules() = config_service("DescribeOrganizationConfigRules")
DescribeOrganizationConfigRules(args) = config_service("DescribeOrganizationConfigRules", args)

"""
    PutAggregationAuthorization()

Authorizes the aggregator account and region to collect data from the source account and region. 

Required Parameters
{
  "AuthorizedAwsRegion": "The region authorized to collect aggregated data.",
  "AuthorizedAccountId": "The 12-digit account ID of the account authorized to aggregate data."
}

Optional Parameters
{
  "Tags": "An array of tag object."
}
"""
PutAggregationAuthorization(args) = config_service("PutAggregationAuthorization", args)

"""
    PutEvaluations()

Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.

Required Parameters
{
  "ResultToken": "An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation."
}

Optional Parameters
{
  "TestMode": "Use this parameter to specify a test run for PutEvaluations. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.  When TestMode is true, PutEvaluations doesn't require a valid value for the ResultToken parameter, but the value cannot be null. ",
  "Evaluations": "The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function."
}
"""
PutEvaluations(args) = config_service("PutEvaluations", args)

"""
    DeleteDeliveryChannel()

Deletes the delivery channel. Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.

Required Parameters
{
  "DeliveryChannelName": "The name of the delivery channel to delete."
}
"""
DeleteDeliveryChannel(args) = config_service("DeleteDeliveryChannel", args)

"""
    StopConfigurationRecorder()

Stops recording configurations of the AWS resources you have selected to record in your AWS account.

Required Parameters
{
  "ConfigurationRecorderName": "The name of the recorder object that records each configuration change made to the resources."
}
"""
StopConfigurationRecorder(args) = config_service("StopConfigurationRecorder", args)

"""
    PutRemediationConfigurations()

Adds or updates the remediation configuration with a specific AWS Config rule with the selected target or action. The API creates the RemediationConfiguration object for the AWS Config rule. The AWS Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.   If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run. 

Required Parameters
{
  "RemediationConfigurations": "A list of remediation configuration objects."
}
"""
PutRemediationConfigurations(args) = config_service("PutRemediationConfigurations", args)

"""
    UntagResource()

Deletes specified tags from a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are ConfigRule, ConfigurationAggregator and AggregatorAuthorization.",
  "TagKeys": "The keys of the tags to be removed."
}
"""
UntagResource(args) = config_service("UntagResource", args)

"""
    GetAggregateComplianceDetailsByConfigRule()

Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.   The results can return an empty result page. But if you have a nextToken, the results are displayed on the next page. 

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want compliance information.",
  "AccountId": "The 12-digit account ID of the source account.",
  "AwsRegion": "The source region from where the data is aggregated.",
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ComplianceType": "The resource compliance status.  For the GetAggregateComplianceDetailsByConfigRuleRequest data type, AWS Config supports only the COMPLIANT and NON_COMPLIANT. AWS Config does not support the NOT_APPLICABLE and INSUFFICIENT_DATA values. ",
  "Limit": "The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""
GetAggregateComplianceDetailsByConfigRule(args) = config_service("GetAggregateComplianceDetailsByConfigRule", args)

"""
    DescribeConfigRuleEvaluationStatus()

Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Limit": "The number of rule evaluation results that you want returned. This parameter is required if the rule limit for your account is more than the default of 150 rules. For information about requesting a rule limit increase, see AWS Config Limits in the AWS General Reference Guide.",
  "ConfigRuleNames": "The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use."
}
"""

DescribeConfigRuleEvaluationStatus() = config_service("DescribeConfigRuleEvaluationStatus")
DescribeConfigRuleEvaluationStatus(args) = config_service("DescribeConfigRuleEvaluationStatus", args)

"""
    DescribeOrganizationConfigRuleStatuses()

Provides organization config rule deployment status for an organization. Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.  The status is not considered successful until organization config rule is successfully deployed in all the member accounts with an exception of excluded accounts. When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules. 

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "OrganizationConfigRuleNames": "The names of organization config rules for which you want status details. If you do not specify any names, AWS Config returns details for all your organization AWS Confg rules.",
  "Limit": "The maximum number of OrganizationConfigRuleStatuses returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100."
}
"""

DescribeOrganizationConfigRuleStatuses() = config_service("DescribeOrganizationConfigRuleStatuses")
DescribeOrganizationConfigRuleStatuses(args) = config_service("DescribeOrganizationConfigRuleStatuses", args)

"""
    PutRemediationExceptions()

A remediation exception is when a specific resource is no longer considered for auto-remediation. This API adds a new exception or updates an exisiting exception for a specific resource with a specific AWS Config rule.   AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared. 

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want to create remediation exception.",
  "ResourceKeys": "An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. "
}

Optional Parameters
{
  "Message": "The message contains an explanation of the exception.",
  "ExpirationTime": "The exception is automatically deleted after the expiration date."
}
"""
PutRemediationExceptions(args) = config_service("PutRemediationExceptions", args)

"""
    DeliverConfigSnapshot()

Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends the following notifications using an Amazon SNS topic that you have specified.   Notification of the start of the delivery.   Notification of the completion of the delivery, if the delivery was successfully completed.   Notification of delivery failure, if the delivery failed.  

Required Parameters
{
  "deliveryChannelName": "The name of the delivery channel through which the snapshot is delivered."
}
"""
DeliverConfigSnapshot(args) = config_service("DeliverConfigSnapshot", args)

"""
    DeleteAggregationAuthorization()

Deletes the authorization granted to the specified configuration aggregator account in a specified region.

Required Parameters
{
  "AuthorizedAwsRegion": "The region authorized to collect aggregated data.",
  "AuthorizedAccountId": "The 12-digit account ID of the account authorized to aggregate data."
}
"""
DeleteAggregationAuthorization(args) = config_service("DeleteAggregationAuthorization", args)

"""
    PutRetentionConfiguration()

Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information. The API creates the RetentionConfiguration object and names the object as default. When you have a RetentionConfiguration object named default, calling the API modifies the default object.   Currently, AWS Config supports only one retention configuration per region in your account. 

Required Parameters
{
  "RetentionPeriodInDays": "Number of days AWS Config stores your historical information.  Currently, only applicable to the configuration item history. "
}
"""
PutRetentionConfiguration(args) = config_service("PutRetentionConfiguration", args)

"""
    DeleteRemediationConfiguration()

Deletes the remediation configuration.

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want to delete remediation configuration."
}

Optional Parameters
{
  "ResourceType": "The type of a resource."
}
"""
DeleteRemediationConfiguration(args) = config_service("DeleteRemediationConfiguration", args)

"""
    BatchGetAggregateResourceConfig()

Returns the current configuration items for resources that are present in your AWS Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceIdentifiers list.     The API does not return results for deleted resources.    The API does not return tags and relationships.   

Required Parameters
{
  "ResourceIdentifiers": "A list of aggregate ResourceIdentifiers objects. ",
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}
"""
BatchGetAggregateResourceConfig(args) = config_service("BatchGetAggregateResourceConfig", args)

"""
    DeleteRetentionConfiguration()

Deletes the retention configuration.

Required Parameters
{
  "RetentionConfigurationName": "The name of the retention configuration to delete."
}
"""
DeleteRetentionConfiguration(args) = config_service("DeleteRetentionConfiguration", args)

"""
    ListTagsForResource()

List the tags for AWS Config resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are ConfigRule, ConfigurationAggregator and AggregatorAuthorization."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "Limit": "The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, AWS Config uses the default. "
}
"""
ListTagsForResource(args) = config_service("ListTagsForResource", args)

"""
    SelectAggregateResourceConfig()

Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of AWS resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties. For more information about query components, see the  Query Components  section in the AWS Config Developer Guide.

Required Parameters
{
  "Expression": "The SQL query SELECT command. ",
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "MaxResults": "The maximum number of query results returned on each page. AWS Config also allows the Limit request parameter.",
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. ",
  "Limit": "The maximum number of query results returned on each page. "
}
"""
SelectAggregateResourceConfig(args) = config_service("SelectAggregateResourceConfig", args)

"""
    GetComplianceDetailsByResource()

Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.

Required Parameters
{
  "ResourceType": "The type of the AWS resource for which you want compliance information.",
  "ResourceId": "The ID of the AWS resource for which you want compliance information."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ComplianceTypes": "Filters the results by compliance. The allowed values are COMPLIANT, NON_COMPLIANT, and NOT_APPLICABLE."
}
"""
GetComplianceDetailsByResource(args) = config_service("GetComplianceDetailsByResource", args)

"""
    DescribeRemediationConfigurations()

Returns the details of one or more remediation configurations.

Required Parameters
{
  "ConfigRuleNames": "A list of AWS Config rule names of remediation configurations for which you want details. "
}
"""
DescribeRemediationConfigurations(args) = config_service("DescribeRemediationConfigurations", args)

"""
    DeletePendingAggregationRequest()

Deletes pending authorization requests for a specified aggregator account in a specified region.

Required Parameters
{
  "RequesterAwsRegion": "The region requesting to aggregate data.",
  "RequesterAccountId": "The 12-digit account ID of the account requesting to aggregate data."
}
"""
DeletePendingAggregationRequest(args) = config_service("DeletePendingAggregationRequest", args)

"""
    DeleteResourceConfig()

Records the configuration state for a custom resource that has been deleted. This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your AWS Config History. 

Required Parameters
{
  "ResourceType": "The type of the resource.",
  "ResourceId": "Unique identifier of the resource."
}
"""
DeleteResourceConfig(args) = config_service("DeleteResourceConfig", args)

"""
    DescribeConfigRules()

Returns details about your AWS Config rules.

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ConfigRuleNames": "The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules."
}
"""

DescribeConfigRules() = config_service("DescribeConfigRules")
DescribeConfigRules(args) = config_service("DescribeConfigRules", args)

"""
    GetAggregateConfigRuleComplianceSummary()

Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.  The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page. 

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "GroupByKey": "Groups the result based on ACCOUNT_ID or AWS_REGION.",
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Filters": "Filters the results based on the ConfigRuleComplianceSummaryFilters object.",
  "Limit": "The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default."
}
"""
GetAggregateConfigRuleComplianceSummary(args) = config_service("GetAggregateConfigRuleComplianceSummary", args)

"""
    DescribeRemediationExceptions()

Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response.   AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared. When you specify the limit and the next token, you receive a paginated response.  Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources. 

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.",
  "ResourceKeys": "An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. ",
  "Limit": "The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, AWS Config uses the default."
}
"""
DescribeRemediationExceptions(args) = config_service("DescribeRemediationExceptions", args)

"""
    GetOrganizationConfigRuleDetailedStatus()

Returns detailed status for each member account within an organization for a given organization config rule. Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.

Required Parameters
{
  "OrganizationConfigRuleName": "The name of organization config rule for which you want status details for member accounts."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "Filters": "A StatusDetailFilters object.",
  "Limit": "The maximum number of OrganizationConfigRuleDetailedStatus returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100."
}
"""
GetOrganizationConfigRuleDetailedStatus(args) = config_service("GetOrganizationConfigRuleDetailedStatus", args)

"""
    DescribeComplianceByResource()

Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with. A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules. If AWS Config has no current evaluation results for the resource, it returns INSUFFICIENT_DATA. This result might indicate one of the following conditions about the rules that evaluate the resource:   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the config:PutEvaluations permission.   The rule's AWS Lambda function has returned NOT_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.  

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ComplianceTypes": "Filters the results by compliance. The allowed values are COMPLIANT, NON_COMPLIANT, and INSUFFICIENT_DATA.",
  "ResourceType": "The types of AWS resources for which you want compliance information (for example, AWS::EC2::Instance). For this action, you can specify that the resource type is an AWS account by specifying AWS::::Account.",
  "ResourceId": "The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for ResourceType.",
  "Limit": "The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""

DescribeComplianceByResource() = config_service("DescribeComplianceByResource")
DescribeComplianceByResource(args) = config_service("DescribeComplianceByResource", args)

"""
    PutConfigurationRecorder()

Creates a new configuration recorder to record the selected resource configurations. You can use this action to change the role roleARN or the recordingGroup of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.  Currently, you can specify only one configuration recorder per region in your account. If ConfigurationRecorder does not have the recordingGroup parameter specified, the default is to record all supported resource types. 

Required Parameters
{
  "ConfigurationRecorder": "The configuration recorder object that records each configuration change made to the resources."
}
"""
PutConfigurationRecorder(args) = config_service("PutConfigurationRecorder", args)

"""
    GetAggregateDiscoveredResourceCounts()

Returns the resource counts across accounts and regions that are present in your AWS Config aggregator. You can request the resource counts by providing filters and GroupByKey. For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.

Required Parameters
{
  "ConfigurationAggregatorName": "The name of the configuration aggregator."
}

Optional Parameters
{
  "GroupByKey": "The key to group the resource counts.",
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "Filters": "Filters the results based on the ResourceCountFilters object.",
  "Limit": "The maximum number of GroupedResourceCount objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default."
}
"""
GetAggregateDiscoveredResourceCounts(args) = config_service("GetAggregateDiscoveredResourceCounts", args)

"""
    GetConformancePackComplianceSummary()

Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.

Required Parameters
{
  "ConformancePackNames": "Names of conformance packs."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Limit": "The maximum number of conformance packs returned on each page."
}
"""
GetConformancePackComplianceSummary(args) = config_service("GetConformancePackComplianceSummary", args)

"""
    DescribeRetentionConfigurations()

Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.  Currently, AWS Config supports only one retention configuration per region in your account. 

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "RetentionConfigurationNames": "A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.  Currently, AWS Config supports only one retention configuration per region in your account. "
}
"""

DescribeRetentionConfigurations() = config_service("DescribeRetentionConfigurations")
DescribeRetentionConfigurations(args) = config_service("DescribeRetentionConfigurations", args)

"""
    StartConfigRulesEvaluation()

Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources. Use StartConfigRulesEvaluation when you want to test that a rule you updated is working as expected. StartConfigRulesEvaluation does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources.  You can specify up to 25 AWS Config rules per request.  An existing StartConfigRulesEvaluation call for the specified rules must complete before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a ConfigRuleEvaluationStarted notification when the evaluation starts.  You don't need to call the StartConfigRulesEvaluation API to run an evaluation for a new rule. When you create a rule, AWS Config evaluates your resources against the rule automatically.   The StartConfigRulesEvaluation API is useful if you want to run on-demand evaluations, such as the following example:   You have a custom rule that evaluates your IAM resources every 24 hours.   You update your Lambda function to add additional conditions to your rule.   Instead of waiting for the next periodic evaluation, you call the StartConfigRulesEvaluation API.   AWS Config invokes your Lambda function and evaluates your IAM resources.   Your custom rule will still run periodic evaluations every 24 hours.  

Optional Parameters
{
  "ConfigRuleNames": "The list of names of AWS Config rules that you want to run evaluations for."
}
"""

StartConfigRulesEvaluation() = config_service("StartConfigRulesEvaluation")
StartConfigRulesEvaluation(args) = config_service("StartConfigRulesEvaluation", args)

"""
    DescribeRemediationExecutionStatus()

Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.

Required Parameters
{
  "ConfigRuleName": "A list of AWS Config rule names."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ResourceKeys": "A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. ",
  "Limit": "The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, AWS Config uses the default. "
}
"""
DescribeRemediationExecutionStatus(args) = config_service("DescribeRemediationExecutionStatus", args)

"""
    DescribeConformancePackStatus()

Provides one or more conformance packs deployment status.  If there are no conformance packs then you will see an empty result. 

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.",
  "Limit": "The maximum number of conformance packs status returned on each page.",
  "ConformancePackNames": "Comma-separated list of conformance pack names."
}
"""

DescribeConformancePackStatus() = config_service("DescribeConformancePackStatus")
DescribeConformancePackStatus(args) = config_service("DescribeConformancePackStatus", args)

"""
    DeleteEvaluationResults()

Deletes the evaluation results for the specified AWS Config rule. You can specify one AWS Config rule per request. After you delete the evaluation results, you can call the StartConfigRulesEvaluation API to start evaluating your AWS resources against the rule.

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want to delete the evaluation results."
}
"""
DeleteEvaluationResults(args) = config_service("DeleteEvaluationResults", args)

"""
    DescribeConfigurationAggregators()

Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account. 

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ConfigurationAggregatorNames": "The name of the configuration aggregators.",
  "Limit": "The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default."
}
"""

DescribeConfigurationAggregators() = config_service("DescribeConfigurationAggregators")
DescribeConfigurationAggregators(args) = config_service("DescribeConfigurationAggregators", args)

"""
    PutResourceConfig()

Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in AWS Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing AWS Config APIs.   The custom resource type must be registered with AWS CloudFormation. This API accepts the configuration item registered with AWS CloudFormation. When you call this API, AWS Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.  Write-only schema properites are not recorded as part of the published configuration item. 

Required Parameters
{
  "Configuration": "The configuration object of the resource in valid JSON format. It must match the schema registered with AWS CloudFormation.  The configuration JSON must not exceed 64 KB. ",
  "ResourceType": "The type of the resource. The custom resource type must be registered with AWS CloudFormation.   You cannot use the organization names “aws”, “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::. ",
  "ResourceId": "Unique identifier of the resource.",
  "SchemaVersionId": "Version of the schema registered for the ResourceType in AWS CloudFormation."
}

Optional Parameters
{
  "Tags": "Tags associated with the resource.",
  "ResourceName": "Name of the resource."
}
"""
PutResourceConfig(args) = config_service("PutResourceConfig", args)

"""
    DeleteRemediationExceptions()

Deletes one or more remediation exceptions mentioned in the resource keys.  AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared. 

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want to delete remediation exception configuration.",
  "ResourceKeys": "An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. "
}
"""
DeleteRemediationExceptions(args) = config_service("DeleteRemediationExceptions", args)

"""
    DeleteOrganizationConformancePack()

Deletes the specified organization conformance pack and all of the config rules and remediation actions from all member accounts in that organization.   Only a master account or a delegated administrator account can delete an organization conformance pack. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added. AWS Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state. 

Required Parameters
{
  "OrganizationConformancePackName": "The name of organization conformance pack that you want to delete."
}
"""
DeleteOrganizationConformancePack(args) = config_service("DeleteOrganizationConformancePack", args)

"""
    StartConfigurationRecorder()

Starts recording configurations of the AWS resources you have selected to record in your AWS account. You must have created at least one delivery channel to successfully start the configuration recorder.

Required Parameters
{
  "ConfigurationRecorderName": "The name of the recorder object that records each configuration change made to the resources."
}
"""
StartConfigurationRecorder(args) = config_service("StartConfigurationRecorder", args)

"""
    DeleteConfigRule()

Deletes the specified AWS Config rule and all of its evaluation results. AWS Config sets the state of a rule to DELETING until the deletion is complete. You cannot update a rule while it is in this state. If you make a PutConfigRule or DeleteConfigRule request for the rule, you will receive a ResourceInUseException. You can check the state of a rule by using the DescribeConfigRules request.

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule that you want to delete."
}
"""
DeleteConfigRule(args) = config_service("DeleteConfigRule", args)

"""
    GetResourceConfigHistory()

Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your ConfigurationItems between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the ConfigurationItems for the specified retention period.  The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.  Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified limit. In such cases, you can make another call, using the nextToken. 

Required Parameters
{
  "resourceId": "The ID of the resource (for example., sg-xxxxxx).",
  "resourceType": "The resource type."
}

Optional Parameters
{
  "laterTime": "The time stamp that indicates a later time. If not specified, current time is taken.",
  "earlierTime": "The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.",
  "nextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "chronologicalOrder": "The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.",
  "limit": "The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""
GetResourceConfigHistory(args) = config_service("GetResourceConfigHistory", args)

"""
    GetComplianceSummaryByResourceType()

Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.

Optional Parameters
{
  "ResourceTypes": "Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type. For this request, you can specify an AWS resource type such as AWS::EC2::Instance. You can specify that the resource type is an AWS account by specifying AWS::::Account."
}
"""

GetComplianceSummaryByResourceType() = config_service("GetComplianceSummaryByResourceType")
GetComplianceSummaryByResourceType(args) = config_service("GetComplianceSummaryByResourceType", args)

"""
    DescribeConformancePackCompliance()

Returns compliance details for each rule in that conformance pack.  You must provide exact rule names. 

Required Parameters
{
  "ConformancePackName": "Name of the conformance pack."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.",
  "Filters": "A ConformancePackComplianceFilters object.",
  "Limit": "The maximum number of AWS Config rules within a conformance pack are returned on each page."
}
"""
DescribeConformancePackCompliance(args) = config_service("DescribeConformancePackCompliance", args)

"""
    PutOrganizationConfigRule()

Adds or updates organization config rule for your entire organization evaluating whether your AWS resources comply with your desired configurations.  Only a master account and a delegated administrator can create or update an organization config rule. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.  This API enables organization service access through the EnableAWSServiceAccess action and creates a service linked role AWSServiceRoleForConfigMultiAccountSetup in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. AWS Config verifies the existence of role with GetRole action. To use this API with delegated administrator, register a delegated administrator by calling AWS Organization register-delegated-administrator for config-multiaccountsetup.amazonaws.com.  You can use this action to create both custom AWS Config rules and AWS managed Config rules. If you are adding a new custom AWS Config rule, you must first create AWS Lambda function in the master account or a delegated administrator that the rule invokes to evaluate your resources. When you use the PutOrganizationConfigRule action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. If you are adding an AWS managed Config rule, specify the rule's identifier for the RuleIdentifier key. The maximum number of organization config rules that AWS Config supports is 150 and 3 delegated administrator per organization.   Prerequisite: Ensure you call EnableAllFeatures API to enable all features in an organization. Specify either OrganizationCustomRuleMetadata or OrganizationManagedRuleMetadata. 

Required Parameters
{
  "OrganizationConfigRuleName": "The name that you assign to an organization config rule."
}

Optional Parameters
{
  "OrganizationManagedRuleMetadata": "An OrganizationManagedRuleMetadata object. ",
  "OrganizationCustomRuleMetadata": "An OrganizationCustomRuleMetadata object.",
  "ExcludedAccounts": "A comma-separated list of accounts that you want to exclude from an organization config rule."
}
"""
PutOrganizationConfigRule(args) = config_service("PutOrganizationConfigRule", args)

"""
    PutDeliveryChannel()

Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic. Before you can create a delivery channel, you must create a configuration recorder. You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.  You can have only one delivery channel per region in your account. 

Required Parameters
{
  "DeliveryChannel": "The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket and to an Amazon SNS topic."
}
"""
PutDeliveryChannel(args) = config_service("PutDeliveryChannel", args)

"""
    DescribePendingAggregationRequests()

Returns a list of all pending aggregation requests.

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Limit": "The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default."
}
"""

DescribePendingAggregationRequests() = config_service("DescribePendingAggregationRequests")
DescribePendingAggregationRequests(args) = config_service("DescribePendingAggregationRequests", args)

"""
    GetComplianceDetailsByConfigRule()

Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.

Required Parameters
{
  "ConfigRuleName": "The name of the AWS Config rule for which you want compliance information."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "ComplianceTypes": "Filters the results by compliance. The allowed values are COMPLIANT, NON_COMPLIANT, and NOT_APPLICABLE.",
  "Limit": "The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default."
}
"""
GetComplianceDetailsByConfigRule(args) = config_service("GetComplianceDetailsByConfigRule", args)

"""
    GetOrganizationConformancePackDetailedStatus()

Returns detailed status for each member account within an organization for a given organization conformance pack. Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations ListDelegatedAdministrator permissions are added.

Required Parameters
{
  "OrganizationConformancePackName": "The name of organization conformance pack for which you want status details for member accounts."
}

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. ",
  "Filters": "An OrganizationResourceDetailedStatusFilters object.",
  "Limit": "The maximum number of OrganizationConformancePackDetailedStatuses returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100. "
}
"""
GetOrganizationConformancePackDetailedStatus(args) = config_service("GetOrganizationConformancePackDetailedStatus", args)

"""
    PutConfigRule()

Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations. You can use this action for custom AWS Config rules and AWS managed Config rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides. If you are adding a new custom AWS Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the PutConfigRule action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the SourceIdentifier key. This key is part of the Source object, which is part of the ConfigRule object.  If you are adding an AWS managed Config rule, specify the rule's identifier for the SourceIdentifier key. To reference AWS managed Config rule identifiers, see About AWS Managed Config Rules. For any new rule that you add, specify the ConfigRuleName in the ConfigRule object. Do not specify the ConfigRuleArn or the ConfigRuleId. These values are generated by AWS Config for new rules. If you are updating a rule that you added previously, you can specify the rule by ConfigRuleName, ConfigRuleId, or ConfigRuleArn in the ConfigRule data type that you use in this request. The maximum number of rules that AWS Config supports is 150. For information about requesting a rule limit increase, see AWS Config Limits in the AWS General Reference Guide. For more information about developing and using AWS Config rules, see Evaluating AWS Resource Configurations with AWS Config in the AWS Config Developer Guide.

Required Parameters
{
  "ConfigRule": "The rule that you want to add to your account."
}

Optional Parameters
{
  "Tags": "An array of tag object."
}
"""
PutConfigRule(args) = config_service("PutConfigRule", args)

"""
    DescribeAggregationAuthorizations()

Returns a list of authorizations granted to various aggregator accounts and regions.

Optional Parameters
{
  "NextToken": "The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.",
  "Limit": "The maximum number of AggregationAuthorizations returned on each page. The default is maximum. If you specify 0, AWS Config uses the default."
}
"""

DescribeAggregationAuthorizations() = config_service("DescribeAggregationAuthorizations")
DescribeAggregationAuthorizations(args) = config_service("DescribeAggregationAuthorizations", args)