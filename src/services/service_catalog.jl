include("../AWSCorePrototypeServices.jl")
using .Services: service_catalog

"""
Disassociates the specified self-service action association from the specified provisioning artifact.

Required Parameters:
ProductId, ProvisioningArtifactId, ServiceActionId
"""
DisassociateServiceActionFromProvisioningArtifact(args) = service_catalog("DisassociateServiceActionFromProvisioningArtifact", args)

"""
Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.

Required Parameters:
ProductId
"""
ListLaunchPaths(args) = service_catalog("ListLaunchPaths", args)

"""
Rejects an offer to share the specified portfolio.

Required Parameters:
PortfolioId
"""
RejectPortfolioShare(args) = service_catalog("RejectPortfolioShare", args)

"""
Creates a constraint.

Required Parameters:
PortfolioId, ProductId, Parameters, Type, IdempotencyToken
"""
CreateConstraint(args) = service_catalog("CreateConstraint", args)

"""
Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed. You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED. To view the resource changes in the change set, use DescribeProvisionedProductPlan. To create or modify the provisioned product, use ExecuteProvisionedProductPlan.

Required Parameters:
PlanName, PlanType, ProductId, ProvisionedProductName, ProvisioningArtifactId, IdempotencyToken
"""
CreateProvisionedProductPlan(args) = service_catalog("CreateProvisionedProductPlan", args)

"""
Creates a TagOption.

Required Parameters:
Key, Value
"""
CreateTagOption(args) = service_catalog("CreateTagOption", args)

"""
Gets information about the specified product.

Required Parameters:
Id
"""
DescribeProduct(args) = service_catalog("DescribeProduct", args)

"""
Accepts an offer to share the specified portfolio.

Required Parameters:
PortfolioId
"""
AcceptPortfolioShare(args) = service_catalog("AcceptPortfolioShare", args)

"""
Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.

Required Parameters:
ProductId, ProvisioningArtifactId
"""
ListServiceActionsForProvisioningArtifact(args) = service_catalog("ListServiceActionsForProvisioningArtifact", args)

"""
Associates a self-service action with a provisioning artifact.

Required Parameters:
ProductId, ProvisioningArtifactId, ServiceActionId
"""
AssociateServiceActionWithProvisioningArtifact(args) = service_catalog("AssociateServiceActionWithProvisioningArtifact", args)

"""
Deletes the specified constraint.

Required Parameters:
Id
"""
DeleteConstraint(args) = service_catalog("DeleteConstraint", args)

"""
Disassociates a previously associated principal ARN from a specified portfolio.

Required Parameters:
PortfolioId, PrincipalARN
"""
DisassociatePrincipalFromPortfolio(args) = service_catalog("DisassociatePrincipalFromPortfolio", args)

"""
Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization.

Required Parameters:
PortfolioId, OrganizationNodeType
"""
ListOrganizationPortfolioAccess(args) = service_catalog("ListOrganizationPortfolioAccess", args)

"""
Creates a self-service action.

Required Parameters:
Name, DefinitionType, Definition, IdempotencyToken
"""
CreateServiceAction(args) = service_catalog("CreateServiceAction", args)

"""
Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.
"""
DisableAWSOrganizationsAccess() = service_catalog("DisableAWSOrganizationsAccess")

"""
Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization.
"""
GetAWSOrganizationsAccessStatus() = service_catalog("GetAWSOrganizationsAccessStatus")

"""
Disassociates a batch of self-service actions from the specified provisioning artifact.

Required Parameters:
ServiceActionAssociations
"""
BatchDisassociateServiceActionFromProvisioningArtifact(args) = service_catalog("BatchDisassociateServiceActionFromProvisioningArtifact", args)

"""
Associates the specified product with the specified portfolio.

Required Parameters:
ProductId, PortfolioId
"""
AssociateProductWithPortfolio(args) = service_catalog("AssociateProductWithPortfolio", args)

"""
Creates a product.

Required Parameters:
Name, Owner, ProductType, ProvisioningArtifactParameters, IdempotencyToken
"""
CreateProduct(args) = service_catalog("CreateProduct", args)

"""
Updates the specified TagOption.

Required Parameters:
Id
"""
UpdateTagOption(args) = service_catalog("UpdateTagOption", args)

