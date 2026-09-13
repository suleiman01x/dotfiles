require("suleiman.config")
-------------------
-- BASIC CONTROL --
-------------------
hl.bind(MainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. " + " .. "X", hl.dsp.window.close())

-- Move focus with mainMod + arrow keys
hl.bind(MainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(MainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(MainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(MainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(MainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(MainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- touchpad
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

------------
-- CUSTOM --
------------
hl.bind(MainMod .. " + " .. "T", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. " + " .. "G", hl.dsp.exec_cmd(Browser))
hl.bind(MainMod .. " + " .. "SPACE", hl.dsp.exec_cmd(Launcher))

----------
-- MISC --
----------
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

