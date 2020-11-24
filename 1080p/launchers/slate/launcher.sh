#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# slate_full     slate_center     slate_left
# slate_right    slate_top        slate_bottom

theme="slate_full"

dir="$HOME/.config/rofi/launchers/slate"
styles=($(ls -p --hide="colors.rasi" $dir/styles))
color="${styles[$(( $RANDOM % 20 ))]}"

# comment this line to disable random colors
sed -i -e "s/@import .*/@import \"$color\"/g" $dir/styles/colors.rasi

# comment these lines to disable random style
themes=($(ls -p --hide="launcher.sh" --hide="styles" $dir))
theme="${themes[$(( $RANDOM % 6 ))]}"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
