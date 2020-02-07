include("../AWSCorePrototypeServices.jl")
using .Services: compute_optimizer

"""
Returns Auto Scaling group recommendations. AWS Compute Optimizer currently generates recommendations for Auto Scaling groups that are configured to run instances of the M, C, R, T, and X instance families. The service does not generate recommendations for Auto Scaling groups that have a scaling policy attached to them, or that do not have the same values for desired, minimum, and maximum capacity. In order for Compute Optimizer to analyze your Auto Scaling groups, they must be of a fixed size. For more information, see the AWS Compute Optimizer User Guide.
"""
GetAutoScalingGroupRecommendations() = compute_optimizer("GetAutoScalingGroupRecommendations")

"""
Returns Amazon EC2 instance recommendations. AWS Compute Optimizer currently generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It generates recommendations for M, C, R, T, and X instance families. For more information, see the AWS Compute Optimizer User Guide.
"""
GetEC2InstanceRecommendations() = compute_optimizer("GetEC2InstanceRecommendations")

"""
Returns the projected utilization metrics of Amazon EC2 instance recommendations.

Required Parameters:
instanceArn, stat, period, startTime, endTime
"""
GetEC2RecommendationProjectedMetrics(args) = compute_optimizer("GetEC2RecommendationProjectedMetrics", args)

"""
Returns the optimization findings for an account. For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.
"""
GetRecommendationSummaries() = compute_optimizer("GetRecommendationSummaries")

"""
Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this operation also confirms the enrollment status of member accounts within the organization.
"""
GetEnrollmentStatus() = compute_optimizer("GetEnrollmentStatus")

"""
Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this operation can also enroll member accounts within the organization.

Required Parameters:
status
"""
UpdateEnrollmentStatus(args) = compute_optimizer("UpdateEnrollmentStatus", args)
