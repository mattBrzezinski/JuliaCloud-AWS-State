include("../AWSCorePrototypeServices.jl")
using .Services: comprehend

"""
Gets a list of the topic detection jobs that you have submitted.
"""
ListTopicsDetectionJobs() = comprehend("ListTopicsDetectionJobs")

"""
Creates a model-specific endpoint for synchronous inference for a previously trained custom model 

Required Parameters:
EndpointName, ModelArn, DesiredInferenceUnits
"""
CreateEndpoint(args) = comprehend("CreateEndpoint", args)

"""
Gets a list of the document classifiers that you have created.
"""
ListDocumentClassifiers() = comprehend("ListDocumentClassifiers")

"""
Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn
"""
StartDominantLanguageDetectionJob(args) = comprehend("StartDominantLanguageDetectionJob", args)

"""
Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department. 

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = comprehend("TagResource", args)

"""
Stops a sentiment detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.

Required Parameters:
JobId
"""
StopSentimentDetectionJob(args) = comprehend("StopSentimentDetectionJob", args)

"""
Creates a new document classifier that you can use to categorize documents. To create a classifier you provide a set of training documents that labeled with the categories that you want to use. After the classifier is trained you can use it to categorize a set of labeled documents into the categories. For more information, see how-document-classification.

Required Parameters:
DocumentClassifierName, DataAccessRoleArn, InputDataConfig, LanguageCode
"""
CreateDocumentClassifier(args) = comprehend("CreateDocumentClassifier", args)

"""
Get a list of key phrase detection jobs that you have submitted.
"""
ListKeyPhrasesDetectionJobs() = comprehend("ListKeyPhrasesDetectionJobs")

"""
Stops a document classifier training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and put into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body. 

Required Parameters:
DocumentClassifierArn
"""
StopTrainingDocumentClassifier(args) = comprehend("StopTrainingDocumentClassifier", args)

"""
Gets a list of the dominant language detection jobs that you have submitted.
"""
ListDominantLanguageDetectionJobs() = comprehend("ListDominantLanguageDetectionJobs")

"""
Gets a list of sentiment detection jobs that you have submitted.
"""
ListSentimentDetectionJobs() = comprehend("ListSentimentDetectionJobs")

"""
Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.

Required Parameters:
JobId
"""
StopDominantLanguageDetectionJob(args) = comprehend("StopDominantLanguageDetectionJob", args)

"""
Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.

Required Parameters:
TextList, LanguageCode
"""
BatchDetectSyntax(args) = comprehend("BatchDetectSyntax", args)

"""
Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.

Required Parameters:
Text, LanguageCode
"""
DetectSyntax(args) = comprehend("DetectSyntax", args)

"""
Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.

Required Parameters:
TextList, LanguageCode
"""
BatchDetectSentiment(args) = comprehend("BatchDetectSentiment", args)

"""
Updates information about the specified endpoint.

Required Parameters:
EndpointArn, DesiredInferenceUnits
"""
UpdateEndpoint(args) = comprehend("UpdateEndpoint", args)

"""
Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.

Required Parameters:
JobId
"""
StopEntitiesDetectionJob(args) = comprehend("StopEntitiesDetectionJob", args)

"""
Removes a specific tag associated with an Amazon Comprehend resource. 

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = comprehend("UntagResource", args)

"""
Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, LanguageCode
"""
StartKeyPhrasesDetectionJob(args) = comprehend("StartKeyPhrasesDetectionJob", args)

"""
Starts an asynchronous document classification job. Use the operation to track the progress of the job.

Required Parameters:
DocumentClassifierArn, InputDataConfig, OutputDataConfig, DataAccessRoleArn
"""
StartDocumentClassificationJob(args) = comprehend("StartDocumentClassificationJob", args)

"""
Creates an entity recognizer using submitted files. After your CreateEntityRecognizer request is submitted, you can check job status using the API. 

Required Parameters:
RecognizerName, DataAccessRoleArn, InputDataConfig, LanguageCode
"""
CreateEntityRecognizer(args) = comprehend("CreateEntityRecognizer", args)

"""
Gets a list of the documentation classification jobs that you have submitted.
"""
ListDocumentClassificationJobs() = comprehend("ListDocumentClassificationJobs")

"""
Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE). 

Required Parameters:
Text, LanguageCode
"""
DetectSentiment(args) = comprehend("DetectSentiment", args)

