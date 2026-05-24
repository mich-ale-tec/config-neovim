-- ============ CTRLP ============
vim.g.ctrlp_custom_ignore = {
  dir = [[\v[\/](\.(git|hg|svn)|node_modules)$]],
  file = [[\v\.(exe|so|dll)$]],
}
vim.g.ctrlp_user_command = {
  '.git',
  'cd %s && git ls-files -co --exclude-standard'
}
vim.g.ctrlp_open_new_file = 'r'
vim.g.ctrlp_arg_map = 1

-- =========================
-- TELESCOPE
-- =========================
local telescope = require("telescope")

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      "dist",
      "build",
    },
  },
})

pcall(telescope.load_extension, "fzf")

-- =========================
-- FLASH
-- =========================
require("flash").setup()

-- =========================
-- KEYMAPS
-- =========================
local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<leader>ff", builtin.find_files, {
  desc = "Find files",
})

map("n", "<leader>fg", builtin.live_grep, {
  desc = "Live grep",
})

map("n", "<leader>fb", builtin.buffers, {
  desc = "Buffers",
})

map("n", "<leader>fh", builtin.help_tags, {
  desc = "Help tags",
})

map("n", "s", function()
  require("flash").jump()
end, {
  desc = "Flash",
})
