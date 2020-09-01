include("../AWSCorePrototypeServices.jl")
using .Services: iot_events

"""
    ListTagsForResource()

Lists the tags (metadata) you have assigned to the resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource."
}
"""
ListTagsForResource(args) = iot_events("GET", "/tags", args)

"""
    DescribeDetectorModel()

Describes a detector model. If the version parameter is not specified, information about the latest version is returned.

Required Parameters
{
  "detectorModelName": "The name of the detector model."
}

Optional Parameters
{
  "detectorModelVersion": "The version of the detector model."
}
"""
DescribeDetectorModel(args) = iot_events("GET", "/detector-models/{detectorModelName}", args)

"""
    CreateInput()

Creates an input.

Required Parameters
{
  "inputName": "The name you want to give to the input.",
  "inputDefinition": "The definition of the input."
}

Optional Parameters
{
  "inputDescription": "A brief description of the input.",
  "tags": "Metadata that can be used to manage the input."
}
"""
CreateInput(args) = iot_events("POST", "/inputs", args)

"""
    ListDetectorModelVersions()

Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.

Required Parameters
{
  "detectorModelName": "The name of the detector model whose versions are returned."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return at one time.",
  "nextToken": "The token for the next set of results."
}
"""
ListDetectorModelVersions(args) = iot_events("GET", "/detector-models/{detectorModelName}/versions", args)

"""
    DescribeInput()

Describes an input.

Required Parameters
{
  "inputName": "The name of the input."
}
"""
DescribeInput(args) = iot_events("GET", "/inputs/{inputName}", args)

"""
    ListInputs()

Lists the inputs you have created.

Optional Parameters
{
  "maxResults": "The maximum number of results to return at one time.",
  "nextToken": "The token for the next set of results."
}
"""

ListInputs() = iot_events("GET", "/inputs")
ListInputs(args) = iot_events("GET", "/inputs", args)

"""
    TagResource()

Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource.",
  "tags": "The new or modified tags for the resource."
}
"""
TagResource(args) = iot_events("POST", "/tags", args)

"""
    UntagResource()

Removes the given tags (metadata) from the resource.

Required Parameters
{
  "resourceArn": "The ARN of the resource.",
  "tagKeys": "A list of the keys of the tags to be removed from the resource."
}
"""
UntagResource(args) = iot_events("DELETE", "/tags", args)

"""
    PutLoggingOptions()

Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.

Required Parameters
{
  "loggingOptions": "The new values of the AWS IoT Events logging options."
}
"""
PutLoggingOptions(args) = iot_events("PUT", "/logging", args)

"""
    UpdateDetectorModel()

Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.

Required Parameters
{
  "roleArn": "The ARN of the role that grants permission to AWS IoT Events to perform its operations.",
  "detectorModelDefinition": "Information that defines how a detector operates.",
  "detectorModelName": "The name of the detector model that is updated."
}

Optional Parameters
{
  "evaluationMethod": "Information about the order in which events are evaluated and how actions are executed. ",
  "detectorModelDescription": "A brief description of the detector model."
}
"""
UpdateDetectorModel(args) = iot_events("POST", "/detector-models/{detectorModelName}", args)

"""
    ListDetectorModels()

Lists the detector models you have created. Only the metadata associated with each detector model is returned.

Optional Parameters
{
  "maxResults": "The maximum number of results to return at one time.",
  "nextToken": "The token for the next set of results."
}
"""

ListDetectorModels() = iot_events("GET", "/detector-models")
ListDetectorModels(args) = iot_events("GET", "/detector-models", args)

"""
    UpdateInput()

Updates an input.

Required Parameters
{
  "inputName": "The name of the input you want to update.",
  "inputDefinition": "The definition of the input."
}

Optional Parameters
{
  "inputDescription": "A brief description of the input."
}
"""
UpdateInput(args) = iot_events("PUT", "/inputs/{inputName}", args)

"""
    DeleteInput()

Deletes an input.

Required Parameters
{
  "inputName": "The name of the input to delete."
}
"""
DeleteInput(args) = iot_events("DELETE", "/inputs/{inputName}", args)

"""
    DescribeLoggingOptions()

Retrieves the current settings of the AWS IoT Events logging options.
"""

DescribeLoggingOptions() = iot_events("GET", "/logging")
DescribeLoggingOptions(args) = iot_events("GET", "/logging", args)

"""
    CreateDetectorModel()

Creates a detector model.

Required Parameters
{
  "roleArn": "The ARN of the role that grants permission to AWS IoT Events to perform its operations.",
  "detectorModelDefinition": "Information that defines how the detectors operate.",
  "detectorModelName": "The name of the detector model."
}

Optional Parameters
{
  "key": "The input attribute key used to identify a device or system to create a detector (an instance of the detector model) and then to route each input received to the appropriate detector (instance). This parameter uses a JSON-path expression in the message payload of each input to specify the attribute-value pair that is used to identify the device associated with the input.",
  "evaluationMethod": "Information about the order in which events are evaluated and how actions are executed. ",
  "detectorModelDescription": "A brief description of the detector model.",
  "tags": "Metadata that can be used to manage the detector model."
}
"""
CreateDetectorModel(args) = iot_events("POST", "/detector-models", args)

"""
    DeleteDetectorModel()

Deletes a detector model. Any active instances of the detector model are also deleted.

Required Parameters
{
  "detectorModelName": "The name of the detector model to be deleted."
}
"""
DeleteDetectorModel(args) = iot_events("DELETE", "/detector-models/{detectorModelName}", args)