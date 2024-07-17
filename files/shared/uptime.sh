#!/usr/bin/env bash

uptime_seconds=$(awk '{print $1}' /proc/uptime)
echo -n $(awk -v UP="$uptime_seconds" '
BEGIN {
    days = int(UP / 86400);
    hours = int((UP % 86400) / 3600);
    minutes = int((UP % 3600) / 60);
    seconds = int(UP % 60);
    if (days > 0) {
        if (days == 1) {
            printf "1 day, %d hours, %d minutes\n", hours, minutes;
        } else {
            printf "%d days, %d hours, %d minutes\n", days, hours, minutes;
        }
    } else if (hours > 0) {
        printf "%d hours, %d minutes\n", hours, minutes;
    } else {
        printf "%d minutes\n", minutes;
    }
}')
