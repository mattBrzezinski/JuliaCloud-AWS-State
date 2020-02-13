include("../AWSCorePrototypeServices.jl")
using .Services: license_manager

"""
    ListTagsForResource()

Lists the tags for the specified license configuration.

Required Parameters
{
  "ResourceArn": "Amazon Resource Name (ARN) of the license configuration."
}
"""
ListTagsForResource(args) = license_manager("ListTagsForResource", args)

"""
    ListResourceInventory()

Lists resources managed using Systems Manager inventory.

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results.",
  "Filters": "Filters to scope the results. The following filters and logical operators are supported:    account_id - The ID of the AWS account that owns the resource. Logical operators are EQUALS | NOT_EQUALS.    application_name - The name of the application. Logical operators are EQUALS | BEGINS_WITH.    license_included - The type of license included. Logical operators are EQUALS | NOT_EQUALS. Possible values are sql-server-enterprise | sql-server-standard | sql-server-web | windows-server-datacenter.    platform - The platform of the resource. Logical operators are EQUALS | BEGINS_WITH.    resource_id - The ID of the resource. Logical operators are EQUALS | NOT_EQUALS.  "
}
"""
ListResourceInventory() = license_manager("ListResourceInventory")
ListResourceInventory(args) = license_manager("ListResourceInventory", args)

"""
    DeleteLicenseConfiguration()

Deletes the specified license configuration. You cannot delete a license configuration that is in use.

Required Parameters
{
  "LicenseConfigurationArn": "ID of the license configuration."
}
"""
DeleteLicenseConfiguration(args) = license_manager("DeleteLicenseConfiguration", args)

"""
    ListLicenseSpecificationsForResource()

Describes the license configurations for the specified resource.

Required Parameters
{
  "ResourceArn": "Amazon Resource Name (ARN) of a resource that has an associated license configuration."
}

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results."
}
"""
ListLicenseSpecificationsForResource(args) = license_manager("ListLicenseSpecificationsForResource", args)

"""
    UpdateLicenseConfiguration()

Modifies the attributes of an existing license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.

Required Parameters
{
  "LicenseConfigurationArn": "Amazon Resource Name (ARN) of the license configuration."
}

Optional Parameters
{
  "LicenseCount": "New number of licenses managed by the license configuration.",
  "Description": "New description of the license configuration.",
  "LicenseRules": "New license rules.",
  "LicenseConfigurationStatus": "New status of the license configuration.",
  "LicenseCountHardLimit": "New hard limit of the number of available licenses.",
  "ProductInformationList": "New product information.",
  "Name": "New name of the license configuration."
}
"""
UpdateLicenseConfiguration(args) = license_manager("UpdateLicenseConfiguration", args)

"""
    ListAssociationsForLicenseConfiguration()

Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).

Required Parameters
{
  "LicenseConfigurationArn": "Amazon Resource Name (ARN) of a license configuration."
}

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results."
}
"""
ListAssociationsForLicenseConfiguration(args) = license_manager("ListAssociationsForLicenseConfiguration", args)

"""
    UpdateServiceSettings()

Updates License Manager settings for the current Region.

Optional Parameters
{
  "OrganizationConfiguration": "Enables integration with AWS Organizations for cross-account discovery.",
  "EnableCrossAccountsDiscovery": "Activates cross-account discovery.",
  "S3BucketArn": "Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.",
  "SnsTopicArn": "Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts."
}
"""
UpdateServiceSettings() = license_manager("UpdateServiceSettings")
UpdateServiceSettings(args) = license_manager("UpdateServiceSettings", args)

"""
    ListFailuresForLicenseConfigurationOperations()

Lists the license configuration operations that failed.

Required Parameters
{
  "LicenseConfigurationArn": "Amazon Resource Name of the license configuration."
}

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results."
}
"""
ListFailuresForLicenseConfigurationOperations(args) = license_manager("ListFailuresForLicenseConfigurationOperations", args)

