include("../AWSCorePrototypeServices.jl")
using .Services: cost_and_usage_report_service

"""
    ModifyReportDefinition

Allows you to programatically update your report preferences.

Required Parameters:
{
  "ReportName": "",
  "ReportDefinition": ""
}


Optional Parameters:
{}

"""

ModifyReportDefinition(args) = cost_and_usage_report_service("ModifyReportDefinition", args)
"""
    DeleteReportDefinition

Deletes the specified report.

Required Parameters:
{}


Optional Parameters:
{
  "ReportName": ""
}

"""
DeleteReportDefinition() = cost_and_usage_report_service("DeleteReportDefinition")
DeleteReportDefinition(args) = cost_and_usage_report_service("DeleteReportDefinition", args)

"""
    PutReportDefinition

Creates a new report using the description that you provide.

Required Parameters:
{
  "ReportDefinition": "Represents the output of the PutReportDefinition operation. The content consists of the detailed metadata and data file information. "
}


Optional Parameters:
{}

"""

PutReportDefinition(args) = cost_and_usage_report_service("PutReportDefinition", args)
"""
    DescribeReportDefinitions

Lists the AWS Cost and Usage reports available to this account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "",
  "NextToken": ""
}

"""
DescribeReportDefinitions() = cost_and_usage_report_service("DescribeReportDefinitions")
DescribeReportDefinitions(args) = cost_and_usage_report_service("DescribeReportDefinitions", args)
