#!/bin/sh

#
# Set the default policy
#
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

#
# Set the default policy for the NAT table
#
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
iptables -t nat -P OUTPUT ACCEPT

#
# Delete all rules
#
iptables -F
iptables -t nat -F

#
# Delete all chains
#

iptables -X
iptables -t nat -X

# End message
echo " [End of flush]" 
