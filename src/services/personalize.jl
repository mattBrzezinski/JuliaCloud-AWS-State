include("../AWSCorePrototypeServices.jl")
using .Services: personalize

"""
    CreateDatasetImportJob

Creates a job that imports training data from your data source (an Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon Personalize to import the training data, you must specify an AWS Identity and Access Management (IAM) role that has permission to read from the data source.  The dataset import job replaces any previous data in the dataset.   Status  A dataset import job can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the import job, call DescribeDatasetImportJob, providing the Amazon Resource Name (ARN) of the dataset import job. The dataset import is complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Importing takes time. You must wait until the status shows as ACTIVE before training a model using the dataset.   Related APIs     ListDatasetImportJobs     DescribeDatasetImportJob   

Required Parameters:
{
  "roleArn": "The ARN of the IAM role that has permissions to read from the Amazon S3 data source.",
  "jobName": "The name for the dataset import job.",
  "dataSource": "The Amazon S3 bucket that contains the training data to import.",
  "datasetArn": "The ARN of the dataset that receives the imported data."
}


Optional Parameters:
{}

"""

CreateDatasetImportJob(args) = personalize("CreateDatasetImportJob", args)
"""
    DescribeDataset

Describes the given dataset. For more information on datasets, see CreateDataset.

Required Parameters:
{
  "datasetArn": "The Amazon Resource Name (ARN) of the dataset to describe."
}


Optional Parameters:
{}

"""

DescribeDataset(args) = personalize("DescribeDataset", args)
"""
    DeleteSchema

Deletes a schema. Before deleting a schema, you must delete all datasets referencing the schema. For more information on schemas, see CreateSchema.

Required Parameters:
{
  "schemaArn": "The Amazon Resource Name (ARN) of the schema to delete."
}


Optional Parameters:
{}

"""

DeleteSchema(args) = personalize("DeleteSchema", args)
"""
    CreateCampaign

Creates a campaign by deploying a solution version. When a client calls the GetRecommendations and GetPersonalizedRanking APIs, a campaign is specified in the request.  Minimum Provisioned TPS and Auto-Scaling  A transaction is a single GetRecommendations or GetPersonalizedRanking call. Transactions per second (TPS) is the throughput and unit of billing for Amazon Personalize. The minimum provisioned TPS (minProvisionedTPS) specifies the baseline throughput provisioned by Amazon Personalize, and thus, the minimum billing charge. If your TPS increases beyond minProvisionedTPS, Amazon Personalize auto-scales the provisioned capacity up and down, but never below minProvisionedTPS, to maintain a 70% utilization. There's a short time delay while the capacity is increased that might cause loss of transactions. It's recommended to start with a low minProvisionedTPS, track your usage using Amazon CloudWatch metrics, and then increase the minProvisionedTPS as necessary.  Status  A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the campaign status, call DescribeCampaign.  Wait until the status of the campaign is ACTIVE before asking the campaign for recommendations.   Related APIs     ListCampaigns     DescribeCampaign     UpdateCampaign     DeleteCampaign   

Required Parameters:
{
  "name": "A name for the new campaign. The campaign name must be unique within your account.",
  "solutionVersionArn": "The Amazon Resource Name (ARN) of the solution version to deploy.",
  "minProvisionedTPS": "Specifies the requested minimum provisioned transactions (recommendations) per second that Amazon Personalize will support."
}


Optional Parameters:
{}

"""

