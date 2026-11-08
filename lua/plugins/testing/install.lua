return {
	devlua = {

		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	spider = { "chrisgrieser/nvim-spider", lazy = true },
	substitute = {
		"gbprod/substitute.nvim",
		opts = {
			yank_substituted_text = false,
			highlight_substituted_text = { enabled = true, timer = 300 },
			preserve_cursor_position = true,
		},
	},
	yanki = {
		"gbprod/yanky.nvim",
		opts = {
			preserve_cursor_position = {
				enabled = true,
			},
			highlight = {
				on_put = true,
				on_yank = true,
				timer = 300,
			},
		},
	},
	harpoon = {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
