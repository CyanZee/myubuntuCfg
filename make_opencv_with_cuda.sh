#!/bin/bash

wget https://github.com/opencv/opencv/archive/3.4.2.tar.gz

tar -xvf 3.4.4.tar.gz
cd opencv-3.4.2
mkdir release

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=OFF -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=OFF -D WITH_QT=ON -D WITH_OPENGL=ON -D ENABLE_FAST_MATH=1 -D CUDA_FAST_MATH=1 -D WITH_CUDA=1 -D WITH_CUBLAS=ON -D BUILD_TIFF=ON ..

sudo make -j6
sudo make install


