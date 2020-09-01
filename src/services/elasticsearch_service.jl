include("../AWSCorePrototypeServices.jl")
using .Services: elasticsearch_service

"""
    DescribeElasticsearchInstanceTypeLimits()

 Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 

Required Parameters
{
  "InstanceType": " The instance type for an Elasticsearch cluster for which Elasticsearch  Limits  are needed. ",
  "ElasticsearchVersion": " Version of Elasticsearch for which  Limits  are needed. "
}

Optional Parameters
{
  "DomainName": " DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for Elasticsearch  Limits  for existing domain. "
}
"""
DescribeElasticsearchInstanceTypeLimits(args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", args)

"""
    AcceptInboundCrossClusterSearchConnection()

Allows the destination domain owner to accept an inbound cross-cluster search connection request.

Required Parameters
{
  "CrossClusterSearchConnectionId": "The id of the inbound connection that you want to accept."
}
"""
AcceptInboundCrossClusterSearchConnection(args) = elasticsearch_service("PUT", "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/accept", args)

"""
    RejectInboundCrossClusterSearchConnection()

Allows the destination domain owner to reject an inbound cross-cluster search connection request.

Required Parameters
{
  "CrossClusterSearchConnectionId": "The id of the inbound connection that you want to reject."
}
"""
RejectInboundCrossClusterSearchConnection(args) = elasticsearch_service("PUT", "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/reject", args)

"""
    DeleteInboundCrossClusterSearchConnection()

Allows the destination domain owner to delete an existing inbound cross-cluster search connection.

Required Parameters
{
  "CrossClusterSearchConnectionId": "The id of the inbound connection that you want to permanently delete."
}
"""
DeleteInboundCrossClusterSearchConnection(args) = elasticsearch_service("DELETE", "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}", args)

"""
    PurchaseReservedElasticsearchInstanceOffering()

Allows you to purchase reserved Elasticsearch instances.

Required Parameters
{
  "ReservationName": "A customer-specified identifier to track this reservation.",
  "ReservedElasticsearchInstanceOfferingId": "The ID of the reserved Elasticsearch instance offering to purchase."
}

Optional Parameters
{
  "InstanceCount": "The number of Elasticsearch instances to reserve."
}
"""
PurchaseReservedElasticsearchInstanceOffering(args) = elasticsearch_service("POST", "/2015-01-01/es/purchaseReservedInstanceOffering", args)

"""
    DescribeElasticsearchDomain()

Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.

Required Parameters
{
  "DomainName": "The name of the Elasticsearch domain for which you want information."
}
"""
DescribeElasticsearchDomain(args) = elasticsearch_service("GET", "/2015-01-01/es/domain/{DomainName}", args)

"""
    UpgradeElasticsearchDomain()

Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.

Required Parameters
{
  "DomainName": "",
  "TargetVersion": "The version of Elasticsearch that you intend to upgrade the domain to."
}

Optional Parameters
{
  "PerformCheckOnly": " This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade. "
}
"""
UpgradeElasticsearchDomain(args) = elasticsearch_service("POST", "/2015-01-01/es/upgradeDomain", args)

"""
    AssociatePackage()

Associates a package with an Amazon ES domain.

Required Parameters
{
  "DomainName": "Name of the domain that you want to associate the package with.",
  "PackageID": "Internal ID of the package that you want to associate with a domain. Use DescribePackages to find this value."
}
"""
AssociatePackage(args) = elasticsearch_service("POST", "/2015-01-01/packages/associate/{PackageID}/{DomainName}", args)

"""
    DescribeOutboundCrossClusterSearchConnections()

Lists all the outbound cross-cluster search connections for a source domain.

Optional Parameters
{
  "MaxResults": "Set this value to limit the number of results returned. If not specified, defaults to 100.",
  "NextToken": " NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.",
  "Filters": " A list of filters used to match properties for outbound cross-cluster search connection. Available Filter names for this operation are:  cross-cluster-search-connection-id destination-domain-info.domain-name destination-domain-info.owner-id destination-domain-info.region source-domain-info.domain-name  "
}
"""

DescribeOutboundCrossClusterSearchConnections() = elasticsearch_service("POST", "/2015-01-01/es/ccs/outboundConnection/search")
DescribeOutboundCrossClusterSearchConnections(args) = elasticsearch_service("POST", "/2015-01-01/es/ccs/outboundConnection/search", args)

"""
    ListElasticsearchVersions()

List all supported Elasticsearch versions

Optional Parameters
{
  "MaxResults": " Set this value to limit the number of results returned. Value provided must be greater than 10 else it wont be honored. ",
  "NextToken": ""
}
"""

ListElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/versions")
ListElasticsearchVersions(args) = elasticsearch_service("GET", "/2015-01-01/es/versions", args)

"""
    ListPackagesForDomain()

Lists all packages associated with the Amazon ES domain.

Required Parameters
{
  "DomainName": "The name of the domain for which you want to list associated packages."
}

Optional Parameters
{
  "MaxResults": "Limits results to a maximum number of packages.",
  "NextToken": "Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page."
}
"""
ListPackagesForDomain(args) = elasticsearch_service("GET", "/2015-01-01/domain/{DomainName}/packages", args)

"""
    RemoveTags()

Removes the specified set of tags from the specified Elasticsearch domain.

Required Parameters
{
  "ARN": "Specifies the ARN for the Elasticsearch domain from which you want to delete the specified tags.",
  "TagKeys": "Specifies the TagKey list which you want to remove from the Elasticsearch domain."
}
"""
RemoveTags(args) = elasticsearch_service("POST", "/2015-01-01/tags-removal", args)

"""
    StartElasticsearchServiceSoftwareUpdate()

Schedules a service software update for an Amazon ES domain.

Required Parameters
{
  "DomainName": "The name of the domain that you want to update to the latest service software."
}
"""
StartElasticsearchServiceSoftwareUpdate(args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/start", args)

"""
    DeletePackage()

Delete the package.

Required Parameters
{
  "PackageID": "Internal ID of the package that you want to delete. Use DescribePackages to find this value."
}
"""
DeletePackage(args) = elasticsearch_service("DELETE", "/2015-01-01/packages/{PackageID}", args)

"""
    DeleteElasticsearchServiceRole()

Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
"""

DeleteElasticsearchServiceRole() = elasticsearch_service("DELETE", "/2015-01-01/es/role")
DeleteElasticsearchServiceRole(args) = elasticsearch_service("DELETE", "/2015-01-01/es/role", args)

"""
    CreatePackage()

Create a package for use with Amazon ES domains.

Required Parameters
{
  "PackageName": "Unique identifier for the package.",
  "PackageSource": "The customer S3 location PackageSource for importing the package.",
  "PackageType": "Type of package. Currently supports only TXT-DICTIONARY."
}

Optional Parameters
{
  "PackageDescription": "Description of the package."
}
"""
CreatePackage(args) = elasticsearch_service("POST", "/2015-01-01/packages", args)

"""
    GetUpgradeStatus()

Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.

Required Parameters
{
  "DomainName": ""
}
"""
GetUpgradeStatus(args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/{DomainName}/status", args)

"""
    CreateElasticsearchDomain()

Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.

Required Parameters
{
  "DomainName": "The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen)."
}

Optional Parameters
{
  "AdvancedOptions": " Option to allow references to indices in an HTTP request body. Must be false when configuring access to individual sub-resources. By default, the value is true. See Configuration Advanced Options for more information.",
  "ElasticsearchVersion": "String of format X.Y to specify version for the Elasticsearch domain eg. \"1.5\" or \"2.3\". For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.",
  "DomainEndpointOptions": "Options to specify configuration that will be applied to the domain endpoint.",
  "SnapshotOptions": "Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. ",
  "AccessPolicies": " IAM access policy as a JSON-formatted string.",
  "EncryptionAtRestOptions": "Specifies the Encryption At Rest Options.",
  "EBSOptions": "Options to enable, disable and specify the type and size of EBS storage volumes. ",
  "AdvancedSecurityOptions": "Specifies advanced security options.",
  "ElasticsearchClusterConfig": "Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. ",
  "VPCOptions": "Options to specify the subnets and security groups for VPC endpoint. For more information, see Creating a VPC in VPC Endpoints for Amazon Elasticsearch Service Domains",
  "NodeToNodeEncryptionOptions": "Specifies the NodeToNodeEncryptionOptions.",
  "CognitoOptions": "Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see Amazon Cognito Authentication for Kibana.",
  "LogPublishingOptions": "Map of LogType and LogPublishingOption, each containing options to publish a given type of Elasticsearch log."
}
"""
CreateElasticsearchDomain(args) = elasticsearch_service("POST", "/2015-01-01/es/domain", args)

"""
    DescribePackages()

Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.

Optional Parameters
{
  "MaxResults": "Limits results to a maximum number of packages.",
  "NextToken": "Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.",
  "Filters": "Only returns packages that match the DescribePackagesFilterList values."
}
"""

DescribePackages() = elasticsearch_service("POST", "/2015-01-01/packages/describe")
DescribePackages(args) = elasticsearch_service("POST", "/2015-01-01/packages/describe", args)

"""
    DeleteOutboundCrossClusterSearchConnection()

Allows the source domain owner to delete an existing outbound cross-cluster search connection.

Required Parameters
{
  "CrossClusterSearchConnectionId": "The id of the outbound connection that you want to permanently delete."
}
"""
DeleteOutboundCrossClusterSearchConnection(args) = elasticsearch_service("DELETE", "/2015-01-01/es/ccs/outboundConnection/{ConnectionId}", args)

"""
    DescribeReservedElasticsearchInstances()

Returns information about reserved Elasticsearch instances for this account.

Optional Parameters
{
  "ReservedElasticsearchInstanceId": "The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.",
  "MaxResults": "Set this value to limit the number of results returned. If not specified, defaults to 100.",
  "NextToken": "NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination."
}
"""

DescribeReservedElasticsearchInstances() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances")
DescribeReservedElasticsearchInstances(args) = elasticsearch_service("GET", "/2015-01-01/es/reservedInstances", args)

"""
    ListDomainsForPackage()

Lists all Amazon ES domains associated with the package.

Required Parameters
{
  "PackageID": "The package for which to list domains."
}

Optional Parameters
{
  "MaxResults": "Limits results to a maximum number of domains.",
  "NextToken": "Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page."
}
"""
ListDomainsForPackage(args) = elasticsearch_service("GET", "/2015-01-01/packages/{PackageID}/domains", args)

"""
    ListDomainNames()

Returns the name of all Elasticsearch domains owned by the current user's account. 
"""

ListDomainNames() = elasticsearch_service("GET", "/2015-01-01/domain")
ListDomainNames(args) = elasticsearch_service("GET", "/2015-01-01/domain", args)

"""
    CreateOutboundCrossClusterSearchConnection()

Creates a new cross-cluster search connection from a source domain to a destination domain.

Required Parameters
{
  "ConnectionAlias": "Specifies the connection alias that will be used by the customer for this connection.",
  "SourceDomainInfo": "Specifies the DomainInformation for the source Elasticsearch domain.",
  "DestinationDomainInfo": "Specifies the DomainInformation for the destination Elasticsearch domain."
}
"""
CreateOutboundCrossClusterSearchConnection(args) = elasticsearch_service("POST", "/2015-01-01/es/ccs/outboundConnection", args)

"""
    DescribeElasticsearchDomains()

Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.

Required Parameters
{
  "DomainNames": "The Elasticsearch domains for which you want information."
}
"""
DescribeElasticsearchDomains(args) = elasticsearch_service("POST", "/2015-01-01/es/domain-info", args)

"""
    ListTags()

Returns all tags for the given Elasticsearch domain.

Required Parameters
{
  "ARN": " Specify the ARN for the Elasticsearch domain to which the tags are attached that you want to view."
}
"""
ListTags(args) = elasticsearch_service("GET", "/2015-01-01/tags/", args)

"""
    GetCompatibleElasticsearchVersions()

 Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 

Optional Parameters
{
  "DomainName": ""
}
"""

GetCompatibleElasticsearchVersions() = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions")
GetCompatibleElasticsearchVersions(args) = elasticsearch_service("GET", "/2015-01-01/es/compatibleVersions", args)

"""
    DissociatePackage()

Dissociates a package from the Amazon ES domain.

Required Parameters
{
  "DomainName": "Name of the domain that you want to associate the package with.",
  "PackageID": "Internal ID of the package that you want to associate with a domain. Use DescribePackages to find this value."
}
"""
DissociatePackage(args) = elasticsearch_service("POST", "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}", args)

"""
    AddTags()

Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.

Required Parameters
{
  "TagList": " List of Tag that need to be added for the Elasticsearch domain. ",
  "ARN": " Specify the ARN for which you want to add the tags."
}
"""
AddTags(args) = elasticsearch_service("POST", "/2015-01-01/tags", args)

"""
    DescribeElasticsearchDomainConfig()

Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.

Required Parameters
{
  "DomainName": "The Elasticsearch domain that you want to get information about."
}
"""
DescribeElasticsearchDomainConfig(args) = elasticsearch_service("GET", "/2015-01-01/es/domain/{DomainName}/config", args)

"""
    CancelElasticsearchServiceSoftwareUpdate()

Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.

Required Parameters
{
  "DomainName": "The name of the domain that you want to stop the latest service software update on."
}
"""
CancelElasticsearchServiceSoftwareUpdate(args) = elasticsearch_service("POST", "/2015-01-01/es/serviceSoftwareUpdate/cancel", args)

"""
    GetUpgradeHistory()

Retrieves the complete history of the last 10 upgrades that were performed on the domain.

Required Parameters
{
  "DomainName": ""
}

Optional Parameters
{
  "MaxResults": "",
  "NextToken": ""
}
"""
GetUpgradeHistory(args) = elasticsearch_service("GET", "/2015-01-01/es/upgradeDomain/{DomainName}/history", args)

"""
    DeleteElasticsearchDomain()

Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.

Required Parameters
{
  "DomainName": "The name of the Elasticsearch domain that you want to permanently delete."
}
"""
DeleteElasticsearchDomain(args) = elasticsearch_service("DELETE", "/2015-01-01/es/domain/{DomainName}", args)

"""
    DescribeInboundCrossClusterSearchConnections()

Lists all the inbound cross-cluster search connections for a destination domain.

Optional Parameters
{
  "MaxResults": "Set this value to limit the number of results returned. If not specified, defaults to 100.",
  "NextToken": " NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.",
  "Filters": " A list of filters used to match properties for inbound cross-cluster search connection. Available Filter names for this operation are:  cross-cluster-search-connection-id source-domain-info.domain-name source-domain-info.owner-id source-domain-info.region destination-domain-info.domain-name  "
}
"""

DescribeInboundCrossClusterSearchConnections() = elasticsearch_service("POST", "/2015-01-01/es/ccs/inboundConnection/search")
DescribeInboundCrossClusterSearchConnections(args) = elasticsearch_service("POST", "/2015-01-01/es/ccs/inboundConnection/search", args)

"""
    ListElasticsearchInstanceTypes()

List all Elasticsearch instance types that are supported for given ElasticsearchVersion

Required Parameters
{
  "ElasticsearchVersion": "Version of Elasticsearch for which list of supported elasticsearch instance types are needed. "
}

Optional Parameters
{
  "MaxResults": " Set this value to limit the number of results returned. Value provided must be greater than 30 else it wont be honored. ",
  "DomainName": "DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are querying for list of available Elasticsearch instance types when modifying existing domain. ",
  "NextToken": "NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination. "
}
"""
ListElasticsearchInstanceTypes(args) = elasticsearch_service("GET", "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", args)

"""
    UpdateElasticsearchDomainConfig()

Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 

Required Parameters
{
  "DomainName": "The name of the Elasticsearch domain that you are updating. "
}

Optional Parameters
{
  "LogPublishingOptions": "Map of LogType and LogPublishingOption, each containing options to publish a given type of Elasticsearch log.",
  "EBSOptions": "Specify the type and size of the EBS volume that you want to use. ",
  "AdvancedOptions": "Modifies the advanced option to allow references to indices in an HTTP request body. Must be false when configuring access to individual sub-resources. By default, the value is true. See Configuration Advanced Options for more information.",
  "AdvancedSecurityOptions": "Specifies advanced security options.",
  "ElasticsearchClusterConfig": "The type and number of instances to instantiate for the domain cluster.",
  "DomainEndpointOptions": "Options to specify configuration that will be applied to the domain endpoint.",
  "VPCOptions": "Options to specify the subnets and security groups for VPC endpoint. For more information, see Creating a VPC in VPC Endpoints for Amazon Elasticsearch Service Domains",
  "SnapshotOptions": "Option to set the time, in UTC format, for the daily automated snapshot. Default value is 0 hours. ",
  "AccessPolicies": "IAM access policy as a JSON-formatted string.",
  "CognitoOptions": "Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see Amazon Cognito Authentication for Kibana."
}
"""
UpdateElasticsearchDomainConfig(args) = elasticsearch_service("POST", "/2015-01-01/es/domain/{DomainName}/config", args)

"""
    DescribeReservedElasticsearchInstanceOfferings()

Lists available reserved Elasticsearch instance offerings.

Optional Parameters
{
  "MaxResults": "Set this value to limit the number of results returned. If not specified, defaults to 100.",
  "NextToken": "NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.",
  "ReservedElasticsearchInstanceOfferingId": "The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier."
}
"""

DescribeReservedElasticsearchInstanceOfferings() = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings")
DescribeReservedElasticsearchInstanceOfferings(args) = elasticsearch_service("GET", "/2015-01-01/es/reservedInstanceOfferings", args)
