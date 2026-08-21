#!/bin/bash

# Prevent multiple slurp selection overlays from stacking
if pgrep -x "slurp" > /dev/null; then
    exit 0
fi

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

TIME=$(date +%Y-%m-%d_%H-%M-%S)

if [ "$1" = "area" ]; then
    # Grab area geometry; if user cancels (Esc), exit cleanly
    GEOM=$(slurp) || exit 0
    FILE="$DIR/area_$TIME.png"
    grim -g "$GEOM" "$FILE" || exit 1
else
    FILE="$DIR/full_$TIME.png"
    grim "$FILE" || exit 1
fi

# Copy image to clipboard if file exists
if [ -f "$FILE" ]; then
    wl-copy < "$FILE"
    # Optional notification:
    command -v notify-send >/dev/null && notify-send -i "$FILE" "Screenshot Saved" "$(basename "$FILE") copied to clipboard"
fi