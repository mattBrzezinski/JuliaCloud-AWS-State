include("../AWSCorePrototypeServices.jl")
using .Services: health

"""
Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. At least one event ARN and account ID are required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account. 

Required Parameters:
organizationEntityFilters
"""
DescribeAffectedEntitiesForOrganization(args) = health("DescribeAffectedEntitiesForOrganization", args)

"""
Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
"""
DescribeEventTypes() = health("DescribeEventTypes")

"""
Calling this operation disables Health from working with AWS Organizations. This does not remove the Service Linked Role (SLR) from the the master account in your organization. Use the IAM console, API, or AWS CLI to remove the SLR if desired. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
"""
DisableHealthServiceAccessForOrganization() = health("DisableHealthServiceAccessForOrganization")

"""
Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required. Results are sorted by the lastUpdatedTime of the entity, starting with the most recent.

Required Parameters:
filter
"""
DescribeAffectedEntities(args) = health("DescribeAffectedEntities", args)

"""
Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent.
"""
DescribeEvents() = health("DescribeEvents")

"""
Returns information about events across your organization in AWS Organizations, meeting the specified filter criteria. Events are returned in a summary form and do not include the accounts impacted, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeAffectedAccountsForOrganization, DescribeEventDetailsForOrganization, and DescribeAffectedEntitiesForOrganization operations. If no filter criteria are specified, all events across your organization are returned. Results are sorted by lastModifiedTime, starting with the most recent. Before you can call this operation, you must first enable Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.
"""
DescribeEventsForOrganization() = health("DescribeEventsForOrganization")

"""
Returns detailed information about one or more specified events for one or more accounts in your organization. Information includes standard event data (Region, service, and so on, as returned by DescribeEventsForOrganization, a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntitiesForOrganization operation. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.

Required Parameters:
organizationEventDetailFilters
"""
DescribeEventDetailsForOrganization(args) = health("DescribeEventDetailsForOrganization", args)

"""
Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.
"""
DescribeEntityAggregates() = health("DescribeEntityAggregates")

"""
Returns detailed information about one or more specified events. Information includes standard event data (region, service, and so on, as returned by DescribeEvents), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the DescribeAffectedEntities operation. If a specified event cannot be retrieved, an error message is returned for that event.

Required Parameters:
eventArns
"""
DescribeEventDetails(args) = health("DescribeEventDetails", args)

"""
Calling this operation enables AWS Health to work with AWS Organizations. This applies a Service Linked Role (SLR) to the master account in the organization. To learn more about the steps in this process, visit enabling service access for AWS Health in AWS Organizations. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
"""
EnableHealthServiceAccessForOrganization() = health("EnableHealthServiceAccessForOrganization")

"""
This operation provides status information on enabling or disabling AWS Health to work with your organization. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.
"""
DescribeHealthServiceStatusForOrganization() = health("DescribeHealthServiceStatusForOrganization")

"""
Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.

Required Parameters:
aggregateField
"""
DescribeEventAggregates(args) = health("DescribeEventAggregates", args)

"""
Returns a list of accounts in the organization from AWS Organizations that are affected by the provided event. Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's master account.

Required Parameters:
eventArn
"""
DescribeAffectedAccountsForOrganization(args) = health("DescribeAffectedAccountsForOrganization", args)
