-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("wl-paste --watch cliphist store &")

    -- Fix OBS screen capture (PipeWire portal must start AFTER Hyprland is ready)
    -- hl.exec_cmd("sleep 2 && systemctl --user restart xdg-desktop-portal-hyprland && systemctl --user restart xdg-desktop-portal")
    -- u can have this if u have obs
end)
