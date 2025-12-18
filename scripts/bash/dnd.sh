#!/bin/bash

STATE_FILE="$HOME/.dnd_state"

# read state, default "off"
dnd=$(cat "$STATE_FILE" 2>/dev/null || echo "off")

# grab DBUS info from running mako
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $USER -n mako)/environ | tr '\0' '\n' | cut -d= -f2-)

if [[ "$dnd" == "on" ]]; then
    echo "off" > "$STATE_FILE"
    makoctl mode -s normal
    notify-send "Do Not Disturb disabled"
else
    echo "on" > "$STATE_FILE"
    makoctl mode -s do-not-disturb
    notify-send "Do Not Disturb enabled"
fi
