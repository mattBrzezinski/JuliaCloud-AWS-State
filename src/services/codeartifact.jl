include("../AWSCorePrototypeServices.jl")
using .Services: codeartifact

"""
    ListPackageVersionAssets()

 Returns a list of  AssetSummary  objects for assets in a package version. 

Required Parameters
{
  "format": " The format of the package that contains the returned package version assets. The valid package types are:     npm: A Node Package Manager (npm) package.     pypi: A Python Package Index (PyPI) package.     maven: A Maven package that contains compiled code in a distributable format, such as a JAR file.   ",
  "domain": " The name of the domain that contains the repository associated with the package version assets. ",
  "package": " The name of the package that contains the returned package version assets. ",
  "packageVersion": " A string that contains the package version (for example, 3.5.2). ",
  "repository": " The name of the repository that contains the package that contains the returned package version assets. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "maxResults": " The maximum number of results to return per page. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. "
}
"""
ListPackageVersionAssets(args) = codeartifact("POST", "/v1/package/version/assets", args)

"""
    CreateRepository()

 Creates a repository. 

Required Parameters
{
  "domain": " The domain that contains the created repository. ",
  "repository": " The name of the repository to create. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "description": " A description of the created repository. ",
  "upstreams": " A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more information, see Working with upstream repositories. "
}
"""
CreateRepository(args) = codeartifact("POST", "/v1/repository", args)

"""
    DeleteRepository()

 Deletes a repository. 

Required Parameters
{
  "domain": " The name of the domain that contains the repository to delete. ",
  "repository": " The name of the repository to delete. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DeleteRepository(args) = codeartifact("DELETE", "/v1/repository", args)

"""
    ListPackageVersions()

 Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters. 

Required Parameters
{
  "format": " The format of the returned packages. The valid package types are:     npm: A Node Package Manager (npm) package.     pypi: A Python Package Index (PyPI) package.     maven: A Maven package that contains compiled code in a distributable format, such as a JAR file.   ",
  "domain": " The name of the domain that contains the repository that contains the returned package versions. ",
  "package": " The name of the package for which you want to return a list of package versions. ",
  "repository": " The name of the repository that contains the package. "
}

Optional Parameters
{
  "sortBy": " How to sort the returned list of package versions. ",
  "status": " A string that specifies the status of the package versions to include in the returned list. It can be one of the following:     Published     Unfinished     Unlisted     Archived     Disposed   ",
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "maxResults": " The maximum number of results to return per page. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. "
}
"""
ListPackageVersions(args) = codeartifact("POST", "/v1/package/versions", args)

"""
    DisposePackageVersions()

 Deletes the assets in package versions and sets the package versions' status to Disposed. A disposed package version cannot be restored in your repository because its assets are deleted.   To view all disposed package versions in a repository, use  ListackageVersions  and set the  status  parameter to Disposed.   To view information about a disposed package version, use  ListPackageVersions  and set the  status  parameter to Disposed. 

Required Parameters
{
  "format": " A format that specifies the type of package versions you want to dispose. The valid values are:     npm     pypi     maven   ",
  "domain": " The name of the domain that contains the repository you want to dispose. ",
  "versions": " The versions of the package you want to dispose. ",
  "package": " The name of the package with the versions you want to dispose. ",
  "repository": " The name of the repository that contains the package versions you want to dispose. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "versionRevisions": " The revisions of the package versions you want to dispose. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "expectedStatus": " The expected status of the package version to dispose. Valid values are:     Published     Unfinished     Unlisted     Archived     Disposed   "
}
"""
DisposePackageVersions(args) = codeartifact("POST", "/v1/package/versions/dispose", args)

"""
    DeleteDomainPermissionsPolicy()

 Deletes the resource policy set on a domain. 

Required Parameters
{
  "domain": " The name of the domain associated with the resource policy to be deleted. "
}

