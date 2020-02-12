include("../AWSCorePrototypeServices.jl")
using .Services: gamelift

"""
    UpdateGameSession

Updates game session properties. This includes the session name, maximum player count, protection policy, which controls whether or not an active game session can be terminated during a scale-down event, and the player session creation policy, which controls whether or not new players can join the session. To update a game session, specify the game session ID and the values you want to change. If successful, an updated GameSession object is returned.     CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "GameSessionId": "A unique identifier for the game session to update. "
}


Optional Parameters:
{
  "MaximumPlayerSessionCount": "The maximum number of players that can be connected simultaneously to the game session.",
  "ProtectionPolicy": "Game session protection policy to apply to this game session only.    NoProtection -- The game session can be terminated during a scale-down event.    FullProtection -- If the game session is in an ACTIVE status, it cannot be terminated during a scale-down event.  ",
  "Name": "A descriptive label that is associated with a game session. Session names do not need to be unique.",
  "PlayerSessionCreationPolicy": "Policy determining whether or not the game session accepts new players."
}

"""

UpdateGameSession(args) = gamelift("UpdateGameSession", args)
"""
    DescribeScalingPolicies

Retrieves all scaling policies applied to a fleet. To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of ScalingPolicy objects is returned for the fleet. A fleet may have all of its scaling policies suspended (StopFleetActions). This action does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call DescribeFleetAttributes and check the stopped actions.    DescribeFleetCapacity     UpdateFleetCapacity     DescribeEC2InstanceLimits    Manage scaling policies:    PutScalingPolicy (auto-scaling)    DescribeScalingPolicies (auto-scaling)    DeleteScalingPolicy (auto-scaling)     Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "StatusFilter": "Scaling policy status to filter results on. A scaling policy is only in force when in an ACTIVE status.    ACTIVE -- The scaling policy is currently in force.    UPDATEREQUESTED -- A request to update the scaling policy has been received.    UPDATING -- A change is being made to the scaling policy.    DELETEREQUESTED -- A request to delete the scaling policy has been received.    DELETING -- The scaling policy is being deleted.    DELETED -- The scaling policy has been deleted.    ERROR -- An error occurred in creating the policy. It should be removed and recreated.  ",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""

DescribeScalingPolicies(args) = gamelift("DescribeScalingPolicies", args)
"""
    UpdateRuntimeConfiguration

Updates the current runtime configuration for the specified fleet, which tells Amazon GameLift how to launch server processes on instances in the fleet. You can update a fleet's runtime configuration at any time after the fleet is created; it does not need to be in an ACTIVE status. To update runtime configuration, specify the fleet ID and provide a RuntimeConfiguration object with an updated set of server process configurations. Each instance in a Amazon GameLift fleet checks regularly for an updated runtime configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; runtime configuration changes are applied gradually as existing processes shut down and new processes are launched during Amazon GameLift's normal process recycling activity.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes    Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to update runtime configuration for. You can use either the fleet ID or ARN value.",
  "RuntimeConfiguration": "Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime Servers script. The runtime configuration lists the types of server processes to run on an instance and includes the following configuration settings: the server executable or launch script file, launch parameters, and the number of processes to run concurrently on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration."
}


Optional Parameters:
{}

"""

UpdateRuntimeConfiguration(args) = gamelift("UpdateRuntimeConfiguration", args)
"""
    DescribeScript

Retrieves properties for a Realtime script.  To request a script record, specify the script ID. If successful, an object containing the script properties is returned.  Learn more   Amazon GameLift Realtime Servers   Related operations     CreateScript     ListScripts     DescribeScript     UpdateScript     DeleteScript   

Required Parameters:
{
  "ScriptId": "A unique identifier for a Realtime script to retrieve properties for. You can use either the script ID or ARN value."
}


Optional Parameters:
{}

"""

DescribeScript(args) = gamelift("DescribeScript", args)
"""
    DeleteMatchmakingRuleSet

Deletes an existing matchmaking rule set. To delete the rule set, provide the rule set name. Rule sets cannot be deleted if they are currently being used by a matchmaking configuration.   Learn more     Build a Rule Set     Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "Name": "A unique identifier for a matchmaking rule set to be deleted. (Note: The rule set name is different from the optional \"name\" field in the rule set body.) You can use either the rule set name or ARN value."
}


Optional Parameters:
{}

"""

DeleteMatchmakingRuleSet(args) = gamelift("DeleteMatchmakingRuleSet", args)
"""
    DescribeMatchmakingConfigurations

Retrieves the details of FlexMatch matchmaking configurations. With this operation, you have the following options: (1) retrieve all existing configurations, (2) provide the names of one or more configurations to retrieve, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned.   Learn more    Setting Up FlexMatch Matchmakers   Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{}


Optional Parameters:
{
  "Names": "A unique identifier for a matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To request all existing configurations, leave this parameter empty.",
  "NextToken": "A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "RuleSetName": "A unique identifier for a matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to retrieve all matchmaking configurations that use this rule set.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. This parameter is limited to 10."
}

"""
DescribeMatchmakingConfigurations() = gamelift("DescribeMatchmakingConfigurations")
DescribeMatchmakingConfigurations(args) = gamelift("DescribeMatchmakingConfigurations", args)

"""
    TagResource

 Assigns a tag to a GameLift resource. AWS resource tags provide an additional management tool set. You can use tags to organize resources, create IAM permissions policies to manage access to groups of resources, customize AWS cost breakdowns, etc. This action handles the permissions necessary to manage tags for the following GameLift resource types:   Build   Script   Fleet   Alias   GameSessionQueue   MatchmakingConfiguration   MatchmakingRuleSet   To add a tag to a resource, specify the unique ARN value for the resource and provide a trig list containing one or more tags. The operation succeeds even if the list includes tags that are already assigned to the specified resource.   Learn more   Tagging AWS Resources in the AWS General Reference    AWS Tagging Strategies   Related operations     TagResource     UntagResource     ListTagsForResource   

Required Parameters:
{
  "ResourceARN": " The Amazon Resource Name (ARN) that is assigned to and uniquely identifies the GameLift resource that you want to assign tags to. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe action for the resource type. ",
  "Tags": "A list of one or more tags to assign to the specified GameLift resource. Tags are developer-defined and structured as key-value pairs. The maximum tag limit may be lower than stated. See  Tagging AWS Resources for actual tagging limits."
}


Optional Parameters:
{}

"""

TagResource(args) = gamelift("TagResource", args)
"""
    DescribeMatchmakingRuleSets

Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the Region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name.   Learn more     Build a Rule Set     Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{}


