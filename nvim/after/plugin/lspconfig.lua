local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
local mason = require('mason')
local lint = require('lint')
local conform = require('conform')
local mason_conform = require('mason-conform')
local mason_lspconfig = require('mason-lspconfig')
local mason_lint = require('mason-nvim-lint')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

mason.setup({})

mason_lspconfig.setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

lint.linters_by_ft = {
  markdown = { 'markdownlint' }
}

mason_lint.setup({
    automatic_installation = true,
    quiet_mode = false,
})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    lint.try_lint()
  end,
})

conform.setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

mason_conform.setup()

lspconfig.jdtls.setup {}
lspconfig.marksman.setup {}
lspconfig.lua_ls.setup {}
