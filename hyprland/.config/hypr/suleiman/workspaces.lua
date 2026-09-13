-----------------------------
-- BASIC WORKSPACES (1-10) --
-----------------------------

-- KEYBINDS
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- DEFAULTS
hl.workspace_rule({
  workspace = "10",
  default = true,
  on_created_empty = Browser
})
hl.workspace_rule({
  workspace = "1",
  default = true,
  on_created_empty = Terminal
})

-- SPLIT WORKSPACE BETWEEN MONITORS
if Monitor2 ~= nil then
  for i = 1, 5 do
    hl.workspace_rule({
      workspace = tostring(i),
      monitor = Monitor1
    })
  end
  for i = 6, 10 do
    hl.workspace_rule({
      workspace = tostring(i),
      monitor = Monitor2
    })
  end
end

------------------------
-- SPECIAL WORKSPACES --
------------------------

local spWorkspaces = {
  {
    name = "obsidian", -- should be matching initialClass from 'hyprctl clients'
    key = "O",
    desktop = "/usr/share/applications/obsidian.desktop",
  },
  {
    name = "slack",
    key = "S",
    desktop = "/usr/share/applications/slack.desktop",
  },
  {
    name = "strawberrymusicplayer",
    key = "P",
    desktop = "/usr/share/applications/org.strawberrymusicplayer.strawberry.desktop"
  },
  {
    name = "discord",
    key = "D",
    desktop = "/usr/share/applications/discord.desktop"
  },
}

for i, workspace in ipairs(spWorkspaces) do
  hl.bind(MainMod .. " + " .. workspace.key, hl.dsp.workspace.toggle_special(workspace.name))
  hl.workspace_rule({
    workspace = "special:" .. workspace.name,
    on_created_empty = "dex " .. workspace.desktop,
    gaps_in = 6,
    gaps_out = 30
  })
  hl.window_rule({
    name = "special-" .. workspace.name,
    match = {
      initial_class = workspace.name
    },
    workspace = "silent:" .. workspace.name
  })
end
