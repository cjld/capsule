# optimize
/proc/sys/vm/swappiness
numa for numa access

# stat
vmstat
dstat
iostat      from sysstat package

# system
/etc/sysctl.conf
sysctl -p
dmesg -wH           show kernel log in real time

# GUI
dconf dump to see setting
xdg-open        open file with type

# tool
tar -zcvf aaa.tgz dirname
htop   press Ht      t for tree view, H show threads
ps -eLf         ps show threads
strings         find string in binary
mkfifo          make a pipe
tail -n 3 -f mylog      get last 3 lines in file mylog and keep tracking the output
curl -L for relocation -v for verbose -O for save with url's base name
less -s turn off line wrap
grep -A 3 -B 2
grep -nr        show grep line number
grep -o for only match -h for hide filename
*apropos*       search man
*whatis*        one line summary
*tree --du -L 2*
*iotop*
*file*          check file type
*sed -i*        sed the file
*sed 's///p'*   sed print match
*man -k*        search whole man pages
tar cvzf MyImages-14-09-12.tar.gz /home/MyImages  create tgz file
tar -xvf public_html-14-09-12.tar -C /home/public_html/videos/  tar extract file

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
xinput test-xi2 --root : dump xinput event
<http://unix.stackexchange.com/questions/146287/monitoring-events-keyboard-mouse-in-x>

# boot
kernel param : verbose debug  single(for single mode)
fsck for check linux file system

# network
dig -x      for reverse DNS +trace for trace DNS
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

<http://www.cyberciti.biz/hardware/collecting-ubuntu-linux-system-information/>
