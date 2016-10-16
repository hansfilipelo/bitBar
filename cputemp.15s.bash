#!/bin/bash

PATH=/usr/local/bin:$PATH

stats=$(macstats)
temp=$(echo $stats | awk '{print $7}')
fanSpeed=$(echo $stats | grep "Fan 0 speed" | awk '{print $15 " " $16}')

echo -n "CPU: "
echo -n "$temp, "
echo "$fanSpeed"

