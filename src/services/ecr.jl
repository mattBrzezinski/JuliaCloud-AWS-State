include("../AWSCorePrototypeServices.jl")
using .Services: ecr

"""
List the tags for an Amazon ECR resource.

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = ecr("ListTagsForResource", args)

"""
Creates a repository. For more information, see Amazon ECR Repositories in the Amazon Elastic Container Registry User Guide.

Required Parameters:
repositoryName
"""
CreateRepository(args) = ecr("CreateRepository", args)

"""
Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the force option to delete the repository.

Required Parameters:
repositoryName
"""
DeleteRepository(args) = ecr("DeleteRepository", args)

"""
Describes image repositories in a registry.
"""
DescribeRepositories() = ecr("DescribeRepositories")

"""
Lists all the image IDs for the specified repository. You can filter images based on whether or not they are tagged by using the tagStatus filter and specifying either TAGGED, UNTAGGED or ANY. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.

Required Parameters:
repositoryName
"""
ListImages(args) = ecr("ListImages", args)

"""
Deletes the lifecycle policy associated with the specified repository.

Required Parameters:
repositoryName
"""
DeleteLifecyclePolicy(args) = ecr("DeleteLifecyclePolicy", args)

"""
Retrieves an authorization token. An authorization token represents your IAM authentication credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. The authorizationToken returned is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an get-login-password command that simplifies the login process. For more information, see Registry Authentication in the Amazon Elastic Container Registry User Guide.
"""
GetAuthorizationToken() = ecr("GetAuthorizationToken")

"""
Retrieves the lifecycle policy for the specified repository.

Required Parameters:
repositoryName
"""
GetLifecyclePolicy(args) = ecr("GetLifecyclePolicy", args)

"""
Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes. When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName, uploadId, layerDigests
"""
CompleteLayerUpload(args) = ecr("CompleteLayerUpload", args)

"""
Returns metadata about the images in a repository.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 

Required Parameters:
repositoryName
"""
DescribeImages(args) = ecr("DescribeImages", args)

"""
Checks the availability of one or more image layers in a repository. When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it is, then the image layer is skipped. When an image is pulled from a repository, each image layer is checked once to verify it is available to be pulled.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName, layerDigests
"""
BatchCheckLayerAvailability(args) = ecr("BatchCheckLayerAvailability", args)

"""
Retrieves the repository policy for the specified repository.

Required Parameters:
repositoryName
"""
GetRepositoryPolicy(args) = ecr("GetRepositoryPolicy", args)

"""
Creates or updates the image manifest and tags associated with an image. When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and tags associated with the image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName, imageManifest
"""
PutImage(args) = ecr("PutImage", args)

"""
Deletes a list of specified images within a repository. Images are specified with either an imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.

Required Parameters:
repositoryName, imageIds
"""
BatchDeleteImage(args) = ecr("BatchDeleteImage", args)

"""
Updates the image scanning configuration for the specified repository.

Required Parameters:
repositoryName, imageScanningConfiguration
"""
PutImageScanningConfiguration(args) = ecr("PutImageScanningConfiguration", args)

"""
Updates the image tag mutability settings for the specified repository. For more information, see Image Tag Mutability in the Amazon Elastic Container Registry User Guide.

Required Parameters:
repositoryName, imageTagMutability
"""
PutImageTagMutability(args) = ecr("PutImageTagMutability", args)

"""
Creates or updates the lifecycle policy for the specified repository. For more information, see Lifecycle Policy Template.

Required Parameters:
repositoryName, lifecyclePolicyText
"""
PutLifecyclePolicy(args) = ecr("PutLifecyclePolicy", args)

"""
Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.

Required Parameters:
repositoryName
"""
StartLifecyclePolicyPreview(args) = ecr("StartLifecyclePolicyPreview", args)

"""
Uploads an image layer part to Amazon ECR. When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName, uploadId, partFirstByte, partLastByte, layerPartBlob
"""
UploadLayerPart(args) = ecr("UploadLayerPart", args)

"""
Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.

Required Parameters:
resourceArn, tags
"""
TagResource(args) = ecr("TagResource", args)

"""
Deletes specified tags from a resource.

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = ecr("UntagResource", args)

"""
Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image. When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName, layerDigest
"""
GetDownloadUrlForLayer(args) = ecr("GetDownloadUrlForLayer", args)

"""
Applies a repository policy to the specified repository to control access permissions. For more information, see Amazon ECR Repository Policies in the Amazon Elastic Container Registry User Guide.

Required Parameters:
repositoryName, policyText
"""
SetRepositoryPolicy(args) = ecr("SetRepositoryPolicy", args)

"""
Deletes the repository policy associated with the specified repository.

Required Parameters:
repositoryName
"""
DeleteRepositoryPolicy(args) = ecr("DeleteRepositoryPolicy", args)

"""
Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see Image Scanning in the Amazon Elastic Container Registry User Guide.

Required Parameters:
repositoryName, imageId
"""
StartImageScan(args) = ecr("StartImageScan", args)

"""
Gets detailed information for an image. Images are specified with either an imageTag or imageDigest. When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.

Required Parameters:
repositoryName, imageIds
"""
BatchGetImage(args) = ecr("BatchGetImage", args)

"""
Retrieves the results of the lifecycle policy preview request for the specified repository.

Required Parameters:
repositoryName
"""
GetLifecyclePolicyPreview(args) = ecr("GetLifecyclePolicyPreview", args)

"""
Returns the scan findings for the specified image.

Required Parameters:
repositoryName, imageId
"""
DescribeImageScanFindings(args) = ecr("DescribeImageScanFindings", args)

"""
Notifies Amazon ECR that you intend to upload an image layer. When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether an image layer has been uploaded before is determined by the BatchCheckLayerAvailability API action.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 

Required Parameters:
repositoryName
"""
InitiateLayerUpload(args) = ecr("InitiateLayerUpload", args)
