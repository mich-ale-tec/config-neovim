local capabilities = require("cmp_nvim_lsp").default_capabilities()
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local css_group = augroup("CssConfig", { clear = true })

autocmd("FileType", {
	group = css_group,
	pattern = {
		"css",
		"scss",
	},
	callback = function()
		vim.treesitter.start(0)
		-- =========================
		-- INDENTACIÓN (standard web)
		-- =========================
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true
	end,
})

vim.lsp.config("cssls", {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = {
		"css",
		"scss",
		"less",
		"sass",
	},
	capabilities = capabilities,
})
vim.lsp.enable("cssls")
