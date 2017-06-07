# iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X

# comment this if you want to access the gateway
#iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD DROP

iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT

# allow connections from lan
iptables -A INPUT -i $IFACE_LAN -j ACCEPT
# allow lan-to-anywhere forward
iptables -A FORWARD -i $IFACE_LAN -j ACCEPT

iptables -t nat -A POSTROUTING -o $IFACE_WAN -j MASQUERADE
