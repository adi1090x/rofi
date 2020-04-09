#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
# >> Styles Below Only Works With "rofi-git(AUR)", Current Version: 1.5.4-76-gca067234
# slate     slate_full     slate_full_big

style="slate_full"

rofi -no-lazy-grab -show drun -theme launchers-slate/"$style".rasi
