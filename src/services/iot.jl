include("../AWSCorePrototypeServices.jl")
using .Services: iot

"""
Deletes a defined mitigation action from your AWS account.

Required Parameters:
actionName
"""
DeleteMitigationAction(args) = iot("DELETE", "/mitigationactions/actions/{actionName}", args)

"""
Describes a job execution.

Required Parameters:
jobId, thingName
"""
DescribeJobExecution(args) = iot("GET", "/things/{thingName}/jobs/{jobId}", args)

"""
Associates a Device Defender security profile with a thing group or this account. Each thing group or account can have up to five security profiles associated with it.

Required Parameters:
securityProfileName, securityProfileTargetArn
"""
AttachSecurityProfile(args) = iot("PUT", "/security-profiles/{securityProfileName}/targets", args)

"""
List targets for the specified policy.

Required Parameters:
policyName
"""
ListTargetsForPolicy(args) = iot("POST", "/policy-targets/{policyName}", args)

"""
Lists the existing thing types.
"""
ListThingTypes() = iot("GET", "/thing-types")

"""
Transfers the specified certificate to the specified AWS account. You can cancel the transfer until it is acknowledged by the recipient. No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target. The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it. The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.

Required Parameters:
certificateId, targetAwsAccount
"""
TransferCertificate(args) = iot("PATCH", "/transfer-certificate/{certificateId}", args)

"""
Creates an X.509 certificate using the specified certificate signing request.  Note: The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.   Note: Reusing the same certificate signing request (CSR) results in a distinct certificate. You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs. Assuming a set of CSRs are located inside of the directory my-csr-directory: On Linux and OS X, the command is:   ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR. The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:   ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is: &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/ _} On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is: &gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"

Required Parameters:
certificateSigningRequest
"""
CreateCertificateFromCsr(args) = iot("POST", "/certificates", args)

"""
Gets information about the specified policy version.

Required Parameters:
policyName, policyVersionId
"""
GetPolicyVersion(args) = iot("GET", "/policies/{policyName}/version/{policyVersionId}", args)

"""
Deletes a dynamic thing group.

Required Parameters:
thingGroupName
"""
DeleteDynamicThingGroup(args) = iot("DELETE", "/dynamic-thing-groups/{thingGroupName}", args)

"""
Lists the rules for the specific topic.
"""
ListTopicRules() = iot("GET", "/rules")

"""
Returns information about a fleet provisioning template.

Required Parameters:
templateName
"""
DescribeProvisioningTemplate(args) = iot("GET", "/provisioning-templates/{templateName}", args)

"""
Lists the search indices.
"""
ListIndices() = iot("GET", "/indices")

"""
Describe a thing group.

Required Parameters:
thingGroupName
"""
DescribeThingGroup(args) = iot("GET", "/thing-groups/{thingGroupName}", args)

"""
Cancels a bulk thing provisioning task.

Required Parameters:
taskId
"""
StopThingRegistrationTask(args) = iot("PUT", "/thing-registration-tasks/{taskId}/cancel", args)

"""
Gets information about a mitigation action.

Required Parameters:
actionName
"""
DescribeMitigationAction(args) = iot("GET", "/mitigationactions/actions/{actionName}", args)

"""
List the thing groups to which the specified thing belongs.

Required Parameters:
thingName
"""
ListThingGroupsForThing(args) = iot("GET", "/things/{thingName}/thing-groups", args)

"""
Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.

Required Parameters:
authorizerName
"""
TestInvokeAuthorizer(args) = iot("POST", "/authorizer/{authorizerName}/test", args)

"""
Lists the authorizers registered in your account.
"""
ListAuthorizers() = iot("GET", "/authorizers/")

"""
Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an "InvalidRequestException" occurs.

Required Parameters:
taskId
"""
CancelAuditTask(args) = iot("PUT", "/audit/tasks/{taskId}/cancel", args)

"""
Creates a fleet provisioning template.

Required Parameters:
templateName, templateBody, provisioningRoleArn
"""
CreateProvisioningTemplate(args) = iot("POST", "/provisioning-templates", args)

"""
Lists the billing groups you have created.
"""
ListBillingGroups() = iot("GET", "/billing-groups")

"""
Lists all of your scheduled audits.
"""
ListScheduledAudits() = iot("GET", "/audit/scheduledaudits")

"""
Lists the targets (thing groups) associated with a given Device Defender security profile.

Required Parameters:
securityProfileName
"""
ListTargetsForSecurityProfile(args) = iot("GET", "/security-profiles/{securityProfileName}/targets", args)

"""
Creates a role alias.

Required Parameters:
roleAlias, roleArn
"""
CreateRoleAlias(args) = iot("POST", "/role-aliases/{roleAlias}", args)

