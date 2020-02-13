include("../AWSCorePrototypeServices.jl")
using .Services: service_catalog

"""
    DisassociateServiceActionFromProvisioningArtifact()

Disassociates the specified self-service action association from the specified provisioning artifact.

Required Parameters
{
  "ProductId": "The product identifier. For example, prod-abcdzk7xy33qa.",
  "ServiceActionId": "The self-service action identifier. For example, act-fs7abcd89wxyz.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DisassociateServiceActionFromProvisioningArtifact(args) = service_catalog("DisassociateServiceActionFromProvisioningArtifact", args)

"""
    ListLaunchPaths()

Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.

Required Parameters
{
  "ProductId": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListLaunchPaths(args) = service_catalog("ListLaunchPaths", args)

"""
    RejectPortfolioShare()

Rejects an offer to share the specified portfolio.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PortfolioShareType": "The type of shared portfolios to reject. The default is to reject imported portfolios.    AWS_ORGANIZATIONS - Reject portfolios shared by the master account of your organization.    IMPORTED - Reject imported portfolios.    AWS_SERVICECATALOG - Not supported. (Throws ResourceNotFoundException.)   For example, aws servicecatalog reject-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS "
}
"""
RejectPortfolioShare(args) = service_catalog("RejectPortfolioShare", args)

"""
    CreateConstraint()

Creates a constraint.

Required Parameters
{
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "ProductId": "The product identifier.",
  "Parameters": "The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:  LAUNCH  Specify the RoleArn property as follows:  {\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}  You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one LAUNCH constraint on a product and portfolio.  NOTIFICATION  Specify the NotificationArns property as follows:  {\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}   RESOURCE_UPDATE  Specify the TagUpdatesOnProvisionedProduct property as follows:  {\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}  The TagUpdatesOnProvisionedProduct property accepts a string value of ALLOWED or NOT_ALLOWED.  STACKSET  Specify the Parameters property as follows:  {\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}  You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one STACKSET constraint on a product and portfolio. Products with a STACKSET constraint will launch an AWS CloudFormation stack set.  TEMPLATE  Specify the Rules property. For more information, see Template Constraint Rules.  ",
  "Type": "The type of constraint.    LAUNCH     NOTIFICATION     RESOURCE_UPDATE     STACKSET     TEMPLATE   ",
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The description of the constraint."
}
"""
CreateConstraint(args) = service_catalog("CreateConstraint", args)

"""
    CreateProvisionedProductPlan()

Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed. You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED. To view the resource changes in the change set, use DescribeProvisionedProductPlan. To create or modify the provisioned product, use ExecuteProvisionedProductPlan.

Required Parameters
{
  "PlanName": "The name of the plan.",
  "PlanType": "The plan type.",
  "ProvisionedProductName": "A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.",
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}

Optional Parameters
{
  "PathId": "The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "ProvisioningParameters": "Parameters specified by the administrator that are required for provisioning the product.",
  "Tags": "One or more tags. If the plan is for an existing provisioned product, the product must have a RESOURCE_UPDATE constraint with TagUpdatesOnProvisionedProduct set to ALLOWED to allow tag updates.",
  "NotificationArns": "Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
}
"""
CreateProvisionedProductPlan(args) = service_catalog("CreateProvisionedProductPlan", args)

"""
    CreateTagOption()

Creates a TagOption.

Required Parameters
{
  "Value": "The TagOption value.",
  "Key": "The TagOption key."
}
"""
CreateTagOption(args) = service_catalog("CreateTagOption", args)

"""
    DescribeProduct()

Gets information about the specified product.

Required Parameters
{
  "Id": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProduct(args) = service_catalog("DescribeProduct", args)

"""
    AcceptPortfolioShare()

Accepts an offer to share the specified portfolio.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PortfolioShareType": "The type of shared portfolios to accept. The default is to accept imported portfolios.    AWS_ORGANIZATIONS - Accept portfolios shared by the master account of your organization.    IMPORTED - Accept imported portfolios.    AWS_SERVICECATALOG - Not supported. (Throws ResourceNotFoundException.)   For example, aws servicecatalog accept-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS "
}
"""
AcceptPortfolioShare(args) = service_catalog("AcceptPortfolioShare", args)

"""
    ListServiceActionsForProvisioningArtifact()

Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.

