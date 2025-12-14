require("oil").setup({
  default_file_explorer = true,
  columns = {
    "icon",
  },
  keymaps = {
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-h>"] = "<C-w>h",
    ["<C-l>"] = "<C-w>l",
    ["<C-v>"] = "<C-w>v",
    ["<C-s>"] = "<C-w>s",
  }
})