"""
Creates a billing group.

Required Parameters:
billingGroupName
"""
CreateBillingGroup(args) = iot("POST", "/billing-groups/{billingGroupName}", args)

"""
Deletes a job and its related job executions. Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an error. Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a LimitExceededException will occur.

Required Parameters:
jobId
"""
DeleteJob(args) = iot("DELETE", "/jobs/{jobId}", args)

"""
Creates a bulk thing provisioning task.

Required Parameters:
templateBody, inputFileBucket, inputFileKey, roleArn
"""
StartThingRegistrationTask(args) = iot("POST", "/thing-registration-tasks", args)

"""
Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from PENDING_TRANSFER to INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates. This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.

Required Parameters:
certificateId
"""
RejectCertificateTransfer(args) = iot("PATCH", "/reject-certificate-transfer/{certificateId}", args)

"""
Attaches the specified principal to the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.

Required Parameters:
thingName, principal
"""
AttachThingPrincipal(args) = iot("PUT", "/things/{thingName}/principals", args)

"""
Gets information about a stream.

Required Parameters:
streamId
"""
DescribeStream(args) = iot("GET", "/streams/{streamId}", args)

"""
Adds a thing to a billing group.
"""
AddThingToBillingGroup() = iot("PUT", "/billing-groups/addThingToBillingGroup")

"""
Starts an on-demand Device Defender audit.

Required Parameters:
targetCheckNames
"""
StartOnDemandAuditTask(args) = iot("POST", "/audit/tasks", args)

"""
Lists the things in the specified group.

Required Parameters:
thingGroupName
"""
ListThingsInThingGroup(args) = iot("GET", "/thing-groups/{thingGroupName}/things", args)

"""
Lists the things you have added to the given billing group.

Required Parameters:
billingGroupName
"""
ListThingsInBillingGroup(args) = iot("GET", "/billing-groups/{billingGroupName}/things", args)

"""
Lists the versions of the specified policy and identifies the default version.

Required Parameters:
policyName
"""
ListPolicyVersions(args) = iot("GET", "/policies/{policyName}/version", args)

"""
Creates a dynamic thing group.

Required Parameters:
thingGroupName, queryString
"""
CreateDynamicThingGroup(args) = iot("POST", "/dynamic-thing-groups/{thingGroupName}", args)

"""
Describes a registered CA certificate.

Required Parameters:
certificateId
"""
DescribeCACertificate(args) = iot("GET", "/cacertificate/{caCertificateId}", args)

"""
Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.

Required Parameters:
caCertificate, verificationCertificate
"""
RegisterCACertificate(args) = iot("POST", "/cacertificate", args)

"""
Updates a role alias.

Required Parameters:
roleAlias
"""
UpdateRoleAlias(args) = iot("PUT", "/role-aliases/{roleAlias}", args)

"""
Deletes the specified thing. Returns successfully with no error if the deletion is successful or you specify a thing that doesn't exist.

Required Parameters:
thingName
"""
DeleteThing(args) = iot("DELETE", "/things/{thingName}", args)

"""
Deletes a fleet provisioning template version.

Required Parameters:
templateName, versionId
"""
DeleteProvisioningTemplateVersion(args) = iot("DELETE", "/provisioning-templates/{templateName}/versions/{versionId}", args)

"""
Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.

Required Parameters:
authInfos
"""
TestAuthorization(args) = iot("POST", "/test-authorization", args)

"""
Validates a Device Defender security profile behaviors specification.

Required Parameters:
behaviors
"""
ValidateSecurityProfileBehaviors(args) = iot("POST", "/security-profile-behaviors/validate", args)

"""
Lists all of the streams in your AWS account.
"""
ListStreams() = iot("GET", "/streams")

"""
Gets information about a topic rule destination.

Required Parameters:
arn
"""
GetTopicRuleDestination(args) = iot("GET", "/destinations/{arn+}", args)

"""
Removes the given thing from the billing group.
"""
RemoveThingFromBillingGroup() = iot("PUT", "/billing-groups/removeThingFromBillingGroup")

"""
Deletes an authorizer.

Required Parameters:
authorizerName
"""
DeleteAuthorizer(args) = iot("DELETE", "/authorizer/{authorizerName}", args)

"""
Lists the fleet provisioning templates in your AWS account.
"""
ListProvisioningTemplates() = iot("GET", "/provisioning-templates")

"""
Adds a thing to a thing group.
"""
AddThingToThingGroup() = iot("PUT", "/thing-groups/addThingToThingGroup")

"""
Updates a scheduled audit, including which checks are performed and how often the audit takes place.

Required Parameters:
scheduledAuditName
"""
UpdateScheduledAudit(args) = iot("PATCH", "/audit/scheduledaudits/{scheduledAuditName}", args)

