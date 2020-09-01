include("../AWSCorePrototypeServices.jl")
using .Services: sagemaker

"""
    StopMonitoringSchedule()

Stops a previously started monitoring schedule.

Required Parameters
{
  "MonitoringScheduleName": "The name of the schedule to stop."
}
"""
StopMonitoringSchedule(args) = sagemaker("StopMonitoringSchedule", args)

"""
    ListTrials()

Lists the trials in your account. Specify an experiment name to limit the list to the trials that are part of that experiment. Specify a trial component name to limit the list to the trials that associated with that trial component. The list can be filtered to show only trials that were created in a specific time range. The list can be sorted by trial name or creation time.

Optional Parameters
{
  "TrialComponentName": "A filter that returns only trials that are associated with the specified trial component.",
  "MaxResults": "The maximum number of trials to return in the response. The default value is 10.",
  "NextToken": "If the previous call to ListTrials didn't return the full set of trials, the call returns a token for getting the next set of trials.",
  "SortOrder": "The sort order. The default value is Descending.",
  "ExperimentName": "A filter that returns only trials that are part of the specified experiment.",
  "CreatedAfter": "A filter that returns only trials created after the specified time.",
  "CreatedBefore": "A filter that returns only trials created before the specified time.",
  "SortBy": "The property used to sort results. The default value is CreationTime."
}
"""

ListTrials() = sagemaker("ListTrials")
ListTrials(args) = sagemaker("ListTrials", args)

"""
    CreateLabelingJob()

Creates a job that uses workers to label the data objects in your input dataset. You can use the labeled data to train machine learning models. You can select your workforce from one of three providers:   A private workforce that you create. It can include employees, contractors, and outside experts. Use a private workforce when want the data to stay within your organization or when a specific set of skills is required.   One or more vendors that you select from the AWS Marketplace. Vendors provide expertise in specific areas.    The Amazon Mechanical Turk workforce. This is the largest workforce, but it should only be used for public data or data that has been stripped of any personally identifiable information.   You can also use automated data labeling to reduce the number of data objects that need to be labeled by a human. Automated data labeling uses active learning to determine if a data object can be labeled by machine or if it needs to be sent to a human worker. For more information, see Using Automated Data Labeling. The data objects to be labeled are contained in an Amazon S3 bucket. You create a manifest file that describes the location of each object. For more information, see Using Input and Output Data. The output can be used as the manifest file for another labeling job or as training data for your machine learning models.

Required Parameters
{
  "InputConfig": "Input data for the labeling job, such as the Amazon S3 location of the data objects and the location of the manifest file that describes the data objects.",
  "HumanTaskConfig": "Configures the labeling task and how it is presented to workers; including, but not limited to price, keywords, and batch size (task count).",
  "LabelingJobName": "The name of the labeling job. This name is used to identify the job in a list of labeling jobs.",
  "OutputConfig": "The location of the output data and the AWS Key Management Service key ID for the key used to encrypt the output data, if any.",
  "LabelAttributeName": "The attribute name to use for the label in the output manifest file. This is the key for the key/value pair formed with the label that a worker assigns to the object. The name can't end with \"-metadata\". If you are running a semantic segmentation labeling job, the attribute name must end with \"-ref\". If you are running any other kind of labeling job, the attribute name must not end with \"-ref\".",
  "RoleArn": "The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during data labeling. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete data labeling."
}

Optional Parameters
{
  "StoppingConditions": "A set of conditions for stopping the labeling job. If any of the conditions are met, the job is automatically stopped. You can use these conditions to control the cost of data labeling.",
  "Tags": "An array of key/value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.",
  "LabelCategoryConfigS3Uri": "The S3 URL of the file that defines the categories used to label the data objects. For 3D point cloud task types, see Create a Labeling Category Configuration File for 3D Point Cloud Labeling Jobs.  For all other built-in task types and custom tasks, your label category configuration file must be a JSON file in the following format. Identify the labels you want to use by replacing label_1, label_2,...,label_n with your label categories.  {    \"document-version\": \"2018-11-28\"    \"labels\": [    {    \"label\": \"label_1\"    },    {    \"label\": \"label_2\"    },    ...    {    \"label\": \"label_n\"    }    ]   } ",
  "LabelingJobAlgorithmsConfig": "Configures the information required to perform automated data labeling."
}
"""
CreateLabelingJob(args) = sagemaker("CreateLabelingJob", args)

"""
    DescribeHyperParameterTuningJob()

Gets a description of a hyperparameter tuning job.

Required Parameters
{
  "HyperParameterTuningJobName": "The name of the tuning job."
}
"""
DescribeHyperParameterTuningJob(args) = sagemaker("DescribeHyperParameterTuningJob", args)

"""
    UpdateNotebookInstance()

Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements.

Required Parameters
{
  "NotebookInstanceName": "The name of the notebook instance to update."
}

Optional Parameters
{
  "LifecycleConfigName": "The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.",
  "InstanceType": "The Amazon ML compute instance type.",
  "DisassociateLifecycleConfig": "Set to true to remove the notebook instance lifecycle configuration currently associated with the notebook instance. This operation is idempotent. If you specify a lifecycle configuration that is not associated with the notebook instance when you call this method, it does not throw an error.",
  "DisassociateAcceleratorTypes": "A list of the Elastic Inference (EI) instance types to remove from this notebook instance. This operation is idempotent. If you specify an accelerator type that is not associated with the notebook instance when you call this method, it does not throw an error.",
  "AdditionalCodeRepositories": "An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in AWS CodeCommit or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see Associating Git Repositories with Amazon SageMaker Notebook Instances.",
  "RoleArn": "The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see Amazon SageMaker Roles.   To be able to pass this role to Amazon SageMaker, the caller of this API must have the iam:PassRole permission. ",
  "DisassociateDefaultCodeRepository": "The name or URL of the default Git repository to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.",
  "DisassociateAdditionalCodeRepositories": "A list of names or URLs of the default Git repositories to remove from this notebook instance. This operation is idempotent. If you specify a Git repository that is not associated with the notebook instance when you call this method, it does not throw an error.",
  "AcceleratorTypes": "A list of the Elastic Inference (EI) instance types to associate with this notebook instance. Currently only one EI instance type can be associated with a notebook instance. For more information, see Using Elastic Inference in Amazon SageMaker.",
  "VolumeSizeInGB": "The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB. ML storage volumes are encrypted, so Amazon SageMaker can't determine the amount of available free space on the volume. Because of this, you can increase the volume size when you update a notebook instance, but you can't decrease the volume size. If you want to decrease the size of the ML storage volume in use, create a new notebook instance with the desired size.",
  "DefaultCodeRepository": "The Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in AWS CodeCommit or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see Associating Git Repositories with Amazon SageMaker Notebook Instances.",
  "RootAccess": "Whether root access is enabled or disabled for users of the notebook instance. The default value is Enabled.  If you set this to Disabled, users don't have root access on the notebook instance, but lifecycle configuration scripts still run with root permissions. "
}
"""
UpdateNotebookInstance(args) = sagemaker("UpdateNotebookInstance", args)

"""
    CreateWorkforce()

Use this operation to create a workforce. This operation will return an error if a workforce already exists in the AWS Region that you specify. You can only create one workforce in each AWS Region per AWS account. If you want to create a new workforce in an AWS Region where a workforce already exists, use the API operation to delete the existing workforce and then use CreateWorkforce to create a new workforce. To create a private workforce using Amazon Cognito, you must specify a Cognito user pool in CognitoConfig. You can also create an Amazon Cognito workforce using the Amazon SageMaker console. For more information, see  Create a Private Workforce (Amazon Cognito). To create a private workforce using your own OIDC Identity Provider (IdP), specify your IdP configuration in OidcConfig. Your OIDC IdP must support groups because groups are used by Ground Truth and Amazon A2I to create work teams. For more information, see  Create a Private Workforce (OIDC IdP).

Required Parameters
{
  "WorkforceName": "The name of the private workforce."
}

Optional Parameters
{
  "SourceIpConfig": "",
  "CognitoConfig": "Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single  Amazon Cognito user pool. Do not use OidcConfig if you specify values for CognitoConfig.",
  "Tags": "An array of key-value pairs that contain metadata to help you categorize and organize our workforce. Each tag consists of a key and a value, both of which you define.",
  "OidcConfig": "Use this parameter to configure a private workforce using your own OIDC Identity Provider. Do not use CognitoConfig if you specify values for OidcConfig."
}
"""
CreateWorkforce(args) = sagemaker("CreateWorkforce", args)

"""
    ListTrainingJobs()

Lists training jobs.

Optional Parameters
{
  "MaxResults": "The maximum number of training jobs to return in the response.",
  "NameContains": "A string in the training job name. This filter returns only training jobs whose name contains the specified string.",
  "NextToken": "If the result of the previous ListTrainingJobs request was truncated, the response includes a NextToken. To retrieve the next set of training jobs, use the token in the next request. ",
  "StatusEquals": "A filter that retrieves only training jobs with a specific status.",
  "CreationTimeAfter": "A filter that returns only training jobs created after the specified time (timestamp).",
  "LastModifiedTimeBefore": "A filter that returns only training jobs modified before the specified time (timestamp).",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns only training jobs modified after the specified time (timestamp).",
  "CreationTimeBefore": "A filter that returns only training jobs created before the specified time (timestamp).",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListTrainingJobs() = sagemaker("ListTrainingJobs")
ListTrainingJobs(args) = sagemaker("ListTrainingJobs", args)

"""
    CreateEndpoint()

Creates an endpoint using the endpoint configuration specified in the request. Amazon SageMaker uses the endpoint to provision resources and deploy models. You create the endpoint configuration with the CreateEndpointConfig API.   Use this API to deploy models using Amazon SageMaker hosting services.  For an example that calls this method when deploying a model to Amazon SageMaker hosting services, see Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto 3)).    You must not delete an EndpointConfig that is in use by an endpoint that is live or while the UpdateEndpoint or CreateEndpoint operations are being performed on the endpoint. To update an endpoint, you must create a new EndpointConfig.  The endpoint name must be unique within an AWS Region in your AWS account.  When it receives the request, Amazon SageMaker creates the endpoint, launches the resources (ML compute instances), and deploys the model(s) on them.   When you call CreateEndpoint, a load call is made to DynamoDB to verify that your endpoint configuration exists. When you read data from a DynamoDB table supporting  Eventually Consistent Reads , the response might not reflect the results of a recently completed write operation. The response might include some stale data. If the dependent entities are not yet in DynamoDB, this causes a validation error. If you repeat your read request after a short time, the response should return the latest data. So retry logic is recommended to handle these possible issues. We also recommend that customers call DescribeEndpointConfig before calling CreateEndpoint to minimize the potential impact of a DynamoDB eventually consistent read.  When Amazon SageMaker receives the request, it sets the endpoint status to Creating. After it creates the endpoint, it sets the status to InService. Amazon SageMaker can then process incoming requests for inferences. To check the status of an endpoint, use the DescribeEndpoint API. If any of the models hosted at this endpoint get model data from an Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provided. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.

Required Parameters
{
  "EndpointName": "The name of the endpoint. The name must be unique within an AWS Region in your AWS account.",
  "EndpointConfigName": "The name of an endpoint configuration. For more information, see CreateEndpointConfig. "
}

Optional Parameters
{
  "Tags": "An array of key-value pairs. For more information, see Using Cost Allocation Tagsin the AWS Billing and Cost Management User Guide. "
}
"""
CreateEndpoint(args) = sagemaker("CreateEndpoint", args)

"""
    DeleteNotebookInstanceLifecycleConfig()

Deletes a notebook instance lifecycle configuration.

Required Parameters
{
  "NotebookInstanceLifecycleConfigName": "The name of the lifecycle configuration to delete."
}
"""
DeleteNotebookInstanceLifecycleConfig(args) = sagemaker("DeleteNotebookInstanceLifecycleConfig", args)

"""
    ListNotebookInstanceLifecycleConfigs()

Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API.

Optional Parameters
{
  "MaxResults": "The maximum number of lifecycle configurations to return in the response.",
  "NameContains": "A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.",
  "NextToken": "If the result of a ListNotebookInstanceLifecycleConfigs request was truncated, the response includes a NextToken. To get the next set of lifecycle configurations, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only lifecycle configurations that were created after the specified time (timestamp).",
  "LastModifiedTimeBefore": "A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).",
  "SortOrder": "The sort order for results.",
  "LastModifiedTimeAfter": "A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).",
  "CreationTimeBefore": "A filter that returns only lifecycle configurations that were created before the specified time (timestamp).",
  "SortBy": "Sorts the list of results. The default is CreationTime."
}
"""

ListNotebookInstanceLifecycleConfigs() = sagemaker("ListNotebookInstanceLifecycleConfigs")
ListNotebookInstanceLifecycleConfigs(args) = sagemaker("ListNotebookInstanceLifecycleConfigs", args)

"""
    DeleteApp()

Used to stop and delete an app.

Required Parameters
{
  "AppType": "The type of app.",
  "UserProfileName": "The user profile name.",
  "AppName": "The name of the app.",
  "DomainId": "The domain ID."
}
"""
DeleteApp(args) = sagemaker("DeleteApp", args)

"""
    ListEndpointConfigs()

Lists endpoint configurations.