CreateCampaign(args) = personalize("CreateCampaign", args)
"""
    CreateSolutionVersion

Trains or retrains an active solution. A solution is created using the CreateSolution operation and must be in the ACTIVE state before calling CreateSolutionVersion. A new version of the solution is created every time you call this operation.  Status  A solution version can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the version, call DescribeSolutionVersion. Wait until the status shows as ACTIVE before calling CreateCampaign. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Related APIs     ListSolutionVersions     DescribeSolutionVersion       ListSolutions     CreateSolution     DescribeSolution     DeleteSolution   

Required Parameters:
{
  "solutionArn": "The Amazon Resource Name (ARN) of the solution containing the training configuration information."
}


Optional Parameters:
{
  "trainingMode": "The scope of training to be performed when creating the solution version. The FULL option trains the solution version based on the entirety of the input solution's training data, while the UPDATE option processes only the data that has changed in comparison to the input solution. Choose UPDATE when you want to incrementally update your solution version instead of creating an entirely new one.  The UPDATE option can only be used when you already have an active solution version created from the input solution using the FULL option and the input solution was trained with the native-recipe-hrnn-coldstart recipe. "
}

"""

CreateSolutionVersion(args) = personalize("CreateSolutionVersion", args)
"""
    DescribeSolutionVersion

Describes a specific version of a solution. For more information on solutions, see CreateSolution.

Required Parameters:
{
  "solutionVersionArn": "The Amazon Resource Name (ARN) of the solution version."
}


Optional Parameters:
{}

"""

DescribeSolutionVersion(args) = personalize("DescribeSolutionVersion", args)
"""
    ListDatasetImportJobs

Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.

Required Parameters:
{}


Optional Parameters:
{
  "maxResults": "The maximum number of dataset import jobs to return.",
  "datasetArn": "The Amazon Resource Name (ARN) of the dataset to list the dataset import jobs for.",
  "nextToken": "A token returned from the previous call to ListDatasetImportJobs for getting the next set of dataset import jobs (if they exist)."
}

"""
ListDatasetImportJobs() = personalize("ListDatasetImportJobs")
ListDatasetImportJobs(args) = personalize("ListDatasetImportJobs", args)

"""
    CreateDatasetGroup

Creates an empty dataset group. A dataset group contains related datasets that supply data for training a model. A dataset group can contain at most three datasets, one for each type of dataset:   Interactions   Items   Users   To train a model (create a solution), a dataset group that contains an Interactions dataset is required. Call CreateDataset to add a dataset to the group. A dataset group can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING   To get the status of the dataset group, call DescribeDatasetGroup. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the creation failed.  You must wait until the status of the dataset group is ACTIVE before adding a dataset to the group.  You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group. If you specify a KMS key, you must also include an AWS Identity and Access Management (IAM) role that has permission to access the key.  APIs that require a dataset group ARN in the request     CreateDataset     CreateEventTracker     CreateSolution     Related APIs     ListDatasetGroups     DescribeDatasetGroup     DeleteDatasetGroup   

Required Parameters:
{
  "name": "The name for the new dataset group."
}


Optional Parameters:
{
  "roleArn": "The ARN of the IAM role that has permissions to access the KMS key. Supplying an IAM role is only valid when also specifying a KMS key.",
  "kmsKeyArn": "The Amazon Resource Name (ARN) of a KMS key used to encrypt the datasets."
}

"""

CreateDatasetGroup(args) = personalize("CreateDatasetGroup", args)
"""
    UpdateCampaign

Updates a campaign by either deploying a new solution or changing the value of the campaign's minProvisionedTPS parameter. To update a campaign, the campaign status must be ACTIVE or CREATE FAILED. Check the campaign status using the DescribeCampaign API.  You must wait until the status of the updated campaign is ACTIVE before asking the campaign for recommendations.  For more information on campaigns, see CreateCampaign.

Required Parameters:
{
  "campaignArn": "The Amazon Resource Name (ARN) of the campaign."
}


Optional Parameters:
{
  "solutionVersionArn": "The ARN of a new solution version to deploy.",
  "minProvisionedTPS": "Specifies the requested minimum provisioned transactions (recommendations) per second that Amazon Personalize will support."
}

"""

