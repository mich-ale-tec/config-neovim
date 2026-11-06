local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- =========================
-- GENERAL
-- =========================
local general = augroup("General", { clear = true })

autocmd("BufReadPost", {
	group = general,
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(args.buf) then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})
autocmd("FileType", {
	callback = function(args)
		if pcall(vim.treesitter.start, args.buf) then
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
-- =========================
-- PLUGINS
-- =========================
local command = vim.api.nvim_create_user_command
command("Dashboard", function()
	require("dashboard").open()
end, { desc = "Open ArchMich Dashboard" })
