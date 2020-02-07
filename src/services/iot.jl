include("../AWSCorePrototypeServices.jl")
using .Services: iot

"""
Deletes a defined mitigation action from your AWS account.
"""
DeleteMitigationAction(actionName) = iot("DELETE", "/mitigationactions/actions/$actionName")
DeleteMitigationAction(actionName, args) = iot("DELETE", "/mitigationactions/actions/$actionName", args)
DeleteMitigationAction(a...; b...) = DeleteMitigationAction(a..., b)

"""
Describes a job execution.
"""
DescribeJobExecution(jobId, thingName) = iot("GET", "/things/$thingName/jobs/$jobId")
DescribeJobExecution(jobId, thingName, args) = iot("GET", "/things/$thingName/jobs/$jobId", args)
DescribeJobExecution(a...; b...) = DescribeJobExecution(a..., b)

"""
Associates a Device Defender security profile with a thing group or this account. Each thing group or account can have up to five security profiles associated with it.
"""
AttachSecurityProfile(securityProfileName, securityProfileTargetArn) = iot("PUT", "/security-profiles/$securityProfileName/targets")
AttachSecurityProfile(securityProfileName, securityProfileTargetArn, args) = iot("PUT", "/security-profiles/$securityProfileName/targets", args)
AttachSecurityProfile(a...; b...) = AttachSecurityProfile(a..., b)

"""
List targets for the specified policy.
"""
ListTargetsForPolicy(policyName) = iot("POST", "/policy-targets/$policyName")
ListTargetsForPolicy(policyName, args) = iot("POST", "/policy-targets/$policyName", args)
ListTargetsForPolicy(a...; b...) = ListTargetsForPolicy(a..., b)

"""
Lists the existing thing types.
"""
ListThingTypes() = iot("GET", "/thing-types")
ListThingTypes(, args) = iot("GET", "/thing-types", args)
ListThingTypes(a...; b...) = ListThingTypes(a..., b)

"""
Transfers the specified certificate to the specified AWS account. You can cancel the transfer until it is acknowledged by the recipient. No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target. The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it. The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.
"""
TransferCertificate(certificateId, targetAwsAccount) = iot("PATCH", "/transfer-certificate/$certificateId")
TransferCertificate(certificateId, targetAwsAccount, args) = iot("PATCH", "/transfer-certificate/$certificateId", args)
TransferCertificate(a...; b...) = TransferCertificate(a..., b)

"""
Creates an X.509 certificate using the specified certificate signing request.  Note: The CSR must include a public key that is either an RSA key with a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.   Note: Reusing the same certificate signing request (CSR) results in a distinct certificate. You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs. Assuming a set of CSRs are located inside of the directory my-csr-directory: On Linux and OS X, the command is:   ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR. The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process:   ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is: &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/ _} On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is: &gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"
"""
CreateCertificateFromCsr(certificateSigningRequest) = iot("POST", "/certificates")
CreateCertificateFromCsr(certificateSigningRequest, args) = iot("POST", "/certificates", args)
CreateCertificateFromCsr(a...; b...) = CreateCertificateFromCsr(a..., b)

"""
Gets information about the specified policy version.
"""
GetPolicyVersion(policyName, policyVersionId) = iot("GET", "/policies/$policyName/version/$policyVersionId")
GetPolicyVersion(policyName, policyVersionId, args) = iot("GET", "/policies/$policyName/version/$policyVersionId", args)
GetPolicyVersion(a...; b...) = GetPolicyVersion(a..., b)

"""
Deletes a dynamic thing group.
"""
DeleteDynamicThingGroup(thingGroupName) = iot("DELETE", "/dynamic-thing-groups/$thingGroupName")
DeleteDynamicThingGroup(thingGroupName, args) = iot("DELETE", "/dynamic-thing-groups/$thingGroupName", args)
DeleteDynamicThingGroup(a...; b...) = DeleteDynamicThingGroup(a..., b)

"""
Lists the rules for the specific topic.
"""
ListTopicRules() = iot("GET", "/rules")
ListTopicRules(, args) = iot("GET", "/rules", args)
ListTopicRules(a...; b...) = ListTopicRules(a..., b)

"""
Returns information about a fleet provisioning template.
"""
DescribeProvisioningTemplate(templateName) = iot("GET", "/provisioning-templates/$templateName")
DescribeProvisioningTemplate(templateName, args) = iot("GET", "/provisioning-templates/$templateName", args)
DescribeProvisioningTemplate(a...; b...) = DescribeProvisioningTemplate(a..., b)

"""
Lists the search indices.
"""
ListIndices() = iot("GET", "/indices")
ListIndices(, args) = iot("GET", "/indices", args)
ListIndices(a...; b...) = ListIndices(a..., b)

"""
Describe a thing group.
"""
DescribeThingGroup(thingGroupName) = iot("GET", "/thing-groups/$thingGroupName")
DescribeThingGroup(thingGroupName, args) = iot("GET", "/thing-groups/$thingGroupName", args)
DescribeThingGroup(a...; b...) = DescribeThingGroup(a..., b)

"""
Cancels a bulk thing provisioning task.
"""
StopThingRegistrationTask(taskId) = iot("PUT", "/thing-registration-tasks/$taskId/cancel")
StopThingRegistrationTask(taskId, args) = iot("PUT", "/thing-registration-tasks/$taskId/cancel", args)
StopThingRegistrationTask(a...; b...) = StopThingRegistrationTask(a..., b)

"""
Gets information about a mitigation action.
"""
DescribeMitigationAction(actionName) = iot("GET", "/mitigationactions/actions/$actionName")
DescribeMitigationAction(actionName, args) = iot("GET", "/mitigationactions/actions/$actionName", args)
DescribeMitigationAction(a...; b...) = DescribeMitigationAction(a..., b)

"""
List the thing groups to which the specified thing belongs.
"""
ListThingGroupsForThing(thingName) = iot("GET", "/things/$thingName/thing-groups")
ListThingGroupsForThing(thingName, args) = iot("GET", "/things/$thingName/thing-groups", args)
ListThingGroupsForThing(a...; b...) = ListThingGroupsForThing(a..., b)

"""
Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.
"""
TestInvokeAuthorizer(authorizerName) = iot("POST", "/authorizer/$authorizerName/test")
TestInvokeAuthorizer(authorizerName, args) = iot("POST", "/authorizer/$authorizerName/test", args)
TestInvokeAuthorizer(a...; b...) = TestInvokeAuthorizer(a..., b)

"""
Lists the authorizers registered in your account.
"""
ListAuthorizers() = iot("GET", "/authorizers/")
ListAuthorizers(, args) = iot("GET", "/authorizers/", args)
ListAuthorizers(a...; b...) = ListAuthorizers(a..., b)

"""
Cancels an audit that is in progress. The audit can be either scheduled or on-demand. If the audit is not in progress, an "InvalidRequestException" occurs.
"""
CancelAuditTask(taskId) = iot("PUT", "/audit/tasks/$taskId/cancel")
CancelAuditTask(taskId, args) = iot("PUT", "/audit/tasks/$taskId/cancel", args)
CancelAuditTask(a...; b...) = CancelAuditTask(a..., b)

"""
Creates a fleet provisioning template.
"""
CreateProvisioningTemplate(templateName, templateBody, provisioningRoleArn) = iot("POST", "/provisioning-templates")
CreateProvisioningTemplate(templateName, templateBody, provisioningRoleArn, args) = iot("POST", "/provisioning-templates", args)
CreateProvisioningTemplate(a...; b...) = CreateProvisioningTemplate(a..., b)

"""
Lists the billing groups you have created.
"""
ListBillingGroups() = iot("GET", "/billing-groups")
ListBillingGroups(, args) = iot("GET", "/billing-groups", args)
ListBillingGroups(a...; b...) = ListBillingGroups(a..., b)

"""
Lists all of your scheduled audits.
"""
ListScheduledAudits() = iot("GET", "/audit/scheduledaudits")
ListScheduledAudits(, args) = iot("GET", "/audit/scheduledaudits", args)
ListScheduledAudits(a...; b...) = ListScheduledAudits(a..., b)

"""
Lists the targets (thing groups) associated with a given Device Defender security profile.
"""
ListTargetsForSecurityProfile(securityProfileName) = iot("GET", "/security-profiles/$securityProfileName/targets")
ListTargetsForSecurityProfile(securityProfileName, args) = iot("GET", "/security-profiles/$securityProfileName/targets", args)
ListTargetsForSecurityProfile(a...; b...) = ListTargetsForSecurityProfile(a..., b)

"""
Creates a role alias.
"""
CreateRoleAlias(roleAlias, roleArn) = iot("POST", "/role-aliases/$roleAlias")
CreateRoleAlias(roleAlias, roleArn, args) = iot("POST", "/role-aliases/$roleAlias", args)
CreateRoleAlias(a...; b...) = CreateRoleAlias(a..., b)

