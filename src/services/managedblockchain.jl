include("../AWSCorePrototypeServices.jl")
using .Services: managedblockchain

"""
Returns detailed information about a network.

Required Parameters:
NetworkId
"""
GetNetwork(args) = managedblockchain("GET", "/networks/{networkId}", args)

"""
Creates a new blockchain network using Amazon Managed Blockchain.

Required Parameters:
ClientRequestToken, Name, Framework, FrameworkVersion, VotingPolicy, MemberConfiguration
"""
CreateNetwork(args) = managedblockchain("POST", "/networks", args)

"""
Returns detailed information about a peer node.

Required Parameters:
NetworkId, MemberId, NodeId
"""
GetNode(args) = managedblockchain("GET", "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", args)

"""
Returns a listing of proposals for the network.

Required Parameters:
NetworkId
"""
ListProposals(args) = managedblockchain("GET", "/networks/{networkId}/proposals", args)

"""
Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.

Required Parameters:
InvitationId
"""
RejectInvitation(args) = managedblockchain("DELETE", "/invitations/{invitationId}", args)

"""
Returns a listing of all invitations made on the specified network.
"""
ListInvitations() = managedblockchain("GET", "/invitations")

"""
Returns information about the nodes within a network.

Required Parameters:
NetworkId, MemberId
"""
ListNodes(args) = managedblockchain("GET", "/networks/{networkId}/members/{memberId}/nodes", args)

"""
Returns detailed information about a member.

Required Parameters:
NetworkId, MemberId
"""
GetMember(args) = managedblockchain("GET", "/networks/{networkId}/members/{memberId}", args)

"""
Creates a member within a Managed Blockchain network.

Required Parameters:
ClientRequestToken, InvitationId, NetworkId, MemberConfiguration
"""
CreateMember(args) = managedblockchain("POST", "/networks/{networkId}/members", args)

"""
Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.

Required Parameters:
NetworkId, ProposalId
"""
ListProposalVotes(args) = managedblockchain("GET", "/networks/{networkId}/proposals/{proposalId}/votes", args)

"""
Returns a listing of the members in a network and properties of their configurations.

Required Parameters:
NetworkId
"""
ListMembers(args) = managedblockchain("GET", "/networks/{networkId}/members", args)

"""
Creates a peer node in a member.

Required Parameters:
ClientRequestToken, NetworkId, MemberId, NodeConfiguration
"""
CreateNode(args) = managedblockchain("POST", "/networks/{networkId}/members/{memberId}/nodes", args)

"""
Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.

Required Parameters:
NetworkId, MemberId, NodeId
"""
DeleteNode(args) = managedblockchain("DELETE", "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", args)

"""
Returns detailed information about a proposal.

Required Parameters:
NetworkId, ProposalId
"""
GetProposal(args) = managedblockchain("GET", "/networks/{networkId}/proposals/{proposalId}", args)

"""
Returns information about the networks in which the current AWS account has members.
"""
ListNetworks() = managedblockchain("GET", "/networks")

"""
Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.

Required Parameters:
ClientRequestToken, NetworkId, MemberId, Actions
"""
CreateProposal(args) = managedblockchain("POST", "/networks/{networkId}/proposals", args)

"""
Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.

Required Parameters:
NetworkId, MemberId
"""
DeleteMember(args) = managedblockchain("DELETE", "/networks/{networkId}/members/{memberId}", args)

"""
Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.

Required Parameters:
NetworkId, ProposalId, VoterMemberId, Vote
"""
VoteOnProposal(args) = managedblockchain("POST", "/networks/{networkId}/proposals/{proposalId}/votes", args)
