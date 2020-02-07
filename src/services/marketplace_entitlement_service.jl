include("../AWSCorePrototypeServices.jl")
using .Services: marketplace_entitlement_service

"""
GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.

Required Parameters:
ProductCode
"""
GetEntitlements(args) = marketplace_entitlement_service("GetEntitlements", args)
