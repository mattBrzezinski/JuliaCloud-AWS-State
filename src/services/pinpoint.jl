include("../AWSCorePrototypeServices.jl")
using .Services: pinpoint

"""
Retrieves information about the status and settings of the GCM channel for an application.
"""
GetGcmChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/gcm")
GetGcmChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/gcm", args)
GetGcmChannel(a...; b...) = GetGcmChannel(a..., b)

"""
Updates an existing message template for messages that are sent through the email channel.
"""
UpdateEmailTemplate(TemplateName, EmailTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/email")
UpdateEmailTemplate(TemplateName, EmailTemplateRequest, args) = pinpoint("PUT", "/v1/templates/$template-name/email", args)
UpdateEmailTemplate(a...; b...) = UpdateEmailTemplate(a..., b)

"""
Updates the configuration and other settings for a campaign.
"""
UpdateCampaign(CampaignId, ApplicationId, WriteCampaignRequest) = pinpoint("PUT", "/v1/apps/$application-id/campaigns/$campaign-id")
UpdateCampaign(CampaignId, ApplicationId, WriteCampaignRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/campaigns/$campaign-id", args)
UpdateCampaign(a...; b...) = UpdateCampaign(a..., b)

"""
Disables the email channel for an application and deletes any existing settings for the channel.
"""
DeleteEmailChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/email")
DeleteEmailChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/email", args)
DeleteEmailChannel(a...; b...) = DeleteEmailChannel(a..., b)

"""
Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.
"""
RemoveAttributes(AttributeType, ApplicationId, UpdateAttributesRequest) = pinpoint("PUT", "/v1/apps/$application-id/attributes/$attribute-type")
RemoveAttributes(AttributeType, ApplicationId, UpdateAttributesRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/attributes/$attribute-type", args)
RemoveAttributes(a...; b...) = RemoveAttributes(a..., b)

"""
Deletes an application.
"""
DeleteApp(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id")
DeleteApp(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id", args)
DeleteApp(a...; b...) = DeleteApp(a..., b)

"""
Retrieves the content and settings of a message template for messages that are sent through the email channel.
"""
GetEmailTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/email")
GetEmailTemplate(TemplateName, args) = pinpoint("GET", "/v1/templates/$template-name/email", args)
GetEmailTemplate(a...; b...) = GetEmailTemplate(a..., b)

"""
Retrieves information about all the activities for a campaign.
"""
GetCampaignActivities(ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/activities")
GetCampaignActivities(ApplicationId, CampaignId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/activities", args)
GetCampaignActivities(a...; b...) = GetCampaignActivities(a..., b)

"""
Retrieves information about the status and settings of the export jobs for a segment.
"""
GetSegmentExportJobs(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/export")
GetSegmentExportJobs(SegmentId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/export", args)
GetSegmentExportJobs(a...; b...) = GetSegmentExportJobs(a..., b)

"""
Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.
"""
GetSegments(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments")
GetSegments(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments", args)
GetSegments(a...; b...) = GetSegments(a..., b)

"""
Retrieves information about the status and settings of the APNs channel for an application.
"""
GetApnsChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns")
GetApnsChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/apns", args)
GetApnsChannel(a...; b...) = GetApnsChannel(a..., b)

"""
Adds one or more tags (keys and values) to an application, campaign, journey, message template, or segment.
"""
TagResource(ResourceArn, TagsModel) = pinpoint("POST", "/v1/tags/$resource-arn")
TagResource(ResourceArn, TagsModel, args) = pinpoint("POST", "/v1/tags/$resource-arn", args)
TagResource(a...; b...) = TagResource(a..., b)

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
"""
UpdateSegment(SegmentId, ApplicationId, WriteSegmentRequest) = pinpoint("PUT", "/v1/apps/$application-id/segments/$segment-id")
UpdateSegment(SegmentId, ApplicationId, WriteSegmentRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/segments/$segment-id", args)
UpdateSegment(a...; b...) = UpdateSegment(a..., b)

"""
Disables the ADM channel for an application and deletes any existing settings for the channel.
"""
DeleteAdmChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/adm")
DeleteAdmChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/adm", args)
DeleteAdmChannel(a...; b...) = DeleteAdmChannel(a..., b)

"""
Deletes a message template for messages that were sent through the SMS channel.
"""
DeleteSmsTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/sms")
DeleteSmsTemplate(TemplateName, args) = pinpoint("DELETE", "/v1/templates/$template-name/sms", args)
DeleteSmsTemplate(a...; b...) = DeleteSmsTemplate(a..., b)

"""
Retrieves information about the status, configuration, and other settings for a specific version of a campaign.
"""
GetCampaignVersion(Version, ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions/$version")
GetCampaignVersion(Version, ApplicationId, CampaignId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions/$version", args)
GetCampaignVersion(a...; b...) = GetCampaignVersion(a..., b)

"""
Creates an import job for an application.
"""
CreateImportJob(ApplicationId, ImportJobRequest) = pinpoint("POST", "/v1/apps/$application-id/jobs/import")
CreateImportJob(ApplicationId, ImportJobRequest, args) = pinpoint("POST", "/v1/apps/$application-id/jobs/import", args)
CreateImportJob(a...; b...) = CreateImportJob(a..., b)

"""
Retrieves information about the status and settings of the SMS channel for an application.
"""
GetSmsChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/sms")
GetSmsChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/sms", args)
GetSmsChannel(a...; b...) = GetSmsChannel(a..., b)

"""
Retrieves information about the event stream settings for an application.
"""
GetEventStream(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/eventstream")
GetEventStream(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/eventstream", args)
GetEventStream(a...; b...) = GetEventStream(a..., b)

"""
Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.
"""
GetSegmentVersion(SegmentId, Version, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions/$version")
GetSegmentVersion(SegmentId, Version, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions/$version", args)
GetSegmentVersion(a...; b...) = GetSegmentVersion(a..., b)

"""
Deletes a message template for messages that were sent through the email channel.
"""
DeleteEmailTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/email")
DeleteEmailTemplate(TemplateName, args) = pinpoint("DELETE", "/v1/templates/$template-name/email", args)
DeleteEmailTemplate(a...; b...) = DeleteEmailTemplate(a..., b)

"""
Retrieves information about the status, configuration, and other settings for a journey.
"""
GetJourney(JourneyId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id")
GetJourney(JourneyId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id", args)
GetJourney(a...; b...) = GetJourney(a..., b)

"""
Retrieves information about an application.
"""
GetApp(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id")
GetApp(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id", args)
GetApp(a...; b...) = GetApp(a..., b)

"""
Retrieves information about the status, configuration, and other settings for a campaign.
"""
GetCampaign(CampaignId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id")
GetCampaign(CampaignId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id", args)
GetCampaign(a...; b...) = GetCampaign(a..., b)

"""
Enables the APNs sandbox channel for an application or updates the status and settings of the APNs sandbox channel for an application.
"""
UpdateApnsSandboxChannel(ApplicationId, APNSSandboxChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_sandbox")
UpdateApnsSandboxChannel(ApplicationId, APNSSandboxChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_sandbox", args)
UpdateApnsSandboxChannel(a...; b...) = UpdateApnsSandboxChannel(a..., b)

"""
Retrieves information about the history and status of each channel for an application.
"""
GetChannels(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels")
GetChannels(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels", args)
GetChannels(a...; b...) = GetChannels(a..., b)

"""
Retrieves information about the settings and attributes of a specific endpoint for an application.
"""
GetEndpoint(ApplicationId, EndpointId) = pinpoint("GET", "/v1/apps/$application-id/endpoints/$endpoint-id")
GetEndpoint(ApplicationId, EndpointId, args) = pinpoint("GET", "/v1/apps/$application-id/endpoints/$endpoint-id", args)
GetEndpoint(a...; b...) = GetEndpoint(a..., b)

"""
Deletes a message template for messages that were sent through the voice channel.
"""
DeleteVoiceTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/voice")
DeleteVoiceTemplate(TemplateName, args) = pinpoint("DELETE", "/v1/templates/$template-name/voice", args)
DeleteVoiceTemplate(a...; b...) = DeleteVoiceTemplate(a..., b)

"""
Creates a journey for an application.
"""
CreateJourney(ApplicationId, WriteJourneyRequest) = pinpoint("POST", "/v1/apps/$application-id/journeys")
CreateJourney(ApplicationId, WriteJourneyRequest, args) = pinpoint("POST", "/v1/apps/$application-id/journeys", args)
CreateJourney(a...; b...) = CreateJourney(a..., b)

"""
Retrieves information about all the versions of a specific message template.
"""
ListTemplateVersions(TemplateName, TemplateType) = pinpoint("GET", "/v1/templates/$template-name/$template-type/versions")
ListTemplateVersions(TemplateName, TemplateType, args) = pinpoint("GET", "/v1/templates/$template-name/$template-type/versions", args)
ListTemplateVersions(a...; b...) = ListTemplateVersions(a..., b)

"""
Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.
"""
GetSegment(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id")
GetSegment(SegmentId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id", args)
GetSegment(a...; b...) = GetSegment(a..., b)

"""
Creates a new campaign for an application or updates the settings of an existing campaign for an application.
"""
CreateCampaign(ApplicationId, WriteCampaignRequest) = pinpoint("POST", "/v1/apps/$application-id/campaigns")
CreateCampaign(ApplicationId, WriteCampaignRequest, args) = pinpoint("POST", "/v1/apps/$application-id/campaigns", args)
CreateCampaign(a...; b...) = CreateCampaign(a..., b)

"""
Creates a message template for messages that are sent through the SMS channel.
"""
CreateSmsTemplate(TemplateName, SMSTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/sms")
CreateSmsTemplate(TemplateName, SMSTemplateRequest, args) = pinpoint("POST", "/v1/templates/$template-name/sms", args)
CreateSmsTemplate(a...; b...) = CreateSmsTemplate(a..., b)

"""
Updates an existing message template for messages that are sent through the voice channel.
"""
UpdateVoiceTemplate(TemplateName, VoiceTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/voice")
UpdateVoiceTemplate(TemplateName, VoiceTemplateRequest, args) = pinpoint("PUT", "/v1/templates/$template-name/voice", args)
UpdateVoiceTemplate(a...; b...) = UpdateVoiceTemplate(a..., b)

"""
 Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for a batch of endpoints.
"""
UpdateEndpointsBatch(ApplicationId, EndpointBatchRequest) = pinpoint("PUT", "/v1/apps/$application-id/endpoints")
UpdateEndpointsBatch(ApplicationId, EndpointBatchRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/endpoints", args)
UpdateEndpointsBatch(a...; b...) = UpdateEndpointsBatch(a..., b)

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey.
"""
GetJourneyExecutionMetrics(ApplicationId, JourneyId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/execution-metrics")
GetJourneyExecutionMetrics(ApplicationId, JourneyId, args) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/execution-metrics", args)
GetJourneyExecutionMetrics(a...; b...) = GetJourneyExecutionMetrics(a..., b)

"""
Changes the status of a specific version of a message template to active.
"""
UpdateTemplateActiveVersion(TemplateName, TemplateType, TemplateActiveVersionRequest) = pinpoint("PUT", "/v1/templates/$template-name/$template-type/active-version")
UpdateTemplateActiveVersion(TemplateName, TemplateType, TemplateActiveVersionRequest, args) = pinpoint("PUT", "/v1/templates/$template-name/$template-type/active-version", args)
UpdateTemplateActiveVersion(a...; b...) = UpdateTemplateActiveVersion(a..., b)

"""
Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for an endpoint.
"""
UpdateEndpoint(ApplicationId, EndpointId, EndpointRequest) = pinpoint("PUT", "/v1/apps/$application-id/endpoints/$endpoint-id")
UpdateEndpoint(ApplicationId, EndpointId, EndpointRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/endpoints/$endpoint-id", args)
UpdateEndpoint(a...; b...) = UpdateEndpoint(a..., b)

"""
Enables the ADM channel for an application or updates the status and settings of the ADM channel for an application.
"""
UpdateAdmChannel(ApplicationId, ADMChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/adm")
UpdateAdmChannel(ApplicationId, ADMChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/adm", args)
UpdateAdmChannel(a...; b...) = UpdateAdmChannel(a..., b)

"""
Creates an export job for an application.
"""
CreateExportJob(ApplicationId, ExportJobRequest) = pinpoint("POST", "/v1/apps/$application-id/jobs/export")
CreateExportJob(ApplicationId, ExportJobRequest, args) = pinpoint("POST", "/v1/apps/$application-id/jobs/export", args)
CreateExportJob(a...; b...) = CreateExportJob(a..., b)

"""
Retrieves information about the settings for an application.
"""
GetApplicationSettings(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/settings")
GetApplicationSettings(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/settings", args)
GetApplicationSettings(a...; b...) = GetApplicationSettings(a..., b)

"""
Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application.
"""
UpdateSmsChannel(ApplicationId, SMSChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/sms")
UpdateSmsChannel(ApplicationId, SMSChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/sms", args)
UpdateSmsChannel(a...; b...) = UpdateSmsChannel(a..., b)

"""
Removes one or more tags (keys and values) from an application, campaign, journey, message template, or segment.
"""
UntagResource(TagKeys, ResourceArn) = pinpoint("DELETE", "/v1/tags/$resource-arn")
UntagResource(TagKeys, ResourceArn, args) = pinpoint("DELETE", "/v1/tags/$resource-arn", args)
UntagResource(a...; b...) = UntagResource(a..., b)

"""
Disables the APNs channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns")
DeleteApnsChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns", args)
DeleteApnsChannel(a...; b...) = DeleteApnsChannel(a..., b)

"""
Enables the email channel for an application or updates the status and settings of the email channel for an application.
"""
UpdateEmailChannel(ApplicationId, EmailChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/email")
UpdateEmailChannel(ApplicationId, EmailChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/email", args)
UpdateEmailChannel(a...; b...) = UpdateEmailChannel(a..., b)

"""
Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsVoipChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip")
DeleteApnsVoipChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip", args)
DeleteApnsVoipChannel(a...; b...) = DeleteApnsVoipChannel(a..., b)

"""
Retrieves information about all the endpoints that are associated with a specific user ID.
"""
GetUserEndpoints(ApplicationId, UserId) = pinpoint("GET", "/v1/apps/$application-id/users/$user-id")
GetUserEndpoints(ApplicationId, UserId, args) = pinpoint("GET", "/v1/apps/$application-id/users/$user-id", args)
GetUserEndpoints(a...; b...) = GetUserEndpoints(a..., b)

"""
Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.
"""
UpdateBaiduChannel(ApplicationId, BaiduChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/baidu")
UpdateBaiduChannel(ApplicationId, BaiduChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/baidu", args)
UpdateBaiduChannel(a...; b...) = UpdateBaiduChannel(a..., b)

"""
Deletes a campaign from an application.
"""
DeleteCampaign(CampaignId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/campaigns/$campaign-id")
DeleteCampaign(CampaignId, ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/campaigns/$campaign-id", args)
DeleteCampaign(a...; b...) = DeleteCampaign(a..., b)

"""
Updates an existing message template for messages that are sent through the SMS channel.
"""
UpdateSmsTemplate(TemplateName, SMSTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/sms")
UpdateSmsTemplate(TemplateName, SMSTemplateRequest, args) = pinpoint("PUT", "/v1/templates/$template-name/sms", args)
UpdateSmsTemplate(a...; b...) = UpdateSmsTemplate(a..., b)

"""
Disables the Baidu channel for an application and deletes any existing settings for the channel.
"""
DeleteBaiduChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/baidu")
DeleteBaiduChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/baidu", args)
DeleteBaiduChannel(a...; b...) = DeleteBaiduChannel(a..., b)

"""
Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsVoipSandboxChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip_sandbox")
DeleteApnsVoipSandboxChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_voip_sandbox", args)
DeleteApnsVoipSandboxChannel(a...; b...) = DeleteApnsVoipSandboxChannel(a..., b)

"""
Deletes the event stream for an application.
"""
DeleteEventStream(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/eventstream")
DeleteEventStream(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/eventstream", args)
DeleteEventStream(a...; b...) = DeleteEventStream(a..., b)

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
"""
CreateSegment(ApplicationId, WriteSegmentRequest) = pinpoint("POST", "/v1/apps/$application-id/segments")
CreateSegment(ApplicationId, WriteSegmentRequest, args) = pinpoint("POST", "/v1/apps/$application-id/segments", args)
CreateSegment(a...; b...) = CreateSegment(a..., b)

"""
Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.
"""
GetApnsVoipSandboxChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip_sandbox")
GetApnsVoipSandboxChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip_sandbox", args)
GetApnsVoipSandboxChannel(a...; b...) = GetApnsVoipSandboxChannel(a..., b)

"""
Retrieves information about the status and settings of a specific import job for an application.
"""
GetImportJob(ApplicationId, JobId) = pinpoint("GET", "/v1/apps/$application-id/jobs/import/$job-id")
GetImportJob(ApplicationId, JobId, args) = pinpoint("GET", "/v1/apps/$application-id/jobs/import/$job-id", args)
GetImportJob(a...; b...) = GetImportJob(a..., b)

"""
Retrieves information about the status and settings of a specific export job for an application.
"""
GetExportJob(ApplicationId, JobId) = pinpoint("GET", "/v1/apps/$application-id/jobs/export/$job-id")
GetExportJob(ApplicationId, JobId, args) = pinpoint("GET", "/v1/apps/$application-id/jobs/export/$job-id", args)
GetExportJob(a...; b...) = GetExportJob(a..., b)

"""
Retrieves all the tags (keys and values) that are associated with an application, campaign, journey, message template, or segment.
"""
ListTagsForResource(ResourceArn) = pinpoint("GET", "/v1/tags/$resource-arn")
ListTagsForResource(ResourceArn, args) = pinpoint("GET", "/v1/tags/$resource-arn", args)
ListTagsForResource(a...; b...) = ListTagsForResource(a..., b)

"""
Creates and sends a direct message.
"""
SendMessages(ApplicationId, MessageRequest) = pinpoint("POST", "/v1/apps/$application-id/messages")
SendMessages(ApplicationId, MessageRequest, args) = pinpoint("POST", "/v1/apps/$application-id/messages", args)
SendMessages(a...; b...) = SendMessages(a..., b)

"""
Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.
"""
UpdateApnsChannel(ApplicationId, APNSChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns")
UpdateApnsChannel(ApplicationId, APNSChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns", args)
UpdateApnsChannel(a...; b...) = UpdateApnsChannel(a..., b)

"""
Retrieves information about the status and settings of the import jobs for a segment.
"""
GetSegmentImportJobs(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/import")
GetSegmentImportJobs(SegmentId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/jobs/import", args)
GetSegmentImportJobs(a...; b...) = GetSegmentImportJobs(a..., b)

"""
Retrieves the content and settings of a message template for messages that are sent through the SMS channel.
"""
GetSmsTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/sms")
GetSmsTemplate(TemplateName, args) = pinpoint("GET", "/v1/templates/$template-name/sms", args)
GetSmsTemplate(a...; b...) = GetSmsTemplate(a..., b)

"""
Disables the GCM channel for an application and deletes any existing settings for the channel.
"""
DeleteGcmChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/gcm")
DeleteGcmChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/gcm", args)
DeleteGcmChannel(a...; b...) = DeleteGcmChannel(a..., b)

"""
Deletes a journey from an application.
"""
DeleteJourney(JourneyId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/journeys/$journey-id")
DeleteJourney(JourneyId, ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/journeys/$journey-id", args)
DeleteJourney(a...; b...) = DeleteJourney(a..., b)

"""
Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
"""
PutEvents(ApplicationId, EventsRequest) = pinpoint("POST", "/v1/apps/$application-id/events")
PutEvents(ApplicationId, EventsRequest, args) = pinpoint("POST", "/v1/apps/$application-id/events", args)
PutEvents(a...; b...) = PutEvents(a..., b)

"""
Updates the settings for an application.
"""
UpdateApplicationSettings(ApplicationId, WriteApplicationSettingsRequest) = pinpoint("PUT", "/v1/apps/$application-id/settings")
UpdateApplicationSettings(ApplicationId, WriteApplicationSettingsRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/settings", args)
UpdateApplicationSettings(a...; b...) = UpdateApplicationSettings(a..., b)

"""
Cancels (stops) an active journey.
"""
UpdateJourneyState(JourneyId, ApplicationId, JourneyStateRequest) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id/state")
UpdateJourneyState(JourneyId, ApplicationId, JourneyStateRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id/state", args)
UpdateJourneyState(a...; b...) = UpdateJourneyState(a..., b)

"""
Retrieves information about all the applications that are associated with your Amazon Pinpoint account.
"""
GetApps() = pinpoint("GET", "/v1/apps")
GetApps(, args) = pinpoint("GET", "/v1/apps", args)
GetApps(a...; b...) = GetApps(a..., b)

"""
Enables the APNs VoIP channel for an application or updates the status and settings of the APNs VoIP channel for an application.
"""
UpdateApnsVoipChannel(ApplicationId, APNSVoipChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip")
UpdateApnsVoipChannel(ApplicationId, APNSVoipChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip", args)
UpdateApnsVoipChannel(a...; b...) = UpdateApnsVoipChannel(a..., b)

"""
Disables the voice channel for an application and deletes any existing settings for the channel.
"""
DeleteVoiceChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/voice")
DeleteVoiceChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/voice", args)
DeleteVoiceChannel(a...; b...) = DeleteVoiceChannel(a..., b)

"""
Updates an existing message template for messages that are sent through a push notification channel.
"""
UpdatePushTemplate(TemplateName, PushNotificationTemplateRequest) = pinpoint("PUT", "/v1/templates/$template-name/push")
UpdatePushTemplate(TemplateName, PushNotificationTemplateRequest, args) = pinpoint("PUT", "/v1/templates/$template-name/push", args)
UpdatePushTemplate(a...; b...) = UpdatePushTemplate(a..., b)

"""
Deletes an endpoint from an application.
"""
DeleteEndpoint(ApplicationId, EndpointId) = pinpoint("DELETE", "/v1/apps/$application-id/endpoints/$endpoint-id")
DeleteEndpoint(ApplicationId, EndpointId, args) = pinpoint("DELETE", "/v1/apps/$application-id/endpoints/$endpoint-id", args)
DeleteEndpoint(a...; b...) = DeleteEndpoint(a..., b)

"""
Creates a new event stream for an application or updates the settings of an existing event stream for an application.
"""
PutEventStream(ApplicationId, WriteEventStream) = pinpoint("POST", "/v1/apps/$application-id/eventstream")
PutEventStream(ApplicationId, WriteEventStream, args) = pinpoint("POST", "/v1/apps/$application-id/eventstream", args)
PutEventStream(a...; b...) = PutEventStream(a..., b)

"""
Creates and sends a message to a list of users.
"""
SendUsersMessages(ApplicationId, SendUsersMessageRequest) = pinpoint("POST", "/v1/apps/$application-id/users-messages")
SendUsersMessages(ApplicationId, SendUsersMessageRequest, args) = pinpoint("POST", "/v1/apps/$application-id/users-messages", args)
SendUsersMessages(a...; b...) = SendUsersMessages(a..., b)

"""
Enables the GCM channel for an application or updates the status and settings of the GCM channel for an application.
"""
UpdateGcmChannel(ApplicationId, GCMChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/gcm")
UpdateGcmChannel(ApplicationId, GCMChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/gcm", args)
UpdateGcmChannel(a...; b...) = UpdateGcmChannel(a..., b)

"""
Retrieves information about all the message templates that are associated with your Amazon Pinpoint account.
"""
ListTemplates() = pinpoint("GET", "/v1/templates")
ListTemplates(, args) = pinpoint("GET", "/v1/templates", args)
ListTemplates(a...; b...) = ListTemplates(a..., b)

"""
Retrieves information about the status and settings of all the import jobs for an application.
"""
GetImportJobs(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/jobs/import")
GetImportJobs(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/jobs/import", args)
GetImportJobs(a...; b...) = GetImportJobs(a..., b)

"""
Retrieves information about the status and settings of the Baidu channel for an application.
"""
GetBaiduChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/baidu")
GetBaiduChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/baidu", args)
GetBaiduChannel(a...; b...) = GetBaiduChannel(a..., b)

"""
Retrieves information about the status and settings of the email channel for an application.
"""
GetEmailChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/email")
GetEmailChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/email", args)
GetEmailChannel(a...; b...) = GetEmailChannel(a..., b)

"""
Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.
"""
ListJourneys(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/journeys")
ListJourneys(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/journeys", args)
ListJourneys(a...; b...) = ListJourneys(a..., b)

"""
Deletes a segment from an application.
"""
DeleteSegment(SegmentId, ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/segments/$segment-id")
DeleteSegment(SegmentId, ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/segments/$segment-id", args)
DeleteSegment(a...; b...) = DeleteSegment(a..., b)

"""
Deletes all the endpoints that are associated with a specific user ID.
"""
DeleteUserEndpoints(ApplicationId, UserId) = pinpoint("DELETE", "/v1/apps/$application-id/users/$user-id")
DeleteUserEndpoints(ApplicationId, UserId, args) = pinpoint("DELETE", "/v1/apps/$application-id/users/$user-id", args)
DeleteUserEndpoints(a...; b...) = DeleteUserEndpoints(a..., b)

"""
Retrieves information about the status and settings of the voice channel for an application.
"""
GetVoiceChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/voice")
GetVoiceChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/voice", args)
GetVoiceChannel(a...; b...) = GetVoiceChannel(a..., b)

"""
Creates a message template for messages that are sent through the voice channel.
"""
CreateVoiceTemplate(TemplateName, VoiceTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/voice")
CreateVoiceTemplate(TemplateName, VoiceTemplateRequest, args) = pinpoint("POST", "/v1/templates/$template-name/voice", args)
CreateVoiceTemplate(a...; b...) = CreateVoiceTemplate(a..., b)

"""
Retrieves information about the configuration, dimension, and other settings for all the versions of a specific segment that's associated with an application.
"""
GetSegmentVersions(SegmentId, ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions")
GetSegmentVersions(SegmentId, ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/segments/$segment-id/versions", args)
GetSegmentVersions(a...; b...) = GetSegmentVersions(a..., b)

"""
Retrieves information about the status and settings of the APNs VoIP channel for an application.
"""
GetApnsVoipChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip")
GetApnsVoipChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_voip", args)
GetApnsVoipChannel(a...; b...) = GetApnsVoipChannel(a..., b)

"""
Retrieves information about the status and settings of the APNs sandbox channel for an application.
"""
GetApnsSandboxChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_sandbox")
GetApnsSandboxChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/apns_sandbox", args)
GetApnsSandboxChannel(a...; b...) = GetApnsSandboxChannel(a..., b)

"""
Disables the SMS channel for an application and deletes any existing settings for the channel.
"""
DeleteSmsChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/sms")
DeleteSmsChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/sms", args)
DeleteSmsChannel(a...; b...) = DeleteSmsChannel(a..., b)

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.
"""
GetCampaignDateRangeKpi(ApplicationId, KpiName, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/kpis/daterange/$kpi-name")
GetCampaignDateRangeKpi(ApplicationId, KpiName, CampaignId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/kpis/daterange/$kpi-name", args)
GetCampaignDateRangeKpi(a...; b...) = GetCampaignDateRangeKpi(a..., b)

"""
Retrieves information about the status and settings of all the export jobs for an application.
"""
GetExportJobs(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/jobs/export")
GetExportJobs(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/jobs/export", args)
GetExportJobs(a...; b...) = GetExportJobs(a..., b)

"""
Retrieves information about a phone number.
"""
PhoneNumberValidate(NumberValidateRequest) = pinpoint("POST", "/v1/phone/number/validate")
PhoneNumberValidate(NumberValidateRequest, args) = pinpoint("POST", "/v1/phone/number/validate", args)
PhoneNumberValidate(a...; b...) = PhoneNumberValidate(a..., b)

"""
Retrieves the content and settings of a message template for messages that are sent through a push notification channel.
"""
GetPushTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/push")
GetPushTemplate(TemplateName, args) = pinpoint("GET", "/v1/templates/$template-name/push", args)
GetPushTemplate(a...; b...) = GetPushTemplate(a..., b)

"""
Creates a message template for messages that are sent through a push notification channel.
"""
CreatePushTemplate(TemplateName, PushNotificationTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/push")
CreatePushTemplate(TemplateName, PushNotificationTemplateRequest, args) = pinpoint("POST", "/v1/templates/$template-name/push", args)
CreatePushTemplate(a...; b...) = CreatePushTemplate(a..., b)

"""
Deletes a message template for messages that were sent through a push notification channel.
"""
DeletePushTemplate(TemplateName) = pinpoint("DELETE", "/v1/templates/$template-name/push")
DeletePushTemplate(TemplateName, args) = pinpoint("DELETE", "/v1/templates/$template-name/push", args)
DeletePushTemplate(a...; b...) = DeletePushTemplate(a..., b)

"""
Retrieves information about the status, configuration, and other settings for all versions of a campaign.
"""
GetCampaignVersions(ApplicationId, CampaignId) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions")
GetCampaignVersions(ApplicationId, CampaignId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns/$campaign-id/versions", args)
GetCampaignVersions(a...; b...) = GetCampaignVersions(a..., b)

"""
 Creates an application.
"""
CreateApp(CreateApplicationRequest) = pinpoint("POST", "/v1/apps")
CreateApp(CreateApplicationRequest, args) = pinpoint("POST", "/v1/apps", args)
CreateApp(a...; b...) = CreateApp(a..., b)

"""
Creates a message template for messages that are sent through the email channel.
"""
CreateEmailTemplate(TemplateName, EmailTemplateRequest) = pinpoint("POST", "/v1/templates/$template-name/email")
CreateEmailTemplate(TemplateName, EmailTemplateRequest, args) = pinpoint("POST", "/v1/templates/$template-name/email", args)
CreateEmailTemplate(a...; b...) = CreateEmailTemplate(a..., b)

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.
"""
GetApplicationDateRangeKpi(ApplicationId, KpiName) = pinpoint("GET", "/v1/apps/$application-id/kpis/daterange/$kpi-name")
GetApplicationDateRangeKpi(ApplicationId, KpiName, args) = pinpoint("GET", "/v1/apps/$application-id/kpis/daterange/$kpi-name", args)
GetApplicationDateRangeKpi(a...; b...) = GetApplicationDateRangeKpi(a..., b)

"""
Retrieves information about the status and settings of the ADM channel for an application.
"""
GetAdmChannel(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/channels/adm")
GetAdmChannel(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/channels/adm", args)
GetAdmChannel(a...; b...) = GetAdmChannel(a..., b)

"""
Updates the configuration and other settings for a journey.
"""
UpdateJourney(JourneyId, ApplicationId, WriteJourneyRequest) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id")
UpdateJourney(JourneyId, ApplicationId, WriteJourneyRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/journeys/$journey-id", args)
UpdateJourney(a...; b...) = UpdateJourney(a..., b)

"""
Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.
"""
UpdateApnsVoipSandboxChannel(ApplicationId, APNSVoipSandboxChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip_sandbox")
UpdateApnsVoipSandboxChannel(ApplicationId, APNSVoipSandboxChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/apns_voip_sandbox", args)
UpdateApnsVoipSandboxChannel(a...; b...) = UpdateApnsVoipSandboxChannel(a..., b)

"""
Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.
"""
GetJourneyDateRangeKpi(JourneyId, ApplicationId, KpiName) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/kpis/daterange/$kpi-name")
GetJourneyDateRangeKpi(JourneyId, ApplicationId, KpiName, args) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/kpis/daterange/$kpi-name", args)
GetJourneyDateRangeKpi(a...; b...) = GetJourneyDateRangeKpi(a..., b)

"""
Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.
"""
DeleteApnsSandboxChannel(ApplicationId) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_sandbox")
DeleteApnsSandboxChannel(ApplicationId, args) = pinpoint("DELETE", "/v1/apps/$application-id/channels/apns_sandbox", args)
DeleteApnsSandboxChannel(a...; b...) = DeleteApnsSandboxChannel(a..., b)

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey activity.
"""
GetJourneyExecutionActivityMetrics(JourneyActivityId, ApplicationId, JourneyId) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/activities/$journey-activity-id/execution-metrics")
GetJourneyExecutionActivityMetrics(JourneyActivityId, ApplicationId, JourneyId, args) = pinpoint("GET", "/v1/apps/$application-id/journeys/$journey-id/activities/$journey-activity-id/execution-metrics", args)
GetJourneyExecutionActivityMetrics(a...; b...) = GetJourneyExecutionActivityMetrics(a..., b)

"""
Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.
"""
GetCampaigns(ApplicationId) = pinpoint("GET", "/v1/apps/$application-id/campaigns")
GetCampaigns(ApplicationId, args) = pinpoint("GET", "/v1/apps/$application-id/campaigns", args)
GetCampaigns(a...; b...) = GetCampaigns(a..., b)

"""
Retrieves the content and settings of a message template for messages that are sent through the voice channel.
"""
GetVoiceTemplate(TemplateName) = pinpoint("GET", "/v1/templates/$template-name/voice")
GetVoiceTemplate(TemplateName, args) = pinpoint("GET", "/v1/templates/$template-name/voice", args)
GetVoiceTemplate(a...; b...) = GetVoiceTemplate(a..., b)

"""
Enables the voice channel for an application or updates the status and settings of the voice channel for an application.
"""
UpdateVoiceChannel(ApplicationId, VoiceChannelRequest) = pinpoint("PUT", "/v1/apps/$application-id/channels/voice")
UpdateVoiceChannel(ApplicationId, VoiceChannelRequest, args) = pinpoint("PUT", "/v1/apps/$application-id/channels/voice", args)
UpdateVoiceChannel(a...; b...) = UpdateVoiceChannel(a..., b)
