#!/bin/bash

: "${WAYLAND_DISPLAY:?Run this script inside your Wayland session}"
: "${XDG_RUNTIME_DIR:?XDG_RUNTIME_DIR is not set}"

waybar_bin="$HOME/.local/bin/waybar"
if [[ ! -x "$waybar_bin" ]]; then
    waybar_bin=$(command -v waybar) || exit 1
fi

pkill -x -u "$(id -u)" waybar
exec "$waybar_bin"
