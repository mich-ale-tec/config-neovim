local capabilities = require("cmp_nvim_lsp").default_capabilities()
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local go_group = augroup("GoConfig", { clear = true })

autocmd("FileType", {
	group = go_group,
	pattern = "go",
	callback = function()
		vim.treesitter.start(0)
		vim.opt_local.expandtab = false
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
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
