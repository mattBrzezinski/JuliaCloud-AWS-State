include("../AWSCorePrototypeServices.jl")
using .Services: robomaker

"""
    DeleteWorldTemplate()

Deletes a world template.

Required Parameters
{
  "template": "The Amazon Resource Name (arn) of the world template you want to delete."
}
"""
DeleteWorldTemplate(args) = robomaker("POST", "/deleteWorldTemplate", args)

"""
    DescribeDeploymentJob()

Describes a deployment job.

Required Parameters
{
  "job": "The Amazon Resource Name (ARN) of the deployment job."
}
"""
DescribeDeploymentJob(args) = robomaker("POST", "/describeDeploymentJob", args)

"""
    ListWorlds()

Lists worlds.

Optional Parameters
{
  "filters": "Optional filters to limit results. You can use status.",
  "maxResults": "When this parameter is used, ListWorlds only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListWorlds request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListWorlds returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListWorlds again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListWorlds() = robomaker("POST", "/listWorlds")
ListWorlds(args) = robomaker("POST", "/listWorlds", args)

"""
    DescribeWorldExportJob()

Describes a world export job.

Required Parameters
{
  "job": "The Amazon Resource Name (arn) of the world export job to describe."
}
"""
DescribeWorldExportJob(args) = robomaker("POST", "/describeWorldExportJob", args)

"""
    TagResource()

Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.",
  "tags": "A map that contains tag keys and tag values that are attached to the resource."
}
"""
TagResource(args) = robomaker("POST", "/tags/{resourceArn}", args)

"""
    CancelSimulationJob()

Cancels the specified simulation job.

Required Parameters
{
  "job": "The simulation job ARN to cancel."
}
"""
CancelSimulationJob(args) = robomaker("POST", "/cancelSimulationJob", args)

"""
    CancelWorldExportJob()

Cancels the specified export job.

Required Parameters
{
  "job": "The Amazon Resource Name (arn) of the world export job to cancel."
}
"""
CancelWorldExportJob(args) = robomaker("POST", "/cancelWorldExportJob", args)

"""
    CreateSimulationApplicationVersion()

Creates a simulation application with a specific revision id.

Required Parameters
{
  "application": "The application information for the simulation application."
}

Optional Parameters
{
  "currentRevisionId": "The current revision id for the simulation application. If you provide a value and it matches the latest revision ID, a new version will be created."
}
"""
CreateSimulationApplicationVersion(args) = robomaker("POST", "/createSimulationApplicationVersion", args)

"""
    CreateWorldExportJob()

Creates a world export job.

Required Parameters
{
  "outputLocation": "",
  "iamRole": "The IAM role that the world export process uses to access the Amazon S3 bucket and put the export.",
  "worlds": "A list of Amazon Resource Names (arns) that correspond to worlds to export."
}

Optional Parameters
{
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "tags": "A map that contains tag keys and tag values that are attached to the world export job."
}
"""
CreateWorldExportJob(args) = robomaker("POST", "/createWorldExportJob", args)

"""
    DescribeWorldGenerationJob()

Describes a world generation job.

Required Parameters
{
  "job": "The Amazon Resource Name (arn) of the world generation job to describe."
}
"""
DescribeWorldGenerationJob(args) = robomaker("POST", "/describeWorldGenerationJob", args)

"""
    ListWorldExportJobs()

Lists world export jobs.

