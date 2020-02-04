include("../AWSCorePrototypeServices.jl")
using .Services: rds

"""


Required Parameters:
EngineName
"""
DescribeOptionGroupOptions(args) = rds("DescribeOptionGroupOptions", args)

"""

"""
DescribeDBEngineVersions() = rds("DescribeDBEngineVersions")

"""

"""
DescribeDBInstances() = rds("DescribeDBInstances")

"""


Required Parameters:
DBSnapshotIdentifier, DBInstanceIdentifier
"""
CreateDBSnapshot(args) = rds("CreateDBSnapshot", args)

"""


Required Parameters:
OptionGroupName, EngineName, MajorEngineVersion, OptionGroupDescription
"""
CreateOptionGroup(args) = rds("CreateOptionGroup", args)

"""


Required Parameters:
SourceDBInstanceIdentifier, TargetDBInstanceIdentifier
"""
RestoreDBInstanceToPointInTime(args) = rds("RestoreDBInstanceToPointInTime", args)

"""


Required Parameters:
DBInstanceIdentifier
"""
PromoteReadReplica(args) = rds("PromoteReadReplica", args)

"""

"""
DescribeEventCategories() = rds("DescribeEventCategories")

"""


Required Parameters:
OptionGroupName
"""
DeleteOptionGroup(args) = rds("DeleteOptionGroup", args)

"""


Required Parameters:
DBInstanceIdentifier, DBSnapshotIdentifier
"""
RestoreDBInstanceFromDBSnapshot(args) = rds("RestoreDBInstanceFromDBSnapshot", args)

"""


Required Parameters:
SubscriptionName
"""
DeleteEventSubscription(args) = rds("DeleteEventSubscription", args)

"""


Required Parameters:
DBParameterGroupName
"""
ResetDBParameterGroup(args) = rds("ResetDBParameterGroup", args)

"""


Required Parameters:
SubscriptionName
"""
ModifyEventSubscription(args) = rds("ModifyEventSubscription", args)

"""


Required Parameters:
Engine
"""
DescribeOrderableDBInstanceOptions(args) = rds("DescribeOrderableDBInstanceOptions", args)

"""

"""
DescribeDBParameterGroups() = rds("DescribeDBParameterGroups")

"""


Required Parameters:
DBParameterGroupName, Parameters
"""
ModifyDBParameterGroup(args) = rds("ModifyDBParameterGroup", args)

"""


Required Parameters:
SubscriptionName, SnsTopicArn
"""
CreateEventSubscription(args) = rds("CreateEventSubscription", args)

"""


Required Parameters:
DBSubnetGroupName, DBSubnetGroupDescription, SubnetIds
"""
CreateDBSubnetGroup(args) = rds("CreateDBSubnetGroup", args)

"""


Required Parameters:
SubscriptionName, SourceIdentifier
"""
RemoveSourceIdentifierFromSubscription(args) = rds("RemoveSourceIdentifierFromSubscription", args)

"""


Required Parameters:
DBSecurityGroupName
"""
RevokeDBSecurityGroupIngress(args) = rds("RevokeDBSecurityGroupIngress", args)

"""


Required Parameters:
DBInstanceIdentifier
"""
DeleteDBInstance(args) = rds("DeleteDBInstance", args)

"""


Required Parameters:
DBSecurityGroupName
"""
AuthorizeDBSecurityGroupIngress(args) = rds("AuthorizeDBSecurityGroupIngress", args)

"""

"""
DescribeDBSnapshots() = rds("DescribeDBSnapshots")

"""

"""
DescribeReservedDBInstances() = rds("DescribeReservedDBInstances")

"""


Required Parameters:
DBInstanceIdentifier, SourceDBInstanceIdentifier
"""
CreateDBInstanceReadReplica(args) = rds("CreateDBInstanceReadReplica", args)

"""


Required Parameters:
ResourceName
"""
ListTagsForResource(args) = rds("ListTagsForResource", args)

"""

"""
DescribeReservedDBInstancesOfferings() = rds("DescribeReservedDBInstancesOfferings")

"""


Required Parameters:
DBParameterGroupName
"""
DescribeDBParameters(args) = rds("DescribeDBParameters", args)

"""


Required Parameters:
DBSecurityGroupName, DBSecurityGroupDescription
"""
CreateDBSecurityGroup(args) = rds("CreateDBSecurityGroup", args)

"""

"""
DescribeOptionGroups() = rds("DescribeOptionGroups")

"""


Required Parameters:
ResourceName, Tags
"""
AddTagsToResource(args) = rds("AddTagsToResource", args)

"""


Required Parameters:
DBSecurityGroupName
"""
DeleteDBSecurityGroup(args) = rds("DeleteDBSecurityGroup", args)

"""


Required Parameters:
ResourceName, TagKeys
"""
RemoveTagsFromResource(args) = rds("RemoveTagsFromResource", args)

"""


Required Parameters:
DBInstanceIdentifier
"""
RebootDBInstance(args) = rds("RebootDBInstance", args)

"""

"""
DescribeDBSubnetGroups() = rds("DescribeDBSubnetGroups")

"""


Required Parameters:
OptionGroupName
"""
ModifyOptionGroup(args) = rds("ModifyOptionGroup", args)

"""


Required Parameters:
DBInstanceIdentifier, AllocatedStorage, DBInstanceClass, Engine, MasterUsername, MasterUserPassword
"""
CreateDBInstance(args) = rds("CreateDBInstance", args)

"""


Required Parameters:
DBSubnetGroupName, SubnetIds
"""
ModifyDBSubnetGroup(args) = rds("ModifyDBSubnetGroup", args)

"""


Required Parameters:
SourceDBSnapshotIdentifier, TargetDBSnapshotIdentifier
"""
CopyDBSnapshot(args) = rds("CopyDBSnapshot", args)

"""


Required Parameters:
DBSubnetGroupName
"""
DeleteDBSubnetGroup(args) = rds("DeleteDBSubnetGroup", args)

"""


Required Parameters:
DBSnapshotIdentifier
"""
DeleteDBSnapshot(args) = rds("DeleteDBSnapshot", args)

"""

"""
DescribeEvents() = rds("DescribeEvents")

"""


Required Parameters:
DBParameterGroupFamily
"""
DescribeEngineDefaultParameters(args) = rds("DescribeEngineDefaultParameters", args)

"""


Required Parameters:
DBParameterGroupName, DBParameterGroupFamily, Description
"""
CreateDBParameterGroup(args) = rds("CreateDBParameterGroup", args)

"""


Required Parameters:
ReservedDBInstancesOfferingId
"""
PurchaseReservedDBInstancesOffering(args) = rds("PurchaseReservedDBInstancesOffering", args)

"""

"""
DescribeDBSecurityGroups() = rds("DescribeDBSecurityGroups")

"""

"""
DescribeEventSubscriptions() = rds("DescribeEventSubscriptions")

"""


Required Parameters:
DBInstanceIdentifier
"""
ModifyDBInstance(args) = rds("ModifyDBInstance", args)

"""


Required Parameters:
SubscriptionName, SourceIdentifier
"""
AddSourceIdentifierToSubscription(args) = rds("AddSourceIdentifierToSubscription", args)

"""


Required Parameters:
DBParameterGroupName
"""
DeleteDBParameterGroup(args) = rds("DeleteDBParameterGroup", args)
