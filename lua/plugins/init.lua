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
	{
		"benfowler/telescope-luasnip.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"L3MON4D3/LuaSnip",
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
		opts = {},
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
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		init = function()
			vim.g.no_plugin_maps = true
		end,
	},
	-- ============ BUFFERS ============
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
	-- ============ ERRORES ============
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
	},
	-- ============ Jump references, types, implements ============
	{
		"rmagatti/goto-preview",
		dependencies = { "rmagatti/logger.nvim" },
		event = "BufEnter",
		config = true,
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
	-- ============ TREE FILES ============
	{
		"stevearc/oil.nvim",
		opts = {
			lsp_file_methods = { enabled = true, autosave_changes = true },
		},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
	},
}, {
	checker = { enabled = false },
})

require("plugins.interface")
require("plugins.ui")
require("plugins.lsp")
require("plugins.completion")
require("plugins.git")
require("plugins.formatting")
require("plugins.fold")
require("plugins.navigation")
require("plugins.telescope")
require("plugins.markdown")
require("plugins.treesitter")
require("plugins.goto")
require("plugins.oil")
require("plugins.trouble")
require("plugins.bufferline")
