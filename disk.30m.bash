#!/bin/bash

df -h | head -n 2 | tail -n 1 | awk '{print "Dsk: " $3 " used, " $4 " free"}'