"""
    ListLicenseConfigurations()

Lists the license configurations for your account.

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results.",
  "LicenseConfigurationArns": "Amazon Resource Names (ARN) of the license configurations.",
  "Filters": "Filters to scope the results. The following filters and logical operators are supported:    licenseCountingType - The dimension on which licenses are counted (vCPU). Logical operators are EQUALS | NOT_EQUALS.    enforceLicenseCount - A Boolean value that indicates whether hard license enforcement is used. Logical operators are EQUALS | NOT_EQUALS.    usagelimitExceeded - A Boolean value that indicates whether the available licenses have been exceeded. Logical operators are EQUALS | NOT_EQUALS.  "
}
"""
ListLicenseConfigurations() = license_manager("ListLicenseConfigurations")
ListLicenseConfigurations(args) = license_manager("ListLicenseConfigurations", args)

"""
    ListUsageForLicenseConfiguration()

Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.

Required Parameters
{
  "LicenseConfigurationArn": "Amazon Resource Name (ARN) of the license configuration."
}

Optional Parameters
{
  "MaxResults": "Maximum number of results to return in a single call.",
  "NextToken": "Token for the next set of results.",
  "Filters": "Filters to scope the results. The following filters and logical operators are supported:    resourceArn - The ARN of the license configuration resource. Logical operators are EQUALS | NOT_EQUALS.    resourceType - The resource type (EC2_INSTANCE | EC2_HOST | EC2_AMI | SYSTEMS_MANAGER_MANAGED_INSTANCE). Logical operators are EQUALS | NOT_EQUALS.    resourceAccount - The ID of the account that owns the resource. Logical operators are EQUALS | NOT_EQUALS.  "
}
"""
ListUsageForLicenseConfiguration(args) = license_manager("ListUsageForLicenseConfiguration", args)

"""
    TagResource()

Adds the specified tags to the specified license configuration.

Required Parameters
{
  "ResourceArn": "Amazon Resource Name (ARN) of the license configuration.",
  "Tags": "One or more tags."
}
"""
TagResource(args) = license_manager("TagResource", args)

"""
    UntagResource()

Removes the specified tags from the specified license configuration.

Required Parameters
{
  "ResourceArn": "Amazon Resource Name (ARN) of the license configuration.",
  "TagKeys": "Keys identifying the tags to remove."
}
"""
UntagResource(args) = license_manager("UntagResource", args)

"""
    UpdateLicenseSpecificationsForResource()

Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.

Required Parameters
{
  "ResourceArn": "Amazon Resource Name (ARN) of the AWS resource."
}

Optional Parameters
{
  "AddLicenseSpecifications": "ARNs of the license configurations to add.",
  "RemoveLicenseSpecifications": "ARNs of the license configurations to remove."
}
"""
UpdateLicenseSpecificationsForResource(args) = license_manager("UpdateLicenseSpecificationsForResource", args)

"""
    GetLicenseConfiguration()

Gets detailed information about the specified license configuration.

Required Parameters
{
  "LicenseConfigurationArn": "Amazon Resource Name (ARN) of the license configuration."
}
"""
GetLicenseConfiguration(args) = license_manager("GetLicenseConfiguration", args)

"""
    CreateLicenseConfiguration()

Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.

Required Parameters
{
  "Name": "Name of the license configuration.",
  "LicenseCountingType": "Dimension used to track the license inventory."
}

Optional Parameters
{
  "Description": "Description of the license configuration.",
  "LicenseCount": "Number of licenses managed by the license configuration.",
  "LicenseRules": "License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). Available rules vary by dimension.    Cores dimension: allowedTenancy | maximumCores | minimumCores     Instances dimension: allowedTenancy | maximumCores | minimumCores | maximumSockets | minimumSockets | maximumVcpus | minimumVcpus     Sockets dimension: allowedTenancy | maximumSockets | minimumSockets     vCPUs dimension: allowedTenancy | honorVcpuOptimization | maximumVcpus | minimumVcpus   ",
  "Tags": "Tags to add to the license configuration.",
  "LicenseCountHardLimit": "Indicates whether hard or soft license enforcement is used. Exceeding a hard limit blocks the launch of new instances.",
  "ProductInformationList": "Product information."
}
"""
CreateLicenseConfiguration(args) = license_manager("CreateLicenseConfiguration", args)

"""
    GetServiceSettings()

Gets the License Manager settings for the current Region.
"""
GetServiceSettings() = license_manager("GetServiceSettings")
GetServiceSettings(args) = license_manager("GetServiceSettings", args)
