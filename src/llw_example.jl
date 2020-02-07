include("AWSCorePrototype.jl")

using .AWSCorePrototype.Services: s3, auto_scaling, glacier
using SymDict

function rest_xml()
    s3("PUT", "/mattbr-test-bucket-ayyy-lmao"; content=
    """
       <CreateBucketConfiguration
           <LocationConstraint>us-east-2</LocationConstraint>
       </CreateBucketConfiguration>"""
    )

    buckets = s3("GET", "/")
    println(buckets)
end

function query()
    autoscaling_groups = auto_scaling("DescribeAutoScalingGroups")
    println(autoscaling_groups)
end

function rest_json()
    query = @SymDict(
        "351396300852",
        "mattbr-test-vault-name"
    )
    vault_name = "mattbr-test-vault-name"
    vault = glacier("PUT", "/accountId/vaults/vaultName", query=query)
end

rest_json()
# rest_xml()
# query()