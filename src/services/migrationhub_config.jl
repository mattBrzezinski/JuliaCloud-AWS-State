include("../AWSCorePrototypeServices.jl")
using .Services: migrationhub_config

"""
This API sets up the home region for the calling account only.

Required Parameters:
HomeRegion, Target
"""
CreateHomeRegionControl(args) = migrationhub_config("CreateHomeRegionControl", args)

"""
Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
"""
GetHomeRegion() = migrationhub_config("GetHomeRegion")

"""
This API permits filtering on the ControlId, HomeRegion, and RegionControlScope fields.
"""
DescribeHomeRegionControls() = migrationhub_config("DescribeHomeRegionControls")