Optional Parameters
{
  "MaxResults": "The maximum number of training jobs to return in the response.",
  "NameContains": "A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string. ",
  "NextToken": "If the result of the previous ListEndpointConfig request was truncated, the response includes a NextToken. To retrieve the next set of endpoint configurations, use the token in the next request. ",
  "CreationTimeAfter": "A filter that returns only endpoint configurations with a creation time greater than or equal to the specified time (timestamp).",
  "SortOrder": "The sort order for results. The default is Descending.",
  "CreationTimeBefore": "A filter that returns only endpoint configurations created before the specified time (timestamp).",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListEndpointConfigs() = sagemaker("ListEndpointConfigs")
ListEndpointConfigs(args) = sagemaker("ListEndpointConfigs", args)

"""
    StopTransformJob()

Stops a transform job. When Amazon SageMaker receives a StopTransformJob request, the status of the job changes to Stopping. After Amazon SageMaker stops the job, the status is set to Stopped. When you stop a transform job before it is completed, Amazon SageMaker doesn't store the job's output in Amazon S3.

Required Parameters
{
  "TransformJobName": "The name of the transform job to stop."
}
"""
StopTransformJob(args) = sagemaker("StopTransformJob", args)

"""
    CreateTrial()

Creates an Amazon SageMaker trial. A trial is a set of steps called trial components that produce a machine learning model. A trial is part of a single Amazon SageMaker experiment. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to a trial and then use the Search API to search for the tags. To get a list of all your trials, call the ListTrials API. To view a trial's properties, call the DescribeTrial API. To create a trial component, call the CreateTrialComponent API.

Required Parameters
{
  "TrialName": "The name of the trial. The name must be unique in your AWS account and is not case-sensitive.",
  "ExperimentName": "The name of the experiment to associate the trial with."
}

Optional Parameters
{
  "Tags": "A list of tags to associate with the trial. You can use Search API to search on the tags.",
  "DisplayName": "The name of the trial as displayed. The name doesn't need to be unique. If DisplayName isn't specified, TrialName is displayed."
}
"""
CreateTrial(args) = sagemaker("CreateTrial", args)

"""
    CreateAlgorithm()

Create a machine learning algorithm that you can use in Amazon SageMaker and list in the AWS Marketplace.

Required Parameters
{
  "AlgorithmName": "The name of the algorithm.",
  "TrainingSpecification": "Specifies details about training jobs run by this algorithm, including the following:   The Amazon ECR path of the container and the version digest of the algorithm.   The hyperparameters that the algorithm supports.   The instance types that the algorithm supports for training.   Whether the algorithm supports distributed training.   The metrics that the algorithm emits to Amazon CloudWatch.   Which metrics that the algorithm emits can be used as the objective metric for hyperparameter tuning jobs.   The input channels that the algorithm supports for training data. For example, an algorithm might support train, validation, and test channels.  "
}

Optional Parameters
{
  "CertifyForMarketplace": "Whether to certify the algorithm so that it can be listed in AWS Marketplace.",
  "AlgorithmDescription": "A description of the algorithm.",
  "InferenceSpecification": "Specifies details about inference jobs that the algorithm runs, including the following:   The Amazon ECR paths of containers that contain the inference code and model artifacts.   The instance types that the algorithm supports for transform jobs and real-time endpoints used for inference.   The input and output content formats that the algorithm supports for inference.  ",
  "ValidationSpecification": "Specifies configurations for one or more training jobs and that Amazon SageMaker runs to test the algorithm's training code and, optionally, one or more batch transform jobs that Amazon SageMaker runs to test the algorithm's inference code."
}
"""
CreateAlgorithm(args) = sagemaker("CreateAlgorithm", args)

"""
    CreateUserProfile()

Creates a user profile. A user profile represents a single user within a domain, and is the main way to reference a "person" for the purposes of sharing, reporting, and other user-oriented features. This entity is created when a user onboards to Amazon SageMaker Studio. If an administrator invites a person by email or imports them from SSO, a user profile is automatically created. A user profile is the primary holder of settings for an individual user and has a reference to the user's private Amazon Elastic File System (EFS) home directory. 

Required Parameters
{
  "UserProfileName": "A name for the UserProfile.",
  "DomainId": "The ID of the associated Domain."
}

Optional Parameters
{
  "SingleSignOnUserIdentifier": "A specifier for the type of value specified in SingleSignOnUserValue. Currently, the only supported value is \"UserName\". If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified. ",
  "Tags": "Each tag consists of a key and an optional value. Tag keys must be unique per resource.",
  "UserSettings": "A collection of settings.",
  "SingleSignOnUserValue": "The username of the associated AWS Single Sign-On User for this UserProfile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified. "
}
"""
CreateUserProfile(args) = sagemaker("CreateUserProfile", args)

"""
    UpdateNotebookInstanceLifecycleConfig()

Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API.

Required Parameters
{
  "NotebookInstanceLifecycleConfigName": "The name of the lifecycle configuration."
}

Optional Parameters
{
  "OnCreate": "The shell script that runs only once, when you create a notebook instance. The shell script must be a base64-encoded string.",
  "OnStart": "The shell script that runs every time you start a notebook instance, including when you create the notebook instance. The shell script must be a base64-encoded string."
}
"""
UpdateNotebookInstanceLifecycleConfig(args) = sagemaker("UpdateNotebookInstanceLifecycleConfig", args)

"""
    UpdateExperiment()

Adds, updates, or removes the description of an experiment. Updates the display name of an experiment.

Required Parameters
{
  "ExperimentName": "The name of the experiment to update."
}

Optional Parameters
{
  "Description": "The description of the experiment.",
  "DisplayName": "The name of the experiment as displayed. The name doesn't need to be unique. If DisplayName isn't specified, ExperimentName is displayed."
}
"""
UpdateExperiment(args) = sagemaker("UpdateExperiment", args)

"""
    UpdateWorkteam()

Updates an existing work team with new member definitions or description.

Required Parameters
{
  "WorkteamName": "The name of the work team to update."
}

Optional Parameters
{
  "Description": "An updated description for the work team.",
  "MemberDefinitions": "A list of MemberDefinition objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use CognitoMemberDefinition. For workforces created using your own OIDC identity provider (IdP) use OidcMemberDefinition. You should not provide input for both of these parameters in a single request. For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito user groups within the user pool used to create a workforce. All of the CognitoMemberDefinition objects that make up the member definition must have the same ClientId and UserPool values. To add a Amazon Cognito user group to an existing worker pool, see Adding groups to a User Pool. For more information about user pools, see Amazon Cognito User Pools. For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in OidcMemberDefinition by listing those groups in Groups. Be aware that user groups that are already in the work team must also be listed in Groups when you make this request to remain on the work team. If you do not include these user groups, they will no longer be associated with the work team you update. ",
  "NotificationConfiguration": "Configures SNS topic notifications for available or expiring work items"
}
"""
UpdateWorkteam(args) = sagemaker("UpdateWorkteam", args)

"""
    UpdateDomain()

Updates the default settings for new user profiles in the domain.

Required Parameters
{
  "DomainId": "The ID of the domain to be updated."
}

Optional Parameters
{
  "DefaultUserSettings": "A collection of settings."
}
"""
UpdateDomain(args) = sagemaker("UpdateDomain", args)

"""
    DeleteModelPackage()

Deletes a model package. A model package is used to create Amazon SageMaker models or list on AWS Marketplace. Buyers can subscribe to model packages listed on AWS Marketplace to create models in Amazon SageMaker.

Required Parameters
{
  "ModelPackageName": "The name of the model package. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
}
"""
DeleteModelPackage(args) = sagemaker("DeleteModelPackage", args)

"""
    CreateExperiment()

Creates an SageMaker experiment. An experiment is a collection of trials that are observed, compared and evaluated as a group. A trial is a set of steps, called trial components, that produce a machine learning model. The goal of an experiment is to determine the components that produce the best model. Multiple trials are performed, each one isolating and measuring the impact of a change to one or more inputs, while keeping the remaining inputs constant. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to experiments, trials, trial components and then use the Search API to search for the tags. To add a description to an experiment, specify the optional Description parameter. To add a description later, or to change the description, call the UpdateExperiment API. To get a list of all your experiments, call the ListExperiments API. To view an experiment's properties, call the DescribeExperiment API. To get a list of all the trials associated with an experiment, call the ListTrials API. To create a trial call the CreateTrial API.

Required Parameters
{
  "ExperimentName": "The name of the experiment. The name must be unique in your AWS account and is not case-sensitive."
}

Optional Parameters
{
  "Description": "The description of the experiment.",
  "Tags": "A list of tags to associate with the experiment. You can use Search API to search on the tags.",
  "DisplayName": "The name of the experiment as displayed. The name doesn't need to be unique. If you don't specify DisplayName, the value in ExperimentName is displayed."
}
"""
CreateExperiment(args) = sagemaker("CreateExperiment", args)

"""
    CreateHumanTaskUi()

Defines the settings you will use for the human review workflow user interface. Reviewers will see a three-panel interface with an instruction area, the item to review, and an input area.

Required Parameters
{
  "HumanTaskUiName": "The name of the user interface you are creating.",
  "UiTemplate": ""
}

Optional Parameters
{
  "Tags": "An array of key-value pairs that contain metadata to help you categorize and organize a human review workflow user interface. Each tag consists of a key and a value, both of which you define."
}
"""
CreateHumanTaskUi(args) = sagemaker("CreateHumanTaskUi", args)

"""
    StopProcessingJob()

Stops a processing job.

Required Parameters
{
  "ProcessingJobName": "The name of the processing job to stop."
}
"""
StopProcessingJob(args) = sagemaker("StopProcessingJob", args)

"""
    ListWorkteams()

Gets a list of private work teams that you have defined in a region. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.

Optional Parameters
{
  "NameContains": "A string in the work team's name. This filter returns only work teams whose name contains the specified string.",
  "MaxResults": "The maximum number of work teams to return in each page of the response.",
  "NextToken": "If the result of the previous ListWorkteams request was truncated, the response includes a NextToken. To retrieve the next set of labeling jobs, use the token in the next request.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListWorkteams() = sagemaker("ListWorkteams")
ListWorkteams(args) = sagemaker("ListWorkteams", args)

"""
    DeleteNotebookInstance()

 Deletes an Amazon SageMaker notebook instance. Before you can delete a notebook instance, you must call the StopNotebookInstance API.   When you delete a notebook instance, you lose all of your data. Amazon SageMaker removes the ML compute instance, and deletes the ML storage volume and the network interface associated with the notebook instance.  

Required Parameters
{
  "NotebookInstanceName": "The name of the Amazon SageMaker notebook instance to delete."
}
"""
DeleteNotebookInstance(args) = sagemaker("DeleteNotebookInstance", args)

"""
    CreateTransformJob()

Starts a transform job. A transform job uses a trained model to get inferences on a dataset and saves these results to an Amazon S3 location that you specify. To perform batch transformations, you create a transform job and use the data that you have readily available. In the request body, you provide the following:    TransformJobName - Identifies the transform job. The name must be unique within an AWS Region in an AWS account.    ModelName - Identifies the model to use. ModelName must be the name of an existing Amazon SageMaker model in the same AWS Region and AWS account. For information on creating a model, see CreateModel.    TransformInput - Describes the dataset to be transformed and the Amazon S3 location where it is stored.    TransformOutput - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.    TransformResources - Identifies the ML compute instances for the transform job.   For more information about how batch transformation works, see Batch Transform.

Required Parameters
{
  "TransformInput": "Describes the input source and the way the transform job consumes it.",
  "TransformResources": "Describes the resources, including ML instance types and ML instance count, to use for the transform job.",
  "TransformJobName": "The name of the transform job. The name must be unique within an AWS Region in an AWS account. ",
  "ModelName": "The name of the model that you want to use for the transform job. ModelName must be the name of an existing Amazon SageMaker model within an AWS Region in an AWS account.",
  "TransformOutput": "Describes the results of the transform job."
}

Optional Parameters
{
  "Environment": "The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.",
  "MaxConcurrentTransforms": "The maximum number of parallel requests that can be sent to each instance in a transform job. If MaxConcurrentTransforms is set to 0 or left unset, Amazon SageMaker checks the optional execution-parameters to determine the settings for your chosen algorithm. If the execution-parameters endpoint is not enabled, the default value is 1. For more information on execution-parameters, see How Containers Serve Requests. For built-in algorithms, you don't need to set a value for MaxConcurrentTransforms.",
  "ModelClientConfig": "Configures the timeout and maximum number of retries for processing a transform job invocation.",
  "Tags": "(Optional) An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.",
  "DataProcessing": "The data structure used to specify the data to be used for inference in a batch transform job and to associate the data that is relevant to the prediction results in the output. The input filter provided allows you to exclude input data that is not needed for inference in a batch transform job. The output filter provided allows you to include input data relevant to interpreting the predictions in the output from the job. For more information, see Associate Prediction Results with their Corresponding Input Records.",
  "MaxPayloadInMB": "The maximum allowed size of the payload, in MB. A payload is the data portion of a record (without metadata). The value in MaxPayloadInMB must be greater than, or equal to, the size of a single record. To estimate the size of a record in MB, divide the size of your dataset by the number of records. To ensure that the records fit within the maximum payload size, we recommend using a slightly larger value. The default value is 6 MB.  For cases where the payload might be arbitrarily large and is transmitted using HTTP chunked encoding, set the value to 0. This feature works only in supported algorithms. Currently, Amazon SageMaker built-in algorithms do not support HTTP chunked encoding.",
  "BatchStrategy": "Specifies the number of records to include in a mini-batch for an HTTP inference request. A record  is a single unit of input data that inference can be made on. For example, a single line in a CSV file is a record.  To enable the batch strategy, you must set the SplitType property to Line, RecordIO, or TFRecord. To use only one record when making an HTTP invocation request to a container, set BatchStrategy to SingleRecord and SplitType to Line. To fit as many records in a mini-batch as can fit within the MaxPayloadInMB limit, set BatchStrategy to MultiRecord and SplitType to Line.",
  "ExperimentConfig": ""
}
"""
CreateTransformJob(args) = sagemaker("CreateTransformJob", args)

"""
    UpdateWorkforce()

Use this operation to update your workforce. You can use this operation to require that workers use specific IP addresses to work on tasks and to update your OpenID Connect (OIDC) Identity Provider (IdP) workforce configuration.  Use SourceIpConfig to restrict worker access to tasks to a specific range of IP addresses. You specify allowed IP addresses by creating a list of up to ten CIDRs. By default, a workforce isn't restricted to specific IP addresses. If you specify a range of IP addresses, workers who attempt to access tasks using any IP address outside the specified range are denied and get a Not Found error message on the worker portal. Use OidcConfig to update the configuration of a workforce created using your own OIDC IdP.   You can only update your OIDC IdP configuration when there are no work teams associated with your workforce. You can delete work teams using the operation.  After restricting access to a range of IP addresses or updating your OIDC IdP configuration with this operation, you can view details about your update workforce using the operation.  This operation only applies to private workforces. 

Required Parameters
{
  "WorkforceName": "The name of the private workforce that you want to update. You can find your workforce name by using the operation."
}

Optional Parameters
{
  "SourceIpConfig": "A list of one to ten worker IP address ranges (CIDRs) that can be used to access tasks assigned to this workforce. Maximum: Ten CIDR values",
  "OidcConfig": "Use this parameter to update your OIDC Identity Provider (IdP) configuration for a workforce made using your own IdP."
}
"""
UpdateWorkforce(args) = sagemaker("UpdateWorkforce", args)

"""
    ListCodeRepositories()

Gets a list of the Git repositories in your account.

Optional Parameters
{
  "MaxResults": "The maximum number of Git repositories to return in the response.",
  "NameContains": "A string in the Git repositories name. This filter returns only repositories whose name contains the specified string.",
  "NextToken": "If the result of a ListCodeRepositoriesOutput request was truncated, the response includes a NextToken. To get the next set of Git repositories, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only Git repositories that were created after the specified time.",
  "LastModifiedTimeBefore": "A filter that returns only Git repositories that were last modified before the specified time.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns only Git repositories that were last modified after the specified time.",
  "CreationTimeBefore": "A filter that returns only Git repositories that were created before the specified time.",
  "SortBy": "The field to sort results by. The default is Name."
}
"""

ListCodeRepositories() = sagemaker("ListCodeRepositories")
ListCodeRepositories(args) = sagemaker("ListCodeRepositories", args)

"""
    RenderUiTemplate()

Renders the UI template so that you can preview the worker's experience. 

Required Parameters
{
  "Task": "A RenderableTask object containing a representative task to render.",
  "RoleArn": "The Amazon Resource Name (ARN) that has access to the S3 objects that are used by the template."
}

Optional Parameters
{
  "HumanTaskUiArn": "The HumanTaskUiArn of the worker UI that you want to render. Do not provide a HumanTaskUiArn if you use the UiTemplate parameter. See a list of available Human Ui Amazon Resource Names (ARNs) in UiConfig.",
  "UiTemplate": "A Template object containing the worker UI template to render."
}
"""
RenderUiTemplate(args) = sagemaker("RenderUiTemplate", args)

"""
    AddTags()

Adds or overwrites one or more tags for the specified Amazon SageMaker resource. You can add tags to notebook instances, training jobs, hyperparameter tuning jobs, batch transform jobs, models, labeling jobs, work teams, endpoint configurations, and endpoints. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see For more information, see AWS Tagging Strategies.  Tags that you add to a hyperparameter tuning job by calling this API are also added to any training jobs that the hyperparameter tuning job launches after you call this API, but not to training jobs that the hyperparameter tuning job launched before you called this API. To make sure that the tags associated with a hyperparameter tuning job are also added to all training jobs that the hyperparameter tuning job launches, add the tags when you first create the tuning job by specifying them in the Tags parameter of CreateHyperParameterTuningJob  

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource that you want to tag.",
  "Tags": "An array of Tag objects. Each tag is a key-value pair. Only the key parameter is required. If you don't specify a value, Amazon SageMaker sets the value to an empty string. "
}
"""
AddTags(args) = sagemaker("AddTags", args)

"""
    CreateAutoMLJob()

