cd "$(dirname "$0")"
./install_vundle.sh
./install_ohmyzsh.sh
cat ./packages.md | xargs -n 1 sudo apt-get install 