Optional Parameters:
{
  "Names": "A list of one or more matchmaking rule set names to retrieve details for. (Note: The rule set name is different from the optional \"name\" field in the rule set body.) You can use either the rule set name or ARN value. ",
  "NextToken": "A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""
DescribeMatchmakingRuleSets() = gamelift("DescribeMatchmakingRuleSets")
DescribeMatchmakingRuleSets(args) = gamelift("DescribeMatchmakingRuleSets", args)

"""
    CreatePlayerSession

Reserves an open player slot in an active game session. Before a player can be added, a game session must have an ACTIVE status, have a creation policy of ALLOW_ALL, and have an open player slot. To add a group of players to a game session, use CreatePlayerSessions. When the player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player. To create a player session, specify a game session ID, player ID, and optionally a string of player data. If successful, a slot is reserved in the game session for the player and a new PlayerSession object is returned. Player sessions cannot be updated.   Available in Amazon GameLift Local.     CreatePlayerSession     CreatePlayerSessions     DescribePlayerSessions    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "PlayerId": "A unique identifier for a player. Player IDs are developer-defined.",
  "GameSessionId": "A unique identifier for the game session to add a player to."
}


Optional Parameters:
{
  "PlayerData": "Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game."
}

"""

CreatePlayerSession(args) = gamelift("CreatePlayerSession", args)
"""
    DescribeFleetPortSettings

Retrieves the inbound connection permissions for a fleet. Connection permissions include a range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. To get a fleet's inbound connection permissions, specify a fleet ID. If successful, a collection of IpPermission objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to retrieve port settings for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{}

"""

DescribeFleetPortSettings(args) = gamelift("DescribeFleetPortSettings", args)
"""
    StartFleetActions

Resumes activity on a fleet that was suspended with StopFleetActions. Currently, this operation is used to restart a fleet's auto-scaling activity.  To start fleet actions, specify the fleet ID and the type of actions to restart. When auto-scaling fleet actions are restarted, Amazon GameLift once again initiates scaling events as triggered by the fleet's scaling policies. If actions on the fleet were never stopped, this operation will have no effect. You can view a fleet's stopped actions using DescribeFleetAttributes.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents      Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "Actions": "List of actions to restart on the fleet.",
  "FleetId": "A unique identifier for a fleet to start actions on. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{}

"""

StartFleetActions(args) = gamelift("StartFleetActions", args)
"""
    CreateMatchmakingConfiguration

Defines a new matchmaking configuration for use with FlexMatch. A matchmaking configuration sets out guidelines for matching players and getting the matches into games. You can set up multiple matchmaking configurations to handle the scenarios needed for your game. Each matchmaking ticket (StartMatchmaking or StartMatchBackfill) specifies a configuration for the match and provides player attributes to support the configuration being used.  To create a matchmaking configuration, at a minimum you must specify the following: configuration name; a rule set that governs how to evaluate players and find acceptable matches; a game session queue to use when placing a new game session for the match; and the maximum time allowed for a matchmaking attempt. There are two ways to track the progress of matchmaking tickets: (1) polling ticket status with DescribeMatchmaking; or (2) receiving notifications with Amazon Simple Notification Service (SNS). To use notifications, you first need to set up an SNS topic to receive the notifications, and provide the topic ARN in the matchmaking configuration. Since notifications promise only "best effort" delivery, we recommend calling DescribeMatchmaking if no notifications are received within 30 seconds.  Learn more    Design a FlexMatch Matchmaker    Setting up Notifications for Matchmaking   Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "AcceptanceRequired": "A flag that determines whether a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.",
  "RequestTimeoutSeconds": "The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that fail due to timing out can be resubmitted as needed.",
  "GameSessionQueueArns": "Amazon Resource Name (ARN) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any Region.",
  "Name": "A unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.",
  "RuleSetName": "A unique identifier for a matchmaking rule set to use with this configuration. You can use either the rule set name or ARN value. A matchmaking configuration can only use rule sets that are defined in the same Region."
}


Optional Parameters:
{
  "AcceptanceTimeoutSeconds": "The length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.",
  "GameProperties": "A set of custom properties for a game session, formatted as key-value pairs. These properties are passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session). This information is added to the new GameSession object that is created for a successful match. ",
  "Description": "A human-readable description of the matchmaking configuration. ",
  "Tags": "A list of labels to assign to the new matchmaking configuration resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.",
  "AdditionalPlayerCount": "The number of player slots in a match to keep open for future players. For example, assume that the configuration's rule set specifies a match for a single 12-person team. If the additional player count is set to 2, only 10 players are initially selected for the match.",
  "GameSessionData": "A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session). This information is added to the new GameSession object that is created for a successful match.",
  "BackfillMode": "The method used to backfill game sessions that are created with this matchmaking configuration. Specify MANUAL when your game manages backfill requests manually or does not use the match backfill feature. Specify AUTOMATIC to have GameLift create a StartMatchBackfill request whenever a game session has one or more open slots. Learn more about manual and automatic backfill in  Backfill Existing Games with FlexMatch. ",
  "CustomEventData": "Information to be added to all events related to this matchmaking configuration. ",
  "NotificationTarget": "An SNS topic ARN that is set up to receive matchmaking notifications."
}

"""

CreateMatchmakingConfiguration(args) = gamelift("CreateMatchmakingConfiguration", args)
"""
    DescribeGameSessionDetails

Retrieves properties, including the protection policy in force, for one or more game sessions. This action can be used in several ways: (1) provide a GameSessionId or GameSessionArn to request details for a specific game session; (2) provide either a FleetId or an AliasId to request properties for all game sessions running on a fleet.  To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a GameSessionDetail object is returned for each session matching the request.    CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "FleetId": "A unique identifier for a fleet to retrieve all game sessions active on the fleet. You can use either the fleet ID or ARN value.",
  "StatusFilter": "Game session status to filter results on. Possible game session statuses include ACTIVE, TERMINATED, ACTIVATING and TERMINATING (the last two are transitory). ",
  "AliasId": "A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages.",
  "GameSessionId": "A unique identifier for the game session to retrieve. "
}

"""
DescribeGameSessionDetails() = gamelift("DescribeGameSessionDetails")
DescribeGameSessionDetails(args) = gamelift("DescribeGameSessionDetails", args)

"""
    DeleteMatchmakingConfiguration

Permanently removes a FlexMatch matchmaking configuration. To delete, specify the configuration name. A matchmaking configuration cannot be deleted if it is being used in any active matchmaking tickets.  Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "Name": "A unique identifier for a matchmaking configuration. You can use either the configuration name or ARN value."
}


Optional Parameters:
{}

"""

DeleteMatchmakingConfiguration(args) = gamelift("DeleteMatchmakingConfiguration", args)
"""
    SearchGameSessions

Retrieves all active game sessions that match a set of search criteria and sorts them in a specified order. You can search or sort by the following game session attributes:    gameSessionId -- A unique identifier for the game session. You can use either a GameSessionId or GameSessionArn value.     gameSessionName -- Name assigned to a game session. This value is set when requesting a new game session with CreateGameSession or updating with UpdateGameSession. Game session names do not need to be unique to a game session.    gameSessionProperties -- Custom data defined in a game session's GameProperty parameter. GameProperty values are stored as key:value pairs; the filter expression must indicate the key and a string to search the data values for. For example, to search for game sessions with custom data containing the key:value pair "gameMode:brawl", specify the following: gameSessionProperties.gameMode = "brawl". All custom data values are searched as strings.    maximumSessions -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with CreateGameSession or updating with UpdateGameSession.    creationTimeMillis -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.    playerSessionCount -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.    hasAvailablePlayerSessions -- Boolean value indicating whether a game session has reached its maximum number of players. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join.     Returned values for playerSessionCount and hasAvailablePlayerSessions change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join.   To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. If successful, a collection of GameSession objects matching the request is returned. Use the pagination parameters to retrieve results as a set of sequential pages.  You can search for game sessions one fleet at a time only. To find game sessions across multiple fleets, you must search each fleet separately and combine the results. This search feature finds only game sessions that are in ACTIVE status. To locate games in statuses other than active, use DescribeGameSessionDetails.    CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "FilterExpression": "String containing the search criteria for the session search. If no filter expression is included, the request returns results for all game sessions in the fleet that are in ACTIVE status. A filter expression can contain one or multiple conditions. Each condition consists of the following:    Operand -- Name of a game session attribute. Valid values are gameSessionName, gameSessionId, gameSessionProperties, maximumSessions, creationTimeMillis, playerSessionCount, hasAvailablePlayerSessions.    Comparator -- Valid comparators are: =, &lt;&gt;, &lt;, &gt;, &lt;=, &gt;=.     Value -- Value to be searched for. Values may be numbers, boolean values (true/false) or strings depending on the operand. String values are case sensitive and must be enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators = and &lt;&gt;. For example, the following filter expression searches on gameSessionName: \"FilterExpression\": \"gameSessionName = 'Matt  's Awesome Game 1'\".    To chain multiple conditions in a single expression, use the logical keywords AND, OR, and NOT and parentheses as needed. For example: x AND y AND NOT z, NOT (x OR y). Session search evaluates conditions from left to right using the following precedence rules:    =, &lt;&gt;, &lt;, &gt;, &lt;=, &gt;=    Parentheses   NOT   AND   OR   For example, this filter expression retrieves game sessions hosting at least ten players that have an open player slot: \"maximumSessions&gt;=10 AND hasAvailablePlayerSessions=true\". ",
  "FleetId": "A unique identifier for a fleet to search for active game sessions. You can use either the fleet ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.",
  "SortExpression": "Instructions on how to sort the search results. If no sort expression is included, the request returns results in random order. A sort expression consists of the following elements:    Operand -- Name of a game session attribute. Valid values are gameSessionName, gameSessionId, gameSessionProperties, maximumSessions, creationTimeMillis, playerSessionCount, hasAvailablePlayerSessions.    Order -- Valid sort orders are ASC (ascending) and DESC (descending).   For example, this sort expression returns the oldest active sessions first: \"SortExpression\": \"creationTimeMillis ASC\". Results with a null value for the sort operand are returned at the end of the list.",
  "AliasId": "A unique identifier for an alias associated with the fleet to search for active game sessions. You can use either the alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20. "
}

"""
SearchGameSessions() = gamelift("SearchGameSessions")
SearchGameSessions(args) = gamelift("SearchGameSessions", args)

"""
    CreateFleet

Creates a new fleet to run your game servers. whether they are custom game builds or Realtime Servers with game-specific script. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can host multiple game sessions. When creating a fleet, you choose the hardware specifications, set some configuration options, and specify the game server to deploy on the new fleet.  To create a new fleet, you must provide the following: (1) a fleet name, (2) an EC2 instance type and fleet type (spot or on-demand), (3) the build ID for your game build or script ID if using Realtime Servers, and (4) a runtime configuration, which determines how game servers will run on each instance in the fleet.  If the CreateFleet call is successful, Amazon GameLift performs the following tasks. You can track the process of a fleet by checking the fleet status or by monitoring fleet creation events:   Creates a fleet record. Status: NEW.   Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.   Sets the fleet's target capacity to 1 (desired instances), which triggers Amazon GameLift to start one new EC2 instance.   Downloads the game build or Realtime script to the new instance and installs it. Statuses: DOWNLOADING, VALIDATING, BUILDING.    Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each process launch by a few seconds. Status: ACTIVATING.   Sets the fleet's status to ACTIVE as soon as one server process is ready to host a game session.    Learn more    Setting Up Fleets    Debug Fleet Creation Issues   Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes     UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "EC2InstanceType": "The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See Amazon EC2 Instance Types for detailed descriptions.",
  "Name": "A descriptive label that is associated with a fleet. Fleet names do not need to be unique."
}


Optional Parameters:
{
  "NewGameSessionProtectionPolicy": "A game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using UpdateFleetAttributes, but this change will only affect sessions created after the policy change. You can also set protection for individual instances using UpdateGameSession.    NoProtection - The game session can be terminated during a scale-down event.    FullProtection - If the game session is in an ACTIVE status, it cannot be terminated during a scale-down event.  ",
  "PeerVpcAwsAccountId": "A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your account ID in the AWS Management Console under account settings. ",
  "CertificateConfiguration": "Indicates whether to generate a TLS/SSL certificate for the new fleet. TLS certificates are used for encrypting traffic between game clients and game servers running on GameLift. If this parameter is not specified, the default value, DISABLED, is used. This fleet setting cannot be changed once the fleet is created. Learn more at Securing Client/Server Communication.  Note: This feature requires the AWS Certificate Manager (ACM) service, which is available in the AWS global partition but not in all other partitions. When working in a partition that does not support this feature, a request for a new fleet with certificate generation results fails with a 4xx unsupported Region error. Valid values include:     GENERATED - Generate a TLS/SSL certificate for this fleet.    DISABLED - (default) Do not generate a TLS/SSL certificate for this fleet.  ",
  "LogPaths": "This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API ProcessReady() and specify one or more directory paths in logParameters. See more information in the Server API Reference. ",
  "Tags": "A list of labels to assign to the new fleet resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.",
  "ResourceCreationLimitPolicy": "A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.",
  "InstanceRoleArn": "A unique identifier for an AWS IAM role that manages access to your AWS services. With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, including install scripts, server processes, and daemons (background processes). Create a role or look up a role's ARN from the IAM dashboard in the AWS Management Console. Learn more about using on-box credentials for your game servers at  Access external resources from a game server.",
  "ServerLaunchParameters": "This parameter is no longer used. Instead, specify server launch parameters in the RuntimeConfiguration parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)",
  "ScriptId": "A unique identifier for a Realtime script to be deployed on the new fleet. You can use either the script ID or ARN value. The Realtime script must have been successfully uploaded to Amazon GameLift. This fleet setting cannot be changed once the fleet is created.",
  "BuildId": "A unique identifier for a build to be deployed on the new fleet. You can use either the build ID or ARN value. The custom game server build must have been successfully uploaded to Amazon GameLift and be in a READY status. This fleet setting cannot be changed once the fleet is created. ",
  "RuntimeConfiguration": "Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime script. The runtime configuration defines the server executables or launch script file, launch parameters, and the number of processes to run concurrently on each instance. When creating a fleet, the runtime configuration must have at least one server process configuration; otherwise the request fails with an invalid request exception. (This parameter replaces the parameters ServerLaunchPath and ServerLaunchParameters, although requests that contain values for these parameters instead of a runtime configuration will continue to work.) This parameter is required unless the parameters ServerLaunchPath and ServerLaunchParameters are defined. Runtime configuration replaced these parameters, but fleets that use them will continue to work. ",
  "Description": "A human-readable description of a fleet.",
  "PeerVpcId": "A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region as your fleet. To look up a VPC ID, use the VPC Dashboard in the AWS Management Console. Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets. ",
  "ServerLaunchPath": "This parameter is no longer used. Instead, specify a server launch path using the RuntimeConfiguration parameter. Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.",
  "MetricGroups": "The name of an Amazon CloudWatch metric group to add this fleet to. A metric group aggregates the metrics for all fleets in the group. Specify an existing metric group name, or provide a new name to create a new metric group. A fleet can only be included in one metric group at a time. ",
  "FleetType": "Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is ON_DEMAND. Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet. Learn more about  On-Demand versus Spot Instances. ",
  "EC2InboundPermissions": "Range of IP addresses and port settings that permit inbound traffic to access game sessions that are running on the fleet. For fleets using a custom game build, this parameter is required before game sessions running on the fleet can accept connections. For Realtime Servers fleets, Amazon GameLift automatically sets TCP and UDP ranges for use by the Realtime servers. You can specify multiple permission settings or add more by updating the fleet."
}

"""

CreateFleet(args) = gamelift("CreateFleet", args)
"""
    DescribeAlias

Retrieves properties for an alias. This operation returns all alias metadata and settings. To get an alias's target fleet ID only, use ResolveAlias.  To get alias properties, specify the alias ID. If successful, the requested alias record is returned.    CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{
  "AliasId": "The unique identifier for the fleet alias that you want to retrieve. You can use either the alias ID or ARN value. "
}


Optional Parameters:
{}

"""

DescribeAlias(args) = gamelift("DescribeAlias", args)
"""
    CreateAlias

Creates an alias for a fleet. In most situations, you can use an alias ID in place of a fleet ID. An alias provides a level of abstraction for a fleet that is useful when redirecting player traffic from one fleet to another, such as when updating your game build.  Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. A simple alias points to an active fleet. A terminal alias is used to display messaging or link to a URL instead of routing players to an active fleet. For example, you might use a terminal alias when a game version is no longer supported and you want to direct players to an upgrade site.  To create a fleet alias, specify an alias name, routing strategy, and optional description. Each simple alias can point to only one fleet, but a fleet can have multiple aliases. If successful, a new alias record is returned, including an alias ID and an ARN. You can reassign an alias to another fleet by calling UpdateAlias.    CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{
  "RoutingStrategy": "The routing configuration, including routing type and fleet target, for the alias. ",
  "Name": "A descriptive label that is associated with an alias. Alias names do not need to be unique."
}


Optional Parameters:
{
  "Description": "A human-readable description of the alias.",
  "Tags": "A list of labels to assign to the new alias resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits."
}

"""

CreateAlias(args) = gamelift("CreateAlias", args)
"""
    ListScripts

Retrieves script records for all Realtime scripts that are associated with the AWS account in use.   Learn more   Amazon GameLift Realtime Servers   Related operations     CreateScript     ListScripts     DescribeScript     UpdateScript     DeleteScript   

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""
ListScripts() = gamelift("ListScripts")
ListScripts(args) = gamelift("ListScripts", args)

"""
    AcceptMatch

Registers a player's acceptance or rejection of a proposed FlexMatch match. A matchmaking configuration may require player acceptance; if so, then matches built with that configuration cannot be completed unless all players accept the proposed match within a specified time limit.  When FlexMatch builds a match, all the matchmaking tickets involved in the proposed match are placed into status REQUIRES_ACCEPTANCE. This is a trigger for your game to get acceptance from all players in the ticket. Acceptances are only valid for tickets when they are in this status; all other acceptances result in an error. To register acceptance, specify the ticket ID, a response, and one or more players. Once all players have registered acceptance, the matchmaking tickets advance to status PLACING, where a new game session is created for the match.  If any player rejects the match, or if acceptances are not received before a specified timeout, the proposed match is dropped. The matchmaking tickets are then handled in one of two ways: For tickets where one or more players rejected the match, the ticket status is returned to SEARCHING to find a new match. For tickets where one or more players failed to respond, the ticket status is set to CANCELLED, and processing is terminated. A new matchmaking request for these players can be submitted as needed.   Learn more    Add FlexMatch to a Game Client    FlexMatch Events Reference   Related operations     StartMatchmaking     DescribeMatchmaking     StopMatchmaking     AcceptMatch     StartMatchBackfill   

Required Parameters:
{
  "AcceptanceType": "Player response to the proposed match.",
  "PlayerIds": "A unique identifier for a player delivering the response. This parameter can include one or multiple player IDs.",
  "TicketId": "A unique identifier for a matchmaking ticket. The ticket must be in status REQUIRES_ACCEPTANCE; otherwise this request will fail."
}


Optional Parameters:
{}

"""

AcceptMatch(args) = gamelift("AcceptMatch", args)
"""
    ResolveAlias

Retrieves the fleet ID that an alias is currently pointing to.    CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{
  "AliasId": "The unique identifier of the alias that you want to retrieve a fleet ID for. You can use either the alias ID or ARN value."
}


Optional Parameters:
{}

"""

ResolveAlias(args) = gamelift("ResolveAlias", args)
"""
    ValidateMatchmakingRuleSet

Validates the syntax of a matchmaking rule or rule set. This operation checks that the rule set is using syntactically correct JSON and that it conforms to allowed property expressions. To validate syntax, provide a rule set JSON string.  Learn more     Build a Rule Set     Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "RuleSetBody": "A collection of matchmaking rules to validate, formatted as a JSON string."
}


