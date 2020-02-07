include("../AWSCorePrototypeServices.jl")
using .Services: sagemaker

"""
Stops a previously started monitoring schedule.

Required Parameters:
MonitoringScheduleName
"""
StopMonitoringSchedule(args) = sagemaker("StopMonitoringSchedule", args)

"""
Lists the trials in your account. Specify an experiment name to limit the list to the trials that are part of that experiment. The list can be filtered to show only trials that were created in a specific time range. The list can be sorted by trial name or creation time.
"""
ListTrials() = sagemaker("ListTrials")

"""
Creates a job that uses workers to label the data objects in your input dataset. You can use the labeled data to train machine learning models. You can select your workforce from one of three providers:   A private workforce that you create. It can include employees, contractors, and outside experts. Use a private workforce when want the data to stay within your organization or when a specific set of skills is required.   One or more vendors that you select from the AWS Marketplace. Vendors provide expertise in specific areas.    The Amazon Mechanical Turk workforce. This is the largest workforce, but it should only be used for public data or data that has been stripped of any personally identifiable information.   You can also use automated data labeling to reduce the number of data objects that need to be labeled by a human. Automated data labeling uses active learning to determine if a data object can be labeled by machine or if it needs to be sent to a human worker. For more information, see Using Automated Data Labeling. The data objects to be labeled are contained in an Amazon S3 bucket. You create a manifest file that describes the location of each object. For more information, see Using Input and Output Data. The output can be used as the manifest file for another labeling job or as training data for your machine learning models.

Required Parameters:
LabelingJobName, LabelAttributeName, InputConfig, OutputConfig, RoleArn, HumanTaskConfig
"""
CreateLabelingJob(args) = sagemaker("CreateLabelingJob", args)

"""
Gets a description of a hyperparameter tuning job.

Required Parameters:
HyperParameterTuningJobName
"""
DescribeHyperParameterTuningJob(args) = sagemaker("DescribeHyperParameterTuningJob", args)

"""
Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements.

Required Parameters:
NotebookInstanceName
"""
UpdateNotebookInstance(args) = sagemaker("UpdateNotebookInstance", args)

"""
Lists training jobs.
"""
ListTrainingJobs() = sagemaker("ListTrainingJobs")

"""
Creates an endpoint using the endpoint configuration specified in the request. Amazon SageMaker uses the endpoint to provision resources and deploy models. You create the endpoint configuration with the CreateEndpointConfig API.    Use this API only for hosting models using Amazon SageMaker hosting services.   You must not delete an EndpointConfig in use by an endpoint that is live or while the UpdateEndpoint or CreateEndpoint operations are being performed on the endpoint. To update an endpoint, you must create a new EndpointConfig.  The endpoint name must be unique within an AWS Region in your AWS account.  When it receives the request, Amazon SageMaker creates the endpoint, launches the resources (ML compute instances), and deploys the model(s) on them.  When Amazon SageMaker receives the request, it sets the endpoint status to Creating. After it creates the endpoint, it sets the status to InService. Amazon SageMaker can then process incoming requests for inferences. To check the status of an endpoint, use the DescribeEndpoint API. For an example, see Exercise 1: Using the K-Means Algorithm Provided by Amazon SageMaker.  If any of the models hosted at this endpoint get model data from an Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provided. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide.

Required Parameters:
EndpointName, EndpointConfigName
"""
CreateEndpoint(args) = sagemaker("CreateEndpoint", args)

"""
Deletes a notebook instance lifecycle configuration.

Required Parameters:
NotebookInstanceLifecycleConfigName
"""
DeleteNotebookInstanceLifecycleConfig(args) = sagemaker("DeleteNotebookInstanceLifecycleConfig", args)

"""
Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API.
"""
ListNotebookInstanceLifecycleConfigs() = sagemaker("ListNotebookInstanceLifecycleConfigs")

"""
Used to stop and delete an app.

Required Parameters:
DomainId, UserProfileName, AppType, AppName
"""
DeleteApp(args) = sagemaker("DeleteApp", args)

"""
Lists endpoint configurations.
"""
ListEndpointConfigs() = sagemaker("ListEndpointConfigs")

"""
Stops a transform job. When Amazon SageMaker receives a StopTransformJob request, the status of the job changes to Stopping. After Amazon SageMaker stops the job, the status is set to Stopped. When you stop a transform job before it is completed, Amazon SageMaker doesn't store the job's output in Amazon S3.

Required Parameters:
TransformJobName
"""
StopTransformJob(args) = sagemaker("StopTransformJob", args)

"""
Creates an Amazon SageMaker trial. A trial is a set of steps called trial components that produce a machine learning model. A trial is part of a single Amazon SageMaker experiment. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to a trial and then use the Search API to search for the tags. To get a list of all your trials, call the ListTrials API. To view a trial's properties, call the DescribeTrial API. To create a trial component, call the CreateTrialComponent API.

Required Parameters:
TrialName, ExperimentName
"""
CreateTrial(args) = sagemaker("CreateTrial", args)

"""
Create a machine learning algorithm that you can use in Amazon SageMaker and list in the AWS Marketplace.

Required Parameters:
AlgorithmName, TrainingSpecification
"""
CreateAlgorithm(args) = sagemaker("CreateAlgorithm", args)

