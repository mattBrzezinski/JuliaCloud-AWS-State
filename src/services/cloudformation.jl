include("../AWSCorePrototypeServices.jl")
using .Services: cloudformation

"""
    SignalResource()

Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.

Required Parameters
{
  "Status": "The status of the signal, which is either success or failure. A failure signal causes AWS CloudFormation to immediately fail the stack creation or update.",
  "StackName": "The stack name or unique stack ID that includes the resource that you want to signal.",
  "LogicalResourceId": "The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.",
  "UniqueId": "A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID."
}
"""
SignalResource(args) = cloudformation("SignalResource", args)

"""
    DetectStackResourceDrift()

Returns information about whether a resource's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection. Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see Resources that Support Drift Detection.

Required Parameters
{
  "StackName": "The name of the stack to which the resource belongs.",
  "LogicalResourceId": "The logical name of the resource for which to return drift information."
}
"""
DetectStackResourceDrift(args) = cloudformation("DetectStackResourceDrift", args)

"""
    RecordHandlerProgress()

Reports progress of a resource handler to CloudFormation. Reserved for use by the CloudFormation CLI. Do not use this API in your code.

Required Parameters
{
  "OperationStatus": "Reserved for use by the CloudFormation CLI.",
  "BearerToken": "Reserved for use by the CloudFormation CLI."
}

Optional Parameters
{
  "ResourceModel": "Reserved for use by the CloudFormation CLI.",
  "ClientRequestToken": "Reserved for use by the CloudFormation CLI.",
  "CurrentOperationStatus": "Reserved for use by the CloudFormation CLI.",
  "StatusMessage": "Reserved for use by the CloudFormation CLI.",
  "ErrorCode": "Reserved for use by the CloudFormation CLI."
}
"""
RecordHandlerProgress(args) = cloudformation("RecordHandlerProgress", args)

"""
    DescribeStackInstance()

Returns the stack instance that's associated with the specified stack set, AWS account, and region. For a list of stack instances that are associated with a specific stack set, use ListStackInstances.

Required Parameters
{
  "StackInstanceAccount": "The ID of an AWS account that's associated with this stack instance.",
  "StackInstanceRegion": "The name of a region that's associated with this stack instance.",
  "StackSetName": "The name or the unique stack ID of the stack set that you want to get stack instance information for."
}
"""
DescribeStackInstance(args) = cloudformation("DescribeStackInstance", args)

"""
    DetectStackSetDrift()

Detect drift on a stack set. When CloudFormation performs drift detection on a stack set, it performs drift detection on the stack associated with each stack instance in the stack set. For more information, see How CloudFormation Performs Drift Detection on a Stack Set.  DetectStackSetDrift returns the OperationId of the stack set drift detection operation. Use this operation id with  DescribeStackSetOperation  to monitor the progress of the drift detection operation. The drift detection operation may take some time, depending on the number of stack instances included in the stack set, as well as the number of resources included in each stack. Once the operation has completed, use the following actions to return drift information:   Use  DescribeStackSet  to return detailed informaiton about the stack set, including detailed information about the last completed drift operation performed on the stack set. (Information about drift operations that are in progress is not included.)   Use  ListStackInstances  to return a list of stack instances belonging to the stack set, including the drift status and last drift time checked of each instance.   Use  DescribeStackInstance  to return detailed information about a specific stack instance, including its drift status and last drift time checked.   For more information on performing a drift detection operation on a stack set, see Detecting Unmanaged Changes in Stack Sets.  You can only run a single drift detection operation on a given stack set at one time.  To stop a drift detection stack set operation, use  StopStackSetOperation .

Required Parameters
{
  "StackSetName": "The name of the stack set on which to perform the drift detection operation."
}

Optional Parameters
{
  "OperationId": " The ID of the stack set operation. ",
  "OperationPreferences": ""
}
"""
DetectStackSetDrift(args) = cloudformation("DetectStackSetDrift", args)

"""
    DescribeStacks()

Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an AmazonCloudFormationException is returned. 

Optional Parameters
{
  "NextToken": "A string that identifies the next page of stacks that you want to retrieve.",
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value."
}
"""
DescribeStacks() = cloudformation("DescribeStacks")
DescribeStacks(args) = cloudformation("DescribeStacks", args)

"""
    DescribeStackSetOperation()

Returns the description of the specified stack set operation. 

Required Parameters
{
  "OperationId": "The unique ID of the stack set operation. ",
  "StackSetName": "The name or the unique stack ID of the stack set for the stack operation."
}
"""
DescribeStackSetOperation(args) = cloudformation("DescribeStackSetOperation", args)

"""
    ListExports()

Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue  function.  For more information, see  AWS CloudFormation Export Stack Output Values.

Optional Parameters
{
  "NextToken": "A string (provided by the ListExports response output) that identifies the next page of exported output values that you asked to retrieve."
}
"""
ListExports() = cloudformation("ListExports")
ListExports(args) = cloudformation("ListExports", args)

"""
    DescribeType()

Returns detailed information about a type that has been registered. If you specify a VersionId, DescribeType returns information about that specific type version. Otherwise, it returns information about the default type version.

Optional Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "TypeName": "The name of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "Type": "The kind of type.  Currently the only valid value is RESOURCE. Conditional: You must specify either TypeName and Type, or Arn.",
  "VersionId": "The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered. If you specify a VersionId, DescribeType returns information about that specific type version. Otherwise, it returns information about the default type version."
}
"""
DescribeType() = cloudformation("DescribeType")
DescribeType(args) = cloudformation("DescribeType", args)

"""
    DetectStackDrift()

Detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, AWS CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources. For a list of stack resources that currently support drift detection, see Resources that Support Drift Detection.  DetectStackDrift can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources. When detecting drift on a stack, AWS CloudFormation does not detect drift on any nested stacks belonging to that stack. Perform DetectStackDrift directly on the nested stack itself.

Required Parameters
{
  "StackName": "The name of the stack for which you want to detect drift. "
}

Optional Parameters
{
  "LogicalResourceIds": "The logical names of any resources you want to use as filters."
}
"""
DetectStackDrift(args) = cloudformation("DetectStackDrift", args)

