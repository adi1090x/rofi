#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# column_circle     column_square     column_rounded     column_alt
# card_circle     card_square     card_rounded     card_alt
# dock_circle     dock_square     dock_rounded     dock_alt
# drop_circle     drop_square     drop_rounded     drop_alt
# full_circle     full_square     full_rounded     full_alt
# row_circle      row_square      row_rounded      row_alt

theme="full_circle"
dir="$HOME/.config/rofi/powermenu"

# random colors
styles=($(ls -p --hide="colors.rasi" $dir/styles))
color="${styles[$(( $RANDOM % 8 ))]}"

# comment this line to disable random colors
sed -i -e "s/@import .*/@import \"$color\"/g" $dir/styles/colors.rasi

# comment these lines to disable random style
themes=($(ls -p --hide="powermenu.sh" --hide="styles" --hide="confirm.rasi" --hide="message.rasi" $dir))
theme="${themes[$(( $RANDOM % 24 ))]}"

uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -theme $dir/$theme"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Confirmation
confirm_exit() {
	rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Are You Sure? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -theme "$dir/message.rasi" -e "Available Options  -  yes / y / no / n"
}

run_response() {
    local response="$1"
    local run="$2"

    case "$response" in 
        YES|yes|[yY]) 
            if [[ "$run" == "systemctl suspend" ]]; then
                mpc -q pause
                amixer set Master mute
                $run
            else
                $run
            fi
            ;;

        NO|no|[Nn]) exit 0; ;;
        *) msg ; ;;
    esac
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        run_response "$(confirm_exit &)" "systemctl poweroff"
        ;;
    $reboot)
        run_response "$(confirm_exit &)" "systemctl reboot"
        ;;
    $lock)
        if [[ -f /usr/bin/i3lock ]]; then
        	i3lock
        elif [[ -f /usr/bin/betterlockscreen ]]; then
        	betterlockscreen -l
        fi
        ;;
    $suspend)
        run_response "$(confirm_exit &)" "systemctl suspend"
        ;;
    $logout)
        run_response "$(confirm_exit &)" "loginctl terminate-user $USER"
        ;;
esac
