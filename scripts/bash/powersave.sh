#!/bin/bash

NOTIF_ID=$(notify-send -p "auto-cpufreq" "switching power modes...")

auto-cpufreq --force powersave

notify-send -r "$NOTIF_ID" "auto-cpufreq" "set to efficiency!"