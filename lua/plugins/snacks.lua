return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    explorer = { enabled = true },
    image = { enabled = true,
      img_dirs = { "img", "images", "assets", "static", "public", "media", "attachments" },
      docs = {
        inline = false,
        float = true,
      },
    },
    quickfile = { enabled = true },
    scratch = { enabled = true },
    scroll = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
  },
}
