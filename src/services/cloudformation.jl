include("../AWSCorePrototypeServices.jl")
using .Services: cloudformation

"""
Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.

Required Parameters:
StackName, LogicalResourceId, UniqueId, Status
"""
SignalResource(args) = cloudformation("SignalResource", args)

"""
Returns information about whether a resource's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection. Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see Resources that Support Drift Detection.

Required Parameters:
StackName, LogicalResourceId
"""
DetectStackResourceDrift(args) = cloudformation("DetectStackResourceDrift", args)

"""
Reports progress of a resource handler to CloudFormation. Reserved for use by the CloudFormation CLI. Do not use this API in your code.

Required Parameters:
BearerToken, OperationStatus
"""
RecordHandlerProgress(args) = cloudformation("RecordHandlerProgress", args)

"""
Returns the stack instance that's associated with the specified stack set, AWS account, and region. For a list of stack instances that are associated with a specific stack set, use ListStackInstances.

Required Parameters:
StackSetName, StackInstanceAccount, StackInstanceRegion
"""
DescribeStackInstance(args) = cloudformation("DescribeStackInstance", args)

"""
Detect drift on a stack set. When CloudFormation performs drift detection on a stack set, it performs drift detection on the stack associated with each stack instance in the stack set. For more information, see How CloudFormation Performs Drift Detection on a Stack Set.  DetectStackSetDrift returns the OperationId of the stack set drift detection operation. Use this operation id with  DescribeStackSetOperation  to monitor the progress of the drift detection operation. The drift detection operation may take some time, depending on the number of stack instances included in the stack set, as well as the number of resources included in each stack. Once the operation has completed, use the following actions to return drift information:   Use  DescribeStackSet  to return detailed informaiton about the stack set, including detailed information about the last completed drift operation performed on the stack set. (Information about drift operations that are in progress is not included.)   Use  ListStackInstances  to return a list of stack instances belonging to the stack set, including the drift status and last drift time checked of each instance.   Use  DescribeStackInstance  to return detailed information about a specific stack instance, including its drift status and last drift time checked.   For more information on performing a drift detection operation on a stack set, see Detecting Unmanaged Changes in Stack Sets.  You can only run a single drift detection operation on a given stack set at one time.  To stop a drift detection stack set operation, use  StopStackSetOperation .

Required Parameters:
StackSetName
"""
DetectStackSetDrift(args) = cloudformation("DetectStackSetDrift", args)

"""
Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an AmazonCloudFormationException is returned. 
"""
DescribeStacks() = cloudformation("DescribeStacks")

"""
Returns the description of the specified stack set operation. 

Required Parameters:
StackSetName, OperationId
"""
DescribeStackSetOperation(args) = cloudformation("DescribeStackSetOperation", args)

"""
Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue  function.  For more information, see  AWS CloudFormation Export Stack Output Values.
"""
ListExports() = cloudformation("ListExports")

"""
Returns detailed information about a type that has been registered. If you specify a VersionId, DescribeType returns information about that specific type version. Otherwise, it returns information about the default type version.
"""
DescribeType() = cloudformation("DescribeType")

"""
Detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, AWS CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources. For a list of stack resources that currently support drift detection, see Resources that Support Drift Detection.  DetectStackDrift can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources. When detecting drift on a stack, AWS CloudFormation does not detect drift on any nested stacks belonging to that stack. Perform DetectStackDrift directly on the nested stack itself.

Required Parameters:
StackName
"""
DetectStackDrift(args) = cloudformation("DetectStackDrift", args)

"""
Returns AWS resource descriptions for running and deleted stacks. If StackName is specified, all the associated resources that are part of the stack are returned. If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.  Only the first 100 resources will be returned. If your stack has more resources than this, you should use ListStackResources instead.  For deleted stacks, DescribeStackResources returns resource information for up to 90 days after the stack has been deleted. You must specify either StackName or PhysicalResourceId, but not both. In addition, you can specify LogicalResourceId to filter the returned result. For more information about resources, the LogicalResourceId and PhysicalResourceId, go to the AWS CloudFormation User Guide.  A ValidationError is returned if you specify both StackName and PhysicalResourceId in the same request. 
"""
DescribeStackResources() = cloudformation("DescribeStackResources")

"""
Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
"""
ListStacks() = cloudformation("ListStacks")

"""
Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the DescribeStacks API if the deletion has been completed successfully.

Required Parameters:
StackName
"""
DeleteStack(args) = cloudformation("DeleteStack", args)

"""
Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.  You can cancel only stacks that are in the UPDATE_IN_PROGRESS state. 

Required Parameters:
StackName
"""
CancelUpdateStack(args) = cloudformation("CancelUpdateStack", args)

