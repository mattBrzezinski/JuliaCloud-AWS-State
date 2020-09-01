include("../AWSCorePrototypeServices.jl")
using .Services: sms

"""
    LaunchApp()

Launches the specified application as a stack in AWS CloudFormation.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

LaunchApp() = sms("LaunchApp")
LaunchApp(args) = sms("LaunchApp", args)

"""
    GetServers()

Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.

Optional Parameters
{
  "vmServerAddressList": "The server addresses.",
  "maxResults": "The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.",
  "nextToken": "The token for the next set of results."
}
"""

GetServers() = sms("GetServers")
GetServers(args) = sms("GetServers", args)

"""
    GetAppValidationOutput()

Retrieves output from validating an application.

Required Parameters
{
  "appId": "The ID of the application."
}
"""
GetAppValidationOutput(args) = sms("GetAppValidationOutput", args)

"""
    GetAppLaunchConfiguration()

Retrieves the application launch configuration associated with the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

GetAppLaunchConfiguration() = sms("GetAppLaunchConfiguration")
GetAppLaunchConfiguration(args) = sms("GetAppLaunchConfiguration", args)

"""
    GetReplicationJobs()

Describes the specified replication job or all of your replication jobs.

Optional Parameters
{
  "maxResults": "The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.",
  "nextToken": "The token for the next set of results.",
  "replicationJobId": "The ID of the replication job."
}
"""

GetReplicationJobs() = sms("GetReplicationJobs")
GetReplicationJobs(args) = sms("GetReplicationJobs", args)

"""
    PutAppReplicationConfiguration()

Creates or updates the replication configuration for the specified application.

Optional Parameters
{
  "appId": "The ID of the application.",
  "serverGroupReplicationConfigurations": "Information about the replication configurations for server groups in the application."
}
"""

PutAppReplicationConfiguration() = sms("PutAppReplicationConfiguration")
PutAppReplicationConfiguration(args) = sms("PutAppReplicationConfiguration", args)

"""
    DeleteServerCatalog()

Deletes all servers from your server catalog.
"""

DeleteServerCatalog() = sms("DeleteServerCatalog")
DeleteServerCatalog(args) = sms("DeleteServerCatalog", args)

"""
    ImportServerCatalog()

Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
"""

ImportServerCatalog() = sms("ImportServerCatalog")
ImportServerCatalog(args) = sms("ImportServerCatalog", args)

"""
    ImportAppCatalog()

Allows application import from AWS Migration Hub.

Optional Parameters
{
  "roleName": "The name of the service role. If you omit this parameter, we create a service-linked role for AWS Migration Hub in your account. Otherwise, the role that you provide must have the policy and trust policy described in the AWS Migration Hub User Guide."
}
"""

ImportAppCatalog() = sms("ImportAppCatalog")
ImportAppCatalog(args) = sms("ImportAppCatalog", args)

"""
    DeleteApp()

Deletes the specified application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.

Optional Parameters
{
  "appId": "The ID of the application.",
  "forceTerminateApp": "Indicates whether to terminate the stack corresponding to the application while deleting the application.",
  "forceStopAppReplication": "Indicates whether to stop all replication jobs corresponding to the servers in the application while deleting the application."
}
"""

DeleteApp() = sms("DeleteApp")
DeleteApp(args) = sms("DeleteApp", args)

"""
    StartOnDemandReplicationRun()

Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.

Required Parameters
{
  "replicationJobId": "The ID of the replication job."
}

Optional Parameters
{
  "description": "The description of the replication run."
}
"""
StartOnDemandReplicationRun(args) = sms("StartOnDemandReplicationRun", args)

"""
    StartAppReplication()

Starts replicating the specified application by creating replication jobs for each server in the application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

StartAppReplication() = sms("StartAppReplication")
StartAppReplication(args) = sms("StartAppReplication", args)

"""
    NotifyAppValidationOutput()

Provides information to AWS SMS about whether application validation is successful.

Required Parameters
{
  "appId": "The ID of the application."
}

Optional Parameters
{
  "notificationContext": "The notification information."
}
"""
NotifyAppValidationOutput(args) = sms("NotifyAppValidationOutput", args)

"""
    ListApps()

