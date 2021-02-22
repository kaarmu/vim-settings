#!/bin/sh
mem=$(free -m | sed -n '2{p;q}' | awk '{print $3}')
icon="<fn=1></fn>"
printf "%s %s MB" "$icon" "$mem"
