#!/bin/env bash

mode="$(printf "Integrated\nHybrid\nNvidia" | rofi -dmenu -case-smart -matching "fuzzy" -p "Select the graphics mode:")"
printf $mode


case "$mode" in
    Integrated)
        sudo -A envycontrol -s integrated && notify-send "Graphics mode set to integrated"
        ;;
    Hybrid)
        sudo -A envcontrol -s hybrid && notify-send "Graphics mode set to hybrid"
        ;;
    Nvidia)
        sudo -A envycontrol -s nvidia && notify-send "Graphics mode set to nvidia"
        ;;
    *)
        exit 1
        ;;
esac