Creates an Autopilot job. Find the best performing model after you run an Autopilot job by calling . Deploy that model by following the steps described in Step 6.1: Deploy the Model to Amazon SageMaker Hosting Services. For information about how to use Autopilot, see  Automate Model Development with Amazon SageMaker Autopilot.

Required Parameters
{
  "InputDataConfig": "Similar to InputDataConfig supported by Tuning. Format(s) supported: CSV. Minimum of 1000 rows.",
  "OutputDataConfig": "Similar to OutputDataConfig supported by Tuning. Format(s) supported: CSV.",
  "AutoMLJobName": "Identifies an Autopilot job. Must be unique to your account and is case-insensitive.",
  "RoleArn": "The ARN of the role that is used to access the data."
}

Optional Parameters
{
  "ProblemType": "Defines the kind of preprocessing and algorithms intended for the candidates. Options include: BinaryClassification, MulticlassClassification, and Regression.",
  "Tags": "Each tag consists of a key and an optional value. Tag keys must be unique per resource.",
  "AutoMLJobObjective": "Defines the objective of a an AutoML job. You provide a AutoMLJobObjective MetricName and Autopilot infers whether to minimize or maximize it. If a metric is not specified, the most commonly used ObjectiveMetric for problem type is automaically selected.",
  "GenerateCandidateDefinitionsOnly": "Generates possible candidates without training a model. A candidate is a combination of data preprocessors, algorithms, and algorithm parameter settings.",
  "AutoMLJobConfig": "Contains CompletionCriteria and SecurityConfig."
}
"""
CreateAutoMLJob(args) = sagemaker("CreateAutoMLJob", args)

"""
    ListTrialComponents()

Lists the trial components in your account. You can sort the list by trial component name or creation time. You can filter the list to show only components that were created in a specific time range. You can also filter on one of the following:    ExperimentName     SourceArn     TrialName   

Optional Parameters
{
  "MaxResults": "The maximum number of components to return in the response. The default value is 10.",
  "SourceArn": "A filter that returns only components that have the specified source Amazon Resource Name (ARN). If you specify SourceArn, you can't filter by ExperimentName or TrialName.",
  "TrialName": "A filter that returns only components that are part of the specified trial. If you specify TrialName, you can't filter by ExperimentName or SourceArn.",
  "NextToken": "If the previous call to ListTrialComponents didn't return the full set of components, the call returns a token for getting the next set of components.",
  "SortOrder": "The sort order. The default value is Descending.",
  "ExperimentName": "A filter that returns only components that are part of the specified experiment. If you specify ExperimentName, you can't filter by SourceArn or TrialName.",
  "CreatedAfter": "A filter that returns only components created after the specified time.",
  "CreatedBefore": "A filter that returns only components created before the specified time.",
  "SortBy": "The property used to sort results. The default value is CreationTime."
}
"""

ListTrialComponents() = sagemaker("ListTrialComponents")
ListTrialComponents(args) = sagemaker("ListTrialComponents", args)

"""
    StartMonitoringSchedule()

Starts a previously stopped monitoring schedule.  New monitoring schedules are immediately started after creation. 

Required Parameters
{
  "MonitoringScheduleName": "The name of the schedule to start."
}
"""
StartMonitoringSchedule(args) = sagemaker("StartMonitoringSchedule", args)

"""
    StopAutoMLJob()

A method for forcing the termination of a running job.

Required Parameters
{
  "AutoMLJobName": "The name of the object you are requesting."
}
"""
StopAutoMLJob(args) = sagemaker("StopAutoMLJob", args)

"""
    ListMonitoringExecutions()

Returns list of all monitoring job executions.

Optional Parameters
{
  "EndpointName": "Name of a specific endpoint to fetch jobs for.",
  "StatusEquals": "A filter that retrieves only jobs with a specific status.",
  "ScheduledTimeAfter": "Filter for jobs scheduled after a specified time.",
  "SortOrder": "Whether to sort the results in Ascending or Descending order. The default is Descending.",
  "LastModifiedTimeAfter": "A filter that returns only jobs modified before a specified time.",
  "SortBy": "Whether to sort results by Status, CreationTime, ScheduledTime field. The default is CreationTime.",
  "MaxResults": "The maximum number of jobs to return in the response. The default value is 10.",
  "CreationTimeAfter": "A filter that returns only jobs created after a specified time.",
  "ScheduledTimeBefore": "Filter for jobs scheduled before a specified time.",
  "NextToken": "The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.",
  "MonitoringScheduleName": "Name of a specific schedule to fetch jobs for.",
  "LastModifiedTimeBefore": "A filter that returns only jobs modified after a specified time.",
  "CreationTimeBefore": "A filter that returns only jobs created before a specified time."
}
"""

ListMonitoringExecutions() = sagemaker("ListMonitoringExecutions")
ListMonitoringExecutions(args) = sagemaker("ListMonitoringExecutions", args)

"""
    UpdateTrialComponent()

Updates one or more properties of a trial component.

Required Parameters
{
  "TrialComponentName": "The name of the component to update."
}

Optional Parameters
{
  "StartTime": "When the component started.",
  "InputArtifactsToRemove": "The input artifacts to remove from the component.",
  "OutputArtifactsToRemove": "The output artifacts to remove from the component.",
  "OutputArtifacts": "Replaces all of the component's output artifacts with the specified artifacts.",
  "EndTime": "When the component ended.",
  "Status": "The new status of the component.",
  "InputArtifacts": "Replaces all of the component's input artifacts with the specified artifacts.",
  "DisplayName": "The name of the component as displayed. The name doesn't need to be unique. If DisplayName isn't specified, TrialComponentName is displayed.",
  "Parameters": "Replaces all of the component's hyperparameters with the specified hyperparameters.",
  "ParametersToRemove": "The hyperparameters to remove from the component."
}
"""
UpdateTrialComponent(args) = sagemaker("UpdateTrialComponent", args)

"""
    ListCompilationJobs()

Lists model compilation jobs that satisfy various filters. To create a model compilation job, use CreateCompilationJob. To get information about a particular model compilation job you have created, use DescribeCompilationJob.

Optional Parameters
{
  "MaxResults": "The maximum number of model compilation jobs to return in the response.",
  "NameContains": "A filter that returns the model compilation jobs whose name contains a specified string.",
  "NextToken": "If the result of the previous ListCompilationJobs request was truncated, the response includes a NextToken. To retrieve the next set of model compilation jobs, use the token in the next request.",
  "StatusEquals": "A filter that retrieves model compilation jobs with a specific DescribeCompilationJobResponse CompilationJobStatus status.",
  "CreationTimeAfter": "A filter that returns the model compilation jobs that were created after a specified time. ",
  "LastModifiedTimeBefore": "A filter that returns the model compilation jobs that were modified before a specified time.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns the model compilation jobs that were modified after a specified time.",
  "CreationTimeBefore": "A filter that returns the model compilation jobs that were created before a specified time.",
  "SortBy": "The field by which to sort results. The default is CreationTime."
}
"""

ListCompilationJobs() = sagemaker("ListCompilationJobs")
ListCompilationJobs(args) = sagemaker("ListCompilationJobs", args)

"""
    CreateNotebookInstance()

Creates an Amazon SageMaker notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.  In a CreateNotebookInstance request, specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.  Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific algorithm or with a machine learning framework.  After receiving the request, Amazon SageMaker does the following:   Creates a network interface in the Amazon SageMaker VPC.   (Option) If you specified SubnetId, Amazon SageMaker creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.   Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified SubnetId of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.   After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN). You can't change the name of a notebook instance after you create it. After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.  For more information, see How It Works. 

Required Parameters
{
  "InstanceType": "The type of ML compute instance to launch for the notebook instance.",
  "NotebookInstanceName": "The name of the new notebook instance.",
  "RoleArn": " When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see Amazon SageMaker Roles.   To be able to pass this role to Amazon SageMaker, the caller of this API must have the iam:PassRole permission. "
}

Optional Parameters
{
  "LifecycleConfigName": "The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.",
  "Tags": "A list of tags to associate with the notebook instance. You can add tags later by using the CreateTags API.",
  "SecurityGroupIds": "The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet. ",
  "AdditionalCodeRepositories": "An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in AWS CodeCommit or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see Associating Git Repositories with Amazon SageMaker Notebook Instances.",
  "SubnetId": "The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance. ",
  "DirectInternetAccess": "Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to Disabled this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC. For more information, see Notebook Instances Are Internet-Enabled by Default. You can set the value of this parameter to Disabled only if you set a value for the SubnetId parameter.",
  "KmsKeyId": "The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to your notebook instance. The KMS key you provide must be enabled. For information, see Enabling and Disabling Keys in the AWS Key Management Service Developer Guide.",
  "AcceleratorTypes": "A list of Elastic Inference (EI) instance types to associate with this notebook instance. Currently, only one instance type can be associated with a notebook instance. For more information, see Using Elastic Inference in Amazon SageMaker.",
  "RootAccess": "Whether root access is enabled or disabled for users of the notebook instance. The default value is Enabled.  Lifecycle configurations need root access to be able to set up a notebook instance. Because of this, lifecycle configurations associated with a notebook instance always run with root access even if you disable root access for users. ",
  "VolumeSizeInGB": "The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.",
  "DefaultCodeRepository": "A Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in AWS CodeCommit or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see Associating Git Repositories with Amazon SageMaker Notebook Instances."
}
"""
CreateNotebookInstance(args) = sagemaker("CreateNotebookInstance", args)

"""
    DeleteMonitoringSchedule()

