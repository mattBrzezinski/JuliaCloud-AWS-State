include("../AWSCorePrototypeServices.jl")
using .Services: machine_learning

"""
Generates a prediction for the observation using the specified ML Model. Note Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.

Required Parameters:
MLModelId, Record, PredictEndpoint
"""
Predict(args) = machine_learning("Predict", args)

"""
Assigns the DELETED status to a BatchPrediction, rendering it unusable. After using the DeleteBatchPrediction operation, you can use the GetBatchPrediction operation to verify that the status of the BatchPrediction changed to DELETED. Caution: The result of the DeleteBatchPrediction operation is irreversible.

Required Parameters:
BatchPredictionId
"""
DeleteBatchPrediction(args) = machine_learning("DeleteBatchPrediction", args)

"""
Updates the EvaluationName of an Evaluation. You can use the GetEvaluation operation to view the contents of the updated data element.

Required Parameters:
EvaluationId, EvaluationName
"""
UpdateEvaluation(args) = machine_learning("UpdateEvaluation", args)

"""
Assigns the DELETED status to a DataSource, rendering it unusable. After using the DeleteDataSource operation, you can use the GetDataSource operation to verify that the status of the DataSource changed to DELETED. Caution: The results of the DeleteDataSource operation are irreversible.

Required Parameters:
DataSourceId
"""
DeleteDataSource(args) = machine_learning("DeleteDataSource", args)

"""
Returns an MLModel that includes detailed metadata, data source information, and the current status of the MLModel. GetMLModel provides results in normal or verbose format. 

Required Parameters:
MLModelId
"""
GetMLModel(args) = machine_learning("GetMLModel", args)

"""
Deletes a real time endpoint of an MLModel.

Required Parameters:
MLModelId
"""
DeleteRealtimeEndpoint(args) = machine_learning("DeleteRealtimeEndpoint", args)

"""
Creates a new Evaluation of an MLModel. An MLModel is evaluated on a set of observations associated to a DataSource. Like a DataSource for an MLModel, the DataSource for an Evaluation contains values for the Target Variable. The Evaluation compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the MLModel functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding MLModelType: BINARY, REGRESSION or MULTICLASS.  CreateEvaluation is an asynchronous operation. In response to CreateEvaluation, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to PENDING. After the Evaluation is created and ready for use, Amazon ML sets the status to COMPLETED.  You can use the GetEvaluation operation to check progress of the evaluation during the creation operation.

Required Parameters:
EvaluationId, MLModelId, EvaluationDataSourceId
"""
CreateEvaluation(args) = machine_learning("CreateEvaluation", args)

"""
Creates a real-time endpoint for the MLModel. The endpoint contains the URI of the MLModel; that is, the location to send real-time prediction requests for the specified MLModel.

Required Parameters:
MLModelId
"""
CreateRealtimeEndpoint(args) = machine_learning("CreateRealtimeEndpoint", args)

"""
Assigns the DELETED status to an MLModel, rendering it unusable. After using the DeleteMLModel operation, you can use the GetMLModel operation to verify that the status of the MLModel changed to DELETED. Caution: The result of the DeleteMLModel operation is irreversible.

Required Parameters:
MLModelId
"""
DeleteMLModel(args) = machine_learning("DeleteMLModel", args)

"""
Describes one or more of the tags for your Amazon ML object.

Required Parameters:
ResourceId, ResourceType
"""
DescribeTags(args) = machine_learning("DescribeTags", args)

"""
Returns a DataSource that includes metadata and data file information, as well as the current status of the DataSource. GetDataSource provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.

Required Parameters:
DataSourceId
"""
GetDataSource(args) = machine_learning("GetDataSource", args)

"""
Updates the MLModelName and the ScoreThreshold of an MLModel. You can use the GetMLModel operation to view the contents of the updated data element.

Required Parameters:
MLModelId
"""
UpdateMLModel(args) = machine_learning("UpdateMLModel", args)

"""
Creates a DataSource object from an  Amazon Relational Database Service (Amazon RDS). A DataSource references data that can be used to perform CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromRDS is an asynchronous operation. In response to CreateDataSourceFromRDS, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource is created and ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in the COMPLETED or PENDING state can be used only to perform &gt;CreateMLModel&gt;, CreateEvaluation, or CreateBatchPrediction operations.   If Amazon ML cannot accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response. 

Required Parameters:
DataSourceId, RDSData, RoleARN
"""
CreateDataSourceFromRDS(args) = machine_learning("CreateDataSourceFromRDS", args)

"""
Returns a list of DescribeEvaluations that match the search criteria in the request.
"""
DescribeEvaluations() = machine_learning("DescribeEvaluations")

"""
Creates a new MLModel using the DataSource and the recipe as information sources.  An MLModel is nearly immutable. Users can update only the MLModelName and the ScoreThreshold in an MLModel without creating a new MLModel.  CreateMLModel is an asynchronous operation. In response to CreateMLModel, Amazon Machine Learning (Amazon ML) immediately returns and sets the MLModel status to PENDING. After the MLModel has been created and ready is for use, Amazon ML sets the status to COMPLETED.  You can use the GetMLModel operation to check the progress of the MLModel during the creation operation.  CreateMLModel requires a DataSource with computed statistics, which can be created by setting ComputeStatistics to true in CreateDataSourceFromRDS, CreateDataSourceFromS3, or CreateDataSourceFromRedshift operations. 

Required Parameters:
MLModelId, MLModelType, TrainingDataSourceId
"""
CreateMLModel(args) = machine_learning("CreateMLModel", args)

