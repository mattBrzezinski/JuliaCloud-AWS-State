include("../AWSCorePrototypeServices.jl")
using .Services: mq

"""
Adds a pending configuration change to a broker.

Required Parameters:
BrokerId
"""
UpdateBroker(args) = mq("PUT", "/v1/brokers/{broker-id}", args)

"""
Creates an ActiveMQ user.

Required Parameters:
Username, BrokerId
"""
CreateUser(args) = mq("POST", "/v1/brokers/{broker-id}/users/{username}", args)

"""
Describe available engine types and versions.
"""
DescribeBrokerEngineTypes() = mq("GET", "/v1/broker-engine-types")

"""
Returns the specified configuration revision for the specified configuration.

Required Parameters:
ConfigurationRevision, ConfigurationId
"""
DescribeConfigurationRevision(args) = mq("GET", "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", args)

"""
Returns information about the specified broker.

Required Parameters:
BrokerId
"""
DescribeBroker(args) = mq("GET", "/v1/brokers/{broker-id}", args)

"""
Returns a list of all brokers.
"""
ListBrokers() = mq("GET", "/v1/brokers")

"""
Updates the information for an ActiveMQ user.

Required Parameters:
Username, BrokerId
"""
UpdateUser(args) = mq("PUT", "/v1/brokers/{broker-id}/users/{username}", args)

"""
Returns a list of all configurations.
"""
ListConfigurations() = mq("GET", "/v1/configurations")

"""
Deletes an ActiveMQ user.

Required Parameters:
Username, BrokerId
"""
DeleteUser(args) = mq("DELETE", "/v1/brokers/{broker-id}/users/{username}", args)

"""
Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
"""
CreateConfiguration() = mq("POST", "/v1/configurations")

"""
Describe available broker instance options.
"""
DescribeBrokerInstanceOptions() = mq("GET", "/v1/broker-instance-options")

"""
Returns a list of all ActiveMQ users.

Required Parameters:
BrokerId
"""
ListUsers(args) = mq("GET", "/v1/brokers/{broker-id}/users", args)

"""
Updates the specified configuration.

Required Parameters:
ConfigurationId
"""
UpdateConfiguration(args) = mq("PUT", "/v1/configurations/{configuration-id}", args)

"""
Deletes a broker. Note: This API is asynchronous.

Required Parameters:
BrokerId
"""
DeleteBroker(args) = mq("DELETE", "/v1/brokers/{broker-id}", args)

"""
Creates a broker. Note: This API is asynchronous.
"""
CreateBroker() = mq("POST", "/v1/brokers")

"""
Lists tags for a resource.

Required Parameters:
ResourceArn
"""
ListTags(args) = mq("GET", "/v1/tags/{resource-arn}", args)

"""
Removes a tag from a resource.

Required Parameters:
TagKeys, ResourceArn
"""
DeleteTags(args) = mq("DELETE", "/v1/tags/{resource-arn}", args)

"""
Add a tag to a resource.

Required Parameters:
ResourceArn
"""
CreateTags(args) = mq("POST", "/v1/tags/{resource-arn}", args)

"""
Returns information about the specified configuration.

Required Parameters:
ConfigurationId
"""
DescribeConfiguration(args) = mq("GET", "/v1/configurations/{configuration-id}", args)

"""
Returns a list of all revisions for the specified configuration.

Required Parameters:
ConfigurationId
"""
ListConfigurationRevisions(args) = mq("GET", "/v1/configurations/{configuration-id}/revisions", args)

"""
Returns information about an ActiveMQ user.

Required Parameters:
Username, BrokerId
"""
DescribeUser(args) = mq("GET", "/v1/brokers/{broker-id}/users/{username}", args)

"""
Reboots a broker. Note: This API is asynchronous.

Required Parameters:
BrokerId
"""
RebootBroker(args) = mq("POST", "/v1/brokers/{broker-id}/reboot", args)
