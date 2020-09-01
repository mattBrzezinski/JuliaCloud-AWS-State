include("../AWSCorePrototypeServices.jl")
using .Services: frauddetector

"""
    GetEventTypes()

Gets all event types or a specific event type if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "name": "The name.",
  "maxResults": "The maximum number of objects to return for the request.",
  "nextToken": "The next token for the subsequent request."
}
"""

GetEventTypes() = frauddetector("GetEventTypes")
GetEventTypes(args) = frauddetector("GetEventTypes", args)

"""
    GetExternalModels()

Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "modelEndpoint": "The Amazon SageMaker model endpoint.",
  "maxResults": "The maximum number of objects to return for the request.",
  "nextToken": "The next page token for the request."
}
"""

GetExternalModels() = frauddetector("GetExternalModels")
GetExternalModels(args) = frauddetector("GetExternalModels", args)

"""
    GetLabels()

Gets all labels or a specific label if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 10 and 50. To get the next page results, provide the pagination token from the GetGetLabelsResponse as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "name": "The name of the label or labels to get.",
  "maxResults": "The maximum number of objects to return for the request.",
  "nextToken": "The next token for the subsequent request."
}
"""

GetLabels() = frauddetector("GetLabels")
GetLabels(args) = frauddetector("GetLabels", args)

"""
    TagResource()

Assigns tags to a resource.

Required Parameters
{
  "resourceARN": "The resource ARN.",
  "tags": "The tags to assign to the resource."
}
"""
TagResource(args) = frauddetector("TagResource", args)

"""
    GetModels()

Gets one or more models. Gets all models for the AWS account if no model type and no model id provided. Gets all models for the AWS account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified.  This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 1 and 10. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning.

Optional Parameters
{
  "modelType": "The model type.",
  "modelId": "The model ID.",
  "maxResults": "The maximum number of objects to return for the request. ",
  "nextToken": "The next token for the subsequent request."
}
"""

GetModels() = frauddetector("GetModels")
GetModels(args) = frauddetector("GetModels", args)

"""
    UpdateModelVersionStatus()

Updates the status of a model version. You can perform the following status updates:   Change the TRAINING_COMPLETE status to ACTIVE.   Change ACTIVEto INACTIVE.  

Required Parameters
{
  "modelType": "The model type.",
  "modelVersionNumber": "The model version number.",
  "status": "The model version status.",
  "modelId": "The model ID of the model version to update."
}
"""
UpdateModelVersionStatus(args) = frauddetector("UpdateModelVersionStatus", args)

"""
    UpdateVariable()

Updates a variable.

Required Parameters
{
  "name": "The name of the variable."
}

Optional Parameters
{
  "variableType": "The variable type. For more information see Variable types.",
  "defaultValue": "The new default value of the variable.",
  "description": "The new description."
}
"""
UpdateVariable(args) = frauddetector("UpdateVariable", args)

"""
    GetRules()

Get all rules for a detector (paginated) if ruleId and ruleVersion are not specified. Gets all rules for the detector and the ruleId if present (paginated). Gets a specific rule if both the ruleId and the ruleVersion are specified. This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.

Required Parameters
{
  "detectorId": "The detector ID."
}

Optional Parameters
{
  "ruleId": "The rule ID.",
  "ruleVersion": "The rule version.",
  "maxResults": "The maximum number of rules to return for the request.",
  "nextToken": "The next page token."
}
"""
GetRules(args) = frauddetector("GetRules", args)

"""
    DescribeModelVersions()

Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 

Optional Parameters
{
  "modelType": "The model type.",
  "modelVersionNumber": "The model version number.",
  "modelId": "The model ID.",
  "maxResults": "The maximum number of results to return.",
  "nextToken": "The next token from the previous results."
}
"""

DescribeModelVersions() = frauddetector("DescribeModelVersions")
DescribeModelVersions(args) = frauddetector("DescribeModelVersions", args)

"""
    UpdateModelVersion()

Updates a model version. Updating a model version retrains an existing model version using updated training data and produces a new minor version of the model. You can update the training data set location and data access role attributes using this action. This action creates and trains a new minor version of the model, for example version 1.01, 1.02, 1.03.

Required Parameters
{
  "modelType": "The model type.",
  "majorVersionNumber": "The major version number.",
  "modelId": "The model ID."
}

Optional Parameters
{
  "externalEventsDetail": "The event details.",
  "tags": "A collection of key and value pairs."
}
"""
UpdateModelVersion(args) = frauddetector("UpdateModelVersion", args)

"""
    PutKMSEncryptionKey()

Specifies the Key Management Service (KMS) customer master key (CMK) to be used to encrypt content in Amazon Fraud Detector.

Required Parameters
{
  "kmsEncryptionKeyArn": "The KMS encryption key ARN."
}
"""
PutKMSEncryptionKey(args) = frauddetector("PutKMSEncryptionKey", args)

