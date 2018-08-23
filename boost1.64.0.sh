#!/bin/bash

sudo apt-get install python-dev

sudo apt-get install -y build-essential

wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.tar.gz

tar -zxvf boost_1_64_0.tar.gz

cd boost_1_64_0

./bootstrap.sh --with-libraries=all --with-toolset=gcc

./b2 toolset=gcc

./b2 install --prefix=/usr

sudo ldconfig
