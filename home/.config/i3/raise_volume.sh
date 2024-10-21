#!/bin/bash
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk "{print \$5}" | sed "s/%//")
if [ "$current_volume" -lt 100 ]; then 
    pactl set-sink-volume @DEFAULT_SINK@ +10%
    $refresh_i3status
    echo $current_volume
fi
