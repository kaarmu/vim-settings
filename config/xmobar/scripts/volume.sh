#! /bin/sh

vol="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
mute="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)\].*/\1/')"
if [ $mute = off ]; then
    printf "<fn=1>ﱝ</fn>  M"
else
    printf "<fn=1></fn>  %s"  "$vol"
fi
