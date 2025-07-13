#!/bin/sh
pkg install -y libjansson
pkg install -y build-essential
pkg install -y clang
pkg install -y binutils
pkg install -y termux-api
pkg install -y vim
git clone https://github.com/Darktron/ccminer.git
cd ccminer
rm -f configure.sh
rm -f config.json
cp ~/renot4x/config.json config.json
cp ~/renot4x/configure.sh configure.sh
chmod +x build.sh configure.sh autogen.sh start.sh
CXX=clang++ CC=clang ./build.sh
echo "termux-wake-lock/ncd ccminer/ && ./start.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc
