@enum Output begin
    json = 1
    yaml = 2
    text = 3
    table = 4
end

# TODO: Should we make region an enum as well?
mutable struct AWSConfig
    creds::AWSCredentials
    region::String
    output::Output
end

function AWSConfig(;
        profile=nothing,
        creds=AWSCredentials(profile=profile),
        region=get(ENV, "AWS_DEFAULT_REGION", "us-east-1"),
        output=json
    )
    return AWSConfig(creds, region, output)
end

function Base.show(io::IO, config::AWSConfig)
    println(io, "
    AWSConfig(
        creds=AWSCredentials(
            access_key=$(config.creds.access_key_id)
            secret_key=$(config.creds.secret_key[1:4])...
        ),
        region=$(config.region),
        output=$(config.output)
    )")
end