"""
Creates a new user profile. A user profile represents a single user within a Domain, and is the main way to reference a "person" for the purposes of sharing, reporting and other user-oriented features. This entity is created during on-boarding. If an administrator invites a person by email or imports them from SSO, a new UserProfile is automatically created. This entity is the primary holder of settings for an individual user and has a reference to the user's private Amazon Elastic File System (EFS) home directory. 

Required Parameters:
DomainId, UserProfileName
"""
CreateUserProfile(args) = sagemaker("CreateUserProfile", args)

"""
Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API.

Required Parameters:
NotebookInstanceLifecycleConfigName
"""
UpdateNotebookInstanceLifecycleConfig(args) = sagemaker("UpdateNotebookInstanceLifecycleConfig", args)

"""
Adds, updates, or removes the description of an experiment. Updates the display name of an experiment.

Required Parameters:
ExperimentName
"""
UpdateExperiment(args) = sagemaker("UpdateExperiment", args)

"""
Updates an existing work team with new member definitions or description.

Required Parameters:
WorkteamName
"""
UpdateWorkteam(args) = sagemaker("UpdateWorkteam", args)

"""
Updates a domain. Changes will impact all of the people in the domain.

Required Parameters:
DomainId
"""
UpdateDomain(args) = sagemaker("UpdateDomain", args)

"""
Deletes a model package. A model package is used to create Amazon SageMaker models or list on AWS Marketplace. Buyers can subscribe to model packages listed on AWS Marketplace to create models in Amazon SageMaker.

Required Parameters:
ModelPackageName
"""
DeleteModelPackage(args) = sagemaker("DeleteModelPackage", args)

"""
Creates an Amazon SageMaker experiment. An experiment is a collection of trials that are observed, compared and evaluated as a group. A trial is a set of steps, called trial components, that produce a machine learning model. The goal of an experiment is to determine the components that produce the best model. Multiple trials are performed, each one isolating and measuring the impact of a change to one or more inputs, while keeping the remaining inputs constant. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to experiments, trials, trial components and then use the Search API to search for the tags. To add a description to an experiment, specify the optional Description parameter. To add a description later, or to change the description, call the UpdateExperiment API. To get a list of all your experiments, call the ListExperiments API. To view an experiment's properties, call the DescribeExperiment API. To get a list of all the trials associated with an experiment, call the ListTrials API. To create a trial call the CreateTrial API.

Required Parameters:
ExperimentName
"""
CreateExperiment(args) = sagemaker("CreateExperiment", args)

"""
Defines the settings you will use for the human review workflow user interface. Reviewers will see a three-panel interface with an instruction area, the item to review, and an input area.

Required Parameters:
HumanTaskUiName, UiTemplate
"""
CreateHumanTaskUi(args) = sagemaker("CreateHumanTaskUi", args)

"""
Stops a processing job.

Required Parameters:
ProcessingJobName
"""
StopProcessingJob(args) = sagemaker("StopProcessingJob", args)

"""
Gets a list of work teams that you have defined in a region. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.
"""
ListWorkteams() = sagemaker("ListWorkteams")

"""
 Deletes an Amazon SageMaker notebook instance. Before you can delete a notebook instance, you must call the StopNotebookInstance API.   When you delete a notebook instance, you lose all of your data. Amazon SageMaker removes the ML compute instance, and deletes the ML storage volume and the network interface associated with the notebook instance.  

Required Parameters:
NotebookInstanceName
"""
DeleteNotebookInstance(args) = sagemaker("DeleteNotebookInstance", args)

"""
Starts a transform job. A transform job uses a trained model to get inferences on a dataset and saves these results to an Amazon S3 location that you specify. To perform batch transformations, you create a transform job and use the data that you have readily available. In the request body, you provide the following:    TransformJobName - Identifies the transform job. The name must be unique within an AWS Region in an AWS account.    ModelName - Identifies the model to use. ModelName must be the name of an existing Amazon SageMaker model in the same AWS Region and AWS account. For information on creating a model, see CreateModel.    TransformInput - Describes the dataset to be transformed and the Amazon S3 location where it is stored.    TransformOutput - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.    TransformResources - Identifies the ML compute instances for the transform job.   For more information about how batch transformation works, see Batch Transform.

Required Parameters:
TransformJobName, ModelName, TransformInput, TransformOutput, TransformResources
"""
CreateTransformJob(args) = sagemaker("CreateTransformJob", args)

"""
Restricts access to tasks assigned to workers in the specified workforce to those within specific ranges of IP addresses. You specify allowed IP addresses by creating a list of up to four CIDRs. By default, a workforce isn't restricted to specific IP addresses. If you specify a range of IP addresses, workers who attempt to access tasks using any IP address outside the specified range are denied access and get a Not Found error message on the worker portal. After restricting access with this operation, you can see the allowed IP values for a private workforce with the operation.  This operation applies only to private workforces. 

Required Parameters:
WorkforceName
"""
UpdateWorkforce(args) = sagemaker("UpdateWorkforce", args)

"""
Gets a list of the Git repositories in your account.
"""
ListCodeRepositories() = sagemaker("ListCodeRepositories")

