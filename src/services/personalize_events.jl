include("../AWSCorePrototypeServices.jl")
using .Services: personalize_events

"""
Records user interaction event data.
"""
PutEvents(trackingId, sessionId, eventList) = personalize_events("POST", "/events")
PutEvents(trackingId, sessionId, eventList, args) = personalize_events("POST", "/events", args)
PutEvents(a...; b...) = PutEvents(a..., b)
