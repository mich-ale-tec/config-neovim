local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- =========================
-- GENERAL
-- =========================
local general = augroup("General", { clear = true })

autocmd("BufReadPost", {
	group = general,
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local line_count = vim.api.nvim_buf_line_count(0)

		if mark[1] > 0 and mark[1] <= line_count then
			vim.cmd('normal! g`"')
		end
	end,
})

-- =========================
-- FILETYPES
-- =========================
local filetype_group = augroup("MyFileTypes", { clear = true })

local function set_indent(opts)
	vim.opt_local.tabstop = opts.tabstop
	vim.opt_local.softtabstop = opts.tabstop
	vim.opt_local.shiftwidth = opts.tabstop
	vim.opt_local.expandtab = opts.expandtab
end

autocmd("FileType", {
	group = filetype_group,
	pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "yaml" },
	callback = function()
		set_indent({ tabstop = 2, expandtab = true })
	end,
})

autocmd("FileType", {
	group = filetype_group,
	pattern = "go",
	callback = function()
		set_indent({ tabstop = 2, expandtab = false })
	end,
})

autocmd("FileType", {
	group = filetype_group,
	pattern = "ruby",
	callback = function()
		set_indent({ tabstop = 2, expandtab = true })
	end,
})

autocmd("FileType", {
	group = filetype_group,
	pattern = { "bash", "sh", "zsh" },
	callback = function()
		set_indent({ tabstop = 2, expandtab = true })
	end,
})
