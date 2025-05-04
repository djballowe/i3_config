#!/usr/bin/env sh

mouse_id=$(xinput list | grep "Logitech MX Vertical" | head -n 1 | awk -F'=' '{print $2}' | awk '{print $1}' | xargs)
xinput --set-prop "$mouse_id" 'libinput Accel Speed' -0.9
