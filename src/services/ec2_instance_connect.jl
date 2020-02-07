include("../AWSCorePrototypeServices.jl")
using .Services: ec2_instance_connect

"""
Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds.

Required Parameters:
InstanceId, InstanceOSUser, SSHPublicKey, AvailabilityZone
"""
SendSSHPublicKey(args) = ec2_instance_connect("SendSSHPublicKey", args)
