#!/bin/sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

sketchybar --set "$NAME" label="$(date '+%H:%M')" \
                         icon.drawing=off \
                         label.padding_left=6 \
                         label.padding_right=6 \

