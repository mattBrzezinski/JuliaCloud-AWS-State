include("../AWSCorePrototypeServices.jl")
using .Services: cost_and_usage_report_service

"""
Allows you to programatically update your report preferences.

Required Parameters:
ReportName, ReportDefinition
"""
ModifyReportDefinition(args) = cost_and_usage_report_service("ModifyReportDefinition", args)

"""
Deletes the specified report.
"""
DeleteReportDefinition() = cost_and_usage_report_service("DeleteReportDefinition")

"""
Creates a new report using the description that you provide.

Required Parameters:
ReportDefinition
"""
PutReportDefinition(args) = cost_and_usage_report_service("PutReportDefinition", args)

"""
Lists the AWS Cost and Usage reports available to this account.
"""
DescribeReportDefinitions() = cost_and_usage_report_service("DescribeReportDefinitions")
