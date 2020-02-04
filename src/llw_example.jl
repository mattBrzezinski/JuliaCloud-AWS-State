include("AWSCorePrototype.jl")

using .AWSCorePrototype.Services: s3, auto_scaling

function rest_xml()
    buckets = s3("GET", "/")
    println(buckets)
end

function query()
    autoscaling_groups = auto_scaling("DescribeAutoScalingGroups")
    println(autoscaling_groups)
end

rest_xml()
query()