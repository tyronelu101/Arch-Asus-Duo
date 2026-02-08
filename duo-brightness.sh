
if [ -z $1 ]; then
  echo "Please enter a valid value [1-400]"
  exit 0
fi


monitor_1=$1
monitor_2=$1

if ! [ -z $2 ]; then
  monitor_2=$2
fi

brightnessctl -d intel_backlight set $monitor_1
brightnessctl -d intel_backlight -s
brightnessctl -d card1-eDP-2-backlight set $monitor_2
brightnessctl -d card1-eDP-2-backlight -s 
