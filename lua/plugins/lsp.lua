return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },

    ---@type lspconfig.options
    -- servers = {
    --   kotlin_language_server = {
    --     -- single_file_support = true,
    --   },
    -- },

    ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>ak
    setup = {

      --   kotlin_language_server = function(_, opts)
      --     require("kotlin_language_server").setup({
      --       server = opts,
      --       single_file_support = true,
      --       return true
      --     })
      --   end,
    },
  },
}
