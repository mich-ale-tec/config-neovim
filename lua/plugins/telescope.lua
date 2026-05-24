local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        width = 0.9,
        height = 0.95,
        preview_height = 0.5,
      },
    },
  },
})

-- Keymaps
local map = vim.keymap.set
map('n', '<C-p>', builtin.find_files, { noremap = true, silent = true })
map('n', '<C-b>', builtin.buffers, { noremap = true, silent = true })
map('n', '<C-f>', builtin.live_grep, { noremap = true, silent = true })
