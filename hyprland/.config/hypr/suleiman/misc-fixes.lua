--hl.env("XDG_MENU_PREFIX", "arch- kbuildsyscoa6")

-- hl.config({
--   xwayland = {
--     force_zero_scaling = true
--   }
-- })

hl.config({
  cursor = {
    no_hardware_cursors = 1,
    no_break_fs_vrr = 1,
  },
})

-- fix xwayland drags
hl.window_rule({
  name = "fix-xwayland-drags",
  match = {
    class = "^$",
    title = "^$",
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
  no_focus = true,
})
