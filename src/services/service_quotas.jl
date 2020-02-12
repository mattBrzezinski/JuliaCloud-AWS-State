include("../AWSCorePrototypeServices.jl")
using .Services: service_quotas

"""
    AssociateServiceQuotaTemplate

Associates the Service Quotas template with your organization so that when new accounts are created in your organization, the template submits increase requests for the specified service quotas. Use the Service Quotas template to request an increase for any adjustable quota value. After you define the Service Quotas template, use this operation to associate, or enable, the template. 

Required Parameters:
{}


Optional Parameters:
{}

"""
AssociateServiceQuotaTemplate() = service_quotas("AssociateServiceQuotaTemplate")
AssociateServiceQuotaTemplate(args) = service_quotas("AssociateServiceQuotaTemplate", args)

"""
    ListServiceQuotaIncreaseRequestsInTemplate

Returns a list of the quota increase requests in the template. 

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.",
  "AwsRegion": "Specifies the AWS Region for the quota that you want to use.",
  "ServiceCode": "The identifier for a service. When performing an operation, use the ServiceCode to specify a particular service. "
}

"""
ListServiceQuotaIncreaseRequestsInTemplate() = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate")
ListServiceQuotaIncreaseRequestsInTemplate(args) = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate", args)

"""
    DisassociateServiceQuotaTemplate

Disables the Service Quotas template. Once the template is disabled, it does not request quota increases for new accounts in your organization. Disabling the quota template does not apply the quota increase requests from the template.   Related operations    To enable the quota template, call AssociateServiceQuotaTemplate.    To delete a specific service quota from the template, use DeleteServiceQuotaIncreaseRequestFromTemplate.  

Required Parameters:
{}


Optional Parameters:
{}

"""
DisassociateServiceQuotaTemplate() = service_quotas("DisassociateServiceQuotaTemplate")
DisassociateServiceQuotaTemplate(args) = service_quotas("DisassociateServiceQuotaTemplate", args)

"""
    GetServiceQuota

Returns the details for the specified service quota. This operation provides a different Value than the GetAWSDefaultServiceQuota operation. This operation returns the applied value for each quota. GetAWSDefaultServiceQuota returns the default AWS value for each quota. 

Required Parameters:
{
  "QuotaCode": "Identifies the service quota you want to select.",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{}

"""

GetServiceQuota(args) = service_quotas("GetServiceQuota", args)
"""
    RequestServiceQuotaIncrease

Retrieves the details of a service quota increase request. The response to this command provides the details in the RequestedServiceQuotaChange object. 

Required Parameters:
{
  "QuotaCode": "Specifies the service quota that you want to use.",
  "DesiredValue": "Specifies the value submitted in the service quota increase request. ",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{}

"""

RequestServiceQuotaIncrease(args) = service_quotas("RequestServiceQuotaIncrease", args)
"""
    DeleteServiceQuotaIncreaseRequestFromTemplate

Removes a service quota increase request from the Service Quotas template. 

Required Parameters:
{
  "AwsRegion": "Specifies the AWS Region for the quota that you want to delete.",
  "QuotaCode": "Specifies the code for the quota that you want to delete.",
  "ServiceCode": "Specifies the code for the service that you want to delete."
}


Optional Parameters:
{}

"""

DeleteServiceQuotaIncreaseRequestFromTemplate(args) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", args)
"""
    GetServiceQuotaIncreaseRequestFromTemplate

Returns the details of the service quota increase request in your template.

Required Parameters:
{
  "AwsRegion": "Specifies the AWS Region for the quota that you want to use.",
  "QuotaCode": "Specifies the quota you want.",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{}

"""

GetServiceQuotaIncreaseRequestFromTemplate(args) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", args)
"""
    ListServices

Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from."
}

"""
ListServices() = service_quotas("ListServices")
ListServices(args) = service_quotas("ListServices", args)

"""
    ListRequestedServiceQuotaChangeHistory

Requests a list of the changes to quotas for a service.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.",
  "Status": "Specifies the status value of the quota increase request.",
  "ServiceCode": "Specifies the service that you want to use."
}

"""
ListRequestedServiceQuotaChangeHistory() = service_quotas("ListRequestedServiceQuotaChangeHistory")
ListRequestedServiceQuotaChangeHistory(args) = service_quotas("ListRequestedServiceQuotaChangeHistory", args)

"""
    GetAWSDefaultServiceQuota

Retrieves the default service quotas values. The Value returned for each quota is the AWS default value, even if the quotas have been increased.. 

Required Parameters:
{
  "QuotaCode": "Identifies the service quota you want to select.",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{}

"""

GetAWSDefaultServiceQuota(args) = service_quotas("GetAWSDefaultServiceQuota", args)
"""
    PutServiceQuotaIncreaseRequestIntoTemplate

Defines and adds a quota to the service quota template. To add a quota to the template, you must provide the ServiceCode, QuotaCode, AwsRegion, and DesiredValue. Once you add a quota to the template, use ListServiceQuotaIncreaseRequestsInTemplate to see the list of quotas in the template.

Required Parameters:
{
  "AwsRegion": "Specifies the AWS Region for the quota. ",
  "QuotaCode": "Specifies the service quota that you want to use.",
  "DesiredValue": "Specifies the new, increased value for the quota. ",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{}

"""

PutServiceQuotaIncreaseRequestIntoTemplate(args) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", args)
"""
    GetAssociationForServiceQuotaTemplate

Retrieves the ServiceQuotaTemplateAssociationStatus value from the service. Use this action to determine if the Service Quota template is associated, or enabled. 

Required Parameters:
{}


Optional Parameters:
{}

"""
GetAssociationForServiceQuotaTemplate() = service_quotas("GetAssociationForServiceQuotaTemplate")
GetAssociationForServiceQuotaTemplate(args) = service_quotas("GetAssociationForServiceQuotaTemplate", args)

"""
    ListServiceQuotas

Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

Required Parameters:
{
  "ServiceCode": "The identifier for a service. When performing an operation, use the ServiceCode to specify a particular service. "
}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from."
}

"""

ListServiceQuotas(args) = service_quotas("ListServiceQuotas", args)
"""
    ListAWSDefaultServiceQuotas

Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

Required Parameters:
{
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results."
}

"""

ListAWSDefaultServiceQuotas(args) = service_quotas("ListAWSDefaultServiceQuotas", args)
"""
    ListRequestedServiceQuotaChangeHistoryByQuota

Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.

Required Parameters:
{
  "QuotaCode": "Specifies the service quota that you want to use",
  "ServiceCode": "Specifies the service that you want to use."
}


Optional Parameters:
{
  "MaxResults": "(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.",
  "NextToken": "(Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.",
  "Status": "Specifies the status value of the quota increase request."
}

"""

ListRequestedServiceQuotaChangeHistoryByQuota(args) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", args)
"""
    GetRequestedServiceQuotaChange

Retrieves the details for a particular increase request. 

Required Parameters:
{
  "RequestId": "Identifies the quota increase request."
}


Optional Parameters:
{}

"""

GetRequestedServiceQuotaChange(args) = service_quotas("GetRequestedServiceQuotaChange", args)