#!/bin/bash

PWD=$(pwd)
RELEASE=$PWD/release

FFMPEG=$PWD/ffmpeg-3.2.4
X264=$PWD/x264
NASM=$PWD/nasm-2.13.01


LDFLAGS="-L$PWD/lib"
CFLAGS="-I$PWD/include"

##########
#  NASM  #
##########
cd $NASM
./configure --prefix=${RELEASE} --enable-static --disable-shared
make -j2
sudo make install

##########
#  X264  #
##########
cd $X264
./configure --prefix=${RELEASE} --enable-static --disable-shared
make -j2
sudo make install

############
#  FFMPEG  #
############
cd $FFMPEG
./configure --prefix=${RELEASE} --enable-static --disable-shared --enable-pic --enable-libx264 --enable-gpl --disable-yasm
make clean
make -j2
sudo make install
