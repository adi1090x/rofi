#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/menu/style.sh)"

dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $dir/time.rasi"

## Get time and date
TIME="$(date +"%I:%M %p")"
DN=$(date +"%A")
MN=$(date +"%B")
DAY="$(date +"%d")"
MONTH="$(date +"%m")"
YEAR="$(date +"%Y")"

options="$DAY\n$MONTH\n$YEAR"

## Main
chosen="$(echo -e "$options" | $rofi_command -p "   at $TIME on $DN in $MN" -dmenu -selected-row 1)"
