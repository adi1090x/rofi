#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/menu/quicklinks.rasi"

# Links
google=""
facebook=""
twitter=""
github=""
reddit=""
youtube=""

# Variable passed to rofi
options="$google\n$facebook\n$twitter\n$github\n$reddit\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In : Firefox" -dmenu -selected-row 0)"
case $chosen in
    $google)
        firefox --new-tab https://www.google.com
        ;;
    $facebook)
        firefox --new-tab https://www.facebook.com
        ;;
    $twitter)
        firefox --new-tab https://www.twitter.com
        ;;
    $github)
        firefox --new-tab https://www.github.com
        ;;
    $reddit)
        firefox --new-tab https://www.reddit.com
        ;;
    $youtube)
        firefox --new-tab https://www.youtube.com
        ;;
esac