Optional Parameters:
{}

"""

ValidateMatchmakingRuleSet(args) = gamelift("ValidateMatchmakingRuleSet", args)
"""
    ListFleets

Retrieves a collection of fleet records for this AWS account. You can filter the result set to find only those fleets that are deployed with a specific build or script. Use the pagination parameters to retrieve results in sequential pages.  Fleet records are not listed in a particular order.   Learn more    Set Up Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes     UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "ScriptId": "A unique identifier for a Realtime script to return fleets for. Use this parameter to return only fleets using the specified script. Use either the script ID or ARN value.To retrieve all fleets, leave this parameter empty.",
  "BuildId": "A unique identifier for a build to return fleets for. Use this parameter to return only fleets using the specified build. Use either the build ID or ARN value.To retrieve all fleets, leave this parameter empty.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""
ListFleets() = gamelift("ListFleets")
ListFleets(args) = gamelift("ListFleets", args)

"""
    GetGameSessionLogUrl

Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.  See the AWS Service Limits page for maximum log file sizes. Log files that exceed this limit are not saved.     CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "GameSessionId": "A unique identifier for the game session to get logs for. "
}


Optional Parameters:
{}

"""

GetGameSessionLogUrl(args) = gamelift("GetGameSessionLogUrl", args)
"""
    UntagResource

Removes a tag that is assigned to a GameLift resource. Resource tags are used to organize AWS resources for a range of purposes. This action handles the permissions necessary to manage tags for the following GameLift resource types:   Build   Script   Fleet   Alias   GameSessionQueue   MatchmakingConfiguration   MatchmakingRuleSet   To remove a tag from a resource, specify the unique ARN value for the resource and provide a string list containing one or more tags to be removed. This action succeeds even if the list includes tags that are not currently assigned to the specified resource.  Learn more   Tagging AWS Resources in the AWS General Reference    AWS Tagging Strategies   Related operations     TagResource     UntagResource     ListTagsForResource   

Required Parameters:
{
  "ResourceARN": " The Amazon Resource Name (ARN) that is assigned to and uniquely identifies the GameLift resource that you want to remove tags from. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe action for the resource type. ",
  "TagKeys": "A list of one or more tags to remove from the specified GameLift resource. Tags are developer-defined and structured as key-value pairs."
}


Optional Parameters:
{}

"""

UntagResource(args) = gamelift("UntagResource", args)
"""
    DescribePlayerSessions

Retrieves properties for one or more player sessions. This action can be used in several ways: (1) provide a PlayerSessionId to request properties for a specific player session; (2) provide a GameSessionId to request properties for all player sessions in the specified game session; (3) provide a PlayerId to request properties for all player sessions of a specified player.  To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a PlayerSession object is returned for each session matching the request.  Available in Amazon GameLift Local.     CreatePlayerSession     CreatePlayerSessions     DescribePlayerSessions    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{}


Optional Parameters:
{
  "GameSessionId": "A unique identifier for the game session to retrieve player sessions for.",
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.",
  "PlayerId": "A unique identifier for a player to retrieve player sessions for.",
  "PlayerSessionStatusFilter": "Player session status to filter results on. Possible player session statuses include the following:    RESERVED -- The player session request has been received, but the player has not yet connected to the server process and/or been validated.     ACTIVE -- The player has been validated by the server process and is currently connected.    COMPLETED -- The player connection has been dropped.    TIMEDOUT -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).  ",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.",
  "PlayerSessionId": "A unique identifier for a player session to retrieve."
}

"""
DescribePlayerSessions() = gamelift("DescribePlayerSessions")
DescribePlayerSessions(args) = gamelift("DescribePlayerSessions", args)

"""
    UpdateFleetCapacity

Updates capacity settings for a fleet. Use this action to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this action, you may want to call DescribeEC2InstanceLimits to get the maximum capacity based on the fleet's EC2 instance type. Specify minimum and maximum number of instances. Amazon GameLift will not change fleet capacity to values fall outside of this range. This is particularly important when using auto-scaling (see PutScalingPolicy) to allow capacity to adjust based on player demand while imposing limits on automatic adjustments. To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling DescribeFleetCapacity. If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes    Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to update capacity for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "DesiredInstances": "Number of EC2 instances you want this fleet to host.",
  "MaxSize": "The maximum value allowed for the fleet's instance count. Default if not set is 1.",
  "MinSize": "The minimum value allowed for the fleet's instance count. Default if not set is 0."
}

"""

UpdateFleetCapacity(args) = gamelift("UpdateFleetCapacity", args)
"""
    DeleteBuild

Deletes a build. This action permanently deletes the build record and any uploaded build files. To delete a build, specify its ID. Deleting a build does not affect the status of any active fleets using the build, but you can no longer create new fleets with the deleted build.  Learn more    Working with Builds   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{
  "BuildId": "A unique identifier for a build to delete. You can use either the build ID or ARN value. "
}


Optional Parameters:
{}

"""

