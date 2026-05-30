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
    version = "*",
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
    build = ':TSUpdate',
    main = 'nvim-treesitter.config',
    opts = {
      auto_install = true,
      ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query" },
      sync_install = true,
      highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
      },
    }
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
  {
    'dmtrKovalenko/fff.nvim',
    build = function()
      -- this will download prebuild binary or try to use existing rustup toolchain to build from source
      -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
      require("fff.download").download_or_build_binary()
    end,
    -- if you are using nixos
    -- build = "nix run .#release",
    opts = {              -- (optional)
      debug = {
        enabled = true,   -- we expect your collaboration at least during the beta
        show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
      },
    },
    -- No need to lazy-load with lazy.nvim.
    -- This plugin initializes itself lazily.
    lazy = false,
    keys = {
      {
        "ff", -- try it if you didn't it is a banger keybinding for a picker
        function() require('fff').find_files() end,
        desc = 'FFFind files',
      }
    }
  }
}
)

vim.cmd([[colorscheme gruvbox]])
require("suleiman.remap")
require("suleiman.set")
require("suleiman.filetypes")
require("plugin")
