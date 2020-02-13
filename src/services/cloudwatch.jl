include("../AWSCorePrototypeServices.jl")
using .Services: cloudwatch

"""
    ListTagsForResource()

Displays the tags associated with a CloudWatch resource. Alarms support tagging.

Required Parameters
{
  "ResourceARN": "The ARN of the CloudWatch resource that you want to view tags for. For more information on ARN format, see Example ARNs in the Amazon Web Services General Reference."
}
"""
ListTagsForResource(args) = cloudwatch("ListTagsForResource", args)

"""
    GetMetricStatistics()

Gets statistics for the specified metric. The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order. CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned. CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:   The SampleCount value of the statistic set is 1.   The Min and the Max values of the statistic set are equal.   Percentile statistics are not available for metrics when any of the metric values are negative numbers. Amazon CloudWatch retains metric data as follows:   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).   Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour. CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016. For information about metrics and dimensions supported by AWS services, see the Amazon CloudWatch Metrics and Dimensions Reference in the Amazon CloudWatch User Guide.

Required Parameters
{
  "StartTime": "The time stamp that determines the first data point to return. Start times are evaluated relative to the time that CloudWatch receives the request. The value specified is inclusive; results include data points with the specified time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z). CloudWatch rounds the specified time stamp as follows:   Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.   Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.   Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.   If you set Period to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15. ",
  "Period": "The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a PutMetricData call that includes a StorageResolution of 1 second. If the StartTime parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:   Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).   Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).   Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).  ",
  "EndTime": "The time stamp that determines the last data point to return. The value specified is exclusive; results include data points up to the specified time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).",
  "MetricName": "The name of the metric, with or without spaces.",
  "Namespace": "The namespace of the metric, with or without spaces."
}

Optional Parameters
{
  "Statistics": "The metric statistics, other than percentile. For percentile statistics, use ExtendedStatistics. When calling GetMetricStatistics, you must specify either Statistics or ExtendedStatistics, but not both.",
  "ExtendedStatistics": "The percentile statistics. Specify values between p0.0 and p100. When calling GetMetricStatistics, you must specify either Statistics or ExtendedStatistics, but not both. Percentile statistics are not available for metrics when any of the metric values are negative numbers.",
  "Dimensions": "The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. If a specific combination of dimensions was not published, you can't retrieve statistics for it. You must specify the same dimensions that were used when the metrics were created. For an example, see Dimension Combinations in the Amazon CloudWatch User Guide. For more information about specifying dimensions, see Publishing Metrics in the Amazon CloudWatch User Guide.",
  "Unit": "The unit for a given metric. If you omit Unit, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions."
}
"""
GetMetricStatistics(args) = cloudwatch("GetMetricStatistics", args)

"""
    ListMetrics()

List the specified metrics. You can use the returned metrics with GetMetricData or GetMetricStatistics to obtain statistical data. Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls. After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using GetMetricData or GetMetricStatistics.

Optional Parameters
{
  "Dimensions": "The dimensions to filter against.",
  "NextToken": "The token returned by a previous call to indicate that there is more data available.",
  "MetricName": "The name of the metric to filter against.",
  "Namespace": "The namespace to filter against."
}
"""
ListMetrics() = cloudwatch("ListMetrics")
ListMetrics(args) = cloudwatch("ListMetrics", args)

"""
    SetAlarmState()

Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to ALARM sends an SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens quickly, it is typically only visible in the alarm's History tab in the Amazon CloudWatch console or through DescribeAlarmHistory.

Required Parameters
{
  "AlarmName": "The name for the alarm. This name must be unique within the AWS account. The maximum length is 255 characters.",
  "StateValue": "The value of the state.",
  "StateReason": "The reason that this alarm is set to this specific state, in text format."
}

Optional Parameters
{
  "StateReasonData": "The reason that this alarm is set to this specific state, in JSON format."
}
"""
SetAlarmState(args) = cloudwatch("SetAlarmState", args)

