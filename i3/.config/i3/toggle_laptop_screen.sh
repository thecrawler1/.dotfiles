#!/bin/bash

all_monitors=($(xrandr | grep "^[^ ]" | tail --lines 2 | grep -oE "^[^ ]* "))
active_monitors=($(xrandr --listmonitors | grep "^ " | tail --lines 2 | grep -oE '[^ ]+$'))
monitor_1=${all_monitors[0]}
monitor_2=${all_monitors[1]}

qtd_active_monitors=${#active_monitors[@]}
qtd_all_monitors=${#all_monitors[@]}

if [ $qtd_active_monitors != $qtd_all_monitors ]; then
  xrandr --output $monitor_1 --mode 1366x768 --pos 1920x0 --rotate normal
  i3-msg "workspace number 1, move workspace to output right, focus output primary"
else
  xrandr --output $monitor_1 --off
  i3-msg "focus output primary"
fi