"""
    DescribeStackResources()

Returns AWS resource descriptions for running and deleted stacks. If StackName is specified, all the associated resources that are part of the stack are returned. If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.  Only the first 100 resources will be returned. If your stack has more resources than this, you should use ListStackResources instead.  For deleted stacks, DescribeStackResources returns resource information for up to 90 days after the stack has been deleted. You must specify either StackName or PhysicalResourceId, but not both. In addition, you can specify LogicalResourceId to filter the returned result. For more information about resources, the LogicalResourceId and PhysicalResourceId, go to the AWS CloudFormation User Guide.  A ValidationError is returned if you specify both StackName and PhysicalResourceId in the same request. 

Optional Parameters
{
  "PhysicalResourceId": "The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation. For example, for an Amazon Elastic Compute Cloud (EC2) instance, PhysicalResourceId corresponds to the InstanceId. You can pass the EC2 InstanceId to DescribeStackResources to find which stack the instance belongs to and what other resources are part of the stack. Required: Conditional. If you do not specify PhysicalResourceId, you must specify StackName. Default: There is no default value.",
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value. Required: Conditional. If you do not specify StackName, you must specify PhysicalResourceId.",
  "LogicalResourceId": "The logical name of the resource as specified in the template. Default: There is no default value."
}
"""
DescribeStackResources() = cloudformation("DescribeStackResources")
DescribeStackResources(args) = cloudformation("DescribeStackResources", args)

"""
    ListStacks()

Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).

Optional Parameters
{
  "NextToken": "A string that identifies the next page of stacks that you want to retrieve.",
  "StackStatusFilter": "Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the StackStatus parameter of the Stack data type."
}
"""
ListStacks() = cloudformation("ListStacks")
ListStacks(args) = cloudformation("ListStacks", args)

"""
    DeleteStack()

Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the DescribeStacks API if the deletion has been completed successfully.

Required Parameters
{
  "StackName": "The name or the unique stack ID that is associated with the stack."
}

Optional Parameters
{
  "RetainResources": "For stacks in the DELETE_FAILED state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources. Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.",
  "ClientRequestToken": "A unique identifier for this DeleteStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry DeleteStack requests to ensure that AWS CloudFormation successfully received them. All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a CreateStack operation with the token token1, then all the StackEvents generated by that operation will have ClientRequestToken set as token1. In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format Console-StackOperation-ID, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002. ",
  "RoleARN": "The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials."
}
"""
DeleteStack(args) = cloudformation("DeleteStack", args)

"""
    CancelUpdateStack()

Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.  You can cancel only stacks that are in the UPDATE_IN_PROGRESS state. 

Required Parameters
{
  "StackName": "The name or the unique stack ID that is associated with the stack."
}

Optional Parameters
{
  "ClientRequestToken": "A unique identifier for this CancelUpdateStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to cancel an update on a stack with the same name. You might retry CancelUpdateStack requests to ensure that AWS CloudFormation successfully received them."
}
"""
CancelUpdateStack(args) = cloudformation("CancelUpdateStack", args)

"""
    DeleteChangeSet()

Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set. If the call successfully completes, AWS CloudFormation successfully deleted the change set.

Required Parameters
{
  "ChangeSetName": "The name or Amazon Resource Name (ARN) of the change set that you want to delete."
}

Optional Parameters
{
  "StackName": "If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it."
}
"""
DeleteChangeSet(args) = cloudformation("DeleteChangeSet", args)

"""
    CreateChangeSet()

Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack. To create a change set for a stack that doesn't exist, for the ChangeSetType parameter, specify CREATE. To create a change set for an existing stack, specify UPDATE for the ChangeSetType parameter. To create a change set for an import operation, specify IMPORT for the ChangeSetType parameter. After the CreateChangeSet call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action. When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. AWS CloudFormation doesn't make changes until you execute the change set.

Required Parameters
{
  "ChangeSetName": "The name of the change set. The name must be unique among all change sets that are associated with the specified stack. A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.",
  "StackName": "The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values."
}

Optional Parameters
{
  "Tags": "Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.",
  "ClientToken": "A unique identifier for this CreateChangeSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry CreateChangeSet requests to ensure that AWS CloudFormation successfully received them.",
  "NotificationARNs": "The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.",
  "TemplateURL": "The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified. Conditional: You must specify only TemplateBody or TemplateURL.",
  "Capabilities": "In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.    CAPABILITY_IAM and CAPABILITY_NAMED_IAM  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the CAPABILITY_IAM or CAPABILITY_NAMED_IAM capability.   If you have IAM resources, you can specify either capability.    If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.    If you don't specify either of these capabilities, AWS CloudFormation returns an InsufficientCapabilities error.   If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     AWS::IAM::AccessKey      AWS::IAM::Group      AWS::IAM::InstanceProfile      AWS::IAM::Policy      AWS::IAM::Role      AWS::IAM::User      AWS::IAM::UserToGroupAddition    For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.    CAPABILITY_AUTO_EXPAND  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the AWS::Include and AWS::Serverless transforms, which are macros hosted by AWS CloudFormation.  This capacity does not apply to creating change sets, and specifying it when creating change sets has no effect. Also, change sets do not currently support nested stacks. If you want to create a stack from a stack template that contains macros and nested stacks, you must create or update the stack directly from the template using the CreateStack or UpdateStack action, and specifying this capability.  For more information on macros, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.  ",
  "RollbackConfiguration": "The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.",
  "UsePreviousTemplate": "Whether to reuse the template that is associated with the stack to create the change set.",
  "TemplateBody": "A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified. Conditional: You must specify only TemplateBody or TemplateURL.",
  "Description": "A description to help you identify this change set.",
  "ChangeSetType": "The type of change set operation. To create a change set for a new stack, specify CREATE. To create a change set for an existing stack, specify UPDATE. To create a change set for an import operation, specify IMPORT. If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the  REVIEW_IN_PROGRESS  state until you execute the change set. By default, AWS CloudFormation specifies UPDATE. You can't use the UPDATE type to create a change set for a new stack or the CREATE type to create a change set for an existing stack.",
  "Parameters": "A list of Parameter structures that specify input parameters for the change set. For more information, see the Parameter data type.",
  "RoleARN": "The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.",
  "ResourceTypes": "The template resource types that you have permissions to work with if you execute this change set, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance. If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see Controlling Access with AWS Identity and Access Management in the AWS CloudFormation User Guide.",
  "ResourcesToImport": "The resources to import into your stack."
}
"""
CreateChangeSet(args) = cloudformation("CreateChangeSet", args)