"""
    DescribeAlarms()

Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.

Optional Parameters
{
  "StateValue": "The state value to be used in matching alarms.",
  "MaxRecords": "The maximum number of alarm descriptions to retrieve.",
  "NextToken": "The token returned by a previous call to indicate that there is more data available.",
  "AlarmNames": "The names of the alarms.",
  "ActionPrefix": "The action name prefix.",
  "AlarmNamePrefix": "The alarm name prefix. If this parameter is specified, you cannot specify AlarmNames."
}
"""
DescribeAlarms() = cloudwatch("DescribeAlarms")
DescribeAlarms(args) = cloudwatch("DescribeAlarms", args)

"""
    EnableInsightRules()

Enables the specified Contributor Insights rules. When rules are enabled, they immediately begin analyzing log data.

Required Parameters
{
  "RuleNames": "An array of the rule names to enable. If you need to find out the names of your rules, use DescribeInsightRules."
}
"""
EnableInsightRules(args) = cloudwatch("EnableInsightRules", args)

"""
    DescribeAlarmHistory()

Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned. CloudWatch retains the history of an alarm even if you delete the alarm.

Optional Parameters
{
  "AlarmName": "The name of the alarm.",
  "EndDate": "The ending date to retrieve alarm history.",
  "MaxRecords": "The maximum number of alarm history records to retrieve.",
  "NextToken": "The token returned by a previous call to indicate that there is more data available.",
  "StartDate": "The starting date to retrieve alarm history.",
  "HistoryItemType": "The type of alarm histories to retrieve."
}
"""
DescribeAlarmHistory() = cloudwatch("DescribeAlarmHistory")
DescribeAlarmHistory(args) = cloudwatch("DescribeAlarmHistory", args)

