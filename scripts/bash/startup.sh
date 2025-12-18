#!/bin/bash

systemctl --user start hyprpolkitagent
waybar # taskbar
swww-daemon & sleep 0.1 && swww img ~/Wallpapers/milk.png # wallpaper
hypridle # idle plugin
mako -c ~/.config/mako/mako # notification daemon

notify-send "system" "sartup success"

