local conform = require("conform")

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

-- keymap manual (opcional pero útil)
vim.keymap.set({ "n", "v" }, "<leader>p", function()
	conform.format({
		lsp_fallback = true,
		async = true,
	})
end, { desc = "Format file" })
