include("../AWSCorePrototypeServices.jl")
using .Services: pinpoint

"""
Retrieves information about the status and settings of the GCM channel for an application.

Required Parameters:
ApplicationId
"""
GetGcmChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/gcm", args)

"""
Updates an existing message template for messages that are sent through the email channel.

Required Parameters:
TemplateName, EmailTemplateRequest
"""
UpdateEmailTemplate(args) = pinpoint("PUT", "/v1/templates/{template-name}/email", args)

"""
Updates the configuration and other settings for a campaign.

Required Parameters:
CampaignId, ApplicationId, WriteCampaignRequest
"""
UpdateCampaign(args) = pinpoint("PUT", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

"""
Disables the email channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteEmailChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/email", args)

"""
Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.

Required Parameters:
AttributeType, ApplicationId, UpdateAttributesRequest
"""
RemoveAttributes(args) = pinpoint("PUT", "/v1/apps/{application-id}/attributes/{attribute-type}", args)

"""
Deletes an application.

Required Parameters:
ApplicationId
"""
DeleteApp(args) = pinpoint("DELETE", "/v1/apps/{application-id}", args)

"""
Retrieves the content and settings of a message template for messages that are sent through the email channel.

Required Parameters:
TemplateName
"""
GetEmailTemplate(args) = pinpoint("GET", "/v1/templates/{template-name}/email", args)

"""
Retrieves information about all the activities for a campaign.

Required Parameters:
ApplicationId, CampaignId
"""
GetCampaignActivities(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", args)

"""
Retrieves information about the status and settings of the export jobs for a segment.

Required Parameters:
SegmentId, ApplicationId
"""
GetSegmentExportJobs(args) = pinpoint("GET", "/v1/apps/{application-id}/segments/{segment-id}/jobs/export", args)

"""
Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.

Required Parameters:
ApplicationId
"""
GetSegments(args) = pinpoint("GET", "/v1/apps/{application-id}/segments", args)

"""
Retrieves information about the status and settings of the APNs channel for an application.

Required Parameters:
ApplicationId
"""
GetApnsChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/apns", args)

"""
Adds one or more tags (keys and values) to an application, campaign, journey, message template, or segment.

Required Parameters:
ResourceArn, TagsModel
"""
TagResource(args) = pinpoint("POST", "/v1/tags/{resource-arn}", args)

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.

Required Parameters:
SegmentId, ApplicationId, WriteSegmentRequest
"""
UpdateSegment(args) = pinpoint("PUT", "/v1/apps/{application-id}/segments/{segment-id}", args)

"""
Disables the ADM channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteAdmChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/adm", args)

"""
Deletes a message template for messages that were sent through the SMS channel.

Required Parameters:
TemplateName
"""
DeleteSmsTemplate(args) = pinpoint("DELETE", "/v1/templates/{template-name}/sms", args)

"""
Retrieves information about the status, configuration, and other settings for a specific version of a campaign.

Required Parameters:
Version, ApplicationId, CampaignId
"""
GetCampaignVersion(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", args)

"""
Creates an import job for an application.

Required Parameters:
ApplicationId, ImportJobRequest
"""
CreateImportJob(args) = pinpoint("POST", "/v1/apps/{application-id}/jobs/import", args)

"""
Retrieves information about the status and settings of the SMS channel for an application.

Required Parameters:
ApplicationId
"""
GetSmsChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/sms", args)

"""
Retrieves information about the event stream settings for an application.

Required Parameters:
ApplicationId
"""
GetEventStream(args) = pinpoint("GET", "/v1/apps/{application-id}/eventstream", args)

"""
Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.

Required Parameters:
SegmentId, Version, ApplicationId
"""
GetSegmentVersion(args) = pinpoint("GET", "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", args)

"""
Deletes a message template for messages that were sent through the email channel.

Required Parameters:
TemplateName
"""
DeleteEmailTemplate(args) = pinpoint("DELETE", "/v1/templates/{template-name}/email", args)

"""
Retrieves information about the status, configuration, and other settings for a journey.

Required Parameters:
JourneyId, ApplicationId
"""
GetJourney(args) = pinpoint("GET", "/v1/apps/{application-id}/journeys/{journey-id}", args)

"""
Retrieves information about an application.

Required Parameters:
ApplicationId
"""
GetApp(args) = pinpoint("GET", "/v1/apps/{application-id}", args)

"""
Retrieves information about the status, configuration, and other settings for a campaign.

Required Parameters:
CampaignId, ApplicationId
"""
GetCampaign(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

"""
Enables the APNs sandbox channel for an application or updates the status and settings of the APNs sandbox channel for an application.

Required Parameters:
ApplicationId, APNSSandboxChannelRequest
"""
UpdateApnsSandboxChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/apns_sandbox", args)

"""
Retrieves information about the history and status of each channel for an application.

Required Parameters:
ApplicationId
"""
GetChannels(args) = pinpoint("GET", "/v1/apps/{application-id}/channels", args)

"""
Retrieves information about the settings and attributes of a specific endpoint for an application.

Required Parameters:
ApplicationId, EndpointId
"""
GetEndpoint(args) = pinpoint("GET", "/v1/apps/{application-id}/endpoints/{endpoint-id}", args)

"""
Deletes a message template for messages that were sent through the voice channel.

Required Parameters:
TemplateName
"""
DeleteVoiceTemplate(args) = pinpoint("DELETE", "/v1/templates/{template-name}/voice", args)

"""
Creates a journey for an application.

Required Parameters:
ApplicationId, WriteJourneyRequest
"""
CreateJourney(args) = pinpoint("POST", "/v1/apps/{application-id}/journeys", args)

"""
Retrieves information about all the versions of a specific message template.

Required Parameters:
TemplateName, TemplateType
"""
ListTemplateVersions(args) = pinpoint("GET", "/v1/templates/{template-name}/{template-type}/versions", args)

"""
Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.

Required Parameters:
SegmentId, ApplicationId
"""
GetSegment(args) = pinpoint("GET", "/v1/apps/{application-id}/segments/{segment-id}", args)

"""
Creates a new campaign for an application or updates the settings of an existing campaign for an application.

Required Parameters:
ApplicationId, WriteCampaignRequest
"""
CreateCampaign(args) = pinpoint("POST", "/v1/apps/{application-id}/campaigns", args)

"""
Creates a message template for messages that are sent through the SMS channel.

Required Parameters:
TemplateName, SMSTemplateRequest
"""
CreateSmsTemplate(args) = pinpoint("POST", "/v1/templates/{template-name}/sms", args)

"""
Updates an existing message template for messages that are sent through the voice channel.

Required Parameters:
TemplateName, VoiceTemplateRequest
"""
UpdateVoiceTemplate(args) = pinpoint("PUT", "/v1/templates/{template-name}/voice", args)

"""
 Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for a batch of endpoints.

Required Parameters:
ApplicationId, EndpointBatchRequest
"""
UpdateEndpointsBatch(args) = pinpoint("PUT", "/v1/apps/{application-id}/endpoints", args)

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey.

Required Parameters:
ApplicationId, JourneyId
"""
GetJourneyExecutionMetrics(args) = pinpoint("GET", "/v1/apps/{application-id}/journeys/{journey-id}/execution-metrics", args)

"""
Changes the status of a specific version of a message template to active.

Required Parameters:
TemplateName, TemplateType, TemplateActiveVersionRequest
"""
UpdateTemplateActiveVersion(args) = pinpoint("PUT", "/v1/templates/{template-name}/{template-type}/active-version", args)

"""
Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for an endpoint.

Required Parameters:
ApplicationId, EndpointId, EndpointRequest
"""
UpdateEndpoint(args) = pinpoint("PUT", "/v1/apps/{application-id}/endpoints/{endpoint-id}", args)

"""
Enables the ADM channel for an application or updates the status and settings of the ADM channel for an application.

Required Parameters:
ApplicationId, ADMChannelRequest
"""
UpdateAdmChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/adm", args)

"""
Creates an export job for an application.

Required Parameters:
ApplicationId, ExportJobRequest
"""
CreateExportJob(args) = pinpoint("POST", "/v1/apps/{application-id}/jobs/export", args)

"""
Retrieves information about the settings for an application.

Required Parameters:
ApplicationId
"""
GetApplicationSettings(args) = pinpoint("GET", "/v1/apps/{application-id}/settings", args)

"""
Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application.

Required Parameters:
ApplicationId, SMSChannelRequest
"""
UpdateSmsChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/sms", args)

"""
Removes one or more tags (keys and values) from an application, campaign, journey, message template, or segment.

Required Parameters:
TagKeys, ResourceArn
"""
UntagResource(args) = pinpoint("DELETE", "/v1/tags/{resource-arn}", args)

"""
Disables the APNs channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteApnsChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/apns", args)

"""
Enables the email channel for an application or updates the status and settings of the email channel for an application.

Required Parameters:
ApplicationId, EmailChannelRequest
"""
UpdateEmailChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/email", args)

"""
Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteApnsVoipChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/apns_voip", args)

"""
Retrieves information about all the endpoints that are associated with a specific user ID.

Required Parameters:
ApplicationId, UserId
"""
GetUserEndpoints(args) = pinpoint("GET", "/v1/apps/{application-id}/users/{user-id}", args)

"""
Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.

Required Parameters:
ApplicationId, BaiduChannelRequest
"""
UpdateBaiduChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/baidu", args)

"""
Deletes a campaign from an application.

Required Parameters:
CampaignId, ApplicationId
"""
DeleteCampaign(args) = pinpoint("DELETE", "/v1/apps/{application-id}/campaigns/{campaign-id}", args)

"""
Updates an existing message template for messages that are sent through the SMS channel.

Required Parameters:
TemplateName, SMSTemplateRequest
"""
UpdateSmsTemplate(args) = pinpoint("PUT", "/v1/templates/{template-name}/sms", args)

"""
Disables the Baidu channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteBaiduChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/baidu", args)

"""
Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteApnsVoipSandboxChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/apns_voip_sandbox", args)

"""
Deletes the event stream for an application.

Required Parameters:
ApplicationId
"""
DeleteEventStream(args) = pinpoint("DELETE", "/v1/apps/{application-id}/eventstream", args)

"""
Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.

Required Parameters:
ApplicationId, WriteSegmentRequest
"""
CreateSegment(args) = pinpoint("POST", "/v1/apps/{application-id}/segments", args)

"""
Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.

Required Parameters:
ApplicationId
"""
GetApnsVoipSandboxChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/apns_voip_sandbox", args)

"""
Retrieves information about the status and settings of a specific import job for an application.

Required Parameters:
ApplicationId, JobId
"""
GetImportJob(args) = pinpoint("GET", "/v1/apps/{application-id}/jobs/import/{job-id}", args)

"""
Retrieves information about the status and settings of a specific export job for an application.

Required Parameters:
ApplicationId, JobId
"""
GetExportJob(args) = pinpoint("GET", "/v1/apps/{application-id}/jobs/export/{job-id}", args)

"""
Retrieves all the tags (keys and values) that are associated with an application, campaign, journey, message template, or segment.

Required Parameters:
ResourceArn
"""
ListTagsForResource(args) = pinpoint("GET", "/v1/tags/{resource-arn}", args)

"""
Creates and sends a direct message.

Required Parameters:
ApplicationId, MessageRequest
"""
SendMessages(args) = pinpoint("POST", "/v1/apps/{application-id}/messages", args)

"""
Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.

Required Parameters:
ApplicationId, APNSChannelRequest
"""
UpdateApnsChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/apns", args)

"""
Retrieves information about the status and settings of the import jobs for a segment.

Required Parameters:
SegmentId, ApplicationId
"""
GetSegmentImportJobs(args) = pinpoint("GET", "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", args)

"""
Retrieves the content and settings of a message template for messages that are sent through the SMS channel.

Required Parameters:
TemplateName
"""
GetSmsTemplate(args) = pinpoint("GET", "/v1/templates/{template-name}/sms", args)

"""
Disables the GCM channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteGcmChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/gcm", args)

"""
Deletes a journey from an application.

Required Parameters:
JourneyId, ApplicationId
"""
DeleteJourney(args) = pinpoint("DELETE", "/v1/apps/{application-id}/journeys/{journey-id}", args)

"""
Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.

Required Parameters:
ApplicationId, EventsRequest
"""
PutEvents(args) = pinpoint("POST", "/v1/apps/{application-id}/events", args)

"""
Updates the settings for an application.

Required Parameters:
ApplicationId, WriteApplicationSettingsRequest
"""
UpdateApplicationSettings(args) = pinpoint("PUT", "/v1/apps/{application-id}/settings", args)

"""
Cancels (stops) an active journey.

Required Parameters:
JourneyId, ApplicationId, JourneyStateRequest
"""
UpdateJourneyState(args) = pinpoint("PUT", "/v1/apps/{application-id}/journeys/{journey-id}/state", args)

"""
Retrieves information about all the applications that are associated with your Amazon Pinpoint account.
"""
GetApps() = pinpoint("GET", "/v1/apps")

"""
Enables the APNs VoIP channel for an application or updates the status and settings of the APNs VoIP channel for an application.

Required Parameters:
ApplicationId, APNSVoipChannelRequest
"""
UpdateApnsVoipChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/apns_voip", args)

"""
Disables the voice channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteVoiceChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/voice", args)

"""
Updates an existing message template for messages that are sent through a push notification channel.

Required Parameters:
TemplateName, PushNotificationTemplateRequest
"""
UpdatePushTemplate(args) = pinpoint("PUT", "/v1/templates/{template-name}/push", args)

"""
Deletes an endpoint from an application.

Required Parameters:
ApplicationId, EndpointId
"""
DeleteEndpoint(args) = pinpoint("DELETE", "/v1/apps/{application-id}/endpoints/{endpoint-id}", args)

"""
Creates a new event stream for an application or updates the settings of an existing event stream for an application.

Required Parameters:
ApplicationId, WriteEventStream
"""
PutEventStream(args) = pinpoint("POST", "/v1/apps/{application-id}/eventstream", args)

"""
Creates and sends a message to a list of users.

Required Parameters:
ApplicationId, SendUsersMessageRequest
"""
SendUsersMessages(args) = pinpoint("POST", "/v1/apps/{application-id}/users-messages", args)

"""
Enables the GCM channel for an application or updates the status and settings of the GCM channel for an application.

Required Parameters:
ApplicationId, GCMChannelRequest
"""
UpdateGcmChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/gcm", args)

"""
Retrieves information about all the message templates that are associated with your Amazon Pinpoint account.
"""
ListTemplates() = pinpoint("GET", "/v1/templates")

"""
Retrieves information about the status and settings of all the import jobs for an application.

Required Parameters:
ApplicationId
"""
GetImportJobs(args) = pinpoint("GET", "/v1/apps/{application-id}/jobs/import", args)

"""
Retrieves information about the status and settings of the Baidu channel for an application.

Required Parameters:
ApplicationId
"""
GetBaiduChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/baidu", args)

"""
Retrieves information about the status and settings of the email channel for an application.

Required Parameters:
ApplicationId
"""
GetEmailChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/email", args)

"""
Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.

Required Parameters:
ApplicationId
"""
ListJourneys(args) = pinpoint("GET", "/v1/apps/{application-id}/journeys", args)

"""
Deletes a segment from an application.

Required Parameters:
SegmentId, ApplicationId
"""
DeleteSegment(args) = pinpoint("DELETE", "/v1/apps/{application-id}/segments/{segment-id}", args)

"""
Deletes all the endpoints that are associated with a specific user ID.

Required Parameters:
ApplicationId, UserId
"""
DeleteUserEndpoints(args) = pinpoint("DELETE", "/v1/apps/{application-id}/users/{user-id}", args)

"""
Retrieves information about the status and settings of the voice channel for an application.

Required Parameters:
ApplicationId
"""
GetVoiceChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/voice", args)

"""
Creates a message template for messages that are sent through the voice channel.

Required Parameters:
TemplateName, VoiceTemplateRequest
"""
CreateVoiceTemplate(args) = pinpoint("POST", "/v1/templates/{template-name}/voice", args)

"""
Retrieves information about the configuration, dimension, and other settings for all the versions of a specific segment that's associated with an application.

Required Parameters:
SegmentId, ApplicationId
"""
GetSegmentVersions(args) = pinpoint("GET", "/v1/apps/{application-id}/segments/{segment-id}/versions", args)

"""
Retrieves information about the status and settings of the APNs VoIP channel for an application.

Required Parameters:
ApplicationId
"""
GetApnsVoipChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/apns_voip", args)

"""
Retrieves information about the status and settings of the APNs sandbox channel for an application.

Required Parameters:
ApplicationId
"""
GetApnsSandboxChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/apns_sandbox", args)

"""
Disables the SMS channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteSmsChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/sms", args)

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.

Required Parameters:
ApplicationId, KpiName, CampaignId
"""
GetCampaignDateRangeKpi(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/kpis/daterange/{kpi-name}", args)

"""
Retrieves information about the status and settings of all the export jobs for an application.

Required Parameters:
ApplicationId
"""
GetExportJobs(args) = pinpoint("GET", "/v1/apps/{application-id}/jobs/export", args)

"""
Retrieves information about a phone number.

Required Parameters:
NumberValidateRequest
"""
PhoneNumberValidate(args) = pinpoint("POST", "/v1/phone/number/validate", args)

"""
Retrieves the content and settings of a message template for messages that are sent through a push notification channel.

Required Parameters:
TemplateName
"""
GetPushTemplate(args) = pinpoint("GET", "/v1/templates/{template-name}/push", args)

"""
Creates a message template for messages that are sent through a push notification channel.

Required Parameters:
TemplateName, PushNotificationTemplateRequest
"""
CreatePushTemplate(args) = pinpoint("POST", "/v1/templates/{template-name}/push", args)

"""
Deletes a message template for messages that were sent through a push notification channel.

Required Parameters:
TemplateName
"""
DeletePushTemplate(args) = pinpoint("DELETE", "/v1/templates/{template-name}/push", args)

"""
Retrieves information about the status, configuration, and other settings for all versions of a campaign.

Required Parameters:
ApplicationId, CampaignId
"""
GetCampaignVersions(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", args)

"""
 Creates an application.

Required Parameters:
CreateApplicationRequest
"""
CreateApp(args) = pinpoint("POST", "/v1/apps", args)

"""
Creates a message template for messages that are sent through the email channel.

Required Parameters:
TemplateName, EmailTemplateRequest
"""
CreateEmailTemplate(args) = pinpoint("POST", "/v1/templates/{template-name}/email", args)

"""
Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.

Required Parameters:
ApplicationId, KpiName
"""
GetApplicationDateRangeKpi(args) = pinpoint("GET", "/v1/apps/{application-id}/kpis/daterange/{kpi-name}", args)

"""
Retrieves information about the status and settings of the ADM channel for an application.

Required Parameters:
ApplicationId
"""
GetAdmChannel(args) = pinpoint("GET", "/v1/apps/{application-id}/channels/adm", args)

"""
Updates the configuration and other settings for a journey.

Required Parameters:
JourneyId, ApplicationId, WriteJourneyRequest
"""
UpdateJourney(args) = pinpoint("PUT", "/v1/apps/{application-id}/journeys/{journey-id}", args)

"""
Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.

Required Parameters:
ApplicationId, APNSVoipSandboxChannelRequest
"""
UpdateApnsVoipSandboxChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/apns_voip_sandbox", args)

"""
Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.

Required Parameters:
JourneyId, ApplicationId, KpiName
"""
GetJourneyDateRangeKpi(args) = pinpoint("GET", "/v1/apps/{application-id}/journeys/{journey-id}/kpis/daterange/{kpi-name}", args)

"""
Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.

Required Parameters:
ApplicationId
"""
DeleteApnsSandboxChannel(args) = pinpoint("DELETE", "/v1/apps/{application-id}/channels/apns_sandbox", args)

"""
Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey activity.

Required Parameters:
JourneyActivityId, ApplicationId, JourneyId
"""
GetJourneyExecutionActivityMetrics(args) = pinpoint("GET", "/v1/apps/{application-id}/journeys/{journey-id}/activities/{journey-activity-id}/execution-metrics", args)

"""
Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.

Required Parameters:
ApplicationId
"""
GetCampaigns(args) = pinpoint("GET", "/v1/apps/{application-id}/campaigns", args)

"""
Retrieves the content and settings of a message template for messages that are sent through the voice channel.

Required Parameters:
TemplateName
"""
GetVoiceTemplate(args) = pinpoint("GET", "/v1/templates/{template-name}/voice", args)

"""
Enables the voice channel for an application or updates the status and settings of the voice channel for an application.

Required Parameters:
ApplicationId, VoiceChannelRequest
"""
UpdateVoiceChannel(args) = pinpoint("PUT", "/v1/apps/{application-id}/channels/voice", args)
