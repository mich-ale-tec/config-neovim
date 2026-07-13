---@class DashboardWindow
local M = {}

---@param lines string[]
---@return integer width
local function calculate_width_max(lines)
	local width = 0
	for _, line in ipairs(lines) do
		width = math.max(width, vim.fn.strdisplaywidth(line))
	end
	width = width + 4
	return width
end

---@param width integer
---@param height integer
---@param buf integer
---@return integer win
local function create_window(width, height, buf)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)
	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		row = row,
		col = col,
		width = width,
		height = height,
		border = "rounded",
		style = "minimal",
	})
	vim.wo[win].number = false
	vim.wo[win].relativenumber = false
	vim.wo[win].signcolumn = "no"
	return win
end

---@param lines string[]
---@return integer buf, integer win
function M.show(lines)
	local buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
	local width = calculate_width_max(lines)
	local win = create_window(width, #lines, buf)
	return buf, win
end

return M
