#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar -c "~/.config/i3/polybar/config.ini" 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bar launched..."
