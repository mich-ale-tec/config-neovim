local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

-- Grupo para Go
local go_group = augroup('GoConfig', { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE GO ============
autocmd('FileType', {
  group = go_group,
  pattern = 'go',
  callback = function()
    -- Go usa TABS, no espacios
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
    vim.opt_local.softtabstop = 8

    -- Habilitar TreeSitter highlighting
    vim.treesitter.start()

    -- Keymaps específicos de Go
    local opts = { noremap = true, silent = true, buffer = true }
    map('n', '<Leader>gr', '<Plug>(go-run)', {})
    map('n', '<Leader>gt', '<Plug>(go-test)', {})
    map('n', '<Leader>gb', '<Plug>(go-build)', {})
    map('n', '<Leader>gc', '<Plug>(go-coverage)', {})
    map('n', '<Leader>gi', '<Plug>(go-imports)', {})
    map('n', 'gd', '<Plug>(go-def-tab)', {})
    map('n', '<C-l>', ':ALEDetail<CR>', opts)
  end,
})

-- ============ VIM-GO SETTINGS ============
-- Ya configurado en plugins/utilities.lua, pero lo repito aquí para claridad
-- vim.g.go_fmt_autosave = 1
-- vim.g.go_fmt_command = 'goimports'
-- vim.g.go_def_mode = 'gopls'

-- ============ LSP SIGNATURE (para ver parámetros de funciones) ============
require('lsp_signature').setup({
  bind = true,
  handler_opts = {
    border = 'rounded'
  }
})
