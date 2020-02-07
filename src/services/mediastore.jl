include("../AWSCorePrototypeServices.jl")
using .Services: mediastore

"""
Returns a list of the tags assigned to the specified container. 

Required Parameters:
Resource
"""
ListTagsForResource(args) = mediastore("ListTagsForResource", args)

"""
Lists the properties of all containers in AWS Elemental MediaStore.  You can query to receive all the containers in one response. Or you can include the MaxResults parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the NextToken parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.  See also DescribeContainer, which gets the properties of one container. 
"""
ListContainers() = mediastore("ListContainers")

"""
Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:DeleteCorsPolicy action. The container owner has this permission by default and can grant this permission to others.

Required Parameters:
ContainerName
"""
DeleteCorsPolicy(args) = mediastore("DeleteCorsPolicy", args)

"""
Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.

Required Parameters:
ContainerName
"""
StartAccessLogging(args) = mediastore("StartAccessLogging", args)

"""
Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability. To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed. To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.

Required Parameters:
ContainerName, CorsPolicy
"""
PutCorsPolicy(args) = mediastore("PutCorsPolicy", args)

"""
Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.

Required Parameters:
ContainerName
"""
CreateContainer(args) = mediastore("CreateContainer", args)

"""
Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide.

Required Parameters:
ContainerName
"""
GetContainerPolicy(args) = mediastore("GetContainerPolicy", args)

"""
Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.

Required Parameters:
ContainerName
"""
DeleteLifecyclePolicy(args) = mediastore("DeleteLifecyclePolicy", args)

"""
Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The DescribeContainer request returns a single Container object based on ContainerName. To return all Container objects that are associated with a specified AWS account, use ListContainers.
"""
DescribeContainer() = mediastore("DescribeContainer")

"""
Retrieves the object lifecycle policy that is assigned to a container.

Required Parameters:
ContainerName
"""
GetLifecyclePolicy(args) = mediastore("GetLifecyclePolicy", args)

"""
Deletes the specified container. Before you make a DeleteContainer request, delete any objects in the container or in any folders in the container. You can delete only empty containers. 

Required Parameters:
ContainerName
"""
DeleteContainer(args) = mediastore("DeleteContainer", args)

"""
Returns the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:GetCorsPolicy action. By default, the container owner has this permission and can grant it to others.

Required Parameters:
ContainerName
"""
GetCorsPolicy(args) = mediastore("GetCorsPolicy", args)

"""
Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect. For information about how to construct an object lifecycle policy, see Components of an Object Lifecycle Policy.

Required Parameters:
ContainerName, LifecyclePolicy
"""
PutLifecyclePolicy(args) = mediastore("PutLifecyclePolicy", args)

"""
Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.

Required Parameters:
Resource, Tags
"""
TagResource(args) = mediastore("TagResource", args)

"""
Removes tags from the specified container. You can specify one or more tags to remove. 

Required Parameters:
Resource, TagKeys
"""
UntagResource(args) = mediastore("UntagResource", args)

"""
Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.

Required Parameters:
ContainerName
"""
StopAccessLogging(args) = mediastore("StopAccessLogging", args)

"""
Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide. For this release of the REST API, you can create only one policy for a container. If you enter PutContainerPolicy twice, the second command modifies the existing policy. 

Required Parameters:
ContainerName, Policy
"""
PutContainerPolicy(args) = mediastore("PutContainerPolicy", args)

"""
Deletes the access policy that is associated with the specified container.

Required Parameters:
ContainerName
"""
DeleteContainerPolicy(args) = mediastore("DeleteContainerPolicy", args)
