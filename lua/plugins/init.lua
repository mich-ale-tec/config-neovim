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
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
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
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
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
	-- ============ SPECTRE ============
	{
		"nvim-pack/nvim-spectre",
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
	-- ============ NOICE ============
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
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
		lazy = false,
		build = ":TSUpdate",
	},
	-- ============ MARKDOWN ============
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
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
	-- ============ MARKS ============
	{
		"chentoast/marks.nvim",
		event = "VeryLazy",
		opts = {},
	},
	-- ============ ERROS ============
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
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
	checker = { enabled = false },
})

require("plugins.themes")
require("plugins.ui")
require("plugins.lsp")
require("plugins.completion")
require("plugins.git")
require("plugins.formatting")
require("plugins.options")
require("plugins.navigation")
require("plugins.telescope")
require("plugins.markdown")
