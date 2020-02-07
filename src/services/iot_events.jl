include("../AWSCorePrototypeServices.jl")
using .Services: iot_events

"""
Lists the tags (metadata) you have assigned to the resource.
"""
ListTagsForResource(resourceArn) = iot_events("GET", "/tags")
ListTagsForResource(resourceArn, args) = iot_events("GET", "/tags", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Describes a detector model. If the "version" parameter is not specified, information about the latest version is returned.
"""
DescribeDetectorModel(detectorModelName) = iot_events("GET", "/detector-models/$detectorModelName")
DescribeDetectorModel(detectorModelName, args) = iot_events("GET", "/detector-models/$detectorModelName", args)
DescribeDetectorModel(a...; b...) = DescribeDetectorModel(a..., b)

"""
Creates an input.
"""
CreateInput(inputName, inputDefinition) = iot_events("POST", "/inputs")
CreateInput(inputName, inputDefinition, args) = iot_events("POST", "/inputs", args)
CreateInput(a...; b...) = CreateInput(a..., b)

"""
Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
"""
ListDetectorModelVersions(detectorModelName) = iot_events("GET", "/detector-models/$detectorModelName/versions")
ListDetectorModelVersions(detectorModelName, args) = iot_events("GET", "/detector-models/$detectorModelName/versions", args)
ListDetectorModelVersions(a...; b...) = ListDetectorModelVersions(a..., b)

"""
Describes an input.
"""
DescribeInput(inputName) = iot_events("GET", "/inputs/$inputName")
DescribeInput(inputName, args) = iot_events("GET", "/inputs/$inputName", args)
DescribeInput(a...; b...) = DescribeInput(a..., b)

"""
Lists the inputs you have created.
"""
ListInputs() = iot_events("GET", "/inputs")
ListInputs(, args) = iot_events("GET", "/inputs", args)
ListInputs(a...; b...) = ListInputs(a..., b)

"""
Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
"""
TagResource(resourceArn, tags) = iot_events("POST", "/tags")
TagResource(resourceArn, tags, args) = iot_events("POST", "/tags", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Removes the given tags (metadata) from the resource.
"""
UntagResource(resourceArn, tagKeys) = iot_events("DELETE", "/tags")
UntagResource(resourceArn, tagKeys, args) = iot_events("DELETE", "/tags", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Sets or updates the AWS IoT Events logging options. If you update the value of any "loggingOptions" field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the "roleArn" field (for example, to correct an invalid policy) it takes up to five minutes for that change to take effect.
"""
PutLoggingOptions(loggingOptions) = iot_events("PUT", "/logging")
PutLoggingOptions(loggingOptions, args) = iot_events("PUT", "/logging", args)
PutLoggingOptions(a...; b...) = PutLoggingOptions(a..., b)

"""
Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
"""
UpdateDetectorModel(detectorModelName, detectorModelDefinition, roleArn) = iot_events("POST", "/detector-models/$detectorModelName")
UpdateDetectorModel(detectorModelName, detectorModelDefinition, roleArn, args) = iot_events("POST", "/detector-models/$detectorModelName", args)
UpdateDetectorModel(a...; b...) = UpdateDetectorModel(a..., b)

"""
Lists the detector models you have created. Only the metadata associated with each detector model is returned.
"""
ListDetectorModels() = iot_events("GET", "/detector-models")
ListDetectorModels(, args) = iot_events("GET", "/detector-models", args)
ListDetectorModels(a...; b...) = ListDetectorModels(a..., b)

"""
Updates an input.
"""
UpdateInput(inputName, inputDefinition) = iot_events("PUT", "/inputs/$inputName")
UpdateInput(inputName, inputDefinition, args) = iot_events("PUT", "/inputs/$inputName", args)
UpdateInput(a...; b...) = UpdateInput(a..., b)

"""
Deletes an input.
"""
DeleteInput(inputName) = iot_events("DELETE", "/inputs/$inputName")
DeleteInput(inputName, args) = iot_events("DELETE", "/inputs/$inputName", args)
DeleteInput(a...; b...) = DeleteInput(a..., b)

"""
Retrieves the current settings of the AWS IoT Events logging options.
"""
DescribeLoggingOptions() = iot_events("GET", "/logging")
DescribeLoggingOptions(, args) = iot_events("GET", "/logging", args)
DescribeLoggingOptions(a...; b...) = DescribeLoggingOptions(a..., b)

"""
Creates a detector model.
"""
CreateDetectorModel(detectorModelName, detectorModelDefinition, roleArn) = iot_events("POST", "/detector-models")
CreateDetectorModel(detectorModelName, detectorModelDefinition, roleArn, args) = iot_events("POST", "/detector-models", args)
CreateDetectorModel(a...; b...) = CreateDetectorModel(a..., b)

"""
Deletes a detector model. Any active instances of the detector model are also deleted.
"""
DeleteDetectorModel(detectorModelName) = iot_events("DELETE", "/detector-models/$detectorModelName")
DeleteDetectorModel(detectorModelName, args) = iot_events("DELETE", "/detector-models/$detectorModelName", args)
DeleteDetectorModel(a...; b...) = DeleteDetectorModel(a..., b)