"""
Renders the UI template so that you can preview the worker's experience. 

Required Parameters:
UiTemplate, Task, RoleArn
"""
RenderUiTemplate(args) = sagemaker("RenderUiTemplate", args)

"""
Adds or overwrites one or more tags for the specified Amazon SageMaker resource. You can add tags to notebook instances, training jobs, hyperparameter tuning jobs, batch transform jobs, models, labeling jobs, work teams, endpoint configurations, and endpoints. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see For more information, see AWS Tagging Strategies.  Tags that you add to a hyperparameter tuning job by calling this API are also added to any training jobs that the hyperparameter tuning job launches after you call this API, but not to training jobs that the hyperparameter tuning job launched before you called this API. To make sure that the tags associated with a hyperparameter tuning job are also added to all training jobs that the hyperparameter tuning job launches, add the tags when you first create the tuning job by specifying them in the Tags parameter of CreateHyperParameterTuningJob  

Required Parameters:
ResourceArn, Tags
"""
AddTags(args) = sagemaker("AddTags", args)

"""
Creates an AutoPilot job.

Required Parameters:
AutoMLJobName, InputDataConfig, OutputDataConfig, RoleArn
"""
CreateAutoMLJob(args) = sagemaker("CreateAutoMLJob", args)

"""
Lists the trial components in your account. You can sort the list by trial component name or creation time. You can filter the list to show only components that were created in a specific time range. You can also filter on one of the following:    ExperimentName     SourceArn     TrialName   
"""
ListTrialComponents() = sagemaker("ListTrialComponents")

"""
Starts a previously stopped monitoring schedule.  New monitoring schedules are immediately started after creation. 

Required Parameters:
MonitoringScheduleName
"""
StartMonitoringSchedule(args) = sagemaker("StartMonitoringSchedule", args)

"""
A method for forcing the termination of a running job.

Required Parameters:
AutoMLJobName
"""
StopAutoMLJob(args) = sagemaker("StopAutoMLJob", args)

"""
Returns list of all monitoring job executions.
"""
ListMonitoringExecutions() = sagemaker("ListMonitoringExecutions")

"""
Updates one or more properties of a trial component.

Required Parameters:
TrialComponentName
"""
UpdateTrialComponent(args) = sagemaker("UpdateTrialComponent", args)

"""
Lists model compilation jobs that satisfy various filters. To create a model compilation job, use CreateCompilationJob. To get information about a particular model compilation job you have created, use DescribeCompilationJob.
"""
ListCompilationJobs() = sagemaker("ListCompilationJobs")

"""
Creates an Amazon SageMaker notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.  In a CreateNotebookInstance request, specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.  Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific algorithm or with a machine learning framework.  After receiving the request, Amazon SageMaker does the following:   Creates a network interface in the Amazon SageMaker VPC.   (Option) If you specified SubnetId, Amazon SageMaker creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.   Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified SubnetId of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.   After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN). You can't change the name of a notebook instance after you create it. After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.  For more information, see How It Works. 

Required Parameters:
NotebookInstanceName, InstanceType, RoleArn
"""
CreateNotebookInstance(args) = sagemaker("CreateNotebookInstance", args)

"""
Deletes a monitoring schedule. Also stops the schedule had not already been stopped. This does not delete the job execution history of the monitoring schedule. 

Required Parameters:
MonitoringScheduleName
"""
DeleteMonitoringSchedule(args) = sagemaker("DeleteMonitoringSchedule", args)

"""
Lists user profiles.
"""
ListUserProfiles() = sagemaker("ListUserProfiles")

"""
Request a list of jobs.
"""
ListAutoMLJobs() = sagemaker("ListAutoMLJobs")

"""
Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to monitor the data captured for an Amazon SageMaker Endoint.

Required Parameters:
MonitoringScheduleName, MonitoringScheduleConfig
"""
CreateMonitoringSchedule(args) = sagemaker("CreateMonitoringSchedule", args)

"""
Describes the schedule for a monitoring job.

Required Parameters:
MonitoringScheduleName
"""
DescribeMonitoringSchedule(args) = sagemaker("DescribeMonitoringSchedule", args)

"""
Gets a list of the work teams that you are subscribed to in the AWS Marketplace. The list may be empty if no work team satisfies the filter specified in the NameContains parameter.
"""
ListSubscribedWorkteams() = sagemaker("ListSubscribedWorkteams")

"""
Returns a URL that you can use to connect to the Jupyter server from a notebook instance. In the Amazon SageMaker console, when you choose Open next to a notebook instance, Amazon SageMaker opens a new tab showing the Jupyter server home page from the notebook instance. The console uses this API to get the URL and show the page. IAM authorization policies for this API are also enforced for every HTTP request and WebSocket frame that attempts to connect to the notebook instance.For example, you can restrict access to this API and to the URL that it returns to a list of IP addresses that you specify. Use the NotIpAddress condition operator and the aws:SourceIP condition context key to specify the list of IP addresses that you want to have access to the notebook instance. For more information, see Limit Access to a Notebook Instance by IP Address.  The URL that you get from a call to is valid only for 5 minutes. If you try to use the URL after the 5-minute limit expires, you are directed to the AWS console sign-in page. 

Required Parameters:
NotebookInstanceName
"""
CreatePresignedNotebookInstanceUrl(args) = sagemaker("CreatePresignedNotebookInstanceUrl", args)