"""
Returns a list of BatchPrediction operations that match the search criteria in the request.
"""
DescribeBatchPredictions() = machine_learning("DescribeBatchPredictions")

"""
Creates a DataSource object. A DataSource references data that can be used to perform CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromS3 is an asynchronous operation. In response to CreateDataSourceFromS3, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource has been created and is ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in the COMPLETED or PENDING state can be used to perform only CreateMLModel, CreateEvaluation or CreateBatchPrediction operations.   If Amazon ML can't accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response.  The observation data used in a DataSource should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the DataSource.  After the DataSource has been created, it's ready to use in evaluations and batch predictions. If you plan to use the DataSource to train an MLModel, the DataSource also needs a recipe. A recipe describes how each input variable will be used in training an MLModel. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.

Required Parameters:
DataSourceId, DataSpec
"""
CreateDataSourceFromS3(args) = machine_learning("CreateDataSourceFromS3", args)

"""
Returns a list of MLModel that match the search criteria in the request.
"""
DescribeMLModels() = machine_learning("DescribeMLModels")

"""
Returns an Evaluation that includes metadata as well as the current status of the Evaluation.

Required Parameters:
EvaluationId
"""
GetEvaluation(args) = machine_learning("GetEvaluation", args)

"""
Assigns the DELETED status to an Evaluation, rendering it unusable. After invoking the DeleteEvaluation operation, you can use the GetEvaluation operation to verify that the status of the Evaluation changed to DELETED. Caution The results of the DeleteEvaluation operation are irreversible.

Required Parameters:
EvaluationId
"""
DeleteEvaluation(args) = machine_learning("DeleteEvaluation", args)

"""
Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a DataSource. This operation creates a new BatchPrediction, and uses an MLModel and the data files referenced by the DataSource as information sources.  CreateBatchPrediction is an asynchronous operation. In response to CreateBatchPrediction, Amazon Machine Learning (Amazon ML) immediately returns and sets the BatchPrediction status to PENDING. After the BatchPrediction completes, Amazon ML sets the status to COMPLETED.  You can poll for status updates by using the GetBatchPrediction operation and checking the Status parameter of the result. After the COMPLETED status appears, the results are available in the location specified by the OutputUri parameter.

Required Parameters:
BatchPredictionId, MLModelId, BatchPredictionDataSourceId, OutputUri
"""
CreateBatchPrediction(args) = machine_learning("CreateBatchPrediction", args)

"""
Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags. If you specify a tag that doesn't exist, Amazon ML ignores it.

Required Parameters:
TagKeys, ResourceId, ResourceType
"""
DeleteTags(args) = machine_learning("DeleteTags", args)

"""
Creates a DataSource from a database hosted on an Amazon Redshift cluster. A DataSource references data that can be used to perform either CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations. CreateDataSourceFromRedshift is an asynchronous operation. In response to CreateDataSourceFromRedshift, Amazon Machine Learning (Amazon ML) immediately returns and sets the DataSource status to PENDING. After the DataSource is created and ready for use, Amazon ML sets the Status parameter to COMPLETED. DataSource in COMPLETED or PENDING states can be used to perform only CreateMLModel, CreateEvaluation, or CreateBatchPrediction operations.   If Amazon ML can't accept the input source, it sets the Status parameter to FAILED and includes an error message in the Message attribute of the GetDataSource operation response.  The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a SelectSqlQuery query. Amazon ML executes an Unload command in Amazon Redshift to transfer the result set of the SelectSqlQuery query to S3StagingLocation. After the DataSource has been created, it's ready for use in evaluations and batch predictions. If you plan to use the DataSource to train an MLModel, the DataSource also requires a recipe. A recipe describes how each input variable will be used in training an MLModel. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions. You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call GetDataSource for an existing datasource and copy the values to a CreateDataSource call. Change the settings that you want to change and make sure that all required fields have the appropriate values. 

Required Parameters:
DataSourceId, DataSpec, RoleARN
"""
CreateDataSourceFromRedshift(args) = machine_learning("CreateDataSourceFromRedshift", args)

"""
Returns a BatchPrediction that includes detailed metadata, status, and data file information for a Batch Prediction request.

Required Parameters:
BatchPredictionId
"""
GetBatchPrediction(args) = machine_learning("GetBatchPrediction", args)

"""
Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, AddTags updates the tag's value.

Required Parameters:
Tags, ResourceId, ResourceType
"""
AddTags(args) = machine_learning("AddTags", args)

"""
Updates the BatchPredictionName of a BatchPrediction. You can use the GetBatchPrediction operation to view the contents of the updated data element.

Required Parameters:
BatchPredictionId, BatchPredictionName
"""
UpdateBatchPrediction(args) = machine_learning("UpdateBatchPrediction", args)

"""
Updates the DataSourceName of a DataSource. You can use the GetDataSource operation to view the contents of the updated data element.

Required Parameters:
DataSourceId, DataSourceName
"""
UpdateDataSource(args) = machine_learning("UpdateDataSource", args)

"""
Returns a list of DataSource that match the search criteria in the request.
"""
DescribeDataSources() = machine_learning("DescribeDataSources")
