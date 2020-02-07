include("../AWSCorePrototypeServices.jl")
using .Services: mobile_analytics

"""
The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.
"""
PutEvents(events, clientContext) = mobile_analytics("POST", "/2014-06-05/events")
PutEvents(events, clientContext, args) = mobile_analytics("POST", "/2014-06-05/events", args)
PutEvents(a...; b...) = PutEvents(a..., b)