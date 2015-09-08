# sshfs hang
sshfs -o reconnect
<http://unix.stackexchange.com/questions/14143/what-is-a-better-way-to-deal-with-server-disconnects-of-sshfs-mounts>
# "device or resource busy".
lsof and umount
# ssh key not work
openwrt not using openssh-server
# linux ephemeral port
linux will close the ephemeral port for a while, kernel com opt 
`net.ipv4.tcp_tw_reuse` can manipulate it.
`netstat -an` can check out the waiting port
vi /etc/sysctl.conf
```
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 1
```
/sbin/sysctl -p
# tmux
tmux need to kill all session to reload config
# autojump in centos
autojump need install zsh extension
# ssh centos key not work
set ~/.ssh/authorized_keys to 600
# windows flashing
ccsm -> workarouds -> force full screen redraw
# log in loop
 solved by reinstall nvidia driver

# no icon
reset dconf, rm ~/.config/dconf/user

# lightdm auto loggin
/etc/lightdm/lightdm.conf  
comment autologin-user

# unable to correct problems 
sudo apt-get dist-upgrade
