include("../AWSCorePrototypeServices.jl")
using .Services: device_farm

"""
Gets information about a unique device type.

Required Parameters:
arn
"""
GetDevice(args) = device_farm("GetDevice", args)

"""
Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device where tests have not started. You are not billed for this device. On the device where tests have started, setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown, and any tests that were in progress or already completed.

Required Parameters:
arn
"""
StopJob(args) = device_farm("StopJob", args)

"""
Modifies the specified project name, given the project ARN and a new name.

Required Parameters:
arn
"""
UpdateProject(args) = device_farm("UpdateProject", args)

"""
Creates a device pool.

Required Parameters:
projectArn, name, rules
"""
CreateDevicePool(args) = device_farm("CreateDevicePool", args)

"""
Gets information about uploads, given an AWS Device Farm project ARN.

Required Parameters:
arn
"""
ListUploads(args) = device_farm("ListUploads", args)

"""
Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
"""
RenewOffering() = device_farm("RenewOffering")

"""
Deletes an upload given the upload ARN.

Required Parameters:
arn
"""
DeleteUpload(args) = device_farm("DeleteUpload", args)

"""
Returns information about the specified instance profile.

Required Parameters:
arn
"""
GetInstanceProfile(args) = device_farm("GetInstanceProfile", args)

"""
Returns information about a device instance that belongs to a private device fleet.

Required Parameters:
arn
"""
GetDeviceInstance(args) = device_farm("GetDeviceInstance", args)

"""
Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
"""
ListOfferingTransactions() = device_farm("ListOfferingTransactions")

"""
Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = device_farm("TagResource", args)

"""
Deletes an AWS Device Farm project, given the project ARN.  Deleting this resource does not stop an in-progress run.

Required Parameters:
arn
"""
DeleteProject(args) = device_farm("DeleteProject", args)

"""
Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.

Required Parameters:
arn
"""
DeleteDevicePool(args) = device_farm("DeleteDevicePool", args)

"""
Updates information about a private device instance.

Required Parameters:
arn
"""
UpdateDeviceInstance(args) = device_farm("UpdateDeviceInstance", args)

"""
Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).

Required Parameters:
arn
"""
UpdateDevicePool(args) = device_farm("UpdateDevicePool", args)

"""
Returns information about all the instance profiles in an AWS account.
"""
ListInstanceProfiles() = device_farm("ListInstanceProfiles")

"""
Uploads an app or test scripts.

Required Parameters:
projectArn, name, type
"""
CreateUpload(args) = device_farm("CreateUpload", args)

"""
Creates a Selenium testing project. Projects are used to track TestGridSession instances.

Required Parameters:
name
"""
CreateTestGridProject(args) = device_farm("CreateTestGridProject", args)

"""
Deletes a completed remote access session and its results.

Required Parameters:
arn
"""
DeleteRemoteAccessSession(args) = device_farm("DeleteRemoteAccessSession", args)

"""
Updates information about an existing private device instance profile.

Required Parameters:
arn
"""
UpdateInstanceProfile(args) = device_farm("UpdateInstanceProfile", args)

"""
Change details of a project.

Required Parameters:
projectArn
"""
UpdateTestGridProject(args) = device_farm("UpdateTestGridProject", args)

"""
Gets information about unique device types.
"""
ListDevices() = device_farm("ListDevices")

"""
Creates a network profile.

Required Parameters:
projectArn, name
"""
CreateNetworkProfile(args) = device_farm("CreateNetworkProfile", args)

"""
Returns information about the private device instances associated with one or more AWS accounts.
"""
ListDeviceInstances() = device_farm("ListDeviceInstances")

"""
Gets a list of all Selenium testing projects in your account.
"""
ListTestGridProjects() = device_farm("ListTestGridProjects")

"""
Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.

Required Parameters:
vpceConfigurationName, vpceServiceName, serviceDnsName
"""
CreateVPCEConfiguration(args) = device_farm("CreateVPCEConfiguration", args)

"""
Gets information about a device pool.

