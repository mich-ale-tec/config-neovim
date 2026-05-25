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
			"rafamadriz/friendly-snippets",
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
			"nvim-tree/nvim-web-devicons",
		},
	},
	-- ============ PANTALLA INICIO ============
	{
		"goolord/alpha-nvim",
	},
	-- ============ IDENTACION ============
	{
		"lukas-reineke/indent-blankline.nvim",
	},
	-- ============ FLASH ============
	{
		"folke/flash.nvim",
		event = "VeryLazy",
	},
	-- ============ TREE ============
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
	},
	-- ============ TMUX ============
	{
		"christoomey/vim-tmux-navigator",
	},
	-- ============ TELESCOPE ============
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		build = "make",
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
		event = { "BufNewFile" },
		opts = {
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
			highlight = { enable = true },
			indent = { enable = true },
		},

		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	-- ============ MARKDOWN ============
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					separator_style = "slant",
					diagnostics = "nvim_lsp",
					show_buffer_close_icons = true,
					show_close_icon = false,
					always_show_bufferline = true,
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
	-- ============ Conform ============
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
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
	},
}, {
	install = { colorscheme = { "everforest" } },
	checker = { enabled = false },
})

require("plugins.themes")
require("plugins.ui")
require("plugins.lsp")
require("plugins.completion")
require("plugins.git")
require("plugins.formatting")
require("plugins.emmet")
require("plugins.options")
require("plugins.navigation")
require("plugins.telescope")
