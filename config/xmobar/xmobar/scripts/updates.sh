#!/bin/sh
UPDATES="$(paru -Qu | grep -Fcv '[ignored]')"
icon="<fn=1></fn>"
printf "%s %s" $icon $UPDATES
