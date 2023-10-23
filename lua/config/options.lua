-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set to unamed for å integrere med clipboard
-- vim.api.nvim_set_option("clipboard", "")

-- vim.g.neovide_transparency = 0.95
-- vim.g.neovide_scroll_animation_length = 0.3
-- vim.g.neovide_remember_window_size = true
-- vim.g.neovide_fullscreen = true
local opt = vim.opt

opt.wrap = true --line wrap
opt.clipboard = "" -- Sync with system clipboard
opt.timeoutlen = 1000 -- Time out on key codes

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   -- Disable virtual_text
--   virtual_text = false,
-- })
