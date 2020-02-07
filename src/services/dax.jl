include("../AWSCorePrototypeServices.jl")
using .Services: dax

"""
Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.

Required Parameters:
ClusterName, NodeType, ReplicationFactor, IamRoleArn
"""
CreateCluster(args) = dax("CreateCluster", args)

"""
Returns the detailed parameter list for a particular parameter group.

Required Parameters:
ParameterGroupName
"""
DescribeParameters(args) = dax("DescribeParameters", args)

"""
Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter. By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
"""
DescribeEvents() = dax("DescribeEvents")

"""
Modifies an existing subnet group.

Required Parameters:
SubnetGroupName
"""
UpdateSubnetGroup(args) = dax("UpdateSubnetGroup", args)

"""
Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.   RebootNode restarts the DAX engine process and does not remove the contents of the cache.  

Required Parameters:
ClusterName, NodeId
"""
RebootNode(args) = dax("RebootNode", args)

"""
Associates a set of tags with a DAX resource. You can call TagResource up to 5 times per second, per account. 

Required Parameters:
ResourceName, Tags
"""
TagResource(args) = dax("TagResource", args)

"""
Removes the association of tags from a DAX resource. You can call UntagResource up to 5 times per second, per account. 

Required Parameters:
ResourceName, TagKeys
"""
UntagResource(args) = dax("UntagResource", args)

"""
Deletes a subnet group.  You cannot delete a subnet group if it is associated with any DAX clusters. 

Required Parameters:
SubnetGroupName
"""
DeleteSubnetGroup(args) = dax("DeleteSubnetGroup", args)

"""
Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.

Required Parameters:
ClusterName
"""
UpdateCluster(args) = dax("UpdateCluster", args)

"""
Adds one or more nodes to a DAX cluster.

Required Parameters:
ClusterName, NewReplicationFactor
"""
IncreaseReplicationFactor(args) = dax("IncreaseReplicationFactor", args)

"""
Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.

Required Parameters:
ParameterGroupName, ParameterNameValues
"""
UpdateParameterGroup(args) = dax("UpdateParameterGroup", args)

"""
Creates a new subnet group.

Required Parameters:
SubnetGroupName, SubnetIds
"""
CreateSubnetGroup(args) = dax("CreateSubnetGroup", args)

"""
Returns the default system parameter information for the DAX caching software.
"""
DescribeDefaultParameters() = dax("DescribeDefaultParameters")

"""
Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.

Required Parameters:
ClusterName
"""
DeleteCluster(args) = dax("DeleteCluster", args)

"""
Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.

Required Parameters:
ParameterGroupName
"""
CreateParameterGroup(args) = dax("CreateParameterGroup", args)

"""
Removes one or more nodes from a DAX cluster.  You cannot use DecreaseReplicationFactor to remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead. 

Required Parameters:
ClusterName, NewReplicationFactor
"""
DecreaseReplicationFactor(args) = dax("DecreaseReplicationFactor", args)

"""
Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
"""
DescribeParameterGroups() = dax("DescribeParameterGroups")

"""
List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second, per account.

Required Parameters:
ResourceName
"""
ListTags(args) = dax("ListTags", args)

"""
Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.

Required Parameters:
ParameterGroupName
"""
DeleteParameterGroup(args) = dax("DeleteParameterGroup", args)

"""
Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
"""
DescribeSubnetGroups() = dax("DescribeSubnetGroups")

"""
Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied. If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster level information will be displayed. If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is available, the cluster is ready for use. If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
"""
DescribeClusters() = dax("DescribeClusters")
