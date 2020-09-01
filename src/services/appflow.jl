include("../AWSCorePrototypeServices.jl")
using .Services: appflow

"""
    ListTagsForResource()

 Retrieves the tags that are associated with a specified flow. 

Required Parameters
{
  "resourceArn": " The Amazon Resource Name (ARN) of the specified flow. "
}
"""
ListTagsForResource(args) = appflow("GET", "/tags/{resourceArn}", args)

"""
    DeleteConnectorProfile()

 Enables you to delete an existing connector profile. 

Required Parameters
{
  "connectorProfileName": " The name of the connector profile. The name is unique for each ConnectorProfile in your account. "
}

Optional Parameters
{
  "forceDelete": " Indicates whether Amazon AppFlow should delete the profile, even if it is currently in use in one or more flows. "
}
"""
DeleteConnectorProfile(args) = appflow("POST", "/delete-connector-profile", args)

"""
    DescribeFlow()

 Provides a description of the specified flow. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. "
}
"""
DescribeFlow(args) = appflow("POST", "/describe-flow", args)

"""
    CreateConnectorProfile()

 Creates a new connector profile associated with your AWS account. There is a soft quota of 100 connector profiles per AWS account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. 

Required Parameters
{
  "connectorType": " The type of connector, such as Salesforce, Amplitude, and so on. ",
  "connectorProfileConfig": " Defines the connector-specific configuration and credentials. ",
  "connectorProfileName": " The name of the connector profile. The name is unique for each ConnectorProfile in your AWS account. ",
  "connectionMode": " Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet. "
}

Optional Parameters
{
  "kmsArn": " The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. "
}
"""
CreateConnectorProfile(args) = appflow("POST", "/create-connector-profile", args)

"""
    DescribeConnectorProfiles()

 Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.

Optional Parameters
{
  "connectorType": " The type of connector, such as Salesforce, Amplitude, and so on. ",
  "maxResults": " Specifies the maximum number of items that should be returned in the result set. The default for maxResults is 20 (for all paginated API operations). ",
  "connectorProfileNames": " The name of the connector profile. The name is unique for each ConnectorProfile in the AWS account. ",
  "nextToken": " The pagination token for the next page of data. "
}
"""

DescribeConnectorProfiles() = appflow("POST", "/describe-connector-profiles")
DescribeConnectorProfiles(args) = appflow("POST", "/describe-connector-profiles", args)

"""
    ListFlows()

 Lists all of the flows associated with your account. 

Optional Parameters
{
  "maxResults": " Specifies the maximum number of items that should be returned in the result set. ",
  "nextToken": " The pagination token for next page of data. "
}
"""

ListFlows() = appflow("POST", "/list-flows")
ListFlows(args) = appflow("POST", "/list-flows", args)

"""
    TagResource()

 Applies a tag to the specified flow. 

Required Parameters
{
  "resourceArn": " The Amazon Resource Name (ARN) of the flow that you want to tag. ",
  "tags": " The tags used to organize, track, or control access for your flow. "
}
"""
TagResource(args) = appflow("POST", "/tags/{resourceArn}", args)

"""
    UntagResource()

 Removes a tag from the specified flow. 

Required Parameters
{
  "resourceArn": " The Amazon Resource Name (ARN) of the flow that you want to untag. ",
  "tagKeys": " The tag keys associated with the tag that you want to remove from your flow. "
}
"""
UntagResource(args) = appflow("DELETE", "/tags/{resourceArn}", args)

"""
    UpdateConnectorProfile()

 Updates a given connector profile associated with your account. 

Required Parameters
{
  "connectorProfileConfig": " Defines the connector-specific profile configuration and credentials. ",
  "connectorProfileName": " The name of the connector profile and is unique for each ConnectorProfile in the AWS Account. ",
  "connectionMode": " Indicates the connection mode and if it is public or private. "
}
"""
UpdateConnectorProfile(args) = appflow("POST", "/update-connector-profile", args)

