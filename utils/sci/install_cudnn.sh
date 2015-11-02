#!/bin/bash
cudnn_path="/home/randon/app/download/cudnn-6.5-linux-x64-v2.tgz"
cuda_path="/usr/local/cuda"
if [ ! -d $cuda_path ]; then
    echo "NO cuda installed."
    exit
fi

rm -r /tmp/cudnn
set -e

mkdir -p /tmp/cudnn
tar xvf $cudnn_path -C /tmp/cudnn
cudnn_dir=$(basename $cudnn_path)
dir="/tmp/cudnn/${cudnn_dir%.*}"

echo "Copy cudnn to cuda path"
sudo cp $dir/*.h $cuda_path/include/
sudo cp $dir/lib* $cuda_path/lib64
