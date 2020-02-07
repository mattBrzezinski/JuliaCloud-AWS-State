include("../AWSCorePrototypeServices.jl")
using .Services: personalize_runtime

"""
Returns a list of recommended items. The required input depends on the recipe type used to create the solution backing the campaign, as follows:   RELATED_ITEMS - itemId required, userId not used   USER_PERSONALIZATION - itemId optional, userId required    Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. 
"""
GetRecommendations(campaignArn) = personalize_runtime("POST", "/recommendations")
GetRecommendations(campaignArn, args) = personalize_runtime("POST", "/recommendations", args)
GetRecommendations(a...; b...) = GetRecommendations(a..., b)

"""
Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.  The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING. 
"""
GetPersonalizedRanking(campaignArn, inputList, userId) = personalize_runtime("POST", "/personalize-ranking")
GetPersonalizedRanking(campaignArn, inputList, userId, args) = personalize_runtime("POST", "/personalize-ranking", args)
GetPersonalizedRanking(a...; b...) = GetPersonalizedRanking(a..., b)
