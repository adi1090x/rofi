#!/usr/bin/env bash

uptime_seconds=$(cat /proc/uptime | sed 's/^\([0-9]\+\)\..*/\1/')

# Format the uptime
days=$(( uptime_seconds / 86400 ))
hours=$(( (uptime_seconds % 86400) / 3600 ))
minutes=$(( (uptime_seconds % 3600) / 60 ))

# Helper function for pluralization
pluralize() {
  local value=$1
  local singular=$2
  local plural=$3
  if [ "$value" -eq 1 ]; then
    echo "$value $singular"
  else
    echo "$value $plural"
  fi
}

# Construct the uptime string
if [ "$days" -gt 0 ]; then
  uptime="$(pluralize $days day days), $(pluralize $hours hour hours), $(pluralize $minutes minute minutes)"
elif [ "$hours" -gt 0 ]; then
  uptime="$(pluralize $hours hour hours), $(pluralize $minutes minute minutes)"
else
  uptime="$(pluralize $minutes minute minutes)"
fi

echo "$uptime"