"""
Creates a billing group.
"""
CreateBillingGroup(billingGroupName) = iot("POST", "/billing-groups/$billingGroupName")
CreateBillingGroup(billingGroupName, args) = iot("POST", "/billing-groups/$billingGroupName", args)
CreateBillingGroup(a...; b...) = CreateBillingGroup(a..., b)

"""
Deletes a job and its related job executions. Deleting a job may take time, depending on the number of job executions created for the job and various other factors. While the job is being deleted, the status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an error. Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a LimitExceededException will occur.
"""
DeleteJob(jobId) = iot("DELETE", "/jobs/$jobId")
DeleteJob(jobId, args) = iot("DELETE", "/jobs/$jobId", args)
DeleteJob(a...; b...) = DeleteJob(a..., b)

"""
Creates a bulk thing provisioning task.
"""
StartThingRegistrationTask(templateBody, inputFileBucket, inputFileKey, roleArn) = iot("POST", "/thing-registration-tasks")
StartThingRegistrationTask(templateBody, inputFileBucket, inputFileKey, roleArn, args) = iot("POST", "/thing-registration-tasks", args)
StartThingRegistrationTask(a...; b...) = StartThingRegistrationTask(a..., b)

"""
Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from PENDING_TRANSFER to INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates. This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.
"""
RejectCertificateTransfer(certificateId) = iot("PATCH", "/reject-certificate-transfer/$certificateId")
RejectCertificateTransfer(certificateId, args) = iot("PATCH", "/reject-certificate-transfer/$certificateId", args)
RejectCertificateTransfer(a...; b...) = RejectCertificateTransfer(a..., b)

"""
Attaches the specified principal to the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
"""
AttachThingPrincipal(thingName, principal) = iot("PUT", "/things/$thingName/principals")
AttachThingPrincipal(thingName, principal, args) = iot("PUT", "/things/$thingName/principals", args)
AttachThingPrincipal(a...; b...) = AttachThingPrincipal(a..., b)

"""
Gets information about a stream.
"""
DescribeStream(streamId) = iot("GET", "/streams/$streamId")
DescribeStream(streamId, args) = iot("GET", "/streams/$streamId", args)
DescribeStream(a...; b...) = DescribeStream(a..., b)

"""
Adds a thing to a billing group.
"""
AddThingToBillingGroup() = iot("PUT", "/billing-groups/addThingToBillingGroup")
AddThingToBillingGroup(, args) = iot("PUT", "/billing-groups/addThingToBillingGroup", args)
AddThingToBillingGroup(a...; b...) = AddThingToBillingGroup(a..., b)

"""
Starts an on-demand Device Defender audit.
"""
StartOnDemandAuditTask(targetCheckNames) = iot("POST", "/audit/tasks")
StartOnDemandAuditTask(targetCheckNames, args) = iot("POST", "/audit/tasks", args)
StartOnDemandAuditTask(a...; b...) = StartOnDemandAuditTask(a..., b)

"""
Lists the things in the specified group.
"""
ListThingsInThingGroup(thingGroupName) = iot("GET", "/thing-groups/$thingGroupName/things")
ListThingsInThingGroup(thingGroupName, args) = iot("GET", "/thing-groups/$thingGroupName/things", args)
ListThingsInThingGroup(a...; b...) = ListThingsInThingGroup(a..., b)

"""
Lists the things you have added to the given billing group.
"""
ListThingsInBillingGroup(billingGroupName) = iot("GET", "/billing-groups/$billingGroupName/things")
ListThingsInBillingGroup(billingGroupName, args) = iot("GET", "/billing-groups/$billingGroupName/things", args)
ListThingsInBillingGroup(a...; b...) = ListThingsInBillingGroup(a..., b)

"""
Lists the versions of the specified policy and identifies the default version.
"""
ListPolicyVersions(policyName) = iot("GET", "/policies/$policyName/version")
ListPolicyVersions(policyName, args) = iot("GET", "/policies/$policyName/version", args)
ListPolicyVersions(a...; b...) = ListPolicyVersions(a..., b)

"""
Creates a dynamic thing group.
"""
CreateDynamicThingGroup(thingGroupName, queryString) = iot("POST", "/dynamic-thing-groups/$thingGroupName")
CreateDynamicThingGroup(thingGroupName, queryString, args) = iot("POST", "/dynamic-thing-groups/$thingGroupName", args)
CreateDynamicThingGroup(a...; b...) = CreateDynamicThingGroup(a..., b)

"""
Describes a registered CA certificate.
"""
DescribeCACertificate(certificateId) = iot("GET", "/cacertificate/$caCertificateId")
DescribeCACertificate(certificateId, args) = iot("GET", "/cacertificate/$caCertificateId", args)
DescribeCACertificate(a...; b...) = DescribeCACertificate(a..., b)

"""
Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.
"""
RegisterCACertificate(caCertificate, verificationCertificate) = iot("POST", "/cacertificate")
RegisterCACertificate(caCertificate, verificationCertificate, args) = iot("POST", "/cacertificate", args)
RegisterCACertificate(a...; b...) = RegisterCACertificate(a..., b)

"""
Updates a role alias.
"""
UpdateRoleAlias(roleAlias) = iot("PUT", "/role-aliases/$roleAlias")
UpdateRoleAlias(roleAlias, args) = iot("PUT", "/role-aliases/$roleAlias", args)
UpdateRoleAlias(a...; b...) = UpdateRoleAlias(a..., b)

"""
Deletes the specified thing. Returns successfully with no error if the deletion is successful or you specify a thing that doesn't exist.
"""
DeleteThing(thingName) = iot("DELETE", "/things/$thingName")
DeleteThing(thingName, args) = iot("DELETE", "/things/$thingName", args)
DeleteThing(a...; b...) = DeleteThing(a..., b)

"""
Deletes a fleet provisioning template version.
"""
DeleteProvisioningTemplateVersion(templateName, versionId) = iot("DELETE", "/provisioning-templates/$templateName/versions/$versionId")
DeleteProvisioningTemplateVersion(templateName, versionId, args) = iot("DELETE", "/provisioning-templates/$templateName/versions/$versionId", args)
DeleteProvisioningTemplateVersion(a...; b...) = DeleteProvisioningTemplateVersion(a..., b)

"""
Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.
"""
TestAuthorization(authInfos) = iot("POST", "/test-authorization")
TestAuthorization(authInfos, args) = iot("POST", "/test-authorization", args)
TestAuthorization(a...; b...) = TestAuthorization(a..., b)

"""
Validates a Device Defender security profile behaviors specification.
"""
ValidateSecurityProfileBehaviors(behaviors) = iot("POST", "/security-profile-behaviors/validate")
ValidateSecurityProfileBehaviors(behaviors, args) = iot("POST", "/security-profile-behaviors/validate", args)
ValidateSecurityProfileBehaviors(a...; b...) = ValidateSecurityProfileBehaviors(a..., b)

"""
Lists all of the streams in your AWS account.
"""
ListStreams() = iot("GET", "/streams")
ListStreams(, args) = iot("GET", "/streams", args)
ListStreams(a...; b...) = ListStreams(a..., b)

"""
Gets information about a topic rule destination.
"""
GetTopicRuleDestination(arn) = iot("GET", "/destinations/$arn+")
GetTopicRuleDestination(arn, args) = iot("GET", "/destinations/$arn+", args)
GetTopicRuleDestination(a...; b...) = GetTopicRuleDestination(a..., b)

"""
Removes the given thing from the billing group.
"""
RemoveThingFromBillingGroup() = iot("PUT", "/billing-groups/removeThingFromBillingGroup")
RemoveThingFromBillingGroup(, args) = iot("PUT", "/billing-groups/removeThingFromBillingGroup", args)
RemoveThingFromBillingGroup(a...; b...) = RemoveThingFromBillingGroup(a..., b)

"""
Deletes an authorizer.
"""
DeleteAuthorizer(authorizerName) = iot("DELETE", "/authorizer/$authorizerName")
DeleteAuthorizer(authorizerName, args) = iot("DELETE", "/authorizer/$authorizerName", args)
DeleteAuthorizer(a...; b...) = DeleteAuthorizer(a..., b)

"""
Lists the fleet provisioning templates in your AWS account.
"""
ListProvisioningTemplates() = iot("GET", "/provisioning-templates")
ListProvisioningTemplates(, args) = iot("GET", "/provisioning-templates", args)
ListProvisioningTemplates(a...; b...) = ListProvisioningTemplates(a..., b)

"""
Adds a thing to a thing group.
"""
AddThingToThingGroup() = iot("PUT", "/thing-groups/addThingToThingGroup")
AddThingToThingGroup(, args) = iot("PUT", "/thing-groups/addThingToThingGroup", args)
AddThingToThingGroup(a...; b...) = AddThingToThingGroup(a..., b)