"""
    GetDetectors()

Gets all detectors or a single detector if a detectorId is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetDetectorsResponse as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "detectorId": "The detector ID.",
  "maxResults": "The maximum number of objects to return for the request.",
  "nextToken": "The next token for the subsequent request."
}
"""

GetDetectors() = frauddetector("GetDetectors")
GetDetectors(args) = frauddetector("GetDetectors", args)

"""
    GetOutcomes()

Gets one or more outcomes. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 100 records per page. If you provide a maxResults, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "name": "The name of the outcome or outcomes to get.",
  "maxResults": "The maximum number of objects to return for the request. ",
  "nextToken": "The next page token for the request. "
}
"""

GetOutcomes() = frauddetector("GetOutcomes")
GetOutcomes(args) = frauddetector("GetOutcomes", args)

"""
    BatchCreateVariable()

Creates a batch of variables.

Required Parameters
{
  "variableEntries": "The list of variables for the batch create variable request."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs."
}
"""
BatchCreateVariable(args) = frauddetector("BatchCreateVariable", args)

"""
    CreateRule()

Creates a rule for use with the specified detector. 

Required Parameters
{
  "detectorId": "The detector ID for the rule's parent detector.",
  "ruleId": "The rule ID.",
  "expression": "The rule expression.",
  "language": "The language of the rule.",
  "outcomes": "The outcome or outcomes returned when the rule expression matches."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs.",
  "description": "The rule description."
}
"""
CreateRule(args) = frauddetector("CreateRule", args)

"""
    UntagResource()

Removes tags from a resource.

Required Parameters
{
  "resourceARN": "The ARN of the resource from which to remove the tag.",
  "tagKeys": "The resource ARN."
}
"""
UntagResource(args) = frauddetector("UntagResource", args)

"""
    PutLabel()

Creates or updates label. A label classifies an event as fraudulent or legitimate. Labels are associated with event types and used to train supervised machine learning models in Amazon Fraud Detector. 

Required Parameters
{
  "name": "The label name."
}

Optional Parameters
{
  "tags": "",
  "description": "The label description."
}
"""
PutLabel(args) = frauddetector("PutLabel", args)

"""
    CreateModel()

Creates a model using the specified model type.

Required Parameters
{
  "modelType": "The model type. ",
  "eventTypeName": "The name of the event type.",
  "modelId": "The model ID."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs.",
  "description": "The model description. "
}
"""
CreateModel(args) = frauddetector("CreateModel", args)

"""
    DeleteRule()

Deletes the rule. You cannot delete a rule if it is used by an ACTIVE or INACTIVE detector version.

Required Parameters
{
  "rule": ""
}
"""
DeleteRule(args) = frauddetector("DeleteRule", args)

"""
    UpdateDetectorVersion()

 Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, rule execution mode, and description. You can only update a DRAFT detector version.

Required Parameters
{
  "detectorId": "The parent detector ID for the detector version you want to update.",
  "externalModelEndpoints": "The Amazon SageMaker model endpoints to include in the detector version.",
  "detectorVersionId": "The detector version ID. ",
  "rules": "The rules to include in the detector version."
}

Optional Parameters
{
  "modelVersions": "The model versions to include in the detector version.",
  "ruleExecutionMode": "The rule execution mode to add to the detector. If you specify FIRST_MATCHED, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule. If you specifiy ALL_MATCHED, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status. The default behavior is FIRST_MATCHED.",
  "description": "The detector version description. "
}
"""
UpdateDetectorVersion(args) = frauddetector("UpdateDetectorVersion", args)

"""
    BatchGetVariable()

Gets a batch of variables.

Required Parameters
{
  "names": "The list of variable names to get."
}
"""
BatchGetVariable(args) = frauddetector("BatchGetVariable", args)

"""
    PutExternalModel()

Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables. 

Required Parameters
{
  "modelEndpoint": "The model endpoints name.",
  "modelEndpointStatus": "The model endpoint’s status in Amazon Fraud Detector.",
  "invokeModelEndpointRoleArn": "The IAM role used to invoke the model endpoint.",
  "outputConfiguration": "The model endpoint output configuration.",
  "modelSource": "The source of the model.",
  "inputConfiguration": "The model endpoint input configuration."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs."
}
"""
PutExternalModel(args) = frauddetector("PutExternalModel", args)