Required Parameters
{
  "ProductId": "The product identifier. For example, prod-abcdzk7xy33qa.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListServiceActionsForProvisioningArtifact(args) = service_catalog("ListServiceActionsForProvisioningArtifact", args)

"""
    AssociateServiceActionWithProvisioningArtifact()

Associates a self-service action with a provisioning artifact.

Required Parameters
{
  "ProductId": "The product identifier. For example, prod-abcdzk7xy33qa.",
  "ServiceActionId": "The self-service action identifier. For example, act-fs7abcd89wxyz.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
AssociateServiceActionWithProvisioningArtifact(args) = service_catalog("AssociateServiceActionWithProvisioningArtifact", args)

"""
    DeleteConstraint()

Deletes the specified constraint.

Required Parameters
{
  "Id": "The identifier of the constraint."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DeleteConstraint(args) = service_catalog("DeleteConstraint", args)

"""
    DisassociatePrincipalFromPortfolio()

Disassociates a previously associated principal ARN from a specified portfolio.

Required Parameters
{
  "PrincipalARN": "The ARN of the principal (IAM user, role, or group).",
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DisassociatePrincipalFromPortfolio(args) = service_catalog("DisassociatePrincipalFromPortfolio", args)

"""
    ListOrganizationPortfolioAccess()

Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization.

Required Parameters
{
  "PortfolioId": "The portfolio identifier. For example, port-2abcdext3y5fk.",
  "OrganizationNodeType": "The organization node type that will be returned in the output.    ORGANIZATION - Organization that has access to the portfolio.     ORGANIZATIONAL_UNIT - Organizational unit that has access to the portfolio within your organization.    ACCOUNT - Account that has access to the portfolio within your organization.  "
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListOrganizationPortfolioAccess(args) = service_catalog("ListOrganizationPortfolioAccess", args)

"""
    CreateServiceAction()

Creates a self-service action.

Required Parameters
{
  "Definition": "The self-service action definition. Can be one of the following:  Name  The name of the AWS Systems Manager Document. For example, AWS-RestartEC2Instance.  Version  The AWS Systems Manager automation document version. For example, \"Version\": \"1\"   AssumeRole  The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, \"AssumeRole\": \"arn:aws:iam::12345678910:role/ActionRole\". To reuse the provisioned product launch role, set to \"AssumeRole\": \"LAUNCH_ROLE\".  Parameters  The list of parameters in JSON format. For example: [{ \"Name \": \"InstanceId \", \"Type \": \"TARGET \"}].  ",
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "DefinitionType": "The service action definition type. For example, SSM_AUTOMATION.",
  "Name": "The self-service action name."
}

Optional Parameters
{
  "Description": "The self-service action description.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
CreateServiceAction(args) = service_catalog("CreateServiceAction", args)

"""
    DisableAWSOrganizationsAccess()

Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.
"""
DisableAWSOrganizationsAccess() = service_catalog("DisableAWSOrganizationsAccess")
DisableAWSOrganizationsAccess(args) = service_catalog("DisableAWSOrganizationsAccess", args)

"""
    GetAWSOrganizationsAccessStatus()

Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization.
"""
GetAWSOrganizationsAccessStatus() = service_catalog("GetAWSOrganizationsAccessStatus")
GetAWSOrganizationsAccessStatus(args) = service_catalog("GetAWSOrganizationsAccessStatus", args)

"""
    BatchDisassociateServiceActionFromProvisioningArtifact()

Disassociates a batch of self-service actions from the specified provisioning artifact.

Required Parameters
{
  "ServiceActionAssociations": "One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
BatchDisassociateServiceActionFromProvisioningArtifact(args) = service_catalog("BatchDisassociateServiceActionFromProvisioningArtifact", args)

"""
    AssociateProductWithPortfolio()

Associates the specified product with the specified portfolio.

Required Parameters
{
  "ProductId": "The product identifier.",
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "SourcePortfolioId": "The identifier of the source portfolio."
}
"""
AssociateProductWithPortfolio(args) = service_catalog("AssociateProductWithPortfolio", args)

"""
    CreateProduct()

Creates a product.

Required Parameters
{
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "Owner": "The owner of the product.",
  "Name": "The name of the product.",
  "ProvisioningArtifactParameters": "The configuration of the provisioning artifact.",
  "ProductType": "The type of product."
}

Optional Parameters
{
  "SupportUrl": "The contact URL for product support.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The description of the product.",
  "Distributor": "The distributor of the product.",
  "Tags": "One or more tags.",
  "SupportDescription": "The support information about the product.",
  "SupportEmail": "The contact email for product support."
}
"""
CreateProduct(args) = service_catalog("CreateProduct", args)

"""
    UpdateTagOption()

Updates the specified TagOption.

Required Parameters
{
  "Id": "The TagOption identifier."
}

Optional Parameters
{
  "Value": "The updated value.",
  "Active": "The updated active state."
}
"""
UpdateTagOption(args) = service_catalog("UpdateTagOption", args)

"""
    CopyProduct()

Copies the specified source product to the specified target product or a new product. You can copy a product to the same account or another account. You can copy a product to the same region or another region. This operation is performed asynchronously. To track the progress of the operation, use DescribeCopyProductStatus.

Required Parameters
{
  "SourceProductArn": "The Amazon Resource Name (ARN) of the source product.",
  "IdempotencyToken": " A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request. "
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "TargetProductId": "The identifier of the target product. By default, a new product is created.",
  "TargetProductName": "A name for the target product. The default is the name of the source product.",
  "SourceProvisioningArtifactIdentifiers": "The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.",
  "CopyOptions": "The copy options. If the value is CopyTags, the tags from the source product are copied to the target product."
}
"""
CopyProduct(args) = service_catalog("CopyProduct", args)

"""
    ListPortfoliosForProduct()

Lists all portfolios that the specified product is associated with.

Required Parameters
{
  "ProductId": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListPortfoliosForProduct(args) = service_catalog("ListPortfoliosForProduct", args)

"""
    DescribeProvisioningParameters()

Gets information about the configuration required to provision the specified product using the specified provisioning artifact. If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to ProvisionProduct, do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value". Tag the provisioned product with the value sc-tagoption-conflict-portfolioId-productId.

Required Parameters
{
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}

Optional Parameters
{
  "PathId": "The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProvisioningParameters(args) = service_catalog("DescribeProvisioningParameters", args)

"""
    ListProvisionedProductPlans()

Lists the plans for the specified provisioned product or all plans to which the user has access.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccessLevelFilter": "The access level to use to obtain results. The default is User.",
  "ProvisionProductId": "The product identifier.",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListProvisionedProductPlans() = service_catalog("ListProvisionedProductPlans")
ListProvisionedProductPlans(args) = service_catalog("ListProvisionedProductPlans", args)

"""
    ProvisionProduct()

Provisions the specified product. A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using DescribeRecord. If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[N]:Value".

Required Parameters
{
  "ProvisionedProductName": "A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.",
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact.",
  "ProvisionToken": "An idempotency token that uniquely identifies the provisioning request."
}

Optional Parameters
{
  "PathId": "The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use ListLaunchPaths.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "ProvisioningParameters": "Parameters specified by the administrator that are required for provisioning the product.",
  "ProvisioningPreferences": "An object that contains information about the provisioning preferences for a stack set.",
  "Tags": "One or more tags.",
  "NotificationArns": "Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
}
"""
ProvisionProduct(args) = service_catalog("ProvisionProduct", args)

"""
    ListPortfolios()

Lists all portfolios in the catalog.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListPortfolios() = service_catalog("ListPortfolios")
ListPortfolios(args) = service_catalog("ListPortfolios", args)

"""
    DescribeServiceActionExecutionParameters()



Required Parameters
{
  "ProvisionedProductId": "",
  "ServiceActionId": ""
}

Optional Parameters
{
  "AcceptLanguage": ""
}
"""
DescribeServiceActionExecutionParameters(args) = service_catalog("DescribeServiceActionExecutionParameters", args)

"""
    ScanProvisionedProducts()

Lists the provisioned products that are available (not terminated). To use additional filtering, see SearchProvisionedProducts.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccessLevelFilter": "The access level to use to obtain results. The default is User.",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ScanProvisionedProducts() = service_catalog("ScanProvisionedProducts")
ScanProvisionedProducts(args) = service_catalog("ScanProvisionedProducts", args)

"""
    AssociatePrincipalWithPortfolio()

Associates the specified principal ARN with the specified portfolio.

Required Parameters
{
  "PrincipalARN": "The ARN of the principal (IAM user, role, or group).",
  "PortfolioId": "The portfolio identifier.",
  "PrincipalType": "The principal type. The supported value is IAM."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
AssociatePrincipalWithPortfolio(args) = service_catalog("AssociatePrincipalWithPortfolio", args)

"""
    ExecuteProvisionedProductPlan()

Provisions or modifies a product based on the resource changes for the specified plan.

Required Parameters
{
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "PlanId": "The plan identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
ExecuteProvisionedProductPlan(args) = service_catalog("ExecuteProvisionedProductPlan", args)

"""
    ListPrincipalsForPortfolio()

Lists all principal ARNs associated with the specified portfolio.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListPrincipalsForPortfolio(args) = service_catalog("ListPrincipalsForPortfolio", args)

"""
    ListTagOptions()

Lists the specified TagOptions or all TagOptions.

Optional Parameters
{
  "PageSize": "The maximum number of items to return with this call.",
  "Filters": "The search filters. If no search filters are specified, the output includes all TagOptions.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListTagOptions() = service_catalog("ListTagOptions")
ListTagOptions(args) = service_catalog("ListTagOptions", args)

"""
    DisassociateTagOptionFromResource()

Disassociates the specified TagOption from the specified resource.

Required Parameters
{
  "TagOptionId": "The TagOption identifier.",
  "ResourceId": "The resource identifier."
}
"""
DisassociateTagOptionFromResource(args) = service_catalog("DisassociateTagOptionFromResource", args)

"""
    UpdateProvisionedProductProperties()

Requests updates to the properties of the specified provisioned product.

Required Parameters
{
  "ProvisionedProductId": "The identifier of the provisioned product.",
  "IdempotencyToken": "The idempotency token that uniquely identifies the provisioning product update request.",
  "ProvisionedProductProperties": "A map that contains the provisioned product properties to be updated. The OWNER key only accepts user ARNs. The owner is the user that is allowed to see, update, terminate, and execute service actions in the provisioned product. The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the ListRecordHistory API. The new owner can describe all past records for the provisioned product using the DescribeRecord API. The previous owner can no longer use DescribeRecord, but can still see the product's history from when he was an owner using ListRecordHistory. If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
UpdateProvisionedProductProperties(args) = service_catalog("UpdateProvisionedProductProperties", args)

"""
    DescribeProductAsAdmin()

Gets information about the specified product. This operation is run with administrator access.

Required Parameters
{
  "Id": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProductAsAdmin(args) = service_catalog("DescribeProductAsAdmin", args)

"""
    DeleteServiceAction()

Deletes a self-service action.

Required Parameters
{
  "Id": "The self-service action identifier. For example, act-fs7abcd89wxyz."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DeleteServiceAction(args) = service_catalog("DeleteServiceAction", args)

"""
    ListProvisioningArtifactsForServiceAction()

Lists all provisioning artifacts (also known as versions) for the specified self-service action.

Required Parameters
{
  "ServiceActionId": "The self-service action identifier. For example, act-fs7abcd89wxyz."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListProvisioningArtifactsForServiceAction(args) = service_catalog("ListProvisioningArtifactsForServiceAction", args)

"""
    DeleteProvisioningArtifact()

Deletes the specified provisioning artifact (also known as a version) for the specified product. You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.

Required Parameters
{
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DeleteProvisioningArtifact(args) = service_catalog("DeleteProvisioningArtifact", args)

"""
    ListServiceActions()

Lists all self-service actions.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListServiceActions() = service_catalog("ListServiceActions")
ListServiceActions(args) = service_catalog("ListServiceActions", args)

"""
    TerminateProvisionedProduct()

Terminates the specified provisioned product. This operation does not delete any records associated with the provisioned product. You can check the status of this request using DescribeRecord.

Required Parameters
{
  "TerminateToken": "An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return ResourceNotFound."
}

Optional Parameters
{
  "ProvisionedProductId": "The identifier of the provisioned product. You cannot specify both ProvisionedProductName and ProvisionedProductId.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "ProvisionedProductName": "The name of the provisioned product. You cannot specify both ProvisionedProductName and ProvisionedProductId.",
  "IgnoreErrors": "If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources."
}
"""
TerminateProvisionedProduct(args) = service_catalog("TerminateProvisionedProduct", args)

"""
    CreatePortfolio()

Creates a portfolio.

Required Parameters
{
  "ProviderName": "The name of the portfolio provider.",
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "DisplayName": "The name to use for display purposes."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The description of the portfolio.",
  "Tags": "One or more tags."
}
"""
CreatePortfolio(args) = service_catalog("CreatePortfolio", args)

"""
    DeletePortfolioShare()

Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an Organization.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccountId": "The AWS account ID.",
  "OrganizationNode": "The organization node to whom you are going to stop sharing."
}
"""
DeletePortfolioShare(args) = service_catalog("DeletePortfolioShare", args)

"""
    UpdateProvisionedProduct()

Requests updates to the configuration of the specified provisioned product. If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely. You can check the status of this request using DescribeRecord.

Required Parameters
{
  "UpdateToken": "The idempotency token that uniquely identifies the provisioning update request."
}

Optional Parameters
{
  "PathId": "The new path identifier. This value is optional if the product has a default path, and required if the product has more than one path.",
  "ProvisionedProductId": "The identifier of the provisioned product. You cannot specify both ProvisionedProductName and ProvisionedProductId.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "ProvisioningParameters": "The new parameters.",
  "ProvisionedProductName": "The name of the provisioned product. You cannot specify both ProvisionedProductName and ProvisionedProductId.",
  "ProvisioningPreferences": "An object that contains information about the provisioning preferences for a stack set.",
  "Tags": "One or more tags. Requires the product to have RESOURCE_UPDATE constraint with TagUpdatesOnProvisionedProduct set to ALLOWED to allow tag updates.",
  "ProductId": "The identifier of the product.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}
"""
UpdateProvisionedProduct(args) = service_catalog("UpdateProvisionedProduct", args)

"""
    SearchProvisionedProducts()

Gets information about the provisioned products that meet the specified criteria.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccessLevelFilter": "The access level to use to obtain results. The default is User.",
  "SortOrder": "The sort order. If no value is specified, the results are not sorted.",
  "PageSize": "The maximum number of items to return with this call.",
  "Filters": "The search filters. When the key is SearchQuery, the searchable fields are arn, createdTime, id, lastRecordId, idempotencyToken, name, physicalId, productId, provisioningArtifact, type, status, tags, userArn, and userArnSession. Example: \"SearchQuery\":[\"status:AVAILABLE\"] ",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null.",
  "SortBy": "The sort field. If no value is specified, the results are not sorted. The valid values are arn, id, name, and lastRecordId."
}
"""
SearchProvisionedProducts() = service_catalog("SearchProvisionedProducts")
SearchProvisionedProducts(args) = service_catalog("SearchProvisionedProducts", args)

"""
    DescribeProductView()

Gets information about the specified product.

Required Parameters
{
  "Id": "The product view identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProductView(args) = service_catalog("DescribeProductView", args)

"""
    EnableAWSOrganizationsAccess()

Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization. By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.
"""
EnableAWSOrganizationsAccess() = service_catalog("EnableAWSOrganizationsAccess")
EnableAWSOrganizationsAccess(args) = service_catalog("EnableAWSOrganizationsAccess", args)

"""
    UpdatePortfolio()

Updates the specified portfolio. You cannot update a product that was shared with you.

Required Parameters
{
  "Id": "The portfolio identifier."
}

Optional Parameters
{
  "ProviderName": "The updated name of the portfolio provider.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The updated description of the portfolio.",
  "AddTags": "The tags to add.",
  "RemoveTags": "The tags to remove.",
  "DisplayName": "The name to use for display purposes."
}
"""
UpdatePortfolio(args) = service_catalog("UpdatePortfolio", args)

"""
    DescribeConstraint()

Gets information about the specified constraint.

Required Parameters
{
  "Id": "The identifier of the constraint."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeConstraint(args) = service_catalog("DescribeConstraint", args)

"""
    ListRecordHistory()

Lists the specified requests or all performed requests.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccessLevelFilter": "The access level to use to obtain results. The default is User.",
  "SearchFilter": "The search filter to scope the results.",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListRecordHistory() = service_catalog("ListRecordHistory")
ListRecordHistory(args) = service_catalog("ListRecordHistory", args)

"""
    UpdateServiceAction()

Updates a self-service action.

Required Parameters
{
  "Id": "The self-service action identifier."
}

Optional Parameters
{
  "Definition": "A map that defines the self-service action.",
  "Description": "The self-service action description.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Name": "The self-service action name."
}
"""
UpdateServiceAction(args) = service_catalog("UpdateServiceAction", args)

"""
    ListBudgetsForResource()

Lists all the budgets associated to the specified resource.

Required Parameters
{
  "ResourceId": "The resource identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListBudgetsForResource(args) = service_catalog("ListBudgetsForResource", args)

"""
    CreateProvisioningArtifact()

Creates a provisioning artifact (also known as a version) for the specified product. You cannot create a provisioning artifact for a product that was shared with you.

Required Parameters
{
  "IdempotencyToken": "A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.",
  "ProductId": "The product identifier.",
  "Parameters": "The configuration for the provisioning artifact."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
CreateProvisioningArtifact(args) = service_catalog("CreateProvisioningArtifact", args)

"""
    UpdateConstraint()

Updates the specified constraint.

Required Parameters
{
  "Id": "The identifier of the constraint."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The updated description of the constraint.",
  "Parameters": "The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:  LAUNCH  Specify the RoleArn property as follows:  {\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}  You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one LAUNCH constraint on a product and portfolio.  NOTIFICATION  Specify the NotificationArns property as follows:  {\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}   RESOURCE_UPDATE  Specify the TagUpdatesOnProvisionedProduct property as follows:  {\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}  The TagUpdatesOnProvisionedProduct property accepts a string value of ALLOWED or NOT_ALLOWED.  STACKSET  Specify the Parameters property as follows:  {\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}  You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one STACKSET constraint on a product and portfolio. Products with a STACKSET constraint will launch an AWS CloudFormation stack set.  TEMPLATE  Specify the Rules property. For more information, see Template Constraint Rules.  "
}
"""
UpdateConstraint(args) = service_catalog("UpdateConstraint", args)

"""
    DescribePortfolio()

Gets information about the specified portfolio.

Required Parameters
{
  "Id": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribePortfolio(args) = service_catalog("DescribePortfolio", args)

"""
    DeleteProduct()

Deletes the specified product. You cannot delete a product if it was shared with you or is associated with a portfolio.

Required Parameters
{
  "Id": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DeleteProduct(args) = service_catalog("DeleteProduct", args)

"""
    AssociateTagOptionWithResource()

Associate the specified TagOption with the specified portfolio or product.

Required Parameters
{
  "TagOptionId": "The TagOption identifier.",
  "ResourceId": "The resource identifier."
}
"""
AssociateTagOptionWithResource(args) = service_catalog("AssociateTagOptionWithResource", args)

"""
    BatchAssociateServiceActionWithProvisioningArtifact()

Associates multiple self-service actions with provisioning artifacts.

Required Parameters
{
  "ServiceActionAssociations": "One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
BatchAssociateServiceActionWithProvisioningArtifact(args) = service_catalog("BatchAssociateServiceActionWithProvisioningArtifact", args)

"""
    DescribeTagOption()

Gets information about the specified TagOption.

Required Parameters
{
  "Id": "The TagOption identifier."
}
"""
DescribeTagOption(args) = service_catalog("DescribeTagOption", args)

"""
    ExecuteProvisionedProductServiceAction()

Executes a self-service action against a provisioned product.

Required Parameters
{
  "ProvisionedProductId": "The identifier of the provisioned product.",
  "ExecuteToken": "An idempotency token that uniquely identifies the execute request.",
  "ServiceActionId": "The self-service action identifier. For example, act-fs7abcd89wxyz."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Parameters": ""
}
"""
ExecuteProvisionedProductServiceAction(args) = service_catalog("ExecuteProvisionedProductServiceAction", args)

"""
    DescribeProvisioningArtifact()

Gets information about the specified provisioning artifact (also known as a version) for the specified product.

Required Parameters
{
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}

Optional Parameters
{
  "Verbose": "Indicates whether a verbose level of detail is enabled.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProvisioningArtifact(args) = service_catalog("DescribeProvisioningArtifact", args)

"""
    DescribeProvisionedProductPlan()

Gets information about the resource changes for the specified plan.

Required Parameters
{
  "PlanId": "The plan identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
DescribeProvisionedProductPlan(args) = service_catalog("DescribeProvisionedProductPlan", args)

"""
    DescribeRecord()

Gets information about the specified request operation. Use this operation after calling a request operation (for example, ProvisionProduct, TerminateProvisionedProduct, or UpdateProvisionedProduct).   If a provisioned product was transferred to a new owner using UpdateProvisionedProductProperties, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use ListRecordHistory to see the product's history from when he was the owner. 

Required Parameters
{
  "Id": "The record identifier of the provisioned product. This identifier is returned by the request operation."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
DescribeRecord(args) = service_catalog("DescribeRecord", args)

"""
    DeleteTagOption()

Deletes the specified TagOption. You cannot delete a TagOption if it is associated with a product or portfolio.

Required Parameters
{
  "Id": "The TagOption identifier."
}
"""
DeleteTagOption(args) = service_catalog("DeleteTagOption", args)

"""
    DeleteProvisionedProductPlan()

Deletes the specified plan.

Required Parameters
{
  "PlanId": "The plan identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "IgnoreErrors": "If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources."
}
"""
DeleteProvisionedProductPlan(args) = service_catalog("DeleteProvisionedProductPlan", args)

"""
    SearchProducts()

Gets information about the products to which the caller has access.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "SortOrder": "The sort order. If no value is specified, the results are not sorted.",
  "Filters": "The search filters. If no search filters are specified, the output includes all products to which the caller has access.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null.",
  "SortBy": "The sort field. If no value is specified, the results are not sorted."
}
"""
SearchProducts() = service_catalog("SearchProducts")
SearchProducts(args) = service_catalog("SearchProducts", args)

"""
    DescribeProvisionedProduct()

Gets information about the specified provisioned product.

Required Parameters
{
  "Id": "The provisioned product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeProvisionedProduct(args) = service_catalog("DescribeProvisionedProduct", args)

"""
    DisassociateBudgetFromResource()

Disassociates the specified budget from the specified resource.

Required Parameters
{
  "ResourceId": "The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.",
  "BudgetName": "The name of the budget you want to disassociate."
}
"""
DisassociateBudgetFromResource(args) = service_catalog("DisassociateBudgetFromResource", args)

"""
    DescribeCopyProductStatus()

Gets the status of the specified copy product operation.

Required Parameters
{
  "CopyProductToken": "The token for the copy product operation. This token is returned by CopyProduct."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeCopyProductStatus(args) = service_catalog("DescribeCopyProductStatus", args)

"""
    DisassociateProductFromPortfolio()

Disassociates the specified product from the specified portfolio. 

Required Parameters
{
  "ProductId": "The product identifier.",
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DisassociateProductFromPortfolio(args) = service_catalog("DisassociateProductFromPortfolio", args)

"""
    DescribeServiceAction()

Describes a self-service action.

Required Parameters
{
  "Id": "The self-service action identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DescribeServiceAction(args) = service_catalog("DescribeServiceAction", args)

"""
    ListResourcesForTagOption()

Lists the resources associated with the specified TagOption.

Required Parameters
{
  "TagOptionId": "The TagOption identifier."
}

Optional Parameters
{
  "ResourceType": "The resource type.    Portfolio     Product   ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListResourcesForTagOption(args) = service_catalog("ListResourcesForTagOption", args)

"""
    ListProvisioningArtifacts()

Lists all provisioning artifacts (also known as versions) for the specified product.

Required Parameters
{
  "ProductId": "The product identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
ListProvisioningArtifacts(args) = service_catalog("ListProvisioningArtifacts", args)

"""
    DeletePortfolio()

Deletes the specified portfolio. You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.

Required Parameters
{
  "Id": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
DeletePortfolio(args) = service_catalog("DeletePortfolio", args)

"""
    ListAcceptedPortfolioShares()

Lists all portfolios for which sharing was accepted by this account.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PortfolioShareType": "The type of shared portfolios to list. The default is to list imported portfolios.    AWS_ORGANIZATIONS - List portfolios shared by the master account of your organization    AWS_SERVICECATALOG - List default portfolios    IMPORTED - List imported portfolios  ",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListAcceptedPortfolioShares() = service_catalog("ListAcceptedPortfolioShares")
ListAcceptedPortfolioShares(args) = service_catalog("ListAcceptedPortfolioShares", args)

"""
    ListStackInstancesForProvisionedProduct()

Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. 

Required Parameters
{
  "ProvisionedProductId": "The identifier of the provisioned product."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListStackInstancesForProvisionedProduct(args) = service_catalog("ListStackInstancesForProvisionedProduct", args)

"""
    UpdateProduct()

Updates the specified product.

Required Parameters
{
  "Id": "The product identifier."
}

Optional Parameters
{
  "SupportUrl": "The updated support URL for the product.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The updated description of the product.",
  "Distributor": "The updated distributor of the product.",
  "SupportDescription": "The updated support description for the product.",
  "RemoveTags": "The tags to remove from the product.",
  "AddTags": "The tags to add to the product.",
  "Owner": "The updated owner of the product.",
  "Name": "The updated product name.",
  "SupportEmail": "The updated support email for the product."
}
"""
UpdateProduct(args) = service_catalog("UpdateProduct", args)

"""
    AssociateBudgetWithResource()

Associates the specified budget with the specified resource.

Required Parameters
{
  "ResourceId": " The resource identifier. Either a portfolio-id or a product-id.",
  "BudgetName": "The name of the budget you want to associate."
}
"""
AssociateBudgetWithResource(args) = service_catalog("AssociateBudgetWithResource", args)

"""
    SearchProductsAsAdmin()

Gets information about the products for the specified portfolio or all products.

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "SortOrder": "The sort order. If no value is specified, the results are not sorted.",
  "PortfolioId": "The portfolio identifier.",
  "PageSize": "The maximum number of items to return with this call.",
  "Filters": "The search filters. If no search filters are specified, the output includes all products to which the administrator has access.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null.",
  "ProductSource": "Access level of the source of the product.",
  "SortBy": "The sort field. If no value is specified, the results are not sorted."
}
"""
SearchProductsAsAdmin() = service_catalog("SearchProductsAsAdmin")
SearchProductsAsAdmin(args) = service_catalog("SearchProductsAsAdmin", args)

"""
    ListPortfolioAccess()

Lists the account IDs that have access to the specified portfolio.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  "
}
"""
ListPortfolioAccess(args) = service_catalog("ListPortfolioAccess", args)

"""
    DescribePortfolioShareStatus()

Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization.

Required Parameters
{
  "PortfolioShareToken": "The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare."
}
"""
DescribePortfolioShareStatus(args) = service_catalog("DescribePortfolioShareStatus", args)

"""
    ListConstraintsForPortfolio()

Lists the constraints for the specified portfolio and product.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "ProductId": "The product identifier.",
  "PageSize": "The maximum number of items to return with this call.",
  "PageToken": "The page token for the next set of results. To retrieve the first set of results, use null."
}
"""
ListConstraintsForPortfolio(args) = service_catalog("ListConstraintsForPortfolio", args)

"""
    UpdateProvisioningArtifact()

Updates the specified provisioning artifact (also known as a version) for the specified product. You cannot update a provisioning artifact for a product that was shared with you.

Required Parameters
{
  "ProductId": "The product identifier.",
  "ProvisioningArtifactId": "The identifier of the provisioning artifact."
}

Optional Parameters
{
  "Guidance": "Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. The DEFAULT value indicates that the product version is active. The administrator can set the guidance to DEPRECATED to inform users that the product version is deprecated. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.",
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "Description": "The updated description of the provisioning artifact.",
  "Active": "Indicates whether the product version is active.",
  "Name": "The updated name of the provisioning artifact."
}
"""
UpdateProvisioningArtifact(args) = service_catalog("UpdateProvisioningArtifact", args)

"""
    CreatePortfolioShare()

Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an Organization. AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.

Required Parameters
{
  "PortfolioId": "The portfolio identifier."
}

Optional Parameters
{
  "AcceptLanguage": "The language code.    en - English (default)    jp - Japanese    zh - Chinese  ",
  "AccountId": "The AWS account ID. For example, 123456789012.",
  "OrganizationNode": "The organization node to whom you are going to share. If OrganizationNode is passed in, PortfolioShare will be created for the node and its children (when applies), and a PortfolioShareToken will be returned in the output in order for the administrator to monitor the status of the PortfolioShare creation process."
}
"""
CreatePortfolioShare(args) = service_catalog("CreatePortfolioShare", args)