"""
    PutMetricAlarm()

Creates or updates an alarm and associates it with the specified metric, metric math expression, or anomaly detection model. Alarms based on anomaly detection models cannot have Auto Scaling actions. When this operation creates an alarm, the alarm state is immediately set to INSUFFICIENT_DATA. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed. When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm. If you are an IAM user, you must have Amazon EC2 permissions for some alarm operations:    iam:CreateServiceLinkedRole for all alarms with EC2 actions    ec2:DescribeInstanceStatus and ec2:DescribeInstances for all alarms on EC2 instance status metrics    ec2:StopInstances for alarms with stop actions    ec2:TerminateInstances for alarms with terminate actions   No specific permissions are needed for alarms with recover actions   If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed. If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies. If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions. The first time you create an alarm in the AWS Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the necessary service-linked role for you. The service-linked role is called AWSServiceRoleForCloudWatchEvents. For more information, see AWS service-linked role.

Required Parameters
{
  "AlarmName": "The name for the alarm. This name must be unique within your AWS account.",
  "EvaluationPeriods": "The number of periods over which data is compared to the specified threshold. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an \"M out of N\" alarm, this value is the N. An alarm's total current evaluation period can be no longer than one day, so this number multiplied by Period cannot be more than 86,400 seconds.",
  "ComparisonOperator": " The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand. The values LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
}

Optional Parameters
{
  "Statistic": "The statistic for the metric specified in MetricName, other than percentile. For percentile statistics, use ExtendedStatistic. When you call PutMetricAlarm and specify a MetricName, you must specify either Statistic or ExtendedStatistic, but not both.",
  "InsufficientDataActions": "The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN). Valid Values: arn:aws:automate:region:ec2:stop | arn:aws:automate:region:ec2:terminate | arn:aws:automate:region:ec2:recover | arn:aws:automate:region:ec2:reboot | arn:aws:sns:region:account-id:sns-topic-name  | arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name   Valid Values (for use with IAM roles): &gt;arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0 ",
  "Dimensions": "The dimensions for the metric specified in MetricName.",
  "DatapointsToAlarm": "The number of data points that must be breaching to trigger the alarm. This is used only if you are setting an \"M out of N\" alarm. In that case, this value is the M. For more information, see Evaluating an Alarm in the Amazon CloudWatch User Guide.",
  "ExtendedStatistic": "The percentile statistic for the metric specified in MetricName. Specify a value between p0.0 and p100. When you call PutMetricAlarm and specify a MetricName, you must specify either Statistic or ExtendedStatistic, but not both.",
  "Period": "The length, in seconds, used each time the metric specified in MetricName is evaluated. Valid values are 10, 30, and any multiple of 60.  Period is required for alarms based on static thresholds. If you are creating an alarm based on a metric math expression, you specify the period for each metric within the objects in the Metrics array. Be sure to specify 10 or 30 only for metrics that are stored by a PutMetricData call with a StorageResolution of 1. If you specify a period of 10 or 30 for a metric that does not have sub-minute resolution, the alarm still attempts to gather data at the period rate that you specify. In this case, it does not receive data for the attempts that do not correspond to a one-minute data resolution, and the alarm may often lapse into INSUFFICENT_DATA status. Specifying 10 or 30 also sets this alarm as a high-resolution alarm, which has a higher charge than other alarms. For more information about pricing, see Amazon CloudWatch Pricing. An alarm's total current evaluation period can be no longer than one day, so Period multiplied by EvaluationPeriods cannot be more than 86,400 seconds.",
  "Unit": "The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately. If you don't specify Unit, CloudWatch retrieves all unit types that have been published for the metric and attempts to evaluate the alarm. Usually metrics are published with only one unit, so the alarm will work as intended. However, if the metric is published with multiple types of units and you don't specify a unit, the alarm's behavior is not defined and will behave un-predictably. We recommend omitting Unit so that you don't inadvertently specify an incorrect unit that is not published for this metric. Doing so causes the alarm to be stuck in the INSUFFICIENT DATA state.",
  "ActionsEnabled": "Indicates whether actions should be executed during any changes to the alarm state. The default is TRUE.",
  "Tags": "A list of key-value pairs to associate with the alarm. You can associate as many as 50 tags with an alarm. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values.",
  "TreatMissingData": " Sets how this alarm is to handle missing data points. If TreatMissingData is omitted, the default behavior of missing is used. For more information, see Configuring How CloudWatch Alarms Treats Missing Data. Valid Values: breaching | notBreaching | ignore | missing ",
  "AlarmDescription": "The description for the alarm.",
  "OKActions": "The actions to execute when this alarm transitions to an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN). Valid Values: arn:aws:automate:region:ec2:stop | arn:aws:automate:region:ec2:terminate | arn:aws:automate:region:ec2:recover | arn:aws:automate:region:ec2:reboot | arn:aws:sns:region:account-id:sns-topic-name  | arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name   Valid Values (for use with IAM roles): arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0 ",
  "EvaluateLowSampleCountPercentile": " Used only for alarms based on percentiles. If you specify ignore, the alarm state does not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm is always evaluated and possibly changes state no matter how many data points are available. For more information, see Percentile-Based CloudWatch Alarms and Low Data Samples. Valid Values: evaluate | ignore ",
  "AlarmActions": "The actions to execute when this alarm transitions to the ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN). Valid Values: arn:aws:automate:region:ec2:stop | arn:aws:automate:region:ec2:terminate | arn:aws:automate:region:ec2:recover | arn:aws:automate:region:ec2:reboot | arn:aws:sns:region:account-id:sns-topic-name  | arn:aws:autoscaling:region:account-id:scalingPolicy:policy-idautoScalingGroupName/group-friendly-name:policyName/policy-friendly-name   Valid Values (for use with IAM roles): arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:region:account-id:action/actions/AWS_EC2.InstanceId.Reboot/1.0 ",
  "MetricName": "The name for the metric associated with the alarm. For each PutMetricAlarm operation, you must specify either MetricName or a Metrics array. If you are creating an alarm based on a math expression, you cannot specify this parameter, or any of the Dimensions, Period, Namespace, Statistic, or ExtendedStatistic parameters. Instead, you specify all this information in the Metrics array.",
  "Metrics": "An array of MetricDataQuery structures that enable you to create an alarm based on the result of a metric math expression. For each PutMetricAlarm operation, you must specify either MetricName or a Metrics array. Each item in the Metrics array either retrieves a metric or performs a math expression. One item in the Metrics array is the expression that the alarm watches. You designate this expression by setting ReturnValue to true for this object in the array. For more information, see MetricDataQuery. If you use the Metrics parameter, you cannot include the MetricName, Dimensions, Period, Namespace, Statistic, or ExtendedStatistic parameters of PutMetricAlarm in the same operation. Instead, you retrieve the metrics you are using in your math expression as part of the Metrics array.",
  "ThresholdMetricId": "If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function. For an example of how to use this parameter, see the Anomaly Detection Model Alarm example on this page. If your alarm uses this parameter, it cannot have Auto Scaling actions.",
  "Threshold": "The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.",
  "Namespace": "The namespace for the metric associated specified in MetricName."
}
"""
PutMetricAlarm(args) = cloudwatch("PutMetricAlarm", args)