"""
Updates the status of the specified certificate. This operation is idempotent. Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect. The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.

Required Parameters:
certificateId, newStatus
"""
UpdateCertificate(args) = iot("PUT", "/certificates/{certificateId}", args)

"""
Updates an authorizer.

Required Parameters:
authorizerName
"""
UpdateAuthorizer(args) = iot("PUT", "/authorizer/{authorizerName}", args)

"""
Creates a scheduled audit that is run at a specified time interval.

Required Parameters:
frequency, targetCheckNames, scheduledAuditName
"""
CreateScheduledAudit(args) = iot("POST", "/audit/scheduledaudits/{scheduledAuditName}", args)

"""
Lists the things associated with the specified principal. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities. 

Required Parameters:
principal
"""
ListPrincipalThings(args) = iot("GET", "/principals/things", args)

"""
Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.

Required Parameters:
taskId
"""
DescribeAuditMitigationActionsTask(args) = iot("GET", "/audit/mitigationactions/tasks/{taskId}", args)

"""
Lists the role aliases registered in your account.
"""
ListRoleAliases() = iot("GET", "/role-aliases")

"""
Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream.

Required Parameters:
streamId, files, roleArn
"""
CreateStream(args) = iot("POST", "/streams/{streamId}", args)

"""
Enables the rule.

Required Parameters:
ruleName
"""
EnableTopicRule(args) = iot("POST", "/rules/{ruleName}/enable", args)

"""
Disassociates a Device Defender security profile from a thing group or from this account.

Required Parameters:
securityProfileName, securityProfileTargetArn
"""
DetachSecurityProfile(args) = iot("DELETE", "/security-profiles/{securityProfileName}/targets", args)

"""
Returns the approximate count of unique values that match the query.

Required Parameters:
queryString
"""
GetCardinality(args) = iot("POST", "/indices/cardinality", args)

"""
Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
UpdateAccountAuditConfiguration() = iot("PATCH", "/audit/configuration")

"""
Deletes the specified domain configuration.  The domain configuration feature is in public preview and is subject to change. 

Required Parameters:
domainConfigurationName
"""
DeleteDomainConfiguration(args) = iot("DELETE", "/domainConfigurations/{domainConfigurationName}", args)

"""
Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key. You can also call CreateKeysAndCertificate over MQTT from a device, for more information, see Provisioning MQTT API.  Note This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.
"""
CreateKeysAndCertificate() = iot("POST", "/keys-and-certificate")

"""
Updates a Device Defender security profile.

Required Parameters:
securityProfileName
"""
UpdateSecurityProfile(args) = iot("PATCH", "/security-profiles/{securityProfileName}", args)

"""
Lists your things. Use the attributeName and attributeValue parameters to filter your things. For example, calling ListThings with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute Color with the value Red. 
"""
ListThings() = iot("GET", "/things")

"""
Updates a topic rule destination. You use this to change the status, endpoint URL, or confirmation URL of the destination.

Required Parameters:
arn, status
"""
UpdateTopicRuleDestination(args) = iot("PATCH", "/destinations", args)

"""
List the device certificates signed by the specified CA certificate.

Required Parameters:
caCertificateId
"""
ListCertificatesByCA(args) = iot("GET", "/certificates-by-ca/{caCertificateId}", args)

"""
Lists the job executions for the specified thing.

Required Parameters:
thingName
"""
ListJobExecutionsForThing(args) = iot("GET", "/things/{thingName}/jobs", args)

"""
Updates information about the billing group.

Required Parameters:
billingGroupName, billingGroupProperties
"""
UpdateBillingGroup(args) = iot("PATCH", "/billing-groups/{billingGroupName}", args)

"""
Lists the active violations for a given Device Defender security profile.
"""
ListActiveViolations() = iot("GET", "/active-violations")

"""
Deletes a registered CA certificate.

Required Parameters:
certificateId
"""
DeleteCACertificate(args) = iot("DELETE", "/cacertificate/{caCertificateId}", args)

"""
Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
DescribeAccountAuditConfiguration() = iot("GET", "/audit/configuration")

"""
Creates a provisioning claim.

Required Parameters:
templateName
"""
CreateProvisioningClaim(args) = iot("POST", "/provisioning-templates/{templateName}/provisioning-claim", args)

"""
Creates a job.

Required Parameters:
jobId, targets
"""
CreateJob(args) = iot("PUT", "/jobs/{jobId}", args)

"""
Deletes a topic rule destination.

Required Parameters:
arn
"""
DeleteTopicRuleDestination(args) = iot("DELETE", "/destinations/{arn+}", args)

"""
Lists logging levels.
"""
ListV2LoggingLevels() = iot("GET", "/v2LoggingLevel")

"""
Gets information about a scheduled audit.

Required Parameters:
scheduledAuditName
"""
DescribeScheduledAudit(args) = iot("GET", "/audit/scheduledaudits/{scheduledAuditName}", args)

