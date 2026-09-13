-- xdg
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.on("hyprland.start", function()
  hl.exec_cmd("XDG_MENU_PREFIX=arch- kbuildsycoca6")
end)

-- cursor
hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_SIZE", 24)

hl.on("hyprland.start", function()
  -- bar
  hl.exec_cmd("eww daemon")
  hl.exec_cmd("eww open bar")
  hl.exec_cmd("eww open bar2")

  -- notification
  hl.exec_cmd("dunst")

  -- kwallet
  hl.exec_cmd("/usr/lib/pam_kwallet_init")
  hl.exec_cmd("qdbus6 org.kde.kwalletd6 /modules/kwalletd6 org.kde.KWallet.open kdewallet 0 login")
end)

-- basic config
hl.config({
  general = {
    resize_on_border = false,
    allow_tearing = true,
    layout = "dwindle"
  },

  dwindle = {
    preserve_split = true,
  },

  master = {
    new_status = "master",
  },
})