"""
    ListTypeRegistrations()

Returns a list of registration tokens for the specified type(s).

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.",
  "TypeArn": "The Amazon Resource Name (ARN) of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "TypeName": "The name of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "RegistrationStatusFilter": "The current status of the type registration request. The default is IN_PROGRESS.",
  "Type": "The kind of type. Currently the only valid value is RESOURCE. Conditional: You must specify either TypeName and Type, or Arn."
}
"""
ListTypeRegistrations() = cloudformation("ListTypeRegistrations")
ListTypeRegistrations(args) = cloudformation("ListTypeRegistrations", args)

"""
    ListStackSetOperationResults()

Returns summary information about the results of a stack set operation. 

Required Parameters
{
  "OperationId": "The ID of the stack set operation.",
  "StackSetName": "The name or unique ID of the stack set that you want to get operation results for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "If the previous request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call ListStackSetOperationResults again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null."
}
"""
ListStackSetOperationResults(args) = cloudformation("ListStackSetOperationResults", args)

"""
    ContinueUpdateRollback()

For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state. Depending on the cause of the failure, you can manually  fix the error and continue the rollback. By continuing the rollback, you can return your stack to a working state (the UPDATE_ROLLBACK_COMPLETE state), and then try to update the stack again. A stack goes into the UPDATE_ROLLBACK_FAILED state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.

Required Parameters
{
  "StackName": "The name or the unique ID of the stack that you want to continue rolling back.  Don't specify the name of a nested stack (a stack that was created by using the AWS::CloudFormation::Stack resource). Instead, use this operation on the parent stack (the stack that contains the AWS::CloudFormation::Stack resource). "
}

Optional Parameters
{
  "ClientRequestToken": "A unique identifier for this ContinueUpdateRollback request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name. You might retry ContinueUpdateRollback requests to ensure that AWS CloudFormation successfully received them.",
  "RoleARN": "The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.",
  "ResourcesToSkip": "A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the UPDATE_FAILED state because a rollback failed. You can't specify resources that are in the UPDATE_FAILED state for other reasons, for example, because an update was cancelled. To check why a resource update failed, use the DescribeStackResources action, and view the resource status reason.   Specify this property to skip rolling back resources that AWS CloudFormation can't successfully roll back. We recommend that you  troubleshoot resources before skipping them. AWS CloudFormation sets the status of the specified resources to UPDATE_COMPLETE and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable.   Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources.  To skip resources that are part of nested stacks, use the following format: NestedStackName.ResourceLogicalID. If you want to specify the logical ID of a stack resource (Type: AWS::CloudFormation::Stack) in the ResourcesToSkip list, then its corresponding embedded stack must be in one of the following states: DELETE_IN_PROGRESS, DELETE_COMPLETE, or DELETE_FAILED.   Don't confuse a child stack's name with its corresponding logical ID defined in the parent stack. For an example of a continue update rollback operation with nested stacks, see Using ResourcesToSkip to recover a nested stacks hierarchy.  "
}
"""
ContinueUpdateRollback(args) = cloudformation("ContinueUpdateRollback", args)

"""
    DescribeStackDriftDetectionStatus()

Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information on stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to initiate a stack drift detection operation. DetectStackDrift returns a StackDriftDetectionId you can use to monitor the progress of the operation using DescribeStackDriftDetectionStatus. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.

Required Parameters
{
  "StackDriftDetectionId": "The ID of the drift detection results of this operation.  AWS CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of drift results AWS CloudFormation retains for any given stack, and for how long, may vary. "
}
"""
DescribeStackDriftDetectionStatus(args) = cloudformation("DescribeStackDriftDetectionStatus", args)

"""
    ListTypeVersions()

Returns summary information about the versions of a type.

Optional Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the type for which you want version summary information. Conditional: You must specify either TypeName and Type, or Arn.",
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.",
  "TypeName": "The name of the type for which you want version summary information. Conditional: You must specify either TypeName and Type, or Arn.",
  "Type": "The kind of the type. Currently the only valid value is RESOURCE. Conditional: You must specify either TypeName and Type, or Arn.",
  "DeprecatedStatus": "The deprecation status of the type versions that you want to get summary information about. Valid values include:    LIVE: The type version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.    DEPRECATED: The type version has been deregistered and can no longer be used in CloudFormation operations.    The default is LIVE."
}
"""
ListTypeVersions() = cloudformation("ListTypeVersions")
ListTypeVersions(args) = cloudformation("ListTypeVersions", args)

"""
    DescribeAccountLimits()

Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see AWS CloudFormation Limits in the AWS CloudFormation User Guide.

Optional Parameters
{
  "NextToken": "A string that identifies the next page of limits that you want to retrieve."
}
"""
DescribeAccountLimits() = cloudformation("DescribeAccountLimits")
DescribeAccountLimits(args) = cloudformation("DescribeAccountLimits", args)

"""
    SetTypeDefaultVersion()

Specify the default version of a type. The default version of a type will be used in CloudFormation operations.

Optional Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the type for which you want version summary information. Conditional: You must specify either TypeName and Type, or Arn.",
  "TypeName": "The name of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "Type": "The kind of type. Conditional: You must specify either TypeName and Type, or Arn.",
  "VersionId": "The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered."
}
"""
SetTypeDefaultVersion() = cloudformation("SetTypeDefaultVersion")
SetTypeDefaultVersion(args) = cloudformation("SetTypeDefaultVersion", args)

"""
    SetStackPolicy()

Sets a stack policy for a specified stack.

Required Parameters
{
  "StackName": "The name or unique stack ID that you want to associate a policy with."
}

Optional Parameters
{
  "StackPolicyBody": "Structure containing the stack policy body. For more information, go to  Prevent Updates to Stack Resources in the AWS CloudFormation User Guide. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both.",
  "StackPolicyURL": "Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both."
}
"""
SetStackPolicy(args) = cloudformation("SetStackPolicy", args)

"""
    DeleteStackInstances()

Deletes stack instances for the specified accounts, in the specified regions. 

Required Parameters
{
  "Regions": "The regions where you want to delete stack set instances. ",
  "RetainStacks": "Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. For more information, see Stack set operation options.",
  "StackSetName": "The name or unique ID of the stack set that you want to delete stack instances for."
}

Optional Parameters
{
  "OperationId": "The unique identifier for this stack set operation.  If you don't specify an operation ID, the SDK generates one automatically.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them. Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED. ",
  "DeploymentTargets": "[Service-managed permissions] The AWS Organizations accounts from which to delete stack instances. You can specify Accounts or DeploymentTargets, but not both.",
  "Accounts": "[Self-managed permissions] The names of the AWS accounts that you want to delete stack instances for. You can specify Accounts or DeploymentTargets, but not both.",
  "OperationPreferences": "Preferences for how AWS CloudFormation performs this stack set operation."
}
"""
DeleteStackInstances(args) = cloudformation("DeleteStackInstances", args)

