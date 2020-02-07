include("../AWSCorePrototypeServices.jl")
using .Services: outposts

"""
Gets information about the specified Outpost.
"""
GetOutpost(OutpostId) = outposts("GET", "/outposts/$OutpostId")
GetOutpost(OutpostId, args) = outposts("GET", "/outposts/$OutpostId", args)
GetOutpost(a...; b...) = GetOutpost(a..., b)

"""
Creates an Outpost.
"""
CreateOutpost(SiteId) = outposts("POST", "/outposts")
CreateOutpost(SiteId, args) = outposts("POST", "/outposts", args)
CreateOutpost(a...; b...) = CreateOutpost(a..., b)

"""
Lists the sites for the specified AWS account.
"""
ListSites() = outposts("GET", "/sites")
ListSites(, args) = outposts("GET", "/sites", args)
ListSites(a...; b...) = ListSites(a..., b)

"""
Lists the instance types for the specified Outpost.
"""
GetOutpostInstanceTypes(OutpostId) = outposts("GET", "/outposts/$OutpostId/instanceTypes")
GetOutpostInstanceTypes(OutpostId, args) = outposts("GET", "/outposts/$OutpostId/instanceTypes", args)
GetOutpostInstanceTypes(a...; b...) = GetOutpostInstanceTypes(a..., b)

"""
List the Outposts for your AWS account.
"""
ListOutposts() = outposts("GET", "/outposts")
ListOutposts(, args) = outposts("GET", "/outposts", args)
ListOutposts(a...; b...) = ListOutposts(a..., b)
