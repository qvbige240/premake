#!/bin/bash
# qing.zou	

# nt966x
export INSTALL_PATH="${DIR_PREMAKE}/${PLATFORM}/install"
export FINAL_PATH=$INSTALL_PATH

# build environment
export INSTALLDIR=/opt/mipsel-24kec-linux-uclibc/usr
#export PATH=$INSTALLDIR/bin:$PATH
export PATH=$PATH:$INSTALLDIR/bin
export TARGETMACH=mipsel-24kec-linux-uclibc
export BUILDMACH=i686-pc-linux-gnu
#export BUILDMACH=x86_64-unknown-linux-gnu
export CROSS=mipsel-24kec-linux-uclibc-
export CC=${CROSS}gcc
export LD=${CROSS}ld
export AS=${CROSS}as
export CXX=${CROSS}g++

export GBASE_INCLUDE="/opt/mipsel-24kec-linux-uclibc/usr/mipsel-24kec-linux-uclibc/sysroot/usr/include"
export GBASE_LIB="/opt/mipsel-24kec-linux-uclibc/usr/mipsel-24kec-linux-uclibc/sysroot/lib"
export GOLBAL_CFLAGS="-I${GBASE_INCLUDE} -I${FINAL_PATH}/include"
export GOLBAL_CPPFLAGS="-I${GBASE_INCLUDE} -I${FINAL_PATH}/include"
export GOLBAL_LDFLAGS="-L${GBASE_LIB} -L${FINAL_PATH}/lib"

