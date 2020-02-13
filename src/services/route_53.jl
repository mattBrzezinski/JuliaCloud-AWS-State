include("../AWSCorePrototypeServices.jl")
using .Services: route_53

"""
    ListVPCAssociationAuthorizations()

Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more CreateVPCAssociationAuthorization requests.  The response includes a VPCs element with a VPC child element for each VPC that can be associated with the hosted zone.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone."
}

Optional Parameters
{
  "MaxResults": " Optional: An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for MaxResults, Route 53 returns up to 50 VPCs per page.",
  "NextToken": " Optional: If a response includes a NextToken element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of NextToken from the response in the nexttoken parameter in another ListVPCAssociationAuthorizations request."
}
"""ListVPCAssociationAuthorizations(HostedZoneId) = route_53("GET", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation")
ListVPCAssociationAuthorizations(HostedZoneId, args) = route_53("GET", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", args)
ListVPCAssociationAuthorizations(a...; b...) = ListVPCAssociationAuthorizations(a..., b)

"""
    GetReusableDelegationSetLimit()

Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set. For the default limit, see Limits in the Amazon Route 53 Developer Guide. To request a higher limit, open a case.

Required Parameters
{
  "DelegationSetId": "The ID of the delegation set that you want to get the limit for.",
  "Type": "Specify MAX_ZONES_BY_REUSABLE_DELEGATION_SET to get the maximum number of hosted zones that you can associate with the specified reusable delegation set."
}
"""GetReusableDelegationSetLimit(DelegationSetId, Type) = route_53("GET", "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}")
GetReusableDelegationSetLimit(DelegationSetId, Type, args) = route_53("GET", "/2013-04-01/reusabledelegationsetlimit/{Id}/{Type}", args)
GetReusableDelegationSetLimit(a...; b...) = GetReusableDelegationSetLimit(a..., b)

"""
    CreateTrafficPolicyVersion()

Creates a new version of an existing traffic policy. When you create a new version of a traffic policy, you specify the ID of the traffic policy that you want to update and a JSON-formatted document that describes the new version. You use traffic policies to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com). You can create a maximum of 1000 versions of a traffic policy. If you reach the limit and need to create another version, you'll need to start a new traffic policy.

Required Parameters
{
  "Id": "The ID of the traffic policy for which you want to create a new version.",
  "Document": "The definition of this version of the traffic policy, in JSON format. You specified the JSON in the CreateTrafficPolicyVersion request. For more information about the JSON format, see CreateTrafficPolicy."
}

Optional Parameters
{
  "Comment": "The comment that you specified in the CreateTrafficPolicyVersion request, if any."
}
"""CreateTrafficPolicyVersion(Id, Document) = route_53("POST", "/2013-04-01/trafficpolicy/{Id}")
CreateTrafficPolicyVersion(Id, Document, args) = route_53("POST", "/2013-04-01/trafficpolicy/{Id}", args)
CreateTrafficPolicyVersion(a...; b...) = CreateTrafficPolicyVersion(a..., b)

"""
    GetHealthCheckStatus()

Gets status of a specified health check. 

Required Parameters
{
  "HealthCheckId": "The ID for the health check that you want the current status for. When you created the health check, CreateHealthCheck returned the ID in the response, in the HealthCheckId element.  If you want to check the status of a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use GetHealthCheckStatus to get the status of a calculated health check. "
}
"""GetHealthCheckStatus(HealthCheckId) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}/status")
GetHealthCheckStatus(HealthCheckId, args) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}/status", args)
GetHealthCheckStatus(a...; b...) = GetHealthCheckStatus(a..., b)

