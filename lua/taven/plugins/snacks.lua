
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
        sections = {
        {
          section = "terminal",
          cmd = "chafa ~/.config/nvim/snoopypilot.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
          height = 17,
          padding = 1,
        },
        {
          pane = 2,
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },   
    { "<leader>ff", function() Snacks.picker.files() end, desc = "File Picker"},
  }
}
