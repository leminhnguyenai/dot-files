#!/bin/bash

CURRENT_WIFI="$(ipconfig getsummary en0)"
SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID : .*" | sed 's/^SSID : //' | tail -n 1)"

if [ $SSID = "" ]; then
    ICON="󰖪"
    COLOR=0x70ffffff
else
    ICON=""
    COLOR=0xffffffff
fi

render_bar_item() {
    sketchybar --set $NAME                  \
                     icon=$ICON             \
                     icon.color=$COLOR      
}

update() {
    render_bar_item
}

update
