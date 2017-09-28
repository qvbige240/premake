#!/bin/bash
# qing.zou

BUILD_PATH=

function build_path()
{
    local build_dir=$1/build_${PLATFORM}
    echo ${build_dir}
}

function premake_make()
{
    BUILD_PATH=$(build_path $1)
    echo "BUILD_PATH: ${BUILD_PATH}"

    local build_clean=true
    if [ -n $3 ]; then
        build_clean=$3
    fi
    if ${build_clean}; then
        #make clean
        folder_clean ${BUILD_PATH}
    elif [ ! -d ${BUILD_PATH} ]; then
        echo "build path not exist and create"
        mkdir -p ${BUILD_PATH}
    fi

    if [ -f $1/make_config.sh ]; then
        $1/make_config.sh
    fi
}
