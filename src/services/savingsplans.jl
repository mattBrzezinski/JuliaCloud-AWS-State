include("../AWSCorePrototypeServices.jl")
using .Services: savingsplans

"""
Lists the tags for the specified resource.
"""
ListTagsForResource(resourceArn) = savingsplans("POST", "/ListTagsForResource")
ListTagsForResource(resourceArn, args) = savingsplans("POST", "/ListTagsForResource", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Creates a Savings Plan.
"""
CreateSavingsPlan(savingsPlanOfferingId, commitment) = savingsplans("POST", "/CreateSavingsPlan")
CreateSavingsPlan(savingsPlanOfferingId, commitment, args) = savingsplans("POST", "/CreateSavingsPlan", args)
CreateSavingsPlan(a...; b...) = CreateSavingsPlan(a..., b)

"""
Describes the specified Savings Plans offerings.
"""
DescribeSavingsPlansOfferings() = savingsplans("POST", "/DescribeSavingsPlansOfferings")
DescribeSavingsPlansOfferings(, args) = savingsplans("POST", "/DescribeSavingsPlansOfferings", args)
DescribeSavingsPlansOfferings(a...; b...) = DescribeSavingsPlansOfferings(a..., b)

"""
Describes the specified Savings Plans rates.
"""
DescribeSavingsPlanRates(savingsPlanId) = savingsplans("POST", "/DescribeSavingsPlanRates")
DescribeSavingsPlanRates(savingsPlanId, args) = savingsplans("POST", "/DescribeSavingsPlanRates", args)
DescribeSavingsPlanRates(a...; b...) = DescribeSavingsPlanRates(a..., b)

"""
Describes the specified Savings Plans offering rates.
"""
DescribeSavingsPlansOfferingRates() = savingsplans("POST", "/DescribeSavingsPlansOfferingRates")
DescribeSavingsPlansOfferingRates(, args) = savingsplans("POST", "/DescribeSavingsPlansOfferingRates", args)
DescribeSavingsPlansOfferingRates(a...; b...) = DescribeSavingsPlansOfferingRates(a..., b)

"""
Describes the specified Savings Plans.
"""
DescribeSavingsPlans() = savingsplans("POST", "/DescribeSavingsPlans")
DescribeSavingsPlans(, args) = savingsplans("POST", "/DescribeSavingsPlans", args)
DescribeSavingsPlans(a...; b...) = DescribeSavingsPlans(a..., b)

"""
Adds the specified tags to the specified resource.
"""
TagResource(resourceArn, tags) = savingsplans("POST", "/TagResource")
TagResource(resourceArn, tags, args) = savingsplans("POST", "/TagResource", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the specified tags from the specified resource.
"""
UntagResource(resourceArn, tagKeys) = savingsplans("POST", "/UntagResource")
UntagResource(resourceArn, tagKeys, args) = savingsplans("POST", "/UntagResource", args)
UntagResource(a...; b...) = UntagResource(a..., b)
