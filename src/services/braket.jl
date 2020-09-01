include("../AWSCorePrototypeServices.jl")
using .Services: braket

"""
    GetDevice()

Retrieves the devices available in Amazon Braket.

Required Parameters
{
  "deviceArn": "The ARN of the device to retrieve."
}
"""
GetDevice(args) = braket("GET", "/device/{deviceArn}", args)

"""
    CancelQuantumTask()

Cancels the specified task.

Required Parameters
{
  "clientToken": "The client token associated with the request.",
  "quantumTaskArn": "The ARN of the task to cancel."
}
"""
CancelQuantumTask(args) = braket("PUT", "/quantum-task/{quantumTaskArn}/cancel", args)

"""
    SearchQuantumTasks()

Searches for tasks that match the specified filter values.

Required Parameters
{
  "filters": "Array of SearchQuantumTasksFilter objects."
}

Optional Parameters
{
  "maxResults": "Maximum number of results to return in the response.",
  "nextToken": "A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended."
}
"""
SearchQuantumTasks(args) = braket("POST", "/quantum-tasks", args)

"""
    GetQuantumTask()

Retrieves the specified quantum task.

Required Parameters
{
  "quantumTaskArn": "the ARN of the task to retrieve."
}
"""
GetQuantumTask(args) = braket("GET", "/quantum-task/{quantumTaskArn}", args)

"""
    SearchDevices()

Searches for devices using the specified filters.

Required Parameters
{
  "filters": "The filter values to use to search for a device."
}

Optional Parameters
{
  "maxResults": "The maximum number of results to return in the response.",
  "nextToken": "A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended."
}
"""
SearchDevices(args) = braket("POST", "/devices", args)

"""
    CreateQuantumTask()

Creates a quantum task.

Required Parameters
{
  "action": "The action associated with the task.",
  "clientToken": "The client token associated with the request.",
  "outputS3KeyPrefix": "The key prefix for the location in the S3 bucket to store task results in.",
  "deviceArn": "The ARN of the device to run the task on.",
  "shots": "The number of shots to use for the task.",
  "outputS3Bucket": "The S3 bucket to store task result files in."
}

Optional Parameters
{
  "deviceParameters": "The parameters for the device to run the task on."
}
"""
CreateQuantumTask(args) = braket("POST", "/quantum-task", args)
