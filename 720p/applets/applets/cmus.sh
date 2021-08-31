#!/usr/bin/env bash

style="$($HOME/.config/rofi/applets/applets/style.sh)"

dir="$HOME/.config/rofi/applets/applets/configs/$style"
rofi_command="rofi -theme $dir/mpd.rasi"

# Gets the current status of mpd (for us to parse it later on)
status="$(cmus-remote -C status)"
# Defines the Play / Pause option content
if [[ $status == *"[playing]"* ]]; then
    play_pause=""
else
    play_pause=""
fi
active=""
urgent=""

# Display if repeat mode is on / off
tog_repeat=""
if [[ $status == *"repeat true"* ]]; then
     active="-a 4"
elif [[ $status == *"repeat false"* ]]; then
     urgent="-u 4"
else
    tog_repeat=" Parsing error"
fi

# Display if random mode is on / off
tog_random=""
if [[ $status == *"shuffle true"* ]]; then
    [ -n "$active" ] && active+=",5" || active="-a 5"
elif [[ $status == *"shuffle false"* ]]; then
    [ -n "$urgent" ] && urgent+=",5" || urgent="-u 5"
else
    tog_random=" Parsing error"
fi
stop=""
next=""
previous=""

# Variable passed to rofi
options="$previous\n$play_pause\n$stop\n$next\n$tog_repeat\n$tog_random"

# Get the current playing song
song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))
# If mpd isn't running it will return an empty string, we don't want to display that
if [[ -z "$current" ]]; then
    current="-"
fi

# Spawn the mpd menu with the "Play / Pause" entry selected by default
chosen="$(echo -e "$options" | $rofi_command -p "  $song" -dmenu $active $urgent -selected-row 1)"
case $chosen in
    $previous)
        cmus-remote --prev && notify-send -u low -t 1800 " $song"
        ;;
    $play_pause)
        cmus-remote --pause && notify-send -u low -t 1800 " $song"
        ;;
    $stop)
        cmus-remote --stop
        ;;
    $next)
        cmus-remote --next && notify-send -u low -t 1800 " $song"
        ;;
    $tog_repeat)
        cmus-remote --repeat
        ;;
    $tog_random)
        cmus-remote --shuffle
        ;;
esac
