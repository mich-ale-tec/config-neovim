local conform = require("conform")
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofmt" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
		bash = { "shfmt" },
		sh = { "shfmt" },
		ruby = { "rubocop" },
		perl = { "perltidy" },
	},

	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = true,
	},
})

map({ "n", "v" }, "<leader>p", function()
	conform.format({
		lsp_fallback = true,
		async = true,
	})
end, _G.wraperDescription(opts, "Dar formato archivo"))
