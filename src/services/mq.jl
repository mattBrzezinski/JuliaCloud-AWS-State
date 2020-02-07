include("../AWSCorePrototypeServices.jl")
using .Services: mq

"""
Adds a pending configuration change to a broker.
"""
UpdateBroker(BrokerId) = mq("PUT", "/v1/brokers/$broker-id")
UpdateBroker(BrokerId, args) = mq("PUT", "/v1/brokers/$broker-id", args)
UpdateBroker(a...; b...) = UpdateBroker(a..., b)

"""
Creates an ActiveMQ user.
"""
CreateUser(Username, BrokerId) = mq("POST", "/v1/brokers/$broker-id/users/$username")
CreateUser(Username, BrokerId, args) = mq("POST", "/v1/brokers/$broker-id/users/$username", args)
CreateUser(a...; b...) = CreateUser(a..., b)

"""
Describe available engine types and versions.
"""
DescribeBrokerEngineTypes() = mq("GET", "/v1/broker-engine-types")
DescribeBrokerEngineTypes(, args) = mq("GET", "/v1/broker-engine-types", args)
DescribeBrokerEngineTypes(a...; b...) = DescribeBrokerEngineTypes(a..., b)

"""
Returns the specified configuration revision for the specified configuration.
"""
DescribeConfigurationRevision(ConfigurationRevision, ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id/revisions/$configuration-revision")
DescribeConfigurationRevision(ConfigurationRevision, ConfigurationId, args) = mq("GET", "/v1/configurations/$configuration-id/revisions/$configuration-revision", args)
DescribeConfigurationRevision(a...; b...) = DescribeConfigurationRevision(a..., b)

"""
Returns information about the specified broker.
"""
DescribeBroker(BrokerId) = mq("GET", "/v1/brokers/$broker-id")
DescribeBroker(BrokerId, args) = mq("GET", "/v1/brokers/$broker-id", args)
DescribeBroker(a...; b...) = DescribeBroker(a..., b)

"""
Returns a list of all brokers.
"""
ListBrokers() = mq("GET", "/v1/brokers")
ListBrokers(, args) = mq("GET", "/v1/brokers", args)
ListBrokers(a...; b...) = ListBrokers(a..., b)

"""
Updates the information for an ActiveMQ user.
"""
UpdateUser(Username, BrokerId) = mq("PUT", "/v1/brokers/$broker-id/users/$username")
UpdateUser(Username, BrokerId, args) = mq("PUT", "/v1/brokers/$broker-id/users/$username", args)
UpdateUser(a...; b...) = UpdateUser(a..., b)

"""
Returns a list of all configurations.
"""
ListConfigurations() = mq("GET", "/v1/configurations")
ListConfigurations(, args) = mq("GET", "/v1/configurations", args)
ListConfigurations(a...; b...) = ListConfigurations(a..., b)

"""
Deletes an ActiveMQ user.
"""
DeleteUser(Username, BrokerId) = mq("DELETE", "/v1/brokers/$broker-id/users/$username")
DeleteUser(Username, BrokerId, args) = mq("DELETE", "/v1/brokers/$broker-id/users/$username", args)
DeleteUser(a...; b...) = DeleteUser(a..., b)

"""
Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
"""
CreateConfiguration() = mq("POST", "/v1/configurations")
CreateConfiguration(, args) = mq("POST", "/v1/configurations", args)
CreateConfiguration(a...; b...) = CreateConfiguration(a..., b)

"""
Describe available broker instance options.
"""
DescribeBrokerInstanceOptions() = mq("GET", "/v1/broker-instance-options")
DescribeBrokerInstanceOptions(, args) = mq("GET", "/v1/broker-instance-options", args)
DescribeBrokerInstanceOptions(a...; b...) = DescribeBrokerInstanceOptions(a..., b)

"""
Returns a list of all ActiveMQ users.
"""
ListUsers(BrokerId) = mq("GET", "/v1/brokers/$broker-id/users")
ListUsers(BrokerId, args) = mq("GET", "/v1/brokers/$broker-id/users", args)
ListUsers(a...; b...) = ListUsers(a..., b)

"""
Updates the specified configuration.
"""
UpdateConfiguration(ConfigurationId) = mq("PUT", "/v1/configurations/$configuration-id")
UpdateConfiguration(ConfigurationId, args) = mq("PUT", "/v1/configurations/$configuration-id", args)
UpdateConfiguration(a...; b...) = UpdateConfiguration(a..., b)

"""
Deletes a broker. Note: This API is asynchronous.
"""
DeleteBroker(BrokerId) = mq("DELETE", "/v1/brokers/$broker-id")
DeleteBroker(BrokerId, args) = mq("DELETE", "/v1/brokers/$broker-id", args)
DeleteBroker(a...; b...) = DeleteBroker(a..., b)

"""
Creates a broker. Note: This API is asynchronous.
"""
CreateBroker() = mq("POST", "/v1/brokers")
CreateBroker(, args) = mq("POST", "/v1/brokers", args)
CreateBroker(a...; b...) = CreateBroker(a..., b)

"""
Lists tags for a resource.
"""
ListTags(ResourceArn) = mq("GET", "/v1/tags/$resource-arn")
ListTags(ResourceArn, args) = mq("GET", "/v1/tags/$resource-arn", args)
ListTags(a...; b...) = ListTags(a..., b)

"""
Removes a tag from a resource.
"""
DeleteTags(TagKeys, ResourceArn) = mq("DELETE", "/v1/tags/$resource-arn")
DeleteTags(TagKeys, ResourceArn, args) = mq("DELETE", "/v1/tags/$resource-arn", args)
DeleteTags(a...; b...) = DeleteTags(a..., b)

"""
Add a tag to a resource.
"""
CreateTags(ResourceArn) = mq("POST", "/v1/tags/$resource-arn")
CreateTags(ResourceArn, args) = mq("POST", "/v1/tags/$resource-arn", args)
CreateTags(a...; b...) = CreateTags(a..., b)

"""
Returns information about the specified configuration.
"""
DescribeConfiguration(ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id")
DescribeConfiguration(ConfigurationId, args) = mq("GET", "/v1/configurations/$configuration-id", args)
DescribeConfiguration(a...; b...) = DescribeConfiguration(a..., b)

"""
Returns a list of all revisions for the specified configuration.
"""
ListConfigurationRevisions(ConfigurationId) = mq("GET", "/v1/configurations/$configuration-id/revisions")
ListConfigurationRevisions(ConfigurationId, args) = mq("GET", "/v1/configurations/$configuration-id/revisions", args)
ListConfigurationRevisions(a...; b...) = ListConfigurationRevisions(a..., b)

"""
Returns information about an ActiveMQ user.
"""
DescribeUser(Username, BrokerId) = mq("GET", "/v1/brokers/$broker-id/users/$username")
DescribeUser(Username, BrokerId, args) = mq("GET", "/v1/brokers/$broker-id/users/$username", args)
DescribeUser(a...; b...) = DescribeUser(a..., b)

"""
Reboots a broker. Note: This API is asynchronous.
"""
RebootBroker(BrokerId) = mq("POST", "/v1/brokers/$broker-id/reboot")
RebootBroker(BrokerId, args) = mq("POST", "/v1/brokers/$broker-id/reboot", args)
RebootBroker(a...; b...) = RebootBroker(a..., b)