"""
Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.
"""
GetEffectivePolicies() = iot("POST", "/effective-policies")

"""
Cancels a mitigation action task that is in progress. If the task is not in progress, an InvalidRequestException occurs.

Required Parameters:
taskId
"""
CancelAuditMitigationActionsTask(args) = iot("PUT", "/audit/mitigationactions/tasks/{taskId}/cancel", args)

"""
Gets information about the specified thing.

Required Parameters:
thingName
"""
DescribeThing(args) = iot("GET", "/things/{thingName}", args)

"""
Cancels a job.

Required Parameters:
jobId
"""
CancelJob(args) = iot("PUT", "/jobs/{jobId}/cancel", args)

"""
Lists the principals associated with the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.

Required Parameters:
thingName
"""
ListThingPrincipals(args) = iot("GET", "/things/{thingName}/principals", args)

"""
Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.

Required Parameters:
policyName, policyVersionId
"""
SetDefaultPolicyVersion(args) = iot("PATCH", "/policies/{policyName}/version/{policyVersionId}", args)

"""
Deletes the rule.

Required Parameters:
ruleName
"""
DeleteTopicRule(args) = iot("DELETE", "/rules/{ruleName}", args)

"""
Create a thing group.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 

Required Parameters:
thingGroupName
"""
CreateThingGroup(args) = iot("POST", "/thing-groups/{thingGroupName}", args)

"""
Gets the indexing configuration.
"""
GetIndexingConfiguration() = iot("GET", "/indexing/config")

"""
Describes a job.

Required Parameters:
jobId
"""
DescribeJob(args) = iot("GET", "/jobs/{jobId}", args)

"""
Lists jobs.
"""
ListJobs() = iot("GET", "/jobs")

"""
Lists the Device Defender audits that have been performed during a given time period.

Required Parameters:
startTime, endTime
"""
ListAuditTasks(args) = iot("GET", "/audit/tasks", args)

"""
Describes event configurations.
"""
DescribeEventConfigurations() = iot("GET", "/event-configurations")

"""
Attaches the specified policy to the specified principal (certificate or other credential).  Note: This API is deprecated. Please use AttachPolicy instead.

Required Parameters:
policyName, principal
"""
AttachPrincipalPolicy(args) = iot("PUT", "/principal-policies/{policyName}", args)

"""
Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in AmazonCognito Identity format.  Note: This API is deprecated. Please use ListAttachedPolicies instead.

Required Parameters:
principal
"""
ListPrincipalPolicies(args) = iot("GET", "/principal-policies", args)

"""
Updates an existing stream. The stream version will be incremented by one.

Required Parameters:
streamId
"""
UpdateStream(args) = iot("PUT", "/streams/{streamId}", args)

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iot("POST", "/tags", args)

"""
Lists all the topic rule destinations in your AWS account.
"""
ListTopicRuleDestinations() = iot("GET", "/destinations")

"""
Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use DeletePolicyVersion to delete an existing version before you create a new one. Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).

Required Parameters:
policyName, policyDocument
"""
CreatePolicyVersion(args) = iot("POST", "/policies/{policyName}/version", args)

"""
Gets a registration code used to register a CA certificate with AWS IoT.
"""
GetRegistrationCode() = iot("GET", "/registrationcode")

"""
Accepts a pending certificate transfer. The default state of the certificate is INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates.

Required Parameters:
certificateId
"""
AcceptCertificateTransfer(args) = iot("PATCH", "/accept-certificate-transfer/{certificateId}", args)

"""
Gets information about a Device Defender security profile.

Required Parameters:
securityProfileName
"""
DescribeSecurityProfile(args) = iot("GET", "/security-profiles/{securityProfileName}", args)

"""
Detaches a policy from the specified target.

Required Parameters:
policyName, target
"""
DetachPolicy(args) = iot("POST", "/target-policies/{policyName}", args)

"""
Removes the specified policy from the specified certificate.  Note: This API is deprecated. Please use DetachPolicy instead.

Required Parameters:
policyName, principal
"""
DetachPrincipalPolicy(args) = iot("DELETE", "/principal-policies/{policyName}", args)

"""
Gets information about a single audit finding. Properties include the reason for noncompliance, the severity of the issue, and when the audit that returned the finding was started.

Required Parameters:
findingId
"""
DescribeAuditFinding(args) = iot("GET", "/audit/findings/{findingId}", args)

"""
Provisions a thing in the device registry. RegisterThing calls other AWS IoT control plane APIs. These calls might exceed your account level  AWS IoT Throttling Limits and cause throttle errors. Please contact AWS Customer Support to raise your throttling limits if necessary.

Required Parameters:
templateBody
"""
RegisterThing(args) = iot("POST", "/things", args)

