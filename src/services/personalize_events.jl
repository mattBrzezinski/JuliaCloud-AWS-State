include("../AWSCorePrototypeServices.jl")
using .Services: personalize_events

"""
Records user interaction event data.

Required Parameters:
trackingId, sessionId, eventList
"""
PutEvents(args) = personalize_events("POST", "/events", args)
