#!/bin/bash

color_bg=#2a2a37
color_border_bg=#c0a36e
color_inactive_border_bg=#736142
color_urgent_bg=#ece3d3
color_text_fg=#dcd7ba
color_text_fg_alt=#363646
color_inactive_text_fg=#f1efe3
color_indicator_bg=#c0a36e

BAT_CAPACITY="/sys/class/power_supply/BAT0/capacity"
BAT_STATUS="/sys/class/power_supply/BAT0/status"

while true; do 
    fdate=$(date +'%b %d - %Y (%a)')
    clock=$(date +'%I:%M %p')
    [[ "$(cat $BAT_STATUS)" == "Charging" ]] && \
        bat_status="<span color='$color_indicator_bg'>󱐋+</span>" \
        || bat_status="<span color='$color_indicator_bg'>󱐋</span>" 

    [[ "$(pamixer --get-mute)" == "true" ]] && \
        sound_status="<span color='$color_inactive_border_bg'>󰝟</span>" \
        || sound_status="<span color='$color_indicator_bg'>󰕾</span>" 

    echo -ne "<span color='$color_indicator_bg'>󱑂</span> $clock  \
<span color='$color_indicator_bg'>󰃠</span> $(brillo -G)%  \
$bat_status $(cat $BAT_CAPACITY)%  \
$sound_status $(pamixer --get-volume)%  \
<span color='$color_indicator_bg'>󰃭</span> $fdate"
sleep .1
done