"""
    PutAnomalyDetector()

Creates an anomaly detection model for a CloudWatch metric. You can use the model to display a band of expected normal values when the metric is graphed. For more information, see CloudWatch Anomaly Detection.

Required Parameters
{
  "Stat": "The statistic to use for the metric and the anomaly detection model.",
  "MetricName": "The name of the metric to create the anomaly detection model for.",
  "Namespace": "The namespace of the metric to create the anomaly detection model for."
}

Optional Parameters
{
  "Configuration": "The configuration specifies details about how the anomaly detection model is to be trained, including time ranges to exclude when training and updating the model. You can specify as many as 10 time ranges. The configuration can also include the time zone to use for the metric. You can in",
  "Dimensions": "The metric dimensions to create the anomaly detection model for."
}
"""
PutAnomalyDetector(args) = cloudwatch("PutAnomalyDetector", args)

"""
    EnableAlarmActions()

Enables the actions for the specified alarms.

Required Parameters
{
  "AlarmNames": "The names of the alarms."
}
"""
EnableAlarmActions(args) = cloudwatch("EnableAlarmActions", args)

"""
    PutInsightRule()

Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch Logs log group, enabling you to find contributor data for the log events in that log group. For more information, see Using Contributor Insights to Analyze High-Cardinality Data. If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created may or may not be available.

Required Parameters
{
  "RuleDefinition": "The definition of the rule, as a JSON object. For details on the valid syntax, see Contributor Insights Rule Syntax.",
  "RuleName": "A unique name for the rule."
}

Optional Parameters
{
  "RuleState": "The state of the rule. Valid values are ENABLED and DISABLED."
}
"""
PutInsightRule(args) = cloudwatch("PutInsightRule", args)

"""
    GetMetricWidgetImage()

You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this image into your services and products, such as wiki pages, reports, and documents. You could also retrieve images regularly, such as every minute, and create your own custom live dashboard. The graph you retrieve can include all CloudWatch metric graph features, including metric math and horizontal and vertical annotations. There is a limit of 20 transactions per second for this API. Each GetMetricWidgetImage action has the following limits:   As many as 100 metrics in the graph.   Up to 100 KB uncompressed payload.  

Required Parameters
{
  "MetricWidget": "A JSON string that defines the bitmap graph to be retrieved. The string includes the metrics to include in the graph, statistics, annotations, title, axis limits, and so on. You can include only one MetricWidget parameter in each GetMetricWidgetImage call. For more information about the syntax of MetricWidget see CloudWatch-Metric-Widget-Structure. If any metric on the graph could not load all the requested data points, an orange triangle with an exclamation point appears next to the graph legend."
}

Optional Parameters
{
  "OutputFormat": "The format of the resulting image. Only PNG images are supported. The default is png. If you specify png, the API returns an HTTP response with the content-type set to text/xml. The image data is in a MetricWidgetImage field. For example:   &lt;GetMetricWidgetImageResponse xmlns=&lt;URLstring&gt;&gt;    &lt;GetMetricWidgetImageResult&gt;    &lt;MetricWidgetImage&gt;    iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...    &lt;/MetricWidgetImage&gt;    &lt;/GetMetricWidgetImageResult&gt;    &lt;ResponseMetadata&gt;    &lt;RequestId&gt;6f0d4192-4d42-11e8-82c1-f539a07e0e3b&lt;/RequestId&gt;    &lt;/ResponseMetadata&gt;   &lt;/GetMetricWidgetImageResponse&gt;  The image/png setting is intended only for custom HTTP requests. For most use cases, and all actions using an AWS SDK, you should use png. If you specify image/png, the HTTP response has a content-type set to image/png, and the body of the response is a PNG image. "
}
"""
GetMetricWidgetImage(args) = cloudwatch("GetMetricWidgetImage", args)

