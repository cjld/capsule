sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
# be careful about the python version
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

sudo chmod 777 /opt
git clone https://github.com/opencv/opencv.git /opt/opencv
git clone https://github.com/opencv/opencv_contrib.git /opt/opencv_contrib

set -e
cd /opt/opencv
if [ -d ./release ]; then
    echo -n "Build dir exsit, remove it?(y/n)"
    read is_rm
    if [ $is_rm = "y" ]; then rm -rf ./release; fi
fi

mkdir -p release
cd release
# disable opencv gpu
NO_GPU_FLAGS="WITH_OPENCL=OFF -D WITH_CUDA=OFF -D BUILD_opencv_gpu=OFF -D BUILD_opencv_gpuarithm=OFF -D BUILD_opencv_gpubgsegm=OFF -D BUILD_opencv_gpucodec=OFF -D BUILD_opencv_gpufeatures2d=OFF -D BUILD_opencv_gpufilters=OFF -D BUILD_opencv_gpuimgproc=OFF -D BUILD_opencv_gpulegacy=OFF -D BUILD_opencv_gpuoptflow=OFF -D BUILD_opencv_gpustereo=OFF -D BUILD_opencv_gpuwarping=OFF -DWITH_IPP=OFF"
cmake $NO_GPU_FLAGS -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -DOPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib ..

make
sudo make install