"""
Updates a scheduled audit, including which checks are performed and how often the audit takes place.
"""
UpdateScheduledAudit(scheduledAuditName) = iot("PATCH", "/audit/scheduledaudits/$scheduledAuditName")
UpdateScheduledAudit(scheduledAuditName, args) = iot("PATCH", "/audit/scheduledaudits/$scheduledAuditName", args)
UpdateScheduledAudit(a...; b...) = UpdateScheduledAudit(a..., b)

"""
Updates the status of the specified certificate. This operation is idempotent. Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect. The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.
"""
UpdateCertificate(certificateId, newStatus) = iot("PUT", "/certificates/$certificateId")
UpdateCertificate(certificateId, newStatus, args) = iot("PUT", "/certificates/$certificateId", args)
UpdateCertificate(a...; b...) = UpdateCertificate(a..., b)

"""
Updates an authorizer.
"""
UpdateAuthorizer(authorizerName) = iot("PUT", "/authorizer/$authorizerName")
UpdateAuthorizer(authorizerName, args) = iot("PUT", "/authorizer/$authorizerName", args)
UpdateAuthorizer(a...; b...) = UpdateAuthorizer(a..., b)

"""
Creates a scheduled audit that is run at a specified time interval.
"""
CreateScheduledAudit(frequency, targetCheckNames, scheduledAuditName) = iot("POST", "/audit/scheduledaudits/$scheduledAuditName")
CreateScheduledAudit(frequency, targetCheckNames, scheduledAuditName, args) = iot("POST", "/audit/scheduledaudits/$scheduledAuditName", args)
CreateScheduledAudit(a...; b...) = CreateScheduledAudit(a..., b)

"""
Lists the things associated with the specified principal. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities. 
"""
ListPrincipalThings(principal) = iot("GET", "/principals/things")
ListPrincipalThings(principal, args) = iot("GET", "/principals/things", args)
ListPrincipalThings(a...; b...) = ListPrincipalThings(a..., b)

"""
Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.
"""
DescribeAuditMitigationActionsTask(taskId) = iot("GET", "/audit/mitigationactions/tasks/$taskId")
DescribeAuditMitigationActionsTask(taskId, args) = iot("GET", "/audit/mitigationactions/tasks/$taskId", args)
DescribeAuditMitigationActionsTask(a...; b...) = DescribeAuditMitigationActionsTask(a..., b)

"""
Lists the role aliases registered in your account.
"""
ListRoleAliases() = iot("GET", "/role-aliases")
ListRoleAliases(, args) = iot("GET", "/role-aliases", args)
ListRoleAliases(a...; b...) = ListRoleAliases(a..., b)

"""
Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files associated with a stream.
"""
CreateStream(streamId, files, roleArn) = iot("POST", "/streams/$streamId")
CreateStream(streamId, files, roleArn, args) = iot("POST", "/streams/$streamId", args)
CreateStream(a...; b...) = CreateStream(a..., b)

"""
Enables the rule.
"""
EnableTopicRule(ruleName) = iot("POST", "/rules/$ruleName/enable")
EnableTopicRule(ruleName, args) = iot("POST", "/rules/$ruleName/enable", args)
EnableTopicRule(a...; b...) = EnableTopicRule(a..., b)

"""
Disassociates a Device Defender security profile from a thing group or from this account.
"""
DetachSecurityProfile(securityProfileName, securityProfileTargetArn) = iot("DELETE", "/security-profiles/$securityProfileName/targets")
DetachSecurityProfile(securityProfileName, securityProfileTargetArn, args) = iot("DELETE", "/security-profiles/$securityProfileName/targets", args)
DetachSecurityProfile(a...; b...) = DetachSecurityProfile(a..., b)

"""
Returns the approximate count of unique values that match the query.
"""
GetCardinality(queryString) = iot("POST", "/indices/cardinality")
GetCardinality(queryString, args) = iot("POST", "/indices/cardinality", args)
GetCardinality(a...; b...) = GetCardinality(a..., b)

"""
Configures or reconfigures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
UpdateAccountAuditConfiguration() = iot("PATCH", "/audit/configuration")
UpdateAccountAuditConfiguration(, args) = iot("PATCH", "/audit/configuration", args)
UpdateAccountAuditConfiguration(a...; b...) = UpdateAccountAuditConfiguration(a..., b)

"""
Deletes the specified domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
DeleteDomainConfiguration(domainConfigurationName) = iot("DELETE", "/domainConfigurations/$domainConfigurationName")
DeleteDomainConfiguration(domainConfigurationName, args) = iot("DELETE", "/domainConfigurations/$domainConfigurationName", args)
DeleteDomainConfiguration(a...; b...) = DeleteDomainConfiguration(a..., b)

"""
Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key. You can also call CreateKeysAndCertificate over MQTT from a device, for more information, see Provisioning MQTT API.  Note This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.
"""
CreateKeysAndCertificate() = iot("POST", "/keys-and-certificate")
CreateKeysAndCertificate(, args) = iot("POST", "/keys-and-certificate", args)
CreateKeysAndCertificate(a...; b...) = CreateKeysAndCertificate(a..., b)

"""
Updates a Device Defender security profile.
"""
UpdateSecurityProfile(securityProfileName) = iot("PATCH", "/security-profiles/$securityProfileName")
UpdateSecurityProfile(securityProfileName, args) = iot("PATCH", "/security-profiles/$securityProfileName", args)
UpdateSecurityProfile(a...; b...) = UpdateSecurityProfile(a..., b)

"""
Lists your things. Use the attributeName and attributeValue parameters to filter your things. For example, calling ListThings with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute Color with the value Red. 
"""
ListThings() = iot("GET", "/things")
ListThings(, args) = iot("GET", "/things", args)
ListThings(a...; b...) = ListThings(a..., b)

"""
Updates a topic rule destination. You use this to change the status, endpoint URL, or confirmation URL of the destination.
"""
UpdateTopicRuleDestination(arn, status) = iot("PATCH", "/destinations")
UpdateTopicRuleDestination(arn, status, args) = iot("PATCH", "/destinations", args)
UpdateTopicRuleDestination(a...; b...) = UpdateTopicRuleDestination(a..., b)

"""
List the device certificates signed by the specified CA certificate.
"""
ListCertificatesByCA(caCertificateId) = iot("GET", "/certificates-by-ca/$caCertificateId")
ListCertificatesByCA(caCertificateId, args) = iot("GET", "/certificates-by-ca/$caCertificateId", args)
ListCertificatesByCA(a...; b...) = ListCertificatesByCA(a..., b)

"""
Lists the job executions for the specified thing.
"""
ListJobExecutionsForThing(thingName) = iot("GET", "/things/$thingName/jobs")
ListJobExecutionsForThing(thingName, args) = iot("GET", "/things/$thingName/jobs", args)
ListJobExecutionsForThing(a...; b...) = ListJobExecutionsForThing(a..., b)

"""
Updates information about the billing group.
"""
UpdateBillingGroup(billingGroupName, billingGroupProperties) = iot("PATCH", "/billing-groups/$billingGroupName")
UpdateBillingGroup(billingGroupName, billingGroupProperties, args) = iot("PATCH", "/billing-groups/$billingGroupName", args)
UpdateBillingGroup(a...; b...) = UpdateBillingGroup(a..., b)

"""
Lists the active violations for a given Device Defender security profile.
"""
ListActiveViolations() = iot("GET", "/active-violations")
ListActiveViolations(, args) = iot("GET", "/active-violations", args)
ListActiveViolations(a...; b...) = ListActiveViolations(a..., b)

"""
Deletes a registered CA certificate.
"""
DeleteCACertificate(certificateId) = iot("DELETE", "/cacertificate/$caCertificateId")
DeleteCACertificate(certificateId, args) = iot("DELETE", "/cacertificate/$caCertificateId", args)
DeleteCACertificate(a...; b...) = DeleteCACertificate(a..., b)

"""
Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
"""
DescribeAccountAuditConfiguration() = iot("GET", "/audit/configuration")
DescribeAccountAuditConfiguration(, args) = iot("GET", "/audit/configuration", args)
DescribeAccountAuditConfiguration(a...; b...) = DescribeAccountAuditConfiguration(a..., b)

"""
Creates a provisioning claim.
"""
CreateProvisioningClaim(templateName) = iot("POST", "/provisioning-templates/$templateName/provisioning-claim")
CreateProvisioningClaim(templateName, args) = iot("POST", "/provisioning-templates/$templateName/provisioning-claim", args)
CreateProvisioningClaim(a...; b...) = CreateProvisioningClaim(a..., b)

"""
Creates a job.
"""
CreateJob(jobId, targets) = iot("PUT", "/jobs/$jobId")
CreateJob(jobId, targets, args) = iot("PUT", "/jobs/$jobId", args)
CreateJob(a...; b...) = CreateJob(a..., b)

"""
Deletes a topic rule destination.
"""
DeleteTopicRuleDestination(arn) = iot("DELETE", "/destinations/$arn+")
DeleteTopicRuleDestination(arn, args) = iot("DELETE", "/destinations/$arn+", args)
DeleteTopicRuleDestination(a...; b...) = DeleteTopicRuleDestination(a..., b)

