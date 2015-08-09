# tool
less -s turn off line wrap
grep -A 3 -B 2
grep -nr        show grep line number
*apropos*       search man
*whatis*        one line summary
*tree --du -L 2*
*iotop*
*file*          check file type
*sed -i*        sed the file
*man -k*        search whole man pages

# mantain
baobab          for disk usage anali

# hardware
*blkid* get block info
*lsblk* get all block
	`lsblk -f`

# x server
xgamma
xrandr `xrandr --output LVDS-0 --brightness 1`
xbacklight

# boot
kernel param : verbose debug
fsck for check linux file system

# network
post-up, pre-down in `/etc/network/interfaces`
ethtool check eth status
raw_socket, bindtodevice
traceroute
dig
nslookup
tcpdump
    tcpdump -D list interface 
    tcpdump -i eth0
    tcpdump -v -XX dump the packet
    tcpdump -n display ip
    tcpdump -n dst host 192.168.1.1
    tcpdump -n dst net 192.168.1.0/24
        port $x and portrange $l-$r
    tcpdump icmp or arp
ip neigh : get NDP 
dropwatch

# sudo
pam