Required Parameters:
arn
"""
GetDevicePool(args) = device_farm("GetDevicePool", args)

"""
Creates a signed, short-term URL that can be passed to a Selenium RemoteWebDriver constructor.

Required Parameters:
projectArn, expiresInSeconds
"""
CreateTestGridUrl(args) = device_farm("CreateTestGridUrl", args)

"""
Gets information about a test.

Required Parameters:
arn
"""
GetTest(args) = device_farm("GetTest", args)

"""
Gets information about an upload.

Required Parameters:
arn
"""
GetUpload(args) = device_farm("GetUpload", args)

"""
Gets information about runs, given an AWS Device Farm project ARN.

Required Parameters:
arn
"""
ListRuns(args) = device_farm("ListRuns", args)

"""
Gets information about samples, given an AWS Device Farm job ARN.

Required Parameters:
arn
"""
ListSamples(args) = device_farm("ListSamples", args)

"""
Deletes the specified tags from a resource.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = device_farm("UntagResource", args)

"""
Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
"""
PurchaseOffering() = device_farm("PurchaseOffering")

"""
Deletes a profile that can be applied to one or more private device instances.

Required Parameters:
arn
"""
DeleteInstanceProfile(args) = device_farm("DeleteInstanceProfile", args)

"""
Returns a link to a currently running remote access session.

Required Parameters:
arn
"""
GetRemoteAccessSession(args) = device_farm("GetRemoteAccessSession", args)

"""
Gets information about a run.

Required Parameters:
arn
"""
GetRun(args) = device_farm("GetRun", args)

"""
Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
"""
ListOfferings() = device_farm("ListOfferings")

"""
Returns a list of the actions taken in a TestGridSession.

Required Parameters:
sessionArn
"""
ListTestGridSessionActions(args) = device_farm("ListTestGridSessionActions", args)

"""
List the tags for an AWS Device Farm resource.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = device_farm("ListTagsForResource", args)

"""
Gets information about compatibility with a device pool.

Required Parameters:
devicePoolArn
"""
GetDevicePoolCompatibility(args) = device_farm("GetDevicePoolCompatibility", args)

"""
Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.

Required Parameters:
arn
"""
GetVPCEConfiguration(args) = device_farm("GetVPCEConfiguration", args)

"""
Returns a list of all currently running remote access sessions.

Required Parameters:
arn
"""
ListRemoteAccessSessions(args) = device_farm("ListRemoteAccessSessions", args)

"""
Updates an uploaded test spec.

Required Parameters:
arn
"""
UpdateUpload(args) = device_farm("UpdateUpload", args)

"""
Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.

Required Parameters:
arn
"""
DeleteVPCEConfiguration(args) = device_farm("DeleteVPCEConfiguration", args)

"""
Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
"""
GetOfferingStatus() = device_farm("GetOfferingStatus")

"""
Deletes a network profile.

Required Parameters:
arn
"""
DeleteNetworkProfile(args) = device_farm("DeleteNetworkProfile", args)

"""
Gets information about a suite.

Required Parameters:
arn
"""
GetSuite(args) = device_farm("GetSuite", args)

"""
Gets information about test suites for a given job.

Required Parameters:
arn
"""
ListSuites(args) = device_farm("ListSuites", args)

"""
Updates the network profile.

Required Parameters:
arn
"""
UpdateNetworkProfile(args) = device_farm("UpdateNetworkProfile", args)

"""
Schedules a run.

Required Parameters:
projectArn, test
"""
ScheduleRun(args) = device_farm("ScheduleRun", args)

"""
Gets information about device pools.

Required Parameters:
arn
"""
ListDevicePools(args) = device_farm("ListDevicePools", args)

"""
Creates a profile that can be applied to one or more private fleet device instances.

Required Parameters:
name
"""
CreateInstanceProfile(args) = device_farm("CreateInstanceProfile", args)

"""
Retrieves a list of sessions for a TestGridProject.