"""
Lists logging levels.
"""
ListV2LoggingLevels() = iot("GET", "/v2LoggingLevel")
ListV2LoggingLevels(, args) = iot("GET", "/v2LoggingLevel", args)
ListV2LoggingLevels(a...; b...) = ListV2LoggingLevels(a..., b)

"""
Gets information about a scheduled audit.
"""
DescribeScheduledAudit(scheduledAuditName) = iot("GET", "/audit/scheduledaudits/$scheduledAuditName")
DescribeScheduledAudit(scheduledAuditName, args) = iot("GET", "/audit/scheduledaudits/$scheduledAuditName", args)
DescribeScheduledAudit(a...; b...) = DescribeScheduledAudit(a..., b)

"""
Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.
"""
GetEffectivePolicies() = iot("POST", "/effective-policies")
GetEffectivePolicies(, args) = iot("POST", "/effective-policies", args)
GetEffectivePolicies(a...; b...) = GetEffectivePolicies(a..., b)

"""
Cancels a mitigation action task that is in progress. If the task is not in progress, an InvalidRequestException occurs.
"""
CancelAuditMitigationActionsTask(taskId) = iot("PUT", "/audit/mitigationactions/tasks/$taskId/cancel")
CancelAuditMitigationActionsTask(taskId, args) = iot("PUT", "/audit/mitigationactions/tasks/$taskId/cancel", args)
CancelAuditMitigationActionsTask(a...; b...) = CancelAuditMitigationActionsTask(a..., b)

"""
Gets information about the specified thing.
"""
DescribeThing(thingName) = iot("GET", "/things/$thingName")
DescribeThing(thingName, args) = iot("GET", "/things/$thingName", args)
DescribeThing(a...; b...) = DescribeThing(a..., b)

"""
Cancels a job.
"""
CancelJob(jobId) = iot("PUT", "/jobs/$jobId/cancel")
CancelJob(jobId, args) = iot("PUT", "/jobs/$jobId/cancel", args)
CancelJob(a...; b...) = CancelJob(a..., b)

"""
Lists the principals associated with the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
"""
ListThingPrincipals(thingName) = iot("GET", "/things/$thingName/principals")
ListThingPrincipals(thingName, args) = iot("GET", "/things/$thingName/principals", args)
ListThingPrincipals(a...; b...) = ListThingPrincipals(a..., b)

"""
Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.
"""
SetDefaultPolicyVersion(policyName, policyVersionId) = iot("PATCH", "/policies/$policyName/version/$policyVersionId")
SetDefaultPolicyVersion(policyName, policyVersionId, args) = iot("PATCH", "/policies/$policyName/version/$policyVersionId", args)
SetDefaultPolicyVersion(a...; b...) = SetDefaultPolicyVersion(a..., b)

"""
Deletes the rule.
"""
DeleteTopicRule(ruleName) = iot("DELETE", "/rules/$ruleName")
DeleteTopicRule(ruleName, args) = iot("DELETE", "/rules/$ruleName", args)
DeleteTopicRule(a...; b...) = DeleteTopicRule(a..., b)

"""
Create a thing group.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 
"""
CreateThingGroup(thingGroupName) = iot("POST", "/thing-groups/$thingGroupName")
CreateThingGroup(thingGroupName, args) = iot("POST", "/thing-groups/$thingGroupName", args)
CreateThingGroup(a...; b...) = CreateThingGroup(a..., b)

"""
Gets the indexing configuration.
"""
GetIndexingConfiguration() = iot("GET", "/indexing/config")
GetIndexingConfiguration(, args) = iot("GET", "/indexing/config", args)
GetIndexingConfiguration(a...; b...) = GetIndexingConfiguration(a..., b)

"""
Describes a job.
"""
DescribeJob(jobId) = iot("GET", "/jobs/$jobId")
DescribeJob(jobId, args) = iot("GET", "/jobs/$jobId", args)
DescribeJob(a...; b...) = DescribeJob(a..., b)

"""
Lists jobs.
"""
ListJobs() = iot("GET", "/jobs")
ListJobs(, args) = iot("GET", "/jobs", args)
ListJobs(a...; b...) = ListJobs(a..., b)

"""
Lists the Device Defender audits that have been performed during a given time period.
"""
ListAuditTasks(startTime, endTime) = iot("GET", "/audit/tasks")
ListAuditTasks(startTime, endTime, args) = iot("GET", "/audit/tasks", args)
ListAuditTasks(a...; b...) = ListAuditTasks(a..., b)

"""
Describes event configurations.
"""
DescribeEventConfigurations() = iot("GET", "/event-configurations")
DescribeEventConfigurations(, args) = iot("GET", "/event-configurations", args)
DescribeEventConfigurations(a...; b...) = DescribeEventConfigurations(a..., b)

"""
Attaches the specified policy to the specified principal (certificate or other credential).  Note: This API is deprecated. Please use AttachPolicy instead.
"""
AttachPrincipalPolicy(policyName, principal) = iot("PUT", "/principal-policies/$policyName")
AttachPrincipalPolicy(policyName, principal, args) = iot("PUT", "/principal-policies/$policyName", args)
AttachPrincipalPolicy(a...; b...) = AttachPrincipalPolicy(a..., b)

"""
Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in AmazonCognito Identity format.  Note: This API is deprecated. Please use ListAttachedPolicies instead.
"""
ListPrincipalPolicies(principal) = iot("GET", "/principal-policies")
ListPrincipalPolicies(principal, args) = iot("GET", "/principal-policies", args)
ListPrincipalPolicies(a...; b...) = ListPrincipalPolicies(a..., b)

"""
Updates an existing stream. The stream version will be incremented by one.
"""
UpdateStream(streamId) = iot("PUT", "/streams/$streamId")
UpdateStream(streamId, args) = iot("PUT", "/streams/$streamId", args)
UpdateStream(a...; b...) = UpdateStream(a..., b)

"""
Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iot("POST", "/tags")
TagResource(resourceArn, tags, args) = iot("POST", "/tags", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Lists all the topic rule destinations in your AWS account.
"""
ListTopicRuleDestinations() = iot("GET", "/destinations")
ListTopicRuleDestinations(, args) = iot("GET", "/destinations", args)
ListTopicRuleDestinations(a...; b...) = ListTopicRuleDestinations(a..., b)

"""
Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use DeletePolicyVersion to delete an existing version before you create a new one. Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).
"""
CreatePolicyVersion(policyName, policyDocument) = iot("POST", "/policies/$policyName/version")
CreatePolicyVersion(policyName, policyDocument, args) = iot("POST", "/policies/$policyName/version", args)
CreatePolicyVersion(a...; b...) = CreatePolicyVersion(a..., b)

"""
Gets a registration code used to register a CA certificate with AWS IoT.
"""
GetRegistrationCode() = iot("GET", "/registrationcode")
GetRegistrationCode(, args) = iot("GET", "/registrationcode", args)
GetRegistrationCode(a...; b...) = GetRegistrationCode(a..., b)

"""
Accepts a pending certificate transfer. The default state of the certificate is INACTIVE. To check for pending certificate transfers, call ListCertificates to enumerate your certificates.
"""
AcceptCertificateTransfer(certificateId) = iot("PATCH", "/accept-certificate-transfer/$certificateId")
AcceptCertificateTransfer(certificateId, args) = iot("PATCH", "/accept-certificate-transfer/$certificateId", args)
AcceptCertificateTransfer(a...; b...) = AcceptCertificateTransfer(a..., b)

"""
Gets information about a Device Defender security profile.
"""
DescribeSecurityProfile(securityProfileName) = iot("GET", "/security-profiles/$securityProfileName")
DescribeSecurityProfile(securityProfileName, args) = iot("GET", "/security-profiles/$securityProfileName", args)
DescribeSecurityProfile(a...; b...) = DescribeSecurityProfile(a..., b)

"""
Detaches a policy from the specified target.
"""
DetachPolicy(policyName, target) = iot("POST", "/target-policies/$policyName")
DetachPolicy(policyName, target, args) = iot("POST", "/target-policies/$policyName", args)
DetachPolicy(a...; b...) = DetachPolicy(a..., b)

"""
Removes the specified policy from the specified certificate.  Note: This API is deprecated. Please use DetachPolicy instead.
"""
DetachPrincipalPolicy(policyName, principal) = iot("DELETE", "/principal-policies/$policyName")
DetachPrincipalPolicy(policyName, principal, args) = iot("DELETE", "/principal-policies/$policyName", args)
DetachPrincipalPolicy(a...; b...) = DetachPrincipalPolicy(a..., b)

"""
Gets information about a single audit finding. Properties include the reason for noncompliance, the severity of the issue, and when the audit that returned the finding was started.
"""
DescribeAuditFinding(findingId) = iot("GET", "/audit/findings/$findingId")
DescribeAuditFinding(findingId, args) = iot("GET", "/audit/findings/$findingId", args)
DescribeAuditFinding(a...; b...) = DescribeAuditFinding(a..., b)

