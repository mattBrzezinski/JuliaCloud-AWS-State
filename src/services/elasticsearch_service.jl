include("../AWSCorePrototypeServices.jl")
using .Services: elasticsearch_service

"""
 Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 
"""
DescribeElasticsearchInstanceTypeLimits(InstanceType, ElasticsearchVersion) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypeLimits/$ElasticsearchVersion/$InstanceType")
DescribeElasticsearchInstanceTypeLimits(InstanceType, ElasticsearchVersion, args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypeLimits/$ElasticsearchVersion/$InstanceType", args)
DescribeElasticsearchInstanceTypeLimits(a...; b...) = DescribeElasticsearchInstanceTypeLimits(a..., b)

"""
Allows you to purchase reserved Elasticsearch instances.
"""
PurchaseReservedElasticsearchInstanceOffering(ReservedElasticsearchInstanceOfferingId, ReservationName) = elasticsearch_service("POST", "/2015-01-01/es/purchaseReservedInstanceOffering")
PurchaseReservedElasticsearchInstanceOffering(ReservedElasticsearchInstanceOfferingId, ReservationName, args) = elasticsearch_service("POST", "/2015-01-01/es/purchaseReservedInstanceOffering", args)
PurchaseReservedElasticsearchInstanceOffering(a...; b...) = PurchaseReservedElasticsearchInstanceOffering(a..., b)

"""
Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
"""
DescribeElasticsearchDomain(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName")
DescribeElasticsearchDomain(DomainName, args) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName", args)
DescribeElasticsearchDomain(a...; b...) = DescribeElasticsearchDomain(a..., b)

"""
Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
"""
UpgradeElasticsearchDomain(DomainName, TargetVersion) = elasticsearch_service("POST", "/2015-01-01/es/upgradeDomain")
UpgradeElasticsearchDomain(DomainName, TargetVersion, args) = elasticsearch_service("POST", "/2015-01-01/es/upgradeDomain", args)
UpgradeElasticsearchDomain(a...; b...) = UpgradeElasticsearchDomain(a..., b)

"""
List all supported Elasticsearch versions
"""
ListElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/versions")
ListElasticsearchVersions(, args) = elasticsearch_service("GET", "/2015-01-01/es/versions", args)
ListElasticsearchVersions(a...; b...) = ListElasticsearchVersions(a..., b)

"""
Removes the specified set of tags from the specified Elasticsearch domain.
"""
RemoveTags(ARN, TagKeys) = elasticsearch_service("POST", "/2015-01-01/tags-removal")
RemoveTags(ARN, TagKeys, args) = elasticsearch_service("POST", "/2015-01-01/tags-removal", args)
RemoveTags(a...; b...) = RemoveTags(a..., b)

"""
Schedules a service software update for an Amazon ES domain.
"""
StartElasticsearchServiceSoftwareUpdate(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/start")
StartElasticsearchServiceSoftwareUpdate(DomainName, args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/start", args)
StartElasticsearchServiceSoftwareUpdate(a...; b...) = StartElasticsearchServiceSoftwareUpdate(a..., b)

"""
Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
"""
DeleteElasticsearchServiceRole() = elasticsearch_service("DELETE", "/2015-01-01/es/role")
DeleteElasticsearchServiceRole(, args) = elasticsearch_service("DELETE", "/2015-01-01/es/role", args)
DeleteElasticsearchServiceRole(a...; b...) = DeleteElasticsearchServiceRole(a..., b)

"""
Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
"""
GetUpgradeStatus(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/status")
GetUpgradeStatus(DomainName, args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/status", args)
GetUpgradeStatus(a...; b...) = GetUpgradeStatus(a..., b)

"""
Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.
"""
CreateElasticsearchDomain(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/domain")
CreateElasticsearchDomain(DomainName, args) = elasticsearch_service("POST", "/2015-01-01/es/domain", args)
CreateElasticsearchDomain(a...; b...) = CreateElasticsearchDomain(a..., b)

"""
Returns information about reserved Elasticsearch instances for this account.
"""
DescribeReservedElasticsearchInstances() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances")
DescribeReservedElasticsearchInstances(, args) = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances", args)
DescribeReservedElasticsearchInstances(a...; b...) = DescribeReservedElasticsearchInstances(a..., b)

"""
Returns the name of all Elasticsearch domains owned by the current user's account. 
"""
ListDomainNames() = elasticsearch_service("GET", "/2015-01-01/domain")
ListDomainNames(, args) = elasticsearch_service("GET", "/2015-01-01/domain", args)
ListDomainNames(a...; b...) = ListDomainNames(a..., b)

"""
Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
"""
DescribeElasticsearchDomains(DomainNames) = elasticsearch_service("POST", "/2015-01-01/es/domain-info")
DescribeElasticsearchDomains(DomainNames, args) = elasticsearch_service("POST", "/2015-01-01/es/domain-info", args)
DescribeElasticsearchDomains(a...; b...) = DescribeElasticsearchDomains(a..., b)

"""
Returns all tags for the given Elasticsearch domain.
"""
ListTags(ARN) = elasticsearch_service("GET", "/2015-01-01/tags/")
ListTags(ARN, args) = elasticsearch_service("GET", "/2015-01-01/tags/", args)
ListTags(a...; b...) = ListTags(a..., b)

"""
 Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 
"""
GetCompatibleElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions")
GetCompatibleElasticsearchVersions(, args) = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions", args)
GetCompatibleElasticsearchVersions(a...; b...) = GetCompatibleElasticsearchVersions(a..., b)

"""
Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.
"""
AddTags(ARN, TagList) = elasticsearch_service("POST", "/2015-01-01/tags")
AddTags(ARN, TagList, args) = elasticsearch_service("POST", "/2015-01-01/tags", args)
AddTags(a...; b...) = AddTags(a..., b)

"""
Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
"""
DescribeElasticsearchDomainConfig(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName/config")
DescribeElasticsearchDomainConfig(DomainName, args) = elasticsearch_service("GET", "/2015-01-01/es/domain/$DomainName/config", args)
DescribeElasticsearchDomainConfig(a...; b...) = DescribeElasticsearchDomainConfig(a..., b)

"""
Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
"""
CancelElasticsearchServiceSoftwareUpdate(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/cancel")
CancelElasticsearchServiceSoftwareUpdate(DomainName, args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/cancel", args)
CancelElasticsearchServiceSoftwareUpdate(a...; b...) = CancelElasticsearchServiceSoftwareUpdate(a..., b)

"""
Retrieves the complete history of the last 10 upgrades that were performed on the domain.
"""
GetUpgradeHistory(DomainName) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/history")
GetUpgradeHistory(DomainName, args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/$DomainName/history", args)
GetUpgradeHistory(a...; b...) = GetUpgradeHistory(a..., b)

"""
Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
"""
DeleteElasticsearchDomain(DomainName) = elasticsearch_service("DELETE", "/2015-01-01/es/domain/$DomainName")
DeleteElasticsearchDomain(DomainName, args) = elasticsearch_service("DELETE", "/2015-01-01/es/domain/$DomainName", args)
DeleteElasticsearchDomain(a...; b...) = DeleteElasticsearchDomain(a..., b)

"""
Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 
"""
UpdateElasticsearchDomainConfig(DomainName) = elasticsearch_service("POST", "/2015-01-01/es/domain/$DomainName/config")
UpdateElasticsearchDomainConfig(DomainName, args) = elasticsearch_service("POST", "/2015-01-01/es/domain/$DomainName/config", args)
UpdateElasticsearchDomainConfig(a...; b...) = UpdateElasticsearchDomainConfig(a..., b)

"""
List all Elasticsearch instance types that are supported for given ElasticsearchVersion
"""
ListElasticsearchInstanceTypes(ElasticsearchVersion) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypes/$ElasticsearchVersion")
ListElasticsearchInstanceTypes(ElasticsearchVersion, args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypes/$ElasticsearchVersion", args)
ListElasticsearchInstanceTypes(a...; b...) = ListElasticsearchInstanceTypes(a..., b)

"""
Lists available reserved Elasticsearch instance offerings.
"""
DescribeReservedElasticsearchInstanceOfferings() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings")
DescribeReservedElasticsearchInstanceOfferings(, args) = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings", args)
DescribeReservedElasticsearchInstanceOfferings(a...; b...) = DescribeReservedElasticsearchInstanceOfferings(a..., b)
