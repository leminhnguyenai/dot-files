#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting
sketchybar --set front_app_icon icon.font="JetBrainsMono Nerd Font Mono:Medium:20.0"

if [ "$SENDER" = "front_app_switched" ]; then
    if [ "$INFO" = "Ghostty" ] || [ "$INFO" = "Terminal" ] || [ "$INFO" == "Kitty" ]; then
        sketchybar --set "$NAME" icon="" label.drawing=off
    elif [ "$INFO" = "Arc" ]; then
        sketchybar --set "$NAME" icon="" label.drawing=off
    elif [ "$INFO" = "Safari" ]; then
        sketchybar --set "$NAME" icon="" label.drawing=off
    elif [ "$INFO" = "Google Chrome" ] || [ "$INFO" = "Chromium" ] || [ "$INFO" = "Thorium" ]; then
        sketchybar --set "$NAME" icon="" label.drawing=off
    elif [ "$INFO" = "Finder" ]; then
        sketchybar --set "$NAME" icon="󰀶" label.drawing=off
    fi
fi
