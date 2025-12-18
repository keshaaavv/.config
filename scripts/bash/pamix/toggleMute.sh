MUTED=$(pamixer --get-mute)

wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

if [[ $MUTED == "true" ]]; then
    notify-send "volume" "unmuted"
else
    notify-send "volume" "muted"
fi
