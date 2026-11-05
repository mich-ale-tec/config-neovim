local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local diagnostics = "<cmd>Trouble diagnostics toggle<cr>"
local diagnosticsToggle = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>"
local symbols = "<cmd>Trouble symbols toggle focus=false<cr>"
local lsp = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>"
local loclist = "<cmd>Trouble loclist toggle<cr>"
local qflist = "<cmd>Trouble qflist toggle<cr>"

map("n", "<leader>xx", diagnostics, _G.wraperDescription(opts, "Diagnostics (Trouble)"))
map("n", "<leader>xX", diagnosticsToggle, _G.wraperDescription(opts, "Buffer Diagnostics (Trouble)"))
map("n", "<leader>cs", symbols, _G.wraperDescription(opts, "Symbols (Trouble)"))
map("n", "<leader>cl", lsp, _G.wraperDescription(opts, "LSP Definitions / references / ... (Trouble)"))
map("n", "<leader>xL", loclist, _G.wraperDescription(opts, "Location List (Trouble)"))
map("n", "<leader>xQ", qflist, _G.wraperDescription(opts, "Quickfix List (Trouble)"))