"""
Provisions a thing in the device registry. RegisterThing calls other AWS IoT control plane APIs. These calls might exceed your account level  AWS IoT Throttling Limits and cause throttle errors. Please contact AWS Customer Support to raise your throttling limits if necessary.
"""
RegisterThing(templateBody) = iot("POST", "/things")
RegisterThing(templateBody, args) = iot("POST", "/things", args)
RegisterThing(a...; b...) = RegisterThing(a..., b)

"""
Creates a domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
CreateDomainConfiguration(domainConfigurationName) = iot("POST", "/domainConfigurations/$domainConfigurationName")
CreateDomainConfiguration(domainConfigurationName, args) = iot("POST", "/domainConfigurations/$domainConfigurationName", args)
CreateDomainConfiguration(a...; b...) = CreateDomainConfiguration(a..., b)

"""
Lists OTA updates.
"""
ListOTAUpdates() = iot("GET", "/otaUpdates")
ListOTAUpdates(, args) = iot("GET", "/otaUpdates", args)
ListOTAUpdates(a...; b...) = ListOTAUpdates(a..., b)

"""
Creates a new version of a fleet provisioning template.
"""
CreateProvisioningTemplateVersion(templateName, templateBody) = iot("POST", "/provisioning-templates/$templateName/versions")
CreateProvisioningTemplateVersion(templateName, templateBody, args) = iot("POST", "/provisioning-templates/$templateName/versions", args)
CreateProvisioningTemplateVersion(a...; b...) = CreateProvisioningTemplateVersion(a..., b)

"""
Updates the definition for the specified mitigation action.
"""
UpdateMitigationAction(actionName) = iot("PATCH", "/mitigationactions/actions/$actionName")
UpdateMitigationAction(actionName, args) = iot("PATCH", "/mitigationactions/actions/$actionName", args)
UpdateMitigationAction(a...; b...) = UpdateMitigationAction(a..., b)

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iot("POST", "/untag")
UntagResource(resourceArn, tagKeys, args) = iot("POST", "/untag", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
List bulk thing provisioning tasks.
"""
ListThingRegistrationTasks() = iot("GET", "/thing-registration-tasks")
ListThingRegistrationTasks(, args) = iot("GET", "/thing-registration-tasks", args)
ListThingRegistrationTasks(a...; b...) = ListThingRegistrationTasks(a..., b)

"""
Starts a task that applies a set of mitigation actions to the specified target.
"""
StartAuditMitigationActionsTask(taskId, target, auditCheckToActionsMapping, clientRequestToken) = iot("POST", "/audit/mitigationactions/tasks/$taskId")
StartAuditMitigationActionsTask(taskId, target, auditCheckToActionsMapping, clientRequestToken, args) = iot("POST", "/audit/mitigationactions/tasks/$taskId", args)
StartAuditMitigationActionsTask(a...; b...) = StartAuditMitigationActionsTask(a..., b)

"""
Lists the principals associated with the specified policy.  Note: This API is deprecated. Please use ListTargetsForPolicy instead.
"""
ListPolicyPrincipals(policyName) = iot("GET", "/policy-principals")
ListPolicyPrincipals(policyName, args) = iot("GET", "/policy-principals", args)
ListPolicyPrincipals(a...; b...) = ListPolicyPrincipals(a..., b)

"""
Lists certificates that are being transferred but not yet accepted.
"""
ListOutgoingCertificates() = iot("GET", "/certificates-out-going")
ListOutgoingCertificates(, args) = iot("GET", "/certificates-out-going", args)
ListOutgoingCertificates(a...; b...) = ListOutgoingCertificates(a..., b)

"""
Associates a group with a continuous job. The following criteria must be met:    The job must have been created with the targetSelection field set to "CONTINUOUS".   The job status must currently be "IN_PROGRESS".   The total number of targets associated with a job must not exceed 100.  
"""
AssociateTargetsWithJob(targets, jobId) = iot("POST", "/jobs/$jobId/targets")
AssociateTargetsWithJob(targets, jobId, args) = iot("POST", "/jobs/$jobId/targets", args)
AssociateTargetsWithJob(a...; b...) = AssociateTargetsWithJob(a..., b)

"""
Restores the default settings for Device Defender audits for this account. Any configuration data you entered is deleted and all audit checks are reset to disabled. 
"""
DeleteAccountAuditConfiguration() = iot("DELETE", "/audit/configuration")
DeleteAccountAuditConfiguration(, args) = iot("DELETE", "/audit/configuration", args)
DeleteAccountAuditConfiguration(a...; b...) = DeleteAccountAuditConfiguration(a..., b)

"""
Remove the specified thing from the specified group.
"""
RemoveThingFromThingGroup() = iot("PUT", "/thing-groups/removeThingFromThingGroup")
RemoveThingFromThingGroup(, args) = iot("PUT", "/thing-groups/removeThingFromThingGroup", args)
RemoveThingFromThingGroup(a...; b...) = RemoveThingFromThingGroup(a..., b)

"""
Creates a new thing type.
"""
CreateThingType(thingTypeName) = iot("POST", "/thing-types/$thingTypeName")
CreateThingType(thingTypeName, args) = iot("POST", "/thing-types/$thingTypeName", args)
CreateThingType(a...; b...) = CreateThingType(a..., b)