"""
Updates the display name of a trial.

Required Parameters:
TrialName
"""
UpdateTrial(args) = sagemaker("UpdateTrial", args)

"""
Deletes the specified flow definition.

Required Parameters:
FlowDefinitionName
"""
DeleteFlowDefinition(args) = sagemaker("DeleteFlowDefinition", args)

"""
Returns a description of the specified algorithm that is in your account.

Required Parameters:
AlgorithmName
"""
DescribeAlgorithm(args) = sagemaker("DescribeAlgorithm", args)

"""
Deletes a user profile.

Required Parameters:
DomainId, UserProfileName
"""
DeleteUserProfile(args) = sagemaker("DeleteUserProfile", args)

"""
Lists the domains.
"""
ListDomains() = sagemaker("ListDomains")

"""
Returns list of all monitoring schedules.
"""
ListMonitoringSchedules() = sagemaker("ListMonitoringSchedules")

"""
An auto-complete API for the search functionality in the Amazon SageMaker console. It returns suggestions of possible matches for the property name to use in Search queries. Provides suggestions for HyperParameters, Tags, and Metrics.

Required Parameters:
Resource
"""
GetSearchSuggestions(args) = sagemaker("GetSearchSuggestions", args)

"""
Deploys the new EndpointConfig specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous EndpointConfig (there is no availability loss).  When Amazon SageMaker receives the request, it sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API.   You must not delete an EndpointConfig in use by an endpoint that is live or while the UpdateEndpoint or CreateEndpoint operations are being performed on the endpoint. To update an endpoint, you must create a new EndpointConfig. 

Required Parameters:
EndpointName, EndpointConfigName
"""
UpdateEndpoint(args) = sagemaker("UpdateEndpoint", args)

"""
Starts a hyperparameter tuning job. A hyperparameter tuning job finds the best version of a model by running many training jobs on your dataset using the algorithm you choose and values for hyperparameters within ranges that you specify. It then chooses the hyperparameter values that result in a model that performs the best, as measured by an objective metric that you choose.

Required Parameters:
HyperParameterTuningJobName, HyperParameterTuningJobConfig
"""
CreateHyperParameterTuningJob(args) = sagemaker("CreateHyperParameterTuningJob", args)

"""
Lists processing jobs that satisfy various filters.
"""
ListProcessingJobs() = sagemaker("ListProcessingJobs")

"""
Returns the description of an endpoint configuration created using the CreateEndpointConfig API.

Required Parameters:
EndpointConfigName
"""
DescribeEndpointConfig(args) = sagemaker("DescribeEndpointConfig", args)

"""
Creates a model in Amazon SageMaker. In the request, you name the model and describe a primary container. For the primary container, you specify the docker image containing inference code, artifacts (from prior training), and custom environment map that the inference code uses when you deploy the model for predictions. Use this API to create a model if you want to use Amazon SageMaker hosting services or run a batch transform job. To host your model, you create an endpoint configuration with the CreateEndpointConfig API, and then create an endpoint with the CreateEndpoint API. Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.  To run a batch transform using your model, you start a job with the CreateTransformJob API. Amazon SageMaker uses your model and your dataset to get inferences which are then saved to a specified S3 location. In the CreateModel request, you must define a container with the PrimaryContainer parameter. In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances or for batch transform jobs. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.

Required Parameters:
ModelName, ExecutionRoleArn
"""
CreateModel(args) = sagemaker("CreateModel", args)

"""
Provides a list of an experiment's properties.

Required Parameters:
ExperimentName
"""
DescribeExperiment(args) = sagemaker("DescribeExperiment", args)

"""
Returns information about the requested human task user interface.

Required Parameters:
HumanTaskUiName
"""
DescribeHumanTaskUi(args) = sagemaker("DescribeHumanTaskUi", args)

"""
Lists models created with the CreateModel API.
"""
ListModels() = sagemaker("ListModels")

"""
Gets a list of labeling jobs assigned to a specified work team.

Required Parameters:
WorkteamArn
"""
ListLabelingJobsForWorkteam(args) = sagemaker("ListLabelingJobsForWorkteam", args)

"""
Deletes the specified tags from an Amazon SageMaker resource. To list a resource's tags, use the ListTags API.   When you call this API to delete tags from a hyperparameter tuning job, the deleted tags are not removed from training jobs that the hyperparameter tuning job launched before you called this API. 

Required Parameters:
ResourceArn, TagKeys
"""
DeleteTags(args) = sagemaker("DeleteTags", args)

"""
Returns a description of a processing job.

Required Parameters:
ProcessingJobName
"""
DescribeProcessingJob(args) = sagemaker("DescribeProcessingJob", args)