Retrieves summaries for all applications.

Optional Parameters
{
  "maxResults": "The maximum number of results to return in a single call. The default value is 100. To retrieve the remaining results, make another call with the returned NextToken value. ",
  "nextToken": "The token for the next set of results.",
  "appIds": "The unique application IDs."
}
"""

ListApps() = sms("ListApps")
ListApps(args) = sms("ListApps", args)

"""
    GetReplicationRuns()

Describes the replication runs for the specified replication job.

Required Parameters
{
  "replicationJobId": "The ID of the replication job."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.",
  "nextToken": "The token for the next set of results."
}
"""
GetReplicationRuns(args) = sms("GetReplicationRuns", args)

"""
    DeleteAppValidationConfiguration()

Deletes the validation configuration for the specified application.

Required Parameters
{
  "appId": "The ID of the application."
}
"""
DeleteAppValidationConfiguration(args) = sms("DeleteAppValidationConfiguration", args)

"""
    PutAppLaunchConfiguration()

Creates or updates the launch configuration for the specified application.

Optional Parameters
{
  "appId": "The ID of the application.",
  "serverGroupLaunchConfigurations": "Information about the launch configurations for server groups in the application.",
  "roleName": "The name of service role in the customer's account that AWS CloudFormation uses to launch the application.",
  "autoLaunch": "Indicates whether the application is configured to launch automatically after replication is complete."
}
"""

PutAppLaunchConfiguration() = sms("PutAppLaunchConfiguration")
PutAppLaunchConfiguration(args) = sms("PutAppLaunchConfiguration", args)

"""
    DeleteAppReplicationConfiguration()

Deletes the replication configuration for the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

DeleteAppReplicationConfiguration() = sms("DeleteAppReplicationConfiguration")
DeleteAppReplicationConfiguration(args) = sms("DeleteAppReplicationConfiguration", args)

"""
    CreateReplicationJob()

Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).

Required Parameters
{
  "seedReplicationTime": "The seed replication time.",
  "serverId": "The ID of the server."
}

Optional Parameters
{
  "encrypted": "Indicates whether the replication job produces encrypted AMIs.",
  "roleName": "The name of the IAM role to be used by the AWS SMS.",
  "numberOfRecentAmisToKeep": "The maximum number of SMS-created AMIs to retain. The oldest is deleted after the maximum number is reached and a new AMI is created.",
  "licenseType": "The license type to be used for the AMI created by a successful replication run.",
  "frequency": "The time between consecutive replication runs, in hours.",
  "kmsKeyId": "The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:   KMS key ID   KMS key alias   ARN referring to the KMS key ID   ARN referring to the KMS key alias    If encrypted is true but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used. ",
  "description": "The description of the replication job.",
  "runOnce": "Indicates whether to run the replication job one time."
}
"""
CreateReplicationJob(args) = sms("CreateReplicationJob", args)

"""
    UpdateApp()

Updates the specified application.

Optional Parameters
{
  "appId": "The ID of the application.",
  "name": "The new name of the application.",
  "roleName": "The name of the service role in the customer's account used by AWS SMS.",
  "serverGroups": "The server groups in the application to update.",
  "tags": "The tags to associate with the application.",
  "description": "The new description of the application."
}
"""

UpdateApp() = sms("UpdateApp")
UpdateApp(args) = sms("UpdateApp", args)

"""
    DeleteReplicationJob()

Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.

Required Parameters
{
  "replicationJobId": "The ID of the replication job."
}
"""
DeleteReplicationJob(args) = sms("DeleteReplicationJob", args)

"""
    DisassociateConnector()

Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.

Required Parameters
{
  "connectorId": "The ID of the connector."
}
"""
DisassociateConnector(args) = sms("DisassociateConnector", args)

"""
    GetAppReplicationConfiguration()

Retrieves the application replication configuration associated with the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

GetAppReplicationConfiguration() = sms("GetAppReplicationConfiguration")
GetAppReplicationConfiguration(args) = sms("GetAppReplicationConfiguration", args)

"""
    CreateApp()

Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.

