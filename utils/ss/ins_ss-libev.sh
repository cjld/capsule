wget -O- http://shadowsocks.org/debian/1D27208A.gpg | sudo apt-key add -
echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get install shadowsocks-libev