"""
    DeleteVPCAssociationAuthorization()

Removes authorization to submit an AssociateVPCWithHostedZone request to associate a specified VPC with a hosted zone that was created by a different account. You must use the account that created the hosted zone to submit a DeleteVPCAssociationAuthorization request.  Sending this request only prevents the AWS account that created the VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If the VPC is already associated with the hosted zone, DeleteVPCAssociationAuthorization won't disassociate the VPC from the hosted zone. If you want to delete an existing association, use DisassociateVPCFromHostedZone. 

Required Parameters
{
  "HostedZoneId": "When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, the ID of the hosted zone.",
  "VPC": "When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, a complex type that includes the ID and region of the VPC."
}
"""DeleteVPCAssociationAuthorization(HostedZoneId, VPC) = route_53("POST", "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation")
DeleteVPCAssociationAuthorization(HostedZoneId, VPC, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", args)
DeleteVPCAssociationAuthorization(a...; b...) = DeleteVPCAssociationAuthorization(a..., b)

"""
    ListHealthChecks()

Retrieve a list of the health checks that are associated with the current AWS account. 

Optional Parameters
{
  "Marker": "If the value of IsTruncated in the previous response was true, you have more health checks. To get another group, submit another ListHealthChecks request.  For the value of marker, specify the value of NextMarker from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more health checks to get.",
  "MaxItems": "The maximum number of health checks that you want ListHealthChecks to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Route 53 returns only the first 100 health checks. "
}
"""ListHealthChecks() = route_53("GET", "/2013-04-01/healthcheck")
ListHealthChecks(args) route_53("GET", "/2013-04-01/healthcheck", args)
ListHealthChecks(a...; b...) = ListHealthChecks(a..., b)

"""
    GetReusableDelegationSet()

Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set.

Required Parameters
{
  "Id": "The ID of the reusable delegation set that you want to get a list of name servers for."
}
"""GetReusableDelegationSet(Id) = route_53("GET", "/2013-04-01/delegationset/{Id}")
GetReusableDelegationSet(Id, args) = route_53("GET", "/2013-04-01/delegationset/{Id}", args)
GetReusableDelegationSet(a...; b...) = GetReusableDelegationSet(a..., b)

"""
    ChangeTagsForResource()

Adds, edits, or deletes tags for a health check or a hosted zone. For information about using tags for cost allocation, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.

Required Parameters
{
  "ResourceType": "The type of the resource.   The resource type for health checks is healthcheck.   The resource type for hosted zones is hostedzone.  ",
  "ResourceId": "The ID of the resource for which you want to add, change, or delete tags."
}

Optional Parameters
{
  "RemoveTagKeys": "A complex type that contains a list of the tags that you want to delete from the specified health check or hosted zone. You can specify up to 10 keys.",
  "AddTags": "A complex type that contains a list of the tags that you want to add to the specified health check or hosted zone and/or the tags that you want to edit Value for. You can add a maximum of 10 tags to a health check or a hosted zone."
}
"""ChangeTagsForResource(ResourceType, ResourceId) = route_53("POST", "/2013-04-01/tags/{ResourceType}/{ResourceId}")
ChangeTagsForResource(ResourceType, ResourceId, args) = route_53("POST", "/2013-04-01/tags/{ResourceType}/{ResourceId}", args)
ChangeTagsForResource(a...; b...) = ChangeTagsForResource(a..., b)

"""
    ListTrafficPolicyVersions()

Gets information about all of the versions for a specified traffic policy. Traffic policy versions are listed in numerical order by VersionNumber.

Required Parameters
{
  "Id": "Specify the value of Id of the traffic policy for which you want to list all versions."
}

Optional Parameters
{
  "TrafficPolicyVersionMarker": "For your first request to ListTrafficPolicyVersions, don't include the TrafficPolicyVersionMarker parameter. If you have more traffic policy versions than the value of MaxItems, ListTrafficPolicyVersions returns only the first group of MaxItems versions. To get more traffic policy versions, submit another ListTrafficPolicyVersions request. For the value of TrafficPolicyVersionMarker, specify the value of TrafficPolicyVersionMarker in the previous response.",
  "MaxItems": "The maximum number of traffic policy versions that you want Amazon Route 53 to include in the response body for this request. If the specified traffic policy has more than MaxItems versions, the value of IsTruncated in the response is true, and the value of the TrafficPolicyVersionMarker element is the ID of the first version that Route 53 will return if you submit another request."
}
"""ListTrafficPolicyVersions(Id) = route_53("GET", "/2013-04-01/trafficpolicies/{Id}/versions")
ListTrafficPolicyVersions(Id, args) = route_53("GET", "/2013-04-01/trafficpolicies/{Id}/versions", args)
ListTrafficPolicyVersions(a...; b...) = ListTrafficPolicyVersions(a..., b)

"""
    DeleteHostedZone()

Deletes a hosted zone. If the hosted zone was created by another service, such as AWS Cloud Map, see Deleting Public Hosted Zones That Were Created by Another Service in the Amazon Route 53 Developer Guide for information about how to delete it. (The process is the same for public and private hosted zones that were created by another service.) If you want to keep your domain registration but you want to stop routing internet traffic to your website or web application, we recommend that you delete resource record sets in the hosted zone instead of deleting the hosted zone.  If you delete a hosted zone, you can't undelete it. You must create a new hosted zone and update the name servers for your domain registration, which can require up to 48 hours to take effect. (If you delegated responsibility for a subdomain to a hosted zone and you delete the child hosted zone, you must update the name servers in the parent hosted zone.) In addition, if you delete a hosted zone, someone could hijack the domain and route traffic to their own resources using your domain name.  If you want to avoid the monthly charge for the hosted zone, you can transfer DNS service for the domain to a free DNS service. When you transfer DNS service, you have to update the name servers for the domain registration. If the domain is registered with Route 53, see UpdateDomainNameservers for information about how to replace Route 53 name servers with name servers for the new DNS service. If the domain is registered with another registrar, use the method provided by the registrar to update name servers for the domain registration. For more information, perform an internet search on "free DNS service." You can delete a hosted zone only if it contains only the default SOA record and NS resource record sets. If the hosted zone contains other resource record sets, you must delete them before you can delete the hosted zone. If you try to delete a hosted zone that contains other resource record sets, the request fails, and Route 53 returns a HostedZoneNotEmpty error. For information about deleting records from your hosted zone, see ChangeResourceRecordSets. To verify that the hosted zone has been deleted, do one of the following:   Use the GetHostedZone action to request information about the hosted zone.   Use the ListHostedZones action to get a list of the hosted zones associated with the current AWS account.  

Required Parameters
{
  "Id": "The ID of the hosted zone you want to delete."
}
"""DeleteHostedZone(Id) = route_53("DELETE", "/2013-04-01/hostedzone/{Id}")
DeleteHostedZone(Id, args) = route_53("DELETE", "/2013-04-01/hostedzone/{Id}", args)
DeleteHostedZone(a...; b...) = DeleteHostedZone(a..., b)

"""
    ListTrafficPolicies()

Gets information about the latest version for every traffic policy that is associated with the current AWS account. Policies are listed in the order that they were created in. 

Optional Parameters
{
  "MaxItems": "(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than MaxItems traffic policies, the value of IsTruncated in the response is true, and the value of TrafficPolicyIdMarker is the ID of the first traffic policy that Route 53 will return if you submit another request.",
  "TrafficPolicyIdMarker": "(Conditional) For your first request to ListTrafficPolicies, don't include the TrafficPolicyIdMarker parameter. If you have more traffic policies than the value of MaxItems, ListTrafficPolicies returns only the first MaxItems traffic policies. To get the next group of policies, submit another request to ListTrafficPolicies. For the value of TrafficPolicyIdMarker, specify the value of TrafficPolicyIdMarker that was returned in the previous response."
}
"""ListTrafficPolicies() = route_53("GET", "/2013-04-01/trafficpolicies")
ListTrafficPolicies(args) route_53("GET", "/2013-04-01/trafficpolicies", args)
ListTrafficPolicies(a...; b...) = ListTrafficPolicies(a..., b)

"""
    GetQueryLoggingConfig()

Gets information about a specified configuration for DNS query logging. For more information about DNS query logs, see CreateQueryLoggingConfig and Logging DNS Queries.

Required Parameters
{
  "Id": "The ID of the configuration for DNS query logging that you want to get information about."
}
"""GetQueryLoggingConfig(Id) = route_53("GET", "/2013-04-01/queryloggingconfig/{Id}")
GetQueryLoggingConfig(Id, args) = route_53("GET", "/2013-04-01/queryloggingconfig/{Id}", args)
GetQueryLoggingConfig(a...; b...) = GetQueryLoggingConfig(a..., b)

"""
    ListResourceRecordSets()

Lists the resource record sets in a specified hosted zone.  ListResourceRecordSets returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the name and type elements.  Sort order   ListResourceRecordSets sorts results first by DNS name with the labels reversed, for example:  com.example.www.  Note the trailing dot, which can change the sort order when the record name contains characters that appear before . (decimal 46) in the ASCII table. These characters include the following: ! " #   % &amp; ' ( ) * + , -  When multiple records have the same DNS name, ListResourceRecordSets sorts results by the record type.  Specifying where to start listing records  You can use the name and type elements to specify the resource record set that the list begins with:  If you do not specify Name or Type  The results begin with the first resource record set that the hosted zone contains.  If you specify Name but not Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name.  If you specify Type but not Name  Amazon Route 53 returns the InvalidInput error.  If you specify both Name and Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name, and whose type is greater than or equal to Type.    Resource record sets that are PENDING  This action returns the most current version of the records. This includes records that are PENDING, and that are not yet available on all Route 53 DNS servers.  Changing resource record sets  To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a ChangeResourceRecordSets request while you're paging through the results of a ListResourceRecordSets request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.  Displaying the next page of results  If a ListResourceRecordSets command returns more than one page of results, the value of IsTruncated is true. To display the next page of results, get the values of NextRecordName, NextRecordType, and NextRecordIdentifier (if any) from the response. Then submit another ListResourceRecordSets request, and specify those values for StartRecordName, StartRecordType, and StartRecordIdentifier.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that contains the resource record sets that you want to list."
}

Optional Parameters
{
  "StartRecordName": "The first name in the lexicographic ordering of resource record sets that you want to list.",
  "MaxItems": "(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than maxitems resource record sets, the value of the IsTruncated element in the response is true, and the values of the NextRecordName and NextRecordType elements in the response identify the first resource record set in the next group of maxitems resource record sets.",
  "StartRecordType": "The type of resource record set to begin the record listing from. Valid values for basic resource record sets: A | AAAA | CAA | CNAME | MX | NAPTR | NS | PTR | SOA | SPF | SRV | TXT  Values for weighted, latency, geolocation, and failover resource record sets: A | AAAA | CAA | CNAME | MX | NAPTR | PTR | SPF | SRV | TXT  Values for alias resource record sets:     API Gateway custom regional API or edge-optimized API: A    CloudFront distribution: A or AAAA    Elastic Beanstalk environment that has a regionalized subdomain: A    Elastic Load Balancing load balancer: A | AAAA    Amazon S3 bucket: A    Amazon VPC interface VPC endpoint: A    Another resource record set in this hosted zone: The type of the resource record set that the alias references.   Constraint: Specifying type without specifying name returns an InvalidInput error.",
  "StartRecordIdentifier": " Resource record sets that have a routing policy other than simple: If results were truncated for a given DNS name and type, specify the value of NextRecordIdentifier from the previous response to get the next resource record set that has the current DNS name and type."
}
"""ListResourceRecordSets(HostedZoneId) = route_53("GET", "/2013-04-01/hostedzone/{Id}/rrset")
ListResourceRecordSets(HostedZoneId, args) = route_53("GET", "/2013-04-01/hostedzone/{Id}/rrset", args)
ListResourceRecordSets(a...; b...) = ListResourceRecordSets(a..., b)

"""
    DeleteTrafficPolicy()

Deletes a traffic policy.

Required Parameters
{
  "Id": "The ID of the traffic policy that you want to delete.",
  "Version": "The version number of the traffic policy that you want to delete."
}
"""DeleteTrafficPolicy(Id, Version) = route_53("DELETE", "/2013-04-01/trafficpolicy/{Id}/{Version}")
DeleteTrafficPolicy(Id, Version, args) = route_53("DELETE", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)
DeleteTrafficPolicy(a...; b...) = DeleteTrafficPolicy(a..., b)

"""
    DeleteTrafficPolicyInstance()

Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance.  In the Route 53 console, traffic policy instances are known as policy records. 

Required Parameters
{
  "Id": "The ID of the traffic policy instance that you want to delete.   When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance. "
}
"""DeleteTrafficPolicyInstance(Id) = route_53("DELETE", "/2013-04-01/trafficpolicyinstance/{Id}")
DeleteTrafficPolicyInstance(Id, args) = route_53("DELETE", "/2013-04-01/trafficpolicyinstance/{Id}", args)
DeleteTrafficPolicyInstance(a...; b...) = DeleteTrafficPolicyInstance(a..., b)

"""
    GetHostedZoneCount()

Retrieves the number of hosted zones that are associated with the current AWS account.
"""GetHostedZoneCount() = route_53("GET", "/2013-04-01/hostedzonecount")
GetHostedZoneCount(args) route_53("GET", "/2013-04-01/hostedzonecount", args)
GetHostedZoneCount(a...; b...) = GetHostedZoneCount(a..., b)

"""
    CreateTrafficPolicyInstance()

Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version. In addition, CreateTrafficPolicyInstance associates the resource record sets with a specified domain name (such as example.com) or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for the domain or subdomain name by using the resource record sets that CreateTrafficPolicyInstance created.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.",
  "TrafficPolicyVersion": "The version of the traffic policy that you want to use to create resource record sets in the specified hosted zone.",
  "TTL": "(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource record sets that it creates in the specified hosted zone.",
  "TrafficPolicyId": "The ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.",
  "Name": "The domain name (such as example.com) or subdomain name (such as www.example.com) for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance."
}
"""CreateTrafficPolicyInstance(HostedZoneId, TrafficPolicyVersion, TTL, TrafficPolicyId, Name) = route_53("POST", "/2013-04-01/trafficpolicyinstance")
CreateTrafficPolicyInstance(HostedZoneId, TrafficPolicyVersion, TTL, TrafficPolicyId, Name, args) = route_53("POST", "/2013-04-01/trafficpolicyinstance", args)
CreateTrafficPolicyInstance(a...; b...) = CreateTrafficPolicyInstance(a..., b)

"""
    ListTrafficPolicyInstancesByPolicy()

Gets information about the traffic policy instances that you created by using a specify traffic policy version.  After you submit a CreateTrafficPolicyInstance or an UpdateTrafficPolicyInstance request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the State response element.  Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the MaxItems parameter to list them in groups of up to 100.

Required Parameters
{
  "TrafficPolicyVersion": "The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by TrafficPolicyId.",
  "TrafficPolicyId": "The ID of the traffic policy for which you want to list traffic policy instances."
}

Optional Parameters
{
  "HostedZoneIdMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstancesByPolicy request.  For the value of hostedzoneid, specify the value of HostedZoneIdMarker from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get.",
  "MaxItems": "The maximum number of traffic policy instances to be included in the response body for this request. If you have more than MaxItems traffic policy instances, the value of the IsTruncated element in the response is true, and the values of HostedZoneIdMarker, TrafficPolicyInstanceNameMarker, and TrafficPolicyInstanceTypeMarker represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.",
  "TrafficPolicyInstanceNameMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstancesByPolicy request. For the value of trafficpolicyinstancename, specify the value of TrafficPolicyInstanceNameMarker from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get.",
  "TrafficPolicyInstanceTypeMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstancesByPolicy request. For the value of trafficpolicyinstancetype, specify the value of TrafficPolicyInstanceTypeMarker from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get."
}
"""ListTrafficPolicyInstancesByPolicy(TrafficPolicyVersion, TrafficPolicyId) = route_53("GET", "/2013-04-01/trafficpolicyinstances/trafficpolicy")
ListTrafficPolicyInstancesByPolicy(TrafficPolicyVersion, TrafficPolicyId, args) = route_53("GET", "/2013-04-01/trafficpolicyinstances/trafficpolicy", args)
ListTrafficPolicyInstancesByPolicy(a...; b...) = ListTrafficPolicyInstancesByPolicy(a..., b)

"""
    GetHealthCheckCount()

Retrieves the number of health checks that are associated with the current AWS account.
"""GetHealthCheckCount() = route_53("GET", "/2013-04-01/healthcheckcount")
GetHealthCheckCount(args) route_53("GET", "/2013-04-01/healthcheckcount", args)
GetHealthCheckCount(a...; b...) = GetHealthCheckCount(a..., b)

"""
    DeleteQueryLoggingConfig()

Deletes a configuration for DNS query logging. If you delete a configuration, Amazon Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't delete any logs that are already in CloudWatch Logs. For more information about DNS query logs, see CreateQueryLoggingConfig.

Required Parameters
{
  "Id": "The ID of the configuration that you want to delete. "
}
"""DeleteQueryLoggingConfig(Id) = route_53("DELETE", "/2013-04-01/queryloggingconfig/{Id}")
DeleteQueryLoggingConfig(Id, args) = route_53("DELETE", "/2013-04-01/queryloggingconfig/{Id}", args)
DeleteQueryLoggingConfig(a...; b...) = DeleteQueryLoggingConfig(a..., b)

"""
    TestDNSAnswer()

Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. 

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.",
  "RecordType": "The type of the resource record set.",
  "RecordName": "The name of the resource record set that you want Amazon Route 53 to simulate a query for."
}

Optional Parameters
{
  "ResolverIP": "If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, TestDnsAnswer uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (us-east-1).",
  "EDNS0ClientSubnetIP": "If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, 192.0.2.44 or 2001:db8:85a3::8a2e:370:7334.",
  "EDNS0ClientSubnetMask": "If you specify an IP address for edns0clientsubnetip, you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify 192.0.2.44 for edns0clientsubnetip and 24 for edns0clientsubnetmask, the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses. The range of valid values depends on whether edns0clientsubnetip is an IPv4 or an IPv6 address:    IPv4: Specify a value between 0 and 32    IPv6: Specify a value between 0 and 128  "
}
"""TestDNSAnswer(HostedZoneId, RecordType, RecordName) = route_53("GET", "/2013-04-01/testdnsanswer")
TestDNSAnswer(HostedZoneId, RecordType, RecordName, args) = route_53("GET", "/2013-04-01/testdnsanswer", args)
TestDNSAnswer(a...; b...) = TestDNSAnswer(a..., b)

"""
    ListHostedZonesByName()

Retrieves a list of your hosted zones in lexicographic order. The response includes a HostedZones child element for each hosted zone created by the current AWS account.   ListHostedZonesByName sorts hosted zones by name with the labels reversed. For example:  com.example.www.  Note the trailing dot, which can change the sort order in some circumstances. If the domain name includes escape characters or Punycode, ListHostedZonesByName alphabetizes the domain name using the escaped or Punycoded value, which is the format that Amazon Route 53 saves in its database. For example, to create a hosted zone for exämple.com, you specify ex 344mple.com for the domain name. ListHostedZonesByName alphabetizes it as:  com.ex 344mple.  The labels are reversed and alphabetized using the escaped value. For more information about valid domain name formats, including internationalized domain names, see DNS Domain Name Format in the Amazon Route 53 Developer Guide. Route 53 returns up to 100 items in each response. If you have a lot of hosted zones, use the MaxItems parameter to list them in groups of up to 100. The response includes values that help navigate from one group of MaxItems hosted zones to the next:   The DNSName and HostedZoneId elements in the response contain the values, if any, specified for the dnsname and hostedzoneid parameters in the request that produced the current response.   The MaxItems element in the response contains the value, if any, that you specified for the maxitems parameter in the request that produced the current response.   If the value of IsTruncated in the response is true, there are more hosted zones associated with the current AWS account.  If IsTruncated is false, this response includes the last hosted zone that is associated with the current account. The NextDNSName element and NextHostedZoneId elements are omitted from the response.   The NextDNSName and NextHostedZoneId elements in the response contain the domain name and the hosted zone ID of the next hosted zone that is associated with the current AWS account. If you want to list more hosted zones, make another call to ListHostedZonesByName, and specify the value of NextDNSName and NextHostedZoneId in the dnsname and hostedzoneid parameters, respectively.  

Optional Parameters
{
  "HostedZoneId": "(Optional) For your first request to ListHostedZonesByName, do not include the hostedzoneid parameter. If you have more hosted zones than the value of maxitems, ListHostedZonesByName returns only the first maxitems hosted zones. To get the next group of maxitems hosted zones, submit another request to ListHostedZonesByName and include both dnsname and hostedzoneid parameters. For the value of hostedzoneid, specify the value of the NextHostedZoneId element from the previous response.",
  "DNSName": "(Optional) For your first request to ListHostedZonesByName, include the dnsname parameter only if you want to specify the name of the first hosted zone in the response. If you don't include the dnsname parameter, Amazon Route 53 returns all of the hosted zones that were created by the current AWS account, in ASCII order. For subsequent requests, include both dnsname and hostedzoneid parameters. For dnsname, specify the value of NextDNSName from the previous response.",
  "MaxItems": "The maximum number of hosted zones to be included in the response body for this request. If you have more than maxitems hosted zones, then the value of the IsTruncated element in the response is true, and the values of NextDNSName and NextHostedZoneId specify the first hosted zone in the next group of maxitems hosted zones. "
}
"""ListHostedZonesByName() = route_53("GET", "/2013-04-01/hostedzonesbyname")
ListHostedZonesByName(args) route_53("GET", "/2013-04-01/hostedzonesbyname", args)
ListHostedZonesByName(a...; b...) = ListHostedZonesByName(a..., b)

"""
    ListHostedZones()

Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a HostedZones child element for each hosted zone. Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the maxitems parameter to list them in groups of up to 100.

Optional Parameters
{
  "Marker": "If the value of IsTruncated in the previous response was true, you have more hosted zones. To get more hosted zones, submit another ListHostedZones request.  For the value of marker, specify the value of NextMarker from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more hosted zones to get.",
  "DelegationSetId": "If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set. ",
  "MaxItems": "(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than maxitems hosted zones, the value of IsTruncated in the response is true, and the value of NextMarker is the hosted zone ID of the first hosted zone that Route 53 will return if you submit another request."
}
"""ListHostedZones() = route_53("GET", "/2013-04-01/hostedzone")
ListHostedZones(args) route_53("GET", "/2013-04-01/hostedzone", args)
ListHostedZones(a...; b...) = ListHostedZones(a..., b)

"""
    AssociateVPCWithHostedZone()

Associates an Amazon VPC with a private hosted zone.   To perform the association, the VPC and the private hosted zone must already exist. You can't convert a public hosted zone into a private hosted zone.   If you want to associate a VPC that was created by using one AWS account with a private hosted zone that was created by using a different account, the AWS account that created the private hosted zone must first submit a CreateVPCAssociationAuthorization request. Then the account that created the VPC must submit an AssociateVPCWithHostedZone request. 

Required Parameters
{
  "HostedZoneId": "The ID of the private hosted zone that you want to associate an Amazon VPC with. Note that you can't associate a VPC with a hosted zone that doesn't have an existing VPC association.",
  "VPC": "A complex type that contains information about the VPC that you want to associate with a private hosted zone."
}

Optional Parameters
{
  "Comment": " Optional: A comment about the association request."
}
"""AssociateVPCWithHostedZone(HostedZoneId, VPC) = route_53("POST", "/2013-04-01/hostedzone/{Id}/associatevpc")
AssociateVPCWithHostedZone(HostedZoneId, VPC, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}/associatevpc", args)
AssociateVPCWithHostedZone(a...; b...) = AssociateVPCWithHostedZone(a..., b)

"""
    DisassociateVPCFromHostedZone()

Disassociates a VPC from a Amazon Route 53 private hosted zone. Note the following:   You can't disassociate the last VPC from a private hosted zone.   You can't convert a private hosted zone into a public hosted zone.   You can submit a DisassociateVPCFromHostedZone request using either the account that created the hosted zone or the account that created the VPC.  

Required Parameters
{
  "HostedZoneId": "The ID of the private hosted zone that you want to disassociate a VPC from.",
  "VPC": "A complex type that contains information about the VPC that you're disassociating from the specified hosted zone."
}

Optional Parameters
{
  "Comment": " Optional: A comment about the disassociation request."
}
"""DisassociateVPCFromHostedZone(HostedZoneId, VPC) = route_53("POST", "/2013-04-01/hostedzone/{Id}/disassociatevpc")
DisassociateVPCFromHostedZone(HostedZoneId, VPC, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}/disassociatevpc", args)
DisassociateVPCFromHostedZone(a...; b...) = DisassociateVPCFromHostedZone(a..., b)

"""
    UpdateTrafficPolicyComment()

Updates the comment for a specified traffic policy version.

Required Parameters
{
  "Id": "The value of Id for the traffic policy that you want to update the comment for.",
  "Comment": "The new comment for the specified traffic policy and version.",
  "Version": "The value of Version for the traffic policy that you want to update the comment for."
}
"""UpdateTrafficPolicyComment(Id, Comment, Version) = route_53("POST", "/2013-04-01/trafficpolicy/{Id}/{Version}")
UpdateTrafficPolicyComment(Id, Comment, Version, args) = route_53("POST", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)
UpdateTrafficPolicyComment(a...; b...) = UpdateTrafficPolicyComment(a..., b)

"""
    CreateVPCAssociationAuthorization()

Authorizes the AWS account that created a specified VPC to submit an AssociateVPCWithHostedZone request to associate the VPC with a specified hosted zone that was created by a different account. To submit a CreateVPCAssociationAuthorization request, you must use the account that created the hosted zone. After you authorize the association, use the account that created the VPC to submit an AssociateVPCWithHostedZone request.  If you want to associate multiple VPCs that you created by using one account with a hosted zone that you created by using a different account, you must submit one authorization request for each VPC. 

Required Parameters
{
  "HostedZoneId": "The ID of the private hosted zone that you want to authorize associating a VPC with.",
  "VPC": "A complex type that contains the VPC ID and region for the VPC that you want to authorize associating with your hosted zone."
}
"""CreateVPCAssociationAuthorization(HostedZoneId, VPC) = route_53("POST", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation")
CreateVPCAssociationAuthorization(HostedZoneId, VPC, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", args)
CreateVPCAssociationAuthorization(a...; b...) = CreateVPCAssociationAuthorization(a..., b)

"""
    ListTagsForResources()

Lists tags for up to 10 health checks or hosted zones. For information about using tags for cost allocation, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.

Required Parameters
{
  "ResourceType": "The type of the resources.   The resource type for health checks is healthcheck.   The resource type for hosted zones is hostedzone.  ",
  "ResourceIds": "A complex type that contains the ResourceId element for each resource for which you want to get a list of tags."
}
"""ListTagsForResources(ResourceType, ResourceIds) = route_53("POST", "/2013-04-01/tags/{ResourceType}")
ListTagsForResources(ResourceType, ResourceIds, args) = route_53("POST", "/2013-04-01/tags/{ResourceType}", args)
ListTagsForResources(a...; b...) = ListTagsForResources(a..., b)

"""
    ListReusableDelegationSets()

Retrieves a list of the reusable delegation sets that are associated with the current AWS account.

Optional Parameters
{
  "Marker": "If the value of IsTruncated in the previous response was true, you have more reusable delegation sets. To get another group, submit another ListReusableDelegationSets request.  For the value of marker, specify the value of NextMarker from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request. If the value of IsTruncated in the previous response was false, there are no more reusable delegation sets to get.",
  "MaxItems": "The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Route 53 returns only the first 100 reusable delegation sets."
}
"""ListReusableDelegationSets() = route_53("GET", "/2013-04-01/delegationset")
ListReusableDelegationSets(args) route_53("GET", "/2013-04-01/delegationset", args)
ListReusableDelegationSets(a...; b...) = ListReusableDelegationSets(a..., b)

"""
    ListTrafficPolicyInstances()

Gets information about the traffic policy instances that you created by using the current AWS account.  After you submit an UpdateTrafficPolicyInstance request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the State response element.  Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the MaxItems parameter to list them in groups of up to 100.

Optional Parameters
{
  "HostedZoneIdMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstances request. For the value of HostedZoneId, specify the value of HostedZoneIdMarker from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get.",
  "MaxItems": "The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a ListTrafficPolicyInstances request. If you have more than MaxItems traffic policy instances, the value of the IsTruncated element in the response is true, and the values of HostedZoneIdMarker, TrafficPolicyInstanceNameMarker, and TrafficPolicyInstanceTypeMarker represent the first traffic policy instance in the next group of MaxItems traffic policy instances.",
  "TrafficPolicyInstanceNameMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstances request. For the value of trafficpolicyinstancename, specify the value of TrafficPolicyInstanceNameMarker from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get.",
  "TrafficPolicyInstanceTypeMarker": "If the value of IsTruncated in the previous response was true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstances request. For the value of trafficpolicyinstancetype, specify the value of TrafficPolicyInstanceTypeMarker from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get."
}
"""ListTrafficPolicyInstances() = route_53("GET", "/2013-04-01/trafficpolicyinstances")
ListTrafficPolicyInstances(args) route_53("GET", "/2013-04-01/trafficpolicyinstances", args)
ListTrafficPolicyInstances(a...; b...) = ListTrafficPolicyInstances(a..., b)

"""
    GetHostedZone()

Gets information about a specified hosted zone including the four name servers assigned to the hosted zone.

Required Parameters
{
  "Id": "The ID of the hosted zone that you want to get information about."
}
"""GetHostedZone(Id) = route_53("GET", "/2013-04-01/hostedzone/{Id}")
GetHostedZone(Id, args) = route_53("GET", "/2013-04-01/hostedzone/{Id}", args)
GetHostedZone(a...; b...) = GetHostedZone(a..., b)

"""
    ListTagsForResource()

Lists tags for one health check or hosted zone.  For information about using tags for cost allocation, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.

Required Parameters
{
  "ResourceType": "The type of the resource.   The resource type for health checks is healthcheck.   The resource type for hosted zones is hostedzone.  ",
  "ResourceId": "The ID of the resource for which you want to retrieve tags."
}
"""ListTagsForResource(ResourceType, ResourceId) = route_53("GET", "/2013-04-01/tags/{ResourceType}/{ResourceId}")
ListTagsForResource(ResourceType, ResourceId, args) = route_53("GET", "/2013-04-01/tags/{ResourceType}/{ResourceId}", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
    GetGeoLocation()

Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets. Use the following syntax to determine whether a continent is supported for geolocation:  GET /2013-04-01/geolocation?continentcode=two-letter abbreviation for a continent   Use the following syntax to determine whether a country is supported for geolocation:  GET /2013-04-01/geolocation?countrycode=two-character country code   Use the following syntax to determine whether a subdivision of a country is supported for geolocation:  GET /2013-04-01/geolocation?countrycode=two-character country code&amp;subdivisioncode=subdivision code  

Optional Parameters
{
  "CountryCode": "Amazon Route 53 uses the two-letter country codes that are specified in ISO standard 3166-1 alpha-2.",
  "ContinentCode": "Amazon Route 53 supports the following continent codes:    AF: Africa    AN: Antarctica    AS: Asia    EU: Europe    OC: Oceania    NA: North America    SA: South America  ",
  "SubdivisionCode": "Amazon Route 53 uses the one- to three-letter subdivision codes that are specified in ISO standard 3166-1 alpha-2. Route 53 doesn't support subdivision codes for all countries. If you specify subdivisioncode, you must also specify countrycode. "
}
"""GetGeoLocation() = route_53("GET", "/2013-04-01/geolocation")
GetGeoLocation(args) route_53("GET", "/2013-04-01/geolocation", args)
GetGeoLocation(a...; b...) = GetGeoLocation(a..., b)

"""
    UpdateHealthCheck()

Updates an existing health check. Note that some values can't be updated.  For more information about updating health checks, see Creating, Updating, and Deleting Health Checks in the Amazon Route 53 Developer Guide.

Required Parameters
{
  "HealthCheckId": "The ID for the health check for which you want detailed information. When you created the health check, CreateHealthCheck returned the ID in the response, in the HealthCheckId element."
}

Optional Parameters
{
  "FullyQualifiedDomainName": "Amazon Route 53 behavior depends on whether you specify a value for IPAddress.  If a health check already has a value for IPAddress, you can change the value. However, you can't update an existing health check to add or remove the value of IPAddress.    If you specify a value for IPAddress: Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of FullyQualifiedDomainName in the Host header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Route 53 to perform health checks. When Route 53 checks the health of an endpoint, here is how it constructs the Host header:   If you specify a value of 80 for Port and HTTP or HTTP_STR_MATCH for Type, Route 53 passes the value of FullyQualifiedDomainName to the endpoint in the Host header.   If you specify a value of 443 for Port and HTTPS or HTTPS_STR_MATCH for Type, Route 53 passes the value of FullyQualifiedDomainName to the endpoint in the Host header.   If you specify another value for Port and any value except TCP for Type, Route 53 passes  FullyQualifiedDomainName:Port  to the endpoint in the Host header.   If you don't specify a value for FullyQualifiedDomainName, Route 53 substitutes the value of IPAddress in the Host header in each of the above cases.  If you don't specify a value for IPAddress: If you don't specify a value for IPAddress, Route 53 sends a DNS request to the domain that you specify in FullyQualifiedDomainName at the interval you specify in RequestInterval. Using an IPv4 address that is returned by DNS, Route 53 then checks the health of the endpoint.  If you don't specify a value for IPAddress, Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for FullyQualifiedDomainName, the health check fails with a \"DNS resolution failed\" error.  If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by FullyQualifiedDomainName, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of FullyQualifiedDomainName, specify the domain name of the server (such as us-east-2-www.example.com), not the name of the resource record sets (www.example.com).  In this configuration, if the value of FullyQualifiedDomainName matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.  In addition, if the value of Type is HTTP, HTTPS, HTTP_STR_MATCH, or HTTPS_STR_MATCH, Route 53 passes the value of FullyQualifiedDomainName in the Host header, as it does when you specify a value for IPAddress. If the value of Type is TCP, Route 53 doesn't pass a Host header.",
  "Disabled": "Stops Route 53 from performing health checks. When you disable a health check, here's what happens:    Health checks that check the health of endpoints: Route 53 stops submitting requests to your application, server, or other resource.    Calculated health checks: Route 53 stops aggregating the status of the referenced health checks.    Health checks that monitor CloudWatch alarms: Route 53 stops monitoring the corresponding CloudWatch metrics.   After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of Inverted.  Charges for a health check still apply when the health check is disabled. For more information, see Amazon Route 53 Pricing.",
  "Regions": "A complex type that contains one Region element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.",
  "IPAddress": "The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for IPAddress, Route 53 sends a DNS request to resolve the domain name that you specify in FullyQualifiedDomainName at the interval that you specify in RequestInterval. Using an IP address that is returned by DNS, Route 53 then checks the health of the endpoint. Use one of the following formats for the value of IPAddress:     IPv4 address: four values between 0 and 255, separated by periods (.), for example, 192.0.2.44.    IPv6 address: eight groups of four hexadecimal values, separated by colons (:), for example, 2001:0db8:85a3:0000:0000:abcd:0001:2345. You can also shorten IPv6 addresses as described in RFC 5952, for example, 2001:db8:85a3::abcd:1:2345.   If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for IPAddress. This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:   Linux: Elastic IP Addresses (EIP) in the Amazon EC2 User Guide for Linux Instances    Windows: Elastic IP Addresses (EIP) in the Amazon EC2 User Guide for Windows Instances     If a health check already has a value for IPAddress, you can change the value. However, you can't update an existing health check to add or remove the value of IPAddress.   For more information, see FullyQualifiedDomainName.  Constraints: Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:    RFC 5735, Special Use IPv4 Addresses     RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space     RFC 5156, Special-Use IPv6 Addresses   ",
  "EnableSNI": "Specify whether you want Amazon Route 53 to send the value of FullyQualifiedDomainName to the endpoint in the client_hello message during TLS negotiation. This allows the endpoint to respond to HTTPS health check requests with the applicable SSL/TLS certificate. Some endpoints require that HTTPS requests include the host name in the client_hello message. If you don't enable SNI, the status of the health check will be SSL alert handshake_failure. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid. The SSL/TLS certificate on your endpoint includes a domain name in the Common Name field and possibly several more in the Subject Alternative Names field. One of the domain names in the certificate should match the value that you specify for FullyQualifiedDomainName. If the endpoint responds to the client_hello message with a certificate that does not include the domain name that you specified in FullyQualifiedDomainName, a health checker will retry the handshake. In the second attempt, the health checker will omit FullyQualifiedDomainName from the client_hello message.",
  "HealthCheckVersion": "A sequential counter that Amazon Route 53 sets to 1 when you create a health check and increments by 1 each time you update settings for the health check. We recommend that you use GetHealthCheck or ListHealthChecks to get the current value of HealthCheckVersion for the health check that you want to update, and that you include that value in your UpdateHealthCheck request. This prevents Route 53 from overwriting an intervening update:   If the value in the UpdateHealthCheck request matches the value of HealthCheckVersion in the health check, Route 53 updates the health check with the new settings.   If the value of HealthCheckVersion in the health check is greater, the health check was changed after you got the version number. Route 53 does not update the health check, and it returns a HealthCheckVersionMismatch error.  ",
  "Inverted": "Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.",
  "FailureThreshold": "The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see How Amazon Route 53 Determines Whether an Endpoint Is Healthy in the Amazon Route 53 Developer Guide. If you don't specify a value for FailureThreshold, the default value is three health checks.",
  "ResetElements": "A complex type that contains one ResettableElementName element for each element that you want to reset to the default value. Valid values for ResettableElementName include the following:    ChildHealthChecks: Amazon Route 53 resets ChildHealthChecks to null.    FullyQualifiedDomainName: Route 53 resets FullyQualifiedDomainName. to null.    Regions: Route 53 resets the Regions list to the default set of regions.     ResourcePath: Route 53 resets ResourcePath to null.  ",
  "SearchString": "If the value of Type is HTTP_STR_MATCH or HTTP_STR_MATCH, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Route 53 considers the resource healthy. (You can't change the value of Type when you update a health check.)",
  "HealthThreshold": "The number of child health checks that are associated with a CALCULATED health that Amazon Route 53 must consider healthy for the CALCULATED health check to be considered healthy. To specify the child health checks that you want to associate with a CALCULATED health check, use the ChildHealthChecks and ChildHealthCheck elements. Note the following:   If you specify a number greater than the number of child health checks, Route 53 always considers this health check to be unhealthy.   If you specify 0, Route 53 always considers this health check to be healthy.  ",
  "AlarmIdentifier": "A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether the specified health check is healthy.",
  "Port": "The port on the endpoint on which you want Amazon Route 53 to perform health checks.",
  "ResourcePath": "The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. You can also include query string parameters, for example, /welcome.html?language=jp&amp;login=y.  Specify this value only if you want to change it.",
  "InsufficientDataHealthStatus": "When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:    Healthy: Route 53 considers the health check to be healthy.    Unhealthy: Route 53 considers the health check to be unhealthy.    LastKnownStatus: Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.  ",
  "ChildHealthChecks": "A complex type that contains one ChildHealthCheck element for each health check that you want to associate with a CALCULATED health check."
}
"""UpdateHealthCheck(HealthCheckId) = route_53("POST", "/2013-04-01/healthcheck/{HealthCheckId}")
UpdateHealthCheck(HealthCheckId, args) = route_53("POST", "/2013-04-01/healthcheck/{HealthCheckId}", args)
UpdateHealthCheck(a...; b...) = UpdateHealthCheck(a..., b)

"""
    DeleteReusableDelegationSet()

Deletes a reusable delegation set.  You can delete a reusable delegation set only if it isn't associated with any hosted zones.  To verify that the reusable delegation set is not associated with any hosted zones, submit a GetReusableDelegationSet request and specify the ID of the reusable delegation set that you want to delete.

Required Parameters
{
  "Id": "The ID of the reusable delegation set that you want to delete."
}
"""DeleteReusableDelegationSet(Id) = route_53("DELETE", "/2013-04-01/delegationset/{Id}")
DeleteReusableDelegationSet(Id, args) = route_53("DELETE", "/2013-04-01/delegationset/{Id}", args)
DeleteReusableDelegationSet(a...; b...) = DeleteReusableDelegationSet(a..., b)

"""
    CreateHealthCheck()

Creates a new health check. For information about adding health checks to resource record sets, see HealthCheckId in ChangeResourceRecordSets.   ELB Load Balancers  If you're registering EC2 instances with an Elastic Load Balancing (ELB) load balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you register an EC2 instance with a load balancer, you configure settings for an ELB health check, which performs a similar function to a Route 53 health check.  Private Hosted Zones  You can associate health checks with failover resource record sets in a private hosted zone. Note the following:   Route 53 health checkers are outside the VPC. To check the health of an endpoint within a VPC by IP address, you must assign a public IP address to the instance in the VPC.   You can configure a health checker to check the health of an external resource that the instance relies on, such as a database server.   You can create a CloudWatch metric, associate an alarm with the metric, and then create a health check that is based on the state of the alarm. For example, you might create a CloudWatch metric that checks the status of the Amazon EC2 StatusCheckFailed metric, add an alarm to the metric, and then create a health check that is based on the state of the alarm. For information about creating CloudWatch metrics and alarms by using the CloudWatch console, see the Amazon CloudWatch User Guide.  

Required Parameters
{
  "CallerReference": "A unique string that identifies the request and that allows you to retry a failed CreateHealthCheck request without the risk of creating two identical health checks:   If you send a CreateHealthCheck request with the same CallerReference and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Route 53 returns the settings for the existing health check.   If you send a CreateHealthCheck request with the same CallerReference as a deleted health check, regardless of the settings, Route 53 returns a HealthCheckAlreadyExists error.   If you send a CreateHealthCheck request with the same CallerReference as an existing health check but with different settings, Route 53 returns a HealthCheckAlreadyExists error.   If you send a CreateHealthCheck request with a unique CallerReference but settings identical to an existing health check, Route 53 creates the health check.  ",
  "HealthCheckConfig": "A complex type that contains settings for a new health check."
}
"""CreateHealthCheck(CallerReference, HealthCheckConfig) = route_53("POST", "/2013-04-01/healthcheck")
CreateHealthCheck(CallerReference, HealthCheckConfig, args) = route_53("POST", "/2013-04-01/healthcheck", args)
CreateHealthCheck(a...; b...) = CreateHealthCheck(a..., b)

"""
    CreateTrafficPolicy()

Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com).

Required Parameters
{
  "Name": "The name of the traffic policy.",
  "Document": "The definition of this traffic policy in JSON format. For more information, see Traffic Policy Document Format."
}

Optional Parameters
{
  "Comment": "(Optional) Any comments that you want to include about the traffic policy."
}
"""CreateTrafficPolicy(Name, Document) = route_53("POST", "/2013-04-01/trafficpolicy")
CreateTrafficPolicy(Name, Document, args) = route_53("POST", "/2013-04-01/trafficpolicy", args)
CreateTrafficPolicy(a...; b...) = CreateTrafficPolicy(a..., b)

"""
    CreateReusableDelegationSet()

Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones. If a hosted zoned ID is specified, CreateReusableDelegationSet marks the delegation set associated with that zone as reusable.  You can't associate a reusable delegation set with a private hosted zone.  For information about using a reusable delegation set to configure white label name servers, see Configuring White Label Name Servers. The process for migrating existing hosted zones to use a reusable delegation set is comparable to the process for configuring white label name servers. You need to perform the following steps:   Create a reusable delegation set.   Recreate hosted zones, and reduce the TTL to 60 seconds or less.   Recreate resource record sets in the new hosted zones.   Change the registrar's name servers to use the name servers for the new hosted zones.   Monitor traffic for the website or application.   Change TTLs back to their original values.   If you want to migrate existing hosted zones to use a reusable delegation set, the existing hosted zones can't use any of the name servers that are assigned to the reusable delegation set. If one or more hosted zones do use one or more name servers that are assigned to the reusable delegation set, you can do one of the following:   For small numbers of hosted zones—up to a few hundred—it's relatively easy to create reusable delegation sets until you get one that has four name servers that don't overlap with any of the name servers in your hosted zones.   For larger numbers of hosted zones, the easiest solution is to use more than one reusable delegation set.   For larger numbers of hosted zones, you can also migrate hosted zones that have overlapping name servers to hosted zones that don't have overlapping name servers, then migrate the hosted zones again to use the reusable delegation set.  

Required Parameters
{
  "CallerReference": "A unique string that identifies the request, and that allows you to retry failed CreateReusableDelegationSet requests without the risk of executing the operation twice. You must use a unique CallerReference string every time you submit a CreateReusableDelegationSet request. CallerReference can be any unique string, for example a date/time stamp."
}

Optional Parameters
{
  "HostedZoneId": "If you want to mark the delegation set for an existing hosted zone as reusable, the ID for that hosted zone."
}
"""CreateReusableDelegationSet(CallerReference) = route_53("POST", "/2013-04-01/delegationset")
CreateReusableDelegationSet(CallerReference, args) = route_53("POST", "/2013-04-01/delegationset", args)
CreateReusableDelegationSet(a...; b...) = CreateReusableDelegationSet(a..., b)

"""
    GetCheckerIpRanges()

  GetCheckerIpRanges still works, but we recommend that you download ip-ranges.json, which includes IP address ranges for all AWS services. For more information, see IP Address Ranges of Amazon Route 53 Servers in the Amazon Route 53 Developer Guide. 
"""GetCheckerIpRanges() = route_53("GET", "/2013-04-01/checkeripranges")
GetCheckerIpRanges(args) route_53("GET", "/2013-04-01/checkeripranges", args)
GetCheckerIpRanges(a...; b...) = GetCheckerIpRanges(a..., b)

"""
    UpdateHostedZoneComment()

Updates the comment for a specified hosted zone.

Required Parameters
{
  "Id": "The ID for the hosted zone that you want to update the comment for."
}

Optional Parameters
{
  "Comment": "The new comment for the hosted zone. If you don't specify a value for Comment, Amazon Route 53 deletes the existing value of the Comment element, if any."
}
"""UpdateHostedZoneComment(Id) = route_53("POST", "/2013-04-01/hostedzone/{Id}")
UpdateHostedZoneComment(Id, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}", args)
UpdateHostedZoneComment(a...; b...) = UpdateHostedZoneComment(a..., b)

"""
    CreateQueryLoggingConfig()

Creates a configuration for DNS query logging. After you create a query logging configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs log group. DNS query logs contain information about the queries that Route 53 receives for a specified public hosted zone, such as the following:   Route 53 edge location that responded to the DNS query   Domain or subdomain that was requested   DNS record type, such as A or AAAA   DNS response code, such as NoError or ServFail     Log Group and Resource Policy  Before you create a query logging configuration, perform the following operations.  If you create a query logging configuration using the Route 53 console, Route 53 performs these operations automatically.    Create a CloudWatch Logs log group, and make note of the ARN, which you specify when you create a query logging configuration. Note the following:   You must create the log group in the us-east-1 region.   You must use the same AWS account to create the log group and the hosted zone that you want to configure query logging for.   When you create log groups for query logging, we recommend that you use a consistent prefix, for example:  /aws/route53/hosted zone name   In the next step, you'll create a resource policy, which controls access to one or more log groups and the associated AWS resources, such as Route 53 hosted zones. There's a limit on the number of resource policies that you can create, so we recommend that you use a consistent prefix so you can use the same resource policy for all the log groups that you create for query logging.     Create a CloudWatch Logs resource policy, and give it the permissions that Route 53 needs to create log streams and to send query logs to log streams. For the value of Resource, specify the ARN for the log group that you created in the previous step. To use the same resource policy for all the CloudWatch Logs log groups that you created for query logging configurations, replace the hosted zone name with *, for example:  arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*   You can't use the CloudWatch console to create or edit a resource policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS CLI.     Log Streams and Edge Locations  When Route 53 finishes creating the configuration for DNS query logging, it does the following:   Creates a log stream for an edge location the first time that the edge location responds to DNS queries for the specified hosted zone. That log stream is used to log all queries that Route 53 responds to for that edge location.   Begins to send query logs to the applicable log stream.   The name of each log stream is in the following format:   hosted zone ID/edge location code   The edge location code is a three-letter code and an arbitrarily assigned number, for example, DFW3. The three-letter code typically corresponds with the International Air Transport Association airport code for an airport near the edge location. (These abbreviations might change in the future.) For a list of edge locations, see "The Route 53 Global Network" on the Route 53 Product Details page.  Queries That Are Logged  Query logs contain only the queries that DNS resolvers forward to Route 53. If a DNS resolver has already cached the response to a query (such as the IP address for a load balancer for example.com), the resolver will continue to return the cached response. It doesn't forward another query to Route 53 until the TTL for the corresponding resource record set expires. Depending on how many DNS queries are submitted for a resource record set, and depending on the TTL for that resource record set, query logs might contain information about only one query out of every several thousand queries that are submitted to DNS. For more information about how DNS works, see Routing Internet Traffic to Your Website or Web Application in the Amazon Route 53 Developer Guide.  Log File Format  For a list of the values in each query log and the format of each value, see Logging DNS Queries in the Amazon Route 53 Developer Guide.  Pricing  For information about charges for query logs, see Amazon CloudWatch Pricing.  How to Stop Logging  If you want Route 53 to stop sending query logs to CloudWatch Logs, delete the query logging configuration. For more information, see DeleteQueryLoggingConfig.  

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that you want to log queries for. You can log queries only for public hosted zones.",
  "CloudWatchLogsLogGroupArn": "The Amazon Resource Name (ARN) for the log group that you want to Amazon Route 53 to send query logs to. This is the format of the ARN: arn:aws:logs:region:account-id:log-group:log_group_name  To get the ARN for a log group, you can use the CloudWatch console, the DescribeLogGroups API action, the describe-log-groups command, or the applicable command in one of the AWS SDKs."
}
"""CreateQueryLoggingConfig(HostedZoneId, CloudWatchLogsLogGroupArn) = route_53("POST", "/2013-04-01/queryloggingconfig")
CreateQueryLoggingConfig(HostedZoneId, CloudWatchLogsLogGroupArn, args) = route_53("POST", "/2013-04-01/queryloggingconfig", args)
CreateQueryLoggingConfig(a...; b...) = CreateQueryLoggingConfig(a..., b)

"""
    GetTrafficPolicyInstance()

Gets information about a specified traffic policy instance.  After you submit a CreateTrafficPolicyInstance or an UpdateTrafficPolicyInstance request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the State response element.   In the Route 53 console, traffic policy instances are known as policy records. 

Required Parameters
{
  "Id": "The ID of the traffic policy instance that you want to get information about."
}
"""GetTrafficPolicyInstance(Id) = route_53("GET", "/2013-04-01/trafficpolicyinstance/{Id}")
GetTrafficPolicyInstance(Id, args) = route_53("GET", "/2013-04-01/trafficpolicyinstance/{Id}", args)
GetTrafficPolicyInstance(a...; b...) = GetTrafficPolicyInstance(a..., b)

"""
    DeleteHealthCheck()

Deletes a health check.  Amazon Route 53 does not prevent you from deleting a health check even if the health check is associated with one or more resource record sets. If you delete a health check and you don't update the associated resource record sets, the future status of the health check can't be predicted and may change. This will affect the routing of DNS queries for your DNS failover configuration. For more information, see Replacing and Deleting Health Checks in the Amazon Route 53 Developer Guide. 

Required Parameters
{
  "HealthCheckId": "The ID of the health check that you want to delete."
}
"""DeleteHealthCheck(HealthCheckId) = route_53("DELETE", "/2013-04-01/healthcheck/{HealthCheckId}")
DeleteHealthCheck(HealthCheckId, args) = route_53("DELETE", "/2013-04-01/healthcheck/{HealthCheckId}", args)
DeleteHealthCheck(a...; b...) = DeleteHealthCheck(a..., b)

"""
    GetHostedZoneLimit()

Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone.  For the default limit, see Limits in the Amazon Route 53 Developer Guide. To request a higher limit, open a case.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that you want to get a limit for.",
  "Type": "The limit that you want to get. Valid values include the following:    MAX_RRSETS_BY_ZONE: The maximum number of records that you can create in the specified hosted zone.    MAX_VPCS_ASSOCIATED_BY_ZONE: The maximum number of Amazon VPCs that you can associate with the specified private hosted zone.  "
}
"""GetHostedZoneLimit(HostedZoneId, Type) = route_53("GET", "/2013-04-01/hostedzonelimit/{Id}/{Type}")
GetHostedZoneLimit(HostedZoneId, Type, args) = route_53("GET", "/2013-04-01/hostedzonelimit/{Id}/{Type}", args)
GetHostedZoneLimit(a...; b...) = GetHostedZoneLimit(a..., b)

"""
    UpdateTrafficPolicyInstance()

Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version. When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS queries for the root resource record set name (such as example.com) while it replaces one group of resource record sets with another. Route 53 performs the following operations:   Route 53 creates a new group of resource record sets based on the specified traffic policy. This is true regardless of how significant the differences are between the existing resource record sets and the new resource record sets.    When all of the new resource record sets have been created, Route 53 starts to respond to DNS queries for the root resource record set name (such as example.com) by using the new resource record sets.   Route 53 deletes the old group of resource record sets that are associated with the root resource record set name.  

Required Parameters
{
  "Id": "The ID of the traffic policy instance that you want to update.",
  "TrafficPolicyVersion": "The version of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.",
  "TTL": "The TTL that you want Amazon Route 53 to assign to all of the updated resource record sets.",
  "TrafficPolicyId": "The ID of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance."
}
"""UpdateTrafficPolicyInstance(Id, TrafficPolicyVersion, TTL, TrafficPolicyId) = route_53("POST", "/2013-04-01/trafficpolicyinstance/{Id}")
UpdateTrafficPolicyInstance(Id, TrafficPolicyVersion, TTL, TrafficPolicyId, args) = route_53("POST", "/2013-04-01/trafficpolicyinstance/{Id}", args)
UpdateTrafficPolicyInstance(a...; b...) = UpdateTrafficPolicyInstance(a..., b)

"""
    GetTrafficPolicy()

Gets information about a specific traffic policy version.

Required Parameters
{
  "Id": "The ID of the traffic policy that you want to get information about.",
  "Version": "The version number of the traffic policy that you want to get information about."
}
"""GetTrafficPolicy(Id, Version) = route_53("GET", "/2013-04-01/trafficpolicy/{Id}/{Version}")
GetTrafficPolicy(Id, Version, args) = route_53("GET", "/2013-04-01/trafficpolicy/{Id}/{Version}", args)
GetTrafficPolicy(a...; b...) = GetTrafficPolicy(a..., b)

"""
    ListGeoLocations()

Retrieves a list of supported geographic locations. Countries are listed first, and continents are listed last. If Amazon Route 53 supports subdivisions for a country (for example, states or provinces), the subdivisions for that country are listed in alphabetical order immediately after the corresponding country.

Optional Parameters
{
  "StartContinentCode": "The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if IsTruncated is true, and if NextContinentCode from the previous response has a value, enter that value in startcontinentcode to return the next page of results. Include startcontinentcode only if you want to list continents. Don't include startcontinentcode when you're listing countries or countries with their subdivisions.",
  "StartCountryCode": "The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if IsTruncated is true, and if NextCountryCode from the previous response has a value, enter that value in startcountrycode to return the next page of results. Route 53 uses the two-letter country codes that are specified in ISO standard 3166-1 alpha-2.",
  "MaxItems": "(Optional) The maximum number of geolocations to be included in the response body for this request. If more than maxitems geolocations remain to be listed, then the value of the IsTruncated element in the response is true.",
  "StartSubdivisionCode": "The code for the subdivision (for example, state or province) with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Route 53 has already returned a page or more of results, if IsTruncated is true, and if NextSubdivisionCode from the previous response has a value, enter that value in startsubdivisioncode to return the next page of results. To list subdivisions of a country, you must include both startcountrycode and startsubdivisioncode."
}
"""ListGeoLocations() = route_53("GET", "/2013-04-01/geolocations")
ListGeoLocations(args) route_53("GET", "/2013-04-01/geolocations", args)
ListGeoLocations(a...; b...) = ListGeoLocations(a..., b)

"""
    GetHealthCheckLastFailureReason()

Gets the reason that a specified health check failed most recently.

Required Parameters
{
  "HealthCheckId": "The ID for the health check for which you want the last failure reason. When you created the health check, CreateHealthCheck returned the ID in the response, in the HealthCheckId element.  If you want to get the last failure reason for a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use GetHealthCheckLastFailureReason for a calculated health check. "
}
"""GetHealthCheckLastFailureReason(HealthCheckId) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason")
GetHealthCheckLastFailureReason(HealthCheckId, args) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", args)
GetHealthCheckLastFailureReason(a...; b...) = GetHealthCheckLastFailureReason(a..., b)

"""
    ListTrafficPolicyInstancesByHostedZone()

Gets information about the traffic policy instances that you created in a specified hosted zone.  After you submit a CreateTrafficPolicyInstance or an UpdateTrafficPolicyInstance request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the State response element.  Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the MaxItems parameter to list them in groups of up to 100.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that you want to list traffic policy instances for."
}