"""
    EstimateTemplateCost()

Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.

Optional Parameters
{
  "TemplateBody": "Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to Template Anatomy in the AWS CloudFormation User Guide.) Conditional: You must pass TemplateBody or TemplateURL. If both are passed, only TemplateBody is used.",
  "TemplateURL": "Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must pass TemplateURL or TemplateBody. If both are passed, only TemplateBody is used.",
  "Parameters": "A list of Parameter structures that specify input parameters."
}
"""
EstimateTemplateCost() = cloudformation("EstimateTemplateCost")
EstimateTemplateCost(args) = cloudformation("EstimateTemplateCost", args)

"""
    DeregisterType()

Removes a type or type version from active use in the CloudFormation registry. If a type or type version is deregistered, it cannot be used in CloudFormation operations. To deregister a type, you must individually deregister all registered versions of that type. If a type has only a single registered version, deregistering that version results in the type itself being deregistered.  You cannot deregister the default version of a type, unless it is the only registered version of that type, in which case the type itself is deregistered as well. 

Optional Parameters
{
  "Arn": "The Amazon Resource Name (ARN) of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "TypeName": "The name of the type. Conditional: You must specify either TypeName and Type, or Arn.",
  "Type": "The kind of type. Currently the only valid value is RESOURCE. Conditional: You must specify either TypeName and Type, or Arn.",
  "VersionId": "The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered."
}
"""
DeregisterType() = cloudformation("DeregisterType")
DeregisterType(args) = cloudformation("DeregisterType", args)

"""
    RegisterType()

Registers a type with the CloudFormation service. Registering a type makes it available for use in CloudFormation templates in your AWS account, and includes:   Validating the resource schema   Determining which handlers have been specified for the resource   Making the resource type available for use in your account   For more information on how to develop types and ready them for registeration, see Creating Resource Providers in the CloudFormation CLI User Guide. Once you have initiated a registration request using  RegisterType , you can use  DescribeTypeRegistration  to monitor the progress of the registration request.

Required Parameters
{
  "TypeName": "The name of the type being registered. We recommend that type names adhere to the following pattern: company_or_organization::service::type.  The following organization namespaces are reserved and cannot be used in your resource type names:    Alexa     AMZN     Amazon     AWS     Custom     Dev    ",
  "SchemaHandlerPackage": "A url to the S3 bucket containing the schema handler package that contains the schema, event handlers, and associated files for the type you want to register. For information on generating a schema handler package for the type you want to register, see submit in the CloudFormation CLI User Guide.  As part of registering a resource provider type, CloudFormation must be able to access the S3 bucket which contains the schema handler package for that resource provider. For more information, see IAM Permissions for Registering a Resource Provider in the AWS CloudFormation User Guide. "
}

Optional Parameters
{
  "ClientRequestToken": "A unique identifier that acts as an idempotency key for this registration request. Specifying a client request token prevents CloudFormation from generating more than one version of a type from the same registeration request, even if the request is submitted multiple times. ",
  "Type": "The kind of type. Currently, the only valid value is RESOURCE.",
  "LoggingConfig": "Specifies logging configuration information for a type.",
  "ExecutionRoleArn": "The Amazon Resource Name (ARN) of the IAM execution role to use to register the type. If your resource type calls AWS APIs in any of its handlers, you must create an  IAM execution role  that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. CloudFormation then assumes that execution role to provide your resource type with the appropriate credentials."
}
"""
RegisterType(args) = cloudformation("RegisterType", args)

"""
    CreateStackInstances()

Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. You must specify at least one value for either Accounts or DeploymentTargets, and you must specify at least one value for Regions.

Required Parameters
{
  "Regions": "The names of one or more regions where you want to create stack instances using the specified AWS account(s). ",
  "StackSetName": "The name or unique ID of the stack set that you want to create stack instances from."
}

Optional Parameters
{
  "OperationId": "The unique identifier for this stack set operation.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically.  Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED. ",
  "DeploymentTargets": "[Service-managed permissions] The AWS Organizations accounts for which to create stack instances in the specified Regions. You can specify Accounts or DeploymentTargets, but not both.",
  "Accounts": "[Self-managed permissions] The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for. You can specify Accounts or DeploymentTargets, but not both.",
  "ParameterOverrides": "A list of stack set parameters whose values you want to override in the selected stack instances. Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:   To override the current value for a parameter, include the parameter and specify its value.   To leave a parameter set to its present value, you can do one of the following:   Do not include the parameter in the list.   Include the parameter and specify UsePreviousValue as true. (You cannot specify both a value and set UsePreviousValue to true.)     To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.   To leave all parameters set to their present values, do not specify this property at all.   During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value. You can only override the parameter values that are specified in the stack set; to add or delete a parameter itself, use UpdateStackSet to update the stack set template.",
  "OperationPreferences": "Preferences for how AWS CloudFormation performs this stack set operation."
}
"""
CreateStackInstances(args) = cloudformation("CreateStackInstances", args)

"""
    ListStackInstances()

Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.

Required Parameters
{
  "StackSetName": "The name or unique ID of the stack set that you want to list stack instances for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "StackInstanceAccount": "The name of the AWS account that you want to list stack instances for.",
  "StackInstanceRegion": "The name of the region where you want to list stack instances. ",
  "NextToken": "If the previous request didn't return all of the remaining results, the response's NextToken parameter value is set to a token. To retrieve the next set of results, call ListStackInstances again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null."
}
"""
ListStackInstances(args) = cloudformation("ListStackInstances", args)

"""
    UpdateTerminationProtection()

Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see Protecting a Stack From Being Deleted in the AWS CloudFormation User Guide.  For nested stacks, termination protection is set on the root stack and cannot be changed directly on the nested stack.

Required Parameters
{
  "StackName": "The name or unique ID of the stack for which you want to set termination protection.",
  "EnableTerminationProtection": "Whether to enable termination protection on the specified stack."
}
"""
UpdateTerminationProtection(args) = cloudformation("UpdateTerminationProtection", args)

"""
    GetStackPolicy()

Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.

Required Parameters
{
  "StackName": "The name or unique stack ID that is associated with the stack whose policy you want to get."
}
"""
GetStackPolicy(args) = cloudformation("GetStackPolicy", args)