"""
Creates a domain configuration.  The domain configuration feature is in public preview and is subject to change. 

Required Parameters:
domainConfigurationName
"""
CreateDomainConfiguration(args) = iot("POST", "/domainConfigurations/{domainConfigurationName}", args)

"""
Lists OTA updates.
"""
ListOTAUpdates() = iot("GET", "/otaUpdates")

"""
Creates a new version of a fleet provisioning template.

Required Parameters:
templateName, templateBody
"""
CreateProvisioningTemplateVersion(args) = iot("POST", "/provisioning-templates/{templateName}/versions", args)

"""
Updates the definition for the specified mitigation action.

Required Parameters:
actionName
"""
UpdateMitigationAction(args) = iot("PATCH", "/mitigationactions/actions/{actionName}", args)

"""
Removes the given tags (metadata) from the resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iot("POST", "/untag", args)

"""
List bulk thing provisioning tasks.
"""
ListThingRegistrationTasks() = iot("GET", "/thing-registration-tasks")

"""
Starts a task that applies a set of mitigation actions to the specified target.

Required Parameters:
taskId, target, auditCheckToActionsMapping, clientRequestToken
"""
StartAuditMitigationActionsTask(args) = iot("POST", "/audit/mitigationactions/tasks/{taskId}", args)

"""
Lists the principals associated with the specified policy.  Note: This API is deprecated. Please use ListTargetsForPolicy instead.

Required Parameters:
policyName
"""
ListPolicyPrincipals(args) = iot("GET", "/policy-principals", args)

"""
Lists certificates that are being transferred but not yet accepted.
"""
ListOutgoingCertificates() = iot("GET", "/certificates-out-going")

"""
Associates a group with a continuous job. The following criteria must be met:    The job must have been created with the targetSelection field set to "CONTINUOUS".   The job status must currently be "IN_PROGRESS".   The total number of targets associated with a job must not exceed 100.  

Required Parameters:
targets, jobId
"""
AssociateTargetsWithJob(args) = iot("POST", "/jobs/{jobId}/targets", args)

"""
Restores the default settings for Device Defender audits for this account. Any configuration data you entered is deleted and all audit checks are reset to disabled. 
"""
DeleteAccountAuditConfiguration() = iot("DELETE", "/audit/configuration")

"""
Remove the specified thing from the specified group.
"""
RemoveThingFromThingGroup() = iot("PUT", "/thing-groups/removeThingFromThingGroup")

"""
Creates a new thing type.

Required Parameters:
thingTypeName
"""
CreateThingType(args) = iot("POST", "/thing-types/{thingTypeName}", args)

"""
Lists the certificates registered in your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCertificates() = iot("GET", "/certificates")

"""
Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use DeletePolicy. To find out which version of a policy is marked as the default version, use ListPolicyVersions.

Required Parameters:
policyName, policyVersionId
"""
DeletePolicyVersion(args) = iot("DELETE", "/policies/{policyName}/version/{policyVersionId}", args)

"""
Describes a search index.

Required Parameters:
indexName
"""
DescribeIndex(args) = iot("GET", "/indices/{indexName}", args)

"""
Information about the thing registration tasks.

Required Parameters:
taskId, reportType
"""
ListThingRegistrationTaskReports(args) = iot("GET", "/thing-registration-tasks/{taskId}/reports", args)

"""
Gets the status of audit mitigation action tasks that were executed.

Required Parameters:
taskId, findingId
"""
ListAuditMitigationActionsExecutions(args) = iot("GET", "/audit/mitigationactions/executions", args)

"""
Deletes a logging level.

Required Parameters:
targetType, targetName
"""
DeleteV2LoggingLevel(args) = iot("DELETE", "/v2LoggingLevel", args)

"""
Creates a thing record in the registry. If this call is made multiple times using the same thing name and configuration, the call will succeed. If this call is made with the same thing name but different configuration a ResourceAlreadyExistsException is thrown.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 

Required Parameters:
thingName
"""
CreateThing(args) = iot("POST", "/things/{thingName}", args)

"""
Returns the count, average, sum, minimum, maximum, sum of squares, variance, and standard deviation for the specified aggregated field. If the aggregation field is of type String, only the count statistic is returned.

Required Parameters:
queryString
"""
GetStatistics(args) = iot("POST", "/indices/statistics", args)

"""
Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)
"""
ListAuditFindings() = iot("POST", "/audit/findings")

"""
Cancels the execution of a job for a given thing.

Required Parameters:
jobId, thingName
"""
CancelJobExecution(args) = iot("PUT", "/things/{thingName}/jobs/{jobId}/cancel", args)

"""
Delete an OTA update.

Required Parameters:
otaUpdateId
"""
DeleteOTAUpdate(args) = iot("DELETE", "/otaUpdates/{otaUpdateId}", args)

