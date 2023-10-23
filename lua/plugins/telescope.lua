local Util = require("lazyvim.util")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>bB", "<cmd>Telescope buffers<cr>", desc = "Switch Buffers" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>ff", Util.telescope("files"), desc = "Find Files" },
    { "<leader>fF", false },
    { "<leader>fR", false },
    { "<leader>sg", Util.telescope("live_grep"), desc = "Grep" },
    { "<leader>sG", false },
    { "<leader>sw", Util.telescope("grep_string", { word_match = "-w" }), desc = "Word" },
    { "<leader>sW", false },
    { "<leader>sw", Util.telescope("grep_string"), mode = "v", desc = "Selection" },
    { "<leader>sW", false },
  },
}
