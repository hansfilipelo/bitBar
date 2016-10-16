#!/bin/bash

memory=$(top -l 1 -s 0 | grep PhysMem | awk '{print $2 " " $3 " " $4 " " $5 " " $6 " " $7}')

echo -n "Mem: "
# Used
#echo -n "$(echo $memory | awk '{print $1 " " $2}'),"
# Wired
echo -n "$(echo $memory | awk '{print $3 " " $4}' | tr '(' ' ' | tr '),' ', ' )"
# Unused
echo "$(echo $memory | awk '{print $5 " " $6}' | tr '.' ' ' )"