Optional Parameters
{
  "policyRevision": " The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DeleteDomainPermissionsPolicy(args) = codeartifact("DELETE", "/v1/domain/permissions/policy", args)

"""
    DescribeDomain()

 Returns a  DomainDescription  object that contains information about the requested domain. 

Required Parameters
{
  "domain": " A string that specifies the name of the requested domain. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DescribeDomain(args) = codeartifact("GET", "/v1/domain", args)

"""
    DescribePackageVersion()

 Returns a  PackageVersionDescription  object that contains information about the requested package version. 

Required Parameters
{
  "format": " A format that specifies the type of the requested package version. The valid values are:     npm     pypi     maven   ",
  "domain": " The name of the domain that contains the repository that contains the package version. ",
  "package": " The name of the requested package version. ",
  "packageVersion": " A string that contains the package version (for example, 3.5.2). ",
  "repository": " The name of the repository that contains the package version. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DescribePackageVersion(args) = codeartifact("GET", "/v1/package/version", args)

"""
    GetAuthorizationToken()

 Generates a temporary authentication token for accessing repositories in the domain. This API requires the codeartifact:GetAuthorizationToken and sts:GetServiceBearerToken permissions.   CodeArtifact authorization tokens are valid for a period of 12 hours when created with the login command. You can call login periodically to refresh the token. When you create an authorization token with the GetAuthorizationToken API, you can set a custom authorization period, up to a maximum of 12 hours, with the durationSeconds parameter. The authorization period begins after login or GetAuthorizationToken is called. If login or GetAuthorizationToken is called while assuming a role, the token lifetime is independent of the maximum session duration of the role. For example, if you call sts assume-role and specify a session duration of 15 minutes, then generate a CodeArtifact authorization token, the token will be valid for the full authorization period even though this is longer than the 15-minute session duration. See Using IAM Roles for more information on controlling session duration.  

Required Parameters
{
  "domain": " The name of the domain that is in scope for the generated authorization token. "
}

Optional Parameters
{
  "durationSeconds": "The time, in seconds, that the generated authorization token is valid.",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
GetAuthorizationToken(args) = codeartifact("POST", "/v1/authorization-token", args)

"""
    ListDomains()

 Returns a list of  DomainSummary  objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain. 

Optional Parameters
{
  "maxResults": " The maximum number of results to return per page. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. "
}
"""

ListDomains() = codeartifact("POST", "/v1/domains")
ListDomains(args) = codeartifact("POST", "/v1/domains", args)

"""
    ListRepositoriesInDomain()

 Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input parameters. 

Required Parameters
{
  "domain": " The name of the domain that contains the returned list of repositories. "
}

Optional Parameters
{
  "administratorAccount": " Filter the list of repositories to only include those that are managed by the AWS account ID. ",
  "maxResults": " The maximum number of results to return per page. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. ",
  "repositoryPrefix": " A prefix used to filter returned repositories. Only repositories with names that start with repositoryPrefix are returned. "
}
"""
ListRepositoriesInDomain(args) = codeartifact("POST", "/v1/domain/repositories", args)

"""
    CopyPackageVersions()

 Copies package versions from one repository to another repository in the same domain.    You must specify versions or versionRevisions. You cannot specify both.  

Required Parameters
{
  "format": " The format of the package that is copied. The valid package types are:     npm: A Node Package Manager (npm) package.     pypi: A Python Package Index (PyPI) package.     maven: A Maven package that contains compiled code in a distributable format, such as a JAR file.   ",
  "domain": " The name of the domain that contains the source and destination repositories. ",
  "sourceRepository": " The name of the repository that contains the package versions to copy. ",
  "package": " The name of the package that is copied. ",
  "destinationRepository": " The name of the repository into which package versions are copied. "
}

Optional Parameters
{
  "includeFromUpstream": " Set to true to copy packages from repositories that are upstream from the source repository to the destination repository. The default setting is false. For more information, see Working with upstream repositories. ",
  "allowOverwrite": " Set to true to overwrite a package version that already exists in the destination repository. If set to false and the package version already exists in the destination repository, the package version is returned in the failedVersions field of the response with an ALREADY_EXISTS error code. ",
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "versionRevisions": " A list of key-value pairs. The keys are package versions and the values are package version revisions. A CopyPackageVersion operation succeeds if the specified versions in the source repository match the specified package version revision.    You must specify versions or versionRevisions. You cannot specify both.  ",
  "versions": " The versions of the package to copy.    You must specify versions or versionRevisions. You cannot specify both.  ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
CopyPackageVersions(args) = codeartifact("POST", "/v1/package/versions/copy", args)

"""
    GetRepositoryEndpoint()

 Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each package format:     npm     pypi     maven   

Required Parameters
{
  "format": " Returns which endpoint of a repository to return. A repository has one endpoint for each package format:     npm     pypi     maven   ",
  "domain": " The name of the domain that contains the repository. ",
  "repository": " The name of the repository. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain that contains the repository. It does not include dashes or spaces. "
}
"""
GetRepositoryEndpoint(args) = codeartifact("GET", "/v1/repository/endpoint", args)

"""
    GetRepositoryPermissionsPolicy()

 Returns the resource policy that is set on a repository. 

Required Parameters
{
  "domain": " The name of the domain containing the repository whose associated resource policy is to be retrieved. ",
  "repository": " The name of the repository whose associated resource policy is to be retrieved. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
GetRepositoryPermissionsPolicy(args) = codeartifact("GET", "/v1/repository/permissions/policy", args)

"""
    UpdatePackageVersionsStatus()

 Updates the status of one or more versions of a package. 

Required Parameters
{
  "format": " A format that specifies the type of the package with the statuses to update. The valid values are:     npm     pypi     maven   ",
  "domain": " The domain that contains the repository that contains the package versions with a status to be updated. ",
  "versions": " An array of strings that specify the versions of the package with the statuses to update. ",
  "package": " The name of the package with the version statuses to update. ",
  "repository": " The repository that contains the package versions with the status you want to update. ",
  "targetStatus": " The status you want to change the package version status to. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "versionRevisions": " A map of package versions and package version revisions. The map key is the package version (for example, 3.5.2), and the map value is the package version revision. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "expectedStatus": " The package version’s expected status before it is updated. If expectedStatus is provided, the package version's status is updated only if its status at the time UpdatePackageVersionsStatus is called matches expectedStatus. "
}
"""
UpdatePackageVersionsStatus(args) = codeartifact("POST", "/v1/package/versions/update_status", args)

"""
    DeletePackageVersions()

 Deletes one or more versions of a package. A deleted package version cannot be restored in your repository. If you want to remove a package version from your repository and be able to restore it later, set its status to Archived. Archived packages cannot be downloaded from a repository and don't show up with list package APIs (for example,  ListackageVersions ), but you can restore them using  UpdatePackageVersionsStatus . 

Required Parameters
{
  "format": " The format of the package versions to delete. The valid values are:     npm     pypi     maven   ",
  "domain": " The name of the domain that contains the package to delete. ",
  "versions": " An array of strings that specify the versions of the package to delete. ",
  "package": " The name of the package with the versions to delete. ",
  "repository": " The name of the repository that contains the package versions to delete. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "expectedStatus": " The expected status of the package version to delete. Valid values are:     Published     Unfinished     Unlisted     Archived     Disposed   "
}
"""
DeletePackageVersions(args) = codeartifact("POST", "/v1/package/versions/delete", args)

"""
    DisassociateExternalConnection()

 Removes an existing external connection from a repository. 

Required Parameters
{
  "domain": "The name of the domain that contains the repository from which to remove the external repository. ",
  "externalConnection": "The name of the external connection to be removed from the repository. ",
  "repository": "The name of the repository from which the external connection will be removed. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DisassociateExternalConnection(args) = codeartifact("DELETE", "/v1/repository/external-connection", args)

"""
    GetDomainPermissionsPolicy()

 Returns the resource policy attached to the specified domain.    The policy is a resource-based policy, not an identity-based policy. For more information, see Identity-based policies and resource-based policies  in the AWS Identity and Access Management User Guide.  

Required Parameters
{
  "domain": " The name of the domain to which the resource policy is attached. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
GetDomainPermissionsPolicy(args) = codeartifact("GET", "/v1/domain/permissions/policy", args)

"""
    GetPackageVersionAsset()

 Returns an asset (or file) that is in a package. For example, for a Maven package version, use GetPackageVersionAsset to download a JAR file, a POM file, or any other assets in the package version. 

Required Parameters
{
  "format": " A format that specifies the type of the package version with the requested asset file. The valid values are:     npm     pypi     maven   ",
  "domain": " The domain that contains the repository that contains the package version with the requested asset. ",
  "asset": " The name of the requested asset. ",
  "package": " The name of the package that contains the requested asset. ",
  "packageVersion": " A string that contains the package version (for example, 3.5.2). ",
  "repository": " The repository that contains the package version with the requested asset. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "packageVersionRevision": " The name of the package version revision that contains the requested asset. "
}
"""
GetPackageVersionAsset(args) = codeartifact("GET", "/v1/package/version/asset", args)

"""
    UpdateRepository()

 Update the properties of a repository. 

Required Parameters
{
  "domain": " The name of the domain associated with the repository to update. ",
  "repository": " The name of the repository to update. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "description": " An updated repository description. ",
  "upstreams": " A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more information, see Working with upstream repositories. "
}
"""
UpdateRepository(args) = codeartifact("PUT", "/v1/repository", args)

"""
    AssociateExternalConnection()

Adds an existing external connection to a repository. One external connection is allowed per repository.  A repository can have one or more upstream repositories, or an external connection. 

Required Parameters
{
  "domain": "The name of the domain that contains the repository.",
  "externalConnection": " The name of the external connection to add to the repository. The following values are supported:     public:npmjs - for the npm public repository.     public:pypi - for the Python Package Index.     public:maven-central - for Maven Central.     public:maven-googleandroid - for the Google Android repository.     public:maven-gradleplugins - for the Gradle plugins repository.     public:maven-commonsware - for the CommonsWare Android repository.   ",
  "repository": " The name of the repository to which the external connection is added. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
AssociateExternalConnection(args) = codeartifact("POST", "/v1/repository/external-connection", args)

"""
    DescribeRepository()

 Returns a RepositoryDescription object that contains detailed information about the requested repository. 

Required Parameters
{
  "domain": " The name of the domain that contains the repository to describe. ",
  "repository": " A string that specifies the name of the requested repository. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DescribeRepository(args) = codeartifact("GET", "/v1/repository", args)

"""
    ListRepositories()

 Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input parameters. 

Optional Parameters
{
  "maxResults": " The maximum number of results to return per page. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. ",
  "repositoryPrefix": " A prefix used to filter returned repositories. Only repositories with names that start with repositoryPrefix are returned."
}
"""

ListRepositories() = codeartifact("POST", "/v1/repositories")
ListRepositories(args) = codeartifact("POST", "/v1/repositories", args)

"""
    ListPackageVersionDependencies()

 Returns the direct dependencies for a package version. The dependencies are returned as  PackageDependency  objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package format (for example, the package.json file for npm packages and the pom.xml file for Maven). Any package version dependencies that are not listed in the configuration file are not returned. 

Required Parameters
{
  "format": " The format of the package with the requested dependencies. The valid package types are:     npm: A Node Package Manager (npm) package.     pypi: A Python Package Index (PyPI) package.     maven: A Maven package that contains compiled code in a distributable format, such as a JAR file.   ",
  "domain": " The domain that contains the repository that contains the requested package version dependencies. ",
  "package": " The name of the package versions' package. ",
  "packageVersion": " A string that contains the package version (for example, 3.5.2). ",
  "repository": " The name of the repository that contains the requested package version. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. "
}
"""
ListPackageVersionDependencies(args) = codeartifact("POST", "/v1/package/version/dependencies", args)

"""
    DeleteDomain()

 Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain with repositories, first delete its repositories. 

Required Parameters
{
  "domain": " The name of the domain to delete. "
}

Optional Parameters
{
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DeleteDomain(args) = codeartifact("DELETE", "/v1/domain", args)

"""
    PutDomainPermissionsPolicy()

 Sets a resource policy on a domain that specifies permissions to access it. 

Required Parameters
{
  "policyDocument": " A valid displayable JSON Aspen policy string to be set as the access control resource policy on the provided domain. ",
  "domain": " The name of the domain on which to set the resource policy. "
}

Optional Parameters
{
  "policyRevision": " The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
PutDomainPermissionsPolicy(args) = codeartifact("PUT", "/v1/domain/permissions/policy", args)

"""
    PutRepositoryPermissionsPolicy()

 Sets the resource policy on a repository that specifies permissions to access it. 

Required Parameters
{
  "policyDocument": " A valid displayable JSON Aspen policy string to be set as the access control resource policy on the provided repository. ",
  "domain": " The name of the domain containing the repository to set the resource policy on. ",
  "repository": " The name of the repository to set the resource policy on. "
}

Optional Parameters
{
  "policyRevision": " Sets the revision of the resource policy that specifies permissions to access the repository. This revision is used for optimistic locking, which prevents others from overwriting your changes to the repository's resource policy. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
PutRepositoryPermissionsPolicy(args) = codeartifact("PUT", "/v1/repository/permissions/policy", args)

"""
    DeleteRepositoryPermissionsPolicy()

 Deletes the resource policy that is set on a repository. After a resource policy is deleted, the permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate.    Use DeleteRepositoryPermissionsPolicy with caution. After a policy is deleted, AWS users, roles, and accounts lose permissions to perform the repository actions granted by the deleted policy.  

Required Parameters
{
  "domain": " The name of the domain that contains the repository associated with the resource policy to be deleted. ",
  "repository": " The name of the repository that is associated with the resource policy to be deleted "
}

Optional Parameters
{
  "policyRevision": " The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which prevents others from accidentally overwriting your changes to the repository's resource policy. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
DeleteRepositoryPermissionsPolicy(args) = codeartifact("DELETE", "/v1/repository/permissions/policies", args)

"""
    ListPackages()

 Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters. 

Required Parameters
{
  "domain": " The domain that contains the repository that contains the requested list of packages. ",
  "repository": " The name of the repository from which packages are to be listed. "
}

Optional Parameters
{
  "format": " The format of the packages. The valid package types are:     npm: A Node Package Manager (npm) package.     pypi: A Python Package Index (PyPI) package.     maven: A Maven package that contains compiled code in a distributable format, such as a JAR file.   ",
  "packagePrefix": " A prefix used to filter returned repositories. Only repositories with names that start with repositoryPrefix are returned. ",
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "maxResults": " The maximum number of results to return per page. ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. ",
  "nextToken": " The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. "
}
"""
ListPackages(args) = codeartifact("POST", "/v1/packages", args)

"""
    GetPackageVersionReadme()

 Gets the readme file or descriptive text for a package version. For packages that do not contain a readme file, CodeArtifact extracts a description from a metadata file. For example, from the &lt;description&gt; element in the pom.xml file of a Maven package.   The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText. 

Required Parameters
{
  "format": " A format that specifies the type of the package version with the requested readme file. The valid values are:     npm     pypi     maven   ",
  "domain": " The name of the domain that contains the repository that contains the package version with the requested readme file. ",
  "package": " The name of the package version that contains the requested readme file. ",
  "packageVersion": " A string that contains the package version (for example, 3.5.2). ",
  "repository": " The repository that contains the package with the requested readme file. "
}

Optional Parameters
{
  "namespace": " The namespace of the package. The package component that specifies its namespace depends on its type. For example:     The namespace of a Maven package is its groupId.     The namespace of an npm package is its scope.     A Python package does not contain a corresponding component, so Python packages do not have a namespace.   ",
  "domainOwner": " The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. "
}
"""
GetPackageVersionReadme(args) = codeartifact("GET", "/v1/package/version/readme", args)

"""
    CreateDomain()

 Creates a domain. CodeArtifact domains make it easier to manage multiple repositories across an organization. You can use a domain to apply permissions across many repositories owned by different AWS accounts. An asset is stored only once in a domain, even if it's in multiple repositories.  Although you can have multiple domains, we recommend a single production domain that contains all published artifacts so that your development teams can find and share packages. You can use a second pre-production domain to test changes to the production domain configuration. 

Required Parameters
{
  "domain": " The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable. "
}

Optional Parameters
{
  "encryptionKey": " The encryption key for the domain. This is used to encrypt content stored in a domain. An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key alias ARN. To specify an encryptionKey, your IAM role must have kms:DescribeKey and kms:CreateGrant permissions on the encryption key that is used. For more information, see DescribeKey in the AWS Key Management Service API Reference and AWS KMS API Permissions Reference in the AWS Key Management Service Developer Guide.    CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your domain. For more information, see Using symmetric and asymmetric keys in the AWS Key Management Service Developer Guide.  "
}
"""
CreateDomain(args) = codeartifact("POST", "/v1/domain", args)
