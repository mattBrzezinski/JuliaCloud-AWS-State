include("../AWSCorePrototypeServices.jl")
using .Services: rds

"""
    DescribeOptionGroupOptions()



Required Parameters
{
  "EngineName": ""
}

Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "MajorEngineVersion": ""
}
"""
DescribeOptionGroupOptions(args) = rds("DescribeOptionGroupOptions", args)

"""
    DescribeDBEngineVersions()



Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "EngineVersion": "",
  "Engine": "",
  "ListSupportedCharacterSets": "",
  "DefaultOnly": "",
  "DBParameterGroupFamily": ""
}
"""

DescribeDBEngineVersions() = rds("DescribeDBEngineVersions")
DescribeDBEngineVersions(args) = rds("DescribeDBEngineVersions", args)

"""
    DescribeDBInstances()



Optional Parameters
{
  "DBInstanceIdentifier": "",
  "MaxRecords": "",
  "Marker": ""
}
"""

DescribeDBInstances() = rds("DescribeDBInstances")
DescribeDBInstances(args) = rds("DescribeDBInstances", args)

"""
    CreateDBSnapshot()



Required Parameters
{
  "DBInstanceIdentifier": "",
  "DBSnapshotIdentifier": ""
}
"""
CreateDBSnapshot(args) = rds("CreateDBSnapshot", args)

"""
    CreateOptionGroup()



Required Parameters
{
  "EngineName": "",
  "OptionGroupName": "",
  "MajorEngineVersion": "",
  "OptionGroupDescription": ""
}
"""
CreateOptionGroup(args) = rds("CreateOptionGroup", args)

"""
    RestoreDBInstanceToPointInTime()



Required Parameters
{
  "TargetDBInstanceIdentifier": "",
  "SourceDBInstanceIdentifier": ""
}

Optional Parameters
{
  "UseLatestRestorableTime": "",
  "PubliclyAccessible": "",
  "OptionGroupName": "",
  "AutoMinorVersionUpgrade": "",
  "DBSubnetGroupName": "",
  "Engine": "",
  "LicenseModel": "",
  "RestoreTime": "",
  "DBInstanceClass": "",
  "Port": "",
  "Iops": "",
  "AvailabilityZone": "",
  "DBName": "",
  "MultiAZ": ""
}
"""
RestoreDBInstanceToPointInTime(args) = rds("RestoreDBInstanceToPointInTime", args)

"""
    PromoteReadReplica()



Required Parameters
{
  "DBInstanceIdentifier": ""
}

Optional Parameters
{
  "PreferredBackupWindow": "",
  "BackupRetentionPeriod": ""
}
"""
PromoteReadReplica(args) = rds("PromoteReadReplica", args)

"""
    DescribeEventCategories()



Optional Parameters
{
  "SourceType": ""
}
"""

DescribeEventCategories() = rds("DescribeEventCategories")
DescribeEventCategories(args) = rds("DescribeEventCategories", args)

"""
    DeleteOptionGroup()



Required Parameters
{
  "OptionGroupName": ""
}
"""
DeleteOptionGroup(args) = rds("DeleteOptionGroup", args)

"""
    RestoreDBInstanceFromDBSnapshot()



Required Parameters
{
  "DBInstanceIdentifier": "",
  "DBSnapshotIdentifier": ""
}

Optional Parameters
{
  "PubliclyAccessible": "",
  "OptionGroupName": "",
  "AutoMinorVersionUpgrade": "",
  "DBSubnetGroupName": "",
  "Engine": "",
  "LicenseModel": "",
  "Iops": "",
  "DBInstanceClass": "",
  "Port": "",
  "AvailabilityZone": "",
  "DBName": "",
  "MultiAZ": ""
}
"""
RestoreDBInstanceFromDBSnapshot(args) = rds("RestoreDBInstanceFromDBSnapshot", args)

"""
    DeleteEventSubscription()



Required Parameters
{
  "SubscriptionName": ""
}
"""
DeleteEventSubscription(args) = rds("DeleteEventSubscription", args)

"""
    ResetDBParameterGroup()



Required Parameters
{
  "DBParameterGroupName": ""
}

Optional Parameters
{
  "Parameters": "",
  "ResetAllParameters": ""
}
"""
ResetDBParameterGroup(args) = rds("ResetDBParameterGroup", args)

