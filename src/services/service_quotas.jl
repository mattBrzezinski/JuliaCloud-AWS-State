include("../AWSCorePrototypeServices.jl")
using .Services: service_quotas

"""
Associates the Service Quotas template with your organization so that when new accounts are created in your organization, the template submits increase requests for the specified service quotas. Use the Service Quotas template to request an increase for any adjustable quota value. After you define the Service Quotas template, use this operation to associate, or enable, the template. 
"""
AssociateServiceQuotaTemplate() = service_quotas("AssociateServiceQuotaTemplate")

"""
Returns a list of the quota increase requests in the template. 
"""
ListServiceQuotaIncreaseRequestsInTemplate() = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate")

"""
Disables the Service Quotas template. Once the template is disabled, it does not request quota increases for new accounts in your organization. Disabling the quota template does not apply the quota increase requests from the template.   Related operations    To enable the quota template, call AssociateServiceQuotaTemplate.    To delete a specific service quota from the template, use DeleteServiceQuotaIncreaseRequestFromTemplate.  
"""
DisassociateServiceQuotaTemplate() = service_quotas("DisassociateServiceQuotaTemplate")

"""
Returns the details for the specified service quota. This operation provides a different Value than the GetAWSDefaultServiceQuota operation. This operation returns the applied value for each quota. GetAWSDefaultServiceQuota returns the default AWS value for each quota. 

Required Parameters:
ServiceCode, QuotaCode
"""
GetServiceQuota(args) = service_quotas("GetServiceQuota", args)

"""
Retrieves the details of a service quota increase request. The response to this command provides the details in the RequestedServiceQuotaChange object. 

Required Parameters:
ServiceCode, QuotaCode, DesiredValue
"""
RequestServiceQuotaIncrease(args) = service_quotas("RequestServiceQuotaIncrease", args)

"""
Removes a service quota increase request from the Service Quotas template. 

Required Parameters:
ServiceCode, QuotaCode, AwsRegion
"""
DeleteServiceQuotaIncreaseRequestFromTemplate(args) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", args)

"""
Returns the details of the service quota increase request in your template.

Required Parameters:
ServiceCode, QuotaCode, AwsRegion
"""
GetServiceQuotaIncreaseRequestFromTemplate(args) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", args)

"""
Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.
"""
ListServices() = service_quotas("ListServices")

"""
Requests a list of the changes to quotas for a service.
"""
ListRequestedServiceQuotaChangeHistory() = service_quotas("ListRequestedServiceQuotaChangeHistory")

"""
Retrieves the default service quotas values. The Value returned for each quota is the AWS default value, even if the quotas have been increased.. 

Required Parameters:
ServiceCode, QuotaCode
"""
GetAWSDefaultServiceQuota(args) = service_quotas("GetAWSDefaultServiceQuota", args)

"""
Defines and adds a quota to the service quota template. To add a quota to the template, you must provide the ServiceCode, QuotaCode, AwsRegion, and DesiredValue. Once you add a quota to the template, use ListServiceQuotaIncreaseRequestsInTemplate to see the list of quotas in the template.

Required Parameters:
QuotaCode, ServiceCode, AwsRegion, DesiredValue
"""
PutServiceQuotaIncreaseRequestIntoTemplate(args) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", args)

"""
Retrieves the ServiceQuotaTemplateAssociationStatus value from the service. Use this action to determine if the Service Quota template is associated, or enabled. 
"""
GetAssociationForServiceQuotaTemplate() = service_quotas("GetAssociationForServiceQuotaTemplate")

"""
Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

Required Parameters:
ServiceCode
"""
ListServiceQuotas(args) = service_quotas("ListServiceQuotas", args)

"""
Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

Required Parameters:
ServiceCode
"""
ListAWSDefaultServiceQuotas(args) = service_quotas("ListAWSDefaultServiceQuotas", args)

"""
Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.

Required Parameters:
ServiceCode, QuotaCode
"""
ListRequestedServiceQuotaChangeHistoryByQuota(args) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", args)

"""
Retrieves the details for a particular increase request. 

Required Parameters:
RequestId
"""
GetRequestedServiceQuotaChange(args) = service_quotas("GetRequestedServiceQuotaChange", args)
