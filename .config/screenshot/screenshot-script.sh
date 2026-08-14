#!/bin/bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

TIME=$(date +%Y-%m-%d_%H-%M-%S)

# If argument is "area", use slurp
if [ "$1" = "area" ]; then
    FILE="$DIR/area_$TIME.png"
    grim -g "$(slurp)" "$FILE"
else
    FILE="$DIR/full_$TIME.png"
    grim "$FILE"
fi

# Copy image to clipboard
wl-copy < "$FILE"