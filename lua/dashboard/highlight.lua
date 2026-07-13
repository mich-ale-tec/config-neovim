---@class DashboardHighlight
local M = {}

local namespace = vim.api.nvim_create_namespace("dashboard")

function M.setup()
	vim.api.nvim_set_hl(0, "DashboardSelected", {
		bold = true,
		italic = true,
		bg = "#5f5f5f",
		fg = "#ffffff",
	})
	vim.api.nvim_set_hl(0, "DashboardTitle", {
		bold = true,
		italic = true,
	})
	vim.api.nvim_set_hl(0, "DashboardSection", {
		bold = true,
	})
	vim.api.nvim_set_hl(0, "DashboardFooter", {
		italic = true,
	})
	vim.api.nvim_set_hl(0, "DashboardBorder", {
		bold = true,
	})
end

---@param buf integer
---@param line integer
function M.apply(buf, line)
	vim.api.nvim_buf_clear_namespace(buf, namespace, 0, -1)

	vim.api.nvim_buf_set_extmark(buf, namespace, line, 0, {
		hl_group = "DashboardSelected",
	})
end

return M