"""
    DescribeTypeRegistration()

Returns information about a type's registration, including its current status and type and version identifiers. When you initiate a registration request using  RegisterType , you can then use  DescribeTypeRegistration  to monitor the progress of that registration request. Once the registration request has completed, use  DescribeType  to return detailed informaiton about a type.

Required Parameters
{
  "RegistrationToken": "The identifier for this registration request. This registration token is generated by CloudFormation when you initiate a registration request using  RegisterType ."
}
"""
DescribeTypeRegistration(args) = cloudformation("DescribeTypeRegistration", args)

"""
    DescribeStackResourceDrifts()

Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where AWS CloudFormation detects configuration drift. For a given stack, there will be one StackResourceDrift for each stack resource that has been checked for drift. Resources that have not yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see Resources that Support Drift Detection. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.

Required Parameters
{
  "StackName": "The name of the stack for which you want drift information."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "A string that identifies the next page of stack resource drift results.",
  "StackResourceDriftStatusFilters": "The resource drift status values to use as filters for the resource drift results returned.    DELETED: The resource differs from its expected template configuration in that the resource has been deleted.    MODIFIED: One or more resource properties differ from their expected template values.    IN_SYNC: The resources's actual configuration matches its expected template configuration.    NOT_CHECKED: AWS CloudFormation does not currently return this value.  "
}
"""
DescribeStackResourceDrifts(args) = cloudformation("DescribeStackResourceDrifts", args)

"""
    ListImports()

Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.  For more information about importing an exported output value, see the  Fn::ImportValue  function. 

Required Parameters
{
  "ExportName": "The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value. "
}

Optional Parameters
{
  "NextToken": "A string (provided by the ListImports response output) that identifies the next page of stacks that are importing the specified exported output value. "
}
"""
ListImports(args) = cloudformation("ListImports", args)

"""
    CreateStackSet()

Creates a stack set.

Required Parameters
{
  "StackSetName": "The name to associate with the stack set. The name must be unique in the region where you create your stack set.  A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can't be longer than 128 characters. "
}

Optional Parameters
{
  "ExecutionRoleName": "The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation. Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets. ",
  "PermissionModel": "Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.   With self-managed permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see Grant Self-Managed Stack Set Permissions.   With service-managed permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see Grant Service-Managed Stack Set Permissions.  ",
  "Tags": "The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified. If you specify tags as part of a CreateStackSet action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire CreateStackSet action fails with an access denied error, and the stack set is not created.",
  "AutoDeployment": "Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED. If you specify AutoDeployment, do not specify DeploymentTargets or Regions.",
  "AdministrationRoleARN": "The Amazon Resource Number (ARN) of the IAM role to use to create this stack set.  Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see Prerequisites: Granting Permissions for Stack Set Operations in the AWS CloudFormation User Guide.",
  "TemplateURL": "The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket. For more information, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.",
  "Capabilities": "In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.    CAPABILITY_IAM and CAPABILITY_NAMED_IAM  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the CAPABILITY_IAM or CAPABILITY_NAMED_IAM capability.   If you have IAM resources, you can specify either capability.    If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.    If you don't specify either of these capabilities, AWS CloudFormation returns an InsufficientCapabilities error.   If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     AWS::IAM::AccessKey      AWS::IAM::Group      AWS::IAM::InstanceProfile      AWS::IAM::Policy      AWS::IAM::Role      AWS::IAM::User      AWS::IAM::UserToGroupAddition    For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.    CAPABILITY_AUTO_EXPAND  Some templates contain macros. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.  Stack sets do not currently support macros in stack templates. (This includes the AWS::Include and AWS::Serverless transforms, which are macros hosted by AWS CloudFormation.) Even if you specify this capability, if you include a macro in your template the stack set operation will fail.   ",
  "TemplateBody": "The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.",
  "Description": "A description of the stack set. You can use the description to identify the stack set's purpose or other important information.",
  "ClientRequestToken": "A unique identifier for this CreateStackSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry CreateStackSet requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically. ",
  "Parameters": "The input parameters for the stack set template. "
}
"""
CreateStackSet(args) = cloudformation("CreateStackSet", args)

"""
    DescribeStackSet()

Returns the description of the specified stack set. 

Required Parameters
{
  "StackSetName": "The name or unique ID of the stack set whose description you want."
}
"""
DescribeStackSet(args) = cloudformation("DescribeStackSet", args)

