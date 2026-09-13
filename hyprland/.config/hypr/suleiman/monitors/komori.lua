require("suleiman.config")

hl.monitor({
  output = Monitor1,
  mode = "1920x1200@74.93",
  position = "0x0",
  scale = 1,
  --cm = "dcip3"
})

hl.monitor({
  output = Monitor2,
  mode = "1920x1080",
  position = "1920x0",
  scale = 1,
  transform = 1
})

hl.env("WAYLANDDRV_PRIMARY_MONITOR", Monitor1)

hl.on("hyprland.start", function ()
  hl.exec_cmd("xrandr --output " .. Monitor1 .. " --primary")
end)
