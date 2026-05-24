-- =========================
-- GITSIGNS
-- =========================
require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
  },

  current_line_blame = false,
})

-- =========================
-- GIT KEYMAPS
-- =========================
local map = vim.keymap.set

map("n", "]h", "<cmd>Gitsigns next_hunk<CR>", {
  desc = "Next hunk",
})

map("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", {
  desc = "Previous hunk",
})

map("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", {
  desc = "Stage hunk",
})

map("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", {
  desc = "Reset hunk",
})

map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", {
  desc = "Preview hunk",
})

map("n", "<leader>hb", "<cmd>Gitsigns blame_line<CR>", {
  desc = "Blame line",
})
