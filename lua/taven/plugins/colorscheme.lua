-- return { 
--   "catppuccin/nvim", 
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavor = "mocha"
--     })
--   vim.cmd("colorscheme catppuccin")
--   end,
-- }
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
    require("rose-pine").setup({
      variant = "moon" -- main, moon, or dawn.
    })
		vim.cmd("colorscheme rose-pine")
	end
}
