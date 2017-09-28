#!/bin/bash
# qing.zou	

# x86
export INSTALL_PATH="${DIR_PREMAKE}/${PLATFORM}/install"
export FINAL_PATH=$INSTALL_PATH

# build environment
if false;then
export INSTALLDIR=/opt/timesys/toolchains/i686-linux
export PATH=$INSTALLDIR/bin:$PATH
export TARGETMACH=i686-linux
export BUILDMACH=i686-pc-linux-gnu
export CROSS=i686-linux
export CC=${CROSS}-gcc
export LD=${CROSS}-ld
export AS=${CROSS}-as
export CXX=${CROSS}-g++
else
export CC=gcc
export CXX=g++
fi

GBASE_INCLUDE="/usr/include"
GBASE_LIB="/usr/lib"
GOLBAL_CFLAGS="-I${GBASE_INCLUDE} -I${FINAL_PATH}/include"
GOLBAL_CPPFLAGS="-I${GBASE_INCLUDE} -I${FINAL_PATH}/include"
GOLBAL_LDFLAGS="-L${GBASE_LIB} -L${FINAL_PATH}/lib"

