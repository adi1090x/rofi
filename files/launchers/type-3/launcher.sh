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
SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
theme=$($SCRIPT_DIR/../../shared/theme.sh "$SCRIPT_DIR" '10' '10' "$INPUT_THEME")

if [ $? -ne 0 ]; then
    echo $theme
    exit 1
fi



## Run
rofi \
    -show drun \
    -theme $theme