Required Parameters:
projectArn
"""
ListTestGridSessions(args) = device_farm("ListTestGridSessions", args)

"""
Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you must be able to invoke this operation.
"""
ListOfferingPromotions() = device_farm("ListOfferingPromotions")

"""
Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
"""
ListVPCEConfigurations() = device_farm("ListVPCEConfigurations")

"""
Returns the list of available network profiles.

Required Parameters:
arn
"""
ListNetworkProfiles(args) = device_farm("ListNetworkProfiles", args)

"""
Retrieves a list of artifacts created during the session.

Required Parameters:
sessionArn
"""
ListTestGridSessionArtifacts(args) = device_farm("ListTestGridSessionArtifacts", args)

"""
Specifies and starts a remote access session.

Required Parameters:
projectArn, deviceArn
"""
CreateRemoteAccessSession(args) = device_farm("CreateRemoteAccessSession", args)

"""
Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the account.
"""
GetAccountSettings() = device_farm("GetAccountSettings")

"""
Returns information about a network profile.

Required Parameters:
arn
"""
GetNetworkProfile(args) = device_farm("GetNetworkProfile", args)

"""
Gets information about tests in a given test suite.

Required Parameters:
arn
"""
ListTests(args) = device_farm("ListTests", args)

"""
Creates a project.

Required Parameters:
name
"""
CreateProject(args) = device_farm("CreateProject", args)

"""
Retrieves information about a Selenium testing project.

Required Parameters:
projectArn
"""
GetTestGridProject(args) = device_farm("GetTestGridProject", args)

"""
Gets information about projects.
"""
ListProjects() = device_farm("ListProjects")

"""
Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices where tests have not started. You are not billed for these devices. On devices where tests have started executing, setup suite and teardown suite tests run to completion on those devices. You are billed for setup, teardown, and any tests that were in progress or already completed.

Required Parameters:
arn
"""
StopRun(args) = device_farm("StopRun", args)

"""
A session is an instance of a browser created through a RemoteWebDriver with the URL from CreateTestGridUrlResult url. You can use the following to look up sessions:   The session ARN (GetTestGridSessionRequest sessionArn).   The project ARN and a session ID (GetTestGridSessionRequest projectArn and GetTestGridSessionRequest sessionId).   
"""
GetTestGridSession() = device_farm("GetTestGridSession")

"""
Gets information about a job.

Required Parameters:
arn
"""
GetJob(args) = device_farm("GetJob", args)

"""
Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.

Required Parameters:
arn
"""
UpdateVPCEConfiguration(args) = device_farm("UpdateVPCEConfiguration", args)

"""
 Deletes a Selenium testing project and all content generated under it.   You cannot undo this operation.   You cannot delete a project if it has active sessions. 

Required Parameters:
projectArn
"""
DeleteTestGridProject(args) = device_farm("DeleteTestGridProject", args)

"""
Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.

Required Parameters:
remoteAccessSessionArn, appArn
"""
InstallToRemoteAccessSession(args) = device_farm("InstallToRemoteAccessSession", args)

"""
Deletes the run, given the run ARN.  Deleting this resource does not stop an in-progress run.

Required Parameters:
arn
"""
DeleteRun(args) = device_farm("DeleteRun", args)

"""
Gets information about a project.

Required Parameters:
arn
"""
GetProject(args) = device_farm("GetProject", args)

"""
Gets information about jobs for a given test run.

Required Parameters:
arn
"""
ListJobs(args) = device_farm("ListJobs", args)

"""
Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.

Required Parameters:
arn
"""
ListUniqueProblems(args) = device_farm("ListUniqueProblems", args)

"""
Gets information about artifacts.

Required Parameters:
arn, type
"""
ListArtifacts(args) = device_farm("ListArtifacts", args)

"""
Ends a specified remote access session.

Required Parameters:
arn
"""
StopRemoteAccessSession(args) = device_farm("StopRemoteAccessSession", args)
