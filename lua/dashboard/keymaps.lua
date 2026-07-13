---@class DashboardKeymaps
local M = {}

local actions = require("dashboard.actions")

---@param state DashboardState
function M.register(state)
	local opts = {
		buffer = state.buf,
		silent = true,
		nowait = true,
	}

	vim.keymap.set("n", "j", function()
		actions.move_down(state)
	end, opts)
	vim.keymap.set("n", "k", function()
		actions.move_up(state)
	end, opts)
	vim.keymap.set("n", "i", "<Nop>", opts)
	vim.keymap.set("n", "I", "<Nop>", opts)
	vim.keymap.set("n", "a", "<Nop>", opts)
	vim.keymap.set("n", "A", "<Nop>", opts)
	vim.keymap.set("n", "o", "<Nop>", opts)
	vim.keymap.set("n", "O", "<Nop>", opts)
end
return M
