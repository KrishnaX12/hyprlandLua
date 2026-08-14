---------------------
---- KEYBINDINGS ----
---------------------


local menu = "/home/krishna/.config/rofi/scripts/launcher.sh"
local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) 
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("kitty -e nmtui"))
hl.bind(mainMod .. " + B",hl.dsp.exec_cmd("blueman-manager"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind("Print", hl.dsp.exec_cmd(".config/screenshot/screenshot-script.sh"))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(".config/screenshot/screenshot-script.sh  area"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("cliphist list | rofi -dmenu -i -p Clipboard -theme ~/.config/rofi/clipboard.rasi | cliphist decode | wl-copy"))
hl.bind("SUPER + L", function()
    hl.exec_cmd("hyprlock")
end)

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

--Wallpaper 

hl.bind("ALT + 1", hl.dsp.exec_cmd("awww img ~/Downloads/pic1.png"))
hl.bind("ALT + 2", hl.dsp.exec_cmd("awww img ~/Downloads/pic2.png"))
hl.bind("ALT + 3", hl.dsp.exec_cmd("awww img ~/Downloads/pic3.png"))
hl.bind("ALT + 4", hl.dsp.exec_cmd("awww img ~/Downloads/pic4.png"))
hl.bind("ALT + 5", hl.dsp.exec_cmd("awww img ~/Downloads/pic5.jpg"))
hl.bind("ALT + 6", hl.dsp.exec_cmd("awww img ~/Downloads/bleachCover.jpg"))
hl.bind("ALT + 7", hl.dsp.exec_cmd("awww img ~/Downloads/deathnote.jpg"))
hl.bind("ALT + 8", hl.dsp.exec_cmd("awww img ~/Downloads/itachiLight.png"))
hl.bind("ALT + 9", hl.dsp.exec_cmd("awww img ~/Downloads/1371018.png"))
hl.bind("ALT + 0", hl.dsp.exec_cmd("awww img ~/Downloads/jjk.jpg"))