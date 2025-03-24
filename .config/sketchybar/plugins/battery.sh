#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"
COLOR=0xffffffff

sketchybar --set battery label.padding_right=6 icon.padding_left=6

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) 
      ICON=""
  ;;
  [6-8][0-9]) 
      ICON=""
  ;;
  [3-5][0-9]) 
      ICON=""
  ;;
  [1-2][0-9]) 
      ICON=""
      COLOR=0xffC45525
  ;;
  *) 
      ICON=""
      COLOR=0xffAC1716
esac

if [[ "$CHARGING" != "" ]]; then
  ICON=""
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%" icon.color=$COLOR