DeleteBuild(args) = gamelift("DeleteBuild", args)
"""
    DescribeBuild

Retrieves properties for a build. To request a build record, specify a build ID. If successful, an object containing the build properties is returned.  Learn more    Working with Builds   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{
  "BuildId": "A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value. "
}


Optional Parameters:
{}

"""

DescribeBuild(args) = gamelift("DescribeBuild", args)
"""
    DescribeVpcPeeringAuthorizations

Retrieves valid VPC peering authorizations that are pending for the AWS account. This operation returns all VPC peering authorizations and requests for peering. This includes those initiated and received by this account.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{}


Optional Parameters:
{}

"""
DescribeVpcPeeringAuthorizations() = gamelift("DescribeVpcPeeringAuthorizations")
DescribeVpcPeeringAuthorizations(args) = gamelift("DescribeVpcPeeringAuthorizations", args)

"""
    DescribeRuntimeConfiguration

Retrieves the current runtime configuration for the specified fleet. The runtime configuration tells Amazon GameLift how to launch server processes on instances in the fleet.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to get the runtime configuration for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{}

"""

DescribeRuntimeConfiguration(args) = gamelift("DescribeRuntimeConfiguration", args)
"""
    CreateScript

Creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that provide configuration settings and optional custom game logic for your game. The script is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is executed during an active game session.  To create a new script record, specify a script name and provide the script file(s). The script files and all dependencies must be zipped into a single file. You can pull the zip file from either of these locations:    A locally available directory. Use the ZipFile parameter for this option.   An Amazon Simple Storage Service (Amazon S3) bucket under your AWS account. Use the StorageLocation parameter for this option. You'll need to have an Identity Access Management (IAM) role that allows the Amazon GameLift service to access your S3 bucket.    If the call is successful, a new script record is created with a unique script ID. If the script file is provided as a local file, the file is uploaded to an Amazon GameLift-owned S3 bucket and the script record's storage location reflects this location. If the script file is provided as an S3 bucket, Amazon GameLift accesses the file at this storage location as needed for deployment.  Learn more   Amazon GameLift Realtime Servers   Set Up a Role for Amazon GameLift Access   Related operations     CreateScript     ListScripts     DescribeScript     UpdateScript     DeleteScript   

Required Parameters:
{}


Optional Parameters:
{
  "Tags": "A list of labels to assign to the new script resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.",
  "Version": "The version that is associated with a build or script. Version strings do not need to be unique. You can use UpdateScript to change this value later. ",
  "ZipFile": "A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB. When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string \"fileb://\" to indicate that the file data is a binary object. For example: --zip-file fileb://myRealtimeScript.zip.",
  "Name": "A descriptive label that is associated with a script. Script names do not need to be unique. You can use UpdateScript to change this value later. ",
  "StorageLocation": "The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the ObjectVersion parameter to specify an earlier version. "
}

"""
CreateScript() = gamelift("CreateScript")
CreateScript(args) = gamelift("CreateScript", args)

"""
    CreateMatchmakingRuleSet

Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match to create, such as the number and size of teams. It also sets the parameters for acceptable player matches, such as minimum skill level or character type. A rule set is used by a MatchmakingConfiguration.  To create a matchmaking rule set, provide unique rule set name and the rule set body in JSON format. Rule sets must be defined in the same Region as the matchmaking configuration they are used with. Since matchmaking rule sets cannot be edited, it is a good idea to check the rule set syntax using ValidateMatchmakingRuleSet before creating a new rule set.  Learn more     Build a Rule Set     Design a Matchmaker     Matchmaking with FlexMatch     Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "RuleSetBody": "A collection of matchmaking rules, formatted as a JSON string. Comments are not allowed in JSON, but most elements support a description field.",
  "Name": "A unique identifier for a matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name value. Note that the rule set name is different from the optional name field in the rule set body."
}


Optional Parameters:
{
  "Tags": "A list of labels to assign to the new matchmaking rule set resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits."
}

"""

CreateMatchmakingRuleSet(args) = gamelift("CreateMatchmakingRuleSet", args)
"""
    DescribeFleetUtilization

Retrieves utilization statistics for one or more fleets. You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a FleetUtilization object is returned for each requested fleet ID. When specifying a list of fleet IDs, utilization objects are returned only for fleets that currently exist.   Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.   Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{}


Optional Parameters:
{
  "FleetIds": "A unique identifier for a fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN value.",
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs."
}

"""
DescribeFleetUtilization() = gamelift("DescribeFleetUtilization")
DescribeFleetUtilization(args) = gamelift("DescribeFleetUtilization", args)

"""
    StopMatchmaking

Cancels a matchmaking ticket or match backfill ticket that is currently being processed. To stop the matchmaking operation, specify the ticket ID. If successful, work on the ticket is stopped, and the ticket status is changed to CANCELLED. This call is also used to turn off automatic backfill for an individual game session. This is for game sessions that are created with a matchmaking configuration that has automatic backfill enabled. The ticket ID is included in the MatchmakerData of an updated game session object, which is provided to the game server.  If the action is successful, the service sends back an empty JSON struct with the HTTP 200 response (not an empty HTTP body).   Learn more    Add FlexMatch to a Game Client   Related operations     StartMatchmaking     DescribeMatchmaking     StopMatchmaking     AcceptMatch     StartMatchBackfill   

Required Parameters:
{
  "TicketId": "A unique identifier for a matchmaking ticket."
}


Optional Parameters:
{}

"""

StopMatchmaking(args) = gamelift("StopMatchmaking", args)
"""
    ListTagsForResource

 Retrieves all tags that are assigned to a GameLift resource. Resource tags are used to organize AWS resources for a range of purposes. This action handles the permissions necessary to manage tags for the following GameLift resource types:   Build   Script   Fleet   Alias   GameSessionQueue   MatchmakingConfiguration   MatchmakingRuleSet   To list tags for a resource, specify the unique ARN value for the resource.  Learn more   Tagging AWS Resources in the AWS General Reference    AWS Tagging Strategies   Related operations     TagResource     UntagResource     ListTagsForResource   

Required Parameters:
{
  "ResourceARN": " The Amazon Resource Name (ARN) that is assigned to and uniquely identifies the GameLift resource that you want to retrieve tags for. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe action for the resource type. "
}


Optional Parameters:
{}

"""

ListTagsForResource(args) = gamelift("ListTagsForResource", args)
"""
    CreateBuild

Creates a new Amazon GameLift build record for your game server binary files and points to the location of your game server build files in an Amazon Simple Storage Service (Amazon S3) location.  Game server binaries must be combined into a zip file for use with Amazon GameLift.   To create new builds directly from a file directory, use the AWS CLI command  upload-build . This helper command uploads build files and creates a new build record in one step, and automatically handles the necessary permissions.   The CreateBuild operation should be used only in the following scenarios:   To create a new game build with build files that are in an Amazon S3 bucket under your own AWS account. To use this option, you must first give Amazon GameLift access to that Amazon S3 bucket. Then call CreateBuild and specify a build name, operating system, and the Amazon S3 storage location of your game build.   To upload build files directly to Amazon GameLift's Amazon S3 account. To use this option, first call CreateBuild and specify a build name and operating system. This action creates a new build record and returns an Amazon S3 storage location (bucket and key only) and temporary access credentials. Use the credentials to manually upload your build file to the provided storage location (see the Amazon S3 topic Uploading Objects). You can upload build files to the GameLift Amazon S3 location only once.    If successful, this operation creates a new build record with a unique build ID and places it in INITIALIZED status. You can use DescribeBuild to check the status of your build. A build must be in READY status before it can be used to create fleets.  Learn more   Uploading Your Game https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html    Create a Build with Files in Amazon S3   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{}


Optional Parameters:
{
  "Tags": "A list of labels to assign to the new build resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.",
  "Version": "Version information that is associated with a build or script. Version strings do not need to be unique. You can use UpdateBuild to change this value later. ",
  "OperatingSystem": "The operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system. If an operating system is not specified when creating a build, Amazon GameLift uses the default value (WINDOWS_2012). This value cannot be changed later.",
  "Name": "A descriptive label that is associated with a build. Build names do not need to be unique. You can use UpdateBuild to change this value later. ",
  "StorageLocation": "Information indicating where your game build files are stored. Use this parameter only when creating a build with files stored in an Amazon S3 bucket that you own. The storage location must specify an Amazon S3 bucket name and key. The location must also specify a role ARN that you set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3 bucket and your new build must be in the same Region."
}

"""
CreateBuild() = gamelift("CreateBuild")
CreateBuild(args) = gamelift("CreateBuild", args)

"""
    DeleteGameSessionQueue

Deletes a game session queue. This action means that any StartGameSessionPlacement requests that reference this queue will fail. To delete a queue, specify the queue name.    CreateGameSessionQueue     DescribeGameSessionQueues     UpdateGameSessionQueue     DeleteGameSessionQueue   

Required Parameters:
{
  "Name": "A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. "
}


Optional Parameters:
{}

"""

DeleteGameSessionQueue(args) = gamelift("DeleteGameSessionQueue", args)
"""
    CreateGameSessionQueue

Establishes a new queue for processing requests to place new game sessions. A queue identifies where new game sessions can be hosted -- by specifying a list of destinations (fleets or aliases) -- and how long requests can wait in the queue before timing out. You can set up a queue to try to place game sessions on fleets in multiple Regions. To add placement requests to a queue, call StartGameSessionPlacement and reference the queue name.  Destination order. When processing a request for a game session, Amazon GameLift tries each destination in order until it finds one with available resources to host the new game session. A queue's default order is determined by how destinations are listed. The default order is overridden when a game session placement request provides player latency information. Player latency information enables Amazon GameLift to prioritize destinations where players report the lowest average latency, as a result placing the new game session where the majority of players will have the best possible gameplay experience.  Player latency policies. For placement requests containing player latency information, use player latency policies to protect individual players from very high latencies. With a latency cap, even when a destination can deliver a low latency for most players, the game is not placed where any individual player is reporting latency higher than a policy's maximum. A queue can have multiple latency policies, which are enforced consecutively starting with the policy with the lowest latency cap. Use multiple policies to gradually relax latency controls; for example, you might set a policy with a low latency cap for the first 60 seconds, a second policy with a higher cap for the next 60 seconds, etc.  To create a new queue, provide a name, timeout value, a list of destinations and, if desired, a set of latency policies. If successful, a new queue object is returned.    CreateGameSessionQueue     DescribeGameSessionQueues     UpdateGameSessionQueue     DeleteGameSessionQueue   

Required Parameters:
{
  "Name": "A descriptive label that is associated with game session queue. Queue names must be unique within each Region."
}


Optional Parameters:
{
  "Destinations": "A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.",
  "Tags": "A list of labels to assign to the new game session queue resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see  Tagging AWS Resources in the AWS General Reference. Once the resource is created, you can use TagResource, UntagResource, and ListTagsForResource to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.",
  "PlayerLatencyPolicies": "A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. A player latency policy must set a value for MaximumIndividualPlayerLatencyMilliseconds. If none is set, this API request fails.",
  "TimeoutInSeconds": "The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status."
}

"""