Optional Parameters
{
  "filters": "Optional filters to limit results. You can use generationJobId and templateId.",
  "maxResults": "When this parameter is used, ListWorldExportJobs only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListWorldExportJobs request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListWorldExportJobs returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListWorldExportJobs again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListWorldExportJobs() = robomaker("POST", "/listWorldExportJobs")
ListWorldExportJobs(args) = robomaker("POST", "/listWorldExportJobs", args)

"""
    DescribeRobot()

Describes a robot.

Required Parameters
{
  "robot": "The Amazon Resource Name (ARN) of the robot to be described."
}
"""
DescribeRobot(args) = robomaker("POST", "/describeRobot", args)

"""
    CreateFleet()

Creates a fleet, a logical group of robots running the same robot application.

Required Parameters
{
  "name": "The name of the fleet."
}

Optional Parameters
{
  "tags": "A map that contains tag keys and tag values that are attached to the fleet."
}
"""
CreateFleet(args) = robomaker("POST", "/createFleet", args)

"""
    DescribeSimulationApplication()

Describes a simulation application.

Required Parameters
{
  "application": "The application information for the simulation application."
}

Optional Parameters
{
  "applicationVersion": "The version of the simulation application to describe."
}
"""
DescribeSimulationApplication(args) = robomaker("POST", "/describeSimulationApplication", args)

"""
    DeleteRobotApplication()

Deletes a robot application.

Required Parameters
{
  "application": "The Amazon Resource Name (ARN) of the the robot application."
}

Optional Parameters
{
  "applicationVersion": "The version of the robot application to delete."
}
"""
DeleteRobotApplication(args) = robomaker("POST", "/deleteRobotApplication", args)

"""
    CancelSimulationJobBatch()

Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch. 

Required Parameters
{
  "batch": "The id of the batch to cancel."
}
"""
CancelSimulationJobBatch(args) = robomaker("POST", "/cancelSimulationJobBatch", args)

"""
    BatchDeleteWorlds()

Deletes one or more worlds in a batch operation.

Required Parameters
{
  "worlds": "A list of Amazon Resource Names (arns) that correspond to worlds to delete."
}
"""
BatchDeleteWorlds(args) = robomaker("POST", "/batchDeleteWorlds", args)

"""
    ListSimulationApplications()

Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 

Optional Parameters
{
  "filters": "Optional list of filters to limit results. The filter name name is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.",
  "maxResults": "When this parameter is used, ListSimulationApplications only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListSimulationApplications request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListSimulationApplications returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListSimulationApplications again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. ",
  "versionQualifier": "The version qualifier of the simulation application."
}
"""

ListSimulationApplications() = robomaker("POST", "/listSimulationApplications")
ListSimulationApplications(args) = robomaker("POST", "/listSimulationApplications", args)

"""
    ListRobotApplications()

Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.

Optional Parameters
{
  "filters": "Optional filters to limit results. The filter name name is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.",
  "maxResults": "When this parameter is used, ListRobotApplications only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListRobotApplications request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListRobotApplications returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListRobotApplications again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. ",
  "versionQualifier": "The version qualifier of the robot application."
}
"""

ListRobotApplications() = robomaker("POST", "/listRobotApplications")
ListRobotApplications(args) = robomaker("POST", "/listRobotApplications", args)

"""
    ListFleets()

Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 

Optional Parameters
{
  "filters": "Optional filters to limit results. The filter name name is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.",
  "maxResults": "When this parameter is used, ListFleets only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListFleets request with the returned nextToken value. This value can be between 1 and 200. If this parameter is not used, then ListFleets returns up to 200 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListFleets again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null.   This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. "
}
"""

ListFleets() = robomaker("POST", "/listFleets")
ListFleets(args) = robomaker("POST", "/listFleets", args)

"""
    UntagResource()

Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 

Required Parameters
{
  "resourceArn": "The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing tags.",
  "tagKeys": "A map that contains tag keys and tag values that will be unattached from the resource."
}
"""
UntagResource(args) = robomaker("DELETE", "/tags/{resourceArn}", args)

"""
    StartSimulationJobBatch()

Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects. 

Required Parameters
{
  "createSimulationJobRequests": "A list of simulation job requests to create in the batch."
}

Optional Parameters
{
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "batchPolicy": "The batch policy.",
  "tags": "A map that contains tag keys and tag values that are attached to the deployment job batch."
}
"""
StartSimulationJobBatch(args) = robomaker("POST", "/startSimulationJobBatch", args)

"""
    UpdateRobotApplication()

Updates a robot application.

Required Parameters
{
  "application": "The application information for the robot application.",
  "sources": "The sources of the robot application.",
  "robotSoftwareSuite": "The robot software suite (ROS distribution) used by the robot application."
}

Optional Parameters
{
  "currentRevisionId": "The revision id for the robot application."
}
"""
UpdateRobotApplication(args) = robomaker("POST", "/updateRobotApplication", args)

"""
    ListSimulationJobBatches()

Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs. 

Optional Parameters
{
  "filters": "Optional filters to limit results.",
  "maxResults": "When this parameter is used, ListSimulationJobBatches only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListSimulationJobBatches request with the returned nextToken value. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListSimulationJobBatches again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListSimulationJobBatches() = robomaker("POST", "/listSimulationJobBatches")
ListSimulationJobBatches(args) = robomaker("POST", "/listSimulationJobBatches", args)

"""
    CreateDeploymentJob()

Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  

Required Parameters
{
  "fleet": "The Amazon Resource Name (ARN) of the fleet to deploy.",
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "deploymentApplicationConfigs": "The deployment application configuration."
}

Optional Parameters
{
  "deploymentConfig": "The requested deployment configuration.",
  "tags": "A map that contains tag keys and tag values that are attached to the deployment job."
}
"""
CreateDeploymentJob(args) = robomaker("POST", "/createDeploymentJob", args)

"""
    DescribeRobotApplication()

Describes a robot application.

Required Parameters
{
  "application": "The Amazon Resource Name (ARN) of the robot application."
}

Optional Parameters
{
  "applicationVersion": "The version of the robot application to describe."
}
"""
DescribeRobotApplication(args) = robomaker("POST", "/describeRobotApplication", args)

"""
    ListTagsForResource()

Lists all tags on a AWS RoboMaker resource.

Required Parameters
{
  "resourceArn": "The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed."
}
"""
ListTagsForResource(args) = robomaker("GET", "/tags/{resourceArn}", args)

"""
    CreateSimulationJob()

Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  

Required Parameters
{
  "maxJobDurationInSeconds": "The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When maxJobDurationInSeconds is reached, the simulation job will status will transition to Completed.",
  "iamRole": "The IAM role name that allows the simulation instance to call the AWS APIs that are specified in its associated policies on your behalf. This is how credentials are passed in to your simulation job. "
}

Optional Parameters
{
  "simulationApplications": "The simulation application to use in the simulation job.",
  "robotApplications": "The robot application to use in the simulation job.",
  "vpcConfig": "If your simulation job accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID. ",
  "compute": "Compute information for the simulation job.",
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "failureBehavior": "The failure behavior the simulation job.  Continue  Restart the simulation job in the same host instance.  Fail  Stop the simulation job and terminate the instance.  ",
  "outputLocation": "Location for output files generated by the simulation job.",
  "tags": "A map that contains tag keys and tag values that are attached to the simulation job.",
  "dataSources": "Specify data sources to mount read-only files from S3 into your simulation. These files are available under /opt/robomaker/datasources/data_source_name.   There is a limit of 100 files and a combined size of 25GB for all DataSourceConfig objects.  ",
  "loggingConfig": "The logging configuration."
}
"""
CreateSimulationJob(args) = robomaker("POST", "/createSimulationJob", args)

"""
    DescribeFleet()

Describes a fleet.

Required Parameters
{
  "fleet": "The Amazon Resource Name (ARN) of the fleet."
}
"""
DescribeFleet(args) = robomaker("POST", "/describeFleet", args)

"""
    ListSimulationJobs()

Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 

Optional Parameters
{
  "filters": "Optional filters to limit results. The filter names status and simulationApplicationName and robotApplicationName are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status Preparing or the status Running.",
  "maxResults": "When this parameter is used, ListSimulationJobs only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListSimulationJobs request with the returned nextToken value. This value can be between 1 and 1000. If this parameter is not used, then ListSimulationJobs returns up to 1000 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListSimulationJobs again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListSimulationJobs() = robomaker("POST", "/listSimulationJobs")
ListSimulationJobs(args) = robomaker("POST", "/listSimulationJobs", args)

"""
    RegisterRobot()

Registers a robot with a fleet.

Required Parameters
{
  "robot": "The Amazon Resource Name (ARN) of the robot.",
  "fleet": "The Amazon Resource Name (ARN) of the fleet."
}
"""
RegisterRobot(args) = robomaker("POST", "/registerRobot", args)

"""
    ListWorldTemplates()

Lists world templates.

Optional Parameters
{
  "maxResults": "When this parameter is used, ListWorldTemplates only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListWorldTemplates request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListWorldTemplates returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListWorldTemplates again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListWorldTemplates() = robomaker("POST", "/listWorldTemplates")
ListWorldTemplates(args) = robomaker("POST", "/listWorldTemplates", args)

"""
    UpdateSimulationApplication()

Updates a simulation application.

Required Parameters
{
  "application": "The application information for the simulation application.",
  "simulationSoftwareSuite": "The simulation software suite used by the simulation application.",
  "sources": "The sources of the simulation application.",
  "robotSoftwareSuite": "Information about the robot software suite (ROS distribution)."
}

Optional Parameters
{
  "currentRevisionId": "The revision id for the robot application.",
  "renderingEngine": "The rendering engine for the simulation application."
}
"""
UpdateSimulationApplication(args) = robomaker("POST", "/updateSimulationApplication", args)

"""
    DeleteFleet()

Deletes a fleet.

Required Parameters
{
  "fleet": "The Amazon Resource Name (ARN) of the fleet."
}
"""
DeleteFleet(args) = robomaker("POST", "/deleteFleet", args)

"""
    CreateSimulationApplication()

Creates a simulation application.

Required Parameters
{
  "name": "The name of the simulation application.",
  "simulationSoftwareSuite": "The simulation software suite used by the simulation application.",
  "sources": "The sources of the simulation application.",
  "robotSoftwareSuite": "The robot software suite (ROS distribution) used by the simulation application."
}

Optional Parameters
{
  "renderingEngine": "The rendering engine for the simulation application.",
  "tags": "A map that contains tag keys and tag values that are attached to the simulation application."
}
"""
CreateSimulationApplication(args) = robomaker("POST", "/createSimulationApplication", args)

"""
    DescribeWorldTemplate()

Describes a world template.

Required Parameters
{
  "template": "The Amazon Resource Name (arn) of the world template you want to describe."
}
"""
DescribeWorldTemplate(args) = robomaker("POST", "/describeWorldTemplate", args)

"""
    ListRobots()

Returns a list of robots. You can optionally provide filters to retrieve specific robots.

Optional Parameters
{
  "filters": "Optional filters to limit results. The filter names status and fleetName are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status Registered or the status Available.",
  "maxResults": "When this parameter is used, ListRobots only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListRobots request with the returned nextToken value. This value can be between 1 and 200. If this parameter is not used, then ListRobots returns up to 200 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListRobots again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListRobots() = robomaker("POST", "/listRobots")
ListRobots(args) = robomaker("POST", "/listRobots", args)

"""
    CreateRobot()

Creates a robot.

Required Parameters
{
  "name": "The name for the robot.",
  "architecture": "The target architecture of the robot.",
  "greengrassGroupId": "The Greengrass group id."
}

Optional Parameters
{
  "tags": "A map that contains tag keys and tag values that are attached to the robot."
}
"""
CreateRobot(args) = robomaker("POST", "/createRobot", args)

"""
    ListWorldGenerationJobs()

Lists world generator jobs.

Optional Parameters
{
  "filters": "Optional filters to limit results. You can use status and templateId.",
  "maxResults": "When this parameter is used, ListWorldGeneratorJobs only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListWorldGeneratorJobs request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListWorldGeneratorJobs returns up to 100 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListWorldGenerationJobsRequest again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListWorldGenerationJobs() = robomaker("POST", "/listWorldGenerationJobs")
ListWorldGenerationJobs(args) = robomaker("POST", "/listWorldGenerationJobs", args)

"""
    GetWorldTemplateBody()

Gets the world template body.

Optional Parameters
{
  "template": "The Amazon Resource Name (arn) of the world template.",
  "generationJob": "The Amazon Resource Name (arn) of the world generator job."
}
"""

GetWorldTemplateBody() = robomaker("POST", "/getWorldTemplateBody")
GetWorldTemplateBody(args) = robomaker("POST", "/getWorldTemplateBody", args)

"""
    CreateRobotApplicationVersion()

Creates a version of a robot application.

Required Parameters
{
  "application": "The application information for the robot application."
}

Optional Parameters
{
  "currentRevisionId": "The current revision id for the robot application. If you provide a value and it matches the latest revision ID, a new version will be created."
}
"""
CreateRobotApplicationVersion(args) = robomaker("POST", "/createRobotApplicationVersion", args)

"""
    CreateWorldTemplate()

Creates a world template.

Optional Parameters
{
  "name": "The name of the world template.",
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "templateLocation": "The location of the world template.",
  "tags": "A map that contains tag keys and tag values that are attached to the world template.",
  "templateBody": "The world template body."
}
"""

CreateWorldTemplate() = robomaker("POST", "/createWorldTemplate")
CreateWorldTemplate(args) = robomaker("POST", "/createWorldTemplate", args)

"""
    BatchDescribeSimulationJob()

Describes one or more simulation jobs.

Required Parameters
{
  "jobs": "A list of Amazon Resource Names (ARNs) of simulation jobs to describe."
}
"""
BatchDescribeSimulationJob(args) = robomaker("POST", "/batchDescribeSimulationJob", args)

"""
    SyncDeploymentJob()

Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.

Required Parameters
{
  "fleet": "The target fleet for the synchronization.",
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request."
}
"""
SyncDeploymentJob(args) = robomaker("POST", "/syncDeploymentJob", args)

"""
    CancelDeploymentJob()

Cancels the specified deployment job.

Required Parameters
{
  "job": "The deployment job ARN to cancel."
}
"""
CancelDeploymentJob(args) = robomaker("POST", "/cancelDeploymentJob", args)

"""
    ListDeploymentJobs()

Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. 

Optional Parameters
{
  "filters": "Optional filters to limit results. The filter names status and fleetName are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status InProgress or the status Pending.",
  "maxResults": "When this parameter is used, ListDeploymentJobs only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListDeploymentJobs request with the returned nextToken value. This value can be between 1 and 200. If this parameter is not used, then ListDeploymentJobs returns up to 200 results and a nextToken value if applicable. ",
  "nextToken": "If the previous paginated request did not return all of the remaining results, the response object's nextToken parameter value is set to a token. To retrieve the next set of results, call ListDeploymentJobs again and assign that token to the request object's nextToken parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. "
}
"""

ListDeploymentJobs() = robomaker("POST", "/listDeploymentJobs")
ListDeploymentJobs(args) = robomaker("POST", "/listDeploymentJobs", args)

"""
    DeleteSimulationApplication()

Deletes a simulation application.

Required Parameters
{
  "application": "The application information for the simulation application to delete."
}

Optional Parameters
{
  "applicationVersion": "The version of the simulation application to delete."
}
"""
DeleteSimulationApplication(args) = robomaker("POST", "/deleteSimulationApplication", args)

"""
    RestartSimulationJob()

Restarts a running simulation job.

Required Parameters
{
  "job": "The Amazon Resource Name (ARN) of the simulation job."
}
"""
RestartSimulationJob(args) = robomaker("POST", "/restartSimulationJob", args)

"""
    DeleteRobot()

Deletes a robot.

Required Parameters
{
  "robot": "The Amazon Resource Name (ARN) of the robot."
}
"""
DeleteRobot(args) = robomaker("POST", "/deleteRobot", args)

"""
    CreateWorldGenerationJob()

Creates worlds using the specified template.

Required Parameters
{
  "template": "The Amazon Resource Name (arn) of the world template describing the worlds you want to create.",
  "worldCount": "Information about the world count."
}

Optional Parameters
{
  "clientRequestToken": "Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.",
  "tags": "A map that contains tag keys and tag values that are attached to the world generator job."
}
"""
CreateWorldGenerationJob(args) = robomaker("POST", "/createWorldGenerationJob", args)

"""
    CreateRobotApplication()

Creates a robot application. 

Required Parameters
{
  "name": "The name of the robot application.",
  "sources": "The sources of the robot application.",
  "robotSoftwareSuite": "The robot software suite (ROS distribuition) used by the robot application."
}

Optional Parameters
{
  "tags": "A map that contains tag keys and tag values that are attached to the robot application."
}
"""
CreateRobotApplication(args) = robomaker("POST", "/createRobotApplication", args)

"""
    DeregisterRobot()

Deregisters a robot.

Required Parameters
{
  "robot": "The Amazon Resource Name (ARN) of the robot.",
  "fleet": "The Amazon Resource Name (ARN) of the fleet."
}
"""
DeregisterRobot(args) = robomaker("POST", "/deregisterRobot", args)

"""
    DescribeSimulationJob()

Describes a simulation job.

Required Parameters
{
  "job": "The Amazon Resource Name (ARN) of the simulation job to be described."
}
"""
DescribeSimulationJob(args) = robomaker("POST", "/describeSimulationJob", args)

"""
    UpdateWorldTemplate()

Updates a world template.

Required Parameters
{
  "template": "The Amazon Resource Name (arn) of the world template to update."
}

Optional Parameters
{
  "name": "The name of the template.",
  "templateLocation": "The location of the world template.",
  "templateBody": "The world template body."
}
"""
UpdateWorldTemplate(args) = robomaker("POST", "/updateWorldTemplate", args)

"""
    DescribeSimulationJobBatch()

Describes a simulation job batch.

Required Parameters
{
  "batch": "The id of the batch to describe."
}
"""
DescribeSimulationJobBatch(args) = robomaker("POST", "/describeSimulationJobBatch", args)

"""
    CancelWorldGenerationJob()

Cancels the specified world generator job.

Required Parameters
{
  "job": "The Amazon Resource Name (arn) of the world generator job to cancel."
}
"""
CancelWorldGenerationJob(args) = robomaker("POST", "/cancelWorldGenerationJob", args)

"""
    DescribeWorld()

Describes a world.

Required Parameters
{
  "world": "The Amazon Resource Name (arn) of the world you want to describe."
}
"""
DescribeWorld(args) = robomaker("POST", "/describeWorld", args)
