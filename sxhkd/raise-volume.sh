#!/bin/zsh
if (( $(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '(\d+)%' | awk -F '%' '{print $1}' | head -n 1) < 100 )); then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
fi