CreateGameSessionQueue(args) = gamelift("CreateGameSessionQueue", args)
"""
    UpdateMatchmakingConfiguration

Updates settings for a FlexMatch matchmaking configuration. These changes affect all matches and game sessions that are created after the update. To update settings, specify the configuration name to be updated and provide the new settings.   Learn more    Design a FlexMatch Matchmaker   Related operations     CreateMatchmakingConfiguration     DescribeMatchmakingConfigurations     UpdateMatchmakingConfiguration     DeleteMatchmakingConfiguration     CreateMatchmakingRuleSet     DescribeMatchmakingRuleSets     ValidateMatchmakingRuleSet     DeleteMatchmakingRuleSet   

Required Parameters:
{
  "Name": "A unique identifier for a matchmaking configuration to update. You can use either the configuration name or ARN value. "
}


Optional Parameters:
{
  "AcceptanceTimeoutSeconds": "The length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.",
  "GameProperties": "A set of custom properties for a game session, formatted as key-value pairs. These properties are passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session). This information is added to the new GameSession object that is created for a successful match. ",
  "RequestTimeoutSeconds": "The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that fail due to timing out can be resubmitted as needed.",
  "AdditionalPlayerCount": "The number of player slots in a match to keep open for future players. For example, assume that the configuration's rule set specifies a match for a single 12-person team. If the additional player count is set to 2, only 10 players are initially selected for the match.",
  "GameSessionData": "A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session). This information is added to the new GameSession object that is created for a successful match. ",
  "GameSessionQueueArns": "Amazon Resource Name (ARN) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any Region.",
  "CustomEventData": "Information to add to all events related to the matchmaking configuration. ",
  "RuleSetName": "A unique identifier for a matchmaking rule set to use with this configuration. You can use either the rule set name or ARN value. A matchmaking configuration can only use rule sets that are defined in the same Region.",
  "Description": "A descriptive label that is associated with matchmaking configuration.",
  "AcceptanceRequired": "A flag that indicates whether a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.",
  "BackfillMode": "The method that is used to backfill game sessions created with this matchmaking configuration. Specify MANUAL when your game manages backfill requests manually or does not use the match backfill feature. Specify AUTOMATIC to have GameLift create a StartMatchBackfill request whenever a game session has one or more open slots. Learn more about manual and automatic backfill in Backfill Existing Games with FlexMatch.",
  "NotificationTarget": "An SNS topic ARN that is set up to receive matchmaking notifications. See  Setting up Notifications for Matchmaking for more information."
}

"""

UpdateMatchmakingConfiguration(args) = gamelift("UpdateMatchmakingConfiguration", args)
"""
    CreateGameSession

Creates a multiplayer game session for players. This action creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must have an ACTIVE status before a game session can be created in it. To create a game session, specify either fleet ID or alias ID and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a GameSession object is returned containing the game session properties and other settings you specified.  Idempotency tokens. You can add a token that uniquely identifies game session requests. This is useful for ensuring that game session requests are idempotent. Multiple requests with the same idempotency token are processed only once; subsequent requests return the original result. All response values are the same with the exception of game session status, which may change.  Resource creation limits. If you are creating a game session on a fleet with a resource creation limit policy in force, then you must specify a creator ID. Without this ID, Amazon GameLift has no way to evaluate the policy for this new game session request.  Player acceptance policy. By default, newly created game sessions are open to new players. You can restrict new player access by using UpdateGameSession to change the game session's player session creation policy.  Game session logs. Logs are retained for all active game sessions for 14 days. To access the logs, call GetGameSessionLogUrl to download the log files.  Available in Amazon GameLift Local.     CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "MaximumPlayerSessionCount": "The maximum number of players that can be connected simultaneously to the game session."
}


Optional Parameters:
{
  "GameProperties": "Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session).",
  "IdempotencyToken": "Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;.) Idempotency tokens remain in use for 30 days after a game session has ended; game session objects are retained for this time period and then deleted.",
  "GameSessionData": "Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session).",
  "FleetId": "A unique identifier for a fleet to create a game session in. You can use either the fleet ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.",
  "AliasId": "A unique identifier for an alias associated with the fleet to create a game session in. You can use either the alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.",
  "Name": "A descriptive label that is associated with a game session. Session names do not need to be unique.",
  "CreatorId": "A unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.",
  "GameSessionId": " This parameter is no longer preferred. Please use IdempotencyToken instead. Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;.) "
}

"""

CreateGameSession(args) = gamelift("CreateGameSession", args)
"""
    RequestUploadCredentials

Retrieves a fresh set of credentials for use when uploading a new set of game build files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see CreateBuild. To request new credentials, specify the build ID as returned with an initial CreateBuild request. If successful, a new set of credentials are returned, along with the S3 storage location associated with the build ID.  Learn more   Uploading Your Game   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{
  "BuildId": "A unique identifier for a build to get credentials for. You can use either the build ID or ARN value. "
}


Optional Parameters:
{}

"""

RequestUploadCredentials(args) = gamelift("RequestUploadCredentials", args)
"""
    StopGameSessionPlacement

Cancels a game session placement that is in PENDING status. To stop a placement, provide the placement ID values. If successful, the placement is moved to CANCELLED status.    CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "PlacementId": "A unique identifier for a game session placement to cancel."
}


Optional Parameters:
{}

"""

StopGameSessionPlacement(args) = gamelift("StopGameSessionPlacement", args)
"""
    UpdateAlias

Updates properties for an alias. To update properties, specify the alias ID to be updated and provide the information to be changed. To reassign an alias to another fleet, provide an updated routing strategy. If successful, the updated alias record is returned.    CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{
  "AliasId": "A unique identifier for the alias that you want to update. You can use either the alias ID or ARN value."
}


Optional Parameters:
{
  "Description": "A human-readable description of the alias.",
  "RoutingStrategy": "The routing configuration, including routing type and fleet target, for the alias.",
  "Name": "A descriptive label that is associated with an alias. Alias names do not need to be unique."
}

"""

UpdateAlias(args) = gamelift("UpdateAlias", args)
"""
    DeleteScript

Deletes a Realtime script. This action permanently deletes the script record. If script files were uploaded, they are also deleted (files stored in an S3 bucket are not deleted).  To delete a script, specify the script ID. Before deleting a script, be sure to terminate all fleets that are deployed with the script being deleted. Fleet instances periodically check for script updates, and if the script record no longer exists, the instance will go into an error state and be unable to host game sessions.  Learn more   Amazon GameLift Realtime Servers   Related operations     CreateScript     ListScripts     DescribeScript     UpdateScript     DeleteScript   

Required Parameters:
{
  "ScriptId": "A unique identifier for a Realtime script to delete. You can use either the script ID or ARN value."
}


Optional Parameters:
{}

"""

DeleteScript(args) = gamelift("DeleteScript", args)
"""
    DescribeInstances

Retrieves information about a fleet's instances, including instance IDs. Use this action to get details on all instances in the fleet or get details on one specific instance. To get a specific instance, specify fleet ID and instance ID. To get all instances in a fleet, specify a fleet ID only. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, an Instance object is returned for each result.

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to retrieve instance information for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "InstanceId": "A unique identifier for an instance to retrieve. Specify an instance ID or leave blank to retrieve all instances in the fleet.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""

DescribeInstances(args) = gamelift("DescribeInstances", args)
"""
    ListAliases

Retrieves all aliases for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.  Returned aliases are not listed in any particular order.     CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "Name": "A descriptive label that is associated with an alias. Alias names do not need to be unique.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages.",
  "RoutingStrategyType": "The routing type to filter results on. Use this parameter to retrieve only aliases with a certain routing type. To retrieve all aliases, leave this parameter empty. Possible routing types include the following:    SIMPLE -- The alias resolves to one specific fleet. Use this type when routing to active fleets.    TERMINAL -- The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the RoutingStrategy message embedded.  "
}

"""
ListAliases() = gamelift("ListAliases")
ListAliases(args) = gamelift("ListAliases", args)

"""
    StopFleetActions

Suspends activity on a fleet. Currently, this operation is used to stop a fleet's auto-scaling activity. It is used to temporarily stop scaling events triggered by the fleet's scaling policies. The policies can be retained and auto-scaling activity can be restarted using StartFleetActions. You can view a fleet's stopped actions using DescribeFleetAttributes. To stop fleet actions, specify the fleet ID and the type of actions to suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no longer initiates scaling events except to maintain the fleet's desired instances setting (FleetCapacity. Changes to the fleet's capacity must be done manually using UpdateFleetCapacity.   Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents      Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "Actions": "List of actions to suspend on the fleet. ",
  "FleetId": "A unique identifier for a fleet to stop actions on. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{}

"""

StopFleetActions(args) = gamelift("StopFleetActions", args)
"""
    DeleteFleet

Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See UpdateFleetCapacity. If the fleet being deleted has a VPC peering connection, you first need to get a valid authorization (good for 24 hours) by calling CreateVpcPeeringAuthorization. You do not need to explicitly delete the VPC peering connection--this is done as part of the delete fleet process. This action removes the fleet's resources and the fleet record. Once a fleet is deleted, you can no longer use that fleet.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes     UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{}

"""

DeleteFleet(args) = gamelift("DeleteFleet", args)
"""
    DeleteVpcPeeringConnection

Removes a VPC peering connection. To delete the connection, you must have a valid authorization for the VPC peering connection that you want to delete. You can check for an authorization by calling DescribeVpcPeeringAuthorizations or request a new one using CreateVpcPeeringAuthorization.  Once a valid authorization exists, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection ID and fleet ID. If successful, the connection is removed.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet. This fleet specified must match the fleet referenced in the VPC peering connection record. You can use either the fleet ID or ARN value.",
  "VpcPeeringConnectionId": "A unique identifier for a VPC peering connection. This value is included in the VpcPeeringConnection object, which can be retrieved by calling DescribeVpcPeeringConnections."
}


Optional Parameters:
{}

