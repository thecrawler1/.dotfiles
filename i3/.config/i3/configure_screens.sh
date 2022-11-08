#!/bin/bash

all_monitors=($(xrandr | grep "^[^ ]" | tail --lines 2 | grep -oE "^[^ ]* "))
monitor_1=${all_monitors[0]}
monitor_2=${all_monitors[1]}

xrandr --output $monitor_1 --mode 1366x768 --pos 1920x0 --rotate normal
xrandr --output $monitor_2 --primary --mode 1920x1080 --pos 0x0 --rotate normal
polybar main
