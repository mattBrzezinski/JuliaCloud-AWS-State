include("../AWSCorePrototypeServices.jl")
using .Services: servicediscovery

"""
Submits a request to perform the following operations:   Add or delete DnsRecords configurations   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service   For public and private DNS namespaces, you must specify all DnsRecords configurations (and, optionally, HealthCheckConfig) that you want to appear in the updated service. Any current configurations that don't appear in an UpdateService request are deleted. When you update the TTL setting for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.

Required Parameters:
Id, Service
"""
UpdateService(args) = servicediscovery("UpdateService", args)

"""
Gets the settings for a specified service.

Required Parameters:
Id
"""
GetService(args) = servicediscovery("GetService", args)

"""
Deletes a specified service. If the service still contains one or more registered instances, the request fails.

Required Parameters:
Id
"""
DeleteService(args) = servicediscovery("DeleteService", args)

"""
Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

Required Parameters:
Name
"""
CreatePublicDnsNamespace(args) = servicediscovery("CreatePublicDnsNamespace", args)

"""
Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

Required Parameters:
Name, Vpc
"""
CreatePrivateDnsNamespace(args) = servicediscovery("CreatePrivateDnsNamespace", args)

"""
Lists summary information about the namespaces that were created by the current AWS account.
"""
ListNamespaces() = servicediscovery("ListNamespaces")

"""
Lists summary information for all the services that are associated with one or more specified namespaces.
"""
ListServices() = servicediscovery("ListServices")

"""
Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that is specified by ServiceId, a record is created or updated in the hosted zone that is associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

Required Parameters:
ServiceId, InstanceId, Attributes
"""
RegisterInstance(args) = servicediscovery("RegisterInstance", args)

"""
Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There is a brief delay between when you register an instance and when the health status for the instance is available.  

Required Parameters:
ServiceId
"""
GetInstancesHealthStatus(args) = servicediscovery("GetInstancesHealthStatus", args)

"""
Creates a service, which defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:   A   AAAA   A and AAAA   SRV   CNAME     Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and AWS Cloud Map uses the values in the configuration to create the specified entities. For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

Required Parameters:
Name
"""
CreateService(args) = servicediscovery("CreateService", args)

"""
Lists summary information about the instances that you registered by using a specified service.

Required Parameters:
ServiceId
"""
ListInstances(args) = servicediscovery("ListInstances", args)

"""
Gets information about a specified instance.

Required Parameters:
ServiceId, InstanceId
"""
GetInstance(args) = servicediscovery("GetInstance", args)

"""
Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance.

Required Parameters:
ServiceId, InstanceId
"""
DeregisterInstance(args) = servicediscovery("DeregisterInstance", args)

"""
Discovers registered instances for a specified namespace and service.

Required Parameters:
NamespaceName, ServiceName
"""
DiscoverInstances(args) = servicediscovery("DiscoverInstances", args)

"""
Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.

Required Parameters:
ServiceId, InstanceId, Status
"""
UpdateInstanceCustomHealthStatus(args) = servicediscovery("UpdateInstanceCustomHealthStatus", args)

"""
Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.

Required Parameters:
Id
"""
DeleteNamespace(args) = servicediscovery("DeleteNamespace", args)

"""
Gets information about a namespace.

Required Parameters:
Id
"""
GetNamespace(args) = servicediscovery("GetNamespace", args)

"""
Creates an HTTP namespace. Service instances that you register using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS.  For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.

Required Parameters:
Name
"""
CreateHttpNamespace(args) = servicediscovery("CreateHttpNamespace", args)

"""
Gets information about any operation that returns an operation ID in the response, such as a CreateService request.  To get a list of operations that match specified criteria, see ListOperations. 

Required Parameters:
OperationId
"""
GetOperation(args) = servicediscovery("GetOperation", args)

"""
Lists operations that match the criteria that you specify.
"""
ListOperations() = servicediscovery("ListOperations")
