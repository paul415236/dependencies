#!/bin/bash

PWD=$(pwd)
RELEASE=$PWD/release

cd ./v4l-utils-1.12.2/

./configure --prefix=${RELEASE} --enable-static --disable-shared 
make clean
make -j2
sudo make install
