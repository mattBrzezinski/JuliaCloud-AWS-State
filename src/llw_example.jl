include("AWSCorePrototype.jl")

using .AWSCorePrototype.Services: s3

buckets = s3("GET", "/")
println(buckets)