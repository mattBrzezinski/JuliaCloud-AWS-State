include("../AWSCorePrototypeServices.jl")
using .Services: frauddetector

"""
Gets one or more outcomes. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
"""
GetOutcomes() = frauddetector("GetOutcomes")

"""
Gets all versions for a specified detector.

Required Parameters:
detectorId
"""
DescribeDetector(args) = frauddetector("DescribeDetector", args)

"""
Gets a model version. 

Required Parameters:
modelId, modelType, modelVersionNumber
"""
GetModelVersion(args) = frauddetector("GetModelVersion", args)

"""
Deletes the specified event.

Required Parameters:
eventId
"""
DeleteEvent(args) = frauddetector("DeleteEvent", args)

"""
Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
"""
GetVariables() = frauddetector("GetVariables")

"""
Updates the detector version's description. You can update the metadata for any detector version (DRAFT, ACTIVE, or INACTIVE). 

Required Parameters:
detectorId, detectorVersionId, description
"""
UpdateDetectorVersionMetadata(args) = frauddetector("UpdateDetectorVersionMetadata", args)

"""
Creates or updates a model. 

Required Parameters:
modelId, modelType, trainingDataSource, modelVariables, labelSchema
"""
PutModel(args) = frauddetector("PutModel", args)

"""
Creates a batch of variables.

Required Parameters:
variableEntries
"""
BatchCreateVariable(args) = frauddetector("BatchCreateVariable", args)

"""
Creates a variable.

Required Parameters:
name, dataType, dataSource, defaultValue
"""
CreateVariable(args) = frauddetector("CreateVariable", args)

"""
Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
"""
GetExternalModels() = frauddetector("GetExternalModels")

"""
Creates a rule for use with the specified detector. 

Required Parameters:
ruleId, detectorId, expression, language, outcomes
"""
CreateRule(args) = frauddetector("CreateRule", args)

"""
Creates or updates an outcome. 

Required Parameters:
name
"""
PutOutcome(args) = frauddetector("PutOutcome", args)

"""
Creates a version of the model using the specified model type. 

Required Parameters:
modelId, modelType
"""
CreateModelVersion(args) = frauddetector("CreateModelVersion", args)

"""
Gets all of the models for the AWS account, or the specified model type, or gets a single model for the specified model type, model ID combination. 
"""
GetModels() = frauddetector("GetModels")

"""
Evaluates an event against a detector version. If a version ID is not provided, the detector’s (ACTIVE) version is used. 

Required Parameters:
detectorId, eventId
"""
GetPrediction(args) = frauddetector("GetPrediction", args)

"""
Updates the detector version’s status. You can perform the following promotions or demotions using UpdateDetectorVersionStatus: DRAFT to ACTIVE, ACTIVE to INACTIVE, and INACTIVE to ACTIVE.

Required Parameters:
detectorId, detectorVersionId, status
"""
UpdateDetectorVersionStatus(args) = frauddetector("UpdateDetectorVersionStatus", args)

"""
Updates a variable.

Required Parameters:
name
"""
UpdateVariable(args) = frauddetector("UpdateVariable", args)

"""
Gets all rules available for the specified detector.

Required Parameters:
detectorId
"""
GetRules(args) = frauddetector("GetRules", args)

"""
Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
"""
DescribeModelVersions() = frauddetector("DescribeModelVersions")

"""
 Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, and description. You can only update a DRAFT detector version.

Required Parameters:
detectorId, detectorVersionId, externalModelEndpoints, rules
"""
UpdateDetectorVersion(args) = frauddetector("UpdateDetectorVersion", args)

"""
Gets a particular detector version. 

Required Parameters:
detectorId, detectorVersionId
"""
GetDetectorVersion(args) = frauddetector("GetDetectorVersion", args)

"""
Deletes the detector version.

Required Parameters:
detectorId, detectorVersionId
"""
DeleteDetectorVersion(args) = frauddetector("DeleteDetectorVersion", args)

"""
Updates a model version. You can update the description and status attributes using this action. You can perform the following status updates:    Change the TRAINING_COMPLETE status to ACTIVE    Change ACTIVE back to TRAINING_COMPLETE   

Required Parameters:
modelId, modelType, modelVersionNumber, description, status
"""
UpdateModelVersion(args) = frauddetector("UpdateModelVersion", args)

"""
Creates or updates a detector. 

Required Parameters:
detectorId
"""
PutDetector(args) = frauddetector("PutDetector", args)

"""
Updates a rule's metadata. 

Required Parameters:
rule, description
"""
UpdateRuleMetadata(args) = frauddetector("UpdateRuleMetadata", args)

"""
Gets a batch of variables.

Required Parameters:
names
"""
BatchGetVariable(args) = frauddetector("BatchGetVariable", args)

"""
Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables. 

Required Parameters:
modelEndpoint, modelSource, role, inputConfiguration, outputConfiguration, modelEndpointStatus
"""
PutExternalModel(args) = frauddetector("PutExternalModel", args)

"""
Updates a rule version resulting in a new rule version. 

Required Parameters:
rule, expression, language, outcomes
"""
UpdateRuleVersion(args) = frauddetector("UpdateRuleVersion", args)

"""
Creates a detector version. The detector version starts in a DRAFT status.

Required Parameters:
detectorId, rules
"""
CreateDetectorVersion(args) = frauddetector("CreateDetectorVersion", args)

"""
Gets all of detectors. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
"""
GetDetectors() = frauddetector("GetDetectors")
