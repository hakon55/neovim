return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = false,
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          position = "float",
          reveal_force_cwd = true,
          dir = require("lazyvim.util").root.get(),
        })
      end,
      desc = "Explorer NeoTree",
      remap = true,
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          position = "left",
          reveal_force_cwd = true,
          -- dir = require("lazyvim.util").get_root(),
        })
      end,
      desc = "Explorer NeoTree (sidebar)",
      remap = true,
    },
    { "<leader>E", false },
    { "<leader>fE", false },
  },
}
