return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.clangd.setup({})
  end,
}
