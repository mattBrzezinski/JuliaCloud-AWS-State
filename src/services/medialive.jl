include("../AWSCorePrototypeServices.jl")
using .Services: medialive

"""
Create an input
"""
CreateInput() = medialive("POST", "/prod/inputs")
CreateInput(, args) = medialive("POST", "/prod/inputs", args)
CreateInput(a...; b...) = CreateInput(a..., b)

"""
Deletes an Input Security Group
"""
DeleteInputSecurityGroup(InputSecurityGroupId) = medialive("DELETE", "/prod/inputSecurityGroups/$inputSecurityGroupId")
DeleteInputSecurityGroup(InputSecurityGroupId, args) = medialive("DELETE", "/prod/inputSecurityGroups/$inputSecurityGroupId", args)
DeleteInputSecurityGroup(a...; b...) = DeleteInputSecurityGroup(a..., b)

"""
Produces a summary of an Input Security Group
"""
DescribeInputSecurityGroup(InputSecurityGroupId) = medialive("GET", "/prod/inputSecurityGroups/$inputSecurityGroupId")
DescribeInputSecurityGroup(InputSecurityGroupId, args) = medialive("GET", "/prod/inputSecurityGroups/$inputSecurityGroupId", args)
DescribeInputSecurityGroup(a...; b...) = DescribeInputSecurityGroup(a..., b)

"""
Produces a list of Input Security Groups for an account
"""
ListInputSecurityGroups() = medialive("GET", "/prod/inputSecurityGroups")
ListInputSecurityGroups(, args) = medialive("GET", "/prod/inputSecurityGroups", args)
ListInputSecurityGroups(a...; b...) = ListInputSecurityGroups(a..., b)

"""
Produces details about an input
"""
DescribeInput(InputId) = medialive("GET", "/prod/inputs/$inputId")
DescribeInput(InputId, args) = medialive("GET", "/prod/inputs/$inputId", args)
DescribeInput(a...; b...) = DescribeInput(a..., b)

"""
Update an Input Security Group's Whilelists.
"""
UpdateInputSecurityGroup(InputSecurityGroupId) = medialive("PUT", "/prod/inputSecurityGroups/$inputSecurityGroupId")
UpdateInputSecurityGroup(InputSecurityGroupId, args) = medialive("PUT", "/prod/inputSecurityGroups/$inputSecurityGroupId", args)
UpdateInputSecurityGroup(a...; b...) = UpdateInputSecurityGroup(a..., b)

"""
Updates an input.
"""
UpdateInput(InputId) = medialive("PUT", "/prod/inputs/$inputId")
UpdateInput(InputId, args) = medialive("PUT", "/prod/inputs/$inputId", args)
UpdateInput(a...; b...) = UpdateInput(a..., b)

"""
Deletes the input end point
"""
DeleteInput(InputId) = medialive("DELETE", "/prod/inputs/$inputId")
DeleteInput(InputId, args) = medialive("DELETE", "/prod/inputs/$inputId", args)
DeleteInput(a...; b...) = DeleteInput(a..., b)

"""
Delete all schedule actions on a channel.
"""
DeleteSchedule(ChannelId) = medialive("DELETE", "/prod/channels/$channelId/schedule")
DeleteSchedule(ChannelId, args) = medialive("DELETE", "/prod/channels/$channelId/schedule", args)
DeleteSchedule(a...; b...) = DeleteSchedule(a..., b)

"""
Retrieve a list of the existing multiplexes.
"""
ListMultiplexes() = medialive("GET", "/prod/multiplexes")
ListMultiplexes(, args) = medialive("GET", "/prod/multiplexes", args)
ListMultiplexes(a...; b...) = ListMultiplexes(a..., b)

"""
Delete a multiplex. The multiplex must be idle.
"""
DeleteMultiplex(MultiplexId) = medialive("DELETE", "/prod/multiplexes/$multiplexId")
DeleteMultiplex(MultiplexId, args) = medialive("DELETE", "/prod/multiplexes/$multiplexId", args)
DeleteMultiplex(a...; b...) = DeleteMultiplex(a..., b)

"""
Changes the class of the channel.
"""
UpdateChannelClass(ChannelId, ChannelClass) = medialive("PUT", "/prod/channels/$channelId/channelClass")
UpdateChannelClass(ChannelId, ChannelClass, args) = medialive("PUT", "/prod/channels/$channelId/channelClass", args)
UpdateChannelClass(a...; b...) = UpdateChannelClass(a..., b)

"""
Update reservation.
"""
UpdateReservation(ReservationId) = medialive("PUT", "/prod/reservations/$reservationId")
UpdateReservation(ReservationId, args) = medialive("PUT", "/prod/reservations/$reservationId", args)
UpdateReservation(a...; b...) = UpdateReservation(a..., b)

