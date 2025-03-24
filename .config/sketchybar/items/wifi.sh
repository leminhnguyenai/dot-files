#!/bin/bash

sketchybar --add item wifi right                                           \
           --set wifi script="$PLUGIN_DIR/wifi.sh"                         \
                      icon.font="JetBrainsMono Nerd Font Mono:Medium:20.0" \
                      label.drawing=off                                    \
                      background.drawing=off                               \
           --subscribe wifi wifi_change