"""
    UpdateRuleVersion()

Updates a rule version resulting in a new rule version. Updates a rule version resulting in a new rule version (version 1, 2, 3 ...). 

Required Parameters
{
  "expression": "The rule expression.",
  "language": "The language.",
  "outcomes": "The outcomes.",
  "rule": "The rule to update."
}

Optional Parameters
{
  "tags": "The tags to assign to the rule version.",
  "description": "The description."
}
"""
UpdateRuleVersion(args) = frauddetector("UpdateRuleVersion", args)

"""
    ListTagsForResource()

Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning. 

Required Parameters
{
  "resourceARN": "The ARN that specifies the resource whose tags you want to list."
}

Optional Parameters
{
  "maxResults": "The maximum number of objects to return for the request. ",
  "nextToken": "The next token from the previous results."
}
"""
ListTagsForResource(args) = frauddetector("ListTagsForResource", args)

"""
    DescribeDetector()

Gets all versions for a specified detector.

Required Parameters
{
  "detectorId": "The detector ID."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return for the request.",
  "nextToken": "The next token from the previous response."
}
"""
DescribeDetector(args) = frauddetector("DescribeDetector", args)

"""
    GetModelVersion()

Gets the details of the specified model version.

Required Parameters
{
  "modelType": "The model type.",
  "modelVersionNumber": "The model version number.",
  "modelId": "The model ID."
}
"""
GetModelVersion(args) = frauddetector("GetModelVersion", args)

"""
    GetVariables()

Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "name": "The name of the variable. ",
  "maxResults": "The max size per page determined for the get variable request. ",
  "nextToken": "The next page token of the get variable request. "
}
"""

GetVariables() = frauddetector("GetVariables")
GetVariables(args) = frauddetector("GetVariables", args)

"""
    CreateVariable()

Creates a variable.

Required Parameters
{
  "name": "The name of the variable.",
  "dataSource": "The source of the data.",
  "dataType": "The data type.",
  "defaultValue": "The default value for the variable when no value is received."
}

Optional Parameters
{
  "variableType": "The variable type. For more information see Variable types.  Valid Values: AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT | SHIPPING_ZIP | USERAGENT ",
  "tags": "A collection of key and value pairs.",
  "description": "The description."
}
"""
CreateVariable(args) = frauddetector("CreateVariable", args)

"""
    PutEntityType()

Creates or updates an entity type. An entity represents who is performing the event. As part of a fraud prediction, you pass the entity ID to indicate the specific entity who performed the event. An entity type classifies the entity. Example classifications include customer, merchant, or account.

Required Parameters
{
  "name": "The name of the entity type."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs.",
  "description": "The description."
}
"""
PutEntityType(args) = frauddetector("PutEntityType", args)

"""
    GetEntityTypes()

Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEntityTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 

Optional Parameters
{
  "name": "The name.",
  "maxResults": "The maximum number of objects to return for the request.",
  "nextToken": "The next token for the subsequent request."
}
"""

GetEntityTypes() = frauddetector("GetEntityTypes")
GetEntityTypes(args) = frauddetector("GetEntityTypes", args)

"""
    DeleteDetectorVersion()

Deletes the detector version. You cannot delete detector versions that are in ACTIVE status.

Required Parameters
{
  "detectorId": "The ID of the parent detector for the detector version to delete.",
  "detectorVersionId": "The ID of the detector version to delete."
}
"""
DeleteDetectorVersion(args) = frauddetector("DeleteDetectorVersion", args)

"""
    GetDetectorVersion()

Gets a particular detector version. 

Required Parameters
{
  "detectorId": "The detector ID.",
  "detectorVersionId": "The detector version ID."
}
"""
GetDetectorVersion(args) = frauddetector("GetDetectorVersion", args)

"""
    PutDetector()

Creates or updates a detector. 

Required Parameters
{
  "detectorId": "The detector ID. ",
  "eventTypeName": "The name of the event type."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs.",
  "description": "The description of the detector."
}
"""
PutDetector(args) = frauddetector("PutDetector", args)

"""
    DeleteDetector()

Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.

Required Parameters
{
  "detectorId": "The ID of the detector to delete."
}
"""
DeleteDetector(args) = frauddetector("DeleteDetector", args)

"""
    GetKMSEncryptionKey()

Gets the encryption key if a Key Management Service (KMS) customer master key (CMK) has been specified to be used to encrypt content in Amazon Fraud Detector.
"""

GetKMSEncryptionKey() = frauddetector("GetKMSEncryptionKey")
GetKMSEncryptionKey(args) = frauddetector("GetKMSEncryptionKey", args)

"""
    DeleteEvent()

Deletes the specified event.

Required Parameters
{
  "eventTypeName": "The name of the event type.",
  "eventId": "The ID of the event to delete."
}
"""
DeleteEvent(args) = frauddetector("DeleteEvent", args)