Deletes a monitoring schedule. Also stops the schedule had not already been stopped. This does not delete the job execution history of the monitoring schedule. 

Required Parameters
{
  "MonitoringScheduleName": "The name of the monitoring schedule to delete."
}
"""
DeleteMonitoringSchedule(args) = sagemaker("DeleteMonitoringSchedule", args)

"""
    ListUserProfiles()

Lists user profiles.

Optional Parameters
{
  "MaxResults": "Returns a list up to a specified limit.",
  "UserProfileNameContains": "A parameter by which to filter the results.",
  "NextToken": "If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.",
  "DomainIdEquals": "A parameter by which to filter the results.",
  "SortOrder": "The sort order for the results. The default is Ascending.",
  "SortBy": "The parameter by which to sort the results. The default is CreationTime."
}
"""

ListUserProfiles() = sagemaker("ListUserProfiles")
ListUserProfiles(args) = sagemaker("ListUserProfiles", args)

"""
    ListAutoMLJobs()

Request a list of jobs.

Optional Parameters
{
  "NameContains": "Request a list of jobs, using a search filter for name.",
  "MaxResults": "Request a list of jobs up to a specified limit.",
  "StatusEquals": "Request a list of jobs, using a filter for status.",
  "NextToken": "If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.",
  "CreationTimeAfter": "Request a list of jobs, using a filter for time.",
  "LastModifiedTimeBefore": "Request a list of jobs, using a filter for time.",
  "SortOrder": "The sort order for the results. The default is Descending.",
  "LastModifiedTimeAfter": "Request a list of jobs, using a filter for time.",
  "CreationTimeBefore": "Request a list of jobs, using a filter for time.",
  "SortBy": "The parameter by which to sort the results. The default is AutoMLJobName."
}
"""

ListAutoMLJobs() = sagemaker("ListAutoMLJobs")
ListAutoMLJobs(args) = sagemaker("ListAutoMLJobs", args)

"""
    CreateMonitoringSchedule()

Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to monitor the data captured for an Amazon SageMaker Endoint.

Required Parameters
{
  "MonitoringScheduleName": "The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account.",
  "MonitoringScheduleConfig": "The configuration object that specifies the monitoring schedule and defines the monitoring job."
}

Optional Parameters
{
  "Tags": "(Optional) An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide."
}
"""
CreateMonitoringSchedule(args) = sagemaker("CreateMonitoringSchedule", args)

"""
    DescribeMonitoringSchedule()

Describes the schedule for a monitoring job.

Required Parameters
{
  "MonitoringScheduleName": "Name of a previously created monitoring schedule."
}
"""
DescribeMonitoringSchedule(args) = sagemaker("DescribeMonitoringSchedule", args)

"""
    ListSubscribedWorkteams()

Gets a list of the work teams that you are subscribed to in the AWS Marketplace. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.

Optional Parameters
{
  "NameContains": "A string in the work team name. This filter returns only work teams whose name contains the specified string.",
  "MaxResults": "The maximum number of work teams to return in each page of the response.",
  "NextToken": "If the result of the previous ListSubscribedWorkteams request was truncated, the response includes a NextToken. To retrieve the next set of labeling jobs, use the token in the next request."
}
"""

ListSubscribedWorkteams() = sagemaker("ListSubscribedWorkteams")
ListSubscribedWorkteams(args) = sagemaker("ListSubscribedWorkteams", args)

"""
    CreatePresignedNotebookInstanceUrl()

Returns a URL that you can use to connect to the Jupyter server from a notebook instance. In the Amazon SageMaker console, when you choose Open next to a notebook instance, Amazon SageMaker opens a new tab showing the Jupyter server home page from the notebook instance. The console uses this API to get the URL and show the page.  The IAM role or user used to call this API defines the permissions to access the notebook instance. Once the presigned URL is created, no additional permission is required to access this URL. IAM authorization policies for this API are also enforced for every HTTP request and WebSocket frame that attempts to connect to the notebook instance. You can restrict access to this API and to the URL that it returns to a list of IP addresses that you specify. Use the NotIpAddress condition operator and the aws:SourceIP condition context key to specify the list of IP addresses that you want to have access to the notebook instance. For more information, see Limit Access to a Notebook Instance by IP Address.  The URL that you get from a call to CreatePresignedNotebookInstanceUrl is valid only for 5 minutes. If you try to use the URL after the 5-minute limit expires, you are directed to the AWS console sign-in page. 

Required Parameters
{
  "NotebookInstanceName": "The name of the notebook instance."
}

Optional Parameters
{
  "SessionExpirationDurationInSeconds": "The duration of the session, in seconds. The default is 12 hours."
}
"""
CreatePresignedNotebookInstanceUrl(args) = sagemaker("CreatePresignedNotebookInstanceUrl", args)

"""
    UpdateTrial()

Updates the display name of a trial.

Required Parameters
{
  "TrialName": "The name of the trial to update."
}

Optional Parameters
{
  "DisplayName": "The name of the trial as displayed. The name doesn't need to be unique. If DisplayName isn't specified, TrialName is displayed."
}
"""
UpdateTrial(args) = sagemaker("UpdateTrial", args)

"""
    DeleteFlowDefinition()

Deletes the specified flow definition.

Required Parameters
{
  "FlowDefinitionName": "The name of the flow definition you are deleting."
}
"""
DeleteFlowDefinition(args) = sagemaker("DeleteFlowDefinition", args)

"""
    DescribeAlgorithm()

Returns a description of the specified algorithm that is in your account.

Required Parameters
{
  "AlgorithmName": "The name of the algorithm to describe."
}
"""
DescribeAlgorithm(args) = sagemaker("DescribeAlgorithm", args)

"""
    DeleteUserProfile()

Deletes a user profile. When a user profile is deleted, the user loses access to their EFS volume, including data, notebooks, and other artifacts.

Required Parameters
{
  "UserProfileName": "The user profile name.",
  "DomainId": "The domain ID."
}
"""
DeleteUserProfile(args) = sagemaker("DeleteUserProfile", args)

"""
    ListDomains()

Lists the domains.

Optional Parameters
{
  "MaxResults": "Returns a list up to a specified limit.",
  "NextToken": "If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results."
}
"""

ListDomains() = sagemaker("ListDomains")
ListDomains(args) = sagemaker("ListDomains", args)

"""
    ListMonitoringSchedules()

Returns list of all monitoring schedules.

Optional Parameters
{
  "NameContains": "Filter for monitoring schedules whose name contains a specified string.",
  "EndpointName": "Name of a specific endpoint to fetch schedules for.",
  "StatusEquals": "A filter that returns only monitoring schedules modified before a specified time.",
  "SortOrder": "Whether to sort the results in Ascending or Descending order. The default is Descending.",
  "LastModifiedTimeAfter": "A filter that returns only monitoring schedules modified after a specified time.",
  "SortBy": "Whether to sort results by Status, CreationTime, ScheduledTime field. The default is CreationTime.",
  "MaxResults": "The maximum number of jobs to return in the response. The default value is 10.",
  "CreationTimeAfter": "A filter that returns only monitoring schedules created after a specified time.",
  "NextToken": "The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.",
  "LastModifiedTimeBefore": "A filter that returns only monitoring schedules modified before a specified time.",
  "CreationTimeBefore": "A filter that returns only monitoring schedules created before a specified time."
}
"""

ListMonitoringSchedules() = sagemaker("ListMonitoringSchedules")
ListMonitoringSchedules(args) = sagemaker("ListMonitoringSchedules", args)

"""
    GetSearchSuggestions()

An auto-complete API for the search functionality in the Amazon SageMaker console. It returns suggestions of possible matches for the property name to use in Search queries. Provides suggestions for HyperParameters, Tags, and Metrics.

Required Parameters
{
  "Resource": "The name of the Amazon SageMaker resource to search for."
}

Optional Parameters
{
  "SuggestionQuery": "Limits the property names that are included in the response."
}
"""
GetSearchSuggestions(args) = sagemaker("GetSearchSuggestions", args)

"""
    UpdateEndpoint()

Deploys the new EndpointConfig specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous EndpointConfig (there is no availability loss).  When Amazon SageMaker receives the request, it sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API.   You must not delete an EndpointConfig in use by an endpoint that is live or while the UpdateEndpoint or CreateEndpoint operations are being performed on the endpoint. To update an endpoint, you must create a new EndpointConfig. If you delete the EndpointConfig of an endpoint that is active or being created or updated you may lose visibility into the instance type the endpoint is using. The endpoint must be deleted in order to stop incurring charges. 

Required Parameters
{
  "EndpointName": "The name of the endpoint whose configuration you want to update.",
  "EndpointConfigName": "The name of the new endpoint configuration."
}

Optional Parameters
{
  "ExcludeRetainedVariantProperties": "When you are updating endpoint resources with UpdateEndpointInput RetainAllVariantProperties, whose value is set to true, ExcludeRetainedVariantProperties specifies the list of type VariantProperty to override with the values provided by EndpointConfig. If you don't specify a value for ExcludeAllVariantProperties, no variant properties are overridden. ",
  "RetainAllVariantProperties": "When updating endpoint resources, enables or disables the retention of variant properties, such as the instance count or the variant weight. To retain the variant properties of an endpoint when updating it, set RetainAllVariantProperties to true. To use the variant properties specified in a new EndpointConfig call when updating an endpoint, set RetainAllVariantProperties to false."
}
"""
UpdateEndpoint(args) = sagemaker("UpdateEndpoint", args)

"""
    CreateHyperParameterTuningJob()

Starts a hyperparameter tuning job. A hyperparameter tuning job finds the best version of a model by running many training jobs on your dataset using the algorithm you choose and values for hyperparameters within ranges that you specify. It then chooses the hyperparameter values that result in a model that performs the best, as measured by an objective metric that you choose.

Required Parameters
{
  "HyperParameterTuningJobName": "The name of the tuning job. This name is the prefix for the names of all training jobs that this tuning job launches. The name must be unique within the same AWS account and AWS Region. The name must have { } to { } characters. Valid characters are a-z, A-Z, 0-9, and : + = @ _ % - (hyphen). The name is not case sensitive.",
  "HyperParameterTuningJobConfig": "The HyperParameterTuningJobConfig object that describes the tuning job, including the search strategy, the objective metric used to evaluate training jobs, ranges of parameters to search, and resource limits for the tuning job. For more information, see How Hyperparameter Tuning Works."
}

Optional Parameters
{
  "Tags": "An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see AWS Tagging Strategies. Tags that you specify for the tuning job are also added to all training jobs that the tuning job launches.",
  "WarmStartConfig": "Specifies the configuration for starting the hyperparameter tuning job using one or more previous tuning jobs as a starting point. The results of previous tuning jobs are used to inform which combinations of hyperparameters to search over in the new tuning job. All training jobs launched by the new hyperparameter tuning job are evaluated by using the objective metric. If you specify IDENTICAL_DATA_AND_ALGORITHM as the WarmStartType value for the warm start configuration, the training job that performs the best in the new tuning job is compared to the best training jobs from the parent tuning jobs. From these, the training job that performs the best as measured by the objective metric is returned as the overall best training job.  All training jobs launched by parent hyperparameter tuning jobs and the new hyperparameter tuning jobs count against the limit of training jobs for the tuning job. ",
  "TrainingJobDefinitions": "A list of the HyperParameterTrainingJobDefinition objects launched for this tuning job.",
  "TrainingJobDefinition": "The HyperParameterTrainingJobDefinition object that describes the training jobs that this tuning job launches, including static hyperparameters, input data configuration, output data configuration, resource configuration, and stopping condition."
}
"""
CreateHyperParameterTuningJob(args) = sagemaker("CreateHyperParameterTuningJob", args)

"""
    ListProcessingJobs()

Lists processing jobs that satisfy various filters.

