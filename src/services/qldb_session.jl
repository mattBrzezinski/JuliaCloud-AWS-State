include("../AWSCorePrototypeServices.jl")
using .Services: qldb_session

"""
Sends a command to an Amazon QLDB ledger.
"""
SendCommand() = qldb_session("SendCommand")
