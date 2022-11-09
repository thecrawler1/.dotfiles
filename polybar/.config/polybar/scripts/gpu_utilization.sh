#!/bin/sh

value=$(nvidia-settings -q :0/GPUUtilization | gawk 'match($4, /graphics=([0-9]+),/, x) {print x[1]}')
echo $value