Optional Parameters
{
  "NameContains": "A string in the processing job name. This filter returns only processing jobs whose name contains the specified string.",
  "MaxResults": "The maximum number of processing jobs to return in the response.",
  "StatusEquals": "A filter that retrieves only processing jobs with a specific status.",
  "NextToken": "If the result of the previous ListProcessingJobs request was truncated, the response includes a NextToken. To retrieve the next set of processing jobs, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only processing jobs created after the specified time.",
  "LastModifiedTimeBefore": "A filter that returns only processing jobs modified before the specified time.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns only processing jobs modified after the specified time.",
  "CreationTimeBefore": "A filter that returns only processing jobs created after the specified time.",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListProcessingJobs() = sagemaker("ListProcessingJobs")
ListProcessingJobs(args) = sagemaker("ListProcessingJobs", args)

"""
    DescribeEndpointConfig()

Returns the description of an endpoint configuration created using the CreateEndpointConfig API.

Required Parameters
{
  "EndpointConfigName": "The name of the endpoint configuration."
}
"""
DescribeEndpointConfig(args) = sagemaker("DescribeEndpointConfig", args)

"""
    CreateModel()

Creates a model in Amazon SageMaker. In the request, you name the model and describe a primary container. For the primary container, you specify the Docker image that contains inference code, artifacts (from prior training), and a custom environment map that the inference code uses when you deploy the model for predictions. Use this API to create a model if you want to use Amazon SageMaker hosting services or run a batch transform job. To host your model, you create an endpoint configuration with the CreateEndpointConfig API, and then create an endpoint with the CreateEndpoint API. Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.  For an example that calls this method when deploying a model to Amazon SageMaker hosting services, see Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto 3)).  To run a batch transform using your model, you start a job with the CreateTransformJob API. Amazon SageMaker uses your model and your dataset to get inferences which are then saved to a specified S3 location. In the CreateModel request, you must define a container with the PrimaryContainer parameter. In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances or for batch transform jobs. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.

Required Parameters
{
  "ModelName": "The name of the new model.",
  "ExecutionRoleArn": "The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances or for batch transform jobs. Deploying on ML compute instances is part of model hosting. For more information, see Amazon SageMaker Roles.   To be able to pass this role to Amazon SageMaker, the caller of this API must have the iam:PassRole permission. "
}

Optional Parameters
{
  "PrimaryContainer": "The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed for predictions. ",
  "Tags": "An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide. ",
  "VpcConfig": "A VpcConfig object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. VpcConfig is used in hosting services and in batch transform. For more information, see Protect Endpoints by Using an Amazon Virtual Private Cloud and Protect Data in Batch Transform Jobs by Using an Amazon Virtual Private Cloud.",
  "Containers": "Specifies the containers in the inference pipeline.",
  "EnableNetworkIsolation": "Isolates the model container. No inbound or outbound network calls can be made to or from the model container."
}
"""
CreateModel(args) = sagemaker("CreateModel", args)

"""
    DescribeExperiment()

Provides a list of an experiment's properties.

Required Parameters
{
  "ExperimentName": "The name of the experiment to describe."
}
"""
DescribeExperiment(args) = sagemaker("DescribeExperiment", args)

"""
    DescribeHumanTaskUi()

Returns information about the requested human task user interface (worker task template).

Required Parameters
{
  "HumanTaskUiName": "The name of the human task user interface (worker task template) you want information about."
}
"""
DescribeHumanTaskUi(args) = sagemaker("DescribeHumanTaskUi", args)

"""
    ListModels()

Lists models created with the CreateModel API.

Optional Parameters
{
  "MaxResults": "The maximum number of models to return in the response.",
  "NameContains": "A string in the training job name. This filter returns only models in the training job whose name contains the specified string.",
  "NextToken": "If the response to a previous ListModels request was truncated, the response includes a NextToken. To retrieve the next set of models, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only models with a creation time greater than or equal to the specified time (timestamp).",
  "SortOrder": "The sort order for results. The default is Descending.",
  "CreationTimeBefore": "A filter that returns only models created before the specified time (timestamp).",
  "SortBy": "Sorts the list of results. The default is CreationTime."
}
"""

ListModels() = sagemaker("ListModels")
ListModels(args) = sagemaker("ListModels", args)

"""
    ListLabelingJobsForWorkteam()

Gets a list of labeling jobs assigned to a specified work team.

Required Parameters
{
  "WorkteamArn": "The Amazon Resource Name (ARN) of the work team for which you want to see labeling jobs for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of labeling jobs to return in each page of the response.",
  "NextToken": "If the result of the previous ListLabelingJobsForWorkteam request was truncated, the response includes a NextToken. To retrieve the next set of labeling jobs, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only labeling jobs created after the specified time (timestamp).",
  "JobReferenceCodeContains": "A filter the limits jobs to only the ones whose job reference code contains the specified string.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "CreationTimeBefore": "A filter that returns only labeling jobs created before the specified time (timestamp).",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""
ListLabelingJobsForWorkteam(args) = sagemaker("ListLabelingJobsForWorkteam", args)

"""
    DeleteTags()

Deletes the specified tags from an Amazon SageMaker resource. To list a resource's tags, use the ListTags API.   When you call this API to delete tags from a hyperparameter tuning job, the deleted tags are not removed from training jobs that the hyperparameter tuning job launched before you called this API. 

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource whose tags you want to delete.",
  "TagKeys": "An array or one or more tag keys to delete."
}
"""
DeleteTags(args) = sagemaker("DeleteTags", args)

"""
    DescribeProcessingJob()

Returns a description of a processing job.

Required Parameters
{
  "ProcessingJobName": "The name of the processing job. The name must be unique within an AWS Region in the AWS account."
}
"""
DescribeProcessingJob(args) = sagemaker("DescribeProcessingJob", args)

"""
    CreateCompilationJob()

Starts a model compilation job. After the model has been compiled, Amazon SageMaker saves the resulting model artifacts to an Amazon Simple Storage Service (Amazon S3) bucket that you specify.  If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts with AWS IoT Greengrass. In that case, deploy them as an ML resource. In the request body, you provide the following:   A name for the compilation job    Information about the input model artifacts    The output location for the compiled model and the device (target) that the model runs on    The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker assumes to perform the model compilation job.    You can also provide a Tag to track the model compilation job's resource use and costs. The response body contains the CompilationJobArn for the compiled job. To stop a model compilation job, use StopCompilationJob. To get information about a particular model compilation job, use DescribeCompilationJob. To get information about multiple model compilation jobs, use ListCompilationJobs.

Required Parameters
{
  "InputConfig": "Provides information about the location of input model artifacts, the name and shape of the expected data inputs, and the framework in which the model was trained.",
  "StoppingCondition": "Specifies a limit to how long a model compilation job can run. When the job reaches the time limit, Amazon SageMaker ends the compilation job. Use this API to cap model training costs.",
  "OutputConfig": "Provides information about the output location for the compiled model and the target device the model runs on.",
  "CompilationJobName": "A name for the model compilation job. The name must be unique within the AWS Region and within your AWS account. ",
  "RoleArn": "The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to perform tasks on your behalf.  During model compilation, Amazon SageMaker needs your permission to:   Read input data from an S3 bucket   Write model artifacts to an S3 bucket   Write logs to Amazon CloudWatch Logs   Publish metrics to Amazon CloudWatch   You grant permissions for all of these tasks to an IAM role. To pass this role to Amazon SageMaker, the caller of this API must have the iam:PassRole permission. For more information, see Amazon SageMaker Roles. "
}
"""
CreateCompilationJob(args) = sagemaker("CreateCompilationJob", args)

"""
    DescribeUserProfile()

Describes a user profile. For more information, see CreateUserProfile.

Required Parameters
{
  "UserProfileName": "The user profile name.",
  "DomainId": "The domain ID."
}
"""
DescribeUserProfile(args) = sagemaker("DescribeUserProfile", args)

"""
    CreateFlowDefinition()

Creates a flow definition.

Required Parameters
{
  "OutputConfig": "An object containing information about where the human review results will be uploaded.",
  "HumanLoopConfig": "An object containing information about the tasks the human reviewers will perform.",
  "FlowDefinitionName": "The name of your flow definition.",
  "RoleArn": "The Amazon Resource Name (ARN) of the role needed to call other services on your behalf. For example, arn:aws:iam::1234567890:role/service-role/AmazonSageMaker-ExecutionRole-20180111T151298."
}

Optional Parameters
{
  "HumanLoopActivationConfig": "An object containing information about the events that trigger a human workflow.",
  "Tags": "An array of key-value pairs that contain metadata to help you categorize and organize a flow definition. Each tag consists of a key and a value, both of which you define.",
  "HumanLoopRequestSource": "Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source."
}
"""
CreateFlowDefinition(args) = sagemaker("CreateFlowDefinition", args)

"""
    CreateNotebookInstanceLifecycleConfig()

Creates a lifecycle configuration that you can associate with a notebook instance. A lifecycle configuration is a collection of shell scripts that run when you create or start a notebook instance. Each lifecycle configuration script has a limit of 16384 characters. The value of the  PATH environment variable that is available to both scripts is /sbin:bin:/usr/sbin:/usr/bin. View CloudWatch Logs for notebook instance lifecycle configurations in log group /aws/sagemaker/NotebookInstances in log stream [notebook-instance-name]/[LifecycleConfigHook]. Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started. For information about notebook instance lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.

Required Parameters
{
  "NotebookInstanceLifecycleConfigName": "The name of the lifecycle configuration."
}

Optional Parameters
{
  "OnCreate": "A shell script that runs only once, when you create a notebook instance. The shell script must be a base64-encoded string.",
  "OnStart": "A shell script that runs every time you start a notebook instance, including when you create the notebook instance. The shell script must be a base64-encoded string."
}
"""
CreateNotebookInstanceLifecycleConfig(args) = sagemaker("CreateNotebookInstanceLifecycleConfig", args)

"""
    CreateDomain()

Creates a Domain used by SageMaker Studio. A domain consists of an associated directory, a list of authorized users, and a variety of security, application, policy, and Amazon Virtual Private Cloud (VPC) configurations. An AWS account is limited to one domain per region. Users within a domain can share notebook files and other artifacts with each other. When a domain is created, an Amazon Elastic File System (EFS) volume is also created for use by all of the users within the domain. Each user receives a private home directory within the EFS for notebooks, Git repositories, and data files. All traffic between the domain and the EFS volume is communicated through the specified subnet IDs. All other traffic goes over the Internet through an Amazon SageMaker system VPC. The EFS traffic uses the NFS/TCP protocol over port 2049.  NFS traffic over TCP on port 2049 needs to be allowed in both inbound and outbound rules in order to launch a SageMaker Studio app successfully. 

Required Parameters
{
  "DomainName": "A name for the domain.",
  "SubnetIds": "The VPC subnets to use for communication with the EFS volume.",
  "VpcId": "The ID of the Amazon Virtual Private Cloud (VPC) to use for communication with the EFS volume.",
  "AuthMode": "The mode of authentication that members use to access the domain.",
  "DefaultUserSettings": "The default user settings."
}

Optional Parameters
{
  "Tags": "Tags to associated with the Domain. Each tag consists of a key and an optional value. Tag keys must be unique per resource. Tags are searchable using the Search API.",
  "HomeEfsFileSystemKmsKeyId": "The AWS Key Management Service (KMS) encryption key ID. Encryption with a customer master key (CMK) is not supported."
}
"""
CreateDomain(args) = sagemaker("CreateDomain", args)

"""
    ListHumanTaskUis()

Returns information about the human task user interfaces in your account.

Optional Parameters
{
  "MaxResults": "The total number of items to return. If the total number of available items is more than the value specified in MaxResults, then a NextToken will be provided in the output that you can use to resume pagination.",
  "NextToken": "A token to resume pagination.",
  "CreationTimeAfter": "A filter that returns only human task user interfaces with a creation time greater than or equal to the specified timestamp.",
  "SortOrder": "An optional value that specifies whether you want the results sorted in Ascending or Descending order.",
  "CreationTimeBefore": "A filter that returns only human task user interfaces that were created before the specified timestamp."
}
"""

ListHumanTaskUis() = sagemaker("ListHumanTaskUis")
ListHumanTaskUis(args) = sagemaker("ListHumanTaskUis", args)

"""
    CreateProcessingJob()

Creates a processing job.

Required Parameters
{
  "ProcessingResources": "Identifies the resources, ML compute instances, and ML storage volumes to deploy for a processing job. In distributed training, you specify more than one instance.",
  "ProcessingJobName": " The name of the processing job. The name must be unique within an AWS Region in the AWS account.",
  "AppSpecification": "Configures the processing job to run a specified Docker container image.",
  "RoleArn": "The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf."
}

Optional Parameters
{
  "NetworkConfig": "Networking options for a processing job.",
  "Environment": "Sets the environment variables in the Docker container.",
  "ProcessingOutputConfig": "Output configuration for the processing job.",
  "Tags": "(Optional) An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.",
  "StoppingCondition": "The time limit for how long the processing job is allowed to run.",
  "ProcessingInputs": "For each input, data is downloaded from S3 into the processing container before the processing job begins running if \"S3InputMode\" is set to File.",
  "ExperimentConfig": ""
}
"""
CreateProcessingJob(args) = sagemaker("CreateProcessingJob", args)

"""
    StartNotebookInstance()

Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume. After configuring the notebook instance, Amazon SageMaker sets the notebook instance status to InService. A notebook instance's status must be InService before you can connect to your Jupyter notebook. 

Required Parameters
{
  "NotebookInstanceName": "The name of the notebook instance to start."
}
"""
StartNotebookInstance(args) = sagemaker("StartNotebookInstance", args)

"""
    DescribeFlowDefinition()

Returns information about the specified flow definition.

Required Parameters
{
  "FlowDefinitionName": "The name of the flow definition."
}
"""
DescribeFlowDefinition(args) = sagemaker("DescribeFlowDefinition", args)

"""
    CreatePresignedDomainUrl()

Creates a URL for a specified UserProfile in a Domain. When accessed in a web browser, the user will be automatically signed in to Amazon SageMaker Studio, and granted access to all of the Apps and files associated with the Domain's Amazon Elastic File System (EFS) volume. This operation can only be called when the authentication mode equals IAM. 

Required Parameters
{
  "UserProfileName": "The name of the UserProfile to sign-in as.",
  "DomainId": "The domain ID."
}

Optional Parameters
{
  "SessionExpirationDurationInSeconds": "The session expiration duration in seconds."
}
"""
CreatePresignedDomainUrl(args) = sagemaker("CreatePresignedDomainUrl", args)

"""
    DescribeWorkforce()

Lists private workforce information, including workforce name, Amazon Resource Name (ARN), and, if applicable, allowed IP address ranges (CIDRs). Allowable IP address ranges are the IP addresses that workers can use to access tasks.   This operation applies only to private workforces. 

