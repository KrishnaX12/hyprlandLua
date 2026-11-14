#!/bin/bash

: "${WAYLAND_DISPLAY:?Run this script inside your Wayland session}"
: "${XDG_RUNTIME_DIR:?XDG_RUNTIME_DIR is not set}"
pkill -x -u "$(id -u)" waybar
exec waybar