"""
Lists the policies attached to the specified thing group.

Required Parameters:
target
"""
ListAttachedPolicies(args) = iot("POST", "/attached-policies/{target}", args)

"""
Creates an authorizer.

Required Parameters:
authorizerName, authorizerFunctionArn
"""
CreateAuthorizer(args) = iot("POST", "/authorizer/{authorizerName}", args)

"""
Gets an OTA update.

Required Parameters:
otaUpdateId
"""
GetOTAUpdate(args) = iot("GET", "/otaUpdates/{otaUpdateId}", args)

"""
Update a thing group.

Required Parameters:
thingGroupName, thingGroupProperties
"""
UpdateThingGroup(args) = iot("PATCH", "/thing-groups/{thingGroupName}", args)

"""
Gets a list of all mitigation actions that match the specified filter criteria.
"""
ListMitigationActions() = iot("GET", "/mitigationactions/actions")

"""
Disables the rule.

Required Parameters:
ruleName
"""
DisableTopicRule(args) = iot("POST", "/rules/{ruleName}/disable", args)

"""
Updates the groups to which the thing belongs.
"""
UpdateThingGroupsForThing() = iot("PUT", "/thing-groups/updateThingGroupsForThing")

"""
Deletes a fleet provisioning template.

Required Parameters:
templateName
"""
DeleteProvisioningTemplate(args) = iot("DELETE", "/provisioning-templates/{templateName}", args)

"""
Describes a bulk thing provisioning task.

Required Parameters:
taskId
"""
DescribeThingRegistrationTask(args) = iot("GET", "/thing-registration-tasks/{taskId}", args)

"""
Gets a list of domain configurations for the user. This list is sorted alphabetically by domain configuration name.  The domain configuration feature is in public preview and is subject to change. 
"""
ListDomainConfigurations() = iot("GET", "/domainConfigurations")

"""
Detaches the specified principal from the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.  This call is asynchronous. It might take several seconds for the detachment to propagate. 

Required Parameters:
thingName, principal
"""
DetachThingPrincipal(args) = iot("DELETE", "/things/{thingName}/principals", args)

"""
Returns information about a billing group.

Required Parameters:
billingGroupName
"""
DescribeBillingGroup(args) = iot("GET", "/billing-groups/{billingGroupName}", args)

"""
Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.

Required Parameters:
certificatePem
"""
RegisterCertificate(args) = iot("POST", "/certificate/register", args)

"""
Returns information about a fleet provisioning template version.

Required Parameters:
templateName, versionId
"""
DescribeProvisioningTemplateVersion(args) = iot("GET", "/provisioning-templates/{templateName}/versions/{versionId}", args)

"""
Groups the aggregated values that match the query into percentile groupings. The default percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own when you call GetPercentiles. This function returns a value for each percentile group specified (or the default percentile groupings). The percentile group "1" contains the aggregated field value that occurs in approximately one percent of the values that match the query. The percentile group "5" contains the aggregated field value that occurs in approximately five percent of the values that match the query, and so on. The result is an approximation, the more values that match the query, the more accurate the percentile values.

Required Parameters:
queryString
"""
GetPercentiles(args) = iot("POST", "/indices/percentiles", args)

"""
Deletes a stream.

Required Parameters:
streamId
"""
DeleteStream(args) = iot("DELETE", "/streams/{streamId}", args)

"""
Deletes a job execution.

Required Parameters:
jobId, thingName, executionNumber
"""
DeleteJobExecution(args) = iot("DELETE", "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}", args)

"""
Updates the event configurations.
"""
UpdateEventConfigurations() = iot("PATCH", "/event-configurations")

"""
Describes the default authorizer.
"""
DescribeDefaultAuthorizer() = iot("GET", "/default-authorizer")

"""
Gets information about the specified policy with the policy document of the default version.

Required Parameters:
policyName
"""
GetPolicy(args) = iot("GET", "/policies/{policyName}", args)

"""
Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior, or thing (device).

Required Parameters:
startTime, endTime
"""
ListViolationEvents(args) = iot("GET", "/violation-events", args)

"""
Updates values stored in the domain configuration. Domain configurations for default endpoints can't be updated.  The domain configuration feature is in public preview and is subject to change. 

Required Parameters:
domainConfigurationName
"""
UpdateDomainConfiguration(args) = iot("PUT", "/domainConfigurations/{domainConfigurationName}", args)

"""
Updates the data for a thing.

Required Parameters:
thingName
"""
UpdateThing(args) = iot("PATCH", "/things/{thingName}", args)

"""
Gets the logging options. NOTE: use of this command is not recommended. Use GetV2LoggingOptions instead.
"""
GetLoggingOptions() = iot("GET", "/loggingOptions")