UpdateCampaign(args) = personalize("UpdateCampaign", args)
"""
    ListSolutions

Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.

Required Parameters:
{}


Optional Parameters:
{
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group.",
  "maxResults": "The maximum number of solutions to return.",
  "nextToken": "A token returned from the previous call to ListSolutions for getting the next set of solutions (if they exist)."
}

"""
ListSolutions() = personalize("ListSolutions")
ListSolutions(args) = personalize("ListSolutions", args)

"""
    DescribeAlgorithm

Describes the given algorithm.

Required Parameters:
{
  "algorithmArn": "The Amazon Resource Name (ARN) of the algorithm to describe."
}


Optional Parameters:
{}

"""

DescribeAlgorithm(args) = personalize("DescribeAlgorithm", args)
"""
    DescribeFeatureTransformation

Describes the given feature transformation.

Required Parameters:
{
  "featureTransformationArn": "The Amazon Resource Name (ARN) of the feature transformation to describe."
}


Optional Parameters:
{}

"""

DescribeFeatureTransformation(args) = personalize("DescribeFeatureTransformation", args)
"""
    ListDatasets

Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.

Required Parameters:
{}


Optional Parameters:
{
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group that contains the datasets to list.",
  "maxResults": "The maximum number of datasets to return.",
  "nextToken": "A token returned from the previous call to ListDatasetImportJobs for getting the next set of dataset import jobs (if they exist)."
}

"""
ListDatasets() = personalize("ListDatasets")
ListDatasets(args) = personalize("ListDatasets", args)

"""
    DeleteDatasetGroup

Deletes a dataset group. Before you delete a dataset group, you must delete the following:   All associated event trackers.   All associated solutions.   All datasets in the dataset group.  

Required Parameters:
{
  "datasetGroupArn": "The ARN of the dataset group to delete."
}


Optional Parameters:
{}

"""

DeleteDatasetGroup(args) = personalize("DeleteDatasetGroup", args)
"""
    DeleteEventTracker

Deletes the event tracker. Does not delete the event-interactions dataset from the associated dataset group. For more information on event trackers, see CreateEventTracker.

Required Parameters:
{
  "eventTrackerArn": "The Amazon Resource Name (ARN) of the event tracker to delete."
}


Optional Parameters:
{}

"""

DeleteEventTracker(args) = personalize("DeleteEventTracker", args)
"""
    CreateSolution

Creates the configuration for training a model. A trained model is known as a solution. After the configuration is created, you train the model (create a solution) by calling the CreateSolutionVersion operation. Every time you call CreateSolutionVersion, a new version of the solution is created. After creating a solution version, you check its accuracy by calling GetSolutionMetrics. When you are satisfied with the version, you deploy it using CreateCampaign. The campaign provides recommendations to a client through the GetRecommendations API. To train a model, Amazon Personalize requires training data and a recipe. The training data comes from the dataset group that you provide in the request. A recipe specifies the training algorithm and a feature transformation. You can specify one of the predefined recipes provided by Amazon Personalize. Alternatively, you can specify performAutoML and Amazon Personalize will analyze your data and select the optimum USER_PERSONALIZATION recipe for you.  Status  A solution can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the solution, call DescribeSolution. Wait until the status shows as ACTIVE before calling CreateSolutionVersion.  Related APIs     ListSolutions     CreateSolutionVersion     DescribeSolution     DeleteSolution       ListSolutionVersions     DescribeSolutionVersion   

Required Parameters:
{
  "name": "The name for the solution.",
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group that provides the training data."
}


Optional Parameters:
{
  "performAutoML": "Whether to perform automated machine learning (AutoML). The default is false. For this case, you must specify recipeArn. When set to true, Amazon Personalize analyzes your training data and selects the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit recipeArn. Amazon Personalize determines the optimal recipe by running tests with different values for the hyperparameters. AutoML lengthens the training process as compared to selecting a specific recipe.",
  "eventType": "When your have multiple event types (using an EVENT_TYPE schema field), this parameter specifies which event type (for example, 'click' or 'like') is used for training the model.",
  "performHPO": "Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe. The default is false. When performing AutoML, this parameter is always true and you should not set it to false.",
  "recipeArn": "The ARN of the recipe to use for model training. Only specified when performAutoML is false.",
  "solutionConfig": "The configuration to use with the solution. When performAutoML is set to true, Amazon Personalize only evaluates the autoMLConfig section of the solution configuration."
}

"""

