return {
  "williamboman/mason.nvim",
  dependencies = {
"williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    })
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "tailwindcss",
        "clangd",
      }
    })
  end,
}
