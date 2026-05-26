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
		-- KEYMAPS LSP (MODERNO)
		-- =========================
		map("n", "gd", vim.lsp.buf.definition, opts)
		map("n", "gr", vim.lsp.buf.references, opts)
		map("n", "K", vim.lsp.buf.hover, opts)
		map("n", "<leader>rn", vim.lsp.buf.rename, opts)
		map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

		-- =========================
		-- TESTS (MODERNO con terminal)
		-- =========================
		map("n", "<leader>gt", function()
			vim.cmd("w")
			vim.cmd("!go test ./...")
		end, opts)

		map("n", "<leader>gr", function()
			vim.cmd("w")
			vim.cmd("!go run .")
		end, opts)
		map("n", "<leader>gb", function()
			vim.cmd("w")
			vim.cmd("!go run %")
		end, opts)
	end,
})
