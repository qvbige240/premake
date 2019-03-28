#!/bin/bash
# qing.zou

export PLATFORM=
DIR_PREMAKE=

function premake_dir_set()
{
    if [ ! -d ${dir_premake} ]; then
        echo "Error: ${dir_premake} nos exist"; exit -1
    fi
    echo "premake directory: ${dir_premake}"
    DIR_PREMAKE=${dir_premake}
}

function environment_init()
{
    if [ -d $1 ]; then
        local afiles=`ls $1/env*.sh`
        for f in ${afiles[@]}; do
            . ${f}
        done
    fi
}

function import_func()
{
    if [ -d $1 ]; then
        for file in `ls $1/*.sh`; do
            . ${file}
            echo ${file}
        done
    fi
}

function platform_init()
{
    if [ ! -n $1 ]; then
        usage_exit
    fi

    cd ${DIR_PREMAKE}

    import_func tools
    
    PLATFORM=$(string_lower $1)
    echo "platform: ${PLATFORM}"

    environment_init ${PLATFORM}

    cd -

}

