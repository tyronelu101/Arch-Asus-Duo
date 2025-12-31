#!/bin/bash
/usr/bin/logger $PATH
if [ $1 -eq 1 ]; then
 /usr/bin/logger "Enabling monitor"
 /usr/bin/hyprctl keyword monitor "eDP-2, preferred, 0x900, 2"
elif [ $1 -eq 0 ]; then
  /usr/bin/logger "Disabling monitor"
  /usr/bin/hyprctl keyword monitor "eDP-2, disable"
else 
  echo "Invalid arg passed. Either 0 or 1."
fi

exit 0