"""
Purchase an offering and create a reservation.
"""
PurchaseOffering(OfferingId, Count) = medialive("POST", "/prod/offerings/$offeringId/purchase")
PurchaseOffering(OfferingId, Count, args) = medialive("POST", "/prod/offerings/$offeringId/purchase", args)
PurchaseOffering(a...; b...) = PurchaseOffering(a..., b)

"""
List offerings available for purchase.
"""
ListOfferings() = medialive("GET", "/prod/offerings")
ListOfferings(, args) = medialive("GET", "/prod/offerings", args)
ListOfferings(a...; b...) = ListOfferings(a..., b)

"""
Removes tags for a resource
"""
DeleteTags(TagKeys, ResourceArn) = medialive("DELETE", "/prod/tags/$resource-arn")
DeleteTags(TagKeys, ResourceArn, args) = medialive("DELETE", "/prod/tags/$resource-arn", args)
DeleteTags(a...; b...) = DeleteTags(a..., b)

"""
Updates a multiplex.
"""
UpdateMultiplex(MultiplexId) = medialive("PUT", "/prod/multiplexes/$multiplexId")
UpdateMultiplex(MultiplexId, args) = medialive("PUT", "/prod/multiplexes/$multiplexId", args)
UpdateMultiplex(a...; b...) = UpdateMultiplex(a..., b)

"""
Get details for an offering.
"""
DescribeOffering(OfferingId) = medialive("GET", "/prod/offerings/$offeringId")
DescribeOffering(OfferingId, args) = medialive("GET", "/prod/offerings/$offeringId", args)
DescribeOffering(a...; b...) = DescribeOffering(a..., b)

"""
Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
"""
StartMultiplex(MultiplexId) = medialive("POST", "/prod/multiplexes/$multiplexId/start")
StartMultiplex(MultiplexId, args) = medialive("POST", "/prod/multiplexes/$multiplexId/start", args)
StartMultiplex(a...; b...) = StartMultiplex(a..., b)

"""
Create tags for a resource
"""
CreateTags(ResourceArn) = medialive("POST", "/prod/tags/$resource-arn")
CreateTags(ResourceArn, args) = medialive("POST", "/prod/tags/$resource-arn", args)
CreateTags(a...; b...) = CreateTags(a..., b)

"""
Stops a running multiplex. If the multiplex isn't running, this action has no effect.
"""
StopMultiplex(MultiplexId) = medialive("POST", "/prod/multiplexes/$multiplexId/stop")
StopMultiplex(MultiplexId, args) = medialive("POST", "/prod/multiplexes/$multiplexId/stop", args)
StopMultiplex(a...; b...) = StopMultiplex(a..., b)

"""
Creates a Input Security Group
"""
CreateInputSecurityGroup() = medialive("POST", "/prod/inputSecurityGroups")
CreateInputSecurityGroup(, args) = medialive("POST", "/prod/inputSecurityGroups", args)
CreateInputSecurityGroup(a...; b...) = CreateInputSecurityGroup(a..., b)