"""
Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set. If the call successfully completes, AWS CloudFormation successfully deleted the change set.

Required Parameters:
ChangeSetName
"""
DeleteChangeSet(args) = cloudformation("DeleteChangeSet", args)

"""
Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack. To create a change set for a stack that doesn't exist, for the ChangeSetType parameter, specify CREATE. To create a change set for an existing stack, specify UPDATE for the ChangeSetType parameter. To create a change set for an import operation, specify IMPORT for the ChangeSetType parameter. After the CreateChangeSet call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action. When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. AWS CloudFormation doesn't make changes until you execute the change set.

Required Parameters:
StackName, ChangeSetName
"""
CreateChangeSet(args) = cloudformation("CreateChangeSet", args)

"""
Returns a list of registration tokens for the specified type.
"""
ListTypeRegistrations() = cloudformation("ListTypeRegistrations")

"""
Returns summary information about the results of a stack set operation. 

Required Parameters:
StackSetName, OperationId
"""
ListStackSetOperationResults(args) = cloudformation("ListStackSetOperationResults", args)

"""
For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state. Depending on the cause of the failure, you can manually  fix the error and continue the rollback. By continuing the rollback, you can return your stack to a working state (the UPDATE_ROLLBACK_COMPLETE state), and then try to update the stack again. A stack goes into the UPDATE_ROLLBACK_FAILED state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.

Required Parameters:
StackName
"""
ContinueUpdateRollback(args) = cloudformation("ContinueUpdateRollback", args)

"""
Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information on stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to initiate a stack drift detection operation. DetectStackDrift returns a StackDriftDetectionId you can use to monitor the progress of the operation using DescribeStackDriftDetectionStatus. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.

Required Parameters:
StackDriftDetectionId
"""
DescribeStackDriftDetectionStatus(args) = cloudformation("DescribeStackDriftDetectionStatus", args)

"""
Returns summary information about the versions of a type.
"""
ListTypeVersions() = cloudformation("ListTypeVersions")

"""
Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see AWS CloudFormation Limits in the AWS CloudFormation User Guide.
"""
DescribeAccountLimits() = cloudformation("DescribeAccountLimits")

"""
Specify the default version of a type. The default version of a type will be used in CloudFormation operations.
"""
SetTypeDefaultVersion() = cloudformation("SetTypeDefaultVersion")

"""
Sets a stack policy for a specified stack.

Required Parameters:
StackName
"""
SetStackPolicy(args) = cloudformation("SetStackPolicy", args)

"""
Deletes stack instances for the specified accounts, in the specified regions. 

Required Parameters:
StackSetName, Accounts, Regions, RetainStacks
"""
DeleteStackInstances(args) = cloudformation("DeleteStackInstances", args)

"""
Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
"""
EstimateTemplateCost() = cloudformation("EstimateTemplateCost")

"""
Removes a type or type version from active use in the CloudFormation registry. If a type or type version is deregistered, it cannot be used in CloudFormation operations. To deregister a type, you must individually deregister all registered versions of that type. If a type has only a single registered version, deregistering that version results in the type itself being deregistered.  You cannot deregister the default version of a type, unless it is the only registered version of that type, in which case the type itself is deregistered as well. 
"""
DeregisterType() = cloudformation("DeregisterType")

"""
Registers a type with the CloudFormation service. Registering a type makes it available for use in CloudFormation templates in your AWS account, and includes:   Validating the resource schema   Determining which handlers have been specified for the resource   Making the resource type available for use in your account   For more information on how to develop types and ready them for registeration, see Creating Resource Providers in the CloudFormation CLI User Guide. Once you have initiated a registration request using  RegisterType , you can use  DescribeTypeRegistration  to monitor the progress of the registration request.

Required Parameters:
TypeName, SchemaHandlerPackage
"""
RegisterType(args) = cloudformation("RegisterType", args)

"""
Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. Accounts and Regions are required parameters—you must specify at least one account and one region. 

Required Parameters:
StackSetName, Accounts, Regions
"""
CreateStackInstances(args) = cloudformation("CreateStackInstances", args)

"""
Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.

Required Parameters:
StackSetName
"""
ListStackInstances(args) = cloudformation("ListStackInstances", args)

"""
Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see Protecting a Stack From Being Deleted in the AWS CloudFormation User Guide.  For nested stacks, termination protection is set on the root stack and cannot be changed directly on the nested stack.

Required Parameters:
EnableTerminationProtection, StackName
"""
UpdateTerminationProtection(args) = cloudformation("UpdateTerminationProtection", args)

