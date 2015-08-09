sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

sudo chmod 777 /opt
git clone https://github.com/Itseez/opencv.git /opt/opencv

set -e
cd /opt/opencv
if [ -d ./release ]; then
    echo -n "Build dir exsit, remove it?(y/n)"
    read is_rm
    if [ $is_rm == "y" ]; then rm -rf ./release; fi
fi

mkdir -p release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..

make -j4
sudo make install
