sudo iptables -t nat -F OUTPUT
sudo iptables -t mangle -F OUTPUT
sudo iptables -t nat -A OUTPUT -d 104.236.186.21 -j ACCEPT
sudo iptables -t mangle -A OUTPUT -d 104.236.186.21 -j ACCEPT
# sudo iptables -t nat -A OUTPUT -p udp -j LOG
# sudo iptables -t nat -A OUTPUT -p udp -j REDIRECT --to-port 8123
sudo iptables -t mangle -A PREROUTING -p udp -j LOG
sudo iptables -t mangle -A PREROUTING -p udp -j TPROXY --on-port 8123
