#!/bin/bash

wget -c https://studygolang.com/dl/golang/go1.4.src.tar.gz

wget -c https://studygolang.com/dl/golang/go1.10.3.src.tar.gz

mkdir ~/src
tar -zxvf go1.4.src.tar.gz -C ~/src/
mv ~/src/go ~/src/go1.4
cd ~/src/go1.4/src/
env CGO_ENABLED=0 ./make.bash

sed -i '$i export GOROOT_BOOTSTRAP=~/src/go1.4' ~/.bashrc

cd -
tar -zxvf go1.10.3.src.tar.gz -C ~/src/
mv ~/src/go ~/src/go1.10
cd ~/src/go1.10/src/
./make.bash 

mkdir ~/workspace
sed -i '$ export GOROOT=~/src/go1.10 \nexport GOPATH=~/workspace \nexport PATH=$PATH:$GOROOT/bin' ~/.bashrc


