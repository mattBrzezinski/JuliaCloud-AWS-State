include("../AWSCorePrototypeServices.jl")
using .Services: pricing

"""
Returns a list of all products that match the filter criteria.
"""
GetProducts() = pricing("GetProducts")

"""
Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see Offer File Definitions in the AWS Billing and Cost Management User Guide.

Required Parameters:
ServiceCode, AttributeName
"""
GetAttributeValues(args) = pricing("GetAttributeValues", args)

"""
Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
"""
DescribeServices() = pricing("DescribeServices")
