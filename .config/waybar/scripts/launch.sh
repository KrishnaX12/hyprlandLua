#!/bin/bash

pkill waybar
export WAYLAND_DISPLAY=${WAYLAND_DISPLAY:-wayland-1}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/1000}
waybar &