"""

DeleteVpcPeeringConnection(args) = gamelift("DeleteVpcPeeringConnection", args)
"""
    DescribeMatchmaking

Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket information, including status and--once a successful match is made--acquire connection information for the resulting new game session.  You can use this operation to track the progress of matchmaking requests (through polling) as an alternative to using event notifications. See more details on tracking matchmaking requests through polling or notifications in StartMatchmaking.  To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request is successful, a ticket object is returned for each requested ID that currently exists.  Learn more    Add FlexMatch to a Game Client    Set Up FlexMatch Event Notification   Related operations     StartMatchmaking     DescribeMatchmaking     StopMatchmaking     AcceptMatch     StartMatchBackfill   

Required Parameters:
{
  "TicketIds": "A unique identifier for a matchmaking ticket. You can include up to 10 ID values. "
}


Optional Parameters:
{}

"""

DescribeMatchmaking(args) = gamelift("DescribeMatchmaking", args)
"""
    DescribeGameSessionQueues

Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a GameSessionQueue object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the Region.    CreateGameSessionQueue     DescribeGameSessionQueues     UpdateGameSessionQueue     DeleteGameSessionQueue   

Required Parameters:
{}


Optional Parameters:
{
  "Names": "A list of queue names to retrieve information for. You can use either the queue ID or ARN value. To request settings for all queues, leave this parameter empty. ",
  "NextToken": "A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""
DescribeGameSessionQueues() = gamelift("DescribeGameSessionQueues")
DescribeGameSessionQueues(args) = gamelift("DescribeGameSessionQueues", args)

"""
    CreateVpcPeeringAuthorization

Requests authorization to create or delete a peer connection between the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in your AWS account. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. Once you've received authorization, call CreateVpcPeeringConnection to establish the peering connection. For more information, see VPC Peering with Amazon GameLift Fleets. You can peer with VPCs that are owned by any AWS account you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different Regions. To request authorization to create a connection, call this operation from the AWS account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to enable your game servers to retrieve data from a DynamoDB table, use the account that manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you want to peer with, and (2) the ID of the AWS account that you use to manage Amazon GameLift. If successful, VPC peering is authorized for the specified VPC.  To request authorization to delete a connection, call this operation from the AWS account with the VPC that is peered with your Amazon GameLift fleet. Identify the following values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the AWS account that you use to manage Amazon GameLift.  The authorization remains valid for 24 hours unless it is canceled by a call to DeleteVpcPeeringAuthorization. You must create or delete the peering connection while the authorization is valid.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{
  "PeerVpcId": "A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the VPC Dashboard in the AWS Management Console. Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets.",
  "GameLiftAwsAccountId": "A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings."
}


Optional Parameters:
{}

"""

CreateVpcPeeringAuthorization(args) = gamelift("CreateVpcPeeringAuthorization", args)
"""
    DescribeFleetCapacity

Retrieves the current status of fleet capacity for one or more fleets. This information includes the number of instances that have been requested for the fleet and the number currently active. You can request capacity for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a FleetCapacity object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist.   Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.   Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{}


Optional Parameters:
{
  "FleetIds": "A unique identifier for a fleet(s) to retrieve capacity information for. You can use either the fleet ID or ARN value.",
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs."
}

"""
DescribeFleetCapacity() = gamelift("DescribeFleetCapacity")
DescribeFleetCapacity(args) = gamelift("DescribeFleetCapacity", args)

"""
    DescribeFleetEvents

Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to get event logs for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "StartTime": "Earliest date to retrieve event logs for. If no start time is specified, this call returns entries starting from when the fleet was created to the specified end time. Format is a number expressed in Unix time as milliseconds (ex: \"1469498468.057\").",
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "EndTime": "Most recent date to retrieve event logs for. If no end time is specified, this call returns entries from the specified start time up to the present. Format is a number expressed in Unix time as milliseconds (ex: \"1469498468.057\").",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""

DescribeFleetEvents(args) = gamelift("DescribeFleetEvents", args)
"""
    PutScalingPolicy

Creates or updates a scaling policy for a fleet. Scaling policies are used to automatically scale a fleet's hosting capacity to meet player demand. An active scaling policy instructs Amazon GameLift to track a fleet metric and automatically change the fleet's capacity when a certain threshold is reached. There are two types of scaling policies: target-based and rule-based. Use a target-based policy to quickly and efficiently manage fleet scaling; this option is the most commonly used. Use rule-based policies when you need to exert fine-grained control over auto-scaling.  Fleets can have multiple scaling policies of each type in force at the same time; you can have one target-based policy, one or multiple rule-based scaling policies, or both. We recommend caution, however, because multiple auto-scaling policies can have unintended consequences. You can temporarily suspend all scaling policies for a fleet by calling StopFleetActions with the fleet action AUTO_SCALING. To resume scaling policies, call StartFleetActions with the same fleet action. To stop just one scaling policy--or to permanently remove it, you must delete the policy with DeleteScalingPolicy. Learn more about how to work with auto-scaling in Set Up Fleet Automatic Scaling.  Target-based policy  A target-based policy tracks a single metric: PercentAvailableGameSessions. This metric tells us how much of a fleet's hosting capacity is ready to host game sessions but is not currently in use. This is the fleet's buffer; it measures the additional player demand that the fleet could handle at current capacity. With a target-based policy, you set your ideal buffer size and leave it to Amazon GameLift to take whatever action is needed to maintain that target.  For example, you might choose to maintain a 10% buffer for a fleet that has the capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift to take action whenever the fleet's available capacity falls below or rises above 10 game sessions. Amazon GameLift will start new instances or stop unused instances in order to return to the 10% buffer.  To create or update a target-based policy, specify a fleet ID and name, and set the policy type to "TargetBased". Specify the metric to track (PercentAvailableGameSessions) and reference a TargetConfiguration object with your desired buffer value. Exclude all other parameters. On a successful request, the policy name is returned. The scaling policy is automatically in force as soon as it's successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.  Rule-based policy  A rule-based policy tracks specified fleet metric, sets a threshold value, and specifies the type of action to initiate when triggered. With a rule-based policy, you can select from several available fleet metrics. Each policy specifies whether to scale up or scale down (and by how much), so you need one policy for each type of action.  For example, a policy may make the following statement: "If the percentage of idle instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity by 10%." A policy's rule statement has the following structure: If [MetricName] is [ComparisonOperator] [Threshold] for [EvaluationPeriods] minutes, then [ScalingAdjustmentType] to/by [ScalingAdjustment]. To implement the example, the rule statement would look like this: If [PercentIdleInstances] is [GreaterThanThreshold] [20] for [15] minutes, then [PercentChangeInCapacity] to/by [10]. To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the policy type to "RuleBased". Specify the parameter values for a policy rule statement. On a successful request, the policy name is returned. Scaling policies are automatically in force as soon as they're successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.    DescribeFleetCapacity     UpdateFleetCapacity     DescribeEC2InstanceLimits    Manage scaling policies:    PutScalingPolicy (auto-scaling)    DescribeScalingPolicies (auto-scaling)    DeleteScalingPolicy (auto-scaling)     Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet cannot be in any of the following statuses: ERROR or DELETING.",
  "MetricName": "Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For detailed descriptions of fleet metrics, see Monitor Amazon GameLift with Amazon CloudWatch.     ActivatingGameSessions -- Game sessions in the process of being created.    ActiveGameSessions -- Game sessions that are currently running.    ActiveInstances -- Fleet instances that are currently running at least one game session.    AvailableGameSessions -- Additional game sessions that fleet could host simultaneously, given current capacity.    AvailablePlayerSessions -- Empty player slots in currently active game sessions. This includes game sessions that are not currently accepting players. Reserved player slots are not included.    CurrentPlayerSessions -- Player slots in active game sessions that are being used by a player or are reserved for a player.     IdleInstances -- Active instances that are currently hosting zero game sessions.     PercentAvailableGameSessions -- Unused percentage of the total number of game sessions that a fleet could host simultaneously, given current capacity. Use this metric for a target-based scaling policy.    PercentIdleInstances -- Percentage of the total number of active instances that are hosting zero game sessions.    QueueDepth -- Pending game session placement requests, in any queue, where the current fleet is the top-priority destination.    WaitTime -- Current wait time for pending game session placement requests, in any queue, where the current fleet is the top-priority destination.   ",
  "Name": "A descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name."
}


Optional Parameters:
{
  "ScalingAdjustment": "Amount of adjustment to make, based on the scaling adjustment type.",
  "PolicyType": "The type of scaling policy to create. For a target-based policy, set the parameter MetricName to 'PercentAvailableGameSessions' and specify a TargetConfiguration. For a rule-based policy set the following parameters: MetricName, ComparisonOperator, Threshold, EvaluationPeriods, ScalingAdjustmentType, and ScalingAdjustment.",
  "TargetConfiguration": "The settings for a target-based scaling policy.",
  "ScalingAdjustmentType": "The type of adjustment to make to a fleet's instance count (see FleetCapacity):    ChangeInCapacity -- add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.    ExactCapacity -- set the instance count to the scaling adjustment value.    PercentChangeInCapacity -- increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of \"-10\" scales the fleet down by 10%.  ",
  "Threshold": "Metric value used to trigger a scaling event.",
  "EvaluationPeriods": "Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.",
  "ComparisonOperator": "Comparison operator to use when measuring the metric against the threshold value."
}

"""

PutScalingPolicy(args) = gamelift("PutScalingPolicy", args)
"""
    UpdateFleetPortSettings

Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in InboundPermissionAuthorizations, and permissions you want to remove in InboundPermissionRevocations. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes    Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to update port settings for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "InboundPermissionAuthorizations": "A collection of port settings to be added to the fleet record.",
  "InboundPermissionRevocations": "A collection of port settings to be removed from the fleet record."
}

"""

UpdateFleetPortSettings(args) = gamelift("UpdateFleetPortSettings", args)
"""
    CreatePlayerSessions

Reserves open slots in a game session for a group of players. Before players can be added, a game session must have an ACTIVE status, have a creation policy of ALLOW_ALL, and have an open player slot. To add a single player to a game session, use CreatePlayerSession. When a player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player. To create player sessions, specify a game session ID, a list of player IDs, and optionally a set of player data strings. If successful, a slot is reserved in the game session for each player and a set of new PlayerSession objects is returned. Player sessions cannot be updated.  Available in Amazon GameLift Local.     CreatePlayerSession     CreatePlayerSessions     DescribePlayerSessions    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "PlayerIds": "List of unique identifiers for the players to be added.",
  "GameSessionId": "A unique identifier for the game session to add players to."
}


