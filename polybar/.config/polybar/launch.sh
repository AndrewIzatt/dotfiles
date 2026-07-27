#!/usr/bin/env bash

# More info : https://github.com/jaagr/polybar/wiki

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar left 2>&1 | tee -a /tmp/polybar1.log & disown
# # polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
#
# echo "Bars launched..."

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# desktop=$(echo $DESKTOP_SESSION)
# count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)


# case $desktop in
#
#     i3|/usr/share/xsessions/i3)
#     if type "xrandr" > /dev/null; then
#       for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#         MONITOR=$m polybar --reload base -c ~/.config/polybar/config &
#       done
#     else
#     polybar --reload base -c ~/.config/polybar/config &
#     fi
#     # second polybar at bottom
#     # if type "xrandr" > /dev/null; then
#     #   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     #     MONITOR=$m polybar --reload mainbar-i3-extra -c ~/.config/polybar/config.ini &
#     #   done
#     # else
#     # polybar --reload mainbar-i3-extra -c ~/.config/polybar/config.ini &
#     # fi
#     ;;
# esac

# Launch from ChatGPT
# if type "xrandr"; then
  # MONITOR_NUM=1
  # for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    # if [[ $MONITOR_NUM -eq 1 ]]; then
      # MONITOR1=$m polybar --reload left &
    # elif [[ $MONITOR_NUM -eq 2 ]]; then
      # MONITOR2=$m polybar --reload right &
    # fi
    # ((MONITOR_NUM++))
  # done
# Old config
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'HDMI-0' ] 
	  then		
		  MONITOR=$m polybar --reload left -c ~/.config/polybar/config &	
	  elif [ $m == 'DVI-D-0' ]
	  then
		  MONITOR=$m polybar --reload right -c ~/.config/polybar/config &
    else
      MONITOR=$m polybar --reload base -c ~/.config/polybar/config &
	  fi
    # MONITOR=$m polybar --reload base &
    # MONITOR2=$m polybar --reload right &
  done
fi

# echo "Bars launched..."
