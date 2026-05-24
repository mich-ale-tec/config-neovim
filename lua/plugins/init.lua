-- LAZY.NVIM - Gestor de plugins moderno
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

  -- ============ PLUGINS ============
require("lazy").setup({
  -- ============ LSP ============
  "neovim/nvim-lspconfig",
  -- ============ COMPLETION ============
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
  },
  -- ============ THEME ============
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },
  -- ============ LUA LINE ============
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    }
  },
  -- ============ PANTALLA INICIO ============
  {
    "goolord/alpha-nvim"
  },
  -- ============ IDENTACION ============
  {
    "lukas-reineke/indent-blankline.nvim"
  },
  -- ============ FLASH ============
  {
    "folke/flash.nvim",
    event = "VeryLazy",
  },
  -- ============ TREE ============
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- ============ TMUX ============
  {
    "christoomey/vim-tmux-navigator",
  },
  -- ============ TELESCOPE ============
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- ============ TELESCOP - FZF ============
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  -- ============ GIT ============
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  -- ============ Tressitter ============
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "go",
          "bash",
          "json",
          "yaml",
          "markdown",
          "markdown_inline",
        },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
    })
  end,
  },
  -- ============ MARKDOWN ============
  {
    "MeanderingProgrammer/render-markdown.nvim",
  },
  -- ============ WHICH KEY ============
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
  -- ============ EDITING ============
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  {
    "tpope/vim-repeat",
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    config = true,
  },
  {
    "mattn/emmet-vim",
    ft = {
        "html",
        "css",
        "javascriptreact",
        "typescriptreact",
    },
  }
}, {
  install = { colorscheme = { "everforest" } },
  checker = { enabled = false },
})

require('plugins.themes')
require('plugins.ui')
require('plugins.lsp')
require('plugins.completion')
require('plugins.git')
require('plugins.navigation')
require('plugins.utilities')
