include("../AWSCorePrototypeServices.jl")
using .Services: managedblockchain

"""
Returns detailed information about a network.
"""
GetNetwork(NetworkId) = managedblockchain("GET", "/networks/$networkId")
GetNetwork(NetworkId, args) = managedblockchain("GET", "/networks/$networkId", args)
GetNetwork(a...; b...) = GetNetwork(a..., b)

"""
Creates a new blockchain network using Amazon Managed Blockchain.
"""
CreateNetwork(ClientRequestToken, Name, Framework, FrameworkVersion, VotingPolicy, MemberConfiguration) = managedblockchain("POST", "/networks")
CreateNetwork(ClientRequestToken, Name, Framework, FrameworkVersion, VotingPolicy, MemberConfiguration, args) = managedblockchain("POST", "/networks", args)
CreateNetwork(a...; b...) = CreateNetwork(a..., b)

"""
Returns detailed information about a peer node.
"""
GetNode(NetworkId, MemberId, NodeId) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes/$nodeId")
GetNode(NetworkId, MemberId, NodeId, args) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes/$nodeId", args)
GetNode(a...; b...) = GetNode(a..., b)

"""
Returns a listing of proposals for the network.
"""
ListProposals(NetworkId) = managedblockchain("GET", "/networks/$networkId/proposals")
ListProposals(NetworkId, args) = managedblockchain("GET", "/networks/$networkId/proposals", args)
ListProposals(a...; b...) = ListProposals(a..., b)

"""
Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.
"""
RejectInvitation(InvitationId) = managedblockchain("DELETE", "/invitations/$invitationId")
RejectInvitation(InvitationId, args) = managedblockchain("DELETE", "/invitations/$invitationId", args)
RejectInvitation(a...; b...) = RejectInvitation(a..., b)

"""
Returns a listing of all invitations made on the specified network.
"""
ListInvitations() = managedblockchain("GET", "/invitations")
ListInvitations(, args) = managedblockchain("GET", "/invitations", args)
ListInvitations(a...; b...) = ListInvitations(a..., b)

"""
Returns information about the nodes within a network.
"""
ListNodes(NetworkId, MemberId) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes")
ListNodes(NetworkId, MemberId, args) = managedblockchain("GET", "/networks/$networkId/members/$memberId/nodes", args)
ListNodes(a...; b...) = ListNodes(a..., b)

"""
Returns detailed information about a member.
"""
GetMember(NetworkId, MemberId) = managedblockchain("GET", "/networks/$networkId/members/$memberId")
GetMember(NetworkId, MemberId, args) = managedblockchain("GET", "/networks/$networkId/members/$memberId", args)
GetMember(a...; b...) = GetMember(a..., b)

"""
Creates a member within a Managed Blockchain network.
"""
CreateMember(ClientRequestToken, InvitationId, NetworkId, MemberConfiguration) = managedblockchain("POST", "/networks/$networkId/members")
CreateMember(ClientRequestToken, InvitationId, NetworkId, MemberConfiguration, args) = managedblockchain("POST", "/networks/$networkId/members", args)
CreateMember(a...; b...) = CreateMember(a..., b)

"""
Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
"""
ListProposalVotes(NetworkId, ProposalId) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId/votes")
ListProposalVotes(NetworkId, ProposalId, args) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId/votes", args)
ListProposalVotes(a...; b...) = ListProposalVotes(a..., b)

"""
Returns a listing of the members in a network and properties of their configurations.
"""
ListMembers(NetworkId) = managedblockchain("GET", "/networks/$networkId/members")
ListMembers(NetworkId, args) = managedblockchain("GET", "/networks/$networkId/members", args)
ListMembers(a...; b...) = ListMembers(a..., b)

"""
Creates a peer node in a member.
"""
CreateNode(ClientRequestToken, NetworkId, MemberId, NodeConfiguration) = managedblockchain("POST", "/networks/$networkId/members/$memberId/nodes")
CreateNode(ClientRequestToken, NetworkId, MemberId, NodeConfiguration, args) = managedblockchain("POST", "/networks/$networkId/members/$memberId/nodes", args)
CreateNode(a...; b...) = CreateNode(a..., b)

"""
Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.
"""
DeleteNode(NetworkId, MemberId, NodeId) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId/nodes/$nodeId")
DeleteNode(NetworkId, MemberId, NodeId, args) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId/nodes/$nodeId", args)
DeleteNode(a...; b...) = DeleteNode(a..., b)

"""
Returns detailed information about a proposal.
"""
GetProposal(NetworkId, ProposalId) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId")
GetProposal(NetworkId, ProposalId, args) = managedblockchain("GET", "/networks/$networkId/proposals/$proposalId", args)
GetProposal(a...; b...) = GetProposal(a..., b)

"""
Returns information about the networks in which the current AWS account has members.
"""
ListNetworks() = managedblockchain("GET", "/networks")
ListNetworks(, args) = managedblockchain("GET", "/networks", args)
ListNetworks(a...; b...) = ListNetworks(a..., b)

"""
Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.
"""
CreateProposal(ClientRequestToken, NetworkId, MemberId, Actions) = managedblockchain("POST", "/networks/$networkId/proposals")
CreateProposal(ClientRequestToken, NetworkId, MemberId, Actions, args) = managedblockchain("POST", "/networks/$networkId/proposals", args)
CreateProposal(a...; b...) = CreateProposal(a..., b)

"""
Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.
"""
DeleteMember(NetworkId, MemberId) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId")
DeleteMember(NetworkId, MemberId, args) = managedblockchain("DELETE", "/networks/$networkId/members/$memberId", args)
DeleteMember(a...; b...) = DeleteMember(a..., b)

"""
Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.
"""
VoteOnProposal(NetworkId, ProposalId, VoterMemberId, Vote) = managedblockchain("POST", "/networks/$networkId/proposals/$proposalId/votes")
VoteOnProposal(NetworkId, ProposalId, VoterMemberId, Vote, args) = managedblockchain("POST", "/networks/$networkId/proposals/$proposalId/votes", args)
VoteOnProposal(a...; b...) = VoteOnProposal(a..., b)
