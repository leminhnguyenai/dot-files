#!/bin/bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME label.color=0xffffffff label.font="JetBrainsMono Nerd Font Mono:Bold:14.0"
else
    sketchybar --set $NAME label.color=0x70ffffff label.font="JetBrainsMono Nerd Font Mono:Medium:13.0"
fi