Required Parameters
{
  "WorkforceName": "The name of the private workforce whose access you want to restrict. WorkforceName is automatically set to default when a workforce is created and cannot be modified. "
}
"""
DescribeWorkforce(args) = sagemaker("DescribeWorkforce", args)

"""
    DescribeSubscribedWorkteam()

Gets information about a work team provided by a vendor. It returns details about the subscription with a vendor in the AWS Marketplace.

Required Parameters
{
  "WorkteamArn": "The Amazon Resource Name (ARN) of the subscribed work team to describe."
}
"""
DescribeSubscribedWorkteam(args) = sagemaker("DescribeSubscribedWorkteam", args)

"""
    UpdateEndpointWeightsAndCapacities()

Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API. 

Required Parameters
{
  "EndpointName": "The name of an existing Amazon SageMaker endpoint.",
  "DesiredWeightsAndCapacities": "An object that provides new capacity and weight values for a variant."
}
"""
UpdateEndpointWeightsAndCapacities(args) = sagemaker("UpdateEndpointWeightsAndCapacities", args)

"""
    DescribeCompilationJob()

Returns information about a model compilation job. To create a model compilation job, use CreateCompilationJob. To get information about multiple model compilation jobs, use ListCompilationJobs.

Required Parameters
{
  "CompilationJobName": "The name of the model compilation job that you want information about."
}
"""
DescribeCompilationJob(args) = sagemaker("DescribeCompilationJob", args)

"""
    StopHyperParameterTuningJob()

Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched. All model artifacts output from the training jobs are stored in Amazon Simple Storage Service (Amazon S3). All data that the training jobs write to Amazon CloudWatch Logs are still available in CloudWatch. After the tuning job moves to the Stopped state, it releases all reserved resources for the tuning job.

Required Parameters
{
  "HyperParameterTuningJobName": "The name of the tuning job to stop."
}
"""
StopHyperParameterTuningJob(args) = sagemaker("StopHyperParameterTuningJob", args)

"""
    DeleteWorkteam()

Deletes an existing work team. This operation can't be undone.

Required Parameters
{
  "WorkteamName": "The name of the work team to delete."
}
"""
DeleteWorkteam(args) = sagemaker("DeleteWorkteam", args)

"""
    DescribeTrial()

Provides a list of a trial's properties.

Required Parameters
{
  "TrialName": "The name of the trial to describe."
}
"""
DescribeTrial(args) = sagemaker("DescribeTrial", args)

"""
    DeleteTrialComponent()

Deletes the specified trial component. A trial component must be disassociated from all trials before the trial component can be deleted. To disassociate a trial component from a trial, call the DisassociateTrialComponent API.

Required Parameters
{
  "TrialComponentName": "The name of the component to delete."
}
"""
DeleteTrialComponent(args) = sagemaker("DeleteTrialComponent", args)

"""
    DescribeAutoMLJob()

Returns information about an Amazon SageMaker job.

Required Parameters
{
  "AutoMLJobName": "Request information about a job using that job's unique name."
}
"""
DescribeAutoMLJob(args) = sagemaker("DescribeAutoMLJob", args)

"""
    DisassociateTrialComponent()

Disassociates a trial component from a trial. This doesn't effect other trials the component is associated with. Before you can delete a component, you must disassociate the component from all trials it is associated with. To associate a trial component with a trial, call the AssociateTrialComponent API. To get a list of the trials a component is associated with, use the Search API. Specify ExperimentTrialComponent for the Resource parameter. The list appears in the response under Results.TrialComponent.Parents.

Required Parameters
{
  "TrialComponentName": "The name of the component to disassociate from the trial.",
  "TrialName": "The name of the trial to disassociate from."
}
"""
DisassociateTrialComponent(args) = sagemaker("DisassociateTrialComponent", args)

"""
    Search()

Finds Amazon SageMaker resources that match a search query. Matching resources are returned as a list of SearchRecord objects in the response. You can sort the search results by any resource property in a ascending or descending order. You can query against the following value types: numeric, text, Boolean, and timestamp.

Required Parameters
{
  "Resource": "The name of the Amazon SageMaker resource to search for."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "If more than MaxResults resources match the specified SearchExpression, the response includes a NextToken. The NextToken can be passed to the next SearchRequest to continue retrieving results.",
  "SearchExpression": "A Boolean conditional statement. Resources must satisfy this condition to be included in search results. You must provide at least one subexpression, filter, or nested filter. The maximum number of recursive SubExpressions, NestedFilters, and Filters that can be included in a SearchExpression object is 50.",
  "SortOrder": "How SearchResults are ordered. Valid values are Ascending or Descending. The default is Descending.",
  "SortBy": "The name of the resource property used to sort the SearchResults. The default is LastModifiedTime."
}
"""
Search(args) = sagemaker("Search", args)

"""
    ListFlowDefinitions()

Returns information about the flow definitions in your account.

Optional Parameters
{
  "MaxResults": "The total number of items to return. If the total number of available items is more than the value specified in MaxResults, then a NextToken will be provided in the output that you can use to resume pagination.",
  "NextToken": "A token to resume pagination.",
  "CreationTimeAfter": "A filter that returns only flow definitions with a creation time greater than or equal to the specified timestamp.",
  "SortOrder": "An optional value that specifies whether you want the results sorted in Ascending or Descending order.",
  "CreationTimeBefore": "A filter that returns only flow definitions that were created before the specified timestamp."
}
"""

ListFlowDefinitions() = sagemaker("ListFlowDefinitions")
ListFlowDefinitions(args) = sagemaker("ListFlowDefinitions", args)

"""
    StopCompilationJob()

Stops a model compilation job.  To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal. This gracefully shuts the job down. If the job hasn't stopped, it sends the SIGKILL signal. When it receives a StopCompilationJob request, Amazon SageMaker changes the CompilationJobSummary CompilationJobStatus of the job to Stopping. After Amazon SageMaker stops the job, it sets the CompilationJobSummary CompilationJobStatus to Stopped. 

Required Parameters
{
  "CompilationJobName": "The name of the model compilation job to stop."
}
"""
StopCompilationJob(args) = sagemaker("StopCompilationJob", args)

"""
    CreateTrainingJob()

Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.  If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a machine learning service other than Amazon SageMaker, provided that you know how to use them for inferences.  In the request body, you provide the following:     AlgorithmSpecification - Identifies the training algorithm to use.     HyperParameters - Specify these algorithm-specific parameters to enable the estimation of model parameters during training. Hyperparameters can be tuned to optimize this learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see Algorithms.     InputDataConfig - Describes the training dataset and the Amazon S3, EFS, or FSx location where it is stored.    OutputDataConfig - Identifies the Amazon S3 bucket where you want Amazon SageMaker to save the results of model training.      ResourceConfig - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.     EnableManagedSpotTraining - Optimize the cost of training machine learning models by up to 80% by using Amazon EC2 Spot instances. For more information, see Managed Spot Training.     RoleARN - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.     StoppingCondition - To help cap training costs, use MaxRuntimeInSeconds to set a time limit for training. Use MaxWaitTimeInSeconds to specify how long you are willing to wait for a managed spot training job to complete.     For more information about Amazon SageMaker, see How It Works. 

Required Parameters
{
  "ResourceConfig": "The resources, including the ML compute instances and ML storage volumes, to use for model training.  ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose File as the TrainingInputMode in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.",
  "AlgorithmSpecification": "The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see Algorithms. For information about providing your own algorithms, see Using Your Own Algorithms with Amazon SageMaker. ",
  "OutputDataConfig": "Specifies the path to the S3 location where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts. ",
  "StoppingCondition": "Specifies a limit to how long a model training job can run. When the job reaches the time limit, Amazon SageMaker ends the training job. Use this API to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal, which delays job termination for 120 seconds. Algorithms can use this 120-second window to save the model artifacts, so the results of training are not lost. ",
  "TrainingJobName": "The name of the training job. The name must be unique within an AWS Region in an AWS account. ",
  "RoleArn": "The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.  During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see Amazon SageMaker Roles.   To be able to pass this role to Amazon SageMaker, the caller of this API must have the iam:PassRole permission. "
}

Optional Parameters
{
  "InputDataConfig": "An array of Channel objects. Each channel is a named input source. InputDataConfig describes the input data and its location.  Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, training_data and validation_data. The configuration for each channel provides the S3, EFS, or FSx location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format.  Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams. For example, if you specify an EFS location, input data files will be made available as input streams. They do not need to be downloaded.",
  "DebugHookConfig": "",
  "DebugRuleConfigurations": "Configuration information for debugging rules.",
  "EnableNetworkIsolation": "Isolates the training container. No inbound or outbound network calls can be made, except for calls between peers within a training cluster for distributed training. If you enable network isolation for training jobs that are configured to use a VPC, Amazon SageMaker downloads and uploads customer data and model artifacts through the specified VPC, but the training container does not have network access.",
  "Tags": "An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide. ",
  "TensorBoardOutputConfig": "",
  "VpcConfig": "A VpcConfig object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see Protect Training Jobs by Using an Amazon Virtual Private Cloud.",
  "EnableInterContainerTrafficEncryption": "To encrypt all communications between ML compute instances in distributed training, choose True. Encryption provides greater security for distributed training, but training might take longer. How long it takes depends on the amount of communication between compute instances, especially if you use a deep learning algorithm in distributed training. For more information, see Protect Communications Between ML Compute Instances in a Distributed Training Job.",
  "ExperimentConfig": "",
  "EnableManagedSpotTraining": "To train models using managed spot training, choose True. Managed spot training provides a fully managed and scalable infrastructure for training machine learning models. this option is useful when training jobs can be interrupted and when there is flexibility when the training job is run.  The complete and intermediate results of jobs are stored in an Amazon S3 bucket, and can be used as a starting point to train models incrementally. Amazon SageMaker provides metrics and logs in CloudWatch. They can be used to see when managed spot training jobs are running, interrupted, resumed, or completed. ",
  "CheckpointConfig": "Contains information about the output location for managed spot training checkpoint data.",
  "HyperParameters": "Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see Algorithms.  You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the Length Constraint. "
}
"""
CreateTrainingJob(args) = sagemaker("CreateTrainingJob", args)

"""
    DeleteExperiment()

Deletes an Amazon SageMaker experiment. All trials associated with the experiment must be deleted first. Use the ListTrials API to get a list of the trials associated with the experiment.

Required Parameters
{
  "ExperimentName": "The name of the experiment to delete."
}
"""
DeleteExperiment(args) = sagemaker("DeleteExperiment", args)

"""
    UpdateCodeRepository()

Updates the specified Git repository with the specified values.

Required Parameters
{
  "CodeRepositoryName": "The name of the Git repository to update."
}

Optional Parameters
{
  "GitConfig": "The configuration of the git repository, including the URL and the Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the repository. The secret must have a staging label of AWSCURRENT and must be in the following format:  {\"username\": UserName, \"password\": Password} "
}
"""
UpdateCodeRepository(args) = sagemaker("UpdateCodeRepository", args)

"""
    DeleteCodeRepository()

Deletes the specified Git repository from your account.

Required Parameters
{
  "CodeRepositoryName": "The name of the Git repository to delete."
}
"""
DeleteCodeRepository(args) = sagemaker("DeleteCodeRepository", args)

"""
    ListTrainingJobsForHyperParameterTuningJob()

Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched.

Required Parameters
{
  "HyperParameterTuningJobName": "The name of the tuning job whose training jobs you want to list."
}

Optional Parameters
{
  "MaxResults": "The maximum number of training jobs to return. The default value is 10.",
  "NextToken": "If the result of the previous ListTrainingJobsForHyperParameterTuningJob request was truncated, the response includes a NextToken. To retrieve the next set of training jobs, use the token in the next request.",
  "StatusEquals": "A filter that returns only training jobs with the specified status.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "SortBy": "The field to sort results by. The default is Name. If the value of this field is FinalObjectiveMetricValue, any training jobs that did not return an objective metric are not listed."
}
"""
ListTrainingJobsForHyperParameterTuningJob(args) = sagemaker("ListTrainingJobsForHyperParameterTuningJob", args)

"""
    AssociateTrialComponent()

Associates a trial component with a trial. A trial component can be associated with multiple trials. To disassociate a trial component from a trial, call the DisassociateTrialComponent API.

Required Parameters
{
  "TrialComponentName": "The name of the component to associated with the trial.",
  "TrialName": "The name of the trial to associate with."
}
"""
AssociateTrialComponent(args) = sagemaker("AssociateTrialComponent", args)

"""
    StopTrainingJob()

Stops a training job. To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of the training is not lost.  When it receives a StopTrainingJob request, Amazon SageMaker changes the status of the job to Stopping. After Amazon SageMaker stops the job, it sets the status to Stopped.

Required Parameters
{
  "TrainingJobName": "The name of the training job to stop."
}
"""
StopTrainingJob(args) = sagemaker("StopTrainingJob", args)

"""
    UpdateUserProfile()

Updates a user profile.

Required Parameters
{
  "UserProfileName": "The user profile name.",
  "DomainId": "The domain ID."
}

Optional Parameters
{
  "UserSettings": "A collection of settings."
}
"""
UpdateUserProfile(args) = sagemaker("UpdateUserProfile", args)

"""
    CreateModelPackage()

Creates a model package that you can use to create Amazon SageMaker models or list on AWS Marketplace. Buyers can subscribe to model packages listed on AWS Marketplace to create models in Amazon SageMaker. To create a model package by specifying a Docker container that contains your inference code and the Amazon S3 location of your model artifacts, provide values for InferenceSpecification. To create a model from an algorithm resource that you created or subscribed to in AWS Marketplace, provide a value for SourceAlgorithmSpecification.

