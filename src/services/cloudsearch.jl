include("../AWSCorePrototypeServices.jl")
using .Services: cloudsearch

"""
Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.

Required Parameters:
DomainName, AccessPolicies
"""
UpdateServiceAccessPolicies(args) = cloudsearch("UpdateServiceAccessPolicies", args)

"""
Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.

Required Parameters:
DomainName, MultiAZ
"""
UpdateAvailabilityOptions(args) = cloudsearch("UpdateAvailabilityOptions", args)

"""
Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.
"""
DescribeDomains() = cloudsearch("DescribeDomains")

"""
Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.

Required Parameters:
DomainName
"""
DescribeAvailabilityOptions(args) = cloudsearch("DescribeAvailabilityOptions", args)

"""
Gets information about the resource-based policies that control access to the domain's document and search services.

Required Parameters:
DomainName
"""
DescribeServiceAccessPolicies(args) = cloudsearch("DescribeServiceAccessPolicies", args)

"""
Gets the synonym dictionary configured for the search domain.

Required Parameters:
DomainName
"""
DescribeSynonymOptions(args) = cloudsearch("DescribeSynonymOptions", args)

"""
Gets the stemming dictionary configured for the search domain.

Required Parameters:
DomainName
"""
DescribeStemmingOptions(args) = cloudsearch("DescribeStemmingOptions", args)

"""
Configures an IndexField for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.

Required Parameters:
DomainName, IndexField
"""
DefineIndexField(args) = cloudsearch("DefineIndexField", args)

"""
Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. 

Required Parameters:
DomainName, DefaultSearchField
"""
UpdateDefaultSearchField(args) = cloudsearch("UpdateDefaultSearchField", args)

"""
Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.

Required Parameters:
DomainName
"""
DescribeIndexFields(args) = cloudsearch("DescribeIndexFields", args)

"""
Gets the default search field configured for the search domain.

Required Parameters:
DomainName
"""
DescribeDefaultSearchField(args) = cloudsearch("DescribeDefaultSearchField", args)

"""
Removes an IndexField from the search domain.

Required Parameters:
DomainName, IndexFieldName
"""
DeleteIndexField(args) = cloudsearch("DeleteIndexField", args)

"""
Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.

Required Parameters:
DomainName, Stems
"""
UpdateStemmingOptions(args) = cloudsearch("UpdateStemmingOptions", args)

"""
Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. 

Required Parameters:
DomainName
"""
DescribeRankExpressions(args) = cloudsearch("DescribeRankExpressions", args)

"""
Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.

Required Parameters:
DomainName, Stopwords
"""
UpdateStopwordOptions(args) = cloudsearch("UpdateStopwordOptions", args)

"""
Gets the stopwords configured for the search domain.

Required Parameters:
DomainName
"""
DescribeStopwordOptions(args) = cloudsearch("DescribeStopwordOptions", args)

"""
Permanently deletes a search domain and all of its data.

Required Parameters:
DomainName
"""
DeleteDomain(args) = cloudsearch("DeleteDomain", args)

"""
Configures a RankExpression for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.

Required Parameters:
DomainName, RankExpression
"""
DefineRankExpression(args) = cloudsearch("DefineRankExpression", args)

"""
Removes a RankExpression from the search domain.

Required Parameters:
DomainName, RankName
"""
DeleteRankExpression(args) = cloudsearch("DeleteRankExpression", args)

"""
Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. 

Required Parameters:
DomainName, Synonyms
"""
UpdateSynonymOptions(args) = cloudsearch("UpdateSynonymOptions", args)

"""
Creates a new search domain.

Required Parameters:
DomainName
"""
CreateDomain(args) = cloudsearch("CreateDomain", args)

"""
Tells the search domain to start indexing its documents using the latest text processing options and IndexFields. This operation must be invoked to make options whose OptionStatus has OptionState of RequiresIndexDocuments visible in search results.

Required Parameters:
DomainName
"""
IndexDocuments(args) = cloudsearch("IndexDocuments", args)
