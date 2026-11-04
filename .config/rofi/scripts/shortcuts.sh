#!/usr/bin/env bash

rofi -dmenu -i -no-custom -p Shortcuts \
    -theme "$HOME/.config/rofi/clipboard.rasi" \
    -theme-str 'window { width: 850px; }' >/dev/null <<'SHORTCUTS'
Super + I                 Shortcut cheatsheet
Super + Space             Application launcher
Super + Q                 Terminal (Kitty)
Super + E                 File manager (Nautilus)
Super + F                 Firefox
Super + W                 Wi-Fi settings (nmtui)
Super + B                 Bluetooth settings
Super + Escape            Power menu
Super + L                 Lock screen
Super + M                 Log out
Super + C                 Close window
Super + V                 Toggle floating window
Super + P                 Float and toggle pin across workspaces
Super + J                 Toggle tiling split
Super + Arrow keys        Focus window in direction
Super + Left mouse drag   Move window
Super + Right mouse drag  Resize window
Super + 1–9 / 0           Switch to workspace 1–10
Super + Shift + 1–9 / 0   Move window to workspace 1–10
Super + Mouse wheel       Cycle workspaces
Super + S                 Toggle scratchpad
Super + Shift + S         Move window to scratchpad
Super + Ctrl + Arrows     Move window into neighboring group
Super + G                 Toggle window group
Super + Tab               Next window in group
Super + Shift + Tab       Previous window in group
Super + A                 Clipboard history
Print                     Screenshot all monitors and copy
Super + Print             Screenshot selected area and copy
Super + Alt + W           Wallpaper picker
Alt + 1–9                 Set numbered wallpaper
Alt + 0                   Random wallpaper
Super + R                 Restart Waybar
Volume Up / Down          Adjust volume
Audio Mute                Toggle speaker mute
Mic Mute                  Toggle microphone mute
Brightness Up / Down      Adjust brightness
Media Play / Pause        Play or pause media
Media Next / Previous     Next or previous track
SHORTCUTS
