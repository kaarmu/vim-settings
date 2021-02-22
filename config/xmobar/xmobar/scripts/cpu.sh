#!/bin/sh
clock="$(cat /proc/cpuinfo | awk '/MHz/ {print $4;exit;}')"
temp="$(sensors | awk '/Core 0/ {print substr($3,2)}')"
load="$(uptime | awk -F'[a-z]:' '{ print $2}' | cut -d' ' -f 2 | cut -d',' -f 1)"
icon="<fn=1></fn>"
printf "%s  %s %.0f MHz %s" "$icon" "$load" "$clock" "$temp"