Required Parameters
{
  "ModelPackageName": "The name of the model package. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
}

Optional Parameters
{
  "CertifyForMarketplace": "Whether to certify the model package for listing on AWS Marketplace.",
  "SourceAlgorithmSpecification": "Details about the algorithm that was used to create the model package.",
  "InferenceSpecification": "Specifies details about inference jobs that can be run with models based on this model package, including the following:   The Amazon ECR paths of containers that contain the inference code and model artifacts.   The instance types that the model package supports for transform jobs and real-time endpoints used for inference.   The input and output content formats that the model package supports for inference.  ",
  "ValidationSpecification": "Specifies configurations for one or more transform jobs that Amazon SageMaker runs to test the model package.",
  "ModelPackageDescription": "A description of the model package."
}
"""
CreateModelPackage(args) = sagemaker("CreateModelPackage", args)

"""
    DescribeWorkteam()

Gets information about a specific work team. You can see information such as the create date, the last updated date, membership information, and the work team's Amazon Resource Name (ARN).

Required Parameters
{
  "WorkteamName": "The name of the work team to return a description of."
}
"""
DescribeWorkteam(args) = sagemaker("DescribeWorkteam", args)

"""
    DeleteDomain()

Used to delete a domain. If you onboarded with IAM mode, you will need to delete your domain to onboard again using SSO. Use with caution. All of the members of the domain will lose access to their EFS volume, including data, notebooks, and other artifacts. 

Required Parameters
{
  "DomainId": "The domain ID."
}

Optional Parameters
{
  "RetentionPolicy": "The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained (not automatically deleted). "
}
"""
DeleteDomain(args) = sagemaker("DeleteDomain", args)

"""
    DeleteEndpoint()

Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created.  Amazon SageMaker retires any custom KMS key grants associated with the endpoint, meaning you don't need to use the RevokeGrant API call.

Required Parameters
{
  "EndpointName": "The name of the endpoint that you want to delete."
}
"""
DeleteEndpoint(args) = sagemaker("DeleteEndpoint", args)

"""
    StopNotebookInstance()

Terminates the ML compute instance. Before terminating the instance, Amazon SageMaker disconnects the ML storage volume from it. Amazon SageMaker preserves the ML storage volume. Amazon SageMaker stops charging you for the ML compute instance when you call StopNotebookInstance. To access data on the ML storage volume for a notebook instance that has been terminated, call the StartNotebookInstance API. StartNotebookInstance launches another ML compute instance, configures it, and attaches the preserved ML storage volume so you can continue your work. 

Required Parameters
{
  "NotebookInstanceName": "The name of the notebook instance to terminate."
}
"""
StopNotebookInstance(args) = sagemaker("StopNotebookInstance", args)

"""
    DescribeApp()

Describes the app.

Required Parameters
{
  "AppType": "The type of app.",
  "UserProfileName": "The user profile name.",
  "AppName": "The name of the app.",
  "DomainId": "The domain ID."
}
"""
DescribeApp(args) = sagemaker("DescribeApp", args)

"""
    DescribeDomain()

The description of the domain.

Required Parameters
{
  "DomainId": "The domain ID."
}
"""
DescribeDomain(args) = sagemaker("DescribeDomain", args)

"""
    DescribeTrialComponent()

Provides a list of a trials component's properties.

Required Parameters
{
  "TrialComponentName": "The name of the trial component to describe."
}
"""
DescribeTrialComponent(args) = sagemaker("DescribeTrialComponent", args)

"""
    ListExperiments()

Lists all the experiments in your account. The list can be filtered to show only experiments that were created in a specific time range. The list can be sorted by experiment name or creation time.

Optional Parameters
{
  "MaxResults": "The maximum number of experiments to return in the response. The default value is 10.",
  "NextToken": "If the previous call to ListExperiments didn't return the full set of experiments, the call returns a token for getting the next set of experiments.",
  "SortOrder": "The sort order. The default value is Descending.",
  "CreatedAfter": "A filter that returns only experiments created after the specified time.",
  "CreatedBefore": "A filter that returns only experiments created before the specified time.",
  "SortBy": "The property used to sort results. The default value is CreationTime."
}
"""

ListExperiments() = sagemaker("ListExperiments")
ListExperiments(args) = sagemaker("ListExperiments", args)

"""
    DescribeTrainingJob()

Returns information about a training job.

Required Parameters
{
  "TrainingJobName": "The name of the training job."
}
"""
DescribeTrainingJob(args) = sagemaker("DescribeTrainingJob", args)

"""
    CreateEndpointConfig()

Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models. In the configuration, you identify one or more models, created using the CreateModel API, to deploy and the resources that you want Amazon SageMaker to provision. Then you call the CreateEndpoint API.   Use this API if you want to use Amazon SageMaker hosting services to deploy models into production.   In the request, you define a ProductionVariant, for each model that you want to deploy. Each ProductionVariant parameter also describes the resources that you want Amazon SageMaker to provision. This includes the number and type of ML compute instances to deploy.  If you are hosting multiple models, you also assign a VariantWeight to specify how much traffic you want to allocate to each model. For example, suppose that you want to host two models, A and B, and you assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to Model A, and one-third to model B.  For an example that calls this method when deploying a model to Amazon SageMaker hosting services, see Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto 3)).   When you call CreateEndpoint, a load call is made to DynamoDB to verify that your endpoint configuration exists. When you read data from a DynamoDB table supporting  Eventually Consistent Reads , the response might not reflect the results of a recently completed write operation. The response might include some stale data. If the dependent entities are not yet in DynamoDB, this causes a validation error. If you repeat your read request after a short time, the response should return the latest data. So retry logic is recommended to handle these possible issues. We also recommend that customers call DescribeEndpointConfig before calling CreateEndpoint to minimize the potential impact of a DynamoDB eventually consistent read. 

Required Parameters
{
  "EndpointConfigName": "The name of the endpoint configuration. You specify this name in a CreateEndpoint request. ",
  "ProductionVariants": "An list of ProductionVariant objects, one for each model that you want to host at this endpoint."
}

Optional Parameters
{
  "Tags": "A list of key-value pairs. For more information, see Using Cost Allocation Tags in the  AWS Billing and Cost Management User Guide. ",
  "DataCaptureConfig": "",
  "KmsKeyId": "The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint. The KmsKeyId can be any of the following formats:    Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab    Key ARN: arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab    Alias name: alias/ExampleAlias    Alias name ARN: arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias    The KMS key policy must grant permission to the IAM role that you specify in your CreateEndpoint, UpdateEndpoint requests. For more information, refer to the AWS Key Management Service section Using Key Policies in AWS KMS    Certain Nitro-based instances include local storage, dependent on the instance type. Local storage volumes are encrypted using a hardware module on the instance. You can't request a KmsKeyId when using an instance type with local storage. If any of the models that you specify in the ProductionVariants parameter use nitro-based instances with local storage, do not specify a value for the KmsKeyId parameter. If you specify a value for KmsKeyId when using any nitro-based instances with local storage, the call to CreateEndpointConfig fails. For a list of instance types that support local instance storage, see Instance Store Volumes. For more information about local instance storage encryption, see SSD Instance Store Volumes. "
}
"""
CreateEndpointConfig(args) = sagemaker("CreateEndpointConfig", args)

"""
    DeleteAlgorithm()

Removes the specified algorithm from your account.

Required Parameters
{
  "AlgorithmName": "The name of the algorithm to delete."
}
"""
DeleteAlgorithm(args) = sagemaker("DeleteAlgorithm", args)

"""
    DescribeLabelingJob()

Gets information about a labeling job.

Required Parameters
{
  "LabelingJobName": "The name of the labeling job to return information for."
}
"""
DescribeLabelingJob(args) = sagemaker("DescribeLabelingJob", args)

"""
    CreateTrialComponent()

Creates a trial component, which is a stage of a machine learning trial. A trial is composed of one or more trial components. A trial component can be used in multiple trials. Trial components include pre-processing jobs, training jobs, and batch transform jobs. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to a trial component and then use the Search API to search for the tags.   CreateTrialComponent can only be invoked from within an Amazon SageMaker managed environment. This includes Amazon SageMaker training jobs, processing jobs, transform jobs, and Amazon SageMaker notebooks. A call to CreateTrialComponent from outside one of these environments results in an error. 

Required Parameters
{
  "TrialComponentName": "The name of the component. The name must be unique in your AWS account and is not case-sensitive."
}

Optional Parameters
{
  "StartTime": "When the component started.",
  "OutputArtifacts": "The output artifacts for the component. Examples of output artifacts are metrics, snapshots, logs, and images.",
  "EndTime": "When the component ended.",
  "Tags": "A list of tags to associate with the component. You can use Search API to search on the tags.",
  "Status": "The status of the component. States include:   InProgress   Completed   Failed  ",
  "DisplayName": "The name of the component as displayed. The name doesn't need to be unique. If DisplayName isn't specified, TrialComponentName is displayed.",
  "Parameters": "The hyperparameters for the component.",
  "InputArtifacts": "The input artifacts for the component. Examples of input artifacts are datasets, algorithms, hyperparameters, source code, and instance types."
}
"""
CreateTrialComponent(args) = sagemaker("CreateTrialComponent", args)

"""
    ListApps()

Lists apps.

Optional Parameters
{
  "MaxResults": "Returns a list up to a specified limit.",
  "SortBy": "The parameter by which to sort the results. The default is CreationTime.",
  "NextToken": "If the previous response was truncated, you will receive this token. Use it in your next request to receive the next set of results.",
  "DomainIdEquals": "A parameter to search for the domain ID.",
  "SortOrder": "The sort order for the results. The default is Ascending.",
  "UserProfileNameEquals": "A parameter to search by user profile name."
}
"""

ListApps() = sagemaker("ListApps")
ListApps(args) = sagemaker("ListApps", args)

"""
    ListModelPackages()

Lists the model packages that have been created.

Optional Parameters
{
  "MaxResults": "The maximum number of model packages to return in the response.",
  "NameContains": "A string in the model package name. This filter returns only model packages whose name contains the specified string.",
  "NextToken": "If the response to a previous ListModelPackages request was truncated, the response includes a NextToken. To retrieve the next set of model packages, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only model packages created after the specified time (timestamp).",
  "SortOrder": "The sort order for the results. The default is Ascending.",
  "CreationTimeBefore": "A filter that returns only model packages created before the specified time (timestamp).",
  "SortBy": "The parameter by which to sort the results. The default is CreationTime."
}
"""

ListModelPackages() = sagemaker("ListModelPackages")
ListModelPackages(args) = sagemaker("ListModelPackages", args)

"""
    ListHyperParameterTuningJobs()

Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account.

Optional Parameters
{
  "MaxResults": "The maximum number of tuning jobs to return. The default value is 10.",
  "NameContains": "A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.",
  "NextToken": "If the result of the previous ListHyperParameterTuningJobs request was truncated, the response includes a NextToken. To retrieve the next set of tuning jobs, use the token in the next request.",
  "StatusEquals": "A filter that returns only tuning jobs with the specified status.",
  "CreationTimeAfter": "A filter that returns only tuning jobs that were created after the specified time.",
  "LastModifiedTimeBefore": "A filter that returns only tuning jobs that were modified before the specified time.",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns only tuning jobs that were modified after the specified time.",
  "CreationTimeBefore": "A filter that returns only tuning jobs that were created before the specified time.",
  "SortBy": "The field to sort results by. The default is Name."
}
"""

ListHyperParameterTuningJobs() = sagemaker("ListHyperParameterTuningJobs")
ListHyperParameterTuningJobs(args) = sagemaker("ListHyperParameterTuningJobs", args)

"""
    DeleteEndpointConfig()

Deletes an endpoint configuration. The DeleteEndpointConfig API deletes only the specified configuration. It does not delete endpoints created using the configuration.  You must not delete an EndpointConfig in use by an endpoint that is live or while the UpdateEndpoint or CreateEndpoint operations are being performed on the endpoint. If you delete the EndpointConfig of an endpoint that is active or being created or updated you may lose visibility into the instance type the endpoint is using. The endpoint must be deleted in order to stop incurring charges.

Required Parameters
{
  "EndpointConfigName": "The name of the endpoint configuration that you want to delete."
}
"""
DeleteEndpointConfig(args) = sagemaker("DeleteEndpointConfig", args)

"""
    DescribeNotebookInstanceLifecycleConfig()

Returns a description of a notebook instance lifecycle configuration. For information about notebook instance lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.

Required Parameters
{
  "NotebookInstanceLifecycleConfigName": "The name of the lifecycle configuration to describe."
}
"""
DescribeNotebookInstanceLifecycleConfig(args) = sagemaker("DescribeNotebookInstanceLifecycleConfig", args)

"""
    ListTransformJobs()

Lists transform jobs.

