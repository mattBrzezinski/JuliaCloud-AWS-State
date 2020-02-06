include("AWSCorePrototype.jl")

# This is a little bit gross
using .AWSCorePrototype: @service
using Random
using Test
using UUIDs

@service S3
@service EC2
using .S3
using .EC2

macro no_error(ex)
    quote
        try
            $(esc(ex))
            true
        catch
            false
        end
    end
end

@testset "Rest-XML" begin
    rng = MersenneTwister(1)
    bucket_name = "mattbr-" * string(uuid1(rng))

    @testset "Required Arguments" begin
        @test @no_error S3.CreateBucket(bucket_name)
        S3.DeleteBucket(bucket_name)
    end

    @testset "Optional Arguments" begin
        @test @no_error S3.CreateBucket(
            bucket_name;
            content="""
            <CreateBucketConfiguration
                <LocationConstraint>us-east-2</LocationConstraint>
            </CreateBucketConfiguration>
            """
        )
        S3.DeleteBucket(bucket_name)
    end
end

@testset "Query" begin
    EC2.CreateSecurityGroup(
        [
            "GroupDescription"=>"Test-Description",
            "GroupName"=>"Test-Name"
        ]
    )

    groups = EC2.DescribeSecurityGroups()
    println(groups)
end