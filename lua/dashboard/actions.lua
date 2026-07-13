---@class DashboardActions
local M = {}

local buffer = require("dashboard.buffer")

---@param state DashboardState
local function refresh(state)
	local lines = buffer.build(state.languages, state.selected)
	vim.api.nvim_buf_set_lines(state.buf, 0, -1, false, lines)
end

---@param state DashboardState
function M.move_down(state)
	local total = #state.languages
	local index = state.selected + 1
	if index > total then
		index = 1
	end
	state.selected = index
	refresh(state)
end

---@param state DashboardState
function M.move_up(state)
	local total = #state.languages
	local index = state.selected - 1
	if index < 1 then
		index = total
	end
	state.selected = index
	refresh(state)
end

---@param state DashboardState
function M.open(state)
	local language = state.languages[state.selected]
	local path_nvim = vim.fn.stdpath("config")
	local path = vim.fs.joinpath(path_nvim, "lua", "languages", language .. ".lua")
	vim.api.nvim_win_close(state.win, true)
	vim.cmd.edit(path)
end

---@param state DashboardState
function M.close(state)
	if state.win and vim.api.nvim_win_is_valid(state.win) then
		vim.api.nvim_win_close(state.win, true)
	end
	state.win = nil
	state.buf = nil
end

return M
