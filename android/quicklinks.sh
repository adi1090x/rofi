#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme android/six.rasi"

# Links
google=""
facebook=""
twitter=""
github=""
mail=""
youtube=""

# Variable passed to rofi
options="$google\n$facebook\n$twitter\n$github\n$mail\n$youtube"

chosen="$(echo -e "$options" | $rofi_command -p "Open In  :  Firefox" -dmenu -selected-row 0)"
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
    $mail)
        firefox --new-tab https://www.gmail.com
        ;;
    $youtube)
        firefox --new-tab https://www.youtube.com
        ;;
esac

