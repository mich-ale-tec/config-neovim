---@class Dashboard
local M = {}
local explorer = require("dashboard.explorer")
local buffer = require("dashboard.buffer")
local window = require("dashboard.window")
local state = require("dashboard.state")
local keymaps = require("dashboard.keymaps")

function M.open()
	state.languages = explorer.get_languages()
	local lines = buffer.build(state.languages, state.selected)
	local buf, win = window.show(lines)
	state.buf = buf
	state.win = win
	keymaps.register(state)
end

return M