Optional Parameters
{
  "name": "The name of the new application.",
  "roleName": "The name of the service role in the customer's account to be used by AWS SMS.",
  "clientToken": "A unique, case-sensitive identifier that you provide to ensure the idempotency of application creation.",
  "serverGroups": "The server groups to include in the application.",
  "tags": "The tags to be associated with the application.",
  "description": "The description of the new application"
}
"""

CreateApp() = sms("CreateApp")
CreateApp(args) = sms("CreateApp", args)

"""
    GenerateChangeSet()

Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.

Optional Parameters
{
  "appId": "The ID of the application associated with the change set.",
  "changesetFormat": "The format for the change set."
}
"""

GenerateChangeSet() = sms("GenerateChangeSet")
GenerateChangeSet(args) = sms("GenerateChangeSet", args)

"""
    StopAppReplication()

Stops replicating the specified application by deleting the replication job for each server in the application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

StopAppReplication() = sms("StopAppReplication")
StopAppReplication(args) = sms("StopAppReplication", args)

"""
    DeleteAppLaunchConfiguration()

Deletes the launch configuration for the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

DeleteAppLaunchConfiguration() = sms("DeleteAppLaunchConfiguration")
DeleteAppLaunchConfiguration(args) = sms("DeleteAppLaunchConfiguration", args)

"""
    GenerateTemplate()

Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.

Optional Parameters
{
  "appId": "The ID of the application associated with the AWS CloudFormation template.",
  "templateFormat": "The format for generating the AWS CloudFormation template."
}
"""

GenerateTemplate() = sms("GenerateTemplate")
GenerateTemplate(args) = sms("GenerateTemplate", args)

"""
    GetAppValidationConfiguration()

Retrieves information about a configuration for validating an application.

Required Parameters
{
  "appId": "The ID of the application."
}
"""
GetAppValidationConfiguration(args) = sms("GetAppValidationConfiguration", args)

"""
    PutAppValidationConfiguration()

Creates or updates a validation configuration for the specified application.

Required Parameters
{
  "appId": "The ID of the application."
}

Optional Parameters
{
  "appValidationConfigurations": "The configuration for application validation.",
  "serverGroupValidationConfigurations": "The configuration for instance validation."
}
"""
PutAppValidationConfiguration(args) = sms("PutAppValidationConfiguration", args)

"""
    TerminateApp()

Terminates the stack for the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

TerminateApp() = sms("TerminateApp")
TerminateApp(args) = sms("TerminateApp", args)

"""
    StartOnDemandAppReplication()

Starts an on-demand replication run for the specified application.

Required Parameters
{
  "appId": "The ID of the application."
}

Optional Parameters
{
  "description": "The description of the replication run."
}
"""
StartOnDemandAppReplication(args) = sms("StartOnDemandAppReplication", args)

"""
    GetApp()

Retrieve information about the specified application.

Optional Parameters
{
  "appId": "The ID of the application."
}
"""

GetApp() = sms("GetApp")
GetApp(args) = sms("GetApp", args)

"""
    GetConnectors()

Describes the connectors registered with the AWS SMS.

Optional Parameters
{
  "maxResults": "The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.",
  "nextToken": "The token for the next set of results."
}
"""

GetConnectors() = sms("GetConnectors")
GetConnectors(args) = sms("GetConnectors", args)

"""
    UpdateReplicationJob()

Updates the specified settings for the specified replication job.

Required Parameters
{
  "replicationJobId": "The ID of the replication job."
}

Optional Parameters
{
  "nextReplicationRunStartTime": "The start time of the next replication run.",
  "roleName": "The name of the IAM role to be used by AWS SMS.",
  "numberOfRecentAmisToKeep": "The maximum number of SMS-created AMIs to retain. The oldest is deleted after the maximum number is reached and a new AMI is created.",
  "licenseType": "The license type to be used for the AMI created by a successful replication run.",
  "frequency": "The time between consecutive replication runs, in hours.",
  "encrypted": "When true, the replication job produces encrypted AMIs. For more information, KmsKeyId.",
  "kmsKeyId": "The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:   KMS key ID   KMS key alias   ARN referring to the KMS key ID   ARN referring to the KMS key alias   If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.",
  "description": "The description of the replication job."
}
"""
UpdateReplicationJob(args) = sms("UpdateReplicationJob", args)
