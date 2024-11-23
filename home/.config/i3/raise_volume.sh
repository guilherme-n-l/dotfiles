#!/bin/bash
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk "{print \$5}" | sed "s/%//")
if [ $(("$current_volume" + 10)) -lt 100 ]; then 
    pactl set-sink-volume @DEFAULT_SINK@ +10%
    $refresh_i3status
else
    pactl set-sink-volume @DEFAULT_SINK@ 100%
    $refresh_i3status
fi
