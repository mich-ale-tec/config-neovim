return {
	"MagicDuck/grug-far.nvim",
	cmd = { "GrugFar", "GrugFarWithin" },
	opts = {
		transient = true,
	},
	keys = {
		{
			"<leader>sr",
			function()
				require("grug-far").open()
			end,
			mode = { "n", "x" },
			desc = "Buscar y reemplazar (proyecto)",
		},
		{
			"<leader>sw",
			function()
				require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
			end,
			desc = "Reemplazar palabra bajo el cursor",
		},
		{
			"<leader>sf",
			function()
				require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
			end,
			desc = "Reemplazar solo en este archivo",
		},
		{
			"<leader>si",
			function()
				require("grug-far").open({ visualSelectionUsage = "operate-within-range" })
			end,
			mode = { "n", "x" },
			desc = "Reemplazar dentro de la selección",
		},
	},
}
