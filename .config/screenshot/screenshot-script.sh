#!/bin/bash

# Prevent simultaneous captures and overlapping selection overlays.
: "${XDG_RUNTIME_DIR:?XDG_RUNTIME_DIR is not set}"
exec 9>"$XDG_RUNTIME_DIR/hypr-screenshot.lock"
flock -n 9 || exit 0

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR" || exit 1

if [ "${1:-}" = "area" ]; then
    GEOM=$(slurp) || exit 0
    PREFIX=area
else
    PREFIX=full
fi

FILE=$(mktemp "$DIR/${PREFIX}_$(date +%Y-%m-%d_%H-%M-%S)_XXXXXX.png") || exit 1
if [ "$PREFIX" = "area" ]; then
    grim -g "$GEOM" "$FILE"
else
    grim "$FILE"
fi
if [ "$?" -ne 0 ]; then
    rm -f "$FILE"
    exit 1
fi

if wl-copy < "$FILE" 9>&-; then
    command -v notify-send >/dev/null && notify-send -i "$FILE" "Screenshot Saved" "$(basename "$FILE") copied to clipboard" 9>&-
else
    command -v notify-send >/dev/null && notify-send -u normal "Screenshot Saved" "Saved to $FILE, but copying to clipboard failed." 9>&-
    exit 1
fi
