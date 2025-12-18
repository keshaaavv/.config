#!/bin/bash

brightnessctl -e4 -n2 set 5%+

BRIGHTNESS=$(brightnessctl get)
MAXBRIGHTNESS=$(brightnessctl max)

PERCENT=$(( BRIGHTNESS * 100 / MAXBRIGHTNESS ))

hyprctl dismissnotify 1

notify-send --expire-time=10 "brightness" "set to $PERCENT%" -t 500