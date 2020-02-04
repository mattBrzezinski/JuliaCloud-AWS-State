include("AWSCorePrototype.jl")

# This is a little bit gross
using .AWSCorePrototype: @service
@service S3
using .S3
@service EC2
using .EC2

function rest_xml()
    buckets = S3.ListBuckets()
    println(buckets)
end

function query()
#     EC2.CreateSecurityGroup(
#         [
#             "GroupDescription"=>"Test-Description",
#             "GroupName"=>"Test-Name"
#         ]
#     )

    groups = EC2.DescribeSecurityGroups()
    println(groups)
end

query()
rest_xml()
