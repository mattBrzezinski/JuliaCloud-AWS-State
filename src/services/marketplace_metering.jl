include("../AWSCorePrototypeServices.jl")
using .Services: marketplace_metering

"""
    ResolveCustomer()

ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.

Required Parameters
{
  "RegistrationToken": "When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code."
}
"""
ResolveCustomer(args) = marketplace_metering("ResolveCustomer", args)

"""
    MeterUsage()

API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID. MeterUsage is authenticated on the buyer's AWS account using credentials from the EC2 instance, ECS task, or EKS pod.

Required Parameters
{
  "UsageDimension": "It will be one of the fcp dimension name provided during the publishing of the product.",
  "ProductCode": "Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.",
  "Timestamp": "Timestamp, in UTC, for which the usage is being reported. Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage."
}

Optional Parameters
{
  "UsageQuantity": "Consumption value for the hour. Defaults to 0 if not specified.",
  "DryRun": "Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException. Defaults to false if not specified."
}
"""
MeterUsage(args) = marketplace_metering("MeterUsage", args)

"""
    RegisterUsage()

Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering. Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call RegisterUsage, but you may choose to do so if you would like to receive usage data in your seller reports. The sections below explain the behavior of RegisterUsage. RegisterUsage performs two primary functions: metering and entitlement.    Entitlement: RegisterUsage allows you to verify that the customer running your paid software is subscribed to your product on AWS Marketplace, enabling you to guard against unauthorized use. Your container image that integrates with RegisterUsage is only required to guard against unauthorized use at container startup, as such a CustomerNotSubscribedException/PlatformNotSupportedException will only be thrown on the initial call to RegisterUsage. Subsequent calls from the same Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a CustomerNotSubscribedException, even if the customer unsubscribes while the Amazon ECS task or Amazon EKS pod is still running.    Metering: RegisterUsage meters software use per ECS task, per hour, or per pod for Amazon EKS with usage prorated to the second. A minimum of 1 minute of usage applies to tasks that are short lived. For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a service configured as a Daemon Set, then Amazon ECS or Amazon EKS will launch a task on all 10 cluster nodes and the customer will be charged: (10 * hourly_rate). Metering for software use is automatically handled by the AWS Marketplace Metering Control Plane -- your software is not required to perform any metering specific actions, other than call RegisterUsage once for metering of software use to commence. The AWS Marketplace Metering Control Plane will also continue to bill customers for running ECS tasks and Amazon EKS pods, regardless of the customers subscription state, removing the need for your software to perform entitlement checks at runtime.  

Required Parameters
{
  "ProductCode": "Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.",
  "PublicKeyVersion": "Public Key Version provided by AWS Marketplace"
}

Optional Parameters
{
  "Nonce": "(Optional) To scope down the registration to a specific running software instance and guard against replay attacks."
}
"""
RegisterUsage(args) = marketplace_metering("RegisterUsage", args)

"""
    BatchMeterUsage()

BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers. For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records. Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage. BatchMeterUsage can process up to 25 UsageRecords at a time.

Required Parameters
{
  "UsageRecords": "The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.",
  "ProductCode": "Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product."
}
"""
BatchMeterUsage(args) = marketplace_metering("BatchMeterUsage", args)