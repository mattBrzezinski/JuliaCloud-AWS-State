include("../AWSCorePrototypeServices.jl")
using .Services: mediastore

"""
    ListTagsForResource

Returns a list of the tags assigned to the specified container. 

Required Parameters:
{
  "Resource": "The Amazon Resource Name (ARN) for the container."
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = mediastore("ListTagsForResource", args)
"""
    ListContainers

Lists the properties of all containers in AWS Elemental MediaStore.  You can query to receive all the containers in one response. Or you can include the MaxResults parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the NextToken parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.  See also DescribeContainer, which gets the properties of one container. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "Enter the maximum number of containers in the response. Use from 1 to 255 characters. ",
  "NextToken": "Only if you used MaxResults in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list."
}

"""
ListContainers() = mediastore("ListContainers")
ListContainers(args) = mediastore("ListContainers", args)

"""
    DeleteCorsPolicy

Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:DeleteCorsPolicy action. The container owner has this permission by default and can grant this permission to others.

Required Parameters:
{
  "ContainerName": "The name of the container to remove the policy from."
}


Optional Parameters:
{}

"""

DeleteCorsPolicy(args) = mediastore("DeleteCorsPolicy", args)
"""
    StartAccessLogging

Starts access logging on the specified container. When you enable access logging on a container, MediaStore delivers access logs for objects stored in that container to Amazon CloudWatch Logs.

Required Parameters:
{
  "ContainerName": "The name of the container that you want to start access logging on."
}


Optional Parameters:
{}

"""

StartAccessLogging(args) = mediastore("StartAccessLogging", args)
"""
    PutCorsPolicy

Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability. To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed. To learn more about CORS, see Cross-Origin Resource Sharing (CORS) in AWS Elemental MediaStore.

Required Parameters:
{
  "ContainerName": "The name of the container that you want to assign the CORS policy to.",
  "CorsPolicy": "The CORS policy to apply to the container. "
}


Optional Parameters:
{}

"""

PutCorsPolicy(args) = mediastore("PutCorsPolicy", args)
"""
    CreateContainer

Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.

Required Parameters:
{
  "ContainerName": "The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named movies in every region, as long as you don’t have an existing container with that name."
}


Optional Parameters:
{
  "Tags": "An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore."
}

"""

CreateContainer(args) = mediastore("CreateContainer", args)
"""
    GetContainerPolicy

Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide.

Required Parameters:
{
  "ContainerName": "The name of the container. "
}


Optional Parameters:
{}

"""

GetContainerPolicy(args) = mediastore("GetContainerPolicy", args)
"""
    DeleteLifecyclePolicy

Removes an object lifecycle policy from a container. It takes up to 20 minutes for the change to take effect.

Required Parameters:
{
  "ContainerName": "The name of the container that holds the object lifecycle policy."
}


Optional Parameters:
{}

"""

DeleteLifecyclePolicy(args) = mediastore("DeleteLifecyclePolicy", args)
"""
    DescribeContainer

Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The DescribeContainer request returns a single Container object based on ContainerName. To return all Container objects that are associated with a specified AWS account, use ListContainers.

Required Parameters:
{}


Optional Parameters:
{
  "ContainerName": "The name of the container to query."
}

"""
DescribeContainer() = mediastore("DescribeContainer")
DescribeContainer(args) = mediastore("DescribeContainer", args)

"""
    GetLifecyclePolicy

Retrieves the object lifecycle policy that is assigned to a container.

Required Parameters:
{
  "ContainerName": "The name of the container that the object lifecycle policy is assigned to."
}


Optional Parameters:
{}

"""

GetLifecyclePolicy(args) = mediastore("GetLifecyclePolicy", args)
"""
    DeleteContainer

Deletes the specified container. Before you make a DeleteContainer request, delete any objects in the container or in any folders in the container. You can delete only empty containers. 

Required Parameters:
{
  "ContainerName": "The name of the container to delete. "
}


Optional Parameters:
{}

"""

DeleteContainer(args) = mediastore("DeleteContainer", args)
"""
    GetCorsPolicy

Returns the cross-origin resource sharing (CORS) configuration information that is set for the container. To use this operation, you must have permission to perform the MediaStore:GetCorsPolicy action. By default, the container owner has this permission and can grant it to others.

Required Parameters:
{
  "ContainerName": "The name of the container that the policy is assigned to."
}


Optional Parameters:
{}

"""

GetCorsPolicy(args) = mediastore("GetCorsPolicy", args)
"""
    PutLifecyclePolicy

Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect. For information about how to construct an object lifecycle policy, see Components of an Object Lifecycle Policy.

Required Parameters:
{
  "ContainerName": "The name of the container that you want to assign the object lifecycle policy to.",
  "LifecyclePolicy": "The object lifecycle policy to apply to the container."
}


Optional Parameters:
{}

"""

PutLifecyclePolicy(args) = mediastore("PutLifecyclePolicy", args)
"""
    TagResource

Adds tags to the specified AWS Elemental MediaStore container. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be "customer" and the tag value might be "companyA." You can specify one or more tags to add to each container. You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.

Required Parameters:
{
  "Tags": "An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example, suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags: customer:CompanyA, priority:Medium, and type:Contract.",
  "Resource": "The Amazon Resource Name (ARN) for the container. "
}


Optional Parameters:
{}

"""

TagResource(args) = mediastore("TagResource", args)
"""
    UntagResource

Removes tags from the specified container. You can specify one or more tags to remove. 

Required Parameters:
{
  "Resource": "The Amazon Resource Name (ARN) for the container.",
  "TagKeys": "A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove (priority)."
}


Optional Parameters:
{}

"""

UntagResource(args) = mediastore("UntagResource", args)
"""
    StopAccessLogging

Stops access logging on the specified container. When you stop access logging on a container, MediaStore stops sending access logs to Amazon CloudWatch Logs. These access logs are not saved and are not retrievable.

Required Parameters:
{
  "ContainerName": "The name of the container that you want to stop access logging on."
}


Optional Parameters:
{}

"""

StopAccessLogging(args) = mediastore("StopAccessLogging", args)
"""
    PutContainerPolicy

Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the AWS Identity and Access Management User Guide. For this release of the REST API, you can create only one policy for a container. If you enter PutContainerPolicy twice, the second command modifies the existing policy. 

Required Parameters:
{
  "Policy": "The contents of the policy, which includes the following:    One Version tag   One Statement tag that contains the standard tags for the policy.  ",
  "ContainerName": "The name of the container."
}


Optional Parameters:
{}

"""

PutContainerPolicy(args) = mediastore("PutContainerPolicy", args)
"""
    DeleteContainerPolicy

Deletes the access policy that is associated with the specified container.

Required Parameters:
{
  "ContainerName": "The name of the container that holds the policy."
}


Optional Parameters:
{}

"""

DeleteContainerPolicy(args) = mediastore("DeleteContainerPolicy", args)