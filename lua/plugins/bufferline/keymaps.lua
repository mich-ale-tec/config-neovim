local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local function deleteBuffer()
	local buf = vim.api.nvim_get_current_buf()
	if vim.bo[buf].modified then
		vim.notify("Buffer con cambios sin guardar", vim.log.levels.WARN)
		return
	end
	vim.cmd("bprevious")
	vim.cmd("bdelete " .. buf)
end

map("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", _G.wraperDescription(opts, "Fijar/desfijar buffer"))
map("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", _G.wraperDescription(opts, "Cerrar los no fijados"))
map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", wraperDescription(opts, "Close Other Buffers"))
map("n", "<leader>bd", deleteBuffer, wraperDescription(opts, "Close Current Buffer"))
