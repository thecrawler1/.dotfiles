#!/bin/bash

host=$(grep "### HOSTS" /etc/hosts | sed 's/### HOSTS \(.*\) ###/\1/g')

echo ${host^^}
