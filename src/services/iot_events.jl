include("../AWSCorePrototypeServices.jl")
using .Services: iot_events

"""
Lists the tags (metadata) you have assigned to the resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = iot_events("GET", "/tags", args)

"""
Describes a detector model. If the "version" parameter is not specified, information about the latest version is returned.

Required Parameters:
detectorModelName
"""
DescribeDetectorModel(args) = iot_events("GET", "/detector-models/{detectorModelName}", args)

"""
Creates an input.

Required Parameters:
inputName, inputDefinition
"""
CreateInput(args) = iot_events("POST", "/inputs", args)

"""
Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.

Required Parameters:
detectorModelName
"""
ListDetectorModelVersions(args) = iot_events("GET", "/detector-models/{detectorModelName}/versions", args)

"""
Describes an input.

Required Parameters:
inputName
"""
DescribeInput(args) = iot_events("GET", "/inputs/{inputName}", args)

"""
Lists the inputs you have created.
"""
ListInputs() = iot_events("GET", "/inputs")

"""
Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = iot_events("POST", "/tags", args)

"""
Removes the given tags (metadata) from the resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = iot_events("DELETE", "/tags", args)

"""
Sets or updates the AWS IoT Events logging options. If you update the value of any "loggingOptions" field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the "roleArn" field (for example, to correct an invalid policy) it takes up to five minutes for that change to take effect.

Required Parameters:
loggingOptions
"""
PutLoggingOptions(args) = iot_events("PUT", "/logging", args)

"""
Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.

Required Parameters:
detectorModelName, detectorModelDefinition, roleArn
"""
UpdateDetectorModel(args) = iot_events("POST", "/detector-models/{detectorModelName}", args)

"""
Lists the detector models you have created. Only the metadata associated with each detector model is returned.
"""
ListDetectorModels() = iot_events("GET", "/detector-models")

"""
Updates an input.

Required Parameters:
inputName, inputDefinition
"""
UpdateInput(args) = iot_events("PUT", "/inputs/{inputName}", args)

"""
Deletes an input.

Required Parameters:
inputName
"""
DeleteInput(args) = iot_events("DELETE", "/inputs/{inputName}", args)

"""
Retrieves the current settings of the AWS IoT Events logging options.
"""
DescribeLoggingOptions() = iot_events("GET", "/logging")

"""
Creates a detector model.

Required Parameters:
detectorModelName, detectorModelDefinition, roleArn
"""
CreateDetectorModel(args) = iot_events("POST", "/detector-models", args)

"""
Deletes a detector model. Any active instances of the detector model are also deleted.

Required Parameters:
detectorModelName
"""
DeleteDetectorModel(args) = iot_events("DELETE", "/detector-models/{detectorModelName}", args)