Optional Parameters:
{
  "PlayerDataMap": "Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the PlayerIds parameter are ignored. "
}

"""

CreatePlayerSessions(args) = gamelift("CreatePlayerSessions", args)
"""
    StartMatchmaking

Uses FlexMatch to create a game match for a group of players based on custom matchmaking rules, and starts a new game for the matched players. Each matchmaking request specifies the type of match to build (team configuration, rules for an acceptable match, etc.). The request also specifies the players to find a match for and where to host the new game session for optimal performance. A matchmaking request might start with a single player or a group of players who want to play together. FlexMatch finds additional players as needed to fill the match. Match type, rules, and the queue used to place a new game session are defined in a MatchmakingConfiguration.  To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration, and include the players to be matched. You must also include a set of player attributes relevant for the matchmaking configuration. If successful, a matchmaking ticket is returned with status set to QUEUED. Track the status of the ticket to respond as needed and acquire game session connection information for successfully completed matches.  Tracking ticket status -- A couple of options are available for tracking the status of matchmaking requests:    Polling -- Call DescribeMatchmaking. This operation returns the full ticket object, including current status and (for completed tickets) game session connection info. We recommend polling no more than once every 10 seconds.   Notifications -- Get event notifications for changes in ticket status using Amazon Simple Notification Service (SNS). Notifications are easy to set up (see CreateMatchmakingConfiguration) and typically deliver match status changes faster and more efficiently than polling. We recommend that you use polling to back up to notifications (since delivery is not guaranteed) and call DescribeMatchmaking only when notifications are not received within 30 seconds.    Processing a matchmaking request -- FlexMatch handles a matchmaking request as follows:    Your client code submits a StartMatchmaking request for one or more players and tracks the status of the request ticket.    FlexMatch uses this ticket and others in process to build an acceptable match. When a potential match is identified, all tickets in the proposed match are advanced to the next status.    If the match requires player acceptance (set in the matchmaking configuration), the tickets move into status REQUIRES_ACCEPTANCE. This status triggers your client code to solicit acceptance from all players in every ticket involved in the match, and then call AcceptMatch for each player. If any player rejects or fails to accept the match before a specified timeout, the proposed match is dropped (see AcceptMatch for more details).   Once a match is proposed and accepted, the matchmaking tickets move into status PLACING. FlexMatch locates resources for a new game session using the game session queue (set in the matchmaking configuration) and creates the game session based on the match data.    When the match is successfully placed, the matchmaking tickets move into COMPLETED status. Connection information (including game session endpoint and player session) is added to the matchmaking tickets. Matched players can use the connection information to join the game.     Learn more    Add FlexMatch to a Game Client    Set Up FlexMatch Event Notification    FlexMatch Integration Roadmap    How GameLift FlexMatch Works   Related operations     StartMatchmaking     DescribeMatchmaking     StopMatchmaking     AcceptMatch     StartMatchBackfill   

Required Parameters:
{
  "Players": "Information on each player to be matched. This information must include a player ID, and may contain player attributes and latency data to be used in the matchmaking process. After a successful match, Player objects contain the name of the team the player is assigned to.",
  "ConfigurationName": "Name of the matchmaking configuration to use for this request. Matchmaking configurations must exist in the same Region as this request. You can use either the configuration name or ARN value."
}


Optional Parameters:
{
  "TicketId": "A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the matchmaking ticket status and retrieve match results."
}

"""

StartMatchmaking(args) = gamelift("StartMatchmaking", args)
"""
    DescribeGameSessions

Retrieves a set of one or more game sessions. Request a specific game session or request all game sessions on a fleet. Alternatively, use SearchGameSessions to request a set of active game sessions that are filtered by certain criteria. To retrieve protection policy settings for game sessions, use DescribeGameSessionDetails. To get game sessions, specify one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a GameSession object is returned for each game session matching the request.  Available in Amazon GameLift Local.     CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "FleetId": "A unique identifier for a fleet to retrieve all game sessions for. You can use either the fleet ID or ARN value. ",
  "StatusFilter": "Game session status to filter results on. Possible game session statuses include ACTIVE, TERMINATED, ACTIVATING, and TERMINATING (the last two are transitory). ",
  "AliasId": "A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages.",
  "GameSessionId": "A unique identifier for the game session to retrieve. "
}

"""
DescribeGameSessions() = gamelift("DescribeGameSessions")
DescribeGameSessions(args) = gamelift("DescribeGameSessions", args)

"""
    CreateVpcPeeringConnection

Establishes a VPC peering connection between a virtual private cloud (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. You can peer with VPCs in any AWS account that you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different Regions. For more information, see VPC Peering with Amazon GameLift Fleets. Before calling this operation to establish the peering connection, you first need to call CreateVpcPeeringAuthorization and identify the VPC you want to peer with. Once the authorization for the specified VPC is issued, you have 24 hours to establish the connection. These two operations handle all tasks necessary to peer the two VPCs, including acceptance, updating routing tables, etc.  To establish the connection, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet you want to be enable a VPC peering connection for; (2) The AWS account with the VPC that you want to peer with; and (3) The ID of the VPC you want to peer with. This operation is asynchronous. If successful, a VpcPeeringConnection request is created. You can use continuous polling to track the request's status using DescribeVpcPeeringConnections, or by monitoring fleet events for success or failure using DescribeFleetEvents.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{
  "PeerVpcAwsAccountId": "A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your Account ID in the AWS Management Console under account settings.",
  "PeerVpcId": "A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the VPC Dashboard in the AWS Management Console. Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets.",
  "FleetId": "A unique identifier for a fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift which GameLift VPC to peer with. "
}


Optional Parameters:
{}

"""

CreateVpcPeeringConnection(args) = gamelift("CreateVpcPeeringConnection", args)
"""
    DescribeFleetAttributes

Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets. You can request attributes for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a FleetAttributes object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist.   Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.   Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents       UpdateFleetAttributes    Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{}


Optional Parameters:
{
  "FleetIds": "A unique identifier for a fleet(s) to retrieve attributes for. You can use either the fleet ID or ARN value.",
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs."
}

"""
DescribeFleetAttributes() = gamelift("DescribeFleetAttributes")
DescribeFleetAttributes(args) = gamelift("DescribeFleetAttributes", args)

"""
    DeleteScalingPolicy

Deletes a fleet scaling policy. This action means that the policy is no longer in force and removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with. To temporarily suspend scaling policies, call StopFleetActions. This operation suspends all policies for the fleet.    DescribeFleetCapacity     UpdateFleetCapacity     DescribeEC2InstanceLimits    Manage scaling policies:    PutScalingPolicy (auto-scaling)    DescribeScalingPolicies (auto-scaling)    DeleteScalingPolicy (auto-scaling)     Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value.",
  "Name": "A descriptive label that is associated with a scaling policy. Policy names do not need to be unique."
}


Optional Parameters:
{}

"""

DeleteScalingPolicy(args) = gamelift("DeleteScalingPolicy", args)
"""
    GetInstanceAccess

Requests remote access to a fleet instance. Remote access is useful for debugging, gathering benchmarking data, or watching activity in real time.  Access requires credentials that match the operating system of the instance. For a Windows instance, Amazon GameLift returns a user name and password as strings for use with a Windows Remote Desktop client. For a Linux instance, Amazon GameLift returns a user name and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a .pem file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the GetInstanceAccess request. (See the example later in this topic). For more information on remote access, see Remotely Accessing an Instance. To request access to a specific instance, specify the IDs of both the instance and the fleet it belongs to. You can retrieve a fleet's instance IDs by calling DescribeInstances. If successful, an InstanceAccess object is returned containing the instance's IP address and a set of credentials.

Required Parameters:
{
  "InstanceId": "A unique identifier for an instance you want to get access to. You can access an instance in any status.",
  "FleetId": "A unique identifier for a fleet that contains the instance you want access to. You can use either the fleet ID or ARN value. The fleet can be in any of the following statuses: ACTIVATING, ACTIVE, or ERROR. Fleets with an ERROR status may be accessible for a short time before they are deleted."
}


Optional Parameters:
{}

"""

GetInstanceAccess(args) = gamelift("GetInstanceAccess", args)
"""
    DescribeGameSessionPlacement

Retrieves properties and current status of a game session placement request. To get game session placement details, specify the placement ID. If successful, a GameSessionPlacement object is returned.    CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "PlacementId": "A unique identifier for a game session placement to retrieve."
}


Optional Parameters:
{}

"""

DescribeGameSessionPlacement(args) = gamelift("DescribeGameSessionPlacement", args)
"""
    UpdateBuild

Updates metadata in a build record, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.  Learn more    Working with Builds   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{
  "BuildId": "A unique identifier for a build to update. You can use either the build ID or ARN value. "
}


Optional Parameters:
{
  "Version": "Version information that is associated with a build or script. Version strings do not need to be unique.",
  "Name": "A descriptive label that is associated with a build. Build names do not need to be unique. "
}

"""

UpdateBuild(args) = gamelift("UpdateBuild", args)
"""
    ListBuilds

Retrieves build records for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the Status parameter. Use the pagination parameters to retrieve results in a set of sequential pages.   Build records are not listed in any particular order.   Learn more    Working with Builds   Related operations     CreateBuild     ListBuilds     DescribeBuild     UpdateBuild     DeleteBuild   

Required Parameters:
{}


Optional Parameters:
{
  "NextToken": "Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this action. To start at the beginning of the result set, do not specify a value.",
  "Status": "Build status to filter results by. To retrieve all builds, leave this parameter empty. Possible build statuses include the following:    INITIALIZED -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.     READY -- The game build has been successfully uploaded. You can now create new fleets for this build.    FAILED -- The game build upload failed. You cannot create new fleets for this build.   ",
  "Limit": "The maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential pages."
}

"""
ListBuilds() = gamelift("ListBuilds")
ListBuilds(args) = gamelift("ListBuilds", args)

"""
    DescribeVpcPeeringConnections

Retrieves information on VPC peering connections. Use this operation to get peering information for all fleets or for one specific fleet ID.  To retrieve connection information, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty to retrieve all connection records. If successful, the retrieved information includes both active and pending connections. Active connections identify the IpV4 CIDR block that the VPC uses to connect.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{}


Optional Parameters:
{
  "FleetId": "A unique identifier for a fleet. You can use either the fleet ID or ARN value."
}

"""
DescribeVpcPeeringConnections() = gamelift("DescribeVpcPeeringConnections")
DescribeVpcPeeringConnections(args) = gamelift("DescribeVpcPeeringConnections", args)

"""
    StartMatchBackfill

