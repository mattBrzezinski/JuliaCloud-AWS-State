include("../AWSCorePrototypeServices.jl")
using .Services: inspector

"""
Lists all tags associated with an assessment template.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = inspector("ListTagsForResource", args)

"""
Describes the assessment targets that are specified by the ARNs of the assessment targets.

Required Parameters:
assessmentTargetArns
"""
DescribeAssessmentTargets(args) = inspector("DescribeAssessmentTargets", args)

"""
List exclusions that are generated by the assessment run.

Required Parameters:
assessmentRunArn
"""
ListExclusions(args) = inspector("ListExclusions", args)

"""
Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.

Required Parameters:
assessmentRunArn
"""
ListAssessmentRunAgents(args) = inspector("ListAssessmentRunAgents", args)

"""
Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
"""
ListAssessmentTemplates() = inspector("ListAssessmentTemplates")

"""
Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.

Required Parameters:
findingArns, attributes
"""
AddAttributesToFindings(args) = inspector("AddAttributesToFindings", args)

"""
Describes the assessment runs that are specified by the ARNs of the assessment runs.

Required Parameters:
assessmentRunArns
"""
DescribeAssessmentRuns(args) = inspector("DescribeAssessmentRuns", args)

"""
Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
"""
ListFindings() = inspector("ListFindings")

"""
Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.

Required Parameters:
assessmentTargetArn, assessmentTemplateName, durationInSeconds, rulesPackageArns
"""
CreateAssessmentTemplate(args) = inspector("CreateAssessmentTemplate", args)

"""
Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
"""
ListAssessmentRuns() = inspector("ListAssessmentRuns")

"""
Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.

Required Parameters:
findingArns, attributeKeys
"""
RemoveAttributesFromFindings(args) = inspector("RemoveAttributesFromFindings", args)

"""
Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.

Required Parameters:
resourceArn
"""
SetTagsForResource(args) = inspector("SetTagsForResource", args)

"""
Describes the rules packages that are specified by the ARNs of the rules packages.

Required Parameters:
rulesPackageArns
"""
DescribeRulesPackages(args) = inspector("DescribeRulesPackages", args)

"""
Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. 

Required Parameters:
assessmentRunArn, reportFileFormat, reportType
"""
GetAssessmentReport(args) = inspector("GetAssessmentReport", args)

"""
Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
"""
ListAssessmentTargets() = inspector("ListAssessmentTargets")

"""
Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.

Required Parameters:
assessmentTemplateArn, previewToken
"""
GetExclusionsPreview(args) = inspector("GetExclusionsPreview", args)

"""
Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
"""
ListEventSubscriptions() = inspector("ListEventSubscriptions")

"""
Lists all available Amazon Inspector rules packages.
"""
ListRulesPackages() = inspector("ListRulesPackages")

"""
Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.

Required Parameters:
assessmentTemplateArn
"""
StartAssessmentRun(args) = inspector("StartAssessmentRun", args)

"""
Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.

Required Parameters:
resourceGroupTags
"""
CreateResourceGroup(args) = inspector("CreateResourceGroup", args)

"""
Information about the data that is collected for the specified assessment run.

Required Parameters:
assessmentRunArn
"""
GetTelemetryMetadata(args) = inspector("GetTelemetryMetadata", args)

"""
Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.

Required Parameters:
assessmentTargetArn, assessmentTargetName
"""
UpdateAssessmentTarget(args) = inspector("UpdateAssessmentTarget", args)

"""
Describes the resource groups that are specified by the ARNs of the resource groups.

Required Parameters:
resourceGroupArns
"""
DescribeResourceGroups(args) = inspector("DescribeResourceGroups", args)

"""
Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.

Required Parameters:
resourceArn, event, topicArn
"""
UnsubscribeFromEvent(args) = inspector("UnsubscribeFromEvent", args)

"""
Deletes the assessment run that is specified by the ARN of the assessment run.

Required Parameters:
assessmentRunArn
"""
DeleteAssessmentRun(args) = inspector("DeleteAssessmentRun", args)

"""
Stops the assessment run that is specified by the ARN of the assessment run.

Required Parameters:
assessmentRunArn
"""
StopAssessmentRun(args) = inspector("StopAssessmentRun", args)

"""
Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.

Required Parameters:
assessmentTargetName
"""
CreateAssessmentTarget(args) = inspector("CreateAssessmentTarget", args)

"""
Previews the agents installed on the EC2 instances that are part of the specified assessment target.

Required Parameters:
previewAgentsArn
"""
PreviewAgents(args) = inspector("PreviewAgents", args)

"""
Describes the assessment templates that are specified by the ARNs of the assessment templates.

Required Parameters:
assessmentTemplateArns
"""
DescribeAssessmentTemplates(args) = inspector("DescribeAssessmentTemplates", args)

"""
Describes the findings that are specified by the ARNs of the findings.

Required Parameters:
findingArns
"""
DescribeFindings(args) = inspector("DescribeFindings", args)

"""
Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. 

Required Parameters:
assessmentTemplateArn
"""
CreateExclusionsPreview(args) = inspector("CreateExclusionsPreview", args)

"""
Deletes the assessment target that is specified by the ARN of the assessment target.

Required Parameters:
assessmentTargetArn
"""
DeleteAssessmentTarget(args) = inspector("DeleteAssessmentTarget", args)

"""
Deletes the assessment template that is specified by the ARN of the assessment template.

Required Parameters:
assessmentTemplateArn
"""
DeleteAssessmentTemplate(args) = inspector("DeleteAssessmentTemplate", args)

"""
Describes the IAM role that enables Amazon Inspector to access your AWS account.
"""
DescribeCrossAccountAccessRole() = inspector("DescribeCrossAccountAccessRole")

"""
Describes the exclusions that are specified by the exclusions' ARNs.

Required Parameters:
exclusionArns
"""
DescribeExclusions(args) = inspector("DescribeExclusions", args)

"""
Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.

Required Parameters:
roleArn
"""
RegisterCrossAccountAccessRole(args) = inspector("RegisterCrossAccountAccessRole", args)

"""
Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.

Required Parameters:
resourceArn, event, topicArn
"""
SubscribeToEvent(args) = inspector("SubscribeToEvent", args)