CreateSolution(args) = personalize("CreateSolution", args)
"""
    DescribeSchema

Describes a schema. For more information on schemas, see CreateSchema.

Required Parameters:
{
  "schemaArn": "The Amazon Resource Name (ARN) of the schema to retrieve."
}


Optional Parameters:
{}

"""

DescribeSchema(args) = personalize("DescribeSchema", args)
"""
    DeleteDataset

Deletes a dataset. You can't delete a dataset if an associated DatasetImportJob or SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on datasets, see CreateDataset.

Required Parameters:
{
  "datasetArn": "The Amazon Resource Name (ARN) of the dataset to delete."
}


Optional Parameters:
{}

"""

DeleteDataset(args) = personalize("DeleteDataset", args)
"""
    GetSolutionMetrics

Gets the metrics for the specified solution version.

Required Parameters:
{
  "solutionVersionArn": "The Amazon Resource Name (ARN) of the solution version for which to get metrics."
}


Optional Parameters:
{}

"""

GetSolutionMetrics(args) = personalize("GetSolutionMetrics", args)
"""
    DescribeSolution

Describes a solution. For more information on solutions, see CreateSolution.

Required Parameters:
{
  "solutionArn": "The Amazon Resource Name (ARN) of the solution to describe."
}


Optional Parameters:
{}

"""

DescribeSolution(args) = personalize("DescribeSolution", args)
"""
    ListSolutionVersions

Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.

Required Parameters:
{}


Optional Parameters:
{
  "solutionArn": "The Amazon Resource Name (ARN) of the solution.",
  "maxResults": "The maximum number of solution versions to return.",
  "nextToken": "A token returned from the previous call to ListSolutionVersions for getting the next set of solution versions (if they exist)."
}

"""
ListSolutionVersions() = personalize("ListSolutionVersions")
ListSolutionVersions(args) = personalize("ListSolutionVersions", args)

"""
    DescribeCampaign

Describes the given campaign, including its status. A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   When the status is CREATE FAILED, the response includes the failureReason key, which describes why. For more information on campaigns, see CreateCampaign.

Required Parameters:
{
  "campaignArn": "The Amazon Resource Name (ARN) of the campaign."
}


Optional Parameters:
{}

"""

DescribeCampaign(args) = personalize("DescribeCampaign", args)
"""
    CreateEventTracker

Creates an event tracker that you use when sending event data to the specified dataset group using the PutEvents API. When Amazon Personalize creates an event tracker, it also creates an event-interactions dataset in the dataset group associated with the event tracker. The event-interactions dataset stores the event data from the PutEvents call. The contents of this dataset are not available to the user.  Only one event tracker can be associated with a dataset group. You will get an error if you call CreateEventTracker using the same dataset group as an existing event tracker.  When you send event data you include your tracking ID. The tracking ID identifies the customer and authorizes the customer to send the data. The event tracker can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the event tracker, call DescribeEventTracker.  The event tracker must be in the ACTIVE state before using the tracking ID.   Related APIs     ListEventTrackers     DescribeEventTracker     DeleteEventTracker   

Required Parameters:
{
  "name": "The name for the event tracker.",
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group that receives the event data."
}


Optional Parameters:
{}

"""

CreateEventTracker(args) = personalize("CreateEventTracker", args)
"""
    DeleteCampaign

Removes a campaign by deleting the solution deployment. The solution that the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no longer be specified in a GetRecommendations request. For more information on campaigns, see CreateCampaign.

Required Parameters:
{
  "campaignArn": "The Amazon Resource Name (ARN) of the campaign to delete."
}


Optional Parameters:
{}

"""

