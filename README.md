# HyprlandLua 🌙

A minimal, highly modular, **Lua-powered Hyprland setup** for Arch Linux. Featuring Waybar, Rofi, Kitty, Cava audio visualizer with GLSL shaders, screenshot utilities, and a beautifully clean Gruvbox Material-inspired theme.

![Arch Linux](https://img.shields.io/badge/OS-ArchLinux-blue?logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-purple)
![Lua](https://img.shields.io/badge/Language-Lua-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

## ✨ Features

* **100% Lua-Based:** Hyprland configured entirely through Lua for ultimate modularity and scriptability.
* **Modular Structure:** Clean, separated configuration modules that are easy to read and maintain.
* **Gruvbox Material:** Cohesive, relaxing theme applied across Waybar and Rofi.
* **Cava Visualizer with GLSL Shaders:** Audio visualizer pre-configured with custom GLSL shaders (Spectrogram, Northern Lights, Orion, Winamp-style) and color themes.
* **Clipboard History:** Seamless `cliphist` integration with Rofi (`SUPER + A`).
* **Dynamic Wallpapers:** Switch between wallpapers using `ALT + 1-8`, or hit `ALT + 0` for a random wallpaper!
* **Robust Screenshots:** Integrated `grim` + `slurp` utility with multi-instance lock and instant clipboard copy.

---

## 📂 Folder Structure

```text
hyprlandLua/
├── README.md
└── .config
    ├── cava
    │   ├── config
    │   ├── shaders/
    │   │   ├── bar_spectrum.frag
    │   │   ├── eye_of_phi.frag
    │   │   ├── northern_lights.frag
    │   │   ├── orion_circle.frag
    │   │   ├── spectrogram.frag
    │   │   └── winamp_line_style_spectrum.frag
    │   └── themes/
    │       ├── solarized_dark
    │       └── tricolor
    ├── hypr
    │   ├── hyprland.lua
    │   ├── hyprlock.conf
    │   └── modules
    │       ├── autostart.lua
    │       ├── binds.lua
    │       ├── decorations.lua
    │       ├── env.lua
    │       ├── input.lua
    │       ├── layout.lua
    │       ├── misc.lua
    │       ├── monitors.lua
    │       └── windowrules.lua
    ├── kitty
    │   └── kitty.conf
    ├── rofi
    │   ├── clipboard.rasi
    │   ├── colors/
    │   ├── scripts/
    │   │   └── launcher.sh
    │   └── style.rasi
    ├── screenshot
    │   └── screenshot-script.sh
    ├── wallpaper
    │   ├── pic1.png
    │   └── ... (wallpapers)
    └── waybar
        ├── colors/
        ├── config.jsonc
        ├── scripts/
        │   └── launch.sh
        └── style.css
