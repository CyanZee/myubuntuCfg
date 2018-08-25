#!/bin/bash 

#
#before execute this script, install boost
#

apt-get install -y xmlto doxygen
apt-get install -y openssl libssl-dev

git clone https://github.com/alanxz/rabbitmq-c

pushd rabbitmq-c

mkdir build
cd build
cmake ../
cmake --build .
make
sudo make install

popd

git clone https://github.com/alanxz/SimpleAmqpClient

cd SimpleAmqpClient
mkdir simpleamqpclient-build
cd simpleamqpclient-build
cmake ../
make
sudo make install