Optional Parameters
{
  "MaxItems": "The maximum number of traffic policy instances to be included in the response body for this request. If you have more than MaxItems traffic policy instances, the value of the IsTruncated element in the response is true, and the values of HostedZoneIdMarker, TrafficPolicyInstanceNameMarker, and TrafficPolicyInstanceTypeMarker represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.",
  "TrafficPolicyInstanceNameMarker": "If the value of IsTruncated in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstances request. For the value of trafficpolicyinstancename, specify the value of TrafficPolicyInstanceNameMarker from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get.",
  "TrafficPolicyInstanceTypeMarker": "If the value of IsTruncated in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another ListTrafficPolicyInstances request. For the value of trafficpolicyinstancetype, specify the value of TrafficPolicyInstanceTypeMarker from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances. If the value of IsTruncated in the previous response was false, there are no more traffic policy instances to get."
}
"""ListTrafficPolicyInstancesByHostedZone(HostedZoneId) = route_53("GET", "/2013-04-01/trafficpolicyinstances/hostedzone")
ListTrafficPolicyInstancesByHostedZone(HostedZoneId, args) = route_53("GET", "/2013-04-01/trafficpolicyinstances/hostedzone", args)
ListTrafficPolicyInstancesByHostedZone(a...; b...) = ListTrafficPolicyInstancesByHostedZone(a..., b)

"""
    ChangeResourceRecordSets()

Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name. For example, you can use ChangeResourceRecordSets to create a resource record set that routes traffic for test.example.com to a web server that has an IP address of 192.0.2.44.  Change Batches and Transactional Changes  The request body must include a document with a ChangeResourceRecordSetsRequest element. The request body contains a list of change items, known as a change batch. Change batches are considered transactional changes. When using the Amazon Route 53 API to change resource record sets, Route 53 either makes all or none of the changes in a change batch request. This ensures that Route 53 never partially implements the intended changes to the resource record sets in a hosted zone.  For example, a change batch request that deletes the CNAME record for www.example.com and creates an alias resource record set for www.example.com. Route 53 deletes the first resource record set and creates the second resource record set in a single operation. If either the DELETE or the CREATE action fails, then both changes (plus any other changes in the batch) fail, and the original CNAME record continues to exist.  Due to the nature of transactional changes, you can't delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Route 53 returns an InvalidChangeBatch error.   Traffic Flow  To create resource record sets for complex routing configurations, use either the traffic flow visual editor in the Route 53 console or the API actions for traffic policies and traffic policy instances. Save the configuration as a traffic policy, then associate the traffic policy with one or more domain names (such as example.com) or subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted zones. You can roll back the updates if the new configuration isn't performing as expected. For more information, see Using Traffic Flow to Route DNS Traffic in the Amazon Route 53 Developer Guide.  Create, Delete, and Upsert  Use ChangeResourceRecordsSetsRequest to perform the following actions:    CREATE: Creates a resource record set that has the specified values.    DELETE: Deletes an existing resource record set that has the specified values.    UPSERT: If a resource record set does not already exist, AWS creates it. If a resource set does exist, Route 53 updates it with the values in the request.     Syntaxes for Creating, Updating, and Deleting Resource Record Sets  The syntax for a request depends on the type of resource record set that you want to create, delete, or update, such as weighted, alias, or failover. The XML elements in your request must appear in the order listed in the syntax.  For an example for each type of resource record set, see "Examples." Don't refer to the syntax in the "Parameter Syntax" section, which includes all of the elements for every kind of resource record set that you can create, delete, or update by using ChangeResourceRecordSets.   Change Propagation to Route 53 DNS Servers  When you submit a ChangeResourceRecordSets request, Route 53 propagates your changes to all of the Route 53 authoritative DNS servers. While your changes are propagating, GetChange returns a status of PENDING. When propagation is complete, GetChange returns a status of INSYNC. Changes generally propagate to all Route 53 name servers within 60 seconds. For more information, see GetChange.  Limits on ChangeResourceRecordSets Requests  For information about the limits on a ChangeResourceRecordSets request, see Limits in the Amazon Route 53 Developer Guide.

