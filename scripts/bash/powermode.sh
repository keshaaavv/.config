#!/bin/bash

NOTIF_ID=$(notify-send -p "switching power modes...")

auto-cpufreq --force power-save

notify-send -r "$NOTIF_ID" "power mode: efficiency