"""
Lists the certificates registered in your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCertificates() = iot("GET", "/certificates")
ListCertificates(, args) = iot("GET", "/certificates", args)
ListCertificates(a...; b...) = ListCertificates(a..., b)

"""
Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use DeletePolicy. To find out which version of a policy is marked as the default version, use ListPolicyVersions.
"""
DeletePolicyVersion(policyName, policyVersionId) = iot("DELETE", "/policies/$policyName/version/$policyVersionId")
DeletePolicyVersion(policyName, policyVersionId, args) = iot("DELETE", "/policies/$policyName/version/$policyVersionId", args)
DeletePolicyVersion(a...; b...) = DeletePolicyVersion(a..., b)

"""
Describes a search index.
"""
DescribeIndex(indexName) = iot("GET", "/indices/$indexName")
DescribeIndex(indexName, args) = iot("GET", "/indices/$indexName", args)
DescribeIndex(a...; b...) = DescribeIndex(a..., b)

"""
Information about the thing registration tasks.
"""
ListThingRegistrationTaskReports(taskId, reportType) = iot("GET", "/thing-registration-tasks/$taskId/reports")
ListThingRegistrationTaskReports(taskId, reportType, args) = iot("GET", "/thing-registration-tasks/$taskId/reports", args)
ListThingRegistrationTaskReports(a...; b...) = ListThingRegistrationTaskReports(a..., b)

"""
Gets the status of audit mitigation action tasks that were executed.
"""
ListAuditMitigationActionsExecutions(taskId, findingId) = iot("GET", "/audit/mitigationactions/executions")
ListAuditMitigationActionsExecutions(taskId, findingId, args) = iot("GET", "/audit/mitigationactions/executions", args)
ListAuditMitigationActionsExecutions(a...; b...) = ListAuditMitigationActionsExecutions(a..., b)

"""
Deletes a logging level.
"""
DeleteV2LoggingLevel(targetType, targetName) = iot("DELETE", "/v2LoggingLevel")
DeleteV2LoggingLevel(targetType, targetName, args) = iot("DELETE", "/v2LoggingLevel", args)
DeleteV2LoggingLevel(a...; b...) = DeleteV2LoggingLevel(a..., b)

"""
Creates a thing record in the registry. If this call is made multiple times using the same thing name and configuration, the call will succeed. If this call is made with the same thing name but different configuration a ResourceAlreadyExistsException is thrown.  This is a control plane operation. See Authorization for information about authorizing control plane actions. 
"""
CreateThing(thingName) = iot("POST", "/things/$thingName")
CreateThing(thingName, args) = iot("POST", "/things/$thingName", args)
CreateThing(a...; b...) = CreateThing(a..., b)

"""
Returns the count, average, sum, minimum, maximum, sum of squares, variance, and standard deviation for the specified aggregated field. If the aggregation field is of type String, only the count statistic is returned.
"""
GetStatistics(queryString) = iot("POST", "/indices/statistics")
GetStatistics(queryString, args) = iot("POST", "/indices/statistics", args)
GetStatistics(a...; b...) = GetStatistics(a..., b)

"""
Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)
"""
ListAuditFindings() = iot("POST", "/audit/findings")
ListAuditFindings(, args) = iot("POST", "/audit/findings", args)
ListAuditFindings(a...; b...) = ListAuditFindings(a..., b)

"""
Cancels the execution of a job for a given thing.
"""
CancelJobExecution(jobId, thingName) = iot("PUT", "/things/$thingName/jobs/$jobId/cancel")
CancelJobExecution(jobId, thingName, args) = iot("PUT", "/things/$thingName/jobs/$jobId/cancel", args)
CancelJobExecution(a...; b...) = CancelJobExecution(a..., b)

"""
Delete an OTA update.
"""
DeleteOTAUpdate(otaUpdateId) = iot("DELETE", "/otaUpdates/$otaUpdateId")
DeleteOTAUpdate(otaUpdateId, args) = iot("DELETE", "/otaUpdates/$otaUpdateId", args)
DeleteOTAUpdate(a...; b...) = DeleteOTAUpdate(a..., b)

"""
Lists the policies attached to the specified thing group.
"""
ListAttachedPolicies(target) = iot("POST", "/attached-policies/$target")
ListAttachedPolicies(target, args) = iot("POST", "/attached-policies/$target", args)
ListAttachedPolicies(a...; b...) = ListAttachedPolicies(a..., b)

"""
Creates an authorizer.
"""
CreateAuthorizer(authorizerName, authorizerFunctionArn) = iot("POST", "/authorizer/$authorizerName")
CreateAuthorizer(authorizerName, authorizerFunctionArn, args) = iot("POST", "/authorizer/$authorizerName", args)
CreateAuthorizer(a...; b...) = CreateAuthorizer(a..., b)

"""
Gets an OTA update.
"""
GetOTAUpdate(otaUpdateId) = iot("GET", "/otaUpdates/$otaUpdateId")
GetOTAUpdate(otaUpdateId, args) = iot("GET", "/otaUpdates/$otaUpdateId", args)
GetOTAUpdate(a...; b...) = GetOTAUpdate(a..., b)

"""
Update a thing group.
"""
UpdateThingGroup(thingGroupName, thingGroupProperties) = iot("PATCH", "/thing-groups/$thingGroupName")
UpdateThingGroup(thingGroupName, thingGroupProperties, args) = iot("PATCH", "/thing-groups/$thingGroupName", args)
UpdateThingGroup(a...; b...) = UpdateThingGroup(a..., b)

"""
Gets a list of all mitigation actions that match the specified filter criteria.
"""
ListMitigationActions() = iot("GET", "/mitigationactions/actions")
ListMitigationActions(, args) = iot("GET", "/mitigationactions/actions", args)
ListMitigationActions(a...; b...) = ListMitigationActions(a..., b)

"""
Disables the rule.
"""
DisableTopicRule(ruleName) = iot("POST", "/rules/$ruleName/disable")
DisableTopicRule(ruleName, args) = iot("POST", "/rules/$ruleName/disable", args)
DisableTopicRule(a...; b...) = DisableTopicRule(a..., b)

"""
Updates the groups to which the thing belongs.
"""
UpdateThingGroupsForThing() = iot("PUT", "/thing-groups/updateThingGroupsForThing")
UpdateThingGroupsForThing(, args) = iot("PUT", "/thing-groups/updateThingGroupsForThing", args)
UpdateThingGroupsForThing(a...; b...) = UpdateThingGroupsForThing(a..., b)

"""
Deletes a fleet provisioning template.
"""
DeleteProvisioningTemplate(templateName) = iot("DELETE", "/provisioning-templates/$templateName")
DeleteProvisioningTemplate(templateName, args) = iot("DELETE", "/provisioning-templates/$templateName", args)
DeleteProvisioningTemplate(a...; b...) = DeleteProvisioningTemplate(a..., b)

"""
Describes a bulk thing provisioning task.
"""
DescribeThingRegistrationTask(taskId) = iot("GET", "/thing-registration-tasks/$taskId")
DescribeThingRegistrationTask(taskId, args) = iot("GET", "/thing-registration-tasks/$taskId", args)
DescribeThingRegistrationTask(a...; b...) = DescribeThingRegistrationTask(a..., b)

"""
Gets a list of domain configurations for the user. This list is sorted alphabetically by domain configuration name.  The domain configuration feature is in public preview and is subject to change. 
"""
ListDomainConfigurations() = iot("GET", "/domainConfigurations")
ListDomainConfigurations(, args) = iot("GET", "/domainConfigurations", args)
ListDomainConfigurations(a...; b...) = ListDomainConfigurations(a..., b)

"""
Detaches the specified principal from the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.  This call is asynchronous. It might take several seconds for the detachment to propagate. 
"""
DetachThingPrincipal(thingName, principal) = iot("DELETE", "/things/$thingName/principals")
DetachThingPrincipal(thingName, principal, args) = iot("DELETE", "/things/$thingName/principals", args)
DetachThingPrincipal(a...; b...) = DetachThingPrincipal(a..., b)

"""
Returns information about a billing group.
"""
DescribeBillingGroup(billingGroupName) = iot("GET", "/billing-groups/$billingGroupName")
DescribeBillingGroup(billingGroupName, args) = iot("GET", "/billing-groups/$billingGroupName", args)
DescribeBillingGroup(a...; b...) = DescribeBillingGroup(a..., b)

"""
Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.
"""
RegisterCertificate(certificatePem) = iot("POST", "/certificate/register")
RegisterCertificate(certificatePem, args) = iot("POST", "/certificate/register", args)
RegisterCertificate(a...; b...) = RegisterCertificate(a..., b)

"""
Returns information about a fleet provisioning template version.
"""
DescribeProvisioningTemplateVersion(templateName, versionId) = iot("GET", "/provisioning-templates/$templateName/versions/$versionId")
DescribeProvisioningTemplateVersion(templateName, versionId, args) = iot("GET", "/provisioning-templates/$templateName/versions/$versionId", args)
DescribeProvisioningTemplateVersion(a...; b...) = DescribeProvisioningTemplateVersion(a..., b)

"""
Groups the aggregated values that match the query into percentile groupings. The default percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own when you call GetPercentiles. This function returns a value for each percentile group specified (or the default percentile groupings). The percentile group "1" contains the aggregated field value that occurs in approximately one percent of the values that match the query. The percentile group "5" contains the aggregated field value that occurs in approximately five percent of the values that match the query, and so on. The result is an approximation, the more values that match the query, the more accurate the percentile values.
"""
GetPercentiles(queryString) = iot("POST", "/indices/percentiles")
GetPercentiles(queryString, args) = iot("POST", "/indices/percentiles", args)
GetPercentiles(a...; b...) = GetPercentiles(a..., b)

"""
Deletes a stream.
"""
DeleteStream(streamId) = iot("DELETE", "/streams/$streamId")
DeleteStream(streamId, args) = iot("DELETE", "/streams/$streamId", args)
DeleteStream(a...; b...) = DeleteStream(a..., b)

"""
Deletes a job execution.
"""
DeleteJobExecution(jobId, thingName, executionNumber) = iot("DELETE", "/things/$thingName/jobs/$jobId/executionNumber/$executionNumber")
DeleteJobExecution(jobId, thingName, executionNumber, args) = iot("DELETE", "/things/$thingName/jobs/$jobId/executionNumber/$executionNumber", args)
DeleteJobExecution(a...; b...) = DeleteJobExecution(a..., b)

"""
Updates the event configurations.
"""
UpdateEventConfigurations() = iot("PATCH", "/event-configurations")
UpdateEventConfigurations(, args) = iot("PATCH", "/event-configurations", args)
UpdateEventConfigurations(a...; b...) = UpdateEventConfigurations(a..., b)

"""
Describes the default authorizer.
"""
DescribeDefaultAuthorizer() = iot("GET", "/default-authorizer")
DescribeDefaultAuthorizer(, args) = iot("GET", "/default-authorizer", args)
DescribeDefaultAuthorizer(a...; b...) = DescribeDefaultAuthorizer(a..., b)

"""
Gets information about the specified policy with the policy document of the default version.
"""
GetPolicy(policyName) = iot("GET", "/policies/$policyName")
GetPolicy(policyName, args) = iot("GET", "/policies/$policyName", args)
GetPolicy(a...; b...) = GetPolicy(a..., b)

"""
Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior, or thing (device).
"""
ListViolationEvents(startTime, endTime) = iot("GET", "/violation-events")
ListViolationEvents(startTime, endTime, args) = iot("GET", "/violation-events", args)
ListViolationEvents(a...; b...) = ListViolationEvents(a..., b)

"""
Updates values stored in the domain configuration. Domain configurations for default endpoints can't be updated.  The domain configuration feature is in public preview and is subject to change. 
"""
UpdateDomainConfiguration(domainConfigurationName) = iot("PUT", "/domainConfigurations/$domainConfigurationName")
UpdateDomainConfiguration(domainConfigurationName, args) = iot("PUT", "/domainConfigurations/$domainConfigurationName", args)
UpdateDomainConfiguration(a...; b...) = UpdateDomainConfiguration(a..., b)

"""
Updates the data for a thing.
"""
UpdateThing(thingName) = iot("PATCH", "/things/$thingName")
UpdateThing(thingName, args) = iot("PATCH", "/things/$thingName", args)
UpdateThing(a...; b...) = UpdateThing(a..., b)

"""
Gets the logging options. NOTE: use of this command is not recommended. Use GetV2LoggingOptions instead.
"""
GetLoggingOptions() = iot("GET", "/loggingOptions")
GetLoggingOptions(, args) = iot("GET", "/loggingOptions", args)
GetLoggingOptions(a...; b...) = GetLoggingOptions(a..., b)

"""
Returns a unique endpoint specific to the AWS account making the call.
"""
DescribeEndpoint() = iot("GET", "/endpoint")
DescribeEndpoint(, args) = iot("GET", "/endpoint", args)
DescribeEndpoint(a...; b...) = DescribeEndpoint(a..., b)

"""
Deletes a scheduled audit.
"""
DeleteScheduledAudit(scheduledAuditName) = iot("DELETE", "/audit/scheduledaudits/$scheduledAuditName")
DeleteScheduledAudit(scheduledAuditName, args) = iot("DELETE", "/audit/scheduledaudits/$scheduledAuditName", args)
DeleteScheduledAudit(a...; b...) = DeleteScheduledAudit(a..., b)

"""
Replaces the rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
"""
ReplaceTopicRule(ruleName, topicRulePayload) = iot("PATCH", "/rules/$ruleName")
ReplaceTopicRule(ruleName, topicRulePayload, args) = iot("PATCH", "/rules/$ruleName", args)
ReplaceTopicRule(a...; b...) = ReplaceTopicRule(a..., b)

"""
Gets information about the specified thing type.
"""
DescribeThingType(thingTypeName) = iot("GET", "/thing-types/$thingTypeName")
DescribeThingType(thingTypeName, args) = iot("GET", "/thing-types/$thingTypeName", args)
DescribeThingType(a...; b...) = DescribeThingType(a..., b)

"""
A list of fleet provisioning template versions.
"""
ListProvisioningTemplateVersions(templateName) = iot("GET", "/provisioning-templates/$templateName/versions")
ListProvisioningTemplateVersions(templateName, args) = iot("GET", "/provisioning-templates/$templateName/versions", args)
ListProvisioningTemplateVersions(a...; b...) = ListProvisioningTemplateVersions(a..., b)

"""
Sets the logging options. NOTE: use of this command is not recommended. Use SetV2LoggingOptions instead.
"""
SetLoggingOptions(loggingOptionsPayload) = iot("POST", "/loggingOptions")
SetLoggingOptions(loggingOptionsPayload, args) = iot("POST", "/loggingOptions", args)
SetLoggingOptions(a...; b...) = SetLoggingOptions(a..., b)

"""
Defines an action that can be applied to audit findings by using StartAuditMitigationActionsTask. Each mitigation action can apply only one type of change.
"""
CreateMitigationAction(actionName, roleArn, actionParams) = iot("POST", "/mitigationactions/actions/$actionName")
CreateMitigationAction(actionName, roleArn, actionParams, args) = iot("POST", "/mitigationactions/actions/$actionName", args)
CreateMitigationAction(a...; b...) = CreateMitigationAction(a..., b)

"""
Updates supported fields of the specified job.
"""
UpdateJob(jobId) = iot("PATCH", "/jobs/$jobId")
UpdateJob(jobId, args) = iot("PATCH", "/jobs/$jobId", args)
UpdateJob(a...; b...) = UpdateJob(a..., b)

"""
Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.
"""
CreateTopicRule(ruleName, topicRulePayload) = iot("POST", "/rules/$ruleName")
CreateTopicRule(ruleName, topicRulePayload, args) = iot("POST", "/rules/$ruleName", args)
CreateTopicRule(a...; b...) = CreateTopicRule(a..., b)

"""
Creates an AWS IoT OTAUpdate on a target group of things or groups.
"""
CreateOTAUpdate(otaUpdateId, targets, files, roleArn) = iot("POST", "/otaUpdates/$otaUpdateId")
CreateOTAUpdate(otaUpdateId, targets, files, roleArn, args) = iot("POST", "/otaUpdates/$otaUpdateId", args)
CreateOTAUpdate(a...; b...) = CreateOTAUpdate(a..., b)

"""
Updates a fleet provisioning template.
"""
UpdateProvisioningTemplate(templateName) = iot("PATCH", "/provisioning-templates/$templateName")
UpdateProvisioningTemplate(templateName, args) = iot("PATCH", "/provisioning-templates/$templateName", args)
UpdateProvisioningTemplate(a...; b...) = UpdateProvisioningTemplate(a..., b)

"""
Sets the logging options for the V2 logging service.
"""
SetV2LoggingOptions() = iot("POST", "/v2LoggingOptions")
SetV2LoggingOptions(, args) = iot("POST", "/v2LoggingOptions", args)
SetV2LoggingOptions(a...; b...) = SetV2LoggingOptions(a..., b)

"""
Deletes a CA certificate registration code.
"""
DeleteRegistrationCode() = iot("DELETE", "/registrationcode")
DeleteRegistrationCode(, args) = iot("DELETE", "/registrationcode", args)
DeleteRegistrationCode(a...; b...) = DeleteRegistrationCode(a..., b)

"""
Creates a topic rule destination. The destination must be confirmed prior to use.
"""
CreateTopicRuleDestination(destinationConfiguration) = iot("POST", "/destinations")
CreateTopicRuleDestination(destinationConfiguration, args) = iot("POST", "/destinations", args)
CreateTopicRuleDestination(a...; b...) = CreateTopicRuleDestination(a..., b)

"""
Lists the CA certificates registered for your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
"""
ListCACertificates() = iot("GET", "/cacertificates")
ListCACertificates(, args) = iot("GET", "/cacertificates", args)
ListCACertificates(a...; b...) = ListCACertificates(a..., b)

"""
Gets information about the specified certificate.
"""
DescribeCertificate(certificateId) = iot("GET", "/certificates/$certificateId")
DescribeCertificate(certificateId, args) = iot("GET", "/certificates/$certificateId", args)
DescribeCertificate(a...; b...) = DescribeCertificate(a..., b)

"""
Deletes the specified policy. A policy cannot be deleted if it has non-default versions or it is attached to any certificate. To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy. When a policy is deleted using DeletePolicy, its default version is deleted with it.
"""
DeletePolicy(policyName) = iot("DELETE", "/policies/$policyName")
DeletePolicy(policyName, args) = iot("DELETE", "/policies/$policyName", args)
DeletePolicy(a...; b...) = DeletePolicy(a..., b)

"""
Gets summary information about a domain configuration.  The domain configuration feature is in public preview and is subject to change. 
"""
DescribeDomainConfiguration(domainConfigurationName) = iot("GET", "/domainConfigurations/$domainConfigurationName")
DescribeDomainConfiguration(domainConfigurationName, args) = iot("GET", "/domainConfigurations/$domainConfigurationName", args)
DescribeDomainConfiguration(a...; b...) = DescribeDomainConfiguration(a..., b)

"""
Gets information about a Device Defender audit.
"""
DescribeAuditTask(taskId) = iot("GET", "/audit/tasks/$taskId")
DescribeAuditTask(taskId, args) = iot("GET", "/audit/tasks/$taskId", args)
DescribeAuditTask(a...; b...) = DescribeAuditTask(a..., b)

"""
Deprecates a thing type. You can not associate new things with deprecated thing type.
"""
DeprecateThingType(thingTypeName) = iot("POST", "/thing-types/$thingTypeName/deprecate")
DeprecateThingType(thingTypeName, args) = iot("POST", "/thing-types/$thingTypeName/deprecate", args)
DeprecateThingType(a...; b...) = DeprecateThingType(a..., b)

"""
Deletes a Device Defender security profile.
"""
DeleteSecurityProfile(securityProfileName) = iot("DELETE", "/security-profiles/$securityProfileName")
DeleteSecurityProfile(securityProfileName, args) = iot("DELETE", "/security-profiles/$securityProfileName", args)
DeleteSecurityProfile(a...; b...) = DeleteSecurityProfile(a..., b)

"""
Updates a dynamic thing group.
"""
UpdateDynamicThingGroup(thingGroupName, thingGroupProperties) = iot("PATCH", "/dynamic-thing-groups/$thingGroupName")
UpdateDynamicThingGroup(thingGroupName, thingGroupProperties, args) = iot("PATCH", "/dynamic-thing-groups/$thingGroupName", args)
UpdateDynamicThingGroup(a...; b...) = UpdateDynamicThingGroup(a..., b)

"""
Lists the tags (metadata) you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot("GET", "/tags")
ListTagsForResource(resourceArn, args) = iot("GET", "/tags", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
"""
ListSecurityProfiles() = iot("GET", "/security-profiles")
ListSecurityProfiles(, args) = iot("GET", "/security-profiles", args)
ListSecurityProfiles(a...; b...) = ListSecurityProfiles(a..., b)

"""
Gets a list of audit mitigation action tasks that match the specified filters.
"""
ListAuditMitigationActionsTasks(startTime, endTime) = iot("GET", "/audit/mitigationactions/tasks")
ListAuditMitigationActionsTasks(startTime, endTime, args) = iot("GET", "/audit/mitigationactions/tasks", args)
ListAuditMitigationActionsTasks(a...; b...) = ListAuditMitigationActionsTasks(a..., b)

"""
Deletes the specified certificate. A certificate cannot be deleted if it has a policy or IoT thing attached to it or if its status is set to ACTIVE. To delete a certificate, first use the DetachPrincipalPolicy API to detach all policies. Next, use the UpdateCertificate API to set the certificate to the INACTIVE status.
"""
DeleteCertificate(certificateId) = iot("DELETE", "/certificates/$certificateId")
DeleteCertificate(certificateId, args) = iot("DELETE", "/certificates/$certificateId", args)
DeleteCertificate(a...; b...) = DeleteCertificate(a..., b)

"""
Lists the job executions for a job.
"""
ListJobExecutionsForJob(jobId) = iot("GET", "/jobs/$jobId/things")
ListJobExecutionsForJob(jobId, args) = iot("GET", "/jobs/$jobId/things", args)
ListJobExecutionsForJob(a...; b...) = ListJobExecutionsForJob(a..., b)

"""
Updates a registered CA certificate.
"""
UpdateCACertificate(certificateId) = iot("PUT", "/cacertificate/$caCertificateId")
UpdateCACertificate(certificateId, args) = iot("PUT", "/cacertificate/$caCertificateId", args)
UpdateCACertificate(a...; b...) = UpdateCACertificate(a..., b)

"""
Updates the search configuration.
"""
UpdateIndexingConfiguration() = iot("POST", "/indexing/config")
UpdateIndexingConfiguration(, args) = iot("POST", "/indexing/config", args)
UpdateIndexingConfiguration(a...; b...) = UpdateIndexingConfiguration(a..., b)

"""
List the thing groups in your account.
"""
ListThingGroups() = iot("GET", "/thing-groups")
ListThingGroups(, args) = iot("GET", "/thing-groups", args)
ListThingGroups(a...; b...) = ListThingGroups(a..., b)

"""
Deletes a thing group.
"""
DeleteThingGroup(thingGroupName) = iot("DELETE", "/thing-groups/$thingGroupName")
DeleteThingGroup(thingGroupName, args) = iot("DELETE", "/thing-groups/$thingGroupName", args)
DeleteThingGroup(a...; b...) = DeleteThingGroup(a..., b)

"""
Clears the default authorizer.
"""
ClearDefaultAuthorizer() = iot("DELETE", "/default-authorizer")
ClearDefaultAuthorizer(, args) = iot("DELETE", "/default-authorizer", args)
ClearDefaultAuthorizer(a...; b...) = ClearDefaultAuthorizer(a..., b)

"""
Attaches a policy to the specified target.
"""
AttachPolicy(policyName, target) = iot("PUT", "/target-policies/$policyName")
AttachPolicy(policyName, target, args) = iot("PUT", "/target-policies/$policyName", args)
AttachPolicy(a...; b...) = AttachPolicy(a..., b)

"""
Gets information about the rule.
"""
GetTopicRule(ruleName) = iot("GET", "/rules/$ruleName")
GetTopicRule(ruleName, args) = iot("GET", "/rules/$ruleName", args)
GetTopicRule(a...; b...) = GetTopicRule(a..., b)

"""
Describes an authorizer.
"""
DescribeAuthorizer(authorizerName) = iot("GET", "/authorizer/$authorizerName")
DescribeAuthorizer(authorizerName, args) = iot("GET", "/authorizer/$authorizerName", args)
DescribeAuthorizer(a...; b...) = DescribeAuthorizer(a..., b)

"""
Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.
"""
SetDefaultAuthorizer(authorizerName) = iot("POST", "/default-authorizer")
SetDefaultAuthorizer(authorizerName, args) = iot("POST", "/default-authorizer", args)
SetDefaultAuthorizer(a...; b...) = SetDefaultAuthorizer(a..., b)

"""
Creates a Device Defender security profile.
"""
CreateSecurityProfile(securityProfileName) = iot("POST", "/security-profiles/$securityProfileName")
CreateSecurityProfile(securityProfileName, args) = iot("POST", "/security-profiles/$securityProfileName", args)
CreateSecurityProfile(a...; b...) = CreateSecurityProfile(a..., b)

"""
Lists your policies.
"""
ListPolicies() = iot("GET", "/policies")
ListPolicies(, args) = iot("GET", "/policies", args)
ListPolicies(a...; b...) = ListPolicies(a..., b)

"""
Lists the Device Defender security profiles attached to a target (thing group).
"""
ListSecurityProfilesForTarget(securityProfileTargetArn) = iot("GET", "/security-profiles-for-target")
ListSecurityProfilesForTarget(securityProfileTargetArn, args) = iot("GET", "/security-profiles-for-target", args)
ListSecurityProfilesForTarget(a...; b...) = ListSecurityProfilesForTarget(a..., b)

"""
Creates an AWS IoT policy. The created policy is the default version for the policy. This operation creates a policy version with a version identifier of 1 and sets 1 as the policy's default version.
"""
CreatePolicy(policyName, policyDocument) = iot("POST", "/policies/$policyName")
CreatePolicy(policyName, policyDocument, args) = iot("POST", "/policies/$policyName", args)
CreatePolicy(a...; b...) = CreatePolicy(a..., b)

"""
Deletes the billing group.
"""
DeleteBillingGroup(billingGroupName) = iot("DELETE", "/billing-groups/$billingGroupName")
DeleteBillingGroup(billingGroupName, args) = iot("DELETE", "/billing-groups/$billingGroupName", args)
DeleteBillingGroup(a...; b...) = DeleteBillingGroup(a..., b)

"""
Gets the fine grained logging options.
"""
GetV2LoggingOptions() = iot("GET", "/v2LoggingOptions")
GetV2LoggingOptions(, args) = iot("GET", "/v2LoggingOptions", args)
GetV2LoggingOptions(a...; b...) = GetV2LoggingOptions(a..., b)

"""
Deletes the specified thing type. You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling DeprecateThingType, then remove any associated things by calling UpdateThing to change the thing type on any associated thing, and finally use DeleteThingType to delete the thing type.
"""
DeleteThingType(thingTypeName) = iot("DELETE", "/thing-types/$thingTypeName")
DeleteThingType(thingTypeName, args) = iot("DELETE", "/thing-types/$thingTypeName", args)
DeleteThingType(a...; b...) = DeleteThingType(a..., b)

"""
Sets the logging level.
"""
SetV2LoggingLevel(logTarget, logLevel) = iot("POST", "/v2LoggingLevel")
SetV2LoggingLevel(logTarget, logLevel, args) = iot("POST", "/v2LoggingLevel", args)
SetV2LoggingLevel(a...; b...) = SetV2LoggingLevel(a..., b)

"""
Confirms a topic rule destination. When you create a rule requiring a destination, AWS IoT sends a confirmation message to the endpoint or base address you specify. The message includes a token which you pass back when calling ConfirmTopicRuleDestination to confirm that you own or have access to the endpoint.
"""
ConfirmTopicRuleDestination(confirmationToken) = iot("GET", "/confirmdestination/$confirmationToken+")
ConfirmTopicRuleDestination(confirmationToken, args) = iot("GET", "/confirmdestination/$confirmationToken+", args)
ConfirmTopicRuleDestination(a...; b...) = ConfirmTopicRuleDestination(a..., b)

"""
The query search index.
"""
SearchIndex(queryString) = iot("POST", "/indices/search")
SearchIndex(queryString, args) = iot("POST", "/indices/search", args)
SearchIndex(a...; b...) = SearchIndex(a..., b)

"""
Cancels a pending transfer for the specified certificate.  Note Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use RejectCertificateTransfer instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled. After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.
"""
CancelCertificateTransfer(certificateId) = iot("PATCH", "/cancel-certificate-transfer/$certificateId")
CancelCertificateTransfer(certificateId, args) = iot("PATCH", "/cancel-certificate-transfer/$certificateId", args)
CancelCertificateTransfer(a...; b...) = CancelCertificateTransfer(a..., b)

"""
Deletes a role alias
"""
DeleteRoleAlias(roleAlias) = iot("DELETE", "/role-aliases/$roleAlias")
DeleteRoleAlias(roleAlias, args) = iot("DELETE", "/role-aliases/$roleAlias", args)
DeleteRoleAlias(a...; b...) = DeleteRoleAlias(a..., b)

"""
Describes a role alias.
"""
DescribeRoleAlias(roleAlias) = iot("GET", "/role-aliases/$roleAlias")
DescribeRoleAlias(roleAlias, args) = iot("GET", "/role-aliases/$roleAlias", args)
DescribeRoleAlias(a...; b...) = DescribeRoleAlias(a..., b)

"""
Gets a job document.
"""
GetJobDocument(jobId) = iot("GET", "/jobs/$jobId/job-document")
GetJobDocument(jobId, args) = iot("GET", "/jobs/$jobId/job-document", args)
GetJobDocument(a...; b...) = GetJobDocument(a..., b)
