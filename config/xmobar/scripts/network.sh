#!/bin/bash

wifistatus="$(cat /sys/class/net/w*/operstate)"
ethstatus="$(cat /sys/class/net/enp7s0/operstate)"
if [ $wifistatus = "up" ]; then
    essid="$(nmcli c | sed -n '2{p;q}' | awk '{print $1}')"
    quality="$(cat /proc/net/wireless |  sed -n '3{p;q}' | awk '{printf "%.0f\n",$3}')"
    icon="<fn=1></fn>"
elif [ $ethstatus = "up" ]; then
    essid="$(nmcli c | sed -n '2{p;q}' | awk '{print $5}')"
    quality=""
    icon="<fn=1></fn>"
elif [ -d /sys/class/net/enp0s* ]; then
    essid="$(nmcli c | sed -n '2{p;q}' | awk '{print $5}')"
    quality=""
    icon="<fn=1></fn>"
else
    essid="Disconnected"
    quality=""
    icon="<fn=1></fn>"
fi
printf "%s %s %s" "$icon" "$essid" "$quality"

