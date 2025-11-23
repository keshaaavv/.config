#!/bin/bash

# Kill any running waybar instances
pkill -x waybar

# Start waybar
waybar &