Required Parameters
{
  "HostedZoneId": "The ID of the hosted zone that contains the resource record sets that you want to change.",
  "ChangeBatch": "A complex type that contains an optional comment and the Changes element."
}
"""ChangeResourceRecordSets(HostedZoneId, ChangeBatch) = route_53("POST", "/2013-04-01/hostedzone/{Id}/rrset/")
ChangeResourceRecordSets(HostedZoneId, ChangeBatch, args) = route_53("POST", "/2013-04-01/hostedzone/{Id}/rrset/", args)
ChangeResourceRecordSets(a...; b...) = ChangeResourceRecordSets(a..., b)

"""
    GetTrafficPolicyInstanceCount()

Gets the number of traffic policy instances that are associated with the current AWS account.
"""GetTrafficPolicyInstanceCount() = route_53("GET", "/2013-04-01/trafficpolicyinstancecount")
GetTrafficPolicyInstanceCount(args) route_53("GET", "/2013-04-01/trafficpolicyinstancecount", args)
GetTrafficPolicyInstanceCount(a...; b...) = GetTrafficPolicyInstanceCount(a..., b)

"""
    CreateHostedZone()

Creates a new public or private hosted zone. You create records in a public hosted zone to define how you want to route traffic on the internet for a domain, such as example.com, and its subdomains (apex.example.com, acme.example.com). You create records in a private hosted zone to define how you want to route traffic for a domain and its subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs).   You can't convert a public hosted zone to a private hosted zone or vice versa. Instead, you must create a new hosted zone with the same name and create new resource record sets.  For more information about charges for hosted zones, see Amazon Route 53 Pricing. Note the following:   You can't create a hosted zone for a top-level domain (TLD) such as .com.   For public hosted zones, Amazon Route 53 automatically creates a default SOA record and four NS records for the zone. For more information about SOA and NS records, see NS and SOA Records that Route 53 Creates for a Hosted Zone in the Amazon Route 53 Developer Guide. If you want to use the same name servers for multiple public hosted zones, you can optionally associate a reusable delegation set with the hosted zone. See the DelegationSetId element.   If your domain is registered with a registrar other than Route 53, you must update the name servers with your registrar to make Route 53 the DNS service for the domain. For more information, see Migrating DNS Service for an Existing Domain to Amazon Route 53 in the Amazon Route 53 Developer Guide.    When you submit a CreateHostedZone request, the initial status of the hosted zone is PENDING. For public hosted zones, this means that the NS and SOA records are not yet available on all Route 53 DNS servers. When the NS and SOA records are available, the status of the zone changes to INSYNC.