"""
Starts a model compilation job. After the model has been compiled, Amazon SageMaker saves the resulting model artifacts to an Amazon Simple Storage Service (Amazon S3) bucket that you specify.  If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts with AWS IoT Greengrass. In that case, deploy them as an ML resource. In the request body, you provide the following:   A name for the compilation job    Information about the input model artifacts    The output location for the compiled model and the device (target) that the model runs on     The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker assumes to perform the model compilation job    You can also provide a Tag to track the model compilation job's resource use and costs. The response body contains the CompilationJobArn for the compiled job. To stop a model compilation job, use StopCompilationJob. To get information about a particular model compilation job, use DescribeCompilationJob. To get information about multiple model compilation jobs, use ListCompilationJobs.

Required Parameters:
CompilationJobName, RoleArn, InputConfig, OutputConfig, StoppingCondition
"""
CreateCompilationJob(args) = sagemaker("CreateCompilationJob", args)

"""
Describes the user profile.

Required Parameters:
DomainId, UserProfileName
"""
DescribeUserProfile(args) = sagemaker("DescribeUserProfile", args)

"""
Creates a flow definition.

Required Parameters:
FlowDefinitionName, HumanLoopConfig, OutputConfig, RoleArn
"""
CreateFlowDefinition(args) = sagemaker("CreateFlowDefinition", args)

"""
Creates a lifecycle configuration that you can associate with a notebook instance. A lifecycle configuration is a collection of shell scripts that run when you create or start a notebook instance. Each lifecycle configuration script has a limit of 16384 characters. The value of the  PATH environment variable that is available to both scripts is /sbin:bin:/usr/sbin:/usr/bin. View CloudWatch Logs for notebook instance lifecycle configurations in log group /aws/sagemaker/NotebookInstances in log stream [notebook-instance-name]/[LifecycleConfigHook]. Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started. For information about notebook instance lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.

Required Parameters:
NotebookInstanceLifecycleConfigName
"""
CreateNotebookInstanceLifecycleConfig(args) = sagemaker("CreateNotebookInstanceLifecycleConfig", args)

"""
Creates a Domain for Amazon SageMaker Amazon SageMaker Studio (Studio), which can be accessed by end-users in a web browser. A Domain has an associated directory, list of authorized users, and a variety of security, application, policies, and Amazon Virtual Private Cloud configurations. An AWS account is limited to one Domain, per region. Users within a domain can share notebook files and other artifacts with each other. When a Domain is created, an Amazon Elastic File System (EFS) is also created for use by all of the users within the Domain. Each user receives a private home directory within the EFS for notebooks, Git repositories, and data files. 

Required Parameters:
DomainName, AuthMode, DefaultUserSettings, SubnetIds, VpcId
"""
CreateDomain(args) = sagemaker("CreateDomain", args)

"""
Returns information about the human task user interfaces in your account.
"""
ListHumanTaskUis() = sagemaker("ListHumanTaskUis")

"""
Creates a processing job.

Required Parameters:
ProcessingJobName, ProcessingResources, AppSpecification, RoleArn
"""
CreateProcessingJob(args) = sagemaker("CreateProcessingJob", args)

"""
Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume. After configuring the notebook instance, Amazon SageMaker sets the notebook instance status to InService. A notebook instance's status must be InService before you can connect to your Jupyter notebook. 

Required Parameters:
NotebookInstanceName
"""
StartNotebookInstance(args) = sagemaker("StartNotebookInstance", args)

"""
Returns information about the specified flow definition.

Required Parameters:
FlowDefinitionName
"""
DescribeFlowDefinition(args) = sagemaker("DescribeFlowDefinition", args)

"""
Creates a URL for a specified UserProfile in a Domain. When accessed in a web browser, the user will be automatically signed in to Amazon SageMaker Amazon SageMaker Studio (Studio), and granted access to all of the Apps and files associated with that Amazon Elastic File System (EFS). This operation can only be called when AuthMode equals IAM. 

Required Parameters:
DomainId, UserProfileName
"""
CreatePresignedDomainUrl(args) = sagemaker("CreatePresignedDomainUrl", args)

"""
Lists private workforce information, including workforce name, Amazon Resource Name (ARN), and, if applicable, allowed IP address ranges (CIDRs). Allowable IP address ranges are the IP addresses that workers can use to access tasks.   This operation applies only to private workforces. 

Required Parameters:
WorkforceName
"""
DescribeWorkforce(args) = sagemaker("DescribeWorkforce", args)

"""
Gets information about a work team provided by a vendor. It returns details about the subscription with a vendor in the AWS Marketplace.

Required Parameters:
WorkteamArn
"""
DescribeSubscribedWorkteam(args) = sagemaker("DescribeSubscribedWorkteam", args)

"""
Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API. 

Required Parameters:
EndpointName, DesiredWeightsAndCapacities
"""
UpdateEndpointWeightsAndCapacities(args) = sagemaker("UpdateEndpointWeightsAndCapacities", args)

"""
Returns information about a model compilation job. To create a model compilation job, use CreateCompilationJob. To get information about multiple model compilation jobs, use ListCompilationJobs.

Required Parameters:
CompilationJobName
"""
DescribeCompilationJob(args) = sagemaker("DescribeCompilationJob", args)

"""
Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched. All model artifacts output from the training jobs are stored in Amazon Simple Storage Service (Amazon S3). All data that the training jobs write to Amazon CloudWatch Logs are still available in CloudWatch. After the tuning job moves to the Stopped state, it releases all reserved resources for the tuning job.

Required Parameters:
HyperParameterTuningJobName
"""
StopHyperParameterTuningJob(args) = sagemaker("StopHyperParameterTuningJob", args)

