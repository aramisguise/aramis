#!/bin/bash

clear

echo
echo

echo "/sys/devices/system/clocksource/clocksource0/current_clocksource: "
cat /sys/devices/system/clocksource/clocksource0/current_clocksource

echo
echo

echo "/sys/kernel/mm/transparent_hugepage/enabled: "
cat /sys/kernel/mm/transparent_hugepage/enabled

echo
echo

echo "/sys/kernel/mm/transparent_hugepage/defrag: "
cat /sys/kernel/mm/transparent_hugepage/defrag

echo
echo


