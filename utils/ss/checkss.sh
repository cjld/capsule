cd ~/utils/ss/

if ! lsof -csslocal &>/dev/null; then ./runss.sh; fi

port=$(cat config.json | sed -n 's/.*"local_port":\(.*\),/\1/p')
export ALL_PROXY=socks5h://127.0.0.1:$port
echo "Using proxy $ALL_PROXY"
