include("../AWSCorePrototypeServices.jl")
using .Services: sms

"""
Launches an application stack.
"""
LaunchApp() = sms("LaunchApp")

"""
Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
"""
GetServers() = sms("GetServers")

"""
Retrieves the application launch configuration associated with an application.
"""
GetAppLaunchConfiguration() = sms("GetAppLaunchConfiguration")

"""
Describes the specified replication job or all of your replication jobs.
"""
GetReplicationJobs() = sms("GetReplicationJobs")

"""
Creates or updates a replication configuration for an application.
"""
PutAppReplicationConfiguration() = sms("PutAppReplicationConfiguration")

"""
Deletes all servers from your server catalog.
"""
DeleteServerCatalog() = sms("DeleteServerCatalog")

"""
Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers that you want to import. This call returns immediately, but might take additional time to retrieve all the servers.
"""
ImportServerCatalog() = sms("ImportServerCatalog")

"""
Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs you can request in a 24-hour period.

Required Parameters:
replicationJobId
"""
StartOnDemandReplicationRun(args) = sms("StartOnDemandReplicationRun", args)

"""
Deletes an existing application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
"""
DeleteApp() = sms("DeleteApp")

"""
Starts replicating an application.
"""
StartAppReplication() = sms("StartAppReplication")

"""
Returns a list of summaries for all applications.
"""
ListApps() = sms("ListApps")

"""
Describes the replication runs for the specified replication job.

Required Parameters:
replicationJobId
"""
GetReplicationRuns(args) = sms("GetReplicationRuns", args)

"""
Creates a launch configuration for an application.
"""
PutAppLaunchConfiguration() = sms("PutAppLaunchConfiguration")

"""
Deletes existing replication configuration for an application.
"""
DeleteAppReplicationConfiguration() = sms("DeleteAppReplicationConfiguration")

"""
Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).

Required Parameters:
serverId, seedReplicationTime
"""
CreateReplicationJob(args) = sms("CreateReplicationJob", args)

"""
Updates an application.
"""
UpdateApp() = sms("UpdateApp")

"""
Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.

Required Parameters:
replicationJobId
"""
DeleteReplicationJob(args) = sms("DeleteReplicationJob", args)

"""
Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.

Required Parameters:
connectorId
"""
DisassociateConnector(args) = sms("DisassociateConnector", args)

"""
Retrieves an application replication configuration associatd with an application.
"""
GetAppReplicationConfiguration() = sms("GetAppReplicationConfiguration")

"""
Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
"""
CreateApp() = sms("CreateApp")

"""
Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
"""
GenerateChangeSet() = sms("GenerateChangeSet")

"""
Stops replicating an application.
"""
StopAppReplication() = sms("StopAppReplication")

"""
Deletes existing launch configuration for an application.
"""
DeleteAppLaunchConfiguration() = sms("DeleteAppLaunchConfiguration")

"""
Generates an Amazon CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
"""
GenerateTemplate() = sms("GenerateTemplate")

"""
Terminates the stack for an application.
"""
TerminateApp() = sms("TerminateApp")

"""
Retrieve information about an application.
"""
GetApp() = sms("GetApp")

"""
Describes the connectors registered with the AWS SMS.
"""
GetConnectors() = sms("GetConnectors")

"""
Updates the specified settings for the specified replication job.

Required Parameters:
replicationJobId
"""
UpdateReplicationJob(args) = sms("UpdateReplicationJob", args)
