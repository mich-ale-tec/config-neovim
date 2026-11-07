return {
	nvim = {
		"neovim/nvim-lspconfig",
	},
	mason = {
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	trouble = {
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
	},
    goto = {
		"rmagatti/goto-preview",
		dependencies = { "rmagatti/logger.nvim" },
		event = "BufEnter",
		config = true,
    }
}
