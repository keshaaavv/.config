#!/bin/bash

killall  mako

mako -c ~/.config/mako/mako

notify-send "reloaded."