DeleteCampaign(args) = personalize("DeleteCampaign", args)
"""
    DescribeEventTracker

Describes an event tracker. The response includes the trackingId and status of the event tracker. For more information on event trackers, see CreateEventTracker.

Required Parameters:
{
  "eventTrackerArn": "The Amazon Resource Name (ARN) of the event tracker to describe."
}


Optional Parameters:
{}

"""

DescribeEventTracker(args) = personalize("DescribeEventTracker", args)
"""
    DescribeDatasetImportJob

Describes the dataset import job created by CreateDatasetImportJob, including the import job status.

Required Parameters:
{
  "datasetImportJobArn": "The Amazon Resource Name (ARN) of the dataset import job to describe."
}


Optional Parameters:
{}

"""

DescribeDatasetImportJob(args) = personalize("DescribeDatasetImportJob", args)
"""
    ListBatchInferenceJobs

Gets a list of the batch inference jobs that have been performed off of a solution version.

Required Parameters:
{}


Optional Parameters:
{
  "solutionVersionArn": "The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs were created.",
  "maxResults": "The maximum number of batch inference job results to return in each page. The default value is 100.",
  "nextToken": "The token to request the next page of results."
}

"""
ListBatchInferenceJobs() = personalize("ListBatchInferenceJobs")
ListBatchInferenceJobs(args) = personalize("ListBatchInferenceJobs", args)

"""
    CreateBatchInferenceJob

Creates a batch inference job. The operation can handle up to 50 million records and the input file must be in JSON format. For more information, see recommendations-batch.

Required Parameters:
{
  "roleArn": "The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and out Amazon S3 buckets respectively.",
  "jobName": "The name of the batch inference job to create.",
  "jobOutput": "The path to the Amazon S3 bucket where the job's output will be stored.",
  "solutionVersionArn": "The Amazon Resource Name (ARN) of the solution version that will be used to generate the batch inference recommendations.",
  "jobInput": "The Amazon S3 path that leads to the input file to base your recommendations on. The input material must be in JSON format."
}


Optional Parameters:
{
  "numResults": "The number of recommendations to retreive."
}

"""

CreateBatchInferenceJob(args) = personalize("CreateBatchInferenceJob", args)
"""
    DescribeBatchInferenceJob

Gets the properties of a batch inference job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate the recommendations.

Required Parameters:
{
  "batchInferenceJobArn": "The ARN of the batch inference job to describe."
}


Optional Parameters:
{}

"""

DescribeBatchInferenceJob(args) = personalize("DescribeBatchInferenceJob", args)
"""
    DescribeDatasetGroup

Describes the given dataset group. For more information on dataset groups, see CreateDatasetGroup.

Required Parameters:
{
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group to describe."
}


Optional Parameters:
{}

"""

DescribeDatasetGroup(args) = personalize("DescribeDatasetGroup", args)
"""
    CreateSchema

Creates an Amazon Personalize schema from the specified schema string. The schema you create must be in Avro JSON format. Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset type and has a set of required field and keywords. You specify a schema when you call CreateDataset.  Related APIs     ListSchemas     DescribeSchema     DeleteSchema   

Required Parameters:
{
  "name": "The name for the schema.",
  "schema": "A schema in Avro JSON format."
}


Optional Parameters:
{}

"""

CreateSchema(args) = personalize("CreateSchema", args)
"""
    DeleteSolution

Deletes all versions of a solution and the Solution object itself. Before deleting a solution, you must delete all campaigns based on the solution. To determine what campaigns are using the solution, call ListCampaigns and supply the Amazon Resource Name (ARN) of the solution. You can't delete a solution if an associated SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on solutions, see CreateSolution.

Required Parameters:
{
  "solutionArn": "The ARN of the solution to delete."
}


Optional Parameters:
{}

"""

