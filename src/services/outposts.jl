include("../AWSCorePrototypeServices.jl")
using .Services: outposts

"""
Gets information about the specified Outpost.

Required Parameters:
OutpostId
"""
GetOutpost(args) = outposts("GET", "/outposts/{OutpostId}", args)

"""
Creates an Outpost.

Required Parameters:
SiteId
"""
CreateOutpost(args) = outposts("POST", "/outposts", args)

"""
Lists the sites for the specified AWS account.
"""
ListSites() = outposts("GET", "/sites")

"""
Lists the instance types for the specified Outpost.

Required Parameters:
OutpostId
"""
GetOutpostInstanceTypes(args) = outposts("GET", "/outposts/{OutpostId}/instanceTypes", args)

"""
List the Outposts for your AWS account.
"""
ListOutposts() = outposts("GET", "/outposts")