"""
Lists all tags associated with a given Amazon Comprehend resource. 

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = comprehend("ListTagsForResource", args)

"""
Gets a list of the entity detection jobs that you have submitted.
"""
ListEntitiesDetectionJobs() = comprehend("ListEntitiesDetectionJobs")

"""
Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 

Required Parameters:
Text
"""
DetectDominantLanguage(args) = comprehend("DetectDominantLanguage", args)

"""
Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeEntitiesDetectionJob(args) = comprehend("DescribeEntitiesDetectionJob", args)

"""
Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities. 

Required Parameters:
Text, LanguageCode
"""
DetectEntities(args) = comprehend("DetectEntities", args)

"""
Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
"""
ListEntityRecognizers() = comprehend("ListEntityRecognizers")

"""
Creates a new document classification request to analyze a single document in real-time, using a previously created and trained custom model and an endpoint.

Required Parameters:
Text, EndpointArn
"""
ClassifyDocument(args) = comprehend("ClassifyDocument", args)

"""
Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.

Required Parameters:
JobId
"""
DescribeDocumentClassificationJob(args) = comprehend("DescribeDocumentClassificationJob", args)

"""
Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.

Required Parameters:
JobId
"""
StopKeyPhrasesDetectionJob(args) = comprehend("StopKeyPhrasesDetectionJob", args)

"""
Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on.

Required Parameters:
EntityRecognizerArn
"""
DescribeEntityRecognizer(args) = comprehend("DescribeEntityRecognizer", args)

"""
Deletes a model-specific endpoint for a previously-trained custom model. All endpoints must be deleted in order for the model to be deleted.

Required Parameters:
EndpointArn
"""
DeleteEndpoint(args) = comprehend("DeleteEndpoint", args)

"""
Stops an entity recognizer training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and putted into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.

Required Parameters:
EntityRecognizerArn
"""
StopTrainingEntityRecognizer(args) = comprehend("StopTrainingEntityRecognizer", args)

"""
Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn
"""
StartTopicsDetectionJob(args) = comprehend("StartTopicsDetectionJob", args)

"""
Detects the key noun phrases found in the text. 

Required Parameters:
Text, LanguageCode
"""
DetectKeyPhrases(args) = comprehend("DetectKeyPhrases", args)

"""
Deletes an entity recognizer. Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use. 

Required Parameters:
EntityRecognizerArn
"""
DeleteEntityRecognizer(args) = comprehend("DeleteEntityRecognizer", args)

"""
Detects the key noun phrases found in a batch of documents.

Required Parameters:
TextList, LanguageCode
"""
BatchDetectKeyPhrases(args) = comprehend("BatchDetectKeyPhrases", args)

"""
Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 

Required Parameters:
TextList
"""
BatchDetectDominantLanguage(args) = comprehend("BatchDetectDominantLanguage", args)

"""
Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeSentimentDetectionJob(args) = comprehend("DescribeSentimentDetectionJob", args)

"""
Gets a list of all existing endpoints that you've created.
"""
ListEndpoints() = comprehend("ListEndpoints")

"""
Gets the properties associated with a document classifier.

Required Parameters:
DocumentClassifierArn
"""
DescribeDocumentClassifier(args) = comprehend("DescribeDocumentClassifier", args)

"""
Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities 

Required Parameters:
TextList, LanguageCode
"""
BatchDetectEntities(args) = comprehend("BatchDetectEntities", args)

"""
Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the classifier into a DELETING state, and it is then removed by a background job. Once removed, the classifier disappears from your account and is no longer available for use. 

Required Parameters:
DocumentClassifierArn
"""
DeleteDocumentClassifier(args) = comprehend("DeleteDocumentClassifier", args)

"""
Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, LanguageCode
"""
StartSentimentDetectionJob(args) = comprehend("StartSentimentDetectionJob", args)

"""
Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job. This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional EntityRecognizerArn must be used in order to provide access to the recognizer being used to detect the custom entity.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, LanguageCode
"""
StartEntitiesDetectionJob(args) = comprehend("StartEntitiesDetectionJob", args)

"""
Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeTopicsDetectionJob(args) = comprehend("DescribeTopicsDetectionJob", args)

"""
Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeDominantLanguageDetectionJob(args) = comprehend("DescribeDominantLanguageDetectionJob", args)

"""
Gets the properties associated with a specific endpoint. Use this operation to get the status of an endpoint.

Required Parameters:
EndpointArn
"""
DescribeEndpoint(args) = comprehend("DescribeEndpoint", args)

"""
Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeKeyPhrasesDetectionJob(args) = comprehend("DescribeKeyPhrasesDetectionJob", args)
