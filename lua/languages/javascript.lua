local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Grupo para JavaScript
local js_group = augroup("JavaScriptConfig", { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE JS/TS ============
autocmd("FileType", {
	group = js_group,
	pattern = { "javascript", "typescript", "jsx", "tsx", "javascriptreact", "typescriptreact" },
	callback = function()
		-- 2 espacios de indentación (estándar web)
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true

		-- Habilitar TreeSitter highlighting
		vim.treesitter.start()
	end,
})

-- ============ CONFIGURACIÓN ESPECÍFICA PARA REACT/JSX ============
-- vim-jsx-pretty ya está configurado en plugins
vim.g.vim_jsx_pretty_colorful_config = 1

-- ============ STYLED-COMPONENTS ============
-- Ya está en plugins, no necesita configuración adicional

-- ============ PRETTIER AUTOMÁTICO (OPCIONAL) ============
-- Si prefieres prettier en lugar de ALE, descomenta:
-- autocmd('BufWritePost', {
--   group = js_group,
--   pattern = { '*.js', '*.jsx', '*.ts', '*.tsx' },
--   command = 'Prettier'
-- })

-- ============ QUICK FIXES COMUNES ============
-- F5 para ejecutar en Node (si es un script)
vim.keymap.set("n", "<F5>", ":!node %<CR>", { noremap = true, silent = true, buffer = true })

-- CTRL+L para mostrar errores en línea actual
autocmd("FileType", {
	group = js_group,
	pattern = { "javascript", "typescript" },
	callback = function()
		vim.keymap.set("n", "<C-l>", ":ALEDetail<CR>", { noremap = true, silent = true, buffer = true })
	end,
})
