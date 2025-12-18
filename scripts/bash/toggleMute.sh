MUTED=$(pamixer --get-mute)

pamixer -t

if [[ $MUTED == "true" ]]; then
    notify-send "volume" "unmuted" -t 500
else
    notify-send "volume" "muted" -t 500
fi
