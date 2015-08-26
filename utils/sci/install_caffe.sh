#!/bin/bash

set -e
if ! pkg-config opencv; then
    echo "NO opencv installed."
    exit
fi

# snappy is a library for fast compress/decompress
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

if [ ! -d /opt/caffe ]; then
    git clone https://github.com/BVLC/caffe.git /opt/caffe
fi

cd /opt/caffe

if [ ! -f Makefile.config ]; then
    cp Makefile.config.example Makefile.config 
fi

make clean

cd python
for req in $(cat requirements.txt); do sudo pip install $req; done

cd -

make all pycaffe test -j4

make runtest