"""
    ModifyEventSubscription()



Required Parameters
{
  "SubscriptionName": ""
}

Optional Parameters
{
  "SourceType": "",
  "SnsTopicArn": "",
  "EventCategories": "",
  "Enabled": ""
}
"""
ModifyEventSubscription(args) = rds("ModifyEventSubscription", args)

"""
    DescribeOrderableDBInstanceOptions()



Required Parameters
{
  "Engine": ""
}

Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "EngineVersion": "",
  "LicenseModel": "",
  "Vpc": "",
  "DBInstanceClass": ""
}
"""
DescribeOrderableDBInstanceOptions(args) = rds("DescribeOrderableDBInstanceOptions", args)

"""
    DescribeDBParameterGroups()



Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "DBParameterGroupName": ""
}
"""

DescribeDBParameterGroups() = rds("DescribeDBParameterGroups")
DescribeDBParameterGroups(args) = rds("DescribeDBParameterGroups", args)

"""
    ModifyDBParameterGroup()



Required Parameters
{
  "Parameters": "",
  "DBParameterGroupName": ""
}
"""
ModifyDBParameterGroup(args) = rds("ModifyDBParameterGroup", args)

"""
    CreateEventSubscription()



Required Parameters
{
  "SubscriptionName": "",
  "SnsTopicArn": ""
}

Optional Parameters
{
  "SourceIds": "",
  "SourceType": "",
  "EventCategories": "",
  "Enabled": ""
}
"""
CreateEventSubscription(args) = rds("CreateEventSubscription", args)

"""
    CreateDBSubnetGroup()



Required Parameters
{
  "DBSubnetGroupName": "",
  "SubnetIds": "",
  "DBSubnetGroupDescription": ""
}
"""
CreateDBSubnetGroup(args) = rds("CreateDBSubnetGroup", args)

"""
    RemoveSourceIdentifierFromSubscription()



Required Parameters
{
  "SubscriptionName": "",
  "SourceIdentifier": ""
}
"""
RemoveSourceIdentifierFromSubscription(args) = rds("RemoveSourceIdentifierFromSubscription", args)

"""
    RevokeDBSecurityGroupIngress()



Required Parameters
{
  "DBSecurityGroupName": ""
}

Optional Parameters
{
  "CIDRIP": "",
  "EC2SecurityGroupOwnerId": "",
  "EC2SecurityGroupName": "",
  "EC2SecurityGroupId": ""
}
"""
RevokeDBSecurityGroupIngress(args) = rds("RevokeDBSecurityGroupIngress", args)

"""
    DeleteDBInstance()



Required Parameters
{
  "DBInstanceIdentifier": ""
}

Optional Parameters
{
  "SkipFinalSnapshot": "",
  "FinalDBSnapshotIdentifier": ""
}
"""
DeleteDBInstance(args) = rds("DeleteDBInstance", args)

"""
    AuthorizeDBSecurityGroupIngress()



Required Parameters
{
  "DBSecurityGroupName": ""
}

Optional Parameters
{
  "CIDRIP": "",
  "EC2SecurityGroupOwnerId": "",
  "EC2SecurityGroupName": "",
  "EC2SecurityGroupId": ""
}
"""
AuthorizeDBSecurityGroupIngress(args) = rds("AuthorizeDBSecurityGroupIngress", args)

"""
    DescribeDBSnapshots()



Optional Parameters
{
  "DBInstanceIdentifier": "",
  "MaxRecords": "",
  "Marker": "",
  "SnapshotType": "",
  "DBSnapshotIdentifier": ""
}
"""

DescribeDBSnapshots() = rds("DescribeDBSnapshots")
DescribeDBSnapshots(args) = rds("DescribeDBSnapshots", args)

"""
    DescribeReservedDBInstances()



Optional Parameters
{
  "ReservedDBInstancesOfferingId": "",
  "MaxRecords": "",
  "Marker": "",
  "ProductDescription": "",
  "Duration": "",
  "OfferingType": "",
  "DBInstanceClass": "",
  "ReservedDBInstanceId": "",
  "MultiAZ": ""
}
"""

DescribeReservedDBInstances() = rds("DescribeReservedDBInstances")
DescribeReservedDBInstances(args) = rds("DescribeReservedDBInstances", args)