"""
Deletes an existing work team. This operation can't be undone.

Required Parameters:
WorkteamName
"""
DeleteWorkteam(args) = sagemaker("DeleteWorkteam", args)

"""
Provides a list of a trial's properties.

Required Parameters:
TrialName
"""
DescribeTrial(args) = sagemaker("DescribeTrial", args)

"""
Deletes the specified trial component. A trial component must be disassociated from all trials before the trial component can be deleted. To disassociate a trial component from a trial, call the DisassociateTrialComponent API.

Required Parameters:
TrialComponentName
"""
DeleteTrialComponent(args) = sagemaker("DeleteTrialComponent", args)

"""
Returns information about an Amazon SageMaker job.

Required Parameters:
AutoMLJobName
"""
DescribeAutoMLJob(args) = sagemaker("DescribeAutoMLJob", args)

"""
Disassociates a trial component from a trial. This doesn't effect other trials the component is associated with. Before you can delete a component, you must disassociate the component from all trials it is associated with. To associate a trial component with a trial, call the AssociateTrialComponent API.

Required Parameters:
TrialComponentName, TrialName
"""
DisassociateTrialComponent(args) = sagemaker("DisassociateTrialComponent", args)

"""
Finds Amazon SageMaker resources that match a search query. Matching resource objects are returned as a list of SearchResult objects in the response. You can sort the search results by any resource property in a ascending or descending order. You can query against the following value types: numeric, text, Boolean, and timestamp.

Required Parameters:
Resource
"""
Search(args) = sagemaker("Search", args)

"""
Returns information about the flow definitions in your account.
"""
ListFlowDefinitions() = sagemaker("ListFlowDefinitions")

"""
Stops a model compilation job.  To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal. This gracefully shuts the job down. If the job hasn't stopped, it sends the SIGKILL signal. When it receives a StopCompilationJob request, Amazon SageMaker changes the CompilationJobSummary CompilationJobStatus of the job to Stopping. After Amazon SageMaker stops the job, it sets the CompilationJobSummary CompilationJobStatus to Stopped. 

Required Parameters:
CompilationJobName
"""
StopCompilationJob(args) = sagemaker("StopCompilationJob", args)

"""
Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.  If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a machine learning service other than Amazon SageMaker, provided that you know how to use them for inferences.  In the request body, you provide the following:     AlgorithmSpecification - Identifies the training algorithm to use.     HyperParameters - Specify these algorithm-specific parameters to enable the estimation of model parameters during training. Hyperparameters can be tuned to optimize this learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see Algorithms.     InputDataConfig - Describes the training dataset and the Amazon S3, EFS, or FSx location where it is stored.    OutputDataConfig - Identifies the Amazon S3 bucket where you want Amazon SageMaker to save the results of model training.      ResourceConfig - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.     EnableManagedSpotTraining - Optimize the cost of training machine learning models by up to 80% by using Amazon EC2 Spot instances. For more information, see Managed Spot Training.     RoleARN - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.     StoppingCondition - To help cap training costs, use MaxRuntimeInSeconds to set a time limit for training. Use MaxWaitTimeInSeconds to specify how long you are willing to wait for a managed spot training job to complete.     For more information about Amazon SageMaker, see How It Works. 

Required Parameters:
TrainingJobName, AlgorithmSpecification, RoleArn, OutputDataConfig, ResourceConfig, StoppingCondition
"""
CreateTrainingJob(args) = sagemaker("CreateTrainingJob", args)

"""
Deletes an Amazon SageMaker experiment. All trials associated with the experiment must be deleted first. Use the ListTrials API to get a list of the trials associated with the experiment.

Required Parameters:
ExperimentName
"""
DeleteExperiment(args) = sagemaker("DeleteExperiment", args)

"""
Updates the specified Git repository with the specified values.

Required Parameters:
CodeRepositoryName
"""
UpdateCodeRepository(args) = sagemaker("UpdateCodeRepository", args)

"""
Deletes the specified Git repository from your account.

Required Parameters:
CodeRepositoryName
"""
DeleteCodeRepository(args) = sagemaker("DeleteCodeRepository", args)

"""
Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched.

Required Parameters:
HyperParameterTuningJobName
"""
ListTrainingJobsForHyperParameterTuningJob(args) = sagemaker("ListTrainingJobsForHyperParameterTuningJob", args)

"""
Associates a trial component with a trial. A trial component can be associated with multiple trials. To disassociate a trial component from a trial, call the DisassociateTrialComponent API.

Required Parameters:
TrialComponentName, TrialName
"""
AssociateTrialComponent(args) = sagemaker("AssociateTrialComponent", args)

"""
Stops a training job. To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of the training is not lost.  When it receives a StopTrainingJob request, Amazon SageMaker changes the status of the job to Stopping. After Amazon SageMaker stops the job, it sets the status to Stopped.

Required Parameters:
TrainingJobName
"""
StopTrainingJob(args) = sagemaker("StopTrainingJob", args)

"""
Updates a user profile.

Required Parameters:
DomainId, UserProfileName
"""
UpdateUserProfile(args) = sagemaker("UpdateUserProfile", args)

