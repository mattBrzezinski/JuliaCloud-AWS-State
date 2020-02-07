include("../AWSCorePrototypeServices.jl")
using .Services: comprehendmedical

"""
Starts an asynchronous job to detect protected health information (PHI). Use the DescribePHIDetectionJob operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, LanguageCode
"""
StartPHIDetectionJob(args) = comprehendmedical("StartPHIDetectionJob", args)

"""
The DetectEntities operation is deprecated. You should use the DetectEntitiesV2 operation instead.  Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .

Required Parameters:
Text
"""
DetectEntities(args) = comprehendmedical("DetectEntities", args)

"""
Stops a protected health information (PHI) detection job in progress.

Required Parameters:
JobId
"""
StopPHIDetectionJob(args) = comprehendmedical("StopPHIDetectionJob", args)

"""
Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. The DetectEntitiesV2 operation replaces the DetectEntities operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the DetectEntitiesV2 operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and Direction entities as attributes instead of types. 

Required Parameters:
Text
"""
DetectEntitiesV2(args) = comprehendmedical("DetectEntitiesV2", args)

"""
InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine.

Required Parameters:
Text
"""
InferRxNorm(args) = comprehendmedical("InferRxNorm", args)

"""
Starts an asynchronous medical entity detection job for a collection of documents. Use the DescribeEntitiesDetectionV2Job operation to track the status of a job.

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, LanguageCode
"""
StartEntitiesDetectionV2Job(args) = comprehendmedical("StartEntitiesDetectionV2Job", args)

"""
Gets a list of medical entity detection jobs that you have submitted.
"""
ListEntitiesDetectionV2Jobs() = comprehendmedical("ListEntitiesDetectionV2Jobs")

"""
Gets a list of protected health information (PHI) detection jobs that you have submitted.
"""
ListPHIDetectionJobs() = comprehendmedical("ListPHIDetectionJobs")

"""
 Inspects the clinical text for protected health information (PHI) entities and entity category, location, and confidence score on that information.

Required Parameters:
Text
"""
DetectPHI(args) = comprehendmedical("DetectPHI", args)

"""
Stops a medical entities detection job in progress.

Required Parameters:
JobId
"""
StopEntitiesDetectionV2Job(args) = comprehendmedical("StopEntitiesDetectionV2Job", args)

"""
InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control.

Required Parameters:
Text
"""
InferICD10CM(args) = comprehendmedical("InferICD10CM", args)

"""
Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribePHIDetectionJob(args) = comprehendmedical("DescribePHIDetectionJob", args)

"""
Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.

Required Parameters:
JobId
"""
DescribeEntitiesDetectionV2Job(args) = comprehendmedical("DescribeEntitiesDetectionV2Job", args)
