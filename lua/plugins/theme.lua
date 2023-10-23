return {
  -- add gruvbox
  { "rebelot/kanagawa.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "lunarvim/lunar.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { term_colors = true } },
  { "projekt0n/github-nvim-theme" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
