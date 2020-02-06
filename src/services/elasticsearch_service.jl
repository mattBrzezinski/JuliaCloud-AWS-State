include("../AWSCorePrototypeServices.jl")
using .Services: elasticsearch_service

"""
 Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 

Required Parameters:
InstanceType, ElasticsearchVersion
"""
DescribeElasticsearchInstanceTypeLimits(args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", args)

"""
Allows you to purchase reserved Elasticsearch instances.

Required Parameters:
ReservedElasticsearchInstanceOfferingId, ReservationName
"""
PurchaseReservedElasticsearchInstanceOffering(args) = elasticsearch_service("POST", "/2015-01-01/es/purchaseReservedInstanceOffering", args)

"""
Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.

Required Parameters:
DomainName
"""
DescribeElasticsearchDomain(args) = elasticsearch_service("GET", "/2015-01-01/es/domain/{DomainName}", args)

"""
Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.

Required Parameters:
DomainName, TargetVersion
"""
UpgradeElasticsearchDomain(args) = elasticsearch_service("POST", "/2015-01-01/es/upgradeDomain", args)

"""
List all supported Elasticsearch versions
"""
ListElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/versions")

"""
Removes the specified set of tags from the specified Elasticsearch domain.

Required Parameters:
ARN, TagKeys
"""
RemoveTags(args) = elasticsearch_service("POST", "/2015-01-01/tags-removal", args)

"""
Schedules a service software update for an Amazon ES domain.

Required Parameters:
DomainName
"""
StartElasticsearchServiceSoftwareUpdate(args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/start", args)

"""
Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
"""
DeleteElasticsearchServiceRole() = elasticsearch_service("DELETE", "/2015-01-01/es/role")

"""
Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.

Required Parameters:
DomainName
"""
GetUpgradeStatus(args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/{DomainName}/status", args)

"""
Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.

Required Parameters:
DomainName
"""
CreateElasticsearchDomain(args) = elasticsearch_service("POST", "/2015-01-01/es/domain", args)

"""
Returns information about reserved Elasticsearch instances for this account.
"""
DescribeReservedElasticsearchInstances() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances")

"""
Returns the name of all Elasticsearch domains owned by the current user's account. 
"""
ListDomainNames() = elasticsearch_service("GET", "/2015-01-01/domain")

"""
Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.

Required Parameters:
DomainNames
"""
DescribeElasticsearchDomains(args) = elasticsearch_service("POST", "/2015-01-01/es/domain-info", args)

"""
Returns all tags for the given Elasticsearch domain.

Required Parameters:
ARN
"""
ListTags(args) = elasticsearch_service("GET", "/2015-01-01/tags/", args)

"""
 Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 
"""
GetCompatibleElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions")

"""
Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.

Required Parameters:
ARN, TagList
"""
AddTags(args) = elasticsearch_service("POST", "/2015-01-01/tags", args)

"""
Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.

Required Parameters:
DomainName
"""
DescribeElasticsearchDomainConfig(args) = elasticsearch_service("GET", "/2015-01-01/es/domain/{DomainName}/config", args)

"""
Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.

Required Parameters:
DomainName
"""
CancelElasticsearchServiceSoftwareUpdate(args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/cancel", args)

"""
Retrieves the complete history of the last 10 upgrades that were performed on the domain.

Required Parameters:
DomainName
"""
GetUpgradeHistory(args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/{DomainName}/history", args)

"""
Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.

Required Parameters:
DomainName
"""
DeleteElasticsearchDomain(args) = elasticsearch_service("DELETE", "/2015-01-01/es/domain/{DomainName}", args)

"""
Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 

Required Parameters:
DomainName
"""
UpdateElasticsearchDomainConfig(args) = elasticsearch_service("POST", "/2015-01-01/es/domain/{DomainName}/config", args)

"""
List all Elasticsearch instance types that are supported for given ElasticsearchVersion

Required Parameters:
ElasticsearchVersion
"""
ListElasticsearchInstanceTypes(args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", args)

"""
Lists available reserved Elasticsearch instance offerings.
"""
DescribeReservedElasticsearchInstanceOfferings() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings")
