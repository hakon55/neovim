local Util = require("lazyvim.util")

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    -- close_if_last_window = false,
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      window = {
        mappings = {
          -- ["h"] = "open_split",
          -- ["S"] = "",
          -- ["v"] = "open_vsplit",
          -- ["s"] = "",
          ["/"] = "",
        },
      },
    },
    git_status = {
      window = {
        mappings = {
          ["/"] = "",
          -- ["h"] = "open_split",
          -- ["S"] = "",
          -- ["v"] = "open_vsplit",
          -- ["s"] = "",
        },
      },
    },
    buffers = {
      window = {
        mappings = {
          ["/"] = "",
          -- ["h"] = "open_split",
          -- ["S"] = "",
          -- ["v"] = "open_vsplit",
          -- ["s"] = "",
        },
      },
    },
  },

  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
      end,
      desc = "Explorer NeoTree",
    },
    { "<leader>e", "<leader>fe", desc = "Explorer NeoTree", remap = true },
    -- {
    --   "<leader>e",
    --   function()
    --     require("neo-tree.command").execute({
    --       toggle = true,
    --       position = "float",
    --       reveal_force_cwd = true,
    --       dir = require("lazyvim.util").root.get(),
    --     })
    --   end,
    --   desc = "Explorer NeoTree",
    --   remap = true,
    -- },
    -- {
    --   "<leader>fe",
    --   function()
    --     require("neo-tree.command").execute({
    --       toggle = true,
    --       position = "left",
    --       reveal_force_cwd = true,
    --       -- dir = require("lazyvim.util").get_root(),
    --     })
    --   end,
    --   desc = "Explorer NeoTree (sidebar)",
    --   remap = true,
    -- },
    -- { "<leader>fe", false },
    { "<leader>E", false },
    { "<leader>fE", false },
  },
}