"""
    TagResource()

Assigns one or more tags (key-value pairs) to the specified CloudWatch resource. Currently, the only CloudWatch resources that can be tagged are alarms. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with an alarm that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.

Required Parameters
{
  "ResourceARN": "The ARN of the CloudWatch alarm that you're adding tags to. The ARN format is arn:aws:cloudwatch:Region:account-id:alarm:alarm-name  ",
  "Tags": "The list of key-value pairs to associate with the alarm."
}
"""
TagResource(args) = cloudwatch("TagResource", args)

"""
    DescribeAnomalyDetectors()

Lists the anomaly detection models that you have created in your account. You can list all models in your account or filter the results to only the models that are related to a certain namespace, metric name, or metric dimension.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return in one operation. The maximum value you can specify is 10. To retrieve the remaining results, make another call with the returned NextToken value. ",
  "NextToken": "Use the token returned by the previous operation to request the next page of results.",
  "Dimensions": "Limits the results to only the anomaly detection models that are associated with the specified metric dimensions. If there are multiple metrics that have these dimensions and have anomaly detection models associated, they're all returned.",
  "MetricName": "Limits the results to only the anomaly detection models that are associated with the specified metric name. If there are multiple metrics with this name in different namespaces that have anomaly detection models, they're all returned.",
  "Namespace": "Limits the results to only the anomaly detection models that are associated with the specified namespace."
}
"""
DescribeAnomalyDetectors() = cloudwatch("DescribeAnomalyDetectors")
DescribeAnomalyDetectors(args) = cloudwatch("DescribeAnomalyDetectors", args)

"""
    DisableInsightRules()

Disables the specified Contributor Insights rules. When rules are disabled, they do not analyze log groups and do not incur costs.

Required Parameters
{
  "RuleNames": "An array of the rule names to disable. If you need to find out the names of your rules, use DescribeInsightRules."
}
"""
DisableInsightRules(args) = cloudwatch("DisableInsightRules", args)

"""
    DeleteDashboards()

Deletes all dashboards that you specify. You may specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.

Required Parameters
{
  "DashboardNames": "The dashboards to be deleted. This parameter is required."
}
"""
DeleteDashboards(args) = cloudwatch("DeleteDashboards", args)

"""
    UntagResource()

Removes one or more tags from the specified resource.

Required Parameters
{
  "ResourceARN": "The ARN of the CloudWatch resource that you're removing tags from. For more information on ARN format, see Example ARNs in the Amazon Web Services General Reference.",
  "TagKeys": "The list of tag keys to remove from the resource."
}
"""
UntagResource(args) = cloudwatch("UntagResource", args)

"""
    DisableAlarmActions()

Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.

Required Parameters
{
  "AlarmNames": "The names of the alarms."
}
"""
DisableAlarmActions(args) = cloudwatch("DisableAlarmActions", args)

"""
    GetDashboard()

Displays the details of the dashboard that you specify. To copy an existing dashboard, use GetDashboard, and then use the data returned within DashboardBody as the template for the new dashboard when you call PutDashboard to create the copy.

Required Parameters
{
  "DashboardName": "The name of the dashboard to be described."
}
"""
GetDashboard(args) = cloudwatch("GetDashboard", args)

"""
    PutDashboard()

Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here. All dashboards in your account are global, not region-specific. A simple way to create a dashboard using PutDashboard is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use GetDashboard, and then use the data returned within DashboardBody as the template for the new dashboard when you call PutDashboard. When you create a dashboard with PutDashboard, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the DashboardBody script or the CloudFormation template used to create the dashboard.

Required Parameters
{
  "DashboardBody": "The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required. For more information about the syntax, see CloudWatch-Dashboard-Body-Structure.",
  "DashboardName": "The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, \"-\", and \"_\". This parameter is required."
}
"""
PutDashboard(args) = cloudwatch("PutDashboard", args)