"""
Returns a unique endpoint specific to the AWS account making the call.
"""
DescribeEndpoint() = iot("GET", "/endpoint")

"""
Deletes a scheduled audit.

Required Parameters:
scheduledAuditName
"""
DeleteScheduledAudit(args) = iot("DELETE", "/audit/scheduledaudits/{scheduledAuditName}", args)

"""
Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.

Required Parameters:
ruleName, topicRulePayload
"""
ReplaceTopicRule(args) = iot("PATCH", "/rules/{ruleName}", args)

"""
Gets information about the specified thing type.

Required Parameters:
thingTypeName
"""
DescribeThingType(args) = iot("GET", "/thing-types/{thingTypeName}", args)

"""
A list of fleet provisioning template versions.

Required Parameters:
templateName
"""
ListProvisioningTemplateVersions(args) = iot("GET", "/provisioning-templates/{templateName}/versions", args)

"""
Sets the logging options. NOTE: use of this command is not recommended. Use SetV2LoggingOptions instead.

Required Parameters:
loggingOptionsPayload
"""
SetLoggingOptions(args) = iot("POST", "/loggingOptions", args)

"""
Defines an action that can be applied to audit findings by using StartAuditMitigationActionsTask. Each mitigation action can apply only one type of change.

Required Parameters:
actionName, roleArn, actionParams
"""
CreateMitigationAction(args) = iot("POST", "/mitigationactions/actions/{actionName}", args)

"""
Updates supported fields of the specified job.

Required Parameters:
jobId
"""
UpdateJob(args) = iot("PATCH", "/jobs/{jobId}", args)

"""
Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.

Required Parameters:
ruleName, topicRulePayload
"""
CreateTopicRule(args) = iot("POST", "/rules/{ruleName}", args)

"""
Creates an AWS IoT OTAUpdate on a target group of things or groups.

Required Parameters:
otaUpdateId, targets, files, roleArn
"""
CreateOTAUpdate(args) = iot("POST", "/otaUpdates/{otaUpdateId}", args)

"""
Updates a fleet provisioning template.

Required Parameters:
templateName
"""
UpdateProvisioningTemplate(args) = iot("PATCH", "/provisioning-templates/{templateName}", args)

"""
Sets the logging options for the V2 logging service.
"""
SetV2LoggingOptions() = iot("POST", "/v2LoggingOptions")

"""
Deletes a CA certificate registration code.
"""
DeleteRegistrationCode() = iot("DELETE", "/registrationcode")

"""
Creates a topic rule destination. The destination must be confirmed prior to use.

Required Parameters:
destinationConfiguration
"""
CreateTopicRuleDestination(args) = iot("POST", "/destinations", args)

"""
Lists the CA certificates registered for your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCACertificates() = iot("GET", "/cacertificates")

"""
Gets information about the specified certificate.

Required Parameters:
certificateId
"""
DescribeCertificate(args) = iot("GET", "/certificates/{certificateId}", args)

"""
Deletes the specified policy. A policy cannot be deleted if it has non-default versions or it is attached to any certificate. To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy. When a policy is deleted using DeletePolicy, its default version is deleted with it.

Required Parameters:
policyName
"""
DeletePolicy(args) = iot("DELETE", "/policies/{policyName}", args)

"""
Gets summary information about a domain configuration.  The domain configuration feature is in public preview and is subject to change. 

Required Parameters:
domainConfigurationName
"""
DescribeDomainConfiguration(args) = iot("GET", "/domainConfigurations/{domainConfigurationName}", args)

"""
Gets information about a Device Defender audit.

Required Parameters:
taskId
"""
DescribeAuditTask(args) = iot("GET", "/audit/tasks/{taskId}", args)

"""
Deprecates a thing type. You can not associate new things with deprecated thing type.

Required Parameters:
thingTypeName
"""
DeprecateThingType(args) = iot("POST", "/thing-types/{thingTypeName}/deprecate", args)

"""
Deletes a Device Defender security profile.

Required Parameters:
securityProfileName
"""
DeleteSecurityProfile(args) = iot("DELETE", "/security-profiles/{securityProfileName}", args)

"""
Updates a dynamic thing group.

Required Parameters:
thingGroupName, thingGroupProperties
"""
UpdateDynamicThingGroup(args) = iot("PATCH", "/dynamic-thing-groups/{thingGroupName}", args)

"""
Lists the tags (metadata) you have assigned to the resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iot("GET", "/tags", args)

"""
Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
"""
ListSecurityProfiles() = iot("GET", "/security-profiles")

"""
Gets a list of audit mitigation action tasks that match the specified filters.

Required Parameters:
startTime, endTime
"""
ListAuditMitigationActionsTasks(args) = iot("GET", "/audit/mitigationactions/tasks", args)

