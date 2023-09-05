#!/usr/bin/env bash
set -euo pipefail

export DISPLAY=":0"
export HOME=/home/pmi_glisboa
export XAUTHORITY="/home/pmi_glisboa/.Xauthority"

min_seconds_between_executions=10
date_file="/tmp/last-udev-xmodmap"
now=$(date +%s)

if [[ -f $date_file ]]; then
    prev_ts=$(cat "$date_file")
else
    prev_ts=0
fi

if ((now - prev_ts <= min_seconds_between_executions)); then
    exit 0
fi

echo "$now" > "$date_file"

do_xmodmap() {
    sleep 1
    xmodmap /home/pmi_glisboa/.Xmodmap
}

do_xmodmap &> "${date_file}.log" &
