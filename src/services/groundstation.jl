include("../AWSCorePrototypeServices.jl")
using .Services: groundstation

"""
    ListTagsForResource()

Returns a list of tags for a specified resource.

Required Parameters
{
  "resourceArn": "ARN of a resource."
}
"""
ListTagsForResource(args) = groundstation("GET", "/tags/{resourceArn}", args)

"""
    DeleteDataflowEndpointGroup()

Deletes a dataflow endpoint group.

Required Parameters
{
  "dataflowEndpointGroupId": "UUID of a dataflow endpoint group."
}
"""
DeleteDataflowEndpointGroup(args) = groundstation("DELETE", "/dataflowEndpointGroup/{dataflowEndpointGroupId}", args)

"""
    ListContacts()

Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 

Required Parameters
{
  "startTime": "Start time of a contact.",
  "statusList": "Status of a contact reservation.",
  "endTime": "End time of a contact."
}

Optional Parameters
{
  "satelliteArn": "ARN of a satellite.",
  "missionProfileArn": "ARN of a mission profile.",
  "maxResults": "Maximum number of contacts returned.",
  "nextToken": "Next token returned in the request of a previous ListContacts call. Used to get the next page of results.",
  "groundStation": "Name of a ground station."
}
"""
ListContacts(args) = groundstation("POST", "/contacts", args)

"""
    ListMissionProfiles()

Returns a list of mission profiles.

Optional Parameters
{
  "maxResults": "Maximum number of mission profiles returned.",
  "nextToken": "Next token returned in the request of a previous ListMissionProfiles call. Used to get the next page of results."
}
"""

ListMissionProfiles() = groundstation("GET", "/missionprofile")
ListMissionProfiles(args) = groundstation("GET", "/missionprofile", args)

"""
    ListGroundStations()

Returns a list of ground stations. 

Optional Parameters
{
  "satelliteId": "Satellite ID to retrieve on-boarded ground stations.",
  "maxResults": "Maximum number of ground stations returned.",
  "nextToken": "Next token that can be supplied in the next call to get the next page of ground stations."
}
"""

ListGroundStations() = groundstation("GET", "/groundstation")
ListGroundStations(args) = groundstation("GET", "/groundstation", args)

"""
    CreateDataflowEndpointGroup()

Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.

Required Parameters
{
  "endpointDetails": "Endpoint details of each endpoint in the dataflow endpoint group."
}

Optional Parameters
{
  "tags": "Tags of a dataflow endpoint group."
}
"""
CreateDataflowEndpointGroup(args) = groundstation("POST", "/dataflowEndpointGroup", args)

"""
    DeleteMissionProfile()

Deletes a mission profile.

Required Parameters
{
  "missionProfileId": "UUID of a mission profile."
}
"""
DeleteMissionProfile(args) = groundstation("DELETE", "/missionprofile/{missionProfileId}", args)

"""
    GetConfig()

Returns Config information. Only one Config response can be returned.

Required Parameters
{
  "configType": "Type of a Config.",
  "configId": "UUID of a Config."
}
"""
GetConfig(args) = groundstation("GET", "/config/{configType}/{configId}", args)

"""
    ListConfigs()

Returns a list of Config objects.

Optional Parameters
{
  "maxResults": "Maximum number of Configs returned.",
  "nextToken": "Next token returned in the request of a previous ListConfigs call. Used to get the next page of results."
}
"""

ListConfigs() = groundstation("GET", "/config")
ListConfigs(args) = groundstation("GET", "/config", args)

"""
    DescribeContact()

Describes an existing contact.

Required Parameters
{
  "contactId": "UUID of a contact."
}
"""
DescribeContact(args) = groundstation("GET", "/contact/{contactId}", args)

"""
    CreateMissionProfile()

Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.

Required Parameters
{
  "name": "Name of a mission profile.",
  "trackingConfigArn": "ARN of a tracking Config.",
  "dataflowEdges": "A list of lists of ARNs. Each list of ARNs is an edge, with a from Config and a to Config.",
  "minimumViableContactDurationSeconds": "Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration."
}

Optional Parameters
{
  "contactPrePassDurationSeconds": "Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.",
  "contactPostPassDurationSeconds": "Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.",
  "tags": "Tags assigned to a mission profile."
}
"""
CreateMissionProfile(args) = groundstation("POST", "/missionprofile", args)

"""
    GetDataflowEndpointGroup()

Returns the dataflow endpoint group.

Required Parameters
{
  "dataflowEndpointGroupId": "UUID of a dataflow endpoint group."
}
"""
GetDataflowEndpointGroup(args) = groundstation("GET", "/dataflowEndpointGroup/{dataflowEndpointGroupId}", args)

