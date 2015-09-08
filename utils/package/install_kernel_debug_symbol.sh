if ! dpkg -l linux-source; then
    codename=$(lsb_release -c | awk  '{print $2}')
    sudo tee /etc/apt/sources.list.d/ddebs.list << EOF
deb http://ddebs.ubuntu.com/ ${codename}      main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${codename}-security main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${codename}-updates  main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${codename}-proposed main restricted universe multiverse
EOF
    
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ECDCAD72428D7C01
    sudo apt-get update
    sudo apt-get install linux-image-$(uname -r)-dbgsym
    
    sudo apt-get install linux-source
fi


set -e
if [ -d /usr/src/linux-source ]; then
    rm -rf /usr/src/linux-source
fi
sudo mkdir /usr/src/linux-source
src_arch=$(find /usr/src -type f -name 'linux-source-*')
sudo tar xvf $src_arch -C /usr/src/linux-source