"""
Copies the specified source product to the specified target product or a new product. You can copy a product to the same account or another account. You can copy a product to the same region or another region. This operation is performed asynchronously. To track the progress of the operation, use DescribeCopyProductStatus.

Required Parameters:
SourceProductArn, IdempotencyToken
"""
CopyProduct(args) = service_catalog("CopyProduct", args)

"""
Lists all portfolios that the specified product is associated with.

Required Parameters:
ProductId
"""
ListPortfoliosForProduct(args) = service_catalog("ListPortfoliosForProduct", args)

"""
Gets information about the configuration required to provision the specified product using the specified provisioning artifact. If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to ProvisionProduct, do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value". Tag the provisioned product with the value sc-tagoption-conflict-portfolioId-productId.

Required Parameters:
ProductId, ProvisioningArtifactId
"""
DescribeProvisioningParameters(args) = service_catalog("DescribeProvisioningParameters", args)

"""
Lists the plans for the specified provisioned product or all plans to which the user has access.
"""
ListProvisionedProductPlans() = service_catalog("ListProvisionedProductPlans")

"""
Provisions the specified product. A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using DescribeRecord. If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value".

Required Parameters:
ProductId, ProvisioningArtifactId, ProvisionedProductName, ProvisionToken
"""
ProvisionProduct(args) = service_catalog("ProvisionProduct", args)

"""
Lists all portfolios in the catalog.
"""
ListPortfolios() = service_catalog("ListPortfolios")

"""


Required Parameters:
ProvisionedProductId, ServiceActionId
"""
DescribeServiceActionExecutionParameters(args) = service_catalog("DescribeServiceActionExecutionParameters", args)

"""
Lists the provisioned products that are available (not terminated). To use additional filtering, see SearchProvisionedProducts.
"""
ScanProvisionedProducts() = service_catalog("ScanProvisionedProducts")

"""
Associates the specified principal ARN with the specified portfolio.

Required Parameters:
PortfolioId, PrincipalARN, PrincipalType
"""
AssociatePrincipalWithPortfolio(args) = service_catalog("AssociatePrincipalWithPortfolio", args)

"""
Provisions or modifies a product based on the resource changes for the specified plan.

Required Parameters:
PlanId, IdempotencyToken
"""
ExecuteProvisionedProductPlan(args) = service_catalog("ExecuteProvisionedProductPlan", args)

"""
Lists all principal ARNs associated with the specified portfolio.

Required Parameters:
PortfolioId
"""
ListPrincipalsForPortfolio(args) = service_catalog("ListPrincipalsForPortfolio", args)

"""
Lists the specified TagOptions or all TagOptions.
"""
ListTagOptions() = service_catalog("ListTagOptions")

"""
Disassociates the specified TagOption from the specified resource.

Required Parameters:
ResourceId, TagOptionId
"""
DisassociateTagOptionFromResource(args) = service_catalog("DisassociateTagOptionFromResource", args)

"""
Requests updates to the properties of the specified provisioned product.

Required Parameters:
ProvisionedProductId, ProvisionedProductProperties, IdempotencyToken
"""
UpdateProvisionedProductProperties(args) = service_catalog("UpdateProvisionedProductProperties", args)

"""
Gets information about the specified product. This operation is run with administrator access.

Required Parameters:
Id
"""
DescribeProductAsAdmin(args) = service_catalog("DescribeProductAsAdmin", args)

"""
Deletes a self-service action.

Required Parameters:
Id
"""
DeleteServiceAction(args) = service_catalog("DeleteServiceAction", args)

"""
Lists all provisioning artifacts (also known as versions) for the specified self-service action.

Required Parameters:
ServiceActionId
"""
ListProvisioningArtifactsForServiceAction(args) = service_catalog("ListProvisioningArtifactsForServiceAction", args)

"""
Deletes the specified provisioning artifact (also known as a version) for the specified product. You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.

Required Parameters:
ProductId, ProvisioningArtifactId
"""
DeleteProvisioningArtifact(args) = service_catalog("DeleteProvisioningArtifact", args)

"""
Lists all self-service actions.
"""
ListServiceActions() = service_catalog("ListServiceActions")

