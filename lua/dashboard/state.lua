---@class DashboardState
local M = {}

---@type integer
M.selected = 1

---@type string[]
M.languages = {}

---@type boolean
M.opened = false

---@type integer?
M.buf = nil

---@type integer?
M.win = nil

return M