Optional Parameters
{
  "NameContains": "A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.",
  "MaxResults": "The maximum number of transform jobs to return in the response. The default value is 10.",
  "StatusEquals": "A filter that retrieves only transform jobs with a specific status.",
  "NextToken": "If the result of the previous ListTransformJobs request was truncated, the response includes a NextToken. To retrieve the next set of transform jobs, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only transform jobs created after the specified time.",
  "LastModifiedTimeBefore": "A filter that returns only transform jobs modified before the specified time.",
  "SortOrder": "The sort order for results. The default is Descending.",
  "LastModifiedTimeAfter": "A filter that returns only transform jobs modified after the specified time.",
  "CreationTimeBefore": "A filter that returns only transform jobs created before the specified time.",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListTransformJobs() = sagemaker("ListTransformJobs")
ListTransformJobs(args) = sagemaker("ListTransformJobs", args)

"""
    CreateWorkteam()

Creates a new work team for labeling your data. A work team is defined by one or more Amazon Cognito user pools. You must first create the user pools before you can create a work team. You cannot create more than 25 work teams in an account and region.

Required Parameters
{
  "Description": "A description of the work team.",
  "WorkteamName": "The name of the work team. Use this name to identify the work team.",
  "MemberDefinitions": "A list of MemberDefinition objects that contains objects that identify the workers that make up the work team.  Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use CognitoMemberDefinition. For workforces created using your own OIDC identity provider (IdP) use OidcMemberDefinition. Do not provide input for both of these parameters in a single request. For workforces created using Amazon Cognito, private work teams correspond to Amazon Cognito user groups within the user pool used to create a workforce. All of the CognitoMemberDefinition objects that make up the member definition must have the same ClientId and UserPool values. To add a Amazon Cognito user group to an existing worker pool, see Adding groups to a User Pool. For more information about user pools, see Amazon Cognito User Pools. For workforces created using your own OIDC IdP, specify the user groups that you want to include in your private work team in OidcMemberDefinition by listing those groups in Groups."
}

Optional Parameters
{
  "Tags": "An array of key-value pairs. For more information, see Resource Tag and Using Cost Allocation Tags in the  AWS Billing and Cost Management User Guide.",
  "WorkforceName": "The name of the workforce.",
  "NotificationConfiguration": "Configures notification of workers regarding available or expiring work items."
}
"""
CreateWorkteam(args) = sagemaker("CreateWorkteam", args)

"""
    DescribeCodeRepository()

Gets details about the specified Git repository.

Required Parameters
{
  "CodeRepositoryName": "The name of the Git repository to describe."
}
"""
DescribeCodeRepository(args) = sagemaker("DescribeCodeRepository", args)

"""
    DeleteModel()

Deletes a model. The DeleteModel API deletes only the model entry that was created in Amazon SageMaker when you called the CreateModel API. It does not delete model artifacts, inference code, or the IAM role that you specified when creating the model. 

Required Parameters
{
  "ModelName": "The name of the model to delete."
}
"""
DeleteModel(args) = sagemaker("DeleteModel", args)

"""
    ListEndpoints()

Lists endpoints.

Optional Parameters
{
  "MaxResults": "The maximum number of endpoints to return in the response.",
  "NameContains": "A string in endpoint names. This filter returns only endpoints whose name contains the specified string.",
  "NextToken": "If the result of a ListEndpoints request was truncated, the response includes a NextToken. To retrieve the next set of endpoints, use the token in the next request.",
  "StatusEquals": " A filter that returns only endpoints with the specified status.",
  "CreationTimeAfter": "A filter that returns only endpoints with a creation time greater than or equal to the specified time (timestamp).",
  "LastModifiedTimeBefore": " A filter that returns only endpoints that were modified before the specified timestamp. ",
  "SortOrder": "The sort order for results. The default is Descending.",
  "LastModifiedTimeAfter": " A filter that returns only endpoints that were modified after the specified timestamp. ",
  "CreationTimeBefore": "A filter that returns only endpoints that were created before the specified time (timestamp).",
  "SortBy": "Sorts the list of results. The default is CreationTime."
}
"""

ListEndpoints() = sagemaker("ListEndpoints")
ListEndpoints(args) = sagemaker("ListEndpoints", args)

"""
    UpdateMonitoringSchedule()

Updates a previously created schedule.

Required Parameters
{
  "MonitoringScheduleName": "The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account.",
  "MonitoringScheduleConfig": "The configuration object that specifies the monitoring schedule and defines the monitoring job."
}
"""
UpdateMonitoringSchedule(args) = sagemaker("UpdateMonitoringSchedule", args)

"""
    DescribeModelPackage()

Returns a description of the specified model package, which is used to create Amazon SageMaker models or list them on AWS Marketplace. To create models in Amazon SageMaker, buyers can subscribe to model packages listed on AWS Marketplace.

Required Parameters
{
  "ModelPackageName": "The name of the model package to describe."
}
"""
DescribeModelPackage(args) = sagemaker("DescribeModelPackage", args)

"""
    CreateApp()

Creates a running App for the specified UserProfile. Supported Apps are JupyterServer and KernelGateway. This operation is automatically invoked by Amazon SageMaker Studio upon access to the associated Domain, and when new kernel configurations are selected by the user. A user may have multiple Apps active simultaneously.

Required Parameters
{
  "AppType": "The type of app.",
  "UserProfileName": "The user profile name.",
  "AppName": "The name of the app.",
  "DomainId": "The domain ID."
}

Optional Parameters
{
  "ResourceSpec": "The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.",
  "Tags": "Each tag consists of a key and an optional value. Tag keys must be unique per resource."
}
"""
CreateApp(args) = sagemaker("CreateApp", args)

"""
    DeleteWorkforce()

Use this operation to delete a workforce. If you want to create a new workforce in an AWS Region where a workforce already exists, use this operation to delete the existing workforce and then use to create a new workforce.  If a private workforce contains one or more work teams, you must use the operation to delete all work teams before you delete the workforce. If you try to delete a workforce that contains one or more work teams, you will recieve a ResourceInUse error. 

Required Parameters
{
  "WorkforceName": "The name of the workforce."
}
"""
DeleteWorkforce(args) = sagemaker("DeleteWorkforce", args)

"""
    ListAlgorithms()

Lists the machine learning algorithms that have been created.

Optional Parameters
{
  "MaxResults": "The maximum number of algorithms to return in the response.",
  "NameContains": "A string in the algorithm name. This filter returns only algorithms whose name contains the specified string.",
  "NextToken": "If the response to a previous ListAlgorithms request was truncated, the response includes a NextToken. To retrieve the next set of algorithms, use the token in the next request.",
  "CreationTimeAfter": "A filter that returns only algorithms created after the specified time (timestamp).",
  "SortOrder": "The sort order for the results. The default is Ascending.",
  "CreationTimeBefore": "A filter that returns only algorithms created before the specified time (timestamp).",
  "SortBy": "The parameter by which to sort the results. The default is CreationTime."
}
"""

ListAlgorithms() = sagemaker("ListAlgorithms")
ListAlgorithms(args) = sagemaker("ListAlgorithms", args)

"""
    ListWorkforces()

Use this operation to list all private and vendor workforces in an AWS Region. Note that you can only have one private workforce per AWS Region.

Optional Parameters
{
  "NameContains": "A filter you can use to search for workforces using part of the workforce name.",
  "MaxResults": "The maximum number of workforces returned in the response.",
  "NextToken": "A token to resume pagination.",
  "SortOrder": "Sort workforces in ascending or descending order.",
  "SortBy": "Sort workforces using the workforce name or creation date."
}
"""

ListWorkforces() = sagemaker("ListWorkforces")
ListWorkforces(args) = sagemaker("ListWorkforces", args)

"""
    ListTags()

Returns the tags for the specified Amazon SageMaker resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve."
}

Optional Parameters
{
  "MaxResults": "Maximum number of tags to return.",
  "NextToken": " If the response to the previous ListTags request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request. "
}
"""
ListTags(args) = sagemaker("ListTags", args)

"""
    DeleteHumanTaskUi()

Use this operation to delete a human task user interface (worker task template).  To see a list of human task user interfaces (work task templates) in your account, use . When you delete a worker task template, it no longer appears when you call ListHumanTaskUis.

Required Parameters
{
  "HumanTaskUiName": "The name of the human task user interface (work task template) you want to delete."
}
"""
DeleteHumanTaskUi(args) = sagemaker("DeleteHumanTaskUi", args)

"""
    DescribeNotebookInstance()

Returns information about a notebook instance.

Required Parameters
{
  "NotebookInstanceName": "The name of the notebook instance that you want information about."
}
"""
DescribeNotebookInstance(args) = sagemaker("DescribeNotebookInstance", args)

"""
    DescribeTransformJob()

Returns information about a transform job.

Required Parameters
{
  "TransformJobName": "The name of the transform job that you want to view details of."
}
"""
DescribeTransformJob(args) = sagemaker("DescribeTransformJob", args)

"""
    StopLabelingJob()

Stops a running labeling job. A job that is stopped cannot be restarted. Any results obtained before the job is stopped are placed in the Amazon S3 output bucket.

Required Parameters
{
  "LabelingJobName": "The name of the labeling job to stop."
}
"""
StopLabelingJob(args) = sagemaker("StopLabelingJob", args)

"""
    DescribeModel()

Describes a model that you created using the CreateModel API.

Required Parameters
{
  "ModelName": "The name of the model."
}
"""
DescribeModel(args) = sagemaker("DescribeModel", args)

"""
    DeleteTrial()

Deletes the specified trial. All trial components that make up the trial must be deleted first. Use the DescribeTrialComponent API to get the list of trial components.

Required Parameters
{
  "TrialName": "The name of the trial to delete."
}
"""
DeleteTrial(args) = sagemaker("DeleteTrial", args)

"""
    ListCandidatesForAutoMLJob()

List the Candidates created for the job.

Required Parameters
{
  "AutoMLJobName": "List the Candidates created for the job by providing the job's name."
}

Optional Parameters
{
  "MaxResults": "List the job's Candidates up to a specified limit.",
  "StatusEquals": "List the Candidates for the job and filter by status.",
  "NextToken": "If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.",
  "SortOrder": "The sort order for the results. The default is Ascending.",
  "CandidateNameEquals": "List the Candidates for the job and filter by candidate name.",
  "SortBy": "The parameter by which to sort the results. The default is Descending."
}
"""
ListCandidatesForAutoMLJob(args) = sagemaker("ListCandidatesForAutoMLJob", args)

"""
    ListNotebookInstances()

Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region. 

Optional Parameters
{
  "NameContains": "A string in the notebook instances' name. This filter returns only notebook instances whose name contains the specified string.",
  "StatusEquals": "A filter that returns only notebook instances with the specified status.",
  "SortOrder": "The sort order for results. ",
  "LastModifiedTimeAfter": "A filter that returns only notebook instances that were modified after the specified time (timestamp).",
  "NotebookInstanceLifecycleConfigNameContains": "A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.",
  "SortBy": "The field to sort results by. The default is Name.",
  "MaxResults": "The maximum number of notebook instances to return.",
  "CreationTimeAfter": "A filter that returns only notebook instances that were created after the specified time (timestamp).",
  "DefaultCodeRepositoryContains": "A string in the name or URL of a Git repository associated with this notebook instance. This filter returns only notebook instances associated with a git repository with a name that contains the specified string.",
  "AdditionalCodeRepositoryEquals": "A filter that returns only notebook instances with associated with the specified git repository.",
  "NextToken": " If the previous call to the ListNotebookInstances is truncated, the response includes a NextToken. You can use this token in your subsequent ListNotebookInstances request to fetch the next set of notebook instances.   You might specify a filter or a sort order in your request. When response is truncated, you must use the same values for the filer and sort order in the next request.  ",
  "LastModifiedTimeBefore": "A filter that returns only notebook instances that were modified before the specified time (timestamp).",
  "CreationTimeBefore": "A filter that returns only notebook instances that were created before the specified time (timestamp). "
}
"""

ListNotebookInstances() = sagemaker("ListNotebookInstances")
ListNotebookInstances(args) = sagemaker("ListNotebookInstances", args)

"""
    CreateCodeRepository()

Creates a Git repository as a resource in your Amazon SageMaker account. You can associate the repository with notebook instances so that you can use Git source control for the notebooks you create. The Git repository is a resource in your Amazon SageMaker account, so it can be associated with more than one notebook instance, and it persists independently from the lifecycle of any notebook instances it is associated with. The repository can be hosted either in AWS CodeCommit or in any other Git repository.

Required Parameters
{
  "CodeRepositoryName": "The name of the Git repository. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).",
  "GitConfig": "Specifies details about the repository, including the URL where the repository is located, the default branch, and credentials to use to access the repository."
}
"""
CreateCodeRepository(args) = sagemaker("CreateCodeRepository", args)

"""
    DescribeEndpoint()

Returns the description of an endpoint.

Required Parameters
{
  "EndpointName": "The name of the endpoint."
}
"""
DescribeEndpoint(args) = sagemaker("DescribeEndpoint", args)

"""
    ListLabelingJobs()

Gets a list of labeling jobs.

Optional Parameters
{
  "MaxResults": "The maximum number of labeling jobs to return in each page of the response.",
  "NameContains": "A string in the labeling job name. This filter returns only labeling jobs whose name contains the specified string.",
  "NextToken": "If the result of the previous ListLabelingJobs request was truncated, the response includes a NextToken. To retrieve the next set of labeling jobs, use the token in the next request.",
  "StatusEquals": "A filter that retrieves only labeling jobs with a specific status.",
  "CreationTimeAfter": "A filter that returns only labeling jobs created after the specified time (timestamp).",
  "LastModifiedTimeBefore": "A filter that returns only labeling jobs modified before the specified time (timestamp).",
  "SortOrder": "The sort order for results. The default is Ascending.",
  "LastModifiedTimeAfter": "A filter that returns only labeling jobs modified after the specified time (timestamp).",
  "CreationTimeBefore": "A filter that returns only labeling jobs created before the specified time (timestamp).",
  "SortBy": "The field to sort results by. The default is CreationTime."
}
"""

ListLabelingJobs() = sagemaker("ListLabelingJobs")
ListLabelingJobs(args) = sagemaker("ListLabelingJobs", args)