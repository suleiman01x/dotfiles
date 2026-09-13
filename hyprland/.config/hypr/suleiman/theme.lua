local mainColor = "rgba(feb050ff)"
local backgroundColor = "rgb(20, 20, 20)"

------------
-- DESIGN --
------------
hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 2,
    border_size = 1,
    col = {
      active_border = mainColor,
      inactive_border = backgroundColor
    }
  },

  decoration = {
    rounding = 2,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    shadow = {
      enabled = false,
    },
    blur = {
      enabled = false,
    },
  },

  animations = {
    enabled = false,
  },

  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
    background_color = backgroundColor,
  }
})

----------------
-- DARK THEME --
----------------
hl.on("hyprland.start", function ()
  -- GTK4
  hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
  -- GTK3
  hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"')
end)
--qt
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")

