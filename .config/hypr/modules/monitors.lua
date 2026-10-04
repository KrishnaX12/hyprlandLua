hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "auto",
    scale = 1.00,
})

-- Fallback for any connected external monitor (HDMI / DisplayPort)
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.00,
})  