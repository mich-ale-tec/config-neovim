local capabilities = require("cmp_nvim_lsp").default_capabilities()
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local go_group = augroup("GoConfig", { clear = true })

autocmd("FileType", {
	group = go_group,
	pattern = "go",
	callback = function()
		local opts = { noremap = true, silent = true, buffer = true }
		-- =========================
		-- INDENTACIÓN GO (estándar)
		-- =========================
		vim.opt_local.expandtab = false
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2

		-- =========================
		-- TESTS
		-- =========================
		map("n", "<leader>gt", function()
			vim.cmd("w")
			vim.cmd("!go test ./...")
		end, _G.wraperDescription(opts, "Go Test"))

		map("n", "<leader>gr", function()
			vim.cmd("w")
			vim.cmd("!go run .")
		end, _G.wraperDescription(opts, "Go Run Project"))
		map("n", "<leader>gb", function()
			vim.cmd("w")
			vim.cmd("!go run %")
		end, _G.wraperDescription(opts, "Go Run Buffer"))
	end,
})

vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = {
		"go",
		"gomod",
	},
	capabilities = capabilities,
})
vim.lsp.enable("gopls")
