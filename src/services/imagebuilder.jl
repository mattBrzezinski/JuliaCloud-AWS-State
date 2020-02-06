include("../AWSCorePrototypeServices.jl")
using .Services: imagebuilder

"""
 Returns the list of tags for the specified resource. 

Required Parameters:
resourceArn
"""
ListTagsForResource(args) = imagebuilder("GET", "/tags/{resourceArn}", args)

"""
 Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 

Required Parameters:
name, instanceProfileName, clientToken
"""
CreateInfrastructureConfiguration(args) = imagebuilder("PUT", "/CreateInfrastructureConfiguration", args)

"""
 Deletes an infrastructure configuration. 

Required Parameters:
infrastructureConfigurationArn
"""
DeleteInfrastructureConfiguration(args) = imagebuilder("DELETE", "/DeleteInfrastructureConfiguration", args)

"""
 Returns the list of component build versions for the specified semantic version. 
"""
ListComponents() = imagebuilder("POST", "/ListComponents")

"""
 Gets a infrastructure configuration. 

Required Parameters:
infrastructureConfigurationArn
"""
GetInfrastructureConfiguration(args) = imagebuilder("GET", "/GetInfrastructureConfiguration", args)

"""
 Returns the list of image build versions for the specified semantic version. 
"""
ListImages() = imagebuilder("POST", "/ListImages")

"""
 Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 

Required Parameters:
name, imageRecipeArn, infrastructureConfigurationArn, clientToken
"""
CreateImagePipeline(args) = imagebuilder("PUT", "/CreateImagePipeline", args)

"""
 Gets an image. 

Required Parameters:
imageBuildVersionArn
"""
GetImage(args) = imagebuilder("GET", "/GetImage", args)

"""
 Creates a new image recipe. Image Recipes defines how images are configured, tested and assessed. 

Required Parameters:
name, semanticVersion, components, parentImage, clientToken
"""
CreateImageRecipe(args) = imagebuilder("PUT", "/CreateImageRecipe", args)

"""
 Imports a component and transforms its data into a component document. 

Required Parameters:
name, semanticVersion, type, format, platform, clientToken
"""
ImportComponent(args) = imagebuilder("PUT", "/ImportComponent", args)

"""
 Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 

Required Parameters:
name, distributions, clientToken
"""
CreateDistributionConfiguration(args) = imagebuilder("PUT", "/CreateDistributionConfiguration", args)

"""
 Returns the list of component build versions for the specified semantic version. 

Required Parameters:
componentVersionArn
"""
ListComponentBuildVersions(args) = imagebuilder("POST", "/ListComponentBuildVersions", args)

"""
 Returns a list of distribution configurations. 

Required Parameters:
imageVersionArn
"""
ListImageBuildVersions(args) = imagebuilder("POST", "/ListImageBuildVersions", args)

"""
 Applies a policy to a component. 

Required Parameters:
componentArn, policy
"""
PutComponentPolicy(args) = imagebuilder("PUT", "/PutComponentPolicy", args)

"""
 Gets a component object. 

Required Parameters:
componentBuildVersionArn
"""
GetComponent(args) = imagebuilder("GET", "/GetComponent", args)

"""
 Deletes an image recipe. 

Required Parameters:
imageRecipeArn
"""
DeleteImageRecipe(args) = imagebuilder("DELETE", "/DeleteImageRecipe", args)

"""
 Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 

Required Parameters:
imageRecipeArn, infrastructureConfigurationArn, clientToken
"""
CreateImage(args) = imagebuilder("PUT", "/CreateImage", args)

"""
 Gets an image recipe policy. 

Required Parameters:
imageRecipeArn
"""
GetImageRecipePolicy(args) = imagebuilder("GET", "/GetImageRecipePolicy", args)

"""
 Manually triggers a pipeline to create an image. 

Required Parameters:
imagePipelineArn, clientToken
"""
StartImagePipelineExecution(args) = imagebuilder("PUT", "/StartImagePipelineExecution", args)

"""
 Deletes an image pipeline. 

Required Parameters:
imagePipelineArn
"""
DeleteImagePipeline(args) = imagebuilder("DELETE", "/DeleteImagePipeline", args)

"""
 Gets a component policy. 

Required Parameters:
componentArn
"""
GetComponentPolicy(args) = imagebuilder("GET", "/GetComponentPolicy", args)

"""
Returns a list of image pipelines. 
"""
ListImagePipelines() = imagebuilder("POST", "/ListImagePipelines")

"""
 Deletes a distribution configuration. 

Required Parameters:
distributionConfigurationArn
"""
DeleteDistributionConfiguration(args) = imagebuilder("DELETE", "/DeleteDistributionConfiguration", args)

"""
 Adds a tag to a resource. 

Required Parameters:
resourceArn, tags
"""
TagResource(args) = imagebuilder("POST", "/tags/{resourceArn}", args)

"""
 Removes a tag from a resource. 

Required Parameters:
resourceArn, tagKeys
"""
UntagResource(args) = imagebuilder("DELETE", "/tags/{resourceArn}", args)

"""
 Returns a list of distribution configurations. 
"""
ListDistributionConfigurations() = imagebuilder("POST", "/ListDistributionConfigurations")

"""
 Gets an image pipeline. 

Required Parameters:
imagePipelineArn
"""
GetImagePipeline(args) = imagebuilder("GET", "/GetImagePipeline", args)

"""
 Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 

Required Parameters:
infrastructureConfigurationArn, clientToken
"""
UpdateInfrastructureConfiguration(args) = imagebuilder("PUT", "/UpdateInfrastructureConfiguration", args)

"""
 Gets an image policy. 

Required Parameters:
imageArn
"""
GetImagePolicy(args) = imagebuilder("GET", "/GetImagePolicy", args)

"""
 Applies a policy to an image recipe. 

Required Parameters:
imageRecipeArn, policy
"""
PutImageRecipePolicy(args) = imagebuilder("PUT", "/PutImageRecipePolicy", args)

"""
 Returns a list of infrastructure configurations. 
"""
ListInfrastructureConfigurations() = imagebuilder("POST", "/ListInfrastructureConfigurations")

"""
 Deletes a component build version. 

Required Parameters:
componentBuildVersionArn
"""
DeleteComponent(args) = imagebuilder("DELETE", "/DeleteComponent", args)

"""
 Deletes an image. 

Required Parameters:
imageBuildVersionArn
"""
DeleteImage(args) = imagebuilder("DELETE", "/DeleteImage", args)

"""
 Returns a list of image recipes. 
"""
ListImageRecipes() = imagebuilder("POST", "/ListImageRecipes")

"""
 Gets a distribution configuration. 

Required Parameters:
distributionConfigurationArn
"""
GetDistributionConfiguration(args) = imagebuilder("GET", "/GetDistributionConfiguration", args)

"""
 Gets an image recipe. 

Required Parameters:
imageRecipeArn
"""
GetImageRecipe(args) = imagebuilder("GET", "/GetImageRecipe", args)

"""
CancelImageCreation cancels the creation of Image. This operation may only be used on images in a non-terminal state.

Required Parameters:
imageBuildVersionArn, clientToken
"""
CancelImageCreation(args) = imagebuilder("PUT", "/CancelImageCreation", args)

"""
 Returns a list of images created by the specified pipeline. 
"""
ListImagePipelineImages() = imagebuilder("POST", "/ListImagePipelineImages")

"""
Creates a new component that can be used to build, validate, test and assess your image.

Required Parameters:
name, semanticVersion, platform, clientToken
"""
CreateComponent(args) = imagebuilder("PUT", "/CreateComponent", args)

"""
 Applies a policy to an image. 

Required Parameters:
imageArn, policy
"""
PutImagePolicy(args) = imagebuilder("PUT", "/PutImagePolicy", args)

"""
 Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 

Required Parameters:
distributionConfigurationArn, clientToken
"""
UpdateDistributionConfiguration(args) = imagebuilder("PUT", "/UpdateDistributionConfiguration", args)

"""
 Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 

Required Parameters:
imagePipelineArn, clientToken
"""
UpdateImagePipeline(args) = imagebuilder("PUT", "/UpdateImagePipeline", args)
