vim.lsp.config("vtsls", {
	cmd = { "vtsls", "--stdio" },
	filetypes = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
	},
})
vim.lsp.enable("vtsls")

vim.lsp.config("svelte", {
	cmd = {
		"svelteserver",
		"--stdio",
	},
	filetypes = {
		"svelte",
	},
})
vim.lsp.enable("svelte")
