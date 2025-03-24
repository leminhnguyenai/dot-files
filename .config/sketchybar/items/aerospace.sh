#!/bin/bash

sketchybar --add event aerospace_workspace_change

add_workspace_display () {
    sketchybar --add item space.$2 left                          \
               --subscribe space.$2 aerospace_workspace_change   \
               --set space.$2                                    \
               label=$1                                          \
               icon.drawing=off                                  \
               click_script="aerospace workspace $2"             \
               script="$CONFIG_DIR/plugins/aerospace.sh $2"
}

add_workspace_display "1" 1 
add_workspace_display "2" 2 
add_workspace_display "3" 3
add_workspace_display "4" 4 
add_workspace_display "5" 5 
add_workspace_display "6" 6 
add_workspace_display "7" 7 
add_workspace_display "8" 8 
add_workspace_display "9" 9 
add_workspace_display "" m 
add_workspace_display "󰑴" s 
add_workspace_display "󰑴" s 
add_workspace_display "" p 


