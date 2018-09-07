#!/bin/bash


PWD=$(pwd)
RELEASE=$PWD/release

rm -rf release
mkdir release

cd ./release/
cmake ../libwebcam-0.2.5/

make -j2
sudo make install
