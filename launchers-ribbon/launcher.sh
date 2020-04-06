#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
# >> Styles Below Only Works With "rofi-git(AUR)", Current Version: 1.5.4-76-gca067234
# ribbon_top		ribbon_top_single		ribbon_top_round 		ribbon_top_single_round
# ribbon_left		ribbon_left_single		ribbon_left_round		ribbon_left_single_round
# ribbon_bottom 	ribbon_bottom_single	ribbon_bottom_round		ribbon_bottom_single_round
# ribbon_right		ribbon_right_round
# full_bottom		full_top				full_left				full_right

style="ribbon_bottom_round"

rofi -no-lazy-grab -show drun -theme launchers-ribbon/"$style".rasi
