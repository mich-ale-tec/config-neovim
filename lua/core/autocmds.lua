local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Grupo para configuraciones generales
local general = augroup('General', { clear = true })

-- ============ VOLVER AL ÚLTIMO LUGAR EDITADO AL ABRIR UN ARCHIVO ============
autocmd('BufReadPost', {
  group = general,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= line_count then
      vim.cmd('normal! g`"')
    end
  end,
})

-- ============ CONFIGURACIÓN ESPECÍFICA POR TIPO DE ARCHIVO ============
local filetype_group = augroup('MyFileTypes', { clear = true })

-- JavaScript/TypeScript: 2 espacios
autocmd('FileType', {
  group = MyFileTypes,
  pattern = { 'javascript', 'typescript', 'jsx', 'tsx', 'json', 'yaml' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Go: tabs
autocmd('FileType', {
  group = MyFileTypes,
  pattern = 'go',
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
  end,
})

-- Ruby: 2 espacios
autocmd('FileType', {
  group = MyFileTypes,
  pattern = 'ruby',
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Bash/Shell: 2 espacios
autocmd('FileType', {
  group = MyFileTypes,
  pattern = { 'bash', 'sh', 'zsh' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