"""
Terminates the specified provisioned product. This operation does not delete any records associated with the provisioned product. You can check the status of this request using DescribeRecord.

Required Parameters:
TerminateToken
"""
TerminateProvisionedProduct(args) = service_catalog("TerminateProvisionedProduct", args)

"""
Creates a portfolio.

Required Parameters:
DisplayName, ProviderName, IdempotencyToken
"""
CreatePortfolio(args) = service_catalog("CreatePortfolio", args)

"""
Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an Organization.

Required Parameters:
PortfolioId
"""
DeletePortfolioShare(args) = service_catalog("DeletePortfolioShare", args)

"""
Requests updates to the configuration of the specified provisioned product. If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely. You can check the status of this request using DescribeRecord.

Required Parameters:
UpdateToken
"""
UpdateProvisionedProduct(args) = service_catalog("UpdateProvisionedProduct", args)

"""
Gets information about the provisioned products that meet the specified criteria.
"""
SearchProvisionedProducts() = service_catalog("SearchProvisionedProducts")

"""
Gets information about the specified product.

Required Parameters:
Id
"""
DescribeProductView(args) = service_catalog("DescribeProductView", args)

"""
Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization. By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
"""
EnableAWSOrganizationsAccess() = service_catalog("EnableAWSOrganizationsAccess")

"""
Updates the specified portfolio. You cannot update a product that was shared with you.

Required Parameters:
Id
"""
UpdatePortfolio(args) = service_catalog("UpdatePortfolio", args)

"""
Gets information about the specified constraint.

Required Parameters:
Id
"""
DescribeConstraint(args) = service_catalog("DescribeConstraint", args)

"""
Lists the specified requests or all performed requests.
"""
ListRecordHistory() = service_catalog("ListRecordHistory")

"""
Updates a self-service action.

Required Parameters:
Id
"""
UpdateServiceAction(args) = service_catalog("UpdateServiceAction", args)

"""
Lists all the budgets associated to the specified resource.

Required Parameters:
ResourceId
"""
ListBudgetsForResource(args) = service_catalog("ListBudgetsForResource", args)

"""
Creates a provisioning artifact (also known as a version) for the specified product. You cannot create a provisioning artifact for a product that was shared with you.

Required Parameters:
ProductId, Parameters, IdempotencyToken
"""
CreateProvisioningArtifact(args) = service_catalog("CreateProvisioningArtifact", args)

"""
Updates the specified constraint.

Required Parameters:
Id
"""
UpdateConstraint(args) = service_catalog("UpdateConstraint", args)

"""
Gets information about the specified portfolio.

Required Parameters:
Id
"""
DescribePortfolio(args) = service_catalog("DescribePortfolio", args)

"""
Deletes the specified product. You cannot delete a product if it was shared with you or is associated with a portfolio.

Required Parameters:
Id
"""
DeleteProduct(args) = service_catalog("DeleteProduct", args)

"""
Associate the specified TagOption with the specified portfolio or product.

Required Parameters:
ResourceId, TagOptionId
"""
AssociateTagOptionWithResource(args) = service_catalog("AssociateTagOptionWithResource", args)

"""
Associates multiple self-service actions with provisioning artifacts.

Required Parameters:
ServiceActionAssociations
"""
BatchAssociateServiceActionWithProvisioningArtifact(args) = service_catalog("BatchAssociateServiceActionWithProvisioningArtifact", args)

"""
Gets information about the specified TagOption.

Required Parameters:
Id
"""
DescribeTagOption(args) = service_catalog("DescribeTagOption", args)

"""
Executes a self-service action against a provisioned product.

Required Parameters:
ProvisionedProductId, ServiceActionId, ExecuteToken
"""
ExecuteProvisionedProductServiceAction(args) = service_catalog("ExecuteProvisionedProductServiceAction", args)

"""
Gets information about the specified provisioning artifact (also known as a version) for the specified product.

Required Parameters:
ProvisioningArtifactId, ProductId
"""
DescribeProvisioningArtifact(args) = service_catalog("DescribeProvisioningArtifact", args)

"""
Gets information about the resource changes for the specified plan.

Required Parameters:
PlanId
"""
DescribeProvisionedProductPlan(args) = service_catalog("DescribeProvisionedProductPlan", args)

