include("../AWSCorePrototypeServices.jl")
using .Services: robomaker

"""
Describes a robot application.

Required Parameters:
application
"""
DescribeRobotApplication(args) = robomaker("POST", "/describeRobotApplication", args)

"""
Lists all tags on a AWS RoboMaker resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = robomaker("GET", "/tags/{resourceArn}", args)

"""
Returns a list of robots. You can optionally provide filters to retrieve specific robots.
"""
ListRobots() = robomaker("POST", "/listRobots")

"""
Describes a deployment job.

Required Parameters:
job
"""
DescribeDeploymentJob(args) = robomaker("POST", "/describeDeploymentJob", args)

"""
Creates a robot.

Required Parameters:
name, architecture, greengrassGroupId
"""
CreateRobot(args) = robomaker("POST", "/createRobot", args)

"""
Creates a version of a robot application.

Required Parameters:
application
"""
CreateRobotApplicationVersion(args) = robomaker("POST", "/createRobotApplicationVersion", args)

"""
Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  

Required Parameters:
maxJobDurationInSeconds, iamRole
"""
CreateSimulationJob(args) = robomaker("POST", "/createSimulationJob", args)

"""
Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
"""
ListSimulationApplications() = robomaker("POST", "/listSimulationApplications")

"""
Describes one or more simulation jobs.

Required Parameters:
jobs
"""
BatchDescribeSimulationJob(args) = robomaker("POST", "/batchDescribeSimulationJob", args)

"""
Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
"""
ListRobotApplications() = robomaker("POST", "/listRobotApplications")

"""
Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.

Required Parameters:
clientRequestToken, fleet
"""
SyncDeploymentJob(args) = robomaker("POST", "/syncDeploymentJob", args)

"""
Describes a fleet.

Required Parameters:
fleet
"""
DescribeFleet(args) = robomaker("POST", "/describeFleet", args)

"""
Cancels the specified deployment job.

Required Parameters:
job
"""
CancelDeploymentJob(args) = robomaker("POST", "/cancelDeploymentJob", args)

"""
Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.     
"""
ListDeploymentJobs() = robomaker("POST", "/listDeploymentJobs")

"""
Deletes a simulation application.

Required Parameters:
application
"""
DeleteSimulationApplication(args) = robomaker("POST", "/deleteSimulationApplication", args)

"""
Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
"""
ListFleets() = robomaker("POST", "/listFleets")

"""
Deletes a robot.

Required Parameters:
robot
"""
DeleteRobot(args) = robomaker("POST", "/deleteRobot", args)

"""
Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
"""
ListSimulationJobs() = robomaker("POST", "/listSimulationJobs")

"""
Restarts a running simulation job.

Required Parameters:
job
"""
RestartSimulationJob(args) = robomaker("POST", "/restartSimulationJob", args)

"""
Creates a robot application. 

Required Parameters:
name, sources, robotSoftwareSuite
"""
CreateRobotApplication(args) = robomaker("POST", "/createRobotApplication", args)

"""
Cancels the specified simulation job.

Required Parameters:
job
"""
CancelSimulationJob(args) = robomaker("POST", "/cancelSimulationJob", args)

"""
Registers a robot with a fleet.

Required Parameters:
fleet, robot
"""
RegisterRobot(args) = robomaker("POST", "/registerRobot", args)

"""
Deregisters a robot.

Required Parameters:
fleet, robot
"""
DeregisterRobot(args) = robomaker("POST", "/deregisterRobot", args)

"""
Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 

Required Parameters:
resourceArn, tags
"""
TagResource(args) = robomaker("POST", "/tags/{resourceArn}", args)

"""
Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = robomaker("DELETE", "/tags/{resourceArn}", args)

"""
Describes a simulation job.

Required Parameters:
job
"""
DescribeSimulationJob(args) = robomaker("POST", "/describeSimulationJob", args)

"""
Creates a simulation application with a specific revision id.

Required Parameters:
application
"""
CreateSimulationApplicationVersion(args) = robomaker("POST", "/createSimulationApplicationVersion", args)

"""
Deletes a fleet.

Required Parameters:
fleet
"""
DeleteFleet(args) = robomaker("POST", "/deleteFleet", args)

"""
Creates a simulation application.

Required Parameters:
name, sources, simulationSoftwareSuite, robotSoftwareSuite
"""
CreateSimulationApplication(args) = robomaker("POST", "/createSimulationApplication", args)

"""
Updates a simulation application.

Required Parameters:
application, sources, simulationSoftwareSuite, robotSoftwareSuite
"""
UpdateSimulationApplication(args) = robomaker("POST", "/updateSimulationApplication", args)

"""
Updates a robot application.

Required Parameters:
application, sources, robotSoftwareSuite
"""
UpdateRobotApplication(args) = robomaker("POST", "/updateRobotApplication", args)

"""
Describes a robot.

Required Parameters:
robot
"""
DescribeRobot(args) = robomaker("POST", "/describeRobot", args)

"""
Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  

Required Parameters:
clientRequestToken, fleet, deploymentApplicationConfigs
"""
CreateDeploymentJob(args) = robomaker("POST", "/createDeploymentJob", args)

"""
Creates a fleet, a logical group of robots running the same robot application.

Required Parameters:
name
"""
CreateFleet(args) = robomaker("POST", "/createFleet", args)

"""
Describes a simulation application.

Required Parameters:
application
"""
DescribeSimulationApplication(args) = robomaker("POST", "/describeSimulationApplication", args)

"""
Deletes a robot application.

Required Parameters:
application
"""
DeleteRobotApplication(args) = robomaker("POST", "/deleteRobotApplication", args)
