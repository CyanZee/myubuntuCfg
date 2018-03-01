#!/bin/bash

sudo apt-get install gccgo-5

cd ~/
#export http_proxy=192.168.152.1:42581
#export https_proxy=192.168.152.1:42581
#export sock5_proxy=192.168.152.1:42581
rm -rf go go1.4

wget -c https://storage.googleapis.com/golang/go1.4-bootstrap-20161024.tar.gz
tar -zxf go1.4-bootstrap-20161024.tar.gz
mv go go1.4
cd ~/go1.4/src
sudo update-alternatives --set go /usr/bin/go-5
GOROOT_BOOTSTRAP=/usr ./make.bash
cd ~
#git clone https://github.com/golang/go.git
#wget https://storage.googleapis.com/golang/go1.8.src.tar.gz
#wget -c -O go1.9.4.src.tar.gz https://codeload.github.com/golang/go/tar.gz/go1.9.4
wget -c https://storage.googleapis.com/golang/go1.9.4.src.tar.gz

tar -zxf go1.9.4.src.tar.gz
cd go/src
./all.bash
