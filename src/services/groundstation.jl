include("../AWSCorePrototypeServices.jl")
using .Services: groundstation

"""
Returns a list of tags for a specified resource.
"""
ListTagsForResource(resourceArn) = groundstation("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = groundstation("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Deletes a dataflow endpoint group.
"""
DeleteDataflowEndpointGroup(dataflowEndpointGroupId) = groundstation("DELETE", "/dataflowEndpointGroup/$dataflowEndpointGroupId")
DeleteDataflowEndpointGroup(dataflowEndpointGroupId, args) = groundstation("DELETE", "/dataflowEndpointGroup/$dataflowEndpointGroupId", args)
DeleteDataflowEndpointGroup(a...; b...) = DeleteDataflowEndpointGroup(a..., b)

"""
Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 
"""
ListContacts(endTime, startTime, statusList) = groundstation("POST", "/contacts")
ListContacts(endTime, startTime, statusList, args) = groundstation("POST", "/contacts", args)
ListContacts(a...; b...) = ListContacts(a..., b)

"""
Returns a list of mission profiles.
"""
ListMissionProfiles() = groundstation("GET", "/missionprofile")
ListMissionProfiles(, args) = groundstation("GET", "/missionprofile", args)
ListMissionProfiles(a...; b...) = ListMissionProfiles(a..., b)

"""
Returns a list of ground stations. 
"""
ListGroundStations() = groundstation("GET", "/groundstation")
ListGroundStations(, args) = groundstation("GET", "/groundstation", args)
ListGroundStations(a...; b...) = ListGroundStations(a..., b)

"""
Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
"""
CreateDataflowEndpointGroup(endpointDetails) = groundstation("POST", "/dataflowEndpointGroup")
CreateDataflowEndpointGroup(endpointDetails, args) = groundstation("POST", "/dataflowEndpointGroup", args)
CreateDataflowEndpointGroup(a...; b...) = CreateDataflowEndpointGroup(a..., b)

"""
Deletes a mission profile.
"""
DeleteMissionProfile(missionProfileId) = groundstation("DELETE", "/missionprofile/$missionProfileId")
DeleteMissionProfile(missionProfileId, args) = groundstation("DELETE", "/missionprofile/$missionProfileId", args)
DeleteMissionProfile(a...; b...) = DeleteMissionProfile(a..., b)

"""
Returns Config information. Only one Config response can be returned.
"""
GetConfig(configId, configType) = groundstation("GET", "/config/$configType/$configId")
GetConfig(configId, configType, args) = groundstation("GET", "/config/$configType/$configId", args)
GetConfig(a...; b...) = GetConfig(a..., b)

"""
Returns a list of Config objects.
"""
ListConfigs() = groundstation("GET", "/config")
ListConfigs(, args) = groundstation("GET", "/config", args)
ListConfigs(a...; b...) = ListConfigs(a..., b)

"""
Describes an existing contact.
"""
DescribeContact(contactId) = groundstation("GET", "/contact/$contactId")
DescribeContact(contactId, args) = groundstation("GET", "/contact/$contactId", args)
DescribeContact(a...; b...) = DescribeContact(a..., b)

"""
Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
"""
CreateMissionProfile(dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn) = groundstation("POST", "/missionprofile")
CreateMissionProfile(dataflowEdges, minimumViableContactDurationSeconds, name, trackingConfigArn, args) = groundstation("POST", "/missionprofile", args)
CreateMissionProfile(a...; b...) = CreateMissionProfile(a..., b)

"""
Returns the dataflow endpoint group.
"""
GetDataflowEndpointGroup(dataflowEndpointGroupId) = groundstation("GET", "/dataflowEndpointGroup/$dataflowEndpointGroupId")
GetDataflowEndpointGroup(dataflowEndpointGroupId, args) = groundstation("GET", "/dataflowEndpointGroup/$dataflowEndpointGroupId", args)
GetDataflowEndpointGroup(a...; b...) = GetDataflowEndpointGroup(a..., b)

"""
Returns a satellite.
"""
GetSatellite(satelliteId) = groundstation("GET", "/satellite/$satelliteId")
GetSatellite(satelliteId, args) = groundstation("GET", "/satellite/$satelliteId", args)
GetSatellite(a...; b...) = GetSatellite(a..., b)

"""
Cancels a contact with a specified contact ID.
"""
CancelContact(contactId) = groundstation("DELETE", "/contact/$contactId")
CancelContact(contactId, args) = groundstation("DELETE", "/contact/$contactId", args)
CancelContact(a...; b...) = CancelContact(a..., b)

"""
Reserves a contact using specified parameters.
"""
ReserveContact(endTime, groundStation, missionProfileArn, satelliteArn, startTime) = groundstation("POST", "/contact")
ReserveContact(endTime, groundStation, missionProfileArn, satelliteArn, startTime, args) = groundstation("POST", "/contact", args)
ReserveContact(a...; b...) = ReserveContact(a..., b)

"""
Assigns a tag to a resource.
"""
TagResource(resourceArn, tags) = groundstation("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = groundstation("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Deassigns a resource tag.
"""
UntagResource(resourceArn, tagKeys) = groundstation("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = groundstation("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
"""
UpdateConfig(configData, configId, configType, name) = groundstation("PUT", "/config/$configType/$configId")
UpdateConfig(configData, configId, configType, name, args) = groundstation("PUT", "/config/$configType/$configId", args)
UpdateConfig(a...; b...) = UpdateConfig(a..., b)

"""
Returns a list of satellites.
"""
ListSatellites() = groundstation("GET", "/satellite")
ListSatellites(, args) = groundstation("GET", "/satellite", args)
ListSatellites(a...; b...) = ListSatellites(a..., b)

"""
Returns the number of minutes used by account.
"""
GetMinuteUsage(month, year) = groundstation("POST", "/minute-usage")
GetMinuteUsage(month, year, args) = groundstation("POST", "/minute-usage", args)
GetMinuteUsage(a...; b...) = GetMinuteUsage(a..., b)

"""
Creates a Config with the specified configData parameters. Only one type of configData can be specified.
"""
CreateConfig(configData, name) = groundstation("POST", "/config")
CreateConfig(configData, name, args) = groundstation("POST", "/config", args)
CreateConfig(a...; b...) = CreateConfig(a..., b)

"""
Returns a mission profile.
"""
GetMissionProfile(missionProfileId) = groundstation("GET", "/missionprofile/$missionProfileId")
GetMissionProfile(missionProfileId, args) = groundstation("GET", "/missionprofile/$missionProfileId", args)
GetMissionProfile(a...; b...) = GetMissionProfile(a..., b)

"""
Deletes a Config.
"""
DeleteConfig(configId, configType) = groundstation("DELETE", "/config/$configType/$configId")
DeleteConfig(configId, configType, args) = groundstation("DELETE", "/config/$configType/$configId", args)
DeleteConfig(a...; b...) = DeleteConfig(a..., b)

"""
Returns a list of DataflowEndpoint groups.
"""
ListDataflowEndpointGroups() = groundstation("GET", "/dataflowEndpointGroup")
ListDataflowEndpointGroups(, args) = groundstation("GET", "/dataflowEndpointGroup", args)
ListDataflowEndpointGroups(a...; b...) = ListDataflowEndpointGroups(a..., b)

"""
Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
"""
UpdateMissionProfile(missionProfileId) = groundstation("PUT", "/missionprofile/$missionProfileId")
UpdateMissionProfile(missionProfileId, args) = groundstation("PUT", "/missionprofile/$missionProfileId", args)
UpdateMissionProfile(a...; b...) = UpdateMissionProfile(a..., b)
