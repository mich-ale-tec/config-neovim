return {
	main = {
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {
			remote_op = {
				motion = true,
				restore = true,
			},
		},
	},
}