DeleteSolution(args) = personalize("DeleteSolution", args)
"""
    ListCampaigns

Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.

Required Parameters:
{}


Optional Parameters:
{
  "solutionArn": "The Amazon Resource Name (ARN) of the solution to list the campaigns for. When a solution is not specified, all the campaigns associated with the account are listed.",
  "maxResults": "The maximum number of campaigns to return.",
  "nextToken": "A token returned from the previous call to ListCampaigns for getting the next set of campaigns (if they exist)."
}

"""
ListCampaigns() = personalize("ListCampaigns")
ListCampaigns(args) = personalize("ListCampaigns", args)

"""
    ListDatasetGroups

Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.

Required Parameters:
{}


Optional Parameters:
{
  "maxResults": "The maximum number of dataset groups to return.",
  "nextToken": "A token returned from the previous call to ListDatasetGroups for getting the next set of dataset groups (if they exist)."
}

"""
ListDatasetGroups() = personalize("ListDatasetGroups")
ListDatasetGroups(args) = personalize("ListDatasetGroups", args)

"""
    ListEventTrackers

Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.

Required Parameters:
{}


Optional Parameters:
{
  "datasetGroupArn": "The ARN of a dataset group used to filter the response.",
  "maxResults": "The maximum number of event trackers to return.",
  "nextToken": "A token returned from the previous call to ListEventTrackers for getting the next set of event trackers (if they exist)."
}

"""
ListEventTrackers() = personalize("ListEventTrackers")
ListEventTrackers(args) = personalize("ListEventTrackers", args)

"""
    ListRecipes

Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).

Required Parameters:
{}


Optional Parameters:
{
  "recipeProvider": "The default is SERVICE.",
  "maxResults": "The maximum number of recipes to return.",
  "nextToken": "A token returned from the previous call to ListRecipes for getting the next set of recipes (if they exist)."
}

"""
ListRecipes() = personalize("ListRecipes")
ListRecipes(args) = personalize("ListRecipes", args)

"""
    CreateDataset

Creates an empty dataset and adds it to the specified dataset group. Use CreateDatasetImportJob to import your training data to a dataset. There are three types of datasets:   Interactions   Items   Users   Each dataset type has an associated schema with required field types. Only the Interactions dataset is required in order to train a model (also referred to as creating a solution). A dataset can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the dataset, call DescribeDataset.  Related APIs     CreateDatasetGroup     ListDatasets     DescribeDataset     DeleteDataset   

Required Parameters:
{
  "name": "The name for the dataset.",
  "datasetGroupArn": "The Amazon Resource Name (ARN) of the dataset group to add the dataset to.",
  "datasetType": "The type of dataset. One of the following (case insensitive) values:   Interactions   Items   Users  ",
  "schemaArn": "The ARN of the schema to associate with the dataset. The schema defines the dataset fields."
}


Optional Parameters:
{}

"""

CreateDataset(args) = personalize("CreateDataset", args)
"""
    ListSchemas

Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.

Required Parameters:
{}


Optional Parameters:
{
  "maxResults": "The maximum number of schemas to return.",
  "nextToken": "A token returned from the previous call to ListSchemas for getting the next set of schemas (if they exist)."
}

"""
ListSchemas() = personalize("ListSchemas")
ListSchemas(args) = personalize("ListSchemas", args)

"""
    DescribeRecipe

Describes a recipe. A recipe contains three items:   An algorithm that trains a model.   Hyperparameters that govern the training.   Feature transformation information for modifying the input data before training.   Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a solution with the CreateSolution API. CreateSolution trains a model by using the algorithm in the specified recipe and a training dataset. The solution, when deployed as a campaign, can provide recommendations using the GetRecommendations API.

Required Parameters:
{
  "recipeArn": "The Amazon Resource Name (ARN) of the recipe to describe."
}


Optional Parameters:
{}

"""

DescribeRecipe(args) = personalize("DescribeRecipe", args)