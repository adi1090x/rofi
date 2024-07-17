#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10
INPUT_THEME=$1  
dir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
if [ -z $INPUT_THEME ]; then
    theme='style-1'
elif [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "Usage: $0 [style-1..10]"
    exit 0
else
    theme=$INPUT_THEME 
    if [ ! -d ${dir}/$theme.rasi ]; then
        echo "Theme not found!"
        exit 1
    fi
fi


## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
