#!/bin/sh
bri="$(xbacklight -get)"
icon="<fn=1></fn>"
printf "%s %.0f" "$icon" "$(xbacklight -get)"