"""
    UpdateFlow()

 Updates an existing flow. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. ",
  "triggerConfig": " The trigger settings that determine how and when the flow runs. ",
  "tasks": " A list of tasks that Amazon AppFlow performs while transferring the data in the flow run. ",
  "destinationFlowConfigList": " The configuration that controls how Amazon AppFlow transfers data to the destination connector. "
}

Optional Parameters
{
  "sourceFlowConfig": "",
  "description": " A description of the flow. "
}
"""
UpdateFlow(args) = appflow("POST", "/update-flow", args)

"""
    StopFlow()

 Deactivates the existing flow. For on-demand flows, this operation returns an unsupportedOperationException error message. For schedule and event-triggered flows, this operation deactivates the flow. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. "
}
"""
StopFlow(args) = appflow("POST", "/stop-flow", args)

"""
    DescribeFlowExecutionRecords()

 Fetches the execution history of the flow. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. "
}

Optional Parameters
{
  "maxResults": " Specifies the maximum number of items that should be returned in the result set. The default for maxResults is 20 (for all paginated API operations). ",
  "nextToken": " The pagination token for the next page of data. "
}
"""
DescribeFlowExecutionRecords(args) = appflow("POST", "/describe-flow-execution-records", args)

"""
    DeleteFlow()

 Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. "
}

Optional Parameters
{
  "forceDelete": " Indicates whether Amazon AppFlow should delete the flow, even if it is currently in use. "
}
"""
DeleteFlow(args) = appflow("POST", "/delete-flow", args)

"""
    StartFlow()

 Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. "
}
"""
StartFlow(args) = appflow("POST", "/start-flow", args)

"""
    ListConnectorEntities()

 Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for Account and Opportunity entities, or query ServiceNow for the Incident entity. 

Optional Parameters
{
  "entitiesPath": " This optional parameter is specific to connector implementation. Some connectors support multiple levels or categories of entities. You can find out the list of roots for such providers by sending a request without the entitiesPath parameter. If the connector supports entities at different roots, this initial request returns the list of roots. Otherwise, this request returns all entities supported by the provider. ",
  "connectorType": " The type of connector, such as Salesforce, Amplitude, and so on. ",
  "connectorProfileName": " The name of the connector profile. The name is unique for each ConnectorProfile in the AWS account, and is used to query the downstream connector. "
}
"""

ListConnectorEntities() = appflow("POST", "/list-connector-entities")
ListConnectorEntities(args) = appflow("POST", "/list-connector-entities", args)

"""
    DescribeConnectorEntity()

 Provides details regarding the entity used with the connector, with a description of the data model for each entity. 

Required Parameters
{
  "connectorEntityName": " The entity name for that connector. "
}

Optional Parameters
{
  "connectorType": " The type of connector application, such as Salesforce, Amplitude, and so on. ",
  "connectorProfileName": " The name of the connector profile. The name is unique for each ConnectorProfile in the AWS account. "
}
"""
DescribeConnectorEntity(args) = appflow("POST", "/describe-connector-entity", args)

"""
    DescribeConnectors()

 Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page. 

Optional Parameters
{
  "connectorTypes": " The type of connector, such as Salesforce, Amplitude, and so on. ",
  "nextToken": " The pagination token for the next page of data. "
}
"""

DescribeConnectors() = appflow("POST", "/describe-connectors")
DescribeConnectors(args) = appflow("POST", "/describe-connectors", args)

"""
    CreateFlow()

 Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once. 

Required Parameters
{
  "flowName": " The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only. ",
  "triggerConfig": " The trigger settings that determine how and when the flow runs. ",
  "tasks": " A list of tasks that Amazon AppFlow performs while transferring the data in the flow run. ",
  "sourceFlowConfig": " The configuration that controls how Amazon AppFlow retrieves data from the source connector. ",
  "destinationFlowConfigList": " The configuration that controls how Amazon AppFlow places data in the destination connector. "
}

Optional Parameters
{
  "tags": " The tags used to organize, track, or control access for your flow. ",
  "description": " A description of the flow you want to create. ",
  "kmsArn": " The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. "
}
"""
CreateFlow(args) = appflow("POST", "/create-flow", args)