"""
    UpdateStackSet()

Updates the stack set, and associated stack instances in the specified accounts and regions. Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.

Required Parameters
{
  "StackSetName": "The name or unique ID of the stack set that you want to update."
}

Optional Parameters
{
  "Regions": "The regions in which to update associated stack instances. If you specify regions, you must also specify accounts in which to update stack set instances. To update all the stack instances associated with this stack set, do not specify the Accounts or Regions properties. If the stack set update includes changes to the template (that is, if the TemplateBody or TemplateURL properties are specified), or the Parameters property, AWS CloudFormation marks all stack instances with a status of OUTDATED prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status. ",
  "ExecutionRoleName": "The name of the IAM execution role to use to update the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation. Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets.   If you specify a customized execution role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized execution role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.",
  "OperationPreferences": "Preferences for how AWS CloudFormation performs this stack set operation.",
  "PermissionModel": "Describes how the IAM roles required for stack set operations are created. You cannot modify PermissionModel if there are stack instances associated with your stack set.   With self-managed permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see Grant Self-Managed Stack Set Permissions.   With service-managed permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see Grant Service-Managed Stack Set Permissions.  ",
  "Tags": "The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags. If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means:   If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags.    If you specify any tags using this parameter, you must specify all the tags that you want associated with this stack set, even tags you've specifed before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well.    If you specify an empty value, AWS CloudFormation removes all currently associated tags.   If you specify new tags as part of an UpdateStackSet action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don't have the necessary permission(s), the entire UpdateStackSet action fails with an access denied error, and the stack set is not updated.",
  "AutoDeployment": "[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organization or organizational unit (OU). If you specify AutoDeployment, do not specify DeploymentTargets or Regions.",
  "AdministrationRoleARN": "The Amazon Resource Number (ARN) of the IAM role to use to update this stack set. Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see Granting Permissions for Stack Set Operations in the AWS CloudFormation User Guide. If you specified a customized administrator role when you created the stack set, you must specify a customized administrator role, even if it is the same customized administrator role used with this stack set previously.",
  "OperationId": "The unique ID for this stack set operation.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, AWS CloudFormation generates one automatically. Repeating this stack set operation with a new operation ID retries all stack instances whose status is OUTDATED. ",
  "DeploymentTargets": "[Service-managed permissions] The AWS Organizations accounts in which to update associated stack instances. To update all the stack instances associated with this stack set, do not specify DeploymentTargets or Regions. If the stack set update includes changes to the template (that is, if TemplateBody or TemplateURL is specified), or the Parameters, AWS CloudFormation marks all stack instances with a status of OUTDATED prior to updating the stack instances in the specified accounts and Regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while leaving all other stack instances with their existing stack instance status.",
  "TemplateURL": "The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify only one of the following parameters: TemplateBody or TemplateURL—or set UsePreviousTemplate to true. ",
  "Capabilities": "In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to update the stack set and its associated stack instances.    CAPABILITY_IAM and CAPABILITY_NAMED_IAM  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks sets, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the CAPABILITY_IAM or CAPABILITY_NAMED_IAM capability.   If you have IAM resources, you can specify either capability.    If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.    If you don't specify either of these capabilities, AWS CloudFormation returns an InsufficientCapabilities error.   If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     AWS::IAM::AccessKey      AWS::IAM::Group      AWS::IAM::InstanceProfile      AWS::IAM::Policy      AWS::IAM::Role      AWS::IAM::User      AWS::IAM::UserToGroupAddition    For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.    CAPABILITY_AUTO_EXPAND  Some templates contain macros. If your stack template contains one or more macros, and you choose to update a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.  Stack sets do not currently support macros in stack templates. (This includes the AWS::Include and AWS::Serverless transforms, which are macros hosted by AWS CloudFormation.) Even if you specify this capability, if you include a macro in your template the stack set operation will fail.   ",
  "Accounts": "[Self-managed permissions] The accounts in which to update associated stack instances. If you specify accounts, you must also specify the regions in which to update stack set instances. To update all the stack instances associated with this stack set, do not specify the Accounts or Regions properties. If the stack set update includes changes to the template (that is, if the TemplateBody or TemplateURL properties are specified), or the Parameters property, AWS CloudFormation marks all stack instances with a status of OUTDATED prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status. ",
  "UsePreviousTemplate": "Use the existing template that's associated with the stack set that you're updating. Conditional: You must specify only one of the following parameters: TemplateBody or TemplateURL—or set UsePreviousTemplate to true. ",
  "TemplateBody": "The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify only one of the following parameters: TemplateBody or TemplateURL—or set UsePreviousTemplate to true.",
  "Description": "A brief description of updates that you are making.",
  "Parameters": "A list of input parameters for the stack set template. "
}
"""
UpdateStackSet(args) = cloudformation("UpdateStackSet", args)

"""
    ValidateTemplate()

Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.

Optional Parameters
{
  "TemplateBody": "Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must pass TemplateURL or TemplateBody. If both are passed, only TemplateBody is used.",
  "TemplateURL": "Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must pass TemplateURL or TemplateBody. If both are passed, only TemplateBody is used."
}
"""
ValidateTemplate() = cloudformation("ValidateTemplate")
ValidateTemplate(args) = cloudformation("ValidateTemplate", args)

"""
    DescribeStackEvents()

Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the AWS CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID). 

Optional Parameters
{
  "NextToken": "A string that identifies the next page of events that you want to retrieve.",
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value."
}
"""
DescribeStackEvents() = cloudformation("DescribeStackEvents")
DescribeStackEvents(args) = cloudformation("DescribeStackEvents", args)

"""
    ListTypes()

Returns summary information about types that have been registered with CloudFormation.

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "Visibility": "The scope at which the type is visible and usable in CloudFormation operations. Valid values include:    PRIVATE: The type is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you create as PRIVATE.    PUBLIC: The type is publically visible and usable within any Amazon account.   The default is PRIVATE.",
  "ProvisioningType": "The provisioning behavior of the type. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted. Valid values include:    FULLY_MUTABLE: The type includes an update handler to process updates to the type during stack update operations.    IMMUTABLE: The type does not include an update handler, so the type cannot be updated and must instead be replaced during stack update operations.    NON_PROVISIONABLE: The type does not include create, read, and delete handlers, and therefore cannot actually be provisioned.  ",
  "NextToken": "If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.",
  "DeprecatedStatus": "The deprecation status of the types that you want to get summary information about. Valid values include:    LIVE: The type is registered for use in CloudFormation operations.    DEPRECATED: The type has been deregistered and can no longer be used in CloudFormation operations.   "
}
"""
ListTypes() = cloudformation("ListTypes")
ListTypes(args) = cloudformation("ListTypes", args)

"""
    ListChangeSets()

Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.

Required Parameters
{
  "StackName": "The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets."
}

Optional Parameters
{
  "NextToken": "A string (provided by the ListChangeSets response output) that identifies the next page of change sets that you want to retrieve."
}
"""
ListChangeSets(args) = cloudformation("ListChangeSets", args)

"""
    ListStackSetOperations()

Returns summary information about operations performed on a stack set. 

Required Parameters
{
  "StackSetName": "The name or unique ID of the stack set that you want to get operation summaries for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call ListStackSetOperations again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null."
}
"""
ListStackSetOperations(args) = cloudformation("ListStackSetOperations", args)

"""
    DeleteStackSet()

Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see DeleteStackInstances. 

Required Parameters
{
  "StackSetName": "The name or unique ID of the stack set that you're deleting. You can obtain this value by running ListStackSets."
}
"""
DeleteStackSet(args) = cloudformation("DeleteStackSet", args)

"""
    DescribeChangeSet()

Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see Updating Stacks Using Change Sets in the AWS CloudFormation User Guide.

Required Parameters
{
  "ChangeSetName": "The name or Amazon Resource Name (ARN) of the change set that you want to describe."
}

Optional Parameters
{
  "NextToken": "A string (provided by the DescribeChangeSet response output) that identifies the next page of information that you want to retrieve.",
  "StackName": "If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe."
}
"""
DescribeChangeSet(args) = cloudformation("DescribeChangeSet", args)