"""
Creates a model package that you can use to create Amazon SageMaker models or list on AWS Marketplace. Buyers can subscribe to model packages listed on AWS Marketplace to create models in Amazon SageMaker. To create a model package by specifying a Docker container that contains your inference code and the Amazon S3 location of your model artifacts, provide values for InferenceSpecification. To create a model from an algorithm resource that you created or subscribed to in AWS Marketplace, provide a value for SourceAlgorithmSpecification.

Required Parameters:
ModelPackageName
"""
CreateModelPackage(args) = sagemaker("CreateModelPackage", args)

"""
Gets information about a specific work team. You can see information such as the create date, the last updated date, membership information, and the work team's Amazon Resource Name (ARN).

Required Parameters:
WorkteamName
"""
DescribeWorkteam(args) = sagemaker("DescribeWorkteam", args)

"""
Used to delete a domain. If you on-boarded with IAM mode, you will need to delete your domain to on-board again using SSO. Use with caution. All of the members of the domain will lose access to their EFS volume, including data, notebooks, and other artifacts. 

Required Parameters:
DomainId
"""
DeleteDomain(args) = sagemaker("DeleteDomain", args)

"""
Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created.  Amazon SageMaker retires any custom KMS key grants associated with the endpoint, meaning you don't need to use the RevokeGrant API call.

Required Parameters:
EndpointName
"""
DeleteEndpoint(args) = sagemaker("DeleteEndpoint", args)

"""
Terminates the ML compute instance. Before terminating the instance, Amazon SageMaker disconnects the ML storage volume from it. Amazon SageMaker preserves the ML storage volume. Amazon SageMaker stops charging you for the ML compute instance when you call StopNotebookInstance. To access data on the ML storage volume for a notebook instance that has been terminated, call the StartNotebookInstance API. StartNotebookInstance launches another ML compute instance, configures it, and attaches the preserved ML storage volume so you can continue your work. 

Required Parameters:
NotebookInstanceName
"""
StopNotebookInstance(args) = sagemaker("StopNotebookInstance", args)

"""
Describes the app.

Required Parameters:
DomainId, UserProfileName, AppType, AppName
"""
DescribeApp(args) = sagemaker("DescribeApp", args)

"""
The desciption of the domain.

Required Parameters:
DomainId
"""
DescribeDomain(args) = sagemaker("DescribeDomain", args)

"""
Provides a list of a trials component's properties.

Required Parameters:
TrialComponentName
"""
DescribeTrialComponent(args) = sagemaker("DescribeTrialComponent", args)

"""
Lists all the experiments in your account. The list can be filtered to show only experiments that were created in a specific time range. The list can be sorted by experiment name or creation time.
"""
ListExperiments() = sagemaker("ListExperiments")

"""
Returns information about a training job.

Required Parameters:
TrainingJobName
"""
DescribeTrainingJob(args) = sagemaker("DescribeTrainingJob", args)

"""
Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models. In the configuration, you identify one or more models, created using the CreateModel API, to deploy and the resources that you want Amazon SageMaker to provision. Then you call the CreateEndpoint API.   Use this API only if you want to use Amazon SageMaker hosting services to deploy models into production.   In the request, you define one or more ProductionVariants, each of which identifies a model. Each ProductionVariant parameter also describes the resources that you want Amazon SageMaker to provision. This includes the number and type of ML compute instances to deploy.  If you are hosting multiple models, you also assign a VariantWeight to specify how much traffic you want to allocate to each model. For example, suppose that you want to host two models, A and B, and you assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to Model A, and one-third to model B. 

Required Parameters:
EndpointConfigName, ProductionVariants
"""
CreateEndpointConfig(args) = sagemaker("CreateEndpointConfig", args)

"""
Removes the specified algorithm from your account.

Required Parameters:
AlgorithmName
"""
DeleteAlgorithm(args) = sagemaker("DeleteAlgorithm", args)

"""
Gets information about a labeling job.

Required Parameters:
LabelingJobName
"""
DescribeLabelingJob(args) = sagemaker("DescribeLabelingJob", args)

"""
Creates a trial component, which is a stage of a machine learning trial. A trial is composed of one or more trial components. A trial component can be used in multiple trials. Trial components include pre-processing jobs, training jobs, and batch transform jobs. When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK. You can add tags to a trial component and then use the Search API to search for the tags.   CreateTrialComponent can only be invoked from within an Amazon SageMaker managed environment. This includes Amazon SageMaker training jobs, processing jobs, transform jobs, and Amazon SageMaker notebooks. A call to CreateTrialComponent from outside one of these environments results in an error. 

Required Parameters:
TrialComponentName
"""
CreateTrialComponent(args) = sagemaker("CreateTrialComponent", args)

"""
Lists apps.
"""
ListApps() = sagemaker("ListApps")

"""
Lists the model packages that have been created.
"""
ListModelPackages() = sagemaker("ListModelPackages")

"""
Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account.
"""
ListHyperParameterTuningJobs() = sagemaker("ListHyperParameterTuningJobs")

