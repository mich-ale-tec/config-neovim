---@class Dashboard
local M = {}
local explorer = require("dashboard.explorer")
local buffer = require("dashboard.buffer")
local window = require("dashboard.window")

function M.open()
	local languages = explorer.get_languages()
	local lines = buffer.build(languages)

	window.show(lines)
end

return M