"""
    CreateStack()

Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the DescribeStacks API.

Required Parameters
{
  "StackName": "The name that is associated with the stack. The name must be unique in the region in which you are creating the stack.  A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters. "
}

Optional Parameters
{
  "Tags": "Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.",
  "StackPolicyBody": "Structure containing the stack policy body. For more information, go to  Prevent Updates to Stack Resources in the AWS CloudFormation User Guide. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both.",
  "NotificationARNs": "The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).",
  "EnableTerminationProtection": "Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see Protecting a Stack From Being Deleted in the AWS CloudFormation User Guide. Termination protection is disabled on stacks by default.   For nested stacks, termination protection is set on the root stack and cannot be changed directly on the nested stack.",
  "StackPolicyURL": "Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both.",
  "TemplateURL": "Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.",
  "Capabilities": "In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to create the stack.    CAPABILITY_IAM and CAPABILITY_NAMED_IAM  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the CAPABILITY_IAM or CAPABILITY_NAMED_IAM capability.   If you have IAM resources, you can specify either capability.    If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.    If you don't specify either of these capabilities, AWS CloudFormation returns an InsufficientCapabilities error.   If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     AWS::IAM::AccessKey      AWS::IAM::Group      AWS::IAM::InstanceProfile      AWS::IAM::Policy      AWS::IAM::Role      AWS::IAM::User      AWS::IAM::UserToGroupAddition    For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.    CAPABILITY_AUTO_EXPAND  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually creating the stack. If your stack template contains one or more macros, and you choose to create a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the AWS::Include and AWS::Serverless transforms, which are macros hosted by AWS CloudFormation. Change sets do not currently support nested stacks. If you want to create a stack from a stack template that contains macros and nested stacks, you must create the stack directly from the template using this capability.  You should only create stacks directly from a stack template that contains macros if you know what processing the macro performs. Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without AWS CloudFormation being notified.  For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.  ",
  "RollbackConfiguration": "The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.",
  "OnFailure": "Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either OnFailure or DisableRollback, but not both. Default: ROLLBACK ",
  "TemplateBody": "Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.",
  "DisableRollback": "Set to true to disable rollback of the stack if stack creation failed. You can specify either DisableRollback or OnFailure, but not both. Default: false ",
  "ClientRequestToken": "A unique identifier for this CreateStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry CreateStack requests to ensure that AWS CloudFormation successfully received them. All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a CreateStack operation with the token token1, then all the StackEvents generated by that operation will have ClientRequestToken set as token1. In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format Console-StackOperation-ID, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002. ",
  "TimeoutInMinutes": "The amount of time that can pass before the stack status becomes CREATE_FAILED; if DisableRollback is not set or is set to false, the stack will be rolled back.",
  "Parameters": "A list of Parameter structures that specify input parameters for the stack. For more information, see the Parameter data type.",
  "RoleARN": "The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.",
  "ResourceTypes": "The template resource types that you have permissions to work with for this create stack action, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance. Use the following syntax to describe template resource types: AWS::* (for all AWS resource), Custom::* (for all custom resources), Custom::logical_ID  (for a specific custom resource), AWS::service_name::* (for all resources of a particular AWS service), and AWS::service_name::resource_logical_ID  (for a specific AWS resource). If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see Controlling Access with AWS Identity and Access Management."
}
"""
CreateStack(args) = cloudformation("CreateStack", args)

"""
    DescribeStackResource()

Returns a description of the specified resource in the specified stack. For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.

Required Parameters
{
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value.",
  "LogicalResourceId": "The logical name of the resource as specified in the template. Default: There is no default value."
}
"""
DescribeStackResource(args) = cloudformation("DescribeStackResource", args)

"""
    ListStackResources()

Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.

Required Parameters
{
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value."
}

Optional Parameters
{
  "NextToken": "A string that identifies the next page of stack resources that you want to retrieve."
}
"""
ListStackResources(args) = cloudformation("ListStackResources", args)

"""
    UpdateStack()

Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the DescribeStacks action. To get a copy of the template for an existing stack, you can use the GetTemplate action. For more information about creating an update template, updating a stack, and monitoring the progress of the update, see Updating a Stack.

Required Parameters
{
  "StackName": "The name or unique stack ID of the stack to update."
}

Optional Parameters
{
  "Tags": "Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags. If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.",
  "StackPolicyBody": "Structure containing a new stack policy body. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both. You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.",
  "NotificationARNs": "Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.",
  "StackPolicyURL": "Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the StackPolicyBody or the StackPolicyURL parameter, but not both. You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.",
  "TemplateURL": "Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify only one of the following parameters: TemplateBody, TemplateURL, or set the UsePreviousTemplate to true.",
  "Capabilities": "In some cases, you must explicitly acknowledge that your stack template contains certain capabilities in order for AWS CloudFormation to update the stack.    CAPABILITY_IAM and CAPABILITY_NAMED_IAM  Some stack templates might include resources that can affect permissions in your AWS account; for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge this by specifying one of these capabilities. The following IAM resources require you to specify either the CAPABILITY_IAM or CAPABILITY_NAMED_IAM capability.   If you have IAM resources, you can specify either capability.    If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM.    If you don't specify either of these capabilities, AWS CloudFormation returns an InsufficientCapabilities error.   If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.     AWS::IAM::AccessKey      AWS::IAM::Group      AWS::IAM::InstanceProfile      AWS::IAM::Policy      AWS::IAM::Role      AWS::IAM::User      AWS::IAM::UserToGroupAddition    For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.    CAPABILITY_AUTO_EXPAND  Some template contain macros. Macros perform custom processing on templates; this can include simple actions like find-and-replace operations, all the way to extensive transformations of entire templates. Because of this, users typically create a change set from the processed template, so that they can review the changes resulting from the macros before actually updating the stack. If your stack template contains one or more macros, and you choose to update a stack directly from the processed template, without first reviewing the resulting changes in a change set, you must acknowledge this capability. This includes the AWS::Include and AWS::Serverless transforms, which are macros hosted by AWS CloudFormation. Change sets do not currently support nested stacks. If you want to update a stack from a stack template that contains macros and nested stacks, you must update the stack directly from the template using this capability.  You should only update stacks directly from a stack template that contains macros if you know what processing the macro performs. Each macro relies on an underlying Lambda service function for processing stack templates. Be aware that the Lambda function owner can update the function operation without AWS CloudFormation being notified.  For more information, see Using AWS CloudFormation Macros to Perform Custom Processing on Templates.  ",
  "RollbackConfiguration": "The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.",
  "UsePreviousTemplate": "Reuse the existing template that is associated with the stack that you are updating. Conditional: You must specify only one of the following parameters: TemplateBody, TemplateURL, or set the UsePreviousTemplate to true.",
  "TemplateBody": "Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to Template Anatomy in the AWS CloudFormation User Guide.) Conditional: You must specify only one of the following parameters: TemplateBody, TemplateURL, or set the UsePreviousTemplate to true.",
  "ClientRequestToken": "A unique identifier for this UpdateStack request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry UpdateStack requests to ensure that AWS CloudFormation successfully received them. All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a CreateStack operation with the token token1, then all the StackEvents generated by that operation will have ClientRequestToken set as token1. In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format Console-StackOperation-ID, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002. ",
  "Parameters": "A list of Parameter structures that specify input parameters for the stack. For more information, see the Parameter data type.",
  "StackPolicyDuringUpdateURL": "Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the StackPolicyDuringUpdateBody or the StackPolicyDuringUpdateURL parameter, but not both. If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.",
  "StackPolicyDuringUpdateBody": "Structure containing the temporary overriding stack policy body. You can specify either the StackPolicyDuringUpdateBody or the StackPolicyDuringUpdateURL parameter, but not both. If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.",
  "ResourceTypes": "The template resource types that you have permissions to work with for this update stack action, such as AWS::EC2::Instance, AWS::EC2::*, or Custom::MyCustomInstance. If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see Controlling Access with AWS Identity and Access Management.",
  "RoleARN": "The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials."
}
"""
UpdateStack(args) = cloudformation("UpdateStack", args)

