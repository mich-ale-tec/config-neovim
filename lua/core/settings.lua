-- ============ OPCIONES GENERALES ============
vim.opt.compatible = false          -- No compatible con Vi antiguo
vim.opt.encoding = 'utf-8'          -- Codificación UTF-8
vim.opt.fileencoding = 'utf-8'

-- ============ INTERFAZ ============
vim.opt.number = true               -- Mostrar números de línea
vim.opt.relativenumber = true       -- Números relativos
vim.opt.numberwidth = 1             -- Ancho del gutter de números
vim.opt.cursorline = true           -- Resaltar línea actual
vim.opt.cursorcolumn = true         -- Resaltar columna actual
vim.opt.ruler = true                -- Mostrar posición en barra inferior
vim.opt.showcmd = true              -- Mostrar comandos incompletos
vim.opt.showmatch = true            -- Resaltar paréntesis/corchetes matching
vim.opt.laststatus = 2              -- Barra de estado siempre visible

-- ============ MODO ============
vim.opt.showmode = false            -- No mostrar -- INSERT -- (airline lo hace)

-- ============ MOUSE ============
vim.opt.mouse = 'a'                 -- Soporte de mouse en todos modos

-- ============ CLIPBOARD ============
vim.opt.clipboard = 'unnamedplus'   -- Usar portapapeles del sistema

-- ============ BÚSQUEDA ============
vim.opt.ignorecase = true           -- Ignorar mayúsculas en búsqueda
vim.opt.smartcase = true            -- ...pero respetarlas si se usan
vim.opt.hlsearch = true             -- Resaltar búsquedas
vim.opt.incsearch = true            -- Búsqueda incremental

-- ============ INDENTACIÓN POR DEFECTO ============
vim.opt.autoindent = true           -- Indentar automáticamente
vim.opt.smartindent = true          -- Indentar inteligentemente
vim.opt.expandtab = true            -- Usar espacios en lugar de tabs
vim.opt.tabstop = 4                 -- Tab = 4 espacios
vim.opt.softtabstop = 4             -- Cuando editas, tab = 4 espacios
vim.opt.shiftwidth = 4              -- Sangría de comandos = 4 espacios

-- ============ BUFFERS ============
vim.opt.hidden = true               -- Permitir cambiar de buffer sin guardar

-- ============ COLOR Y SINTAXIS ============
vim.opt.termguicolors = true        -- Soporte de 24-bit colors
vim.opt.syntax = 'on'               -- Resaltado de sintaxis
vim.cmd('set t_Co=256')             -- 256 colores

-- ============ LISTA DE CARACTERES ============
vim.opt.list = true                 -- Mostrar tabs y fin de línea
vim.opt.listchars = {
  tab = '▸ ',
  trail = '·',
  extends = '→',
  precedes = '←',
  nbsp = '␣'
}

-- ============ PASTE ============
vim.opt.paste = false               -- No usar modo paste
