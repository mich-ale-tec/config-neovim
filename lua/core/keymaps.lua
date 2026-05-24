local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- ============ BÁSICO ============
map('n', '<Leader>w', ':w<CR>', opts)
map('n', '<Leader>q', ':q<CR>', opts)

-- ============ BUFFERS ============
map('n', '<C-h>', ':bprev<CR>', opts)
map('n', '<C-l>', ':bnext<CR>', opts)
map('n', '<Leader>d', ':bd<CR>', opts)

-- ============ INSERT ESC ============
map('i', 'jk', '<ESC>', opts)

-- ============ VENTANAS ============
map('n', '<M-j>', ':resize -2<CR>', opts)
map('n', '<M-k>', ':resize +2<CR>', opts)
map('n', '<M-h>', ':vertical resize -2<CR>', opts)
map('n', '<M-l>', ':vertical resize +2<CR>', opts)

-- ============ EASY MOTION ============
map('n', '<Leader>s', '<Plug>(easymotion-s2)', {})

-- ============ TREE ============
map('n', 'sf', ':NvimTreeFindFile<CR>', opts)
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- ============ NVIM SPECTRE (buscar y reemplazar) ============
map('n', '<Leader>S', '<cmd>lua require("spectre").open()<CR>', opts)

-- ============ TELESCOPE (Búsqueda) ============
-- Se carga en plugins/telescope.lua

-- ============ LSP ============
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gy', vim.lsp.buf.type_definition, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', 'K', vim.lsp.buf.hover, opts)
map('n', '<Leader>ren', vim.lsp.buf.rename, opts)
map('n', '<Leader>a', vim.lsp.buf.code_action, opts)

-- ============ DIAGNOSTICS ============
map('n', '[g', vim.diagnostic.goto_prev, opts)
map('n', ']g', vim.diagnostic.goto_next, opts)

-- ============ CODE ACTIONS ============
map('n', '<Leader>a', vim.lsp.buf.code_action, opts)
map('x', '<Leader>a', vim.lsp.buf.code_action, opts)

-- ============ HOVER DOCUMENTATION ============
map('n', 'K', vim.lsp.buf.hover, opts)
 
-- ============ GIT GUTTER ============
map('n', '<Leader>gn', '<Plug>(GitGutterNextHunk)', {})
map('n', '<Leader>gp', '<Plug>(GitGutterPrevHunk)', {})

-- ============ VIM MAGIT (git status) ============
map('n', '<Leader>gs', ':Magit<CR>', opts)

-- ============ MOSTRAR DIAGNOSTICS EN LÍNEA ============
map('n', '<C-l>', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
