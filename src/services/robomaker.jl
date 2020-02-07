include("../AWSCorePrototypeServices.jl")
using .Services: robomaker

"""
Describes a robot application.
"""
DescribeRobotApplication(application) = robomaker("POST", "/describeRobotApplication")
DescribeRobotApplication(application, args) = robomaker("POST", "/describeRobotApplication", args)
DescribeRobotApplication(a...; b...) = DescribeRobotApplication(a..., b)

"""
Lists all tags on a AWS RoboMaker resource.
"""
ListTagsForResource(resourceArn) = robomaker("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = robomaker("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Returns a list of robots. You can optionally provide filters to retrieve specific robots.
"""
ListRobots() = robomaker("POST", "/listRobots")
ListRobots(, args) = robomaker("POST", "/listRobots", args)
ListRobots(a...; b...) = ListRobots(a..., b)

"""
Describes a deployment job.
"""
DescribeDeploymentJob(job) = robomaker("POST", "/describeDeploymentJob")
DescribeDeploymentJob(job, args) = robomaker("POST", "/describeDeploymentJob", args)
DescribeDeploymentJob(a...; b...) = DescribeDeploymentJob(a..., b)

"""
Creates a robot.
"""
CreateRobot(name, architecture, greengrassGroupId) = robomaker("POST", "/createRobot")
CreateRobot(name, architecture, greengrassGroupId, args) = robomaker("POST", "/createRobot", args)
CreateRobot(a...; b...) = CreateRobot(a..., b)

"""
Creates a version of a robot application.
"""
CreateRobotApplicationVersion(application) = robomaker("POST", "/createRobotApplicationVersion")
CreateRobotApplicationVersion(application, args) = robomaker("POST", "/createRobotApplicationVersion", args)
CreateRobotApplicationVersion(a...; b...) = CreateRobotApplicationVersion(a..., b)

"""
Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  
"""
CreateSimulationJob(maxJobDurationInSeconds, iamRole) = robomaker("POST", "/createSimulationJob")
CreateSimulationJob(maxJobDurationInSeconds, iamRole, args) = robomaker("POST", "/createSimulationJob", args)
CreateSimulationJob(a...; b...) = CreateSimulationJob(a..., b)

"""
Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
"""
ListSimulationApplications() = robomaker("POST", "/listSimulationApplications")
ListSimulationApplications(, args) = robomaker("POST", "/listSimulationApplications", args)
ListSimulationApplications(a...; b...) = ListSimulationApplications(a..., b)

"""
Describes one or more simulation jobs.
"""
BatchDescribeSimulationJob(jobs) = robomaker("POST", "/batchDescribeSimulationJob")
BatchDescribeSimulationJob(jobs, args) = robomaker("POST", "/batchDescribeSimulationJob", args)
BatchDescribeSimulationJob(a...; b...) = BatchDescribeSimulationJob(a..., b)

"""
Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
"""
ListRobotApplications() = robomaker("POST", "/listRobotApplications")
ListRobotApplications(, args) = robomaker("POST", "/listRobotApplications", args)
ListRobotApplications(a...; b...) = ListRobotApplications(a..., b)

"""
Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
"""
SyncDeploymentJob(clientRequestToken, fleet) = robomaker("POST", "/syncDeploymentJob")
SyncDeploymentJob(clientRequestToken, fleet, args) = robomaker("POST", "/syncDeploymentJob", args)
SyncDeploymentJob(a...; b...) = SyncDeploymentJob(a..., b)

"""
Describes a fleet.
"""
DescribeFleet(fleet) = robomaker("POST", "/describeFleet")
DescribeFleet(fleet, args) = robomaker("POST", "/describeFleet", args)
DescribeFleet(a...; b...) = DescribeFleet(a..., b)

"""
Cancels the specified deployment job.
"""
CancelDeploymentJob(job) = robomaker("POST", "/cancelDeploymentJob")
CancelDeploymentJob(job, args) = robomaker("POST", "/cancelDeploymentJob", args)
CancelDeploymentJob(a...; b...) = CancelDeploymentJob(a..., b)

"""
Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.     
"""
ListDeploymentJobs() = robomaker("POST", "/listDeploymentJobs")
ListDeploymentJobs(, args) = robomaker("POST", "/listDeploymentJobs", args)
ListDeploymentJobs(a...; b...) = ListDeploymentJobs(a..., b)

"""
Deletes a simulation application.
"""
DeleteSimulationApplication(application) = robomaker("POST", "/deleteSimulationApplication")
DeleteSimulationApplication(application, args) = robomaker("POST", "/deleteSimulationApplication", args)
DeleteSimulationApplication(a...; b...) = DeleteSimulationApplication(a..., b)

"""
Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
"""
ListFleets() = robomaker("POST", "/listFleets")
ListFleets(, args) = robomaker("POST", "/listFleets", args)
ListFleets(a...; b...) = ListFleets(a..., b)

"""
Deletes a robot.
"""
DeleteRobot(robot) = robomaker("POST", "/deleteRobot")
DeleteRobot(robot, args) = robomaker("POST", "/deleteRobot", args)
DeleteRobot(a...; b...) = DeleteRobot(a..., b)

"""
Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
"""
ListSimulationJobs() = robomaker("POST", "/listSimulationJobs")
ListSimulationJobs(, args) = robomaker("POST", "/listSimulationJobs", args)
ListSimulationJobs(a...; b...) = ListSimulationJobs(a..., b)

"""
Restarts a running simulation job.
"""
RestartSimulationJob(job) = robomaker("POST", "/restartSimulationJob")
RestartSimulationJob(job, args) = robomaker("POST", "/restartSimulationJob", args)
RestartSimulationJob(a...; b...) = RestartSimulationJob(a..., b)

"""
Creates a robot application. 
"""
CreateRobotApplication(name, sources, robotSoftwareSuite) = robomaker("POST", "/createRobotApplication")
CreateRobotApplication(name, sources, robotSoftwareSuite, args) = robomaker("POST", "/createRobotApplication", args)
CreateRobotApplication(a...; b...) = CreateRobotApplication(a..., b)

"""
Cancels the specified simulation job.
"""
CancelSimulationJob(job) = robomaker("POST", "/cancelSimulationJob")
CancelSimulationJob(job, args) = robomaker("POST", "/cancelSimulationJob", args)
CancelSimulationJob(a...; b...) = CancelSimulationJob(a..., b)

"""
Registers a robot with a fleet.
"""
RegisterRobot(fleet, robot) = robomaker("POST", "/registerRobot")
RegisterRobot(fleet, robot, args) = robomaker("POST", "/registerRobot", args)
RegisterRobot(a...; b...) = RegisterRobot(a..., b)

"""
Deregisters a robot.
"""
DeregisterRobot(fleet, robot) = robomaker("POST", "/deregisterRobot")
DeregisterRobot(fleet, robot, args) = robomaker("POST", "/deregisterRobot", args)
DeregisterRobot(a...; b...) = DeregisterRobot(a..., b)

"""
Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 
"""
TagResource(resourceArn, tags) = robomaker("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = robomaker("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 
"""
UntagResource(resourceArn, tagKeys) = robomaker("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = robomaker("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Describes a simulation job.
"""
DescribeSimulationJob(job) = robomaker("POST", "/describeSimulationJob")
DescribeSimulationJob(job, args) = robomaker("POST", "/describeSimulationJob", args)
DescribeSimulationJob(a...; b...) = DescribeSimulationJob(a..., b)

"""
Creates a simulation application with a specific revision id.
"""
CreateSimulationApplicationVersion(application) = robomaker("POST", "/createSimulationApplicationVersion")
CreateSimulationApplicationVersion(application, args) = robomaker("POST", "/createSimulationApplicationVersion", args)
CreateSimulationApplicationVersion(a...; b...) = CreateSimulationApplicationVersion(a..., b)

"""
Deletes a fleet.
"""
DeleteFleet(fleet) = robomaker("POST", "/deleteFleet")
DeleteFleet(fleet, args) = robomaker("POST", "/deleteFleet", args)
DeleteFleet(a...; b...) = DeleteFleet(a..., b)

"""
Creates a simulation application.
"""
CreateSimulationApplication(name, sources, simulationSoftwareSuite, robotSoftwareSuite) = robomaker("POST", "/createSimulationApplication")
CreateSimulationApplication(name, sources, simulationSoftwareSuite, robotSoftwareSuite, args) = robomaker("POST", "/createSimulationApplication", args)
CreateSimulationApplication(a...; b...) = CreateSimulationApplication(a..., b)

"""
Updates a simulation application.
"""
UpdateSimulationApplication(application, sources, simulationSoftwareSuite, robotSoftwareSuite) = robomaker("POST", "/updateSimulationApplication")
UpdateSimulationApplication(application, sources, simulationSoftwareSuite, robotSoftwareSuite, args) = robomaker("POST", "/updateSimulationApplication", args)
UpdateSimulationApplication(a...; b...) = UpdateSimulationApplication(a..., b)

"""
Updates a robot application.
"""
UpdateRobotApplication(application, sources, robotSoftwareSuite) = robomaker("POST", "/updateRobotApplication")
UpdateRobotApplication(application, sources, robotSoftwareSuite, args) = robomaker("POST", "/updateRobotApplication", args)
UpdateRobotApplication(a...; b...) = UpdateRobotApplication(a..., b)

"""
Describes a robot.
"""
DescribeRobot(robot) = robomaker("POST", "/describeRobot")
DescribeRobot(robot, args) = robomaker("POST", "/describeRobot", args)
DescribeRobot(a...; b...) = DescribeRobot(a..., b)

"""
Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  
"""
CreateDeploymentJob(clientRequestToken, fleet, deploymentApplicationConfigs) = robomaker("POST", "/createDeploymentJob")
CreateDeploymentJob(clientRequestToken, fleet, deploymentApplicationConfigs, args) = robomaker("POST", "/createDeploymentJob", args)
CreateDeploymentJob(a...; b...) = CreateDeploymentJob(a..., b)

"""
Creates a fleet, a logical group of robots running the same robot application.
"""
CreateFleet(name) = robomaker("POST", "/createFleet")
CreateFleet(name, args) = robomaker("POST", "/createFleet", args)
CreateFleet(a...; b...) = CreateFleet(a..., b)

"""
Describes a simulation application.
"""
DescribeSimulationApplication(application) = robomaker("POST", "/describeSimulationApplication")
DescribeSimulationApplication(application, args) = robomaker("POST", "/describeSimulationApplication", args)
DescribeSimulationApplication(a...; b...) = DescribeSimulationApplication(a..., b)

"""
Deletes a robot application.
"""
DeleteRobotApplication(application) = robomaker("POST", "/deleteRobotApplication")
DeleteRobotApplication(application, args) = robomaker("POST", "/deleteRobotApplication", args)
DeleteRobotApplication(a...; b...) = DeleteRobotApplication(a..., b)