"""
    DescribeInsightRules()

Returns a list of all the Contributor Insights rules in your account. All rules in your account are returned with a single operation. For more information about Contributor Insights, see Using Contributor Insights to Analyze High-Cardinality Data.

Optional Parameters
{
  "MaxResults": "This parameter is not currently used. Reserved for future use. If it is used in the future, the maximum value may be different.",
  "NextToken": "Reserved for future use."
}
"""
DescribeInsightRules() = cloudwatch("DescribeInsightRules")
DescribeInsightRules(args) = cloudwatch("DescribeInsightRules", args)

"""
    ListDashboards()

Returns a list of the dashboards for your account. If you include DashboardNamePrefix, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed.   ListDashboards returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call ListDashboards again and include the value you received for NextToken in the first call, to receive the next 1000 results.

Optional Parameters
{
  "NextToken": "The token returned by a previous call to indicate that there is more data available.",
  "DashboardNamePrefix": "If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, \".\", \"-\", and \"_\". "
}
"""
ListDashboards() = cloudwatch("ListDashboards")
ListDashboards(args) = cloudwatch("ListDashboards", args)

"""
    GetInsightRuleReport()

This operation returns the time series data collected by a Contributor Insights rule. The data includes the identity and number of contributors to the log group. You can also optionally return one or more statistics about each data point in the time series. These statistics can include the following:    UniqueContributors -- the number of unique contributors for each data point.    MaxContributorValue -- the value of the top contributor for each data point. The identity of the contributor may change for each data point in the graph. If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified by the rule's Value, during that period.    SampleCount -- the number of data points matched by the rule.    Sum -- the sum of the values from all contributors during the time period represented by that data point.    Minimum -- the minimum value from a single observation during the time period represented by that data point.    Maximum -- the maximum value from a single observation during the time period represented by that data point.    Average -- the average value from all contributors during the time period represented by that data point.  

Required Parameters
{
  "StartTime": "The start time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as yyyy-MM-dd'T'HH:mm:ss. For example, 2019-07-01T23:59:59.",
  "Period": "The period, in seconds, to use for the statistics in the InsightRuleMetricDatapoint results.",
  "EndTime": "The end time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as yyyy-MM-dd'T'HH:mm:ss. For example, 2019-07-01T23:59:59.",
  "RuleName": "The name of the rule that you want to see data from."
}

Optional Parameters
{
  "OrderBy": "Determines what statistic to use to rank the contributors. Valid values are SUM and MAXIMUM.",
  "Metrics": "Specifies which metrics to use for aggregation of contributor values for the report. You can specify one or more of the following metrics:    UniqueContributors -- the number of unique contributors for each data point.    MaxContributorValue -- the value of the top contributor for each data point. The identity of the contributor may change for each data point in the graph. If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified by the rule's Value, during that period.    SampleCount -- the number of data points matched by the rule.    Sum -- the sum of the values from all contributors during the time period represented by that data point.    Minimum -- the minimum value from a single observation during the time period represented by that data point.    Maximum -- the maximum value from a single observation during the time period represented by that data point.    Average -- the average value from all contributors during the time period represented by that data point.  ",
  "MaxContributorCount": "The maximum number of contributors to include in the report. The range is 1 to 100. If you omit this, the default of 10 is used."
}
"""
GetInsightRuleReport(args) = cloudwatch("GetInsightRuleReport", args)

"""
    DeleteAlarms()

Deletes the specified alarms. You can delete up to 50 alarms in one operation. In the event of an error, no alarms are deleted.

Required Parameters
{
  "AlarmNames": "The alarms to be deleted."
}
"""
DeleteAlarms(args) = cloudwatch("DeleteAlarms", args)

"""
    DeleteAnomalyDetector()

Deletes the specified anomaly detection model from your account.

Required Parameters
{
  "Stat": "The statistic associated with the anomaly detection model to delete.",
  "MetricName": "The metric name associated with the anomaly detection model to delete.",
  "Namespace": "The namespace associated with the anomaly detection model to delete."
}

Optional Parameters
{
  "Dimensions": "The metric dimensions associated with the anomaly detection model to delete."
}
"""
DeleteAnomalyDetector(args) = cloudwatch("DeleteAnomalyDetector", args)