"""
Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.

Required Parameters:
StackName
"""
GetStackPolicy(args) = cloudformation("GetStackPolicy", args)

"""
Returns information about a type's registration, including its current status and type and version identifiers. When you initiate a registration request using  RegisterType , you can then use  DescribeTypeRegistration  to monitor the progress of that registration request. Once the registration request has completed, use  DescribeType  to return detailed informaiton about a type.

Required Parameters:
RegistrationToken
"""
DescribeTypeRegistration(args) = cloudformation("DescribeTypeRegistration", args)

"""
Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where AWS CloudFormation detects configuration drift. For a given stack, there will be one StackResourceDrift for each stack resource that has been checked for drift. Resources that have not yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see Resources that Support Drift Detection. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.

Required Parameters:
StackName
"""
DescribeStackResourceDrifts(args) = cloudformation("DescribeStackResourceDrifts", args)

"""
Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.  For more information about importing an exported output value, see the  Fn::ImportValue  function. 

Required Parameters:
ExportName
"""
ListImports(args) = cloudformation("ListImports", args)

"""
Creates a stack set.

Required Parameters:
StackSetName
"""
CreateStackSet(args) = cloudformation("CreateStackSet", args)

"""
Returns the description of the specified stack set. 

Required Parameters:
StackSetName
"""
DescribeStackSet(args) = cloudformation("DescribeStackSet", args)

"""
Updates the stack set, and associated stack instances in the specified accounts and regions. Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.

Required Parameters:
StackSetName
"""
UpdateStackSet(args) = cloudformation("UpdateStackSet", args)

"""
Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
"""
ValidateTemplate() = cloudformation("ValidateTemplate")

"""
Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the AWS CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID). 
"""
DescribeStackEvents() = cloudformation("DescribeStackEvents")

"""
Returns summary information about types that have been registered with CloudFormation.
"""
ListTypes() = cloudformation("ListTypes")

"""
Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.

Required Parameters:
StackName
"""
ListChangeSets(args) = cloudformation("ListChangeSets", args)

"""
Returns summary information about operations performed on a stack set. 

Required Parameters:
StackSetName
"""
ListStackSetOperations(args) = cloudformation("ListStackSetOperations", args)

"""
Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see DeleteStackInstances. 

Required Parameters:
StackSetName
"""
DeleteStackSet(args) = cloudformation("DeleteStackSet", args)

"""
Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see Updating Stacks Using Change Sets in the AWS CloudFormation User Guide.

Required Parameters:
ChangeSetName
"""
DescribeChangeSet(args) = cloudformation("DescribeChangeSet", args)

"""
Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the DescribeStacks API.

Required Parameters:
StackName
"""
CreateStack(args) = cloudformation("CreateStack", args)

"""
Returns a description of the specified resource in the specified stack. For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.

Required Parameters:
StackName, LogicalResourceId
"""
DescribeStackResource(args) = cloudformation("DescribeStackResource", args)

"""
Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.

Required Parameters:
StackName
"""
ListStackResources(args) = cloudformation("ListStackResources", args)

"""
Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the DescribeStacks action. To get a copy of the template for an existing stack, you can use the GetTemplate action. For more information about creating an update template, updating a stack, and monitoring the progress of the update, see Updating a Stack.

Required Parameters:
StackName
"""
UpdateStack(args) = cloudformation("UpdateStack", args)

"""
Returns information about a new or existing template. The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set. You can use the GetTemplateSummary action when you submit a template, or you can get template information for a stack set, or a running or deleted stack. For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a ValidationError is returned.
"""
GetTemplateSummary() = cloudformation("GetTemplateSummary")

"""
Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update. When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack. If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.

Required Parameters:
ChangeSetName
"""
ExecuteChangeSet(args) = cloudformation("ExecuteChangeSet", args)

"""
Stops an in-progress operation on a stack set and its associated stack instances. 

Required Parameters:
StackSetName, OperationId
"""
StopStackSetOperation(args) = cloudformation("StopStackSetOperation", args)

"""
Returns the template body for a specified stack. You can get the template for running or deleted stacks. For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.   If the template does not exist, a ValidationError is returned.  
"""
GetTemplate() = cloudformation("GetTemplate")

"""
Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region.  You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use CreateStackInstances.  During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value. You can only update the parameter values that are specified in the stack set; to add or delete a parameter itself, use UpdateStackSet to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use UpdateStackSet to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using UpdateStackInstances.

Required Parameters:
StackSetName, Accounts, Regions
"""
UpdateStackInstances(args) = cloudformation("UpdateStackInstances", args)

"""
Returns summary information about stack sets that are associated with the user.
"""
ListStackSets() = cloudformation("ListStackSets")
