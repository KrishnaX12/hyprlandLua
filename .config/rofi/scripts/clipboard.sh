#!/usr/bin/env bash

set -o pipefail

selection=$(cliphist list | rofi -dmenu -i -no-custom -p Clipboard -theme "$HOME/.config/rofi/clipboard.rasi") || exit 0
[[ -n "$selection" ]] || exit 0

clipboard_file=$(mktemp) || exit 1
trap 'rm -f "$clipboard_file"' EXIT
printf '%s\n' "$selection" | cliphist decode > "$clipboard_file" || exit 1
wl-copy < "$clipboard_file"
