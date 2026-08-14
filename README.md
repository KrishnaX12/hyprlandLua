# HyprlandLua 🌙

A minimal, highly modular, **Lua-powered Hyprland setup** for Arch Linux. Featuring Waybar, Rofi, Kitty, Cava, screenshot utilities, and a beautifully clean Gruvbox Material-inspired theme.

![Arch Linux](https://img.shields.io/badge/OS-ArchLinux-blue?logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-purple)
![Lua](https://img.shields.io/badge/Language-Lua-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## ✨ Features

* **100% Lua-Based:** Hyprland configured entirely through Lua for ultimate scriptability.
* **Modular Structure:** Clean, separated configuration files that are incredibly easy to read and maintain.
* **Gruvbox Material:** Cohesive, relaxing theme applied across Waybar and Rofi.
* **Dynamic Wallpapers:** Easily switch between 9 static wallpapers using `ALT + 1-9`, or hit `ALT + 0` to select a random wallpaper!
* **Cava Integration:** Audio visualizer with multiple GLSL shaders.
* **Included Scripts:** Custom utilities for screenshots and Waybar launching.

## 📂 Folder Structure

```text
hyprlandLua/
├── README.md
└── .config
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
    │   └── style.rasi
    ├── screenshot
    │   └── screenshot-script.sh
    ├── wallpaper
    │   ├── pic1.png
    │   └── ... (your wallpapers here)
    └── waybar
        ├── colors/
        ├── config.jsonc
        ├── scripts/
        └── style.css
```

## 🗺️ File Locations

| Component | Path |
| --- | --- |
| **Main Hyprland Config** | `~/.config/hypr/hyprland.lua` |
| **Hyprlock Config** | `~/.config/hypr/hyprlock.conf` |
| **Keybindings** | `~/.config/hypr/modules/binds.lua` |
| **Decorations & Animations** | `~/.config/hypr/modules/decorations.lua` |
| **Window Rules** | `~/.config/hypr/modules/windowrules.lua` |
| **Wallpapers Directory** | `~/.config/wallpaper/` |
| **Kitty Config** | `~/.config/kitty/kitty.conf` |
| **Rofi Theme** | `~/.config/rofi/style.rasi` |
| **Waybar Config** | `~/.config/waybar/config.jsonc` |
| **Screenshot Script** | `~/.config/screenshot/screenshot-script.sh` |

## 📦 Dependencies

### Core (Required)
```bash
sudo pacman -S hyprland lua hyprlock waybar rofi-wayland kitty wl-clipboard
```
*(Note: Ensure you install `rofi-wayland`, not the standard X11 `rofi`!)*

### Optional (Used in this Setup)
```bash
# For audio, brightness, screenshots, and wallpapers
sudo pacman -S cava brightnessctl pamixer playerctl grim slurp pavucontrol
```
*(Note: You will also need `awww` installed to use the wallpaper switching scripts).*

## 🚀 Installation Guide

**1. Clone the Repository**
```bash
git clone https://github.com/KrishnaX12/hyprlandLua.git
cd hyprlandLua
```

**2. Copy Configuration Files**
```bash
cp -r .config/* ~/.config/
```

**3. Reload Hyprland**
```bash
hyprctl reload
```

---

## 📝 Notes

> ⚠️ **Disclaimer:** Always back up your existing `~/.config` files before installation!

* Built and tested heavily on Arch Linux.
* Feel free to fork, modify, and improve. If you add cool new Lua modules, pull requests are welcome!
