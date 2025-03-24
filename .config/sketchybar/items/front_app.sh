#!/bin/bash

sketchybar --add item front_app_icon left                              \
           --set front_app_icon script="$PLUGIN_DIR/front_app_icon.sh" \
           --subscribe front_app_icon front_app_switched

sketchybar --add item front_app left                                          \
           --set front_app icon.drawing=off script="$PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched

sketchybar --add bracket front_app_group front_app front_app_icon         \
           --set         front_app_group background.color=$GROUP_BG_COLOR \
                                         background.corner_radius=4       \
                                         background.height=25             \
                                         background.border_width=1        \
                                         background.border_color=$GROUP_BORDER_COLOR