"""
Deletes the specified certificate. A certificate cannot be deleted if it has a policy or IoT thing attached to it or if its status is set to ACTIVE. To delete a certificate, first use the DetachPrincipalPolicy API to detach all policies. Next, use the UpdateCertificate API to set the certificate to the INACTIVE status.

Required Parameters:
certificateId
"""
DeleteCertificate(args) = iot("DELETE", "/certificates/{certificateId}", args)

"""
Lists the job executions for a job.

Required Parameters:
jobId
"""
ListJobExecutionsForJob(args) = iot("GET", "/jobs/{jobId}/things", args)

"""
Updates a registered CA certificate.

Required Parameters:
certificateId
"""
UpdateCACertificate(args) = iot("PUT", "/cacertificate/{caCertificateId}", args)

"""
Updates the search configuration.
"""
UpdateIndexingConfiguration() = iot("POST", "/indexing/config")

"""
List the thing groups in your account.
"""
ListThingGroups() = iot("GET", "/thing-groups")

"""
Deletes a thing group.

Required Parameters:
thingGroupName
"""
DeleteThingGroup(args) = iot("DELETE", "/thing-groups/{thingGroupName}", args)

"""
Clears the default authorizer.
"""
ClearDefaultAuthorizer() = iot("DELETE", "/default-authorizer")

"""
Attaches a policy to the specified target.

Required Parameters:
policyName, target
"""
AttachPolicy(args) = iot("PUT", "/target-policies/{policyName}", args)

"""
Gets information about the rule.

Required Parameters:
ruleName
"""
GetTopicRule(args) = iot("GET", "/rules/{ruleName}", args)

"""
Describes an authorizer.

Required Parameters:
authorizerName
"""
DescribeAuthorizer(args) = iot("GET", "/authorizer/{authorizerName}", args)

"""
Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.

Required Parameters:
authorizerName
"""
SetDefaultAuthorizer(args) = iot("POST", "/default-authorizer", args)

"""
Creates a Device Defender security profile.

Required Parameters:
securityProfileName
"""
CreateSecurityProfile(args) = iot("POST", "/security-profiles/{securityProfileName}", args)

"""
Lists your policies.
"""
ListPolicies() = iot("GET", "/policies")

"""
Lists the Device Defender security profiles attached to a target (thing group).

Required Parameters:
securityProfileTargetArn
"""
ListSecurityProfilesForTarget(args) = iot("GET", "/security-profiles-for-target", args)

"""
Creates an AWS IoT policy. The created policy is the default version for the policy. This operation creates a policy version with a version identifier of 1 and sets 1 as the policy's default version.

Required Parameters:
policyName, policyDocument
"""
CreatePolicy(args) = iot("POST", "/policies/{policyName}", args)

"""
Deletes the billing group.

Required Parameters:
billingGroupName
"""
DeleteBillingGroup(args) = iot("DELETE", "/billing-groups/{billingGroupName}", args)

"""
Gets the fine grained logging options.
"""
GetV2LoggingOptions() = iot("GET", "/v2LoggingOptions")

"""
Deletes the specified thing type. You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling DeprecateThingType, then remove any associated things by calling UpdateThing to change the thing type on any associated thing, and finally use DeleteThingType to delete the thing type.

Required Parameters:
thingTypeName
"""
DeleteThingType(args) = iot("DELETE", "/thing-types/{thingTypeName}", args)

"""
Sets the logging level.

Required Parameters:
logTarget, logLevel
"""
SetV2LoggingLevel(args) = iot("POST", "/v2LoggingLevel", args)

"""
Confirms a topic rule destination. When you create a rule requiring a destination, AWS IoT sends a confirmation message to the endpoint or base address you specify. The message includes a token which you pass back when calling ConfirmTopicRuleDestination to confirm that you own or have access to the endpoint.

Required Parameters:
confirmationToken
"""
ConfirmTopicRuleDestination(args) = iot("GET", "/confirmdestination/{confirmationToken+}", args)

"""
The query search index.

Required Parameters:
queryString
"""
SearchIndex(args) = iot("POST", "/indices/search", args)

"""
Cancels a pending transfer for the specified certificate.  Note Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use RejectCertificateTransfer instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled. After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.

Required Parameters:
certificateId
"""
CancelCertificateTransfer(args) = iot("PATCH", "/cancel-certificate-transfer/{certificateId}", args)

"""
Deletes a role alias

Required Parameters:
roleAlias
"""
DeleteRoleAlias(args) = iot("DELETE", "/role-aliases/{roleAlias}", args)

"""
Describes a role alias.

Required Parameters:
roleAlias
"""
DescribeRoleAlias(args) = iot("GET", "/role-aliases/{roleAlias}", args)

"""
Gets a job document.

Required Parameters:
jobId
"""
GetJobDocument(args) = iot("GET", "/jobs/{jobId}/job-document", args)
