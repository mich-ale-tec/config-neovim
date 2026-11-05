local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local ruby_group = augroup("RubyConfig", { clear = true })

autocmd("FileType", {
	group = ruby_group,
	pattern = "ruby",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true
	end,
})