"""
    GetTemplateSummary()

Returns information about a new or existing template. The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set. You can use the GetTemplateSummary action when you submit a template, or you can get template information for a stack set, or a running or deleted stack. For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a ValidationError is returned.

Optional Parameters
{
  "TemplateBody": "Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify only one of the following parameters: StackName, StackSetName, TemplateBody, or TemplateURL.",
  "TemplateURL": "Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see Template Anatomy in the AWS CloudFormation User Guide. Conditional: You must specify only one of the following parameters: StackName, StackSetName, TemplateBody, or TemplateURL.",
  "StackName": "The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID. Conditional: You must specify only one of the following parameters: StackName, StackSetName, TemplateBody, or TemplateURL.",
  "StackSetName": "The name or unique ID of the stack set from which the stack was created. Conditional: You must specify only one of the following parameters: StackName, StackSetName, TemplateBody, or TemplateURL."
}
"""
GetTemplateSummary() = cloudformation("GetTemplateSummary")
GetTemplateSummary(args) = cloudformation("GetTemplateSummary", args)

"""
    ExecuteChangeSet()

Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update. When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack. If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.

Required Parameters
{
  "ChangeSetName": "The name or ARN of the change set that you want use to update the specified stack."
}

Optional Parameters
{
  "ClientRequestToken": "A unique identifier for this ExecuteChangeSet request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry ExecuteChangeSet requests to ensure that AWS CloudFormation successfully received them.",
  "StackName": "If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute."
}
"""
ExecuteChangeSet(args) = cloudformation("ExecuteChangeSet", args)

"""
    StopStackSetOperation()

Stops an in-progress operation on a stack set and its associated stack instances. 

Required Parameters
{
  "OperationId": "The ID of the stack operation. ",
  "StackSetName": "The name or unique ID of the stack set that you want to stop the operation for."
}
"""
StopStackSetOperation(args) = cloudformation("StopStackSetOperation", args)

"""
    GetTemplate()

Returns the template body for a specified stack. You can get the template for running or deleted stacks. For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.   If the template does not exist, a ValidationError is returned.  

Optional Parameters
{
  "TemplateStage": "For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify Original. To get the template after AWS CloudFormation has processed all transforms, specify Processed.  If the template doesn't include transforms, Original and Processed return the same template. By default, AWS CloudFormation specifies Original. ",
  "ChangeSetName": "The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the StackName.",
  "StackName": "The name or the unique stack ID that is associated with the stack, which are not always interchangeable:   Running stacks: You can specify either the stack's name or its unique stack ID.   Deleted stacks: You must specify the unique stack ID.   Default: There is no default value."
}
"""
GetTemplate() = cloudformation("GetTemplate")
GetTemplate(args) = cloudformation("GetTemplate", args)

"""
    UpdateStackInstances()

Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region.  You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use CreateStackInstances.  During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value. You can only update the parameter values that are specified in the stack set; to add or delete a parameter itself, use UpdateStackSet to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use UpdateStackSet to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using UpdateStackInstances.

Required Parameters
{
  "Regions": "The names of one or more regions in which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.",
  "StackSetName": "The name or unique ID of the stack set associated with the stack instances."
}

Optional Parameters
{
  "OperationId": "The unique identifier for this stack set operation.  The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them. If you don't specify an operation ID, the SDK generates one automatically. ",
  "DeploymentTargets": "[Service-managed permissions] The AWS Organizations accounts for which you want to update parameter values for stack instances. If your update targets OUs, the overridden parameter values only apply to the accounts that are currently in the target OUs and their child OUs. Accounts added to the target OUs and their child OUs in the future won't use the overridden values. You can specify Accounts or DeploymentTargets, but not both.",
  "Accounts": "[Self-managed permissions] The names of one or more AWS accounts for which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions. You can specify Accounts or DeploymentTargets, but not both.",
  "ParameterOverrides": " A list of input parameters whose values you want to update for the specified stack instances.  Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance update operations:   To override the current value for a parameter, include the parameter and specify its value.   To leave a parameter set to its present value, you can do one of the following:   Do not include the parameter in the list.   Include the parameter and specify UsePreviousValue as true. (You cannot specify both a value and set UsePreviousValue to true.)     To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.   To leave all parameters set to their present values, do not specify this property at all.   During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value. You can only override the parameter values that are specified in the stack set; to add or delete a parameter itself, use UpdateStackSet to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use UpdateStackSet to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using UpdateStackInstances.",
  "OperationPreferences": "Preferences for how AWS CloudFormation performs this stack set operation."
}
"""
UpdateStackInstances(args) = cloudformation("UpdateStackInstances", args)

"""
    ListStackSets()

Returns summary information about stack sets that are associated with the user.

Optional Parameters
{
  "MaxResults": "The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a NextToken value that you can assign to the NextToken request parameter to get the next set of results.",
  "NextToken": "If the previous paginated request didn't return all of the remaining results, the response object's NextToken parameter value is set to a token. To retrieve the next set of results, call ListStackSets again and assign that token to the request object's NextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.",
  "Status": "The status of the stack sets that you want to get summary information about."
}
"""
ListStackSets() = cloudformation("ListStackSets")
ListStackSets(args) = cloudformation("ListStackSets", args)
