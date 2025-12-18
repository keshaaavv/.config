#!/bin/bash

wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-

VOLUME=$(pamixer --get-volume)

notify-send "volume" "set to ${VOLUME}%."
