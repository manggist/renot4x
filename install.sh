#!/bin/sh
pkg install libjansson termux-api vim git -y
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys
git clone https://github.com/manggist/renot4x.git
mv renot4x ccminer
cd ccminer
chmod +x ccminer start.sh
echo "termux-wake-lock/ncd ccminer/ && ./start.sh" >> ../usr/etc/bash.bashrc
