include("../AWSCorePrototypeServices.jl")
using .Services: imagebuilder

"""
 Returns the list of tags for the specified resource. 
"""
ListTagsForResource(resourceArn) = imagebuilder("GET", "/tags/$resourceArn")
ListTagsForResource(resourceArn, args) = imagebuilder("GET", "/tags/$resourceArn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
 Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
"""
CreateInfrastructureConfiguration(name, instanceProfileName, clientToken) = imagebuilder("PUT", "/CreateInfrastructureConfiguration")
CreateInfrastructureConfiguration(name, instanceProfileName, clientToken, args) = imagebuilder("PUT", "/CreateInfrastructureConfiguration", args)
CreateInfrastructureConfiguration(a...; b...) = CreateInfrastructureConfiguration(a..., b)

"""
 Deletes an infrastructure configuration. 
"""
DeleteInfrastructureConfiguration(infrastructureConfigurationArn) = imagebuilder("DELETE", "/DeleteInfrastructureConfiguration")
DeleteInfrastructureConfiguration(infrastructureConfigurationArn, args) = imagebuilder("DELETE", "/DeleteInfrastructureConfiguration", args)
DeleteInfrastructureConfiguration(a...; b...) = DeleteInfrastructureConfiguration(a..., b)

"""
 Returns the list of component build versions for the specified semantic version. 
"""
ListComponents() = imagebuilder("POST", "/ListComponents")
ListComponents(, args) = imagebuilder("POST", "/ListComponents", args)
ListComponents(a...; b...) = ListComponents(a..., b)

"""
 Gets a infrastructure configuration. 
"""
GetInfrastructureConfiguration(infrastructureConfigurationArn) = imagebuilder("GET", "/GetInfrastructureConfiguration")
GetInfrastructureConfiguration(infrastructureConfigurationArn, args) = imagebuilder("GET", "/GetInfrastructureConfiguration", args)
GetInfrastructureConfiguration(a...; b...) = GetInfrastructureConfiguration(a..., b)

"""
 Returns the list of image build versions for the specified semantic version. 
"""
ListImages() = imagebuilder("POST", "/ListImages")
ListImages(, args) = imagebuilder("POST", "/ListImages", args)
ListImages(a...; b...) = ListImages(a..., b)

"""
 Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
"""
CreateImagePipeline(name, imageRecipeArn, infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/CreateImagePipeline")
CreateImagePipeline(name, imageRecipeArn, infrastructureConfigurationArn, clientToken, args) = imagebuilder("PUT", "/CreateImagePipeline", args)
CreateImagePipeline(a...; b...) = CreateImagePipeline(a..., b)

"""
 Gets an image. 
"""
GetImage(imageBuildVersionArn) = imagebuilder("GET", "/GetImage")
GetImage(imageBuildVersionArn, args) = imagebuilder("GET", "/GetImage", args)
GetImage(a...; b...) = GetImage(a..., b)

"""
 Creates a new image recipe. Image Recipes defines how images are configured, tested and assessed. 
"""
CreateImageRecipe(name, semanticVersion, components, parentImage, clientToken) = imagebuilder("PUT", "/CreateImageRecipe")
CreateImageRecipe(name, semanticVersion, components, parentImage, clientToken, args) = imagebuilder("PUT", "/CreateImageRecipe", args)
CreateImageRecipe(a...; b...) = CreateImageRecipe(a..., b)

"""
 Imports a component and transforms its data into a component document. 
"""
ImportComponent(name, semanticVersion, type, format, platform, clientToken) = imagebuilder("PUT", "/ImportComponent")
ImportComponent(name, semanticVersion, type, format, platform, clientToken, args) = imagebuilder("PUT", "/ImportComponent", args)
ImportComponent(a...; b...) = ImportComponent(a..., b)

"""
 Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
"""
CreateDistributionConfiguration(name, distributions, clientToken) = imagebuilder("PUT", "/CreateDistributionConfiguration")
CreateDistributionConfiguration(name, distributions, clientToken, args) = imagebuilder("PUT", "/CreateDistributionConfiguration", args)
CreateDistributionConfiguration(a...; b...) = CreateDistributionConfiguration(a..., b)

"""
 Returns the list of component build versions for the specified semantic version. 
"""
ListComponentBuildVersions(componentVersionArn) = imagebuilder("POST", "/ListComponentBuildVersions")
ListComponentBuildVersions(componentVersionArn, args) = imagebuilder("POST", "/ListComponentBuildVersions", args)
ListComponentBuildVersions(a...; b...) = ListComponentBuildVersions(a..., b)

"""
 Returns a list of distribution configurations. 
"""
ListImageBuildVersions(imageVersionArn) = imagebuilder("POST", "/ListImageBuildVersions")
ListImageBuildVersions(imageVersionArn, args) = imagebuilder("POST", "/ListImageBuildVersions", args)
ListImageBuildVersions(a...; b...) = ListImageBuildVersions(a..., b)

"""
 Applies a policy to a component. 
"""
PutComponentPolicy(componentArn, policy) = imagebuilder("PUT", "/PutComponentPolicy")
PutComponentPolicy(componentArn, policy, args) = imagebuilder("PUT", "/PutComponentPolicy", args)
PutComponentPolicy(a...; b...) = PutComponentPolicy(a..., b)

"""
 Gets a component object. 
"""
GetComponent(componentBuildVersionArn) = imagebuilder("GET", "/GetComponent")
GetComponent(componentBuildVersionArn, args) = imagebuilder("GET", "/GetComponent", args)
GetComponent(a...; b...) = GetComponent(a..., b)

"""
 Deletes an image recipe. 
"""
DeleteImageRecipe(imageRecipeArn) = imagebuilder("DELETE", "/DeleteImageRecipe")
DeleteImageRecipe(imageRecipeArn, args) = imagebuilder("DELETE", "/DeleteImageRecipe", args)
DeleteImageRecipe(a...; b...) = DeleteImageRecipe(a..., b)

"""
 Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 
"""
CreateImage(imageRecipeArn, infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/CreateImage")
CreateImage(imageRecipeArn, infrastructureConfigurationArn, clientToken, args) = imagebuilder("PUT", "/CreateImage", args)
CreateImage(a...; b...) = CreateImage(a..., b)

"""
 Gets an image recipe policy. 
"""
GetImageRecipePolicy(imageRecipeArn) = imagebuilder("GET", "/GetImageRecipePolicy")
GetImageRecipePolicy(imageRecipeArn, args) = imagebuilder("GET", "/GetImageRecipePolicy", args)
GetImageRecipePolicy(a...; b...) = GetImageRecipePolicy(a..., b)

"""
 Manually triggers a pipeline to create an image. 
"""
StartImagePipelineExecution(imagePipelineArn, clientToken) = imagebuilder("PUT", "/StartImagePipelineExecution")
StartImagePipelineExecution(imagePipelineArn, clientToken, args) = imagebuilder("PUT", "/StartImagePipelineExecution", args)
StartImagePipelineExecution(a...; b...) = StartImagePipelineExecution(a..., b)

"""
 Deletes an image pipeline. 
"""
DeleteImagePipeline(imagePipelineArn) = imagebuilder("DELETE", "/DeleteImagePipeline")
DeleteImagePipeline(imagePipelineArn, args) = imagebuilder("DELETE", "/DeleteImagePipeline", args)
DeleteImagePipeline(a...; b...) = DeleteImagePipeline(a..., b)

"""
 Gets a component policy. 
"""
GetComponentPolicy(componentArn) = imagebuilder("GET", "/GetComponentPolicy")
GetComponentPolicy(componentArn, args) = imagebuilder("GET", "/GetComponentPolicy", args)
GetComponentPolicy(a...; b...) = GetComponentPolicy(a..., b)

"""
Returns a list of image pipelines. 
"""
ListImagePipelines() = imagebuilder("POST", "/ListImagePipelines")
ListImagePipelines(, args) = imagebuilder("POST", "/ListImagePipelines", args)
ListImagePipelines(a...; b...) = ListImagePipelines(a..., b)

"""
 Deletes a distribution configuration. 
"""
DeleteDistributionConfiguration(distributionConfigurationArn) = imagebuilder("DELETE", "/DeleteDistributionConfiguration")
DeleteDistributionConfiguration(distributionConfigurationArn, args) = imagebuilder("DELETE", "/DeleteDistributionConfiguration", args)
DeleteDistributionConfiguration(a...; b...) = DeleteDistributionConfiguration(a..., b)

"""
 Adds a tag to a resource. 
"""
TagResource(resourceArn, tags) = imagebuilder("POST", "/tags/$resourceArn")
TagResource(resourceArn, tags, args) = imagebuilder("POST", "/tags/$resourceArn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
 Removes a tag from a resource. 
"""
UntagResource(resourceArn, tagKeys) = imagebuilder("DELETE", "/tags/$resourceArn")
UntagResource(resourceArn, tagKeys, args) = imagebuilder("DELETE", "/tags/$resourceArn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
 Returns a list of distribution configurations. 
"""
ListDistributionConfigurations() = imagebuilder("POST", "/ListDistributionConfigurations")
ListDistributionConfigurations(, args) = imagebuilder("POST", "/ListDistributionConfigurations", args)
ListDistributionConfigurations(a...; b...) = ListDistributionConfigurations(a..., b)

"""
 Gets an image pipeline. 
"""
GetImagePipeline(imagePipelineArn) = imagebuilder("GET", "/GetImagePipeline")
GetImagePipeline(imagePipelineArn, args) = imagebuilder("GET", "/GetImagePipeline", args)
GetImagePipeline(a...; b...) = GetImagePipeline(a..., b)

"""
 Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
"""
UpdateInfrastructureConfiguration(infrastructureConfigurationArn, clientToken) = imagebuilder("PUT", "/UpdateInfrastructureConfiguration")
UpdateInfrastructureConfiguration(infrastructureConfigurationArn, clientToken, args) = imagebuilder("PUT", "/UpdateInfrastructureConfiguration", args)
UpdateInfrastructureConfiguration(a...; b...) = UpdateInfrastructureConfiguration(a..., b)

"""
 Gets an image policy. 
"""
GetImagePolicy(imageArn) = imagebuilder("GET", "/GetImagePolicy")
GetImagePolicy(imageArn, args) = imagebuilder("GET", "/GetImagePolicy", args)
GetImagePolicy(a...; b...) = GetImagePolicy(a..., b)

"""
 Applies a policy to an image recipe. 
"""
PutImageRecipePolicy(imageRecipeArn, policy) = imagebuilder("PUT", "/PutImageRecipePolicy")
PutImageRecipePolicy(imageRecipeArn, policy, args) = imagebuilder("PUT", "/PutImageRecipePolicy", args)
PutImageRecipePolicy(a...; b...) = PutImageRecipePolicy(a..., b)

"""
 Returns a list of infrastructure configurations. 
"""
ListInfrastructureConfigurations() = imagebuilder("POST", "/ListInfrastructureConfigurations")
ListInfrastructureConfigurations(, args) = imagebuilder("POST", "/ListInfrastructureConfigurations", args)
ListInfrastructureConfigurations(a...; b...) = ListInfrastructureConfigurations(a..., b)

"""
 Deletes a component build version. 
"""
DeleteComponent(componentBuildVersionArn) = imagebuilder("DELETE", "/DeleteComponent")
DeleteComponent(componentBuildVersionArn, args) = imagebuilder("DELETE", "/DeleteComponent", args)
DeleteComponent(a...; b...) = DeleteComponent(a..., b)

"""
 Deletes an image. 
"""
DeleteImage(imageBuildVersionArn) = imagebuilder("DELETE", "/DeleteImage")
DeleteImage(imageBuildVersionArn, args) = imagebuilder("DELETE", "/DeleteImage", args)
DeleteImage(a...; b...) = DeleteImage(a..., b)

"""
 Returns a list of image recipes. 
"""
ListImageRecipes() = imagebuilder("POST", "/ListImageRecipes")
ListImageRecipes(, args) = imagebuilder("POST", "/ListImageRecipes", args)
ListImageRecipes(a...; b...) = ListImageRecipes(a..., b)

"""
 Gets a distribution configuration. 
"""
GetDistributionConfiguration(distributionConfigurationArn) = imagebuilder("GET", "/GetDistributionConfiguration")
GetDistributionConfiguration(distributionConfigurationArn, args) = imagebuilder("GET", "/GetDistributionConfiguration", args)
GetDistributionConfiguration(a...; b...) = GetDistributionConfiguration(a..., b)

"""
 Gets an image recipe. 
"""
GetImageRecipe(imageRecipeArn) = imagebuilder("GET", "/GetImageRecipe")
GetImageRecipe(imageRecipeArn, args) = imagebuilder("GET", "/GetImageRecipe", args)
GetImageRecipe(a...; b...) = GetImageRecipe(a..., b)

"""
CancelImageCreation cancels the creation of Image. This operation may only be used on images in a non-terminal state.
"""
CancelImageCreation(imageBuildVersionArn, clientToken) = imagebuilder("PUT", "/CancelImageCreation")
CancelImageCreation(imageBuildVersionArn, clientToken, args) = imagebuilder("PUT", "/CancelImageCreation", args)
CancelImageCreation(a...; b...) = CancelImageCreation(a..., b)

"""
 Returns a list of images created by the specified pipeline. 
"""
ListImagePipelineImages() = imagebuilder("POST", "/ListImagePipelineImages")
ListImagePipelineImages(, args) = imagebuilder("POST", "/ListImagePipelineImages", args)
ListImagePipelineImages(a...; b...) = ListImagePipelineImages(a..., b)

"""
Creates a new component that can be used to build, validate, test and assess your image.
"""
CreateComponent(name, semanticVersion, platform, clientToken) = imagebuilder("PUT", "/CreateComponent")
CreateComponent(name, semanticVersion, platform, clientToken, args) = imagebuilder("PUT", "/CreateComponent", args)
CreateComponent(a...; b...) = CreateComponent(a..., b)

"""
 Applies a policy to an image. 
"""
PutImagePolicy(imageArn, policy) = imagebuilder("PUT", "/PutImagePolicy")
PutImagePolicy(imageArn, policy, args) = imagebuilder("PUT", "/PutImagePolicy", args)
PutImagePolicy(a...; b...) = PutImagePolicy(a..., b)

"""
 Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
"""
UpdateDistributionConfiguration(distributionConfigurationArn, clientToken) = imagebuilder("PUT", "/UpdateDistributionConfiguration")
UpdateDistributionConfiguration(distributionConfigurationArn, clientToken, args) = imagebuilder("PUT", "/UpdateDistributionConfiguration", args)
UpdateDistributionConfiguration(a...; b...) = UpdateDistributionConfiguration(a..., b)

"""
 Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
"""
UpdateImagePipeline(imagePipelineArn, clientToken) = imagebuilder("PUT", "/UpdateImagePipeline")
UpdateImagePipeline(imagePipelineArn, clientToken, args) = imagebuilder("PUT", "/UpdateImagePipeline", args)
UpdateImagePipeline(a...; b...) = UpdateImagePipeline(a..., b)
