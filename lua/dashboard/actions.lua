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

return M
