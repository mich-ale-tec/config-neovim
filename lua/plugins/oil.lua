require("oil").setup()
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "-", "<cmd>Oil<CR>", _G.wraperDescription(opts, "Abrir directorio padre"))
