#!/bin/bash
let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

echo "Uptime: ${UPTIME}"

###OUTPUT SAMPLE: Uptime: 0 days, 00h08m47s
###OUTPUT SAMPLE: Uptime: 2 days, 02h56m06s

