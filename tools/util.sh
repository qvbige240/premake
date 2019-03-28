#!/bin/bash
# qing.zou


function assert_null()
{
    if [ ! -n "$1" ] ;then
        echo "NULL"
	exit -1
    fi 
}

function string_upper()
{
    assert_null $1
    str_upper=$(echo $1 | tr '[a-z]' '[A-Z]')
    echo ${str_upper}
}

function string_lower()
{
    assert_null $1
    str_lower=$(echo $1 | tr '[A-Z]' '[a-z]')
    echo ${str_lower}
}

function folder_clean()
{
    assert_null $1
    if [ -d "$1" ]; then
        rm -R $1
    fi
    mkdir -p $1
}

