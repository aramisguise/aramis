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

echo "/sys/block/sda/queue/scheduler: "
cat /sys/block/sda/queue/scheduler

echo
echo

echo "/sys/block/sda/queue/rq_affinity: "
cat /sys/block/sda/queue/rq_affinity

echo
echo

echo "/sys/block/sda/queue/nr_requests: "
cat /sys/block/sda/queue/nr_requests

echo
echo

echo "/sys/block/sda/queue/read_ahead_kb: "
cat /sys/block/sda/queue/read_ahead_kb

echo
echo

