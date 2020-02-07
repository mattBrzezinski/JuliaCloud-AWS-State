include("../AWSCorePrototypeServices.jl")
using .Services: kinesis_analytics_v2

"""
Retrieves the list of key-value tags assigned to the application. For more information, see Using Tagging.

Required Parameters:
ResourceARN
"""
ListTagsForResource(args) = kinesis_analytics_v2("ListTagsForResource", args)

"""
Deletes a snapshot of application state.

Required Parameters:
ApplicationName, SnapshotName, SnapshotCreationTimestamp
"""
DeleteApplicationSnapshot(args) = kinesis_analytics_v2("DeleteApplicationSnapshot", args)

"""
Adds an Amazon CloudWatch log stream to monitor application configuration errors.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, CloudWatchLoggingOption
"""
AddApplicationCloudWatchLoggingOption(args) = kinesis_analytics_v2("AddApplicationCloudWatchLoggingOption", args)

"""
Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. 

Required Parameters:
ApplicationName
"""
StopApplication(args) = kinesis_analytics_v2("StopApplication", args)

"""
Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.

Required Parameters:
ApplicationName, CreateTimestamp
"""
DeleteApplication(args) = kinesis_analytics_v2("DeleteApplication", args)

"""
Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, Output
"""
AddApplicationOutput(args) = kinesis_analytics_v2("AddApplicationOutput", args)

"""
Deletes an InputProcessingConfiguration from an input.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, InputId
"""
DeleteApplicationInputProcessingConfiguration(args) = kinesis_analytics_v2("DeleteApplicationInputProcessingConfiguration", args)

"""
Lists information about the current application snapshots.

Required Parameters:
ApplicationName
"""
ListApplicationSnapshots(args) = kinesis_analytics_v2("ListApplicationSnapshots", args)

"""
Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.

Required Parameters:
ApplicationName, RunConfiguration
"""
StartApplication(args) = kinesis_analytics_v2("StartApplication", args)

"""
Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application. 

Required Parameters:
ApplicationName, RuntimeEnvironment, ServiceExecutionRole
"""
CreateApplication(args) = kinesis_analytics_v2("CreateApplication", args)

"""
Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application. 

Required Parameters:
ApplicationName, CurrentApplicationVersionId
"""
UpdateApplication(args) = kinesis_analytics_v2("UpdateApplication", args)

"""
Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation. 

Required Parameters:
ApplicationName, CurrentApplicationVersionId, ReferenceId
"""
DeleteApplicationReferenceDataSource(args) = kinesis_analytics_v2("DeleteApplicationReferenceDataSource", args)

"""
Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging.

Required Parameters:
ResourceARN, Tags
"""
TagResource(args) = kinesis_analytics_v2("TagResource", args)

"""
Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, OutputId
"""
DeleteApplicationOutput(args) = kinesis_analytics_v2("DeleteApplicationOutput", args)

"""
Removes one or more tags from a Kinesis Analytics application. For more information, see Using Tagging.

Required Parameters:
ResourceARN, TagKeys
"""
UntagResource(args) = kinesis_analytics_v2("UntagResource", args)

"""
Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.
"""
ListApplications() = kinesis_analytics_v2("ListApplications")

"""
Returns information about a snapshot of application state data.

Required Parameters:
ApplicationName, SnapshotName
"""
DescribeApplicationSnapshot(args) = kinesis_analytics_v2("DescribeApplicationSnapshot", args)

"""
Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Kinesis Data Analytics applications:   VPC configurations are not supported for SQL applications.   When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.  

Required Parameters:
ApplicationName, CurrentApplicationVersionId, VpcConfiguration
"""
AddApplicationVpcConfiguration(args) = kinesis_analytics_v2("AddApplicationVpcConfiguration", args)

"""
Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, InputId, InputProcessingConfiguration
"""
AddApplicationInputProcessingConfiguration(args) = kinesis_analytics_v2("AddApplicationInputProcessingConfiguration", args)

"""
Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, ReferenceDataSource
"""
AddApplicationReferenceDataSource(args) = kinesis_analytics_v2("AddApplicationReferenceDataSource", args)

"""
Removes a VPC configuration from a Kinesis Data Analytics application.

Required Parameters:
ApplicationName, CurrentApplicationVersionId, VpcConfigurationId
"""
DeleteApplicationVpcConfiguration(args) = kinesis_analytics_v2("DeleteApplicationVpcConfiguration", args)

"""
Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 

Required Parameters:
ServiceExecutionRole
"""
DiscoverInputSchema(args) = kinesis_analytics_v2("DiscoverInputSchema", args)

"""
 Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. 

Required Parameters:
ApplicationName, CurrentApplicationVersionId, Input
"""
AddApplicationInput(args) = kinesis_analytics_v2("AddApplicationInput", args)

"""
Returns information about a specific Amazon Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.

Required Parameters:
ApplicationName
"""
DescribeApplication(args) = kinesis_analytics_v2("DescribeApplication", args)

"""
Creates a snapshot of the application's state data.

Required Parameters:
ApplicationName, SnapshotName
"""
CreateApplicationSnapshot(args) = kinesis_analytics_v2("CreateApplicationSnapshot", args)

"""
Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. 

Required Parameters:
ApplicationName, CurrentApplicationVersionId, CloudWatchLoggingOptionId
"""
DeleteApplicationCloudWatchLoggingOption(args) = kinesis_analytics_v2("DeleteApplicationCloudWatchLoggingOption", args)
