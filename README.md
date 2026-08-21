# HyprlandLua 🌙

A minimal, highly modular, **Lua-powered Hyprland setup** for Arch Linux. Featuring Waybar, Rofi, Kitty, Cava, screenshot utilities, and a beautifully clean Gruvbox Material-inspired theme.

![Arch Linux](https://img.shields.io/badge/OS-ArchLinux-blue?logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-purple)
![Lua](https://img.shields.io/badge/Language-Lua-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

## ✨ Features

* **100% Lua-Based:** Hyprland configured entirely through Lua for ultimate scriptability.
* **Modular Structure:** Clean, separated configuration modules that are easy to read and maintain.
* **Gruvbox Material:** Cohesive, relaxing theme applied across Waybar and Rofi.
* **Cava Integration:** Audio visualizer with multiple custom GLSL shaders (Spectrogram, Northern Lights, Orion, Winamp-style) and color themes.
* **Clipboard History:** Quick clipboard access using `cliphist` and Rofi (`SUPER + A`).
* **Dynamic Wallpapers:** Switch between wallpapers using `ALT + 1-8`, or hit `ALT + 0` to select a random wallpaper!
* **Included Scripts:** Custom utilities for screenshots and Waybar reloading.

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
    │   └── ... (your wallpapers here)
    └── waybar
        ├── colors/
        ├── config.jsonc
        ├── scripts/
        │   └── launch.sh
        └── style.css
```

## 🗺️ File Locations

| Component | Path |
| :--- | :--- |
| **Main Hyprland Config** | `~/.config/hypr/hyprland.lua` |
| **Hyprlock Config** | `~/.config/hypr/hyprlock.conf` |
| **Keybindings** | `~/.config/hypr/modules/binds.lua` |
| **Decorations & Animations** | `~/.config/hypr/modules/decorations.lua` |
| **Window Rules** | `~/.config/hypr/modules/windowrules.lua` |
| **Cava Audio Config** | `~/.config/cava/config` |
| **Cava Shaders** | `~/.config/cava/shaders/` |
| **Wallpapers Directory** | `~/.config/wallpaper/` |
| **Kitty Config** | `~/.config/kitty/kitty.conf` |
| **Rofi Theme** | `~/.config/rofi/style.rasi` |
| **Waybar Config** | `~/.config/waybar/config.jsonc` |
| **Screenshot Script** | `~/.config/screenshot/screenshot-script.sh` |

---

## 📦 Dependencies

### Core (Required)
```bash
sudo pacman -S hyprland lua hyprlock waybar rofi-wayland kitty wl-clipboard cliphist
```
*(Note: Ensure you install `rofi-wayland`, not the standard X11 `rofi`!)*

### Optional (Used in this Setup)
```bash
# Audio, brightness, screenshots, visualizer, and notifications
sudo pacman -S cava brightnessctl pamixer playerctl grim slurp pavucontrol swaync
```
*(Note: You will also need `awww` installed to use the wallpaper switching scripts).*

---

## 🚀 Installation Guide

**1. Clone the Repository**
```bash
git clone https://github.com/KrishnaX12/hyprlandLua.git
cd hyprlandLua
```

**2. Make Scripts Executable**
```bash
chmod +x .config/rofi/scripts/launcher.sh .config/screenshot/screenshot-script.sh .config/waybar/scripts/launch.sh
```

**3. Copy Configuration Files**
```bash
cp -r .config/* ~/.config/
```

**4. Reload Hyprland**
```bash
hyprctl reload
```

---

## 📝 Notes

> ⚠️ **Disclaimer:** Always back up your existing `~/.config` files before installation!

* Built and tested heavily on Arch Linux.
* Feel free to fork, modify, and improve. If you add cool new Lua modules, pull requests are welcome!
