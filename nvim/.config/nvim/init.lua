vim.o.background = "dark"
vim.g.mapleader = ' '
vim.g.python3_host_prog = "C:\\Users\\Shun\\.pyenv\\pyenv-win\\versions\\3.11.3\\python3.exe"
vim.g.python_host_prog = "C:\\Users\\Shun\\.pyenv\\pyenv-win\\versions\\3.11.3\\python.exe"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'ellisonleao/gruvbox.nvim',
  'rebelot/kanagawa.nvim',
  'mbbill/undotree',
  'nvim-tree/nvim-web-devicons',
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  'nvim-lua/plenary.nvim',
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    },
    config = function()
      require('telescope').load_extension('live_grep_args')
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',             -- Required
      'williamboman/mason.nvim',           -- Optional
      'williamboman/mason-lspconfig.nvim', -- Optional

      -- Autocompletion
      'hrsh7th/nvim-cmp',     -- Required
      'hrsh7th/cmp-nvim-lsp', -- Required
      'L3MON4D3/LuaSnip',     -- Required
    },
  },
  "lambdalisue/fern.vim",
  {
    'stevearc/oil.nvim',
    config = function() require('oil').setup() end
  },
  { "folke/neoconf.nvim" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
}
)

vim.cmd([[colorscheme gruvbox]])
require("suleiman.remap")
require("suleiman.set")
require("suleiman.filetypes")
require("plugin")
