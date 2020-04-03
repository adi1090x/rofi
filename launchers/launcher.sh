#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
#
# >> Edit these files and uncomment the desired colors/style.
#
# style_icons_blur    style_icons_full    style_icons_rainbow    style_icons_rainbow_sidebar
# style_icons_popup    style_normal    style_normal_grid    style_normal_grid_full    style_normal_grid_full_round
# style_normal_grid_round    style_normal_purple    style_normal_purple_alt    style_normal_rainbow
# style_normal_rainbow_sidebar

style="style_icons_full"

rofi -no-lazy-grab -show drun -theme launchers/"$style".rasi
