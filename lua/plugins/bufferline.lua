local map = vim.keymap.set

local opts = { noremap = true, silent = true }
map("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", _G.wraperDescription(opts, "Fijar/desfijar buffer"))
map("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", _G.wraperDescription(opts, "Cerrar los no fijados"))
