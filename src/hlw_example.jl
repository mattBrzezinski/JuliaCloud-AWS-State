include("AWSCorePrototype.jl")

# This is a little bit gross
using .AWSCorePrototype: @service
using Random
using Test
using UUIDs
using SymDict

@service S3
@service EC2
@service ECS
@service Robomaker
using .S3
using .EC2
using .ECS
using .Robomaker

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

@test_skip @testset "Rest-XML" begin
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
            <CreateBucketConfiguration>
                <LocationConstraint>us-east-2</LocationConstraint>
            </CreateBucketConfiguration>
            """
        )
        S3.DeleteBucket(bucket_name)
    end

    @testset "Header, URI, and QueryString Parameters" begin
        # DeleteObject

        S3.CreateBucket(bucket_name)
        S3.PutObject(bucket_name)
    end
end

@test_skip @testset "Query" begin
    EC2.CreateSecurityGroup(
        [
            "GroupDescription"=>"Test-Description",
            "GroupName"=>"Test-Name"
        ]
    )

    groups = EC2.DescribeSecurityGroups()
    println(groups)
end

@test_skip @testset "Rest-JSON" begin
    query = @SymDict(
        application = "arn:aws:robomaker:us-east-1:351396300852:robot-application/AWSRoboMakerHelloWorld-1581109006927_Ng9NYnJq/1581109093830"
    )

    robots = Robomaker.DescribeRobotApplication("poop", query)
    println(robots)
end

@testset "JSON" begin
    capacity_providers = ECS.ListServices(
        [
            "cluster"=>"test"
        ]
    )

    println(capacity_providers)
end