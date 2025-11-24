#!/bin/bash
# Screenshot script using grim and slurp

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"
NAME="screenshot_$(date +%Y%m%d_%H%M%S).png"

if [ "$1" == "area" ]; then
    grim -g "$(slurp)" "$DIR/$NAME"
else
    grim "$DIR/$NAME"
fi

notify-send "Screenshot Saved" "Saved to $DIR/$NAME"
