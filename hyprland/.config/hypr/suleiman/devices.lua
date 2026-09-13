-- monitors
require("suleiman.monitors.komori")

-- mouse&keyboard
hl.config({
    input = {
        kb_layout = "us",
        kb_options = "caps:ctrl_modifier",
        follow_mouse = 1,
        sensitivity = -1.0,
        -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "custom 2 0 0.5",
        touchpad = {
            natural_scroll = false,
        },
    },
})