"""
Deletes an endpoint configuration. The DeleteEndpointConfig API deletes only the specified configuration. It does not delete endpoints created using the configuration. 

Required Parameters:
EndpointConfigName
"""
DeleteEndpointConfig(args) = sagemaker("DeleteEndpointConfig", args)

"""
Returns a description of a notebook instance lifecycle configuration. For information about notebook instance lifestyle configurations, see Step 2.1: (Optional) Customize a Notebook Instance.

Required Parameters:
NotebookInstanceLifecycleConfigName
"""
DescribeNotebookInstanceLifecycleConfig(args) = sagemaker("DescribeNotebookInstanceLifecycleConfig", args)

"""
Lists transform jobs.
"""
ListTransformJobs() = sagemaker("ListTransformJobs")

"""
Creates a new work team for labeling your data. A work team is defined by one or more Amazon Cognito user pools. You must first create the user pools before you can create a work team. You cannot create more than 25 work teams in an account and region.

Required Parameters:
WorkteamName, MemberDefinitions, Description
"""
CreateWorkteam(args) = sagemaker("CreateWorkteam", args)

"""
Gets details about the specified Git repository.

Required Parameters:
CodeRepositoryName
"""
DescribeCodeRepository(args) = sagemaker("DescribeCodeRepository", args)

"""
Deletes a model. The DeleteModel API deletes only the model entry that was created in Amazon SageMaker when you called the CreateModel API. It does not delete model artifacts, inference code, or the IAM role that you specified when creating the model. 

Required Parameters:
ModelName
"""
DeleteModel(args) = sagemaker("DeleteModel", args)

"""
Lists endpoints.
"""
ListEndpoints() = sagemaker("ListEndpoints")

"""
Updates a previously created schedule.

Required Parameters:
MonitoringScheduleName, MonitoringScheduleConfig
"""
UpdateMonitoringSchedule(args) = sagemaker("UpdateMonitoringSchedule", args)

"""
Returns a description of the specified model package, which is used to create Amazon SageMaker models or list them on AWS Marketplace. To create models in Amazon SageMaker, buyers can subscribe to model packages listed on AWS Marketplace.

Required Parameters:
ModelPackageName
"""
DescribeModelPackage(args) = sagemaker("DescribeModelPackage", args)

"""
Creates a running App for the specified UserProfile. Supported Apps are JupyterServer and KernelGateway. This operation is automatically invoked by Amazon SageMaker Amazon SageMaker Studio (Studio) upon access to the associated Studio Domain, and when new kernel configurations are selected by the user. A user may have multiple Apps active simultaneously. Apps will automatically terminate and be deleted when stopped from within Studio, or when the DeleteApp API is manually called. UserProfiles are limited to 5 concurrently running Apps at a time.

Required Parameters:
DomainId, UserProfileName, AppType, AppName
"""
CreateApp(args) = sagemaker("CreateApp", args)

"""
Lists the machine learning algorithms that have been created.
"""
ListAlgorithms() = sagemaker("ListAlgorithms")

"""
Returns the tags for the specified Amazon SageMaker resource.

Required Parameters:
ResourceArn
"""
ListTags(args) = sagemaker("ListTags", args)

"""
Returns information about a notebook instance.

Required Parameters:
NotebookInstanceName
"""
DescribeNotebookInstance(args) = sagemaker("DescribeNotebookInstance", args)

"""
Returns information about a transform job.

Required Parameters:
TransformJobName
"""
DescribeTransformJob(args) = sagemaker("DescribeTransformJob", args)

"""
Stops a running labeling job. A job that is stopped cannot be restarted. Any results obtained before the job is stopped are placed in the Amazon S3 output bucket.

Required Parameters:
LabelingJobName
"""
StopLabelingJob(args) = sagemaker("StopLabelingJob", args)

"""
Describes a model that you created using the CreateModel API.

Required Parameters:
ModelName
"""
DescribeModel(args) = sagemaker("DescribeModel", args)

"""
Deletes the specified trial. All trial components that make up the trial must be deleted first. Use the DescribeTrialComponent API to get the list of trial components.

Required Parameters:
TrialName
"""
DeleteTrial(args) = sagemaker("DeleteTrial", args)

"""
List the Candidates created for the job.

Required Parameters:
AutoMLJobName
"""
ListCandidatesForAutoMLJob(args) = sagemaker("ListCandidatesForAutoMLJob", args)

"""
Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region. 
"""
ListNotebookInstances() = sagemaker("ListNotebookInstances")

"""
Creates a Git repository as a resource in your Amazon SageMaker account. You can associate the repository with notebook instances so that you can use Git source control for the notebooks you create. The Git repository is a resource in your Amazon SageMaker account, so it can be associated with more than one notebook instance, and it persists independently from the lifecycle of any notebook instances it is associated with. The repository can be hosted either in AWS CodeCommit or in any other Git repository.

Required Parameters:
CodeRepositoryName, GitConfig
"""
CreateCodeRepository(args) = sagemaker("CreateCodeRepository", args)

"""
Returns the description of an endpoint.

Required Parameters:
EndpointName
"""
DescribeEndpoint(args) = sagemaker("DescribeEndpoint", args)

"""
Gets a list of labeling jobs.
"""
ListLabelingJobs() = sagemaker("ListLabelingJobs")
