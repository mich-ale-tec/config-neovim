return {
	marks = {
		"chentoast/marks.nvim",
		event = "VeryLazy",
		opts = {},
	},
	surround = {
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = true,
	},
	vim_repeat = {
		"tpope/vim-repeat",
	},
	autopairs = {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	comment = {
		"numToStr/Comment.nvim",
		config = true,
	},
	recorder = {
		"chrisgrieser/nvim-recorder",
		dependencies = "rcarriga/nvim-notify",
		opts = {},
	},
	markdown = {
		"MeanderingProgrammer/render-markdown.nvim",
	},
}
