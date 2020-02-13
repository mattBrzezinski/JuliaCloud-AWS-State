include("../AWSCorePrototypeServices.jl")
using .Services: cloudsearch

"""
    UpdateServiceAccessPolicies()

Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.

Required Parameters
{
  "DomainName": "",
  "AccessPolicies": ""
}
"""
UpdateServiceAccessPolicies(args) = cloudsearch("UpdateServiceAccessPolicies", args)

"""
    UpdateAvailabilityOptions()

Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.

Required Parameters
{
  "DomainName": "",
  "MultiAZ": "You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to false. "
}
"""
UpdateAvailabilityOptions(args) = cloudsearch("UpdateAvailabilityOptions", args)

"""
    DescribeDomains()

Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.

Optional Parameters
{
  "DomainNames": "Limits the DescribeDomains response to the specified search domains."
}
"""
DescribeDomains() = cloudsearch("DescribeDomains")
DescribeDomains(args) = cloudsearch("DescribeDomains", args)

"""
    DescribeAvailabilityOptions()

Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.

Required Parameters
{
  "DomainName": "The name of the domain you want to describe."
}
"""
DescribeAvailabilityOptions(args) = cloudsearch("DescribeAvailabilityOptions", args)

"""
    DescribeServiceAccessPolicies()

Gets information about the resource-based policies that control access to the domain's document and search services.

Required Parameters
{
  "DomainName": ""
}
"""
DescribeServiceAccessPolicies(args) = cloudsearch("DescribeServiceAccessPolicies", args)

"""
    DescribeSynonymOptions()

Gets the synonym dictionary configured for the search domain.

Required Parameters
{
  "DomainName": ""
}
"""
DescribeSynonymOptions(args) = cloudsearch("DescribeSynonymOptions", args)

"""
    DescribeStemmingOptions()

Gets the stemming dictionary configured for the search domain.

Required Parameters
{
  "DomainName": ""
}
"""
DescribeStemmingOptions(args) = cloudsearch("DescribeStemmingOptions", args)

"""
    DefineIndexField()

Configures an IndexField for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.

Required Parameters
{
  "DomainName": "",
  "IndexField": ""
}
"""
DefineIndexField(args) = cloudsearch("DefineIndexField", args)

"""
    UpdateDefaultSearchField()

Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. 

Required Parameters
{
  "DomainName": "",
  "DefaultSearchField": "The text field to search if the search request does not specify which field to search. The default search field is used when search terms are specified with the q parameter, or if a match expression specified with the bq parameter does not constrain the search to a particular field. The default is an empty string, which automatically searches all text fields."
}
"""
UpdateDefaultSearchField(args) = cloudsearch("UpdateDefaultSearchField", args)

"""
    DescribeIndexFields()

Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.

Required Parameters
{
  "DomainName": ""
}

Optional Parameters
{
  "FieldNames": "Limits the DescribeIndexFields response to the specified fields."
}
"""
DescribeIndexFields(args) = cloudsearch("DescribeIndexFields", args)

"""
    DescribeDefaultSearchField()

Gets the default search field configured for the search domain.

Required Parameters
{
  "DomainName": ""
}
"""
DescribeDefaultSearchField(args) = cloudsearch("DescribeDefaultSearchField", args)

"""
    DeleteIndexField()

Removes an IndexField from the search domain.

Required Parameters
{
  "DomainName": "",
  "IndexFieldName": ""
}
"""
DeleteIndexField(args) = cloudsearch("DeleteIndexField", args)

"""
    UpdateStemmingOptions()

Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.

Required Parameters
{
  "DomainName": "",
  "Stems": ""
}
"""
UpdateStemmingOptions(args) = cloudsearch("UpdateStemmingOptions", args)

"""
    DescribeRankExpressions()

Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. 

Required Parameters
{
  "DomainName": ""
}

Optional Parameters
{
  "RankNames": "Limits the DescribeRankExpressions response to the specified fields."
}
"""
DescribeRankExpressions(args) = cloudsearch("DescribeRankExpressions", args)

"""
    UpdateStopwordOptions()

Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.

Required Parameters
{
  "DomainName": "",
  "Stopwords": ""
}
"""
UpdateStopwordOptions(args) = cloudsearch("UpdateStopwordOptions", args)

"""
    DescribeStopwordOptions()

Gets the stopwords configured for the search domain.

Required Parameters
{
  "DomainName": ""
}
"""
DescribeStopwordOptions(args) = cloudsearch("DescribeStopwordOptions", args)

"""
    DeleteDomain()

Permanently deletes a search domain and all of its data.

Required Parameters
{
  "DomainName": ""
}
"""
DeleteDomain(args) = cloudsearch("DeleteDomain", args)

"""
    DefineRankExpression()

Configures a RankExpression for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.

Required Parameters
{
  "DomainName": "",
  "RankExpression": ""
}
"""
DefineRankExpression(args) = cloudsearch("DefineRankExpression", args)

"""
    DeleteRankExpression()

Removes a RankExpression from the search domain.

Required Parameters
{
  "DomainName": "",
  "RankName": "The name of the RankExpression to delete."
}
"""
DeleteRankExpression(args) = cloudsearch("DeleteRankExpression", args)

"""
    UpdateSynonymOptions()

Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. 

Required Parameters
{
  "DomainName": "",
  "Synonyms": ""
}
"""
UpdateSynonymOptions(args) = cloudsearch("UpdateSynonymOptions", args)

"""
    CreateDomain()

Creates a new search domain.

Required Parameters
{
  "DomainName": ""
}
"""
CreateDomain(args) = cloudsearch("CreateDomain", args)

"""
    IndexDocuments()

Tells the search domain to start indexing its documents using the latest text processing options and IndexFields. This operation must be invoked to make options whose OptionStatus has OptionState of RequiresIndexDocuments visible in search results.

Required Parameters
{
  "DomainName": ""
}
"""
IndexDocuments(args) = cloudsearch("IndexDocuments", args)
