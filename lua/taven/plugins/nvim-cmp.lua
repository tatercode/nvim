return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",       -- LSP source
    "hrsh7th/cmp-buffer",         -- Buffer source
    "hrsh7th/cmp-path",           -- Path source
    "hrsh7th/cmp-cmdline",        -- Command-line source
    "saadparwaiz1/cmp_luasnip",   -- Snippet source
    "L3MON4D3/LuaSnip",           -- Snippet engine
    "rafamadriz/friendly-snippets", -- Predefined snippets
  },

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    -- Load friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()
    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources( {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
