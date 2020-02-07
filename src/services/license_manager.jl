include("../AWSCorePrototypeServices.jl")
using .Services: license_manager

"""
Lists the tags for the specified license configuration.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = license_manager("ListTagsForResource", args)

"""
Lists resources managed using Systems Manager inventory.
"""
ListResourceInventory() = license_manager("ListResourceInventory")

"""
Deletes the specified license configuration. You cannot delete a license configuration that is in use.

Required Parameters:
LicenseConfigurationArn
"""
DeleteLicenseConfiguration(args) = license_manager("DeleteLicenseConfiguration", args)

"""
Describes the license configurations for the specified resource.

Required Parameters:
ResourceArn
"""
ListLicenseSpecificationsForResource(args) = license_manager("ListLicenseSpecificationsForResource", args)

"""
Modifies the attributes of an existing license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.

Required Parameters:
LicenseConfigurationArn
"""
UpdateLicenseConfiguration(args) = license_manager("UpdateLicenseConfiguration", args)

"""
Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).

Required Parameters:
LicenseConfigurationArn
"""
ListAssociationsForLicenseConfiguration(args) = license_manager("ListAssociationsForLicenseConfiguration", args)

"""
Updates License Manager settings for the current Region.
"""
UpdateServiceSettings() = license_manager("UpdateServiceSettings")

"""
Lists the license configuration operations that failed.

Required Parameters:
LicenseConfigurationArn
"""
ListFailuresForLicenseConfigurationOperations(args) = license_manager("ListFailuresForLicenseConfigurationOperations", args)

"""
Lists the license configurations for your account.
"""
ListLicenseConfigurations() = license_manager("ListLicenseConfigurations")

"""
Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.

Required Parameters:
LicenseConfigurationArn
"""
ListUsageForLicenseConfiguration(args) = license_manager("ListUsageForLicenseConfiguration", args)

"""
Adds the specified tags to the specified license configuration.

Required Parameters:
ResourceArn, Tags
"""
TagResource(args) = license_manager("TagResource", args)

"""
Removes the specified tags from the specified license configuration.

Required Parameters:
ResourceArn, TagKeys
"""
UntagResource(args) = license_manager("UntagResource", args)

"""
Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.

Required Parameters:
ResourceArn
"""
UpdateLicenseSpecificationsForResource(args) = license_manager("UpdateLicenseSpecificationsForResource", args)

"""
Gets detailed information about the specified license configuration.

Required Parameters:
LicenseConfigurationArn
"""
GetLicenseConfiguration(args) = license_manager("GetLicenseConfiguration", args)

"""
Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.

Required Parameters:
Name, LicenseCountingType
"""
CreateLicenseConfiguration(args) = license_manager("CreateLicenseConfiguration", args)

"""
Gets the License Manager settings for the current Region.
"""
GetServiceSettings() = license_manager("GetServiceSettings")
