include("../AWSCorePrototypeServices.jl")
using .Services: medialive

"""
Create an input
"""
CreateInput() = medialive("POST", "/prod/inputs")

"""
Deletes an Input Security Group

Required Parameters:
InputSecurityGroupId
"""
DeleteInputSecurityGroup(args) = medialive("DELETE", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

"""
Produces a summary of an Input Security Group

Required Parameters:
InputSecurityGroupId
"""
DescribeInputSecurityGroup(args) = medialive("GET", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

"""
Produces a list of Input Security Groups for an account
"""
ListInputSecurityGroups() = medialive("GET", "/prod/inputSecurityGroups")

"""
Produces details about an input

Required Parameters:
InputId
"""
DescribeInput(args) = medialive("GET", "/prod/inputs/{inputId}", args)

"""
Update an Input Security Group's Whilelists.

Required Parameters:
InputSecurityGroupId
"""
UpdateInputSecurityGroup(args) = medialive("PUT", "/prod/inputSecurityGroups/{inputSecurityGroupId}", args)

"""
Updates an input.

Required Parameters:
InputId
"""
UpdateInput(args) = medialive("PUT", "/prod/inputs/{inputId}", args)

"""
Deletes the input end point

Required Parameters:
InputId
"""
DeleteInput(args) = medialive("DELETE", "/prod/inputs/{inputId}", args)

"""
Delete all schedule actions on a channel.

Required Parameters:
ChannelId
"""
DeleteSchedule(args) = medialive("DELETE", "/prod/channels/{channelId}/schedule", args)

"""
Retrieve a list of the existing multiplexes.
"""
ListMultiplexes() = medialive("GET", "/prod/multiplexes")

"""
Delete a multiplex. The multiplex must be idle.

Required Parameters:
MultiplexId
"""
DeleteMultiplex(args) = medialive("DELETE", "/prod/multiplexes/{multiplexId}", args)

"""
Changes the class of the channel.

Required Parameters:
ChannelId, ChannelClass
"""
UpdateChannelClass(args) = medialive("PUT", "/prod/channels/{channelId}/channelClass", args)

"""
Update reservation.

Required Parameters:
ReservationId
"""
UpdateReservation(args) = medialive("PUT", "/prod/reservations/{reservationId}", args)

"""
Purchase an offering and create a reservation.

Required Parameters:
OfferingId, Count
"""
PurchaseOffering(args) = medialive("POST", "/prod/offerings/{offeringId}/purchase", args)

"""
List offerings available for purchase.
"""
ListOfferings() = medialive("GET", "/prod/offerings")

"""
Removes tags for a resource

Required Parameters:
TagKeys, ResourceArn
"""
DeleteTags(args) = medialive("DELETE", "/prod/tags/{resource-arn}", args)

"""
Updates a multiplex.

Required Parameters:
MultiplexId
"""
UpdateMultiplex(args) = medialive("PUT", "/prod/multiplexes/{multiplexId}", args)

"""
Get details for an offering.

Required Parameters:
OfferingId
"""
DescribeOffering(args) = medialive("GET", "/prod/offerings/{offeringId}", args)

"""
Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.

Required Parameters:
MultiplexId
"""
StartMultiplex(args) = medialive("POST", "/prod/multiplexes/{multiplexId}/start", args)

"""
Create tags for a resource

Required Parameters:
ResourceArn
"""
CreateTags(args) = medialive("POST", "/prod/tags/{resource-arn}", args)

"""
Stops a running multiplex. If the multiplex isn't running, this action has no effect.

Required Parameters:
MultiplexId
"""
StopMultiplex(args) = medialive("POST", "/prod/multiplexes/{multiplexId}/stop", args)

"""
Creates a Input Security Group
"""
CreateInputSecurityGroup() = medialive("POST", "/prod/inputSecurityGroups")

"""
Produces list of tags that have been created for a resource

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = medialive("GET", "/prod/tags/{resource-arn}", args)

"""
Get a channel schedule

Required Parameters:
ChannelId
"""
DescribeSchedule(args) = medialive("GET", "/prod/channels/{channelId}/schedule", args)

"""
Creates a new channel
"""
CreateChannel() = medialive("POST", "/prod/channels")

"""
Starts deletion of channel. The associated outputs are also deleted.

Required Parameters:
ChannelId
"""
DeleteChannel(args) = medialive("DELETE", "/prod/channels/{channelId}", args)

"""
Update a program in a multiplex.

Required Parameters:
MultiplexId, ProgramName
"""
UpdateMultiplexProgram(args) = medialive("PUT", "/prod/multiplexes/{multiplexId}/programs/{programName}", args)

"""
Gets details about a multiplex.

Required Parameters:
MultiplexId
"""
DescribeMultiplex(args) = medialive("GET", "/prod/multiplexes/{multiplexId}", args)

"""
Create a new multiplex.

Required Parameters:
RequestId, MultiplexSettings, AvailabilityZones, Name
"""
CreateMultiplex(args) = medialive("POST", "/prod/multiplexes", args)

"""
Delete a program from a multiplex.

Required Parameters:
MultiplexId, ProgramName
"""
DeleteMultiplexProgram(args) = medialive("DELETE", "/prod/multiplexes/{multiplexId}/programs/{programName}", args)

"""
Get the details for a program in a multiplex.

Required Parameters:
MultiplexId, ProgramName
"""
DescribeMultiplexProgram(args) = medialive("GET", "/prod/multiplexes/{multiplexId}/programs/{programName}", args)

"""
List the programs that currently exist for a specific multiplex.

Required Parameters:
MultiplexId
"""
ListMultiplexPrograms(args) = medialive("GET", "/prod/multiplexes/{multiplexId}/programs", args)

"""
Stops a running channel

Required Parameters:
ChannelId
"""
StopChannel(args) = medialive("POST", "/prod/channels/{channelId}/stop", args)

"""
Produces list of channels that have been created
"""
ListChannels() = medialive("GET", "/prod/channels")

"""
Create a new program in the multiplex.

Required Parameters:
MultiplexId, RequestId, MultiplexProgramSettings, ProgramName
"""
CreateMultiplexProgram(args) = medialive("POST", "/prod/multiplexes/{multiplexId}/programs", args)

"""
Get details for a reservation.

Required Parameters:
ReservationId
"""
DescribeReservation(args) = medialive("GET", "/prod/reservations/{reservationId}", args)

"""
List purchased reservations.
"""
ListReservations() = medialive("GET", "/prod/reservations")

"""
Updates a channel.

Required Parameters:
ChannelId
"""
UpdateChannel(args) = medialive("PUT", "/prod/channels/{channelId}", args)

"""
Update a channel schedule

Required Parameters:
ChannelId
"""
BatchUpdateSchedule(args) = medialive("PUT", "/prod/channels/{channelId}/schedule", args)

"""
Delete an expired reservation.

Required Parameters:
ReservationId
"""
DeleteReservation(args) = medialive("DELETE", "/prod/reservations/{reservationId}", args)

"""
Produces list of inputs that have been created
"""
ListInputs() = medialive("GET", "/prod/inputs")

"""
Gets details about a channel

Required Parameters:
ChannelId
"""
DescribeChannel(args) = medialive("GET", "/prod/channels/{channelId}", args)

"""
Starts an existing channel

Required Parameters:
ChannelId
"""
StartChannel(args) = medialive("POST", "/prod/channels/{channelId}/start", args)