Finds new players to fill open slots in an existing game session. This operation can be used to add players to matched games that start with fewer than the maximum number of players or to replace players when they drop out. By backfilling with the same matchmaker used to create the original match, you ensure that new players meet the match criteria and maintain a consistent experience throughout the game session. You can backfill a match anytime after a game session has been created.  To request a match backfill, specify a unique ticket ID, the existing game session's ARN, a matchmaking configuration, and a set of data that describes all current players in the game session. If successful, a match backfill ticket is created and returned with status set to QUEUED. The ticket is placed in the matchmaker's ticket pool and processed. Track the status of the ticket to respond as needed.  The process of finding backfill matches is essentially identical to the initial matchmaking process. The matchmaker searches the pool and groups tickets together to form potential matches, allowing only one backfill ticket per potential match. Once the a match is formed, the matchmaker creates player sessions for the new players. All tickets in the match are updated with the game session's connection information, and the GameSession object is updated to include matchmaker data on the new players. For more detail on how match backfill requests are processed, see  How Amazon GameLift FlexMatch Works.   Learn more    Backfill Existing Games with FlexMatch    How GameLift FlexMatch Works   Related operations     StartMatchmaking     DescribeMatchmaking     StopMatchmaking     AcceptMatch     StartMatchBackfill   

Required Parameters:
{
  "Players": "Match information on all players that are currently assigned to the game session. This information is used by the matchmaker to find new players and add them to the existing game.   PlayerID, PlayerAttributes, Team -  - This information is maintained in the GameSession object, MatchmakerData property, for all players who are currently assigned to the game session. The matchmaker data is in JSON syntax, formatted as a string. For more details, see  Match Data.    LatencyInMs -  - If the matchmaker uses player latency, include a latency value, in milliseconds, for the Region that the game session is currently in. Do not include latency values for any other Region.  ",
  "ConfigurationName": "Name of the matchmaker to use for this request. You can use either the configuration name or ARN value. The ARN of the matchmaker that was used with the original game session is listed in the GameSession object, MatchmakerData property.",
  "GameSessionArn": "Amazon Resource Name (ARN) that is assigned to a game session and uniquely identifies it. This is the same as the game session ID."
}


Optional Parameters:
{
  "TicketId": "A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the match backfill ticket status and retrieve match results."
}

"""

StartMatchBackfill(args) = gamelift("StartMatchBackfill", args)
"""
    UpdateFleetAttributes

Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values that you want to change. If successful, the fleet ID for the updated fleet is returned.  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet     DescribeFleetAttributes    Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{
  "FleetId": "A unique identifier for a fleet to update attribute metadata for. You can use either the fleet ID or ARN value."
}


Optional Parameters:
{
  "NewGameSessionProtectionPolicy": "Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using UpdateGameSession.    NoProtection -- The game session can be terminated during a scale-down event.    FullProtection -- If the game session is in an ACTIVE status, it cannot be terminated during a scale-down event.  ",
  "Description": "Human-readable description of a fleet.",
  "MetricGroups": "Names of metric groups to include this fleet in. Amazon CloudWatch uses a fleet metric group is to aggregate metrics from multiple fleets. Use an existing metric group name to add this fleet to the group. Or use a new name to create a new metric group. A fleet can only be included in one metric group at a time.",
  "Name": "A descriptive label that is associated with a fleet. Fleet names do not need to be unique.",
  "ResourceCreationLimitPolicy": "Policy that limits the number of game sessions an individual player can create over a span of time. "
}

"""

UpdateFleetAttributes(args) = gamelift("UpdateFleetAttributes", args)
"""
    UpdateGameSessionQueue

Updates settings for a game session queue, which determines how new game session requests in the queue are processed. To update settings, specify the queue name to be updated and provide the new settings. When updating destinations, provide a complete list of destinations.     CreateGameSessionQueue     DescribeGameSessionQueues     UpdateGameSessionQueue     DeleteGameSessionQueue   

Required Parameters:
{
  "Name": "A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. "
}


Optional Parameters:
{
  "Destinations": "A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.",
  "PlayerLatencyPolicies": "A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.",
  "TimeoutInSeconds": "The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a TIMED_OUT status."
}

"""

UpdateGameSessionQueue(args) = gamelift("UpdateGameSessionQueue", args)
"""
    UpdateScript

Updates Realtime script metadata and content. To update script metadata, specify the script ID and provide updated name and/or version values.  To update script content, provide an updated zip file by pointing to either a local file or an Amazon S3 bucket location. You can use either method regardless of how the original script was uploaded. Use the Version parameter to track updates to the script. If the call is successful, the updated metadata is stored in the script record and a revised script is uploaded to the Amazon GameLift service. Once the script is updated and acquired by a fleet instance, the new version is used for all new game sessions.   Learn more   Amazon GameLift Realtime Servers   Related operations     CreateScript     ListScripts     DescribeScript     UpdateScript     DeleteScript   

Required Parameters:
{
  "ScriptId": "A unique identifier for a Realtime script to update. You can use either the script ID or ARN value."
}


Optional Parameters:
{
  "Version": "The version that is associated with a build or script. Version strings do not need to be unique.",
  "ZipFile": "A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB. When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string \"fileb://\" to indicate that the file data is a binary object. For example: --zip-file fileb://myRealtimeScript.zip.",
  "Name": "A descriptive label that is associated with a script. Script names do not need to be unique.",
  "StorageLocation": "The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the ObjectVersion parameter to specify an earlier version. "
}

"""

UpdateScript(args) = gamelift("UpdateScript", args)
"""
    DescribeEC2InstanceLimits

Retrieves the following information for the specified EC2 instance type:   maximum number of instances allowed per AWS account (service limit)   current usage level for the AWS account   Service limits vary depending on Region. Available Regions for Amazon GameLift can be found in the AWS Management Console for Amazon GameLift (see the drop-down list in the upper right corner).  Learn more    Working with Fleets.  Related operations     CreateFleet     ListFleets     DeleteFleet    Describe fleets:    DescribeFleetAttributes     DescribeFleetCapacity     DescribeFleetPortSettings     DescribeFleetUtilization     DescribeRuntimeConfiguration     DescribeEC2InstanceLimits     DescribeFleetEvents      Update fleets:    UpdateFleetAttributes     UpdateFleetCapacity     UpdateFleetPortSettings     UpdateRuntimeConfiguration      Manage fleet actions:    StartFleetActions     StopFleetActions     

Required Parameters:
{}


Optional Parameters:
{
  "EC2InstanceType": "Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See Amazon EC2 Instance Types for detailed descriptions. Leave this parameter blank to retrieve limits for all types."
}

"""
DescribeEC2InstanceLimits() = gamelift("DescribeEC2InstanceLimits")
DescribeEC2InstanceLimits(args) = gamelift("DescribeEC2InstanceLimits", args)

"""
    DeleteAlias

Deletes an alias. This action removes all record of the alias. Game clients attempting to access a server process using the deleted alias receive an error. To delete an alias, specify the alias ID to be deleted.    CreateAlias     ListAliases     DescribeAlias     UpdateAlias     DeleteAlias     ResolveAlias   

Required Parameters:
{
  "AliasId": "A unique identifier of the alias that you want to delete. You can use either the alias ID or ARN value."
}


Optional Parameters:
{}

"""

DeleteAlias(args) = gamelift("DeleteAlias", args)
"""
    DeleteVpcPeeringAuthorization

Cancels a pending VPC peering authorization for the specified VPC. If you need to delete an existing VPC peering connection, call DeleteVpcPeeringConnection.     CreateVpcPeeringAuthorization     DescribeVpcPeeringAuthorizations     DeleteVpcPeeringAuthorization     CreateVpcPeeringConnection     DescribeVpcPeeringConnections     DeleteVpcPeeringConnection   

Required Parameters:
{
  "PeerVpcId": "A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the VPC Dashboard in the AWS Management Console. Learn more about VPC peering in VPC Peering with Amazon GameLift Fleets.",
  "GameLiftAwsAccountId": "A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings."
}


Optional Parameters:
{}

"""

DeleteVpcPeeringAuthorization(args) = gamelift("DeleteVpcPeeringAuthorization", args)
"""
    StartGameSessionPlacement

Places a request for a new game session in a queue (see CreateGameSessionQueue). When processing a placement request, Amazon GameLift searches for available resources on the queue's destinations, scanning each until it finds resources or the placement request times out. A game session placement request can also request player sessions. When a new game session is successfully created, Amazon GameLift creates a player session for each player included in the request. When placing a game session, by default Amazon GameLift tries each fleet in the order they are listed in the queue configuration. Ideally, a queue's destinations are listed in preference order. Alternatively, when requesting a game session with players, you can also provide latency data for each player in relevant Regions. Latency data indicates the performance lag a player experiences when connected to a fleet in the Region. Amazon GameLift uses latency data to reorder the list of destinations to place the game session in a Region with minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each Region's average lag for all players and reorders to get the best game play across all players.  To place a new game session request, specify the following:   The queue name and a set of game session properties and settings   A unique ID (such as a UUID) for the placement. You use this ID to track the status of the placement request   (Optional) A set of player data and a unique player ID for each player that you are joining to the new game session (player data is optional, but if you include it, you must also provide a unique ID for each player)   Latency data for all players (if you want to optimize game play for the players)   If successful, a new game session placement is created. To track the status of a placement request, call DescribeGameSessionPlacement and check the request's status. If the status is FULFILLED, a new game session has been created and a game session ARN and Region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue.     CreateGameSession     DescribeGameSessions     DescribeGameSessionDetails     SearchGameSessions     UpdateGameSession     GetGameSessionLogUrl    Game session placements    StartGameSessionPlacement     DescribeGameSessionPlacement     StopGameSessionPlacement     

Required Parameters:
{
  "PlacementId": "A unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all Regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.",
  "MaximumPlayerSessionCount": "The maximum number of players that can be connected simultaneously to the game session.",
  "GameSessionQueueName": "Name of the queue to use to place the new game session. You can use either the qieue name or ARN value. "
}


Optional Parameters:
{
  "GameProperties": "Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session).",
  "DesiredPlayerSessions": "Set of information on each player to create a player session for.",
  "GameSessionName": "A descriptive label that is associated with a game session. Session names do not need to be unique.",
  "GameSessionData": "Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the GameSession object with a request to start a new game session (see Start a Game Session).",
  "PlayerLatencies": "Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players. "
}

"""

StartGameSessionPlacement(args) = gamelift("StartGameSessionPlacement", args)