"""
    UpdateDetectorVersionMetadata()

Updates the detector version's description. You can update the metadata for any detector version (DRAFT, ACTIVE, or INACTIVE). 

Required Parameters
{
  "detectorId": "The detector ID.",
  "detectorVersionId": "The detector version ID. ",
  "description": "The description."
}
"""
UpdateDetectorVersionMetadata(args) = frauddetector("UpdateDetectorVersionMetadata", args)

"""
    PutOutcome()

Creates or updates an outcome. 

Required Parameters
{
  "name": "The name of the outcome."
}

Optional Parameters
{
  "tags": "A collection of key and value pairs.",
  "description": "The outcome description."
}
"""
PutOutcome(args) = frauddetector("PutOutcome", args)

"""
    CreateModelVersion()

Creates a version of the model using the specified model type and model id. 

Required Parameters
{
  "modelType": "The model type.",
  "trainingDataSource": "The training data source location in Amazon S3. ",
  "modelId": "The model ID. ",
  "trainingDataSchema": "The training data schema."
}

Optional Parameters
{
  "externalEventsDetail": "Details for the external events data used for model version training. Required if trainingDataSource is EXTERNAL_EVENTS.",
  "tags": "A collection of key and value pairs."
}
"""
CreateModelVersion(args) = frauddetector("CreateModelVersion", args)

"""
    PutEventType()

Creates or updates an event type. An event is a business activity that is evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud predictions for events. An event type defines the structure for an event sent to Amazon Fraud Detector. This includes the variables sent as part of the event, the entity performing the event (such as a customer), and the labels that classify the event. Example event types include online payment transactions, account registrations, and authentications.

Required Parameters
{
  "name": "The name.",
  "entityTypes": "The entity type for the event type. Example entity types: customer, merchant, account.",
  "eventVariables": "The event type variables."
}

Optional Parameters
{
  "labels": "The event type labels.",
  "tags": "A collection of key and value pairs.",
  "description": "The description of the event type."
}
"""
PutEventType(args) = frauddetector("PutEventType", args)

"""
    UpdateDetectorVersionStatus()

Updates the detector version’s status. You can perform the following promotions or demotions using UpdateDetectorVersionStatus: DRAFT to ACTIVE, ACTIVE to INACTIVE, and INACTIVE to ACTIVE.

Required Parameters
{
  "detectorId": "The detector ID. ",
  "detectorVersionId": "The detector version ID. ",
  "status": "The new status."
}
"""
UpdateDetectorVersionStatus(args) = frauddetector("UpdateDetectorVersionStatus", args)

"""
    UpdateModel()

Updates a model. You can update the description attribute using this action.

Required Parameters
{
  "modelType": "The model type.",
  "modelId": "The model ID."
}

Optional Parameters
{
  "description": "The new model description."
}
"""
UpdateModel(args) = frauddetector("UpdateModel", args)

"""
    GetEventPrediction()

Evaluates an event against a detector version. If a version ID is not provided, the detector’s (ACTIVE) version is used.

Required Parameters
{
  "detectorId": "The detector ID.",
  "eventTypeName": "The event type associated with the detector specified for the prediction.",
  "entities": "The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use \"UNKNOWN.\"",
  "eventTimestamp": "Timestamp that defines when the event under evaluation occurred.",
  "eventVariables": "Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.",
  "eventId": "The unique ID used to identify the event."
}

Optional Parameters
{
  "externalModelEndpointDataBlobs": "The Amazon SageMaker model endpoint input data blobs.",
  "detectorVersionId": "The detector version ID."
}
"""
GetEventPrediction(args) = frauddetector("GetEventPrediction", args)

"""
    UpdateRuleMetadata()

Updates a rule's metadata. The description attribute can be updated.

Required Parameters
{
  "rule": "The rule to update.",
  "description": "The rule description."
}
"""
UpdateRuleMetadata(args) = frauddetector("UpdateRuleMetadata", args)

"""
    CreateDetectorVersion()

Creates a detector version. The detector version starts in a DRAFT status.

Required Parameters
{
  "detectorId": "The ID of the detector under which you want to create a new version.",
  "rules": "The rules to include in the detector version."
}

Optional Parameters
{
  "externalModelEndpoints": "The Amazon Sagemaker model endpoints to include in the detector version.",
  "modelVersions": "The model versions to include in the detector version.",
  "ruleExecutionMode": "The rule execution mode for the rules included in the detector version. You can define and edit the rule mode at the detector version level, when it is in draft status. If you specify FIRST_MATCHED, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule. If you specifiy ALL_MATCHED, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules.  The default behavior is FIRST_MATCHED.",
  "tags": "A collection of key and value pairs.",
  "description": "The description of the detector version."
}
"""
CreateDetectorVersion(args) = frauddetector("CreateDetectorVersion", args)
