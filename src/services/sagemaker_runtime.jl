include("../AWSCorePrototypeServices.jl")
using .Services: sagemaker_runtime

"""
    InvokeEndpoint

After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.  For an overview of Amazon SageMaker, see How It Works.  Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.  Calls to InvokeEndpoint are authenticated by using AWS Signature Version 4. For information, see Authenticating Requests (AWS Signature Version 4) in the Amazon S3 API Reference. A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to the /invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.  Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller. 

Required Parameters:
{
  "EndpointName": "The name of the endpoint that you specified when you created the endpoint using the CreateEndpoint API. ",
  "Body": "Provides input data, in the format specified in the ContentType request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see Common Data Formats—Inference."
}


Optional Parameters:
{
  "TargetModel": "Specifies the model to be requested for an inference when invoking a multi-model endpoint. ",
  "Accept": "The desired MIME type of the inference in the response.",
  "CustomAttributes": "Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in Section 3.3.6. Field Value Components of the Hypertext Transfer Protocol (HTTP/1.1). This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.",
  "ContentType": "The MIME type of the input data in the request body."
}

"""

InvokeEndpoint(args) = sagemaker_runtime("POST", "/endpoints/{EndpointName}/invocations", args)