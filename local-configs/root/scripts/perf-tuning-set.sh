#!/bin/bash

echo acpi_pm > /sys/devices/system/clocksource/clocksource0/current_clocksource
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag




