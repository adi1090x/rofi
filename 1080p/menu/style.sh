#!/usr/bin/env bash

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# square     circle     rounded

style="square"

# uncomment these lines to enable random style
#styles=('square' 'circle' 'rounded')
#style="${styles[$(( $RANDOM % 3 ))]}"

# print style name
echo "$style"