"""
    CreateDBInstanceReadReplica()



Required Parameters
{
  "DBInstanceIdentifier": "",
  "SourceDBInstanceIdentifier": ""
}

Optional Parameters
{
  "PubliclyAccessible": "",
  "AvailabilityZone": "",
  "OptionGroupName": "",
  "AutoMinorVersionUpgrade": "",
  "Iops": "",
  "DBInstanceClass": "",
  "Port": ""
}
"""
CreateDBInstanceReadReplica(args) = rds("CreateDBInstanceReadReplica", args)

"""
    ListTagsForResource()



Required Parameters
{
  "ResourceName": ""
}
"""
ListTagsForResource(args) = rds("ListTagsForResource", args)

"""
    DescribeReservedDBInstancesOfferings()



Optional Parameters
{
  "ReservedDBInstancesOfferingId": "",
  "MaxRecords": "",
  "Marker": "",
  "ProductDescription": "",
  "Duration": "",
  "OfferingType": "",
  "DBInstanceClass": "",
  "MultiAZ": ""
}
"""

DescribeReservedDBInstancesOfferings() = rds("DescribeReservedDBInstancesOfferings")
DescribeReservedDBInstancesOfferings(args) = rds("DescribeReservedDBInstancesOfferings", args)

"""
    DescribeDBParameters()



Required Parameters
{
  "DBParameterGroupName": ""
}

Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "Source": ""
}
"""
DescribeDBParameters(args) = rds("DescribeDBParameters", args)

"""
    CreateDBSecurityGroup()



Required Parameters
{
  "DBSecurityGroupDescription": "",
  "DBSecurityGroupName": ""
}
"""
CreateDBSecurityGroup(args) = rds("CreateDBSecurityGroup", args)

"""
    DescribeOptionGroups()



Optional Parameters
{
  "Marker": "",
  "MaxRecords": "",
  "EngineName": "",
  "OptionGroupName": "",
  "MajorEngineVersion": ""
}
"""

DescribeOptionGroups() = rds("DescribeOptionGroups")
DescribeOptionGroups(args) = rds("DescribeOptionGroups", args)

"""
    AddTagsToResource()



Required Parameters
{
  "Tags": "",
  "ResourceName": ""
}
"""
AddTagsToResource(args) = rds("AddTagsToResource", args)

"""
    DeleteDBSecurityGroup()



Required Parameters
{
  "DBSecurityGroupName": ""
}
"""
DeleteDBSecurityGroup(args) = rds("DeleteDBSecurityGroup", args)

"""
    RemoveTagsFromResource()



Required Parameters
{
  "ResourceName": "",
  "TagKeys": ""
}
"""
RemoveTagsFromResource(args) = rds("RemoveTagsFromResource", args)

"""
    RebootDBInstance()



Required Parameters
{
  "DBInstanceIdentifier": ""
}

Optional Parameters
{
  "ForceFailover": ""
}
"""
RebootDBInstance(args) = rds("RebootDBInstance", args)

"""
    DescribeDBSubnetGroups()



Optional Parameters
{
  "MaxRecords": "",
  "DBSubnetGroupName": "",
  "Marker": ""
}
"""

DescribeDBSubnetGroups() = rds("DescribeDBSubnetGroups")
DescribeDBSubnetGroups(args) = rds("DescribeDBSubnetGroups", args)

"""
    ModifyOptionGroup()



Required Parameters
{
  "OptionGroupName": ""
}

Optional Parameters
{
  "ApplyImmediately": "",
  "OptionsToInclude": "",
  "OptionsToRemove": ""
}
"""
ModifyOptionGroup(args) = rds("ModifyOptionGroup", args)

"""
    CreateDBInstance()



Required Parameters
{
  "DBInstanceIdentifier": "",
  "MasterUsername": "",
  "Engine": "",
  "MasterUserPassword": "",
  "DBInstanceClass": "",
  "AllocatedStorage": ""
}

Optional Parameters
{
  "PubliclyAccessible": "",
  "OptionGroupName": "",
  "PreferredMaintenanceWindow": "",
  "CharacterSetName": "",
  "AutoMinorVersionUpgrade": "",
  "BackupRetentionPeriod": "",
  "DBSubnetGroupName": "",
  "DBSecurityGroups": "",
  "DBParameterGroupName": "",
  "PreferredBackupWindow": "",
  "EngineVersion": "",
  "LicenseModel": "",
  "Iops": "",
  "Port": "",
  "AvailabilityZone": "",
  "DBName": "",
  "VpcSecurityGroupIds": "",
  "MultiAZ": ""
}
"""
CreateDBInstance(args) = rds("CreateDBInstance", args)