"""
Produces list of tags that have been created for a resource
"""
ListTagsForResource(ResourceArn) = medialive("GET", "/prod/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = medialive("GET", "/prod/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Get a channel schedule
"""
DescribeSchedule(ChannelId) = medialive("GET", "/prod/channels/$channelId/schedule")
DescribeSchedule(ChannelId, args) = medialive("GET", "/prod/channels/$channelId/schedule", args)
DescribeSchedule(a...; b...) = DescribeSchedule(a..., b)

"""
Creates a new channel
"""
CreateChannel() = medialive("POST", "/prod/channels")
CreateChannel(, args) = medialive("POST", "/prod/channels", args)
CreateChannel(a...; b...) = CreateChannel(a..., b)

"""
Starts deletion of channel. The associated outputs are also deleted.
"""
DeleteChannel(ChannelId) = medialive("DELETE", "/prod/channels/$channelId")
DeleteChannel(ChannelId, args) = medialive("DELETE", "/prod/channels/$channelId", args)
DeleteChannel(a...; b...) = DeleteChannel(a..., b)

"""
Update a program in a multiplex.
"""
UpdateMultiplexProgram(MultiplexId, ProgramName) = medialive("PUT", "/prod/multiplexes/$multiplexId/programs/$programName")
UpdateMultiplexProgram(MultiplexId, ProgramName, args) = medialive("PUT", "/prod/multiplexes/$multiplexId/programs/$programName", args)
UpdateMultiplexProgram(a...; b...) = UpdateMultiplexProgram(a..., b)

"""
Gets details about a multiplex.
"""
DescribeMultiplex(MultiplexId) = medialive("GET", "/prod/multiplexes/$multiplexId")
DescribeMultiplex(MultiplexId, args) = medialive("GET", "/prod/multiplexes/$multiplexId", args)
DescribeMultiplex(a...; b...) = DescribeMultiplex(a..., b)

"""
Create a new multiplex.
"""
CreateMultiplex(RequestId, MultiplexSettings, AvailabilityZones, Name) = medialive("POST", "/prod/multiplexes")
CreateMultiplex(RequestId, MultiplexSettings, AvailabilityZones, Name, args) = medialive("POST", "/prod/multiplexes", args)
CreateMultiplex(a...; b...) = CreateMultiplex(a..., b)

"""
Delete a program from a multiplex.
"""
DeleteMultiplexProgram(MultiplexId, ProgramName) = medialive("DELETE", "/prod/multiplexes/$multiplexId/programs/$programName")
DeleteMultiplexProgram(MultiplexId, ProgramName, args) = medialive("DELETE", "/prod/multiplexes/$multiplexId/programs/$programName", args)
DeleteMultiplexProgram(a...; b...) = DeleteMultiplexProgram(a..., b)

"""
Get the details for a program in a multiplex.
"""
DescribeMultiplexProgram(MultiplexId, ProgramName) = medialive("GET", "/prod/multiplexes/$multiplexId/programs/$programName")
DescribeMultiplexProgram(MultiplexId, ProgramName, args) = medialive("GET", "/prod/multiplexes/$multiplexId/programs/$programName", args)
DescribeMultiplexProgram(a...; b...) = DescribeMultiplexProgram(a..., b)

"""
List the programs that currently exist for a specific multiplex.
"""
ListMultiplexPrograms(MultiplexId) = medialive("GET", "/prod/multiplexes/$multiplexId/programs")
ListMultiplexPrograms(MultiplexId, args) = medialive("GET", "/prod/multiplexes/$multiplexId/programs", args)
ListMultiplexPrograms(a...; b...) = ListMultiplexPrograms(a..., b)

"""
Stops a running channel
"""
StopChannel(ChannelId) = medialive("POST", "/prod/channels/$channelId/stop")
StopChannel(ChannelId, args) = medialive("POST", "/prod/channels/$channelId/stop", args)
StopChannel(a...; b...) = StopChannel(a..., b)

"""
Produces list of channels that have been created
"""
ListChannels() = medialive("GET", "/prod/channels")
ListChannels(, args) = medialive("GET", "/prod/channels", args)
ListChannels(a...; b...) = ListChannels(a..., b)

"""
Create a new program in the multiplex.
"""
CreateMultiplexProgram(MultiplexId, RequestId, MultiplexProgramSettings, ProgramName) = medialive("POST", "/prod/multiplexes/$multiplexId/programs")
CreateMultiplexProgram(MultiplexId, RequestId, MultiplexProgramSettings, ProgramName, args) = medialive("POST", "/prod/multiplexes/$multiplexId/programs", args)
CreateMultiplexProgram(a...; b...) = CreateMultiplexProgram(a..., b)

"""
Get details for a reservation.
"""
DescribeReservation(ReservationId) = medialive("GET", "/prod/reservations/$reservationId")
DescribeReservation(ReservationId, args) = medialive("GET", "/prod/reservations/$reservationId", args)
DescribeReservation(a...; b...) = DescribeReservation(a..., b)

"""
List purchased reservations.
"""
ListReservations() = medialive("GET", "/prod/reservations")
ListReservations(, args) = medialive("GET", "/prod/reservations", args)
ListReservations(a...; b...) = ListReservations(a..., b)

"""
Updates a channel.
"""
UpdateChannel(ChannelId) = medialive("PUT", "/prod/channels/$channelId")
UpdateChannel(ChannelId, args) = medialive("PUT", "/prod/channels/$channelId", args)
UpdateChannel(a...; b...) = UpdateChannel(a..., b)

"""
Update a channel schedule
"""
BatchUpdateSchedule(ChannelId) = medialive("PUT", "/prod/channels/$channelId/schedule")
BatchUpdateSchedule(ChannelId, args) = medialive("PUT", "/prod/channels/$channelId/schedule", args)
BatchUpdateSchedule(a...; b...) = BatchUpdateSchedule(a..., b)

"""
Delete an expired reservation.
"""
DeleteReservation(ReservationId) = medialive("DELETE", "/prod/reservations/$reservationId")
DeleteReservation(ReservationId, args) = medialive("DELETE", "/prod/reservations/$reservationId", args)
DeleteReservation(a...; b...) = DeleteReservation(a..., b)

"""
Produces list of inputs that have been created
"""
ListInputs() = medialive("GET", "/prod/inputs")
ListInputs(, args) = medialive("GET", "/prod/inputs", args)
ListInputs(a...; b...) = ListInputs(a..., b)

"""
Gets details about a channel
"""
DescribeChannel(ChannelId) = medialive("GET", "/prod/channels/$channelId")
DescribeChannel(ChannelId, args) = medialive("GET", "/prod/channels/$channelId", args)
DescribeChannel(a...; b...) = DescribeChannel(a..., b)

"""
Starts an existing channel
"""
StartChannel(ChannelId) = medialive("POST", "/prod/channels/$channelId/start")
StartChannel(ChannelId, args) = medialive("POST", "/prod/channels/$channelId/start", args)
StartChannel(a...; b...) = StartChannel(a..., b)