Required Parameters
{
  "Name": "The name of the domain. Specify a fully qualified domain name, for example, www.example.com. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Route 53 treats www.example.com (without a trailing dot) and www.example.com. (with a trailing dot) as identical. If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Route 53, change the name servers for your domain to the set of NameServers that CreateHostedZone returns in DelegationSet.",
  "CallerReference": "A unique string that identifies the request and that allows failed CreateHostedZone requests to be retried without the risk of executing the operation twice. You must use a unique CallerReference string every time you submit a CreateHostedZone request. CallerReference can be any unique string, for example, a date/time stamp."
}

Optional Parameters
{
  "HostedZoneConfig": "(Optional) A complex type that contains the following optional values:   For public and private hosted zones, an optional comment   For private hosted zones, an optional PrivateZone element   If you don't specify a comment or the PrivateZone element, omit HostedZoneConfig and the other elements.",
  "VPC": "(Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone. You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use AssociateVPCWithHostedZone after you create a hosted zone.",
  "DelegationSetId": "If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see CreateReusableDelegationSet."
}
"""CreateHostedZone(Name, CallerReference) = route_53("POST", "/2013-04-01/hostedzone")
CreateHostedZone(Name, CallerReference, args) = route_53("POST", "/2013-04-01/hostedzone", args)
CreateHostedZone(a...; b...) = CreateHostedZone(a..., b)

"""
    ListQueryLoggingConfigs()

Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone. For more information about DNS query logs, see CreateQueryLoggingConfig. Additional information, including the format of DNS query logs, appears in Logging DNS Queries in the Amazon Route 53 Developer Guide.

