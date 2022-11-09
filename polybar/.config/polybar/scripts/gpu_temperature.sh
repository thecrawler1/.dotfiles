#!/bin/sh

value=$(nvidia-settings -q :0/ThermalSensorReading | gawk 'match($4, /([0-9]+)\./, x) {print x[1]}')

echo $value
