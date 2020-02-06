include("../AWSCorePrototypeServices.jl")
using .Services: groundstation

"""
Returns a list of tags for a specified resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = groundstation("GET", "/tags/{resourceArn}", args)

"""
Deletes a dataflow endpoint group.

Required Parameters:
dataflowEndpointGroupId
"""
DeleteDataflowEndpointGroup(args) = groundstation("DELETE", "/dataflowEndpointGroup/{dataflowEndpointGroupId}", args)

"""
Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 

Required Parameters:
endTime, startTime, statusList
"""
ListContacts(args) = groundstation("POST", "/contacts", args)

"""
Returns a list of mission profiles.
"""
ListMissionProfiles() = groundstation("GET", "/missionprofile")

"""
Returns a list of ground stations. 
"""
ListGroundStations() = groundstation("GET", "/groundstation")

"""
Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.

Required Parameters:
endpointDetails
"""
CreateDataflowEndpointGroup(args) = groundstation("POST", "/dataflowEndpointGroup", args)

"""
Deletes a mission profile.

Required Parameters:
missionProfileId
"""
DeleteMissionProfile(args) = groundstation("DELETE", "/missionprofile/{missionProfileId}", args)

"""
Returns Config information. Only one Config response can be returned.

Required Parameters:
configId, configType
"""
GetConfig(args) = groundstation("GET", "/config/{configType}/{configId}", args)

"""
Returns a list of Config objects.
"""
ListConfigs() = groundstation("GET", "/config")

"""
Describes an existing contact.

Required Parameters:
contactId
"""
DescribeContact(args) = groundstation("GET", "/contact/{contactId}", args)

"""
Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.

Required Parameters:
dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn
"""
CreateMissionProfile(args) = groundstation("POST", "/missionprofile", args)

"""
Returns the dataflow endpoint group.

Required Parameters:
dataflowEndpointGroupId
"""
GetDataflowEndpointGroup(args) = groundstation("GET", "/dataflowEndpointGroup/{dataflowEndpointGroupId}", args)

"""
Returns a satellite.

Required Parameters:
satelliteId
"""
GetSatellite(args) = groundstation("GET", "/satellite/{satelliteId}", args)

"""
Cancels a contact with a specified contact ID.

Required Parameters:
contactId
"""
CancelContact(args) = groundstation("DELETE", "/contact/{contactId}", args)

"""
Reserves a contact using specified parameters.

Required Parameters:
endTime, groundStation, missionProfileArn, satelliteArn, startTime
"""
ReserveContact(args) = groundstation("POST", "/contact", args)

"""
Assigns a tag to a resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = groundstation("POST", "/tags/{resourceArn}", args)

"""
Deassigns a resource tag.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = groundstation("DELETE", "/tags/{resourceArn}", args)

"""
Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.

Required Parameters:
configData, configId, configType, name
"""
UpdateConfig(args) = groundstation("PUT", "/config/{configType}/{configId}", args)

"""
Returns a list of satellites.
"""
ListSatellites() = groundstation("GET", "/satellite")

"""
Returns the number of minutes used by account.

Required Parameters:
month, year
"""
GetMinuteUsage(args) = groundstation("POST", "/minute-usage", args)

"""
Creates a Config with the specified configData parameters. Only one type of configData can be specified.

Required Parameters:
configData, name
"""
CreateConfig(args) = groundstation("POST", "/config", args)

"""
Returns a mission profile.

Required Parameters:
missionProfileId
"""
GetMissionProfile(args) = groundstation("GET", "/missionprofile/{missionProfileId}", args)

"""
Deletes a Config.

Required Parameters:
configId, configType
"""
DeleteConfig(args) = groundstation("DELETE", "/config/{configType}/{configId}", args)

"""
Returns a list of DataflowEndpoint groups.
"""
ListDataflowEndpointGroups() = groundstation("GET", "/dataflowEndpointGroup")

"""
Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.

Required Parameters:
missionProfileId
"""
UpdateMissionProfile(args) = groundstation("PUT", "/missionprofile/{missionProfileId}", args)
