-- Folding moderno con treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Mejor experiencia
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.fillchars = {
	fold = " ",
	foldopen = "▾",
	foldclose = "▸",
	foldsep = " ",
}