"""
    ModifyDBSubnetGroup()



Required Parameters
{
  "DBSubnetGroupName": "",
  "SubnetIds": ""
}

Optional Parameters
{
  "DBSubnetGroupDescription": ""
}
"""
ModifyDBSubnetGroup(args) = rds("ModifyDBSubnetGroup", args)

"""
    CopyDBSnapshot()



Required Parameters
{
  "TargetDBSnapshotIdentifier": "",
  "SourceDBSnapshotIdentifier": ""
}
"""
CopyDBSnapshot(args) = rds("CopyDBSnapshot", args)

"""
    DeleteDBSubnetGroup()



Required Parameters
{
  "DBSubnetGroupName": ""
}
"""
DeleteDBSubnetGroup(args) = rds("DeleteDBSubnetGroup", args)

"""
    DeleteDBSnapshot()



Required Parameters
{
  "DBSnapshotIdentifier": ""
}
"""
DeleteDBSnapshot(args) = rds("DeleteDBSnapshot", args)

"""
    DescribeEvents()



Optional Parameters
{
  "StartTime": "",
  "MaxRecords": "",
  "Marker": "",
  "SourceIdentifier": "",
  "EndTime": "",
  "SourceType": "",
  "Duration": "",
  "EventCategories": ""
}
"""

DescribeEvents() = rds("DescribeEvents")
DescribeEvents(args) = rds("DescribeEvents", args)

"""
    DescribeEngineDefaultParameters()



Required Parameters
{
  "DBParameterGroupFamily": ""
}

Optional Parameters
{
  "MaxRecords": "",
  "Marker": ""
}
"""
DescribeEngineDefaultParameters(args) = rds("DescribeEngineDefaultParameters", args)

"""
    CreateDBParameterGroup()



Required Parameters
{
  "Description": "",
  "DBParameterGroupName": "",
  "DBParameterGroupFamily": ""
}
"""
CreateDBParameterGroup(args) = rds("CreateDBParameterGroup", args)

"""
    PurchaseReservedDBInstancesOffering()



Required Parameters
{
  "ReservedDBInstancesOfferingId": ""
}

Optional Parameters
{
  "ReservedDBInstanceId": "",
  "DBInstanceCount": ""
}
"""
PurchaseReservedDBInstancesOffering(args) = rds("PurchaseReservedDBInstancesOffering", args)

"""
    DescribeDBSecurityGroups()



Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "DBSecurityGroupName": ""
}
"""

DescribeDBSecurityGroups() = rds("DescribeDBSecurityGroups")
DescribeDBSecurityGroups(args) = rds("DescribeDBSecurityGroups", args)

"""
    DescribeEventSubscriptions()



Optional Parameters
{
  "MaxRecords": "",
  "Marker": "",
  "SubscriptionName": ""
}
"""

DescribeEventSubscriptions() = rds("DescribeEventSubscriptions")
DescribeEventSubscriptions(args) = rds("DescribeEventSubscriptions", args)

"""
    ModifyDBInstance()



Required Parameters
{
  "DBInstanceIdentifier": ""
}

Optional Parameters
{
  "AllowMajorVersionUpgrade": "",
  "OptionGroupName": "",
  "PreferredMaintenanceWindow": "",
  "AutoMinorVersionUpgrade": "",
  "BackupRetentionPeriod": "",
  "AllocatedStorage": "",
  "DBSecurityGroups": "",
  "DBParameterGroupName": "",
  "PreferredBackupWindow": "",
  "NewDBInstanceIdentifier": "",
  "EngineVersion": "",
  "MasterUserPassword": "",
  "DBInstanceClass": "",
  "Iops": "",
  "ApplyImmediately": "",
  "VpcSecurityGroupIds": "",
  "MultiAZ": ""
}
"""
ModifyDBInstance(args) = rds("ModifyDBInstance", args)

"""
    AddSourceIdentifierToSubscription()



Required Parameters
{
  "SubscriptionName": "",
  "SourceIdentifier": ""
}
"""
AddSourceIdentifierToSubscription(args) = rds("AddSourceIdentifierToSubscription", args)

"""
    DeleteDBParameterGroup()



Required Parameters
{
  "DBParameterGroupName": ""
}
"""
DeleteDBParameterGroup(args) = rds("DeleteDBParameterGroup", args)
