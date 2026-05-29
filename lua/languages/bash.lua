local capabilities = require("cmp_nvim_lsp").default_capabilities()
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local bash_group = augroup("BashConfig", { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE BASH/SH ============
autocmd("FileType", {
	group = bash_group,
	pattern = { "bash", "sh", "zsh" },
	callback = function()
		vim.treesitter.start(0)
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true

		-- Keymaps específicos
		local opts = { noremap = true, silent = true, buffer = true }

		-- Ejecutar script
		map("n", "<F5>", ":!bash %<CR>", opts)
	end,
})

vim.lsp.config("bash_lsp", {
	cmd = { "bash-language-server" },
	filetypes = {
		"bash",
		"sh",
		"zsh",
	},
	capabilities = capabilities,
})
vim.lsp.enable("bash_lsp")
