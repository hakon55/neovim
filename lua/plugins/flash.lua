return {
  "folke/flash.nvim",
  keys = {
    -- { "s", mode = { "n", "x", "o" }, false },
    {
      "<cr>",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
  },
}
