include("AWSCorePrototype.jl")

# This is a little bit gross
using .AWSCorePrototype: @service
@service S3
using .S3

buckets = S3.ListBuckets()
println(buckets)