include("../AWSCorePrototypeServices.jl")
using .Services: migration_hub

"""
Associates a discovered resource ID from Application Discovery Service with a migration task.

Required Parameters:
ProgressUpdateStream, MigrationTaskName, DiscoveredResource
"""
AssociateDiscoveredResource(args) = migration_hub("AssociateDiscoveredResource", args)

"""
Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:   Migration tools can call the AssociateCreatedArtifact operation to indicate which AWS artifact is associated with a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.  

Required Parameters:
ProgressUpdateStream, MigrationTaskName, CreatedArtifact
"""
AssociateCreatedArtifact(args) = migration_hub("AssociateCreatedArtifact", args)

"""
Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:   A migration user can call the DisassociateCreatedArtifacts operation to disassociate a created AWS Artifact from a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.  

Required Parameters:
ProgressUpdateStream, MigrationTaskName, CreatedArtifactName
"""
DisassociateCreatedArtifact(args) = migration_hub("DisassociateCreatedArtifact", args)

"""
Sets the migration state of an application. For a given application identified by the value passed to ApplicationId, its status is set or updated by passing one of three values to Status: NOT_STARTED | IN_PROGRESS | COMPLETED.

Required Parameters:
ApplicationId, Status
"""
NotifyApplicationState(args) = migration_hub("NotifyApplicationState", args)

"""
Lists discovered resources associated with the given MigrationTask.

Required Parameters:
ProgressUpdateStream, MigrationTaskName
"""
ListDiscoveredResources(args) = migration_hub("ListDiscoveredResources", args)

"""
Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.

Required Parameters:
ProgressUpdateStreamName
"""
CreateProgressUpdateStream(args) = migration_hub("CreateProgressUpdateStream", args)

"""
Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
"""
ListApplicationStates() = migration_hub("ListApplicationStates")

"""
Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.  
"""
ListMigrationTasks() = migration_hub("ListMigrationTasks")

"""
Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool. This API is a prerequisite to calling the NotifyMigrationTaskState API as the migration tool must first register the migration task with Migration Hub.

Required Parameters:
ProgressUpdateStream, MigrationTaskName
"""
ImportMigrationTask(args) = migration_hub("ImportMigrationTask", args)

"""
Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.   

Required Parameters:
ProgressUpdateStream, MigrationTaskName
"""
ListCreatedArtifacts(args) = migration_hub("ListCreatedArtifacts", args)

"""
Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:   Migration tools will call the NotifyMigrationTaskState API to share the latest progress and status.    MigrationTaskName is used for addressing updates to the correct target.    ProgressUpdateStream is used for access control and to provide a namespace for each migration tool.  

Required Parameters:
ProgressUpdateStream, MigrationTaskName, Task, UpdateDateTime, NextUpdateSeconds
"""
NotifyMigrationTaskState(args) = migration_hub("NotifyMigrationTaskState", args)

"""
Retrieves a list of all attributes associated with a specific migration task.

Required Parameters:
ProgressUpdateStream, MigrationTaskName
"""
DescribeMigrationTask(args) = migration_hub("DescribeMigrationTask", args)

"""
Lists progress update streams associated with the user account making this call.
"""
ListProgressUpdateStreams() = migration_hub("ListProgressUpdateStreams")

"""
Gets the migration status of an application.

Required Parameters:
ApplicationId
"""
DescribeApplicationState(args) = migration_hub("DescribeApplicationState", args)

"""
Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:   The only parameter needed for DeleteProgressUpdateStream is the stream name (same as a CreateProgressUpdateStream call).   The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).   If the stream takes time to be deleted, it might still show up on a ListProgressUpdateStreams call.    CreateProgressUpdateStream, ImportMigrationTask, NotifyMigrationTaskState, and all Associate[*] APIs related to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.   Once the stream and all of its resources are deleted, CreateProgressUpdateStream for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).  

Required Parameters:
ProgressUpdateStreamName
"""
DeleteProgressUpdateStream(args) = migration_hub("DeleteProgressUpdateStream", args)

"""
Disassociate an Application Discovery Service discovered resource from a migration task.

Required Parameters:
ProgressUpdateStream, MigrationTaskName, ConfigurationId
"""
DisassociateDiscoveredResource(args) = migration_hub("DisassociateDiscoveredResource", args)

"""
Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service repository. This association occurs asynchronously after PutResourceAttributes returns.    Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to add an IP address, it will then be required to call it with both the IP and MAC addresses to prevent overriding the MAC address.   Note the instructions regarding the special use case of the  ResourceAttributeList  parameter when specifying any "VM" related value.     Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call ListDiscoveredResources. 

Required Parameters:
ProgressUpdateStream, MigrationTaskName, ResourceAttributeList
"""
PutResourceAttributes(args) = migration_hub("PutResourceAttributes", args)