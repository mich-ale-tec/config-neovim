local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

-- Grupo para Ruby
local ruby_group = augroup('RubyConfig', { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE RUBY ============
autocmd('FileType', {
  group = ruby_group,
  pattern = 'ruby',
  callback = function()
    -- Ruby usa 2 espacios (estándar en comunidad)
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true

    -- Habilitar TreeSitter highlighting
    vim.treesitter.start()

    -- Keymaps específicos
    local opts = { noremap = true, silent = true, buffer = true }
    map('n', '<C-l>', ':ALEDetail<CR>', opts)
  end,
})

-- ============ RUBY SPECIFIC CONFIGURATION ============
-- Para mejorar el highlighting
vim.g.ruby_operators = 1
vim.g.ruby_pseudo_operators = 1

-- ============ BUNDLER SUPPORT ============
-- Si tienes Bundler, descomenta para ejecutar comandos dentro de bundle exec
-- autocmd('FileType', {
--   group = ruby_group,
--   pattern = 'ruby',
--   callback = function()
--     vim.g.ale_ruby_rubocop_executable = 'bundle'
--   end,
-- })
