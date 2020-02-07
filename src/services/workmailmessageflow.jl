include("../AWSCorePrototypeServices.jl")
using .Services: workmailmessageflow

"""
Retrieves the raw content of an in-transit email message, in MIME format. 
"""
GetRawMessageContent(messageId) = workmailmessageflow("GET", "/messages/$messageId")
GetRawMessageContent(messageId, args) = workmailmessageflow("GET", "/messages/$messageId", args)
GetRawMessageContent(a...; b...) = GetRawMessageContent(a..., b)
