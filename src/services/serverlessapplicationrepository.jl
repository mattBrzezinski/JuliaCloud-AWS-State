include("../AWSCorePrototypeServices.jl")
using .Services: serverlessapplicationrepository

"""
    ListApplicationVersions()

Lists versions for the specified application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}

Optional Parameters
{
  "NextToken": "A token to specify where to start paginating.",
  "MaxItems": "The total number of items to return."
}
"""
ListApplicationVersions(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/versions", args)

"""
    GetApplication()

Gets the specified application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}

Optional Parameters
{
  "SemanticVersion": "The semantic version of the application to get."
}
"""
GetApplication(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}", args)

"""
    GetCloudFormationTemplate()

Gets the specified AWS CloudFormation template.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application.",
  "TemplateId": "The UUID returned by CreateCloudFormationTemplate.Pattern: [0-9a-fA-F]{8} -[0-9a-fA-F]{4} -[0-9a-fA-F]{4} -[0-9a-fA-F]{4} -[0-9a-fA-F]{12}"
}
"""
GetCloudFormationTemplate(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/templates/{templateId}", args)

"""
    DeleteApplication()

Deletes the specified application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}
"""
DeleteApplication(args) = serverlessapplicationrepository("DELETE", "/applications/{applicationId}", args)

"""
    PutApplicationPolicy()

Sets the permission policy for an application. For the list of actions supported for this operation, see
 Application 
 Permissions
 .

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application.",
  "Statements": "An array of policy statements applied to the application."
}
"""
PutApplicationPolicy(args) = serverlessapplicationrepository("PUT", "/applications/{applicationId}/policy", args)

"""
    ListApplicationDependencies()

Retrieves the list of applications nested in the containing application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}

Optional Parameters
{
  "SemanticVersion": "The semantic version of the application to get.",
  "NextToken": "A token to specify where to start paginating.",
  "MaxItems": "The total number of items to return."
}
"""
ListApplicationDependencies(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/dependencies", args)

"""
    CreateApplication()

Creates an application, optionally including an AWS SAM file to create the first application version in the same call.

Required Parameters
{
  "Description": "The description of the application.Minimum length=1. Maximum length=256",
  "Author": "The name of the author publishing the app.Minimum length=1. Maximum length=127.Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])? \";",
  "Name": "The name of the application that you want to publish.Minimum length=1. Maximum length=140Pattern: \"[a-zA-Z0-9  -]+\";"
}

Optional Parameters
{
  "TemplateUrl": "A link to the S3 object containing the packaged AWS SAM template of your application.You can specify only one of templateBody and templateUrl; otherwise an error results.",
  "SourceCodeUrl": "A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.",
  "SourceCodeArchiveUrl": "A link to the S3 object that contains the ZIP archive of the source code for this version of your application.Maximum size 50 MB",
  "SpdxLicenseId": "A valid identifier from https://spdx.org/licenses/.",
  "ReadmeUrl": "A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.Maximum size 5 MBYou can specify only one of readmeBody and readmeUrl; otherwise, an error results.",
  "LicenseBody": "A local text file that contains the license of the app that matches the spdxLicenseID value of your application.\n The file has the format file://&lt;path>/&lt;filename>.Maximum size 5 MBYou can specify only one of licenseBody and licenseUrl; otherwise, an error results.",
  "LicenseUrl": "A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.Maximum size 5 MBYou can specify only one of licenseBody and licenseUrl; otherwise, an error results.",
  "SemanticVersion": "The semantic version of the application:\n https://semver.org/\n ",
  "ReadmeBody": "A local text readme file in Markdown language that contains a more detailed description of the application and how it works.\n The file has the format file://&lt;path>/&lt;filename>.Maximum size 5 MBYou can specify only one of readmeBody and readmeUrl; otherwise, an error results.",
  "TemplateBody": "The local raw packaged AWS SAM template file of your application.\n The file has the format file://&lt;path>/&lt;filename>.You can specify only one of templateBody and templateUrl; otherwise an error results.",
  "HomePageUrl": "A URL with more information about the application, for example the location of your GitHub repository for the application.",
  "Labels": "Labels to improve discovery of apps in search results.Minimum length=1. Maximum length=127. Maximum number of labels: 10Pattern: \"^[a-zA-Z0-9+  -_:  /@]+ \";"
}
"""
CreateApplication(args) = serverlessapplicationrepository("POST", "/applications", args)

"""
    UpdateApplication()

Updates the specified application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}

Optional Parameters
{
  "Description": "The description of the application.Minimum length=1. Maximum length=256",
  "HomePageUrl": "A URL with more information about the application, for example the location of your GitHub repository for the application.",
  "ReadmeBody": "A text readme file in Markdown language that contains a more detailed description of the application and how it works.Maximum size 5 MB",
  "Author": "The name of the author publishing the app.Minimum length=1. Maximum length=127.Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])? \";",
  "Labels": "Labels to improve discovery of apps in search results.Minimum length=1. Maximum length=127. Maximum number of labels: 10Pattern: \"^[a-zA-Z0-9+  -_:  /@]+ \";",
  "ReadmeUrl": "A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.Maximum size 5 MB"
}
"""
UpdateApplication(args) = serverlessapplicationrepository("PATCH", "/applications/{applicationId}", args)

"""
    UnshareApplication()

Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application.",
  "OrganizationId": "The AWS Organization ID to unshare the application from."
}
"""
UnshareApplication(args) = serverlessapplicationrepository("POST", "/applications/{applicationId}/unshare", args)

"""
    CreateCloudFormationTemplate()

Creates an AWS CloudFormation template.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}

Optional Parameters
{
  "SemanticVersion": "The semantic version of the application:\n https://semver.org/\n "
}
"""
CreateCloudFormationTemplate(args) = serverlessapplicationrepository("POST", "/applications/{applicationId}/templates", args)

"""
    ListApplications()

Lists applications owned by the requester.

Optional Parameters
{
  "NextToken": "A token to specify where to start paginating.",
  "MaxItems": "The total number of items to return."
}
"""

ListApplications() = serverlessapplicationrepository("GET", "/applications")
ListApplications(args) = serverlessapplicationrepository("GET", "/applications", args)

"""
    CreateCloudFormationChangeSet()

Creates an AWS CloudFormation change set for the given application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application.",
  "StackName": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API."
}

Optional Parameters
{
  "ParameterOverrides": "A list of parameter values for the parameters of the application.",
  "Tags": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "ChangeSetName": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "TemplateId": "The UUID returned by CreateCloudFormationTemplate.Pattern: [0-9a-fA-F]{8} -[0-9a-fA-F]{4} -[0-9a-fA-F]{4} -[0-9a-fA-F]{4} -[0-9a-fA-F]{12}",
  "ClientToken": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "SemanticVersion": "The semantic version of the application:\n https://semver.org/\n ",
  "Capabilities": "A list of values that you must specify before you can deploy certain applications.\n Some applications might include resources that can affect permissions in your AWS\n account, for example, by creating new AWS Identity and Access Management (IAM) users.\n For those applications, you must explicitly acknowledge their capabilities by\n specifying this parameter.The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,\n CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.The following resources require you to specify CAPABILITY_IAM or\n CAPABILITY_NAMED_IAM:\n AWS::IAM::Group,\n AWS::IAM::InstanceProfile,\n AWS::IAM::Policy, and\n AWS::IAM::Role.\n If the application contains IAM resources, you can specify either CAPABILITY_IAM\n or CAPABILITY_NAMED_IAM. If the application contains IAM resources\n with custom names, you must specify CAPABILITY_NAMED_IAM.The following resources require you to specify CAPABILITY_RESOURCE_POLICY:\n AWS::Lambda::Permission,\n AWS::IAM:Policy,\n AWS::ApplicationAutoScaling::ScalingPolicy,\n AWS::S3::BucketPolicy,\n AWS::SQS::QueuePolicy, and\n AWS::SNS:TopicPolicy.Applications that contain one or more nested applications require you to specify\n CAPABILITY_AUTO_EXPAND.If your application template contains any of the above resources, we recommend that you review\n all permissions associated with the application before deploying. If you don't specify\n this parameter for an application that requires capabilities, the call will fail.",
  "RollbackConfiguration": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "Description": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "ResourceTypes": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API.",
  "NotificationArns": "This property corresponds to the parameter of the same name for the AWS CloudFormation CreateChangeSet\n  API."
}
"""
CreateCloudFormationChangeSet(args) = serverlessapplicationrepository("POST", "/applications/{applicationId}/changesets", args)

"""
    GetApplicationPolicy()

Retrieves the policy for the application.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application."
}
"""
GetApplicationPolicy(args) = serverlessapplicationrepository("GET", "/applications/{applicationId}/policy", args)

"""
    CreateApplicationVersion()

Creates an application version.

Required Parameters
{
  "ApplicationId": "The Amazon Resource Name (ARN) of the application.",
  "SemanticVersion": "The semantic version of the new version."
}

Optional Parameters
{
  "TemplateBody": "The raw packaged AWS SAM template of your application.",
  "SourceCodeArchiveUrl": "A link to the S3 object that contains the ZIP archive of the source code for this version of your application.Maximum size 50 MB",
  "TemplateUrl": "A link to the packaged AWS SAM template of your application.",
  "SourceCodeUrl": "A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit."
}
"""
CreateApplicationVersion(args) = serverlessapplicationrepository("PUT", "/applications/{applicationId}/versions/{semanticVersion}", args)