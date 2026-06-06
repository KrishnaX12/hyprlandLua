# HyprlandLua

* A minimal and modular **Lua-powered Hyprland setup** for Arch Linux featuring Waybar, Rofi, Kitty, Cava, screenshot utilities, and a clean Gruvbox Material-inspired theme.

![Arch Linux](https://img.shields.io/badge/OS-ArchLinux-blue?logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-purple)
![Lua](https://img.shields.io/badge/Language-Lua-blue)
![License](https://img.shields.io/badge/License-MIT-green)

# Features

* Hyprland configured entirely through Lua
* Modular configuration structure
* Gruvbox Material themed Waybar and Rofi
* Hyprlock integration
* Kitty terminal configuration
* Cava audio visualizer with multiple GLSL shaders
* Screenshot utility scripts
* Easy-to-read and maintain configuration
* Lightweight Arch Linux setup
* Clean Waybar design

## 📂 Folder Structure

```bash
hyprlandLua/
├── README.md
└── .config
    ├── hypr
    │   ├── hyprland.lua
    │   ├── hyprlock.conf
    │   ├── modules
    │   │   ├── autostart.lua
    │   │   ├── binds.lua
    │   │   ├── decorations.lua
    │   │   ├── env.lua
    │   │   ├── input.lua
    │   │   ├── layout.lua
    │   │   ├── misc.lua
    │   │   ├── monitors.lua
    │   │   └── windowrules.lua
    │   └── .vscode
    │       └── settings.json
    ├── kitty
    │   └── kitty.conf
    ├── rofi
    │   ├── clipboard.rasi
    │   ├── colors
    │   │   ├── colors.rasi
    │   │   ├── fonts.rasi
    │   │   └── gruvbox-material.rasi
    │   ├── scripts
    │   │   └── launcher.sh
    │   └── style.rasi
    ├── screenshot
    │   └── screenshot-script.sh
    └── waybar
        ├── colors
        │   └── gruv-material.css
        ├── config.jsonc
        ├── scripts
        │   └── launch.sh
        └── style.css
```


## 📂 File Locations
-----------------------------------------------------------------------
| File                  | Path                                        |
| --------------------- | ------------------------------------------- |
| Main Hyprland Config  | `~/.config/hypr/hyprland.lua`               |
| Hyprlock Config       | `~/.config/hypr/hyprlock.conf`              |
| Keybindings           | `~/.config/hypr/modules/binds.lua`          |
| Monitors              | `~/.config/hypr/modules/monitors.lua`       |
| Layout Settings       | `~/.config/hypr/modules/layout.lua`         |
| Decorations           | `~/.config/hypr/modules/decorations.lua`    |
| Window Rules          | `~/.config/hypr/modules/windowrules.lua`    |
| Environment Variables | `~/.config/hypr/modules/env.lua`            |
| Autostart             | `~/.config/hypr/modules/autostart.lua`      |
| Kitty Config          | `~/.config/kitty/kitty.conf`                |
| Rofi Theme            | `~/.config/rofi/style.rasi`                 |
| Rofi Launcher         | `~/.config/rofi/scripts/launcher.sh`        |
| Waybar Config         | `~/.config/waybar/config.jsonc`             |
| Waybar Style          | `~/.config/waybar/style.css`                |
| Waybar Colors         | `~/.config/waybar/colors/gruv-material.css` |
| Waybar Launch Script  | `~/.config/waybar/scripts/launch.sh`        |
| Screenshot Script     | `~/.config/screenshot/screenshot-script.sh` |
-----------------------------------------------------------------------

## 📦 Dependencies

### Core (Required)

* hyprland
* lua
* hyprlock
* waybar
* rofi
* kitty
* wl-clipboard

### Optional (Used in this Setup)

* cava
* brightnessctl
* pamixer
* playerctl
* networkmanager
* grim
* slurp
* pavucontrol
* nerd-fonts

## 🚀 Installation GUIDE !!

### Core Install (Arch Linux)

```bash
sudo pacman -S hyprland lua hyprlock waybar rofi kitty wl-clipboard
```

### Optional Packages

```bash
sudo pacman -S cava brightnessctl pamixer playerctl grim slurp pavucontrol
```

### Clone the Repository

```bash
git clone https://github.com/KrishnaX12/hyprlandLua.git
cd hyprlandLua
```

### Copy Configuration Files

```bash
cp -r .config/* ~/.config/
```

### Reload Hyprland

```bash
hyprctl reload
```

### Start Hyprland

```bash
exec Hyprland
```

---

## Notes

* Built and tested on Arch Linux.
* Uses Lua-based Hyprland configuration.
* Gruvbox Material themed UI.
* Feel free to fork, modify, and improve.
* Always back up your existing configuration before installation.

---

## License

MIT License
