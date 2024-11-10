#!/usr/bin/env bash

SOURCE_DIR=$1
DEFAULT_THEME=$2
MAX_THEME=$3
INPUT_THEME=$4

if [ -z "$INPUT_THEME" ]; then
    theme="$SOURCE_DIR/style-$DEFAULT_THEME.rasi"
elif [[ "$INPUT_THEME" == "-h" || "$INPUT_THEME" == "--help" ]]; then
    echo "Usage: $SOURCE_DIR [1..$MAX_THEME]"
    exit 1
elif [[ "$INPUT_THEME" -gt "$MAX_THEME" || "$INPUT_THEME" -lt 1 ]]; then
    echo "Invalid theme number! Theme must be between 1 and $MAX_THEME"
    exit 1
else
    theme="$SOURCE_DIR/style-$INPUT_THEME.rasi"
    if [ ! -f "$theme" ]; then
        echo "Theme not found at $theme"
        exit 1
    fi
fi

echo -n "$theme"