Optional Parameters
{
  "HostedZoneId": "(Optional) If you want to list the query logging configuration that is associated with a hosted zone, specify the ID in HostedZoneId.  If you don't specify a hosted zone ID, ListQueryLoggingConfigs returns all of the configurations that are associated with the current AWS account.",
  "MaxResults": "(Optional) The maximum number of query logging configurations that you want Amazon Route 53 to return in response to the current request. If the current AWS account has more than MaxResults configurations, use the value of NextToken in the response to get the next page of results. If you don't specify a value for MaxResults, Route 53 returns up to 100 configurations.",
  "NextToken": "(Optional) If the current AWS account has more than MaxResults query logging configurations, use NextToken to get the second and subsequent pages of results. For the first ListQueryLoggingConfigs request, omit this value. For the second and subsequent requests, get the value of NextToken from the previous response and specify that value for NextToken in the request."
}
"""ListQueryLoggingConfigs() = route_53("GET", "/2013-04-01/queryloggingconfig")
ListQueryLoggingConfigs(args) route_53("GET", "/2013-04-01/queryloggingconfig", args)
ListQueryLoggingConfigs(a...; b...) = ListQueryLoggingConfigs(a..., b)

"""
    GetChange()

Returns the current status of a change batch request. The status is one of the following values:    PENDING indicates that the changes in this request have not propagated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.    INSYNC indicates that the changes have propagated to all Route 53 DNS servers.   

