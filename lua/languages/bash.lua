local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

-- Grupo para Bash
local bash_group = augroup('BashConfig', { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE BASH/SH ============
autocmd('FileType', {
  group = bash_group,
  pattern = { 'bash', 'sh', 'zsh' },
  callback = function()
    -- Shell estándar: 2 espacios
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true

    -- Habilitar TreeSitter highlighting
    vim.treesitter.start()

    -- Keymaps específicos
    local opts = { noremap = true, silent = true, buffer = true }

    -- Ejecutar script
    map('n', '<F5>', ':!bash %<CR>', opts)

    -- Mostrar errores/diagnostics
    map('n', '<C-l>', ':ALEDetail<CR>', opts)
  end,
})

-- ============ BASH-SPECIFIC LINTERS ============
-- ShellCheck se usa automáticamente a través de ALE
-- Asegúrate de tener shellcheck instalado: sudo apt install shellcheck
vim.g.ale_sh_shellcheck_options = '--severity=warning'

-- ============ SHFMT (FORMATEADOR) ============
-- shfmt se configura a través de ALE fixers en plugins/utilities.lua