"""
    GetMetricData()

You can use the GetMetricData API to retrieve as many as 100 different metrics in a single request, with a total of as many as 100,800 data points. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User Guide. Calls to the GetMetricData API have a different pricing structure than calls to GetMetricStatistics. For more information about pricing, see Amazon CloudWatch Pricing. Amazon CloudWatch retains metric data as follows:   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).   Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour. If you omit Unit in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.

Required Parameters
{
  "StartTime": "The time stamp indicating the earliest data to be returned. The value specified is inclusive; results include data points with the specified time stamp.  CloudWatch rounds the specified time stamp as follows:   Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.   Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.   Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.   If you set Period to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15.  For better performance, specify StartTime and EndTime values that align with the value of the metric's Period and sync up with the beginning and end of an hour. For example, if the Period of a metric is 5 minutes, specifying 12:05 or 12:30 as StartTime can get a faster response from CloudWatch than setting 12:07 or 12:29 as the StartTime.",
  "MetricDataQueries": "The metric queries to be returned. A single GetMetricData call can include as many as 100 MetricDataQuery structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data. ",
  "EndTime": "The time stamp indicating the latest data to be returned. The value specified is exclusive; results include data points up to the specified time stamp. For better performance, specify StartTime and EndTime values that align with the value of the metric's Period and sync up with the beginning and end of an hour. For example, if the Period of a metric is 5 minutes, specifying 12:05 or 12:30 as EndTime can get a faster response from CloudWatch than setting 12:07 or 12:29 as the EndTime."
}

Optional Parameters
{
  "NextToken": "Include this value, if it was returned by the previous call, to get the next set of data points.",
  "ScanBy": "The order in which data points should be returned. TimestampDescending returns the newest data first and paginates when the MaxDatapoints limit is reached. TimestampAscending returns the oldest data first and paginates when the MaxDatapoints limit is reached.",
  "MaxDatapoints": "The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used."
}
"""
GetMetricData(args) = cloudwatch("GetMetricData", args)

"""
    DeleteInsightRules()

Permanently deletes the specified Contributor Insights rules. If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created may or may not be available.

Required Parameters
{
  "RuleNames": "An array of the rule names to delete. If you need to find out the names of your rules, use DescribeInsightRules."
}
"""
DeleteInsightRules(args) = cloudwatch("DeleteInsightRules", args)

"""
    DescribeAlarmsForMetric()

Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.

Required Parameters
{
  "MetricName": "The name of the metric.",
  "Namespace": "The namespace of the metric."
}

Optional Parameters
{
  "Period": "The period, in seconds, over which the statistic is applied.",
  "Unit": "The unit for the metric.",
  "Statistic": "The statistic for the metric, other than percentiles. For percentile statistics, use ExtendedStatistics.",
  "Dimensions": "The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.",
  "ExtendedStatistic": "The percentile statistic for the metric. Specify a value between p0.0 and p100."
}
"""
DescribeAlarmsForMetric(args) = cloudwatch("DescribeAlarmsForMetric", args)

"""
    PutMetricData()

Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to ListMetrics. You can publish either individual data points in the Value field, or arrays of values and the number of times each value occurred during the period by using the Values and Counts fields in the MetricDatum structure. Using the Values and Counts method enables you to publish up to 150 values per metric with one PutMetricData request, and supports retrieving percentile statistics on this data. Each PutMetricData request is limited to 40 KB in size for HTTP POST requests. You can send a payload compressed by gzip. Each request is also limited to no more than 20 different metrics. Although the Value parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported. You can use up to 10 dimensions per metric to further clarify what data the metric collects. Each dimension consists of a Name and Value pair. For more information about specifying dimensions, see Publishing Metrics in the Amazon CloudWatch User Guide. Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for GetMetricData or GetMetricStatistics from the time they are submitted. CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:   The SampleCount value of the statistic set is 1 and Min, Max, and Sum are all equal.   The Min and Max are equal, and Sum is equal to Min multiplied by SampleCount.  

Required Parameters
{
  "MetricData": "The data for the metric. The array can include no more than 20 metrics per call.",
  "Namespace": "The namespace for the metric data. To avoid conflicts with AWS service namespaces, you should not specify a namespace that begins with AWS/ "
}
"""
PutMetricData(args) = cloudwatch("PutMetricData", args)
