#!/usr/bin/env bash

rofi_menu() {
    rofi -dmenu -i -no-custom -theme "$HOME/.config/rofi/power-menu.rasi" "$@"
}

confirm() {
    local answer
    answer=$(printf 'Cancel\nConfirm\n' | rofi_menu -p "$1?" -selected-row 0) || return 1
    [[ "$answer" == "Confirm" ]]
}

choice=$(printf 'Lock\nSuspend\nLog out\nReboot\nShut down\n' | rofi_menu -p "Power") || exit 0

case "$choice" in
    Lock)
        hyprlock
        ;;
    Suspend)
        systemctl suspend
        ;;
    "Log out")
        confirm "Log out" || exit 0
        if command -v hyprshutdown >/dev/null 2>&1; then
            hyprshutdown
        else
            hyprctl eval 'hl.dispatch(hl.dsp.exit())'
        fi
        ;;
    Reboot)
        confirm "Reboot" || exit 0
        systemctl reboot
        ;;
    "Shut down")
        confirm "Shut down" || exit 0
        systemctl poweroff
        ;;
esac