"""
Gets information about the specified request operation. Use this operation after calling a request operation (for example, ProvisionProduct, TerminateProvisionedProduct, or UpdateProvisionedProduct).   If a provisioned product was transferred to a new owner using UpdateProvisionedProductProperties, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use ListRecordHistory to see the product's history from when he was the owner. 

Required Parameters:
Id
"""
DescribeRecord(args) = service_catalog("DescribeRecord", args)

"""
Deletes the specified TagOption. You cannot delete a TagOption if it is associated with a product or portfolio.

Required Parameters:
Id
"""
DeleteTagOption(args) = service_catalog("DeleteTagOption", args)

"""
Deletes the specified plan.

Required Parameters:
PlanId
"""
DeleteProvisionedProductPlan(args) = service_catalog("DeleteProvisionedProductPlan", args)

"""
Gets information about the products to which the caller has access.
"""
SearchProducts() = service_catalog("SearchProducts")

"""
Gets information about the specified provisioned product.

Required Parameters:
Id
"""
DescribeProvisionedProduct(args) = service_catalog("DescribeProvisionedProduct", args)

"""
Disassociates the specified budget from the specified resource.

Required Parameters:
BudgetName, ResourceId
"""
DisassociateBudgetFromResource(args) = service_catalog("DisassociateBudgetFromResource", args)

"""
Gets the status of the specified copy product operation.

Required Parameters:
CopyProductToken
"""
DescribeCopyProductStatus(args) = service_catalog("DescribeCopyProductStatus", args)

"""
Disassociates the specified product from the specified portfolio. 

Required Parameters:
ProductId, PortfolioId
"""
DisassociateProductFromPortfolio(args) = service_catalog("DisassociateProductFromPortfolio", args)

"""
Describes a self-service action.

Required Parameters:
Id
"""
DescribeServiceAction(args) = service_catalog("DescribeServiceAction", args)

"""
Lists the resources associated with the specified TagOption.

Required Parameters:
TagOptionId
"""
ListResourcesForTagOption(args) = service_catalog("ListResourcesForTagOption", args)

"""
Lists all provisioning artifacts (also known as versions) for the specified product.

Required Parameters:
ProductId
"""
ListProvisioningArtifacts(args) = service_catalog("ListProvisioningArtifacts", args)

"""
Deletes the specified portfolio. You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.

Required Parameters:
Id
"""
DeletePortfolio(args) = service_catalog("DeletePortfolio", args)

"""
Lists all portfolios for which sharing was accepted by this account.
"""
ListAcceptedPortfolioShares() = service_catalog("ListAcceptedPortfolioShares")

"""
Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. 

Required Parameters:
ProvisionedProductId
"""
ListStackInstancesForProvisionedProduct(args) = service_catalog("ListStackInstancesForProvisionedProduct", args)

"""
Updates the specified product.

Required Parameters:
Id
"""
UpdateProduct(args) = service_catalog("UpdateProduct", args)

"""
Associates the specified budget with the specified resource.

Required Parameters:
BudgetName, ResourceId
"""
AssociateBudgetWithResource(args) = service_catalog("AssociateBudgetWithResource", args)

"""
Gets information about the products for the specified portfolio or all products.
"""
SearchProductsAsAdmin() = service_catalog("SearchProductsAsAdmin")

"""
Lists the account IDs that have access to the specified portfolio.

Required Parameters:
PortfolioId
"""
ListPortfolioAccess(args) = service_catalog("ListPortfolioAccess", args)

"""
Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization.

Required Parameters:
PortfolioShareToken
"""
DescribePortfolioShareStatus(args) = service_catalog("DescribePortfolioShareStatus", args)

"""
Lists the constraints for the specified portfolio and product.

Required Parameters:
PortfolioId
"""
ListConstraintsForPortfolio(args) = service_catalog("ListConstraintsForPortfolio", args)

"""
Updates the specified provisioning artifact (also known as a version) for the specified product. You cannot update a provisioning artifact for a product that was shared with you.

Required Parameters:
ProductId, ProvisioningArtifactId
"""
UpdateProvisioningArtifact(args) = service_catalog("UpdateProvisioningArtifact", args)

"""
Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an Organization. AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.

Required Parameters:
PortfolioId
"""
CreatePortfolioShare(args) = service_catalog("CreatePortfolioShare", args)
