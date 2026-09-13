hl.env("XMODIFIERS", "@im=fcitx")
hl.env("QT_IM_MODULE", "fcitx")

hl.on("hyprland.start", function()
  hl.exec_cmd("fcitx5-remote -r")
  hl.exec_cmd("fcitx5 -d --replace")
end)
