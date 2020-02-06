include("../AWSCorePrototypeServices.jl")
using .Services: workmailmessageflow

"""
Retrieves the raw content of an in-transit email message, in MIME format. 

Required Parameters:
messageId
"""
GetRawMessageContent(args) = workmailmessageflow("GET", "/messages/{messageId}", args)
