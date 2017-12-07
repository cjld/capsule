#!/bin/bash
set -x
killall sslocal
dir=$(dirname $0)
cd $dir
export PATH="/usr/local/bin:"$PATH
rm nohup.out
set -e

function connect {
    nohup sslocal -c $1 &>nohup.out &
}

function try_connect {
    ip=$(sed -n 's/"server":"\(.*\)",/\1/p' $1)
    ping=ping
    if echo $ip | grep :; then
        ping=ping6
    fi
    if $ping -c 1 -W 5 $ip; then
        echo "Using $1"
        connect $1
        exit
    fi
}

list="config_v6.json config_v4.json"

for config in $list; do
    try_connect $config
done

echo "both connect failed, using default"
connect ${list[1]}
