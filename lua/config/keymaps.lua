-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her

local v = vim.keymap

-- vim.keymap.set({ "n", "v" }, "<c-v>", '"+p', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<c-v>", '"+p', { noremap = true, silent = true })
-- vim.keymap.set({ "i", "c" }, "<c-v>", "<c-r>+", { noremap = true, silent = true })
-- vim.keymap.set("c", "<c-v>", "<c-r>+", { desc = "Paste in commandmode" })
-- vim.keymap.set("n", "g<C-v>", "`[v`]", { desc = "Visual select last yank/paste" })

v.set({ "n", "v", "i" }, "<c-v>", '"+p"', { desc = "Paste with C-v", noremap = true, silent = true })
v.set("c", "<c-v>", "<c-r>+", { desc = "Paste with C-v in command mode" })
v.set("i", "<c-v>", "<c-R>+", { noremap = true, silent = true })
v.set({ "n", "v", "i", "c" }, "<c-c>", '"+y"', { noremap = true, silent = true })
v.set({ "n", "v", "i", "c" }, "<c-z>", "<c-r>", { noremap = true, silent = true })

v.set({ "n" }, "<c-u>", "<c-u>zz", { desc = "Center window after scroll up" })
v.set({ "n" }, "<c-d>", "<c-d>zz", { desc = "Center window after scroll down" })

v.set("n", "<leader>fd", "<cmd>Dashboard<cr>", { desc = "Dashboard" })
v.set("n", "<leader>fc", ":e $MYVIMRC <cr>", { desc = "Neovim config", noremap = true })
v.set("n", "<leader>S", "<cmd>wa<cr><esc>", { desc = "Save all", noremap = true })
v.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Terminal", noremap = true })
v.set("n", "<leader>ft", "<cmd>ToggleTerm direction=vertical size=80 <cr>", { desc = "Terminal (sidebar)" })
v.set("n", "<c-/>,", "<cmd>ToggleTerm<cr>", { desc = "ToggleTerm Terminal", noremap = true })

v.set("n", "<leader>-", "")
v.set("n", "<leader>|", "")
v.set("n", "<leader>K", "")
v.set("n", "<leader>fT", "")
v.set("n", "<leader>`", "")

v.set("n", "<c-w>", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Delete Buffer" })

-- function _G.set_terminal_keymaps()
--   local opts = { buffer = 0 }
--   vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
--   vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
--   vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
--   vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
--   vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
--   vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
--   vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
--   vim.keymap.set("t", "<a-1>", [[<cmd>ToggleTerm<cr>]], opts)
-- end
--
-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
