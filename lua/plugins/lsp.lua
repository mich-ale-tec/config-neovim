local capabilities =
  require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },
  capabilities = capabilities,
})

vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = {
    "go",
    "gomod",
  },
  capabilities = capabilities,
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("gopls")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

local signs = {
  Error = "󰅚 ",
  Warn  = "󰀪 ",
  Hint  = "󰌶 ",
  Info  = "󰋽 ",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = hl,
  })
end