Required Parameters
{
  "Id": "The ID of the change batch request. The value that you specify here is the value that ChangeResourceRecordSets returned in the Id element when you submitted the request."
}
"""GetChange(Id) = route_53("GET", "/2013-04-01/change/{Id}")
GetChange(Id, args) = route_53("GET", "/2013-04-01/change/{Id}", args)
GetChange(a...; b...) = GetChange(a..., b)

"""
    GetAccountLimit()

Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account. For the default limit, see Limits in the Amazon Route 53 Developer Guide. To request a higher limit, open a case.  You can also view account limits in AWS Trusted Advisor. Sign in to the AWS Management Console and open the Trusted Advisor console at https://console.aws.amazon.com/trustedadvisor/. Then choose Service limits in the navigation pane. 

Required Parameters
{
  "Type": "The limit that you want to get. Valid values include the following:    MAX_HEALTH_CHECKS_BY_OWNER: The maximum number of health checks that you can create using the current account.    MAX_HOSTED_ZONES_BY_OWNER: The maximum number of hosted zones that you can create using the current account.    MAX_REUSABLE_DELEGATION_SETS_BY_OWNER: The maximum number of reusable delegation sets that you can create using the current account.    MAX_TRAFFIC_POLICIES_BY_OWNER: The maximum number of traffic policies that you can create using the current account.    MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER: The maximum number of traffic policy instances that you can create using the current account. (Traffic policy instances are referred to as traffic flow policy records in the Amazon Route 53 console.)  "
}
"""GetAccountLimit(Type) = route_53("GET", "/2013-04-01/accountlimit/{Type}")
GetAccountLimit(Type, args) = route_53("GET", "/2013-04-01/accountlimit/{Type}", args)
GetAccountLimit(a...; b...) = GetAccountLimit(a..., b)

"""
    GetHealthCheck()

Gets information about a specified health check.

Required Parameters
{
  "HealthCheckId": "The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long."
}
"""GetHealthCheck(HealthCheckId) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}")
GetHealthCheck(HealthCheckId, args) = route_53("GET", "/2013-04-01/healthcheck/{HealthCheckId}", args)
GetHealthCheck(a...; b...) = GetHealthCheck(a..., b)
