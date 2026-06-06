#!/bin/bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

TIME=$(date +%Y-%m-%d_%H-%M-%S)

# If argument is "area", use slurp
if [ "$1" = "area" ]; then
    grim -g "$(slurp)" "$DIR/area_$TIME.png"
else
    grim "$DIR/full_$TIME.png"
fi

wl-copy < "$FILE"
