include("../AWSCorePrototypeServices.jl")
using .Services: savingsplans

"""
Lists the tags for the specified resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = savingsplans("POST", "/ListTagsForResource", args)

"""
Creates a Savings Plan.

Required Parameters:
savingsPlanOfferingId, commitment
"""
CreateSavingsPlan(args) = savingsplans("POST", "/CreateSavingsPlan", args)

"""
Describes the specified Savings Plans offerings.
"""
DescribeSavingsPlansOfferings() = savingsplans("POST", "/DescribeSavingsPlansOfferings")

"""
Describes the specified Savings Plans rates.

Required Parameters:
savingsPlanId
"""
DescribeSavingsPlanRates(args) = savingsplans("POST", "/DescribeSavingsPlanRates", args)

"""
Describes the specified Savings Plans offering rates.
"""
DescribeSavingsPlansOfferingRates() = savingsplans("POST", "/DescribeSavingsPlansOfferingRates")

"""
Describes the specified Savings Plans.
"""
DescribeSavingsPlans() = savingsplans("POST", "/DescribeSavingsPlans")

"""
Adds the specified tags to the specified resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = savingsplans("POST", "/TagResource", args)

"""
Removes the specified tags from the specified resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = savingsplans("POST", "/UntagResource", args)
