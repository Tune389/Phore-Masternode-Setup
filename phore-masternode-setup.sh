#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install -y pkg-config
apt-get install -y build-essential autoconf automake libtool libboost-all-dev libgmp-dev libssl-dev libcurl4-openssl-dev git 
apt-get install -y software-properties-common
add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install -y libdb4.8-dev libdb4.8++-dev libevent-dev
cd
sudo git clone https://github.com/phoreproject/Phore.git 
cd Phore
chmod +x share/genbuild.sh 
chmod +x autogen.sh 
chmod 755 src/leveldb/build_detect_platform
./autogen.sh 
./configure
make
make install
cd ~/Phore/src
phored -daemon
