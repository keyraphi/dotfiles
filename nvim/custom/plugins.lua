local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    -- formating
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    -- linting
    "mfussenegger/nvim-lint",
    config = function()
      require "custom.configs.nvim-lint"
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- surround
  {
    "tpope/vim-surround",
    lazy = false,
  },
  -- make surround commands repeatable with .
  { "tpope/vim-repeat", lazy = false },
  -- fugitive
  { "tpope/vim-fugitive", lazy = false },
  -- navigate around with "s" or "S"
  { "ggandor/lightspeed.nvim", keys = { { "s", mode = "n" }, { "S", mode = "n" } } },
  -- automatically set root directory
  {
    "jedi2610/nvim-rooter.lua",
    lazy = false,
    config = function()
      require("nvim-rooter").setup {
        rooter_patterns = {
          ".git",
          "Makefile",
          "_darcs",
          ".hg",
          ".bzr",
          ".svn",
          "package.json",
          "CMakeLists.txt",
          "settings.gradle",
        },
        trigger_patterns = { "*" },
        manual = false,
      }
    end,
  },
  -- latex
  { "lervag/vimtex", ft = "tex" },

  -- smooth scroll
  { "psliwka/vim-smoothie", lazy = false },

  -- { import = "custom.configs.extras.copilot" },
  { import = "custom.configs.extras.diffview" },
  { import = "custom.configs.extras.mason-extras" },
  { import = "custom.configs.extras.symbols-outline" },
  { import = "custom.configs.extras.trouble" },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }

  -- To use a extras plugin
  -- { import = "custom.configs.extras.symbols-outline", },
}

return plugins