"""
    GetSatellite()

Returns a satellite.

Required Parameters
{
  "satelliteId": "UUID of a satellite."
}
"""
GetSatellite(args) = groundstation("GET", "/satellite/{satelliteId}", args)

"""
    CancelContact()

Cancels a contact with a specified contact ID.

Required Parameters
{
  "contactId": "UUID of a contact."
}
"""
CancelContact(args) = groundstation("DELETE", "/contact/{contactId}", args)

"""
    ReserveContact()

Reserves a contact using specified parameters.

Required Parameters
{
  "satelliteArn": "ARN of a satellite",
  "startTime": "Start time of a contact.",
  "missionProfileArn": "ARN of a mission profile.",
  "endTime": "End time of a contact.",
  "groundStation": "Name of a ground station."
}

Optional Parameters
{
  "tags": "Tags assigned to a contact."
}
"""
ReserveContact(args) = groundstation("POST", "/contact", args)

"""
    TagResource()

Assigns a tag to a resource.

Required Parameters
{
  "resourceArn": "ARN of a resource tag.",
  "tags": "Tags assigned to a resource."
}
"""
TagResource(args) = groundstation("POST", "/tags/{resourceArn}", args)

"""
    UntagResource()

Deassigns a resource tag.

Required Parameters
{
  "resourceArn": "ARN of a resource.",
  "tagKeys": "Keys of a resource tag."
}
"""
UntagResource(args) = groundstation("DELETE", "/tags/{resourceArn}", args)

"""
    UpdateConfig()

Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.

Required Parameters
{
  "name": "Name of a Config.",
  "configType": "Type of a Config.",
  "configId": "UUID of a Config.",
  "configData": "Parameters of a Config."
}
"""
UpdateConfig(args) = groundstation("PUT", "/config/{configType}/{configId}", args)

"""
    ListSatellites()

Returns a list of satellites.

Optional Parameters
{
  "maxResults": "Maximum number of satellites returned.",
  "nextToken": "Next token that can be supplied in the next call to get the next page of satellites."
}
"""

ListSatellites() = groundstation("GET", "/satellite")
ListSatellites(args) = groundstation("GET", "/satellite", args)

"""
    GetMinuteUsage()

Returns the number of minutes used by account.

Required Parameters
{
  "month": "The month being requested, with a value of 1-12.",
  "year": "The year being requested, in the format of YYYY."
}
"""
GetMinuteUsage(args) = groundstation("POST", "/minute-usage", args)

"""
    CreateConfig()

Creates a Config with the specified configData parameters. Only one type of configData can be specified.

Required Parameters
{
  "name": "Name of a Config.",
  "configData": "Parameters of a Config."
}

Optional Parameters
{
  "tags": "Tags assigned to a Config."
}
"""
CreateConfig(args) = groundstation("POST", "/config", args)

"""
    GetMissionProfile()

Returns a mission profile.

Required Parameters
{
  "missionProfileId": "UUID of a mission profile."
}
"""
GetMissionProfile(args) = groundstation("GET", "/missionprofile/{missionProfileId}", args)

"""
    DeleteConfig()

Deletes a Config.

Required Parameters
{
  "configType": "Type of a Config.",
  "configId": "UUID of a Config."
}
"""
DeleteConfig(args) = groundstation("DELETE", "/config/{configType}/{configId}", args)

"""
    ListDataflowEndpointGroups()

Returns a list of DataflowEndpoint groups.

Optional Parameters
{
  "maxResults": "Maximum number of dataflow endpoint groups returned.",
  "nextToken": "Next token returned in the request of a previous ListDataflowEndpointGroups call. Used to get the next page of results."
}
"""

ListDataflowEndpointGroups() = groundstation("GET", "/dataflowEndpointGroup")
ListDataflowEndpointGroups(args) = groundstation("GET", "/dataflowEndpointGroup", args)

"""
    UpdateMissionProfile()

Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.

Required Parameters
{
  "missionProfileId": "UUID of a mission profile."
}

Optional Parameters
{
  "name": "Name of a mission profile.",
  "trackingConfigArn": "ARN of a tracking Config.",
  "contactPrePassDurationSeconds": "Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.",
  "contactPostPassDurationSeconds": "Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.",
  "dataflowEdges": "A list of lists of ARNs. Each list of ARNs is an edge, with a from Config and a to Config.",
  "minimumViableContactDurationSeconds": "Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration."
}
"""
UpdateMissionProfile(args) = groundstation("PUT", "/missionprofile/{missionProfileId}